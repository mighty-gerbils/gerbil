(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12303_ . _args12304_)
      (let* ((_g1230612316_
              (lambda (_g1230712313_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1230712313_)))
             (_g1230512344_
              (lambda (_g1230712319_)
                (if (gx#stx-pair? _g1230712319_)
                    (let ((_e1230912321_ (gx#stx-e _g1230712319_)))
                      (let ((_hd1231012324_ (##car _e1230912321_))
                            (_tl1231112326_ (##cdr _e1230912321_)))
                        ((lambda (_L12329_)
                           (let ((_$e12339_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12329_)
                                   '#f)))
                             (if _$e12339_
                                 ((lambda (_method12342_)
                                    (apply _method12342_
                                           _stx12303_
                                           _args12304_))
                                  _$e12339_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12303_
                                  _L12329_))))
                         _hd1231012324_)))
                    (_g1230612316_ _g1230712319_)))))
        (_g1230512344_ _stx12303_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12300_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12300_ '%#begin-annotation void)
           (table-set! _tbl12300_ '%#lambda void)
           (table-set! _tbl12300_ '%#case-lambda void)
           (table-set! _tbl12300_ '%#let-values void)
           (table-set! _tbl12300_ '%#letrec-values void)
           (table-set! _tbl12300_ '%#letrec*-values void)
           (table-set! _tbl12300_ '%#quote void)
           (table-set! _tbl12300_ '%#quote-syntax void)
           (table-set! _tbl12300_ '%#call void)
           (table-set! _tbl12300_ '%#if void)
           (table-set! _tbl12300_ '%#ref void)
           (table-set! _tbl12300_ '%#set! void)
           (table-set! _tbl12300_ '%#struct-instance? void)
           (table-set! _tbl12300_ '%#struct-direct-instance? void)
           (table-set! _tbl12300_ '%#struct-ref void)
           (table-set! _tbl12300_ '%#struct-set! void)
           (table-set! _tbl12300_ '%#struct-direct-ref void)
           (table-set! _tbl12300_ '%#struct-direct-set! void)
           (table-set! _tbl12300_ '%#struct-unchecked-ref void)
           (table-set! _tbl12300_ '%#struct-unchecked-set! void)
           _tbl12300_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12296_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12296_ '%#begin void)
           (table-set! _tbl12296_ '%#begin-syntax void)
           (table-set! _tbl12296_ '%#begin-foreign void)
           (table-set! _tbl12296_ '%#module void)
           (table-set! _tbl12296_ '%#import void)
           (table-set! _tbl12296_ '%#export void)
           (table-set! _tbl12296_ '%#provide void)
           (table-set! _tbl12296_ '%#extern void)
           (table-set! _tbl12296_ '%#define-values void)
           (table-set! _tbl12296_ '%#define-syntax void)
           (table-set! _tbl12296_ '%#define-alias void)
           (table-set! _tbl12296_ '%#declare void)
           _tbl12296_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12292_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12292_ (force gxc#&void-special-form))
           (hash-copy! _tbl12292_ (force gxc#&void-expression))
           _tbl12292_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12288_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12288_ '%#begin-annotation false)
           (table-set! _tbl12288_ '%#lambda false)
           (table-set! _tbl12288_ '%#case-lambda false)
           (table-set! _tbl12288_ '%#let-values false)
           (table-set! _tbl12288_ '%#letrec-values false)
           (table-set! _tbl12288_ '%#letrec*-values false)
           (table-set! _tbl12288_ '%#quote false)
           (table-set! _tbl12288_ '%#quote-syntax false)
           (table-set! _tbl12288_ '%#call false)
           (table-set! _tbl12288_ '%#if false)
           (table-set! _tbl12288_ '%#ref false)
           (table-set! _tbl12288_ '%#set! false)
           (table-set! _tbl12288_ '%#struct-instance? false)
           (table-set! _tbl12288_ '%#struct-direct-instance? false)
           (table-set! _tbl12288_ '%#struct-ref false)
           (table-set! _tbl12288_ '%#struct-set! false)
           (table-set! _tbl12288_ '%#struct-direct-ref false)
           (table-set! _tbl12288_ '%#struct-direct-set! false)
           (table-set! _tbl12288_ '%#struct-unchecked-ref false)
           (table-set! _tbl12288_ '%#struct-unchecked-set! false)
           _tbl12288_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12284_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12284_ '%#begin false)
           (table-set! _tbl12284_ '%#begin-syntax false)
           (table-set! _tbl12284_ '%#begin-foreign false)
           (table-set! _tbl12284_ '%#module false)
           (table-set! _tbl12284_ '%#import false)
           (table-set! _tbl12284_ '%#export false)
           (table-set! _tbl12284_ '%#provide false)
           (table-set! _tbl12284_ '%#extern false)
           (table-set! _tbl12284_ '%#define-values false)
           (table-set! _tbl12284_ '%#define-syntax false)
           (table-set! _tbl12284_ '%#define-alias false)
           (table-set! _tbl12284_ '%#declare false)
           _tbl12284_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12280_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12280_ (force gxc#&false-special-form))
           (hash-copy! _tbl12280_ (force gxc#&false-expression))
           _tbl12280_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12276_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12276_ (force gxc#&void-expression))
           (hash-copy! _tbl12276_ (force gxc#&void-special-form))
           (table-set! _tbl12276_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12276_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12276_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12276_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12276_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12276_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12269_ . _args12271_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12269_ _args12271_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12266_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12266_ (force gxc#&void))
           (table-set! _tbl12266_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12266_ '%#module gxc#lift-modules-module%)
           _tbl12266_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12259_ . _args12261_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12259_ _args12261_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12256_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12256_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12256_ '%#begin-syntax false)
           (table-set! _tbl12256_ '%#begin-foreign true)
           (table-set! _tbl12256_ '%#begin-annotation true)
           (table-set! _tbl12256_ '%#module false)
           (table-set! _tbl12256_ '%#import false)
           (table-set! _tbl12256_ '%#export false)
           (table-set! _tbl12256_ '%#provide false)
           (table-set! _tbl12256_ '%#extern false)
           (table-set! _tbl12256_ '%#define-values true)
           (table-set! _tbl12256_ '%#define-syntax false)
           (table-set! _tbl12256_ '%#define-alias false)
           (table-set! _tbl12256_ '%#declare false)
           (table-set! _tbl12256_ '%#lambda true)
           (table-set! _tbl12256_ '%#case-lambda true)
           (table-set! _tbl12256_ '%#let-values true)
           (table-set! _tbl12256_ '%#letrec-values true)
           (table-set! _tbl12256_ '%#letrec*-values true)
           (table-set! _tbl12256_ '%#quote true)
           (table-set! _tbl12256_ '%#call true)
           (table-set! _tbl12256_ '%#if true)
           (table-set! _tbl12256_ '%#ref true)
           (table-set! _tbl12256_ '%#set! true)
           (table-set! _tbl12256_ '%#struct-instance? true)
           (table-set! _tbl12256_ '%#struct-direct-instance? true)
           (table-set! _tbl12256_ '%#struct-ref true)
           (table-set! _tbl12256_ '%#struct-set! true)
           (table-set! _tbl12256_ '%#struct-direct-ref true)
           (table-set! _tbl12256_ '%#struct-direct-set! true)
           (table-set! _tbl12256_ '%#struct-unchecked-ref true)
           (table-set! _tbl12256_ '%#struct-unchecked-set! true)
           _tbl12256_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12249_ . _args12251_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12249_ _args12251_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12246_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12246_ (force gxc#&false))
           (table-set! _tbl12246_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12246_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12246_ '%#lambda values)
           (table-set! _tbl12246_ '%#case-lambda values)
           (table-set!
            _tbl12246_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12246_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12246_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12246_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12239_ . _args12241_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12239_ _args12241_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12236_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12236_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12236_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12236_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12236_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12232_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12232_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12232_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12232_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12232_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12225_ . _args12227_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12225_ _args12227_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12222_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12222_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12222_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12222_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12222_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12222_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12222_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12222_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12222_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12222_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12222_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12222_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12222_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12222_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12222_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12222_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12222_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12222_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12222_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12222_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12222_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12222_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12222_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12222_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12222_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12222_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12222_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12215_ . _args12217_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12215_ _args12217_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12212_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12212_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12212_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12212_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12205_ . _args12207_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12205_ _args12207_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12202_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12202_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12202_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12202_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12202_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12202_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12202_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12202_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12202_ '%#quote void)
           (table-set! _tbl12202_ '%#quote-syntax void)
           (table-set! _tbl12202_ '%#call gxc#collect-operands)
           (table-set! _tbl12202_ '%#if gxc#collect-operands)
           (table-set! _tbl12202_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12202_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12202_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12202_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12202_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12202_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12202_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12202_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12202_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12202_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12202_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12195_ . _args12197_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12195_ _args12197_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12192_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12192_ (force gxc#&void-expression))
           (table-set! _tbl12192_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12192_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12192_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12192_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12192_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12192_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12192_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12192_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12192_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12192_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12192_ '%#begin-foreign void)
           (table-set! _tbl12192_ '%#declare void)
           _tbl12192_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12185_ . _args12187_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12185_ _args12187_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12182_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12182_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12182_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12182_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12182_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12182_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12182_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12182_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12182_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12182_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12182_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12182_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12182_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12182_ '%#declare void)
           _tbl12182_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12175_ . _args12177_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12175_ _args12177_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12132_ . _args12133_)
      (let* ((_g1213512145_
              (lambda (_g1213612142_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1213612142_)))
             (_g1213412172_
              (lambda (_g1213612148_)
                (if (gx#stx-pair? _g1213612148_)
                    (let ((_e1213812150_ (gx#stx-e _g1213612148_)))
                      (let ((_hd1213912153_ (##car _e1213812150_))
                            (_tl1214012155_ (##cdr _e1213812150_)))
                        ((lambda (_L12158_)
                           (for-each
                            (lambda (_g1216712169_)
                              (apply gxc#compile-e _g1216712169_ _args12133_))
                            (gx#stx-e _L12158_)))
                         _tl1214012155_)))
                    (_g1213512145_ _g1213612148_)))))
        (_g1213412172_ _stx12132_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12088_ . _args12089_)
      (let* ((_g1209112101_
              (lambda (_g1209212098_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1209212098_)))
             (_g1209012129_
              (lambda (_g1209212104_)
                (if (gx#stx-pair? _g1209212104_)
                    (let ((_e1209412106_ (gx#stx-e _g1209212104_)))
                      (let ((_hd1209512109_ (##car _e1209412106_))
                            (_tl1209612111_ (##cdr _e1209412106_)))
                        ((lambda (_L12114_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1212412126_)
                                 (apply gxc#compile-e
                                        _g1212412126_
                                        _args12089_))
                               (gx#stx-e _L12114_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1209612111_)))
                    (_g1209112101_ _g1209212104_)))))
        (_g1209012129_ _stx12088_))))
  (define gxc#collect-module%
    (lambda (_stx12030_ . _args12031_)
      (let* ((_g1203312047_
              (lambda (_g1203412044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1203412044_)))
             (_g1203212085_
              (lambda (_g1203412050_)
                (if (gx#stx-pair? _g1203412050_)
                    (let ((_e1203712052_ (gx#stx-e _g1203412050_)))
                      (let ((_hd1203812055_ (##car _e1203712052_))
                            (_tl1203912057_ (##cdr _e1203712052_)))
                        (if (gx#stx-pair? _tl1203912057_)
                            (let ((_e1204012060_ (gx#stx-e _tl1203912057_)))
                              (let ((_hd1204112063_ (##car _e1204012060_))
                                    (_tl1204212065_ (##cdr _e1204012060_)))
                                ((lambda (_L12068_ _L12069_)
                                   (let ((_ctx12082_
                                          (gx#syntax-local-e__0 _L12069_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12082_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12031_))
                                      gx#current-expander-context
                                      _ctx12082_)))
                                 _tl1204212065_
                                 _hd1204112063_)))
                            (_g1203312047_ _g1203412050_))))
                    (_g1203312047_ _g1203412050_)))))
        (_g1203212085_ _stx12030_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11962_ . _args11963_)
      (let* ((_g1196511982_
              (lambda (_g1196611979_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1196611979_)))
             (_g1196412027_
              (lambda (_g1196611985_)
                (if (gx#stx-pair? _g1196611985_)
                    (let ((_e1196911987_ (gx#stx-e _g1196611985_)))
                      (let ((_hd1197011990_ (##car _e1196911987_))
                            (_tl1197111992_ (##cdr _e1196911987_)))
                        (if (gx#stx-pair? _tl1197111992_)
                            (let ((_e1197211995_ (gx#stx-e _tl1197111992_)))
                              (let ((_hd1197311998_ (##car _e1197211995_))
                                    (_tl1197412000_ (##cdr _e1197211995_)))
                                (if (gx#stx-pair? _tl1197412000_)
                                    (let ((_e1197512003_
                                           (gx#stx-e _tl1197412000_)))
                                      (let ((_hd1197612006_
                                             (##car _e1197512003_))
                                            (_tl1197712008_
                                             (##cdr _e1197512003_)))
                                        (if (gx#stx-null? _tl1197712008_)
                                            ((lambda (_L12011_ _L12012_)
                                               (apply gxc#compile-e
                                                      _L12011_
                                                      _args11963_))
                                             _hd1197612006_
                                             _hd1197311998_)
                                            (_g1196511982_ _g1196611985_))))
                                    (_g1196511982_ _g1196611985_))))
                            (_g1196511982_ _g1196611985_))))
                    (_g1196511982_ _g1196611985_)))))
        (_g1196412027_ _stx11962_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11894_ . _args11895_)
      (let* ((_g1189711914_
              (lambda (_g1189811911_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1189811911_)))
             (_g1189611959_
              (lambda (_g1189811917_)
                (if (gx#stx-pair? _g1189811917_)
                    (let ((_e1190111919_ (gx#stx-e _g1189811917_)))
                      (let ((_hd1190211922_ (##car _e1190111919_))
                            (_tl1190311924_ (##cdr _e1190111919_)))
                        (if (gx#stx-pair? _tl1190311924_)
                            (let ((_e1190411927_ (gx#stx-e _tl1190311924_)))
                              (let ((_hd1190511930_ (##car _e1190411927_))
                                    (_tl1190611932_ (##cdr _e1190411927_)))
                                (if (gx#stx-pair? _tl1190611932_)
                                    (let ((_e1190711935_
                                           (gx#stx-e _tl1190611932_)))
                                      (let ((_hd1190811938_
                                             (##car _e1190711935_))
                                            (_tl1190911940_
                                             (##cdr _e1190711935_)))
                                        (if (gx#stx-null? _tl1190911940_)
                                            ((lambda (_L11943_ _L11944_)
                                               (apply gxc#compile-e
                                                      _L11943_
                                                      _args11895_))
                                             _hd1190811938_
                                             _hd1190511930_)
                                            (_g1189711914_ _g1189811917_))))
                                    (_g1189711914_ _g1189811917_))))
                            (_g1189711914_ _g1189811917_))))
                    (_g1189711914_ _g1189811917_)))))
        (_g1189611959_ _stx11894_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11776_ . _args11777_)
      (let* ((_g1177911807_
              (lambda (_g1178011804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1178011804_)))
             (_g1177811891_
              (lambda (_g1178011810_)
                (if (gx#stx-pair? _g1178011810_)
                    (let ((_e1178311812_ (gx#stx-e _g1178011810_)))
                      (let ((_hd1178411815_ (##car _e1178311812_))
                            (_tl1178511817_ (##cdr _e1178311812_)))
                        (if (gx#stx-pair/null? _tl1178511817_)
                            (if (fx>= (gx#stx-length _tl1178511817_) '0)
                                (let ((_g12346_
                                       (gx#syntax-split-splice
                                        _tl1178511817_
                                        '0)))
                                  (begin
                                    (let ((_g12347_ (values-count _g12346_)))
                                      (if (not (fx= _g12347_ 2))
                                          (error "Context expects 2 values"
                                                 _g12347_)))
                                    (let ((_target1178611820_
                                           (values-ref _g12346_ 0))
                                          (_tl1178811822_
                                           (values-ref _g12346_ 1)))
                                      (if (gx#stx-null? _tl1178811822_)
                                          (letrec ((_loop1178911825_
                                                    (lambda (_hd1178711828_
                                                             _body1179311830_
                                                             _hd1179411832_)
                                                      (if (gx#stx-pair?
                                                           _hd1178711828_)
                                                          (let ((_e1179011835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1178711828_)))
                    (let ((_lp-hd1179111838_ (##car _e1179011835_))
                          (_lp-tl1179211840_ (##cdr _e1179011835_)))
                      (if (gx#stx-pair? _lp-hd1179111838_)
                          (let ((_e1179711843_ (gx#stx-e _lp-hd1179111838_)))
                            (let ((_hd1179811846_ (##car _e1179711843_))
                                  (_tl1179911848_ (##cdr _e1179711843_)))
                              (if (gx#stx-pair? _tl1179911848_)
                                  (let ((_e1180011851_
                                         (gx#stx-e _tl1179911848_)))
                                    (let ((_hd1180111854_
                                           (##car _e1180011851_))
                                          (_tl1180211856_
                                           (##cdr _e1180011851_)))
                                      (if (gx#stx-null? _tl1180211856_)
                                          (_loop1178911825_
                                           _lp-tl1179211840_
                                           (cons _hd1180111854_
                                                 _body1179311830_)
                                           (cons _hd1179811846_
                                                 _hd1179411832_))
                                          (_g1177911807_ _g1178011810_))))
                                  (_g1177911807_ _g1178011810_))))
                          (_g1177911807_ _g1178011810_))))
                  (let ((_body1179511859_ (reverse _body1179311830_))
                        (_hd1179611861_ (reverse _hd1179411832_)))
                    ((lambda (_L11864_ _L11865_)
                       (for-each
                        (lambda (_g1187911881_)
                          (apply gxc#compile-e _g1187911881_ _args11777_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1188311886_ _g1188411888_)
                                    (cons _g1188311886_ _g1188411888_))
                                  '()
                                  _L11864_))))
                     _body1179511859_
                     _hd1179611861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1178911825_
                                             _target1178611820_
                                             '()
                                             '()))
                                          (_g1177911807_ _g1178011810_)))))
                                (_g1177911807_ _g1178011810_))
                            (_g1177911807_ _g1178011810_))))
                    (_g1177911807_ _g1178011810_)))))
        (_g1177811891_ _stx11776_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11629_ . _args11630_)
      (let* ((_g1163211667_
              (lambda (_g1163311664_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1163311664_)))
             (_g1163111773_
              (lambda (_g1163311670_)
                (if (gx#stx-pair? _g1163311670_)
                    (let ((_e1163711672_ (gx#stx-e _g1163311670_)))
                      (let ((_hd1163811675_ (##car _e1163711672_))
                            (_tl1163911677_ (##cdr _e1163711672_)))
                        (if (gx#stx-pair? _tl1163911677_)
                            (let ((_e1164011680_ (gx#stx-e _tl1163911677_)))
                              (let ((_hd1164111683_ (##car _e1164011680_))
                                    (_tl1164211685_ (##cdr _e1164011680_)))
                                (if (gx#stx-pair/null? _hd1164111683_)
                                    (if (fx>= (gx#stx-length _hd1164111683_)
                                              '0)
                                        (let ((_g12348_
                                               (gx#syntax-split-splice
                                                _hd1164111683_
                                                '0)))
                                          (begin
                                            (let ((_g12349_
                                                   (values-count _g12348_)))
                                              (if (not (fx= _g12349_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12349_)))
                                            (let ((_target1164311688_
                                                   (values-ref _g12348_ 0))
                                                  (_tl1164511690_
                                                   (values-ref _g12348_ 1)))
                                              (if (gx#stx-null? _tl1164511690_)
                                                  (letrec ((_loop1164611693_
                                                            (lambda (_hd1164411696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1165011698_
                             _hd1165111700_)
                      (if (gx#stx-pair? _hd1164411696_)
                          (let ((_e1164711703_ (gx#stx-e _hd1164411696_)))
                            (let ((_lp-hd1164811706_ (##car _e1164711703_))
                                  (_lp-tl1164911708_ (##cdr _e1164711703_)))
                              (if (gx#stx-pair? _lp-hd1164811706_)
                                  (let ((_e1165411711_
                                         (gx#stx-e _lp-hd1164811706_)))
                                    (let ((_hd1165511714_
                                           (##car _e1165411711_))
                                          (_tl1165611716_
                                           (##cdr _e1165411711_)))
                                      (if (gx#stx-pair? _tl1165611716_)
                                          (let ((_e1165711719_
                                                 (gx#stx-e _tl1165611716_)))
                                            (let ((_hd1165811722_
                                                   (##car _e1165711719_))
                                                  (_tl1165911724_
                                                   (##cdr _e1165711719_)))
                                              (if (gx#stx-null? _tl1165911724_)
                                                  (_loop1164611693_
                                                   _lp-tl1164911708_
                                                   (cons _hd1165811722_
                                                         _expr1165011698_)
                                                   (cons _hd1165511714_
                                                         _hd1165111700_))
                                                  (_g1163211667_
                                                   _g1163311670_))))
                                          (_g1163211667_ _g1163311670_))))
                                  (_g1163211667_ _g1163311670_))))
                          (let ((_expr1165211727_ (reverse _expr1165011698_))
                                (_hd1165311729_ (reverse _hd1165111700_)))
                            (if (gx#stx-pair? _tl1164211685_)
                                (let ((_e1166011732_
                                       (gx#stx-e _tl1164211685_)))
                                  (let ((_hd1166111735_ (##car _e1166011732_))
                                        (_tl1166211737_ (##cdr _e1166011732_)))
                                    (if (gx#stx-null? _tl1166211737_)
                                        ((lambda (_L11740_ _L11741_ _L11742_)
                                           (for-each
                                            (lambda (_g1176111763_)
                                              (apply gxc#compile-e
                                                     _g1176111763_
                                                     _args11630_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1176511768_
                                                               _g1176611770_)
                                                        (cons _g1176511768_
                                                              _g1176611770_))
                                                      (cons _L11740_ '())
                                                      _L11741_))))
                                         _hd1166111735_
                                         _expr1165211727_
                                         _hd1165311729_)
                                        (_g1163211667_ _g1163311670_))))
                                (_g1163211667_ _g1163311670_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1164611693_
                                                     _target1164311688_
                                                     '()
                                                     '()))
                                                  (_g1163211667_
                                                   _g1163311670_)))))
                                        (_g1163211667_ _g1163311670_))
                                    (_g1163211667_ _g1163311670_))))
                            (_g1163211667_ _g1163311670_))))
                    (_g1163211667_ _g1163311670_)))))
        (_g1163111773_ _stx11629_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11561_ . _args11562_)
      (let* ((_g1156411581_
              (lambda (_g1156511578_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1156511578_)))
             (_g1156311626_
              (lambda (_g1156511584_)
                (if (gx#stx-pair? _g1156511584_)
                    (let ((_e1156811586_ (gx#stx-e _g1156511584_)))
                      (let ((_hd1156911589_ (##car _e1156811586_))
                            (_tl1157011591_ (##cdr _e1156811586_)))
                        (if (gx#stx-pair? _tl1157011591_)
                            (let ((_e1157111594_ (gx#stx-e _tl1157011591_)))
                              (let ((_hd1157211597_ (##car _e1157111594_))
                                    (_tl1157311599_ (##cdr _e1157111594_)))
                                (if (gx#stx-pair? _tl1157311599_)
                                    (let ((_e1157411602_
                                           (gx#stx-e _tl1157311599_)))
                                      (let ((_hd1157511605_
                                             (##car _e1157411602_))
                                            (_tl1157611607_
                                             (##cdr _e1157411602_)))
                                        (if (gx#stx-null? _tl1157611607_)
                                            ((lambda (_L11610_ _L11611_)
                                               (apply gxc#compile-e
                                                      _L11610_
                                                      _args11562_))
                                             _hd1157511605_
                                             _hd1157211597_)
                                            (_g1156411581_ _g1156511584_))))
                                    (_g1156411581_ _g1156511584_))))
                            (_g1156411581_ _g1156511584_))))
                    (_g1156411581_ _g1156511584_)))))
        (_g1156311626_ _stx11561_))))
  (define gxc#collect-operands
    (lambda (_stx11474_ . _args11475_)
      (let* ((_g1147711496_
              (lambda (_g1147811493_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1147811493_)))
             (_g1147611558_
              (lambda (_g1147811499_)
                (if (gx#stx-pair? _g1147811499_)
                    (let ((_e1148011501_ (gx#stx-e _g1147811499_)))
                      (let ((_hd1148111504_ (##car _e1148011501_))
                            (_tl1148211506_ (##cdr _e1148011501_)))
                        (if (gx#stx-pair/null? _tl1148211506_)
                            (if (fx>= (gx#stx-length _tl1148211506_) '0)
                                (let ((_g12350_
                                       (gx#syntax-split-splice
                                        _tl1148211506_
                                        '0)))
                                  (begin
                                    (let ((_g12351_ (values-count _g12350_)))
                                      (if (not (fx= _g12351_ 2))
                                          (error "Context expects 2 values"
                                                 _g12351_)))
                                    (let ((_target1148311509_
                                           (values-ref _g12350_ 0))
                                          (_tl1148511511_
                                           (values-ref _g12350_ 1)))
                                      (if (gx#stx-null? _tl1148511511_)
                                          (letrec ((_loop1148611514_
                                                    (lambda (_hd1148411517_
                                                             _rands1149011519_)
                                                      (if (gx#stx-pair?
                                                           _hd1148411517_)
                                                          (let ((_e1148711522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1148411517_)))
                    (let ((_lp-hd1148811525_ (##car _e1148711522_))
                          (_lp-tl1148911527_ (##cdr _e1148711522_)))
                      (_loop1148611514_
                       _lp-tl1148911527_
                       (cons _lp-hd1148811525_ _rands1149011519_))))
                  (let ((_rands1149111530_ (reverse _rands1149011519_)))
                    ((lambda (_L11533_)
                       (for-each
                        (lambda (_g1154611548_)
                          (apply gxc#compile-e _g1154611548_ _args11475_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1155011553_ _g1155111555_)
                                    (cons _g1155011553_ _g1155111555_))
                                  '()
                                  _L11533_))))
                     _rands1149111530_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1148611514_
                                             _target1148311509_
                                             '()))
                                          (_g1147711496_ _g1147811499_)))))
                                (_g1147711496_ _g1147811499_))
                            (_g1147711496_ _g1147811499_))))
                    (_g1147711496_ _g1147811499_)))))
        (_g1147611558_ _stx11474_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11405_)
      (let* ((_g1140711424_
              (lambda (_g1140811421_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1140811421_)))
             (_g1140611471_
              (lambda (_g1140811427_)
                (if (gx#stx-pair? _g1140811427_)
                    (let ((_e1141111429_ (gx#stx-e _g1140811427_)))
                      (let ((_hd1141211432_ (##car _e1141111429_))
                            (_tl1141311434_ (##cdr _e1141111429_)))
                        (if (gx#stx-pair? _tl1141311434_)
                            (let ((_e1141411437_ (gx#stx-e _tl1141311434_)))
                              (let ((_hd1141511440_ (##car _e1141411437_))
                                    (_tl1141611442_ (##cdr _e1141411437_)))
                                (if (gx#stx-pair? _tl1141611442_)
                                    (let ((_e1141711445_
                                           (gx#stx-e _tl1141611442_)))
                                      (let ((_hd1141811448_
                                             (##car _e1141711445_))
                                            (_tl1141911450_
                                             (##cdr _e1141711445_)))
                                        (if (gx#stx-null? _tl1141911450_)
                                            ((lambda (_L11453_ _L11454_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11469_)
                                                  (if (gx#identifier?
                                                       _bind11469_)
                                                      (gxc#add-module-binding!
                                                       _bind11469_
                                                       '#f)
                                                      '#!void))
                                                _L11454_))
                                             _hd1141811448_
                                             _hd1141511440_)
                                            (_g1140711424_ _g1140811427_))))
                                    (_g1140711424_ _g1140811427_))))
                            (_g1140711424_ _g1140811427_))))
                    (_g1140711424_ _g1140811427_)))))
        (_g1140611471_ _stx11405_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11338_)
      (let* ((_g1134011357_
              (lambda (_g1134111354_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1134111354_)))
             (_g1133911402_
              (lambda (_g1134111360_)
                (if (gx#stx-pair? _g1134111360_)
                    (let ((_e1134411362_ (gx#stx-e _g1134111360_)))
                      (let ((_hd1134511365_ (##car _e1134411362_))
                            (_tl1134611367_ (##cdr _e1134411362_)))
                        (if (gx#stx-pair? _tl1134611367_)
                            (let ((_e1134711370_ (gx#stx-e _tl1134611367_)))
                              (let ((_hd1134811373_ (##car _e1134711370_))
                                    (_tl1134911375_ (##cdr _e1134711370_)))
                                (if (gx#stx-pair? _tl1134911375_)
                                    (let ((_e1135011378_
                                           (gx#stx-e _tl1134911375_)))
                                      (let ((_hd1135111381_
                                             (##car _e1135011378_))
                                            (_tl1135211383_
                                             (##cdr _e1135011378_)))
                                        (if (gx#stx-null? _tl1135211383_)
                                            ((lambda (_L11386_ _L11387_)
                                               (gxc#add-module-binding!
                                                _L11387_
                                                '#t))
                                             _hd1135111381_
                                             _hd1134811373_)
                                            (_g1134011357_ _g1134111360_))))
                                    (_g1134011357_ _g1134111360_))))
                            (_g1134011357_ _g1134111360_))))
                    (_g1134011357_ _g1134111360_)))))
        (_g1133911402_ _stx11338_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11280_ _modules11281_)
      (let* ((_g1128311297_
              (lambda (_g1128411294_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1128411294_)))
             (_g1128211335_
              (lambda (_g1128411300_)
                (if (gx#stx-pair? _g1128411300_)
                    (let ((_e1128711302_ (gx#stx-e _g1128411300_)))
                      (let ((_hd1128811305_ (##car _e1128711302_))
                            (_tl1128911307_ (##cdr _e1128711302_)))
                        (if (gx#stx-pair? _tl1128911307_)
                            (let ((_e1129011310_ (gx#stx-e _tl1128911307_)))
                              (let ((_hd1129111313_ (##car _e1129011310_))
                                    (_tl1129211315_ (##cdr _e1129011310_)))
                                ((lambda (_L11318_ _L11319_)
                                   (let ((_ctx11332_
                                          (gx#syntax-local-e__0 _L11319_)))
                                     (begin
                                       (set-box!
                                        _modules11281_
                                        (cons _ctx11332_
                                              (unbox _modules11281_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11332_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11281_))
                                        gx#current-expander-context
                                        _ctx11332_))))
                                 _tl1129211315_
                                 _hd1129111313_)))
                            (_g1128311297_ _g1128411300_))))
                    (_g1128311297_ _g1128411300_)))))
        (_g1128211335_ _stx11280_))))
  (define gxc#add-module-binding!
    (lambda (_id11274_ _syntax?11275_)
      (let ((_eid11277_
             (##structure-ref
              (gx#resolve-identifier__0 _id11274_)
              '1
              gx#binding::t
              '#f))
            (_ht11278_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11277_)
            '#!void
            (table-set!
             _ht11278_
             _eid11277_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11277_)
              _syntax?11275_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11252_)
      (let ((_$e11254_
             (if (##structure-direct-instance-of?
                  _id11252_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11252_)
                 '#f)))
        (if _$e11254_
            ((lambda (_bind11257_)
               (let ((_eid11259_
                      (##structure-ref _bind11257_ '1 gx#binding::t '#f))
                     (_ht11260_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11259_)
                     _eid11259_
                     (let ((_$e11262_ (table-ref _ht11260_ _eid11259_ '#f)))
                       (if _$e11262_
                           (values _$e11262_)
                           (if (##structure-instance-of?
                                _bind11257_
                                'gx#local-binding::t)
                               (let ((_gid11265_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11259_)))
                                 (begin
                                   (table-set! _ht11260_ _eid11259_ _gid11265_)
                                   _gid11265_))
                               (if (##structure-instance-of?
                                    _bind11257_
                                    'gx#module-binding::t)
                                   (let ((_gid11272_
                                          (let ((_$e11267_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11257_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11267_
                                                ((lambda (_ns11270_)
                                                   (make-symbol
                                                    _ns11270_
                                                    '"#"
                                                    _eid11259_))
                                                 _$e11267_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11259_)))))
                                     (begin
                                       (table-set!
                                        _ht11260_
                                        _eid11259_
                                        _gid11272_)
                                       _gid11272_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11252_
                                    _eid11259_
                                    _bind11257_))))))))
             _$e11254_)
            (if (interned-symbol? (gx#stx-e _id11252_))
                (gx#stx-e _id11252_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11252_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11250_)
      (if (gx#identifier? _id11250_)
          (gxc#generate-runtime-binding-id _id11250_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11230_ _quote?11231_)
        (let* ((_ht11233_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11235_ (table-ref _ht11233_ _sym11230_ '#f)))
          (if _$e11235_
              (values _$e11235_)
              (let ((_g11238_
                     (if _quote?11231_
                         (make-symbol
                          '"__"
                          _sym11230_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11230_ '"_"))))
                (begin
                  (table-set! _ht11233_ _sym11230_ _g11238_)
                  _g11238_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11243_)
          (let ((_quote?11245_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11243_
             _quote?11245_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12353_
          (let ((_g12352_ (length _g12353_)))
            (cond ((fx= _g12352_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12353_))
                  ((fx= _g12352_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12353_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12353_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11227_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11227_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11187_)
      (if (interned-symbol? _key11187_)
          _key11187_
          (if (uninterned-symbol? _key11187_)
              (gxc#generate-runtime-gensym-reference__0 _key11187_)
              (let* ((_key1118811195_ _key11187_)
                     (_E1119011199_
                      (lambda ()
                        (error '"No clause matching" _key1118811195_)))
                     (_K1119111215_
                      (lambda (_mark11202_ _eid11203_)
                        (let ((_$e11205_
                               (##structure-ref
                                _mark11202_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11205_
                              ((lambda (_ht11208_)
                                 (let ((_$e11210_
                                        (table-ref _ht11208_ _eid11203_ '#f)))
                                   (if _$e11210_
                                       ((lambda (_id11213_)
                                          (if (interned-symbol? _id11213_)
                                              _id11213_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11213_)))
                                        _$e11210_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11203_))))
                               _$e11205_)
                              (gxc#generate-runtime-identifier-key
                               _eid11203_))))))
                (if (##pair? _key1118811195_)
                    (let ((_hd1119211218_ (##car _key1118811195_))
                          (_tl1119311220_ (##cdr _key1118811195_)))
                      (let* ((_eid11223_ _hd1119211218_)
                             (_mark11225_ _tl1119311220_))
                        (_K1119111215_ _mark11225_ _eid11223_)))
                    (_E1119011199_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11174_)
        (if _top11174_
            (let ((_ns11176_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11177_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11177_)
                  (make-symbol
                   _ns11176_
                   '"["
                   (number->string _phi11177_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11176_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11183_ '#f))
            (gxc#generate-runtime-temporary__% _top11183_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12355_
          (let ((_g12354_ (length _g12355_)))
            (cond ((fx= _g12354_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12355_))
                  ((fx= _g12354_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12355_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12355_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11171_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11091_)
      (let* ((_g1109311103_
              (lambda (_g1109411100_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1109411100_)))
             (_g1109211168_
              (lambda (_g1109411106_)
                (if (gx#stx-pair? _g1109411106_)
                    (let ((_e1109611108_ (gx#stx-e _g1109411106_)))
                      (let ((_hd1109711111_ (##car _e1109611108_))
                            (_tl1109811113_ (##cdr _e1109611108_)))
                        ((lambda (_L11116_)
                           (let* ((_body11126_
                                   (gx#stx-map1 gxc#compile-e _L11116_))
                                  (_body11165_
                                   (filter (lambda (_stx11128_)
                                             (let* ((_g1113111140_
                                                     (lambda (_g1113211137_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1113211137_)))
                                                    (_g1113011147_
                                                     (lambda (_g1113211143_)
                                                       ((lambda () '#t))))
                                                    (_g1112911162_
                                                     (lambda (_g1113211150_)
                                                       (if (gx#stx-pair?
                                                            _g1113211150_)
                                                           (let ((_e1113311152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1113211150_)))
                     (let ((_hd1113411155_ (##car _e1113311152_))
                           (_tl1113511157_ (##cdr _e1113311152_)))
                       (if (gx#identifier? _hd1113411155_)
                           (if (gx#stx-eq? 'begin _hd1113411155_)
                               (if (gx#stx-null? _tl1113511157_)
                                   ((lambda () '#f))
                                   (_g1113011147_ _g1113211150_))
                               (_g1113011147_ _g1113211150_))
                           (_g1113011147_ _g1113211150_))))
                   (_g1113011147_ _g1113211150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1112911162_ _stx11128_)))
                                           _body11126_)))
                             (if (fx= (length _body11165_) '1)
                                 (car _body11165_)
                                 (cons 'begin _body11165_))))
                         _tl1109811113_)))
                    (_g1109311103_ _g1109411106_)))))
        (_g1109211168_ _stx11091_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11053_)
      (let* ((_g1105511065_
              (lambda (_g1105611062_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1105611062_)))
             (_g1105411088_
              (lambda (_g1105611068_)
                (if (gx#stx-pair? _g1105611068_)
                    (let ((_e1105811070_ (gx#stx-e _g1105611068_)))
                      (let ((_hd1105911073_ (##car _e1105811070_))
                            (_tl1106011075_ (##cdr _e1105811070_)))
                        ((lambda (_L11078_)
                           (cons 'begin (gx#syntax->datum _L11078_)))
                         _tl1106011075_)))
                    (_g1105511065_ _g1105611068_)))))
        (_g1105411088_ _stx11053_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10986_)
      (let* ((_g1098811005_
              (lambda (_g1098911002_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1098911002_)))
             (_g1098711050_
              (lambda (_g1098911008_)
                (if (gx#stx-pair? _g1098911008_)
                    (let ((_e1099211010_ (gx#stx-e _g1098911008_)))
                      (let ((_hd1099311013_ (##car _e1099211010_))
                            (_tl1099411015_ (##cdr _e1099211010_)))
                        (if (gx#stx-pair? _tl1099411015_)
                            (let ((_e1099511018_ (gx#stx-e _tl1099411015_)))
                              (let ((_hd1099611021_ (##car _e1099511018_))
                                    (_tl1099711023_ (##cdr _e1099511018_)))
                                (if (gx#stx-pair? _tl1099711023_)
                                    (let ((_e1099811026_
                                           (gx#stx-e _tl1099711023_)))
                                      (let ((_hd1099911029_
                                             (##car _e1099811026_))
                                            (_tl1100011031_
                                             (##cdr _e1099811026_)))
                                        (if (gx#stx-null? _tl1100011031_)
                                            ((lambda (_L11034_ _L11035_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L11035_))
                   (cons (gxc#compile-e _L11034_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1099911029_
                                             _hd1099611021_)
                                            (_g1098811005_ _g1098911008_))))
                                    (_g1098811005_ _g1098911008_))))
                            (_g1098811005_ _g1098911008_))))
                    (_g1098811005_ _g1098911008_)))))
        (_g1098711050_ _stx10986_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10948_)
      (let* ((_g1095010960_
              (lambda (_g1095110957_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1095110957_)))
             (_g1094910983_
              (lambda (_g1095110963_)
                (if (gx#stx-pair? _g1095110963_)
                    (let ((_e1095310965_ (gx#stx-e _g1095110963_)))
                      (let ((_hd1095410968_ (##car _e1095310965_))
                            (_tl1095510970_ (##cdr _e1095310965_)))
                        ((lambda (_L10973_)
                           (cons 'declare (map gx#syntax->datum _L10973_)))
                         _tl1095510970_)))
                    (_g1095010960_ _g1095110963_)))))
        (_g1094910983_ _stx10948_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10704_)
      (let* ((_g1070610723_
              (lambda (_g1070710720_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1070710720_)))
             (_g1070510945_
              (lambda (_g1070710726_)
                (if (gx#stx-pair? _g1070710726_)
                    (let ((_e1071010728_ (gx#stx-e _g1070710726_)))
                      (let ((_hd1071110731_ (##car _e1071010728_))
                            (_tl1071210733_ (##cdr _e1071010728_)))
                        (if (gx#stx-pair? _tl1071210733_)
                            (let ((_e1071310736_ (gx#stx-e _tl1071210733_)))
                              (let ((_hd1071410739_ (##car _e1071310736_))
                                    (_tl1071510741_ (##cdr _e1071310736_)))
                                (if (gx#stx-pair? _tl1071510741_)
                                    (let ((_e1071610744_
                                           (gx#stx-e _tl1071510741_)))
                                      (let ((_hd1071710747_
                                             (##car _e1071610744_))
                                            (_tl1071810749_
                                             (##cdr _e1071610744_)))
                                        (if (gx#stx-null? _tl1071810749_)
                                            ((lambda (_L10752_ _L10753_)
                                               (let* ((_g1077010783_
                                                       (lambda (_g1077110780_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1077110780_)))
                                                      (_g1076910897_
                                                       (lambda (_g1077110786_)
                                                         ((lambda ()
                                                            (let* ((_tmp10790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body10894_
                            (let _lp10792_ ((_rest10794_ _L10753_)
                                            (_k10795_ '0)
                                            (_r10796_ '()))
                              (let* ((_g1080110817_
                                      (lambda (_g1080210814_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1080210814_)))
                                     (_g1080010824_
                                      (lambda (_g1080210820_)
                                        ((lambda () (reverse _r10796_)))))
                                     (_g1079910845_
                                      (lambda (_g1080210827_)
                                        ((lambda (_L10829_)
                                           (if (gx#identifier? _L10829_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10829_)
                                 (cons (cons 'values->list
                                             (cons _tmp10790_
                                                   (cons _k10795_ '())))
                                       '())))
                     '())
               _r10796_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1080010824_ _g1080210827_)))
                                         _g1080210827_)))
                                     (_g1079810869_
                                      (lambda (_g1080210848_)
                                        (if (gx#stx-pair? _g1080210848_)
                                            (let ((_e1080910850_
                                                   (gx#stx-e _g1080210848_)))
                                              (let ((_hd1081010853_
                                                     (##car _e1080910850_))
                                                    (_tl1081110855_
                                                     (##cdr _e1080910850_)))
                                                ((lambda (_L10858_ _L10859_)
                                                   (_lp10792_
                                                    _L10858_
                                                    (fx+ _k10795_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10859_)
                              (cons (cons 'values-ref
                                          (cons _tmp10790_
                                                (cons _k10795_ '())))
                                    '())))
                  _r10796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1081110855_
                                                 _hd1081010853_)))
                                            (_g1079910845_ _g1080210848_))))
                                     (_g1079710891_
                                      (lambda (_g1080210872_)
                                        (if (gx#stx-pair? _g1080210872_)
                                            (let ((_e1080410874_
                                                   (gx#stx-e _g1080210872_)))
                                              (let ((_hd1080510877_
                                                     (##car _e1080410874_))
                                                    (_tl1080610879_
                                                     (##cdr _e1080410874_)))
                                                (if (gx#stx-datum?
                                                     _hd1080510877_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1080510877_)
                        '#f)
                ((lambda (_L10882_)
                   (_lp10792_ _L10882_ (fx+ _k10795_ '1) _r10796_))
                 _tl1080610879_)
                (_g1079810869_ _g1080210872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1079810869_
                                                     _g1080210872_))))
                                            (_g1079810869_ _g1080210872_)))))
                                (_g1079710891_ _rest10794_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10790_
                                              (cons (gxc#compile-e _L10752_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10790_
                                         _L10753_)
                                        _body10894_))))))))
              (_g1076810927_
               (lambda (_g1077110900_)
                 (if (gx#stx-pair? _g1077110900_)
                     (let ((_e1077610902_ (gx#stx-e _g1077110900_)))
                       (let ((_hd1077710905_ (##car _e1077610902_))
                             (_tl1077810907_ (##cdr _e1077610902_)))
                         (if (gx#stx-null? _tl1077810907_)
                             ((lambda (_L10910_)
                                (let ((_eid10919_
                                       (gxc#generate-runtime-binding-id
                                        _L10910_)))
                                  (begin
                                    (let ((_lambda-expr1092010922_
                                           (gxc#apply-find-lambda-expression
                                            _L10752_)))
                                      (if _lambda-expr1092010922_
                                          (let ((_lambda-expr10925_
                                                 _lambda-expr1092010922_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10925_
                                             _eid10919_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10919_
                                                (cons (gxc#compile-e _L10752_)
                                                      '()))))))
                              _hd1077710905_)
                             (_g1076910897_ _g1077110900_))))
                     (_g1076910897_ _g1077110900_))))
              (_g1076710942_
               (lambda (_g1077110930_)
                 (if (gx#stx-pair? _g1077110930_)
                     (let ((_e1077210932_ (gx#stx-e _g1077110930_)))
                       (let ((_hd1077310935_ (##car _e1077210932_))
                             (_tl1077410937_ (##cdr _e1077210932_)))
                         (if (gx#stx-datum? _hd1077310935_)
                             (if (equal? (gx#stx-e _hd1077310935_) '#f)
                                 (if (gx#stx-null? _tl1077410937_)
                                     ((lambda () (gxc#compile-e _L10752_)))
                                     (_g1076810927_ _g1077110930_))
                                 (_g1076810927_ _g1077110930_))
                             (_g1076810927_ _g1077110930_))))
                     (_g1076810927_ _g1077110930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1076710942_ _L10753_)))
                                             _hd1071710747_
                                             _hd1071410739_)
                                            (_g1070610723_ _g1070710726_))))
                                    (_g1070610723_ _g1070710726_))))
                            (_g1070610723_ _g1070710726_))))
                    (_g1070610723_ _g1070710726_)))))
        (_g1070510945_ _stx10704_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10692_ _hd10693_)
      (let* ((_len10695_ (gx#stx-length _hd10693_))
             (_cmp10697_ (if (gx#stx-list? _hd10693_) 'fx= 'fx>=))
             (_errmsg10699_
              (string-append
               (if (gx#stx-list? _hd10693_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10695_)
               '" values"))
             (_count10701_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10693_)) (fx= _len10695_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10701_
                                    (cons (cons 'values-count
                                                (cons _vals10692_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10697_
                                                            (cons _count10701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10695_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10699_
                                                            (cons _count10701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10625_)
      (let* ((_g1062710644_
              (lambda (_g1062810641_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1062810641_)))
             (_g1062610689_
              (lambda (_g1062810647_)
                (if (gx#stx-pair? _g1062810647_)
                    (let ((_e1063110649_ (gx#stx-e _g1062810647_)))
                      (let ((_hd1063210652_ (##car _e1063110649_))
                            (_tl1063310654_ (##cdr _e1063110649_)))
                        (if (gx#stx-pair? _tl1063310654_)
                            (let ((_e1063410657_ (gx#stx-e _tl1063310654_)))
                              (let ((_hd1063510660_ (##car _e1063410657_))
                                    (_tl1063610662_ (##cdr _e1063410657_)))
                                (if (gx#stx-pair? _tl1063610662_)
                                    (let ((_e1063710665_
                                           (gx#stx-e _tl1063610662_)))
                                      (let ((_hd1063810668_
                                             (##car _e1063710665_))
                                            (_tl1063910670_
                                             (##cdr _e1063710665_)))
                                        (if (gx#stx-null? _tl1063910670_)
                                            ((lambda (_L10673_ _L10674_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10674_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10673_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1063810668_
                                             _hd1063510660_)
                                            (_g1062710644_ _g1062810647_))))
                                    (_g1062710644_ _g1062810647_))))
                            (_g1062710644_ _g1062810647_))))
                    (_g1062710644_ _g1062810647_)))))
        (_g1062610689_ _stx10625_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10623_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10623_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9156_)
      (letrec ((_runtime-identifier=?9158_
                (lambda (_id-stx10614_ _sym10615_)
                  (let ((_bind1061610618_
                         (gx#resolve-identifier__0 _id-stx10614_)))
                    (if _bind1061610618_
                        (let ((_bind10621_ _bind1061610618_))
                          (eq? (##structure-ref
                                _bind10621_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10615_))
                        '#f))))
               (_dispatch-case?9159_
                (lambda (_hd9844_ _body9845_)
                  (let* ((_form9847_ (cons _hd9844_ (cons _body9845_ '())))
                         (_g985210009_
                          (lambda (_g985310006_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g985310006_)))
                         (_g985110016_
                          (lambda (_g985310012_) ((lambda () '#f))))
                         (_g985010157_
                          (lambda (_g985310019_)
                            (if (gx#stx-pair? _g985310019_)
                                (let ((_e996910021_ (gx#stx-e _g985310019_)))
                                  (let ((_hd997010024_ (##car _e996910021_))
                                        (_tl997110026_ (##cdr _e996910021_)))
                                    (if (gx#stx-pair? _tl997110026_)
                                        (let ((_e997210029_
                                               (gx#stx-e _tl997110026_)))
                                          (let ((_hd997310032_
                                                 (##car _e997210029_))
                                                (_tl997410034_
                                                 (##cdr _e997210029_)))
                                            (if (gx#stx-pair? _hd997310032_)
                                                (let ((_e997510037_
                                                       (gx#stx-e
                                                        _hd997310032_)))
                                                  (let ((_hd997610040_
                                                         (##car _e997510037_))
                                                        (_tl997710042_
                                                         (##cdr _e997510037_)))
                                                    (if (gx#identifier?
                                                         _hd997610040_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd997610040_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl997710042_)
                        (let ((_e997810045_ (gx#stx-e _tl997710042_)))
                          (let ((_hd997910048_ (##car _e997810045_))
                                (_tl998010050_ (##cdr _e997810045_)))
                            (if (gx#stx-pair? _hd997910048_)
                                (let ((_e998110053_ (gx#stx-e _hd997910048_)))
                                  (let ((_hd998210056_ (##car _e998110053_))
                                        (_tl998310058_ (##cdr _e998110053_)))
                                    (if (gx#identifier? _hd998210056_)
                                        (if (gx#stx-eq? '%#ref _hd998210056_)
                                            (if (gx#stx-pair? _tl998310058_)
                                                (let ((_e998410061_
                                                       (gx#stx-e
                                                        _tl998310058_)))
                                                  (let ((_hd998510064_
                                                         (##car _e998410061_))
                                                        (_tl998610066_
                                                         (##cdr _e998410061_)))
                                                    (if (gx#stx-null?
                                                         _tl998610066_)
                                                        (if (gx#stx-pair?
                                                             _tl998010050_)
                                                            (let ((_e998710069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl998010050_)))
                      (let ((_hd998810072_ (##car _e998710069_))
                            (_tl998910074_ (##cdr _e998710069_)))
                        (if (gx#stx-pair? _hd998810072_)
                            (let ((_e999010077_ (gx#stx-e _hd998810072_)))
                              (let ((_hd999110080_ (##car _e999010077_))
                                    (_tl999210082_ (##cdr _e999010077_)))
                                (if (gx#identifier? _hd999110080_)
                                    (if (gx#stx-eq? '%#ref _hd999110080_)
                                        (if (gx#stx-pair? _tl999210082_)
                                            (let ((_e999310085_
                                                   (gx#stx-e _tl999210082_)))
                                              (let ((_hd999410088_
                                                     (##car _e999310085_))
                                                    (_tl999510090_
                                                     (##cdr _e999310085_)))
                                                (if (gx#stx-null?
                                                     _tl999510090_)
                                                    (if (gx#stx-pair?
                                                         _tl998910074_)
                                                        (let ((_e999610093_
                                                               (gx#stx-e
                                                                _tl998910074_)))
                                                          (let ((_hd999710096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e999610093_))
                        (_tl999810098_ (##cdr _e999610093_)))
                    (if (gx#stx-pair? _hd999710096_)
                        (let ((_e999910101_ (gx#stx-e _hd999710096_)))
                          (let ((_hd1000010104_ (##car _e999910101_))
                                (_tl1000110106_ (##cdr _e999910101_)))
                            (if (gx#identifier? _hd1000010104_)
                                (if (gx#stx-eq? '%#ref _hd1000010104_)
                                    (if (gx#stx-pair? _tl1000110106_)
                                        (let ((_e1000210109_
                                               (gx#stx-e _tl1000110106_)))
                                          (let ((_hd1000310112_
                                                 (##car _e1000210109_))
                                                (_tl1000410114_
                                                 (##cdr _e1000210109_)))
                                            (if (gx#stx-null? _tl1000410114_)
                                                (if (gx#stx-null?
                                                     _tl999810098_)
                                                    (if (gx#stx-null?
                                                         _tl997410034_)
                                                        ((lambda (_L10117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10118_
                          _L10119_
                          _L10120_)
                   (if (if (gx#identifier? _L10120_)
                           (if (_runtime-identifier=?9158_ _L10119_ 'apply)
                               (if (gx#free-identifier=? _L10120_ _L10117_)
                                   (not (gx#free-identifier=?
                                         _L10118_
                                         _L10120_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g985110016_ _g985310019_)))
                 _hd1000310112_
                 _hd999410088_
                 _hd998510064_
                 _hd997010024_)
                (_g985110016_ _g985310019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g985110016_
                                                     _g985310019_))
                                                (_g985110016_ _g985310019_))))
                                        (_g985110016_ _g985310019_))
                                    (_g985110016_ _g985310019_))
                                (_g985110016_ _g985310019_))))
                        (_g985110016_ _g985310019_))))
                (_g985110016_ _g985310019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g985110016_
                                                     _g985310019_))))
                                            (_g985110016_ _g985310019_))
                                        (_g985110016_ _g985310019_))
                                    (_g985110016_ _g985310019_))))
                            (_g985110016_ _g985310019_))))
                    (_g985110016_ _g985310019_))
                (_g985110016_ _g985310019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g985110016_ _g985310019_))
                                            (_g985110016_ _g985310019_))
                                        (_g985110016_ _g985310019_))))
                                (_g985110016_ _g985310019_))))
                        (_g985110016_ _g985310019_))
                    (_g985110016_ _g985310019_))
                (_g985110016_ _g985310019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g985110016_ _g985310019_))))
                                        (_g985110016_ _g985310019_))))
                                (_g985110016_ _g985310019_))))
                         (_g984910417_
                          (lambda (_g985310160_)
                            (if (gx#stx-pair? _g985310160_)
                                (let ((_e990510162_ (gx#stx-e _g985310160_)))
                                  (let ((_hd990610165_ (##car _e990510162_))
                                        (_tl990710167_ (##cdr _e990510162_)))
                                    (if (gx#stx-pair/null? _hd990610165_)
                                        (if (fx>= (gx#stx-length _hd990610165_)
                                                  '0)
                                            (let ((_g12356_
                                                   (gx#syntax-split-splice
                                                    _hd990610165_
                                                    '0)))
                                              (begin
                                                (let ((_g12357_
                                                       (values-count
                                                        _g12356_)))
                                                  (if (not (fx= _g12357_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12357_)))
                                                (let ((_target990810170_
                                                       (values-ref _g12356_ 0))
                                                      (_tl991010172_
                                                       (values-ref
                                                        _g12356_
                                                        1)))
                                                  (letrec ((_loop991110175_
                                                            (lambda (_hd990910178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg991510180_)
                      (if (gx#stx-pair? _hd990910178_)
                          (let ((_e991210183_ (gx#stx-e _hd990910178_)))
                            (let ((_lp-hd991310186_ (##car _e991210183_))
                                  (_lp-tl991410188_ (##cdr _e991210183_)))
                              (_loop991110175_
                               _lp-tl991410188_
                               (cons _lp-hd991310186_ _arg991510180_))))
                          (let ((_arg991610191_ (reverse _arg991510180_)))
                            (if (gx#stx-pair? _tl990710167_)
                                (let ((_e991710194_ (gx#stx-e _tl990710167_)))
                                  (let ((_hd991810197_ (##car _e991710194_))
                                        (_tl991910199_ (##cdr _e991710194_)))
                                    (if (gx#stx-pair? _hd991810197_)
                                        (let ((_e992010202_
                                               (gx#stx-e _hd991810197_)))
                                          (let ((_hd992110205_
                                                 (##car _e992010202_))
                                                (_tl992210207_
                                                 (##cdr _e992010202_)))
                                            (if (gx#identifier? _hd992110205_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd992110205_)
                                                    (if (gx#stx-pair?
                                                         _tl992210207_)
                                                        (let ((_e992310210_
                                                               (gx#stx-e
                                                                _tl992210207_)))
                                                          (let ((_hd992410213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e992310210_))
                        (_tl992510215_ (##cdr _e992310210_)))
                    (if (gx#stx-pair? _hd992410213_)
                        (let ((_e992610218_ (gx#stx-e _hd992410213_)))
                          (let ((_hd992710221_ (##car _e992610218_))
                                (_tl992810223_ (##cdr _e992610218_)))
                            (if (gx#identifier? _hd992710221_)
                                (if (gx#stx-eq? '%#ref _hd992710221_)
                                    (if (gx#stx-pair? _tl992810223_)
                                        (let ((_e992910226_
                                               (gx#stx-e _tl992810223_)))
                                          (let ((_hd993010229_
                                                 (##car _e992910226_))
                                                (_tl993110231_
                                                 (##cdr _e992910226_)))
                                            (if (gx#stx-null? _tl993110231_)
                                                (if (gx#stx-pair?
                                                     _tl992510215_)
                                                    (let ((_e993210234_
                                                           (gx#stx-e
                                                            _tl992510215_)))
                                                      (let ((_hd993310237_
                                                             (##car _e993210234_))
                                                            (_tl993410239_
                                                             (##cdr _e993210234_)))
                                                        (if (gx#stx-pair?
                                                             _hd993310237_)
                                                            (let ((_e993510242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd993310237_)))
                      (let ((_hd993610245_ (##car _e993510242_))
                            (_tl993710247_ (##cdr _e993510242_)))
                        (if (gx#identifier? _hd993610245_)
                            (if (gx#stx-eq? '%#ref _hd993610245_)
                                (if (gx#stx-pair? _tl993710247_)
                                    (let ((_e993810250_
                                           (gx#stx-e _tl993710247_)))
                                      (let ((_hd993910253_
                                             (##car _e993810250_))
                                            (_tl994010255_
                                             (##cdr _e993810250_)))
                                        (if (gx#stx-null? _tl994010255_)
                                            (if (gx#stx-pair/null?
                                                 _tl993410239_)
                                                (if (fx>= (gx#stx-length
                                                           _tl993410239_)
                                                          '1)
                                                    (let ((_g12358_
                                                           (gx#syntax-split-splice
                                                            _tl993410239_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12359_
                                                               (values-count
                                                                _g12358_)))
                                                          (if (not (fx= _g12359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12359_)))
                (let ((_target994110258_ (values-ref _g12358_ 0))
                      (_tl994310260_ (values-ref _g12358_ 1)))
                  (if (gx#stx-pair? _tl994310260_)
                      (let ((_e995010263_ (gx#stx-e _tl994310260_)))
                        (let ((_hd995110266_ (##car _e995010263_))
                              (_tl995210268_ (##cdr _e995010263_)))
                          (if (gx#stx-pair? _hd995110266_)
                              (let ((_e995310271_ (gx#stx-e _hd995110266_)))
                                (let ((_hd995410274_ (##car _e995310271_))
                                      (_tl995510276_ (##cdr _e995310271_)))
                                  (if (gx#identifier? _hd995410274_)
                                      (if (gx#stx-eq? '%#ref _hd995410274_)
                                          (if (gx#stx-pair? _tl995510276_)
                                              (let ((_e995610279_
                                                     (gx#stx-e _tl995510276_)))
                                                (let ((_hd995710282_
                                                       (##car _e995610279_))
                                                      (_tl995810284_
                                                       (##cdr _e995610279_)))
                                                  (if (gx#stx-null?
                                                       _tl995810284_)
                                                      (if (gx#stx-null?
                                                           _tl995210268_)
                                                          (letrec ((_loop994410287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd994210290_ _xarg994810292_)
                              (if (gx#stx-pair? _hd994210290_)
                                  (let ((_e994510295_
                                         (gx#stx-e _hd994210290_)))
                                    (let ((_lp-hd994610298_
                                           (##car _e994510295_))
                                          (_lp-tl994710300_
                                           (##cdr _e994510295_)))
                                      (if (gx#stx-pair? _lp-hd994610298_)
                                          (let ((_e995910303_
                                                 (gx#stx-e _lp-hd994610298_)))
                                            (let ((_hd996010306_
                                                   (##car _e995910303_))
                                                  (_tl996110308_
                                                   (##cdr _e995910303_)))
                                              (if (gx#identifier?
                                                   _hd996010306_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd996010306_)
                                                      (if (gx#stx-pair?
                                                           _tl996110308_)
                                                          (let ((_e996210311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl996110308_)))
                    (let ((_hd996310314_ (##car _e996210311_))
                          (_tl996410316_ (##cdr _e996210311_)))
                      (if (gx#stx-null? _tl996410316_)
                          (_loop994410287_
                           _lp-tl994710300_
                           (cons _hd996310314_ _xarg994810292_))
                          (_g985010157_ _g985310160_))))
                  (_g985010157_ _g985310160_))
              (_g985010157_ _g985310160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g985010157_
                                                   _g985310160_))))
                                          (_g985010157_ _g985310160_))))
                                  (let ((_xarg994910319_
                                         (reverse _xarg994810292_)))
                                    (if (gx#stx-null? _tl991910199_)
                                        ((lambda (_L10322_
                                                  _L10323_
                                                  _L10324_
                                                  _L10325_
                                                  _L10326_
                                                  _L10327_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1037010373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1037110375_)
                        (cons _g1037010373_ _g1037110375_))
                      '()
                      _L10327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10326_)
                                                       (if (_runtime-identifier=?9158_
                                                            _L10325_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1037710380_
                                                       _g1037810382_)
                                                (cons _g1037710380_
                                                      _g1037810382_))
                                              '()
                                              _L10327_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1038410387_
                                                       _g1038510389_)
                                                (cons _g1038410387_
                                                      _g1038510389_))
                                              '()
                                              _L10323_))))
                       (if (andmap2 gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1039110394_
                                                       _g1039210396_)
                                                (cons _g1039110394_
                                                      _g1039210396_))
                                              '()
                                              _L10327_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1039810401_
                                                       _g1039910403_)
                                                (cons _g1039810401_
                                                      _g1039910403_))
                                              '()
                                              _L10323_)))
                           (if (gx#free-identifier=? _L10326_ _L10322_)
                               (not (find (lambda (_g1040510407_)
                                            (gx#free-identifier=?
                                             _g1040510407_
                                             _L10324_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1040910412_
                                                             _g1041010414_)
                                                      (cons _g1040910412_
                                                            _g1041010414_))
                                                    (cons _L10326_ '())
                                                    _L10327_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g985010157_ _g985310160_)))
                                         _hd995710282_
                                         _xarg994910319_
                                         _hd993910253_
                                         _hd993010229_
                                         _tl991010172_
                                         _arg991610191_)
                                        (_g985010157_ _g985310160_)))))))
                    (_loop994410287_ _target994110258_ '()))
                  (_g985010157_ _g985310160_))
              (_g985010157_ _g985310160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g985010157_ _g985310160_))
                                          (_g985010157_ _g985310160_))
                                      (_g985010157_ _g985310160_))))
                              (_g985010157_ _g985310160_))))
                      (_g985010157_ _g985310160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g985010157_
                                                     _g985310160_))
                                                (_g985010157_ _g985310160_))
                                            (_g985010157_ _g985310160_))))
                                    (_g985010157_ _g985310160_))
                                (_g985010157_ _g985310160_))
                            (_g985010157_ _g985310160_))))
                    (_g985010157_ _g985310160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g985010157_
                                                     _g985310160_))
                                                (_g985010157_ _g985310160_))))
                                        (_g985010157_ _g985310160_))
                                    (_g985010157_ _g985310160_))
                                (_g985010157_ _g985310160_))))
                        (_g985010157_ _g985310160_))))
                (_g985010157_ _g985310160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g985010157_
                                                     _g985310160_))
                                                (_g985010157_ _g985310160_))))
                                        (_g985010157_ _g985310160_))))
                                (_g985010157_ _g985310160_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop991110175_
                                                     _target990810170_
                                                     '())))))
                                            (_g985010157_ _g985310160_))
                                        (_g985010157_ _g985310160_))))
                                (_g985010157_ _g985310160_))))
                         (_g984810611_
                          (lambda (_g985310420_)
                            (if (gx#stx-pair? _g985310420_)
                                (let ((_e985710422_ (gx#stx-e _g985310420_)))
                                  (let ((_hd985810425_ (##car _e985710422_))
                                        (_tl985910427_ (##cdr _e985710422_)))
                                    (if (gx#stx-pair/null? _hd985810425_)
                                        (if (fx>= (gx#stx-length _hd985810425_)
                                                  '0)
                                            (let ((_g12360_
                                                   (gx#syntax-split-splice
                                                    _hd985810425_
                                                    '0)))
                                              (begin
                                                (let ((_g12361_
                                                       (values-count
                                                        _g12360_)))
                                                  (if (not (fx= _g12361_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12361_)))
                                                (let ((_target986010430_
                                                       (values-ref _g12360_ 0))
                                                      (_tl986210432_
                                                       (values-ref
                                                        _g12360_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl986210432_)
                                                      (letrec ((_loop986310435_
                                                                (lambda (_hd986110438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg986710440_)
                          (if (gx#stx-pair? _hd986110438_)
                              (let ((_e986410443_ (gx#stx-e _hd986110438_)))
                                (let ((_lp-hd986510446_ (##car _e986410443_))
                                      (_lp-tl986610448_ (##cdr _e986410443_)))
                                  (_loop986310435_
                                   _lp-tl986610448_
                                   (cons _lp-hd986510446_ _arg986710440_))))
                              (let ((_arg986810451_ (reverse _arg986710440_)))
                                (if (gx#stx-pair? _tl985910427_)
                                    (let ((_e986910454_
                                           (gx#stx-e _tl985910427_)))
                                      (let ((_hd987010457_
                                             (##car _e986910454_))
                                            (_tl987110459_
                                             (##cdr _e986910454_)))
                                        (if (gx#stx-pair? _hd987010457_)
                                            (let ((_e987210462_
                                                   (gx#stx-e _hd987010457_)))
                                              (let ((_hd987310465_
                                                     (##car _e987210462_))
                                                    (_tl987410467_
                                                     (##cdr _e987210462_)))
                                                (if (gx#identifier?
                                                     _hd987310465_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd987310465_)
                                                        (if (gx#stx-pair?
                                                             _tl987410467_)
                                                            (let ((_e987510470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl987410467_)))
                      (let ((_hd987610473_ (##car _e987510470_))
                            (_tl987710475_ (##cdr _e987510470_)))
                        (if (gx#stx-pair? _hd987610473_)
                            (let ((_e987810478_ (gx#stx-e _hd987610473_)))
                              (let ((_hd987910481_ (##car _e987810478_))
                                    (_tl988010483_ (##cdr _e987810478_)))
                                (if (gx#identifier? _hd987910481_)
                                    (if (gx#stx-eq? '%#ref _hd987910481_)
                                        (if (gx#stx-pair? _tl988010483_)
                                            (let ((_e988110486_
                                                   (gx#stx-e _tl988010483_)))
                                              (let ((_hd988210489_
                                                     (##car _e988110486_))
                                                    (_tl988310491_
                                                     (##cdr _e988110486_)))
                                                (if (gx#stx-null?
                                                     _tl988310491_)
                                                    (if (gx#stx-pair/null?
                                                         _tl987710475_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl987710475_)
                          '0)
                    (let ((_g12362_ (gx#syntax-split-splice _tl987710475_ '0)))
                      (begin
                        (let ((_g12363_ (values-count _g12362_)))
                          (if (not (fx= _g12363_ 2))
                              (error "Context expects 2 values" _g12363_)))
                        (let ((_target988410494_ (values-ref _g12362_ 0))
                              (_tl988610496_ (values-ref _g12362_ 1)))
                          (if (gx#stx-null? _tl988610496_)
                              (letrec ((_loop988710499_
                                        (lambda (_hd988510502_ _xarg989110504_)
                                          (if (gx#stx-pair? _hd988510502_)
                                              (let ((_e988810507_
                                                     (gx#stx-e _hd988510502_)))
                                                (let ((_lp-hd988910510_
                                                       (##car _e988810507_))
                                                      (_lp-tl989010512_
                                                       (##cdr _e988810507_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd988910510_)
                                                      (let ((_e989310515_
                                                             (gx#stx-e
                                                              _lp-hd988910510_)))
                                                        (let ((_hd989410518_
                                                               (##car _e989310515_))
                                                              (_tl989510520_
                                                               (##cdr _e989310515_)))
                                                          (if (gx#identifier?
                                                               _hd989410518_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd989410518_)
                          (if (gx#stx-pair? _tl989510520_)
                              (let ((_e989610523_ (gx#stx-e _tl989510520_)))
                                (let ((_hd989710526_ (##car _e989610523_))
                                      (_tl989810528_ (##cdr _e989610523_)))
                                  (if (gx#stx-null? _tl989810528_)
                                      (_loop988710499_
                                       _lp-tl989010512_
                                       (cons _hd989710526_ _xarg989110504_))
                                      (_g984910417_ _g985310420_))))
                              (_g984910417_ _g985310420_))
                          (_g984910417_ _g985310420_))
                      (_g984910417_ _g985310420_))))
              (_g984910417_ _g985310420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg989210531_
                                                     (reverse _xarg989110504_)))
                                                (if (gx#stx-null?
                                                     _tl987110459_)
                                                    ((lambda (_L10534_
                                                              _L10535_
                                                              _L10536_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1056410567_ _g1056510569_)
                                    (cons _g1056410567_ _g1056510569_))
                                  '()
                                  _L10536_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1057110574_
                                                           _g1057210576_)
                                                    (cons _g1057110574_
                                                          _g1057210576_))
                                                  '()
                                                  _L10536_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1057810581_
                                                           _g1057910583_)
                                                    (cons _g1057810581_
                                                          _g1057910583_))
                                                  '()
                                                  _L10534_))))
                           (if (andmap2 gx#free-identifier=?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1058510588_
                                                           _g1058610590_)
                                                    (cons _g1058510588_
                                                          _g1058610590_))
                                                  '()
                                                  _L10536_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1059210595_
                                                           _g1059310597_)
                                                    (cons _g1059210595_
                                                          _g1059310597_))
                                                  '()
                                                  _L10534_)))
                               (not (find (lambda (_g1059910601_)
                                            (gx#free-identifier=?
                                             _g1059910601_
                                             _L10535_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1060310606_
                                                             _g1060410608_)
                                                      (cons _g1060310606_
                                                            _g1060410608_))
                                                    '()
                                                    _L10536_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g984910417_ _g985310420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg989210531_
                                                     _hd988210489_
                                                     _arg986810451_)
                                                    (_g984910417_
                                                     _g985310420_)))))))
                                (_loop988710499_ _target988410494_ '()))
                              (_g984910417_ _g985310420_)))))
                    (_g984910417_ _g985310420_))
                (_g984910417_ _g985310420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g984910417_
                                                     _g985310420_))))
                                            (_g984910417_ _g985310420_))
                                        (_g984910417_ _g985310420_))
                                    (_g984910417_ _g985310420_))))
                            (_g984910417_ _g985310420_))))
                    (_g984910417_ _g985310420_))
                (_g984910417_ _g985310420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g984910417_
                                                     _g985310420_))))
                                            (_g984910417_ _g985310420_))))
                                    (_g984910417_ _g985310420_)))))))
                (_loop986310435_ _target986010430_ '()))
              (_g984910417_ _g985310420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g984910417_ _g985310420_))
                                        (_g984910417_ _g985310420_))))
                                (_g984910417_ _g985310420_)))))
                    (_g984810611_ _form9847_))))
               (_dispatch-case-e9160_
                (lambda (_hd9308_ _body9309_)
                  (let* ((_form9311_ (cons _hd9308_ (cons _body9309_ '())))
                         (_g93159439_
                          (lambda (_g93169436_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g93169436_)))
                         (_g93149557_
                          (lambda (_g93169442_)
                            (if (gx#stx-pair? _g93169442_)
                                (let ((_e94059444_ (gx#stx-e _g93169442_)))
                                  (let ((_hd94069447_ (##car _e94059444_))
                                        (_tl94079449_ (##cdr _e94059444_)))
                                    (if (gx#stx-pair? _tl94079449_)
                                        (let ((_e94089452_
                                               (gx#stx-e _tl94079449_)))
                                          (let ((_hd94099455_
                                                 (##car _e94089452_))
                                                (_tl94109457_
                                                 (##cdr _e94089452_)))
                                            (if (gx#stx-pair? _hd94099455_)
                                                (let ((_e94119460_
                                                       (gx#stx-e
                                                        _hd94099455_)))
                                                  (let ((_hd94129463_
                                                         (##car _e94119460_))
                                                        (_tl94139465_
                                                         (##cdr _e94119460_)))
                                                    (if (gx#identifier?
                                                         _hd94129463_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd94129463_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94139465_)
                        (let ((_e94149468_ (gx#stx-e _tl94139465_)))
                          (let ((_hd94159471_ (##car _e94149468_))
                                (_tl94169473_ (##cdr _e94149468_)))
                            (if (gx#stx-pair? _hd94159471_)
                                (let ((_e94179476_ (gx#stx-e _hd94159471_)))
                                  (let ((_hd94189479_ (##car _e94179476_))
                                        (_tl94199481_ (##cdr _e94179476_)))
                                    (if (gx#identifier? _hd94189479_)
                                        (if (gx#stx-eq? '%#ref _hd94189479_)
                                            (if (gx#stx-pair? _tl94199481_)
                                                (let ((_e94209484_
                                                       (gx#stx-e
                                                        _tl94199481_)))
                                                  (let ((_hd94219487_
                                                         (##car _e94209484_))
                                                        (_tl94229489_
                                                         (##cdr _e94209484_)))
                                                    (if (gx#stx-null?
                                                         _tl94229489_)
                                                        (if (gx#stx-pair?
                                                             _tl94169473_)
                                                            (let ((_e94239492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl94169473_)))
                      (let ((_hd94249495_ (##car _e94239492_))
                            (_tl94259497_ (##cdr _e94239492_)))
                        (if (gx#stx-pair? _hd94249495_)
                            (let ((_e94269500_ (gx#stx-e _hd94249495_)))
                              (let ((_hd94279503_ (##car _e94269500_))
                                    (_tl94289505_ (##cdr _e94269500_)))
                                (if (gx#identifier? _hd94279503_)
                                    (if (gx#stx-eq? '%#ref _hd94279503_)
                                        (if (gx#stx-pair? _tl94289505_)
                                            (let ((_e94299508_
                                                   (gx#stx-e _tl94289505_)))
                                              (let ((_hd94309511_
                                                     (##car _e94299508_))
                                                    (_tl94319513_
                                                     (##cdr _e94299508_)))
                                                (if (gx#stx-null? _tl94319513_)
                                                    (if (gx#stx-pair?
                                                         _tl94259497_)
                                                        (let ((_e94329516_
                                                               (gx#stx-e
                                                                _tl94259497_)))
                                                          (let ((_hd94339519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e94329516_))
                        (_tl94349521_ (##cdr _e94329516_)))
                    (if (gx#stx-null? _tl94349521_)
                        (if (gx#stx-null? _tl94109457_)
                            ((lambda (_L9524_ _L9525_ _L9526_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9524_ '()))))
                             _hd94309511_
                             _hd94219487_
                             _hd94069447_)
                            (_g93159439_ _g93169442_))
                        (_g93159439_ _g93169442_))))
                (_g93159439_ _g93169442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93159439_
                                                     _g93169442_))))
                                            (_g93159439_ _g93169442_))
                                        (_g93159439_ _g93169442_))
                                    (_g93159439_ _g93169442_))))
                            (_g93159439_ _g93169442_))))
                    (_g93159439_ _g93169442_))
                (_g93159439_ _g93169442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93159439_ _g93169442_))
                                            (_g93159439_ _g93169442_))
                                        (_g93159439_ _g93169442_))))
                                (_g93159439_ _g93169442_))))
                        (_g93159439_ _g93169442_))
                    (_g93159439_ _g93169442_))
                (_g93159439_ _g93169442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93159439_ _g93169442_))))
                                        (_g93159439_ _g93169442_))))
                                (_g93159439_ _g93169442_))))
                         (_g93139693_
                          (lambda (_g93169560_)
                            (if (gx#stx-pair? _g93169560_)
                                (let ((_e93669562_ (gx#stx-e _g93169560_)))
                                  (let ((_hd93679565_ (##car _e93669562_))
                                        (_tl93689567_ (##cdr _e93669562_)))
                                    (if (gx#stx-pair/null? _hd93679565_)
                                        (if (fx>= (gx#stx-length _hd93679565_)
                                                  '0)
                                            (let ((_g12364_
                                                   (gx#syntax-split-splice
                                                    _hd93679565_
                                                    '0)))
                                              (begin
                                                (let ((_g12365_
                                                       (values-count
                                                        _g12364_)))
                                                  (if (not (fx= _g12365_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12365_)))
                                                (let ((_target93699570_
                                                       (values-ref _g12364_ 0))
                                                      (_tl93719572_
                                                       (values-ref
                                                        _g12364_
                                                        1)))
                                                  (letrec ((_loop93729575_
                                                            (lambda (_hd93709578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg93769580_)
                      (if (gx#stx-pair? _hd93709578_)
                          (let ((_e93739583_ (gx#stx-e _hd93709578_)))
                            (let ((_lp-hd93749586_ (##car _e93739583_))
                                  (_lp-tl93759588_ (##cdr _e93739583_)))
                              (_loop93729575_
                               _lp-tl93759588_
                               (cons _lp-hd93749586_ _arg93769580_))))
                          (let ((_arg93779591_ (reverse _arg93769580_)))
                            (if (gx#stx-pair? _tl93689567_)
                                (let ((_e93789594_ (gx#stx-e _tl93689567_)))
                                  (let ((_hd93799597_ (##car _e93789594_))
                                        (_tl93809599_ (##cdr _e93789594_)))
                                    (if (gx#stx-pair? _hd93799597_)
                                        (let ((_e93819602_
                                               (gx#stx-e _hd93799597_)))
                                          (let ((_hd93829605_
                                                 (##car _e93819602_))
                                                (_tl93839607_
                                                 (##cdr _e93819602_)))
                                            (if (gx#identifier? _hd93829605_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd93829605_)
                                                    (if (gx#stx-pair?
                                                         _tl93839607_)
                                                        (let ((_e93849610_
                                                               (gx#stx-e
                                                                _tl93839607_)))
                                                          (let ((_hd93859613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e93849610_))
                        (_tl93869615_ (##cdr _e93849610_)))
                    (if (gx#stx-pair? _hd93859613_)
                        (let ((_e93879618_ (gx#stx-e _hd93859613_)))
                          (let ((_hd93889621_ (##car _e93879618_))
                                (_tl93899623_ (##cdr _e93879618_)))
                            (if (gx#identifier? _hd93889621_)
                                (if (gx#stx-eq? '%#ref _hd93889621_)
                                    (if (gx#stx-pair? _tl93899623_)
                                        (let ((_e93909626_
                                               (gx#stx-e _tl93899623_)))
                                          (let ((_hd93919629_
                                                 (##car _e93909626_))
                                                (_tl93929631_
                                                 (##cdr _e93909626_)))
                                            (if (gx#stx-null? _tl93929631_)
                                                (if (gx#stx-pair? _tl93869615_)
                                                    (let ((_e93939634_
                                                           (gx#stx-e
                                                            _tl93869615_)))
                                                      (let ((_hd93949637_
                                                             (##car _e93939634_))
                                                            (_tl93959639_
                                                             (##cdr _e93939634_)))
                                                        (if (gx#stx-pair?
                                                             _hd93949637_)
                                                            (let ((_e93969642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd93949637_)))
                      (let ((_hd93979645_ (##car _e93969642_))
                            (_tl93989647_ (##cdr _e93969642_)))
                        (if (gx#identifier? _hd93979645_)
                            (if (gx#stx-eq? '%#ref _hd93979645_)
                                (if (gx#stx-pair? _tl93989647_)
                                    (let ((_e93999650_
                                           (gx#stx-e _tl93989647_)))
                                      (let ((_hd94009653_ (##car _e93999650_))
                                            (_tl94019655_ (##cdr _e93999650_)))
                                        (if (gx#stx-null? _tl94019655_)
                                            (if (gx#stx-null? _tl93809599_)
                                                ((lambda (_L9658_
                                                          _L9659_
                                                          _L9660_
                                                          _L9661_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9658_ '()))))
                                                 _hd94009653_
                                                 _hd93919629_
                                                 _tl93719572_
                                                 _arg93779591_)
                                                (_g93149557_ _g93169560_))
                                            (_g93149557_ _g93169560_))))
                                    (_g93149557_ _g93169560_))
                                (_g93149557_ _g93169560_))
                            (_g93149557_ _g93169560_))))
                    (_g93149557_ _g93169560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93149557_ _g93169560_))
                                                (_g93149557_ _g93169560_))))
                                        (_g93149557_ _g93169560_))
                                    (_g93149557_ _g93169560_))
                                (_g93149557_ _g93169560_))))
                        (_g93149557_ _g93169560_))))
                (_g93149557_ _g93169560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93149557_ _g93169560_))
                                                (_g93149557_ _g93169560_))))
                                        (_g93149557_ _g93169560_))))
                                (_g93149557_ _g93169560_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop93729575_
                                                     _target93699570_
                                                     '())))))
                                            (_g93149557_ _g93169560_))
                                        (_g93149557_ _g93169560_))))
                                (_g93149557_ _g93169560_))))
                         (_g93129841_
                          (lambda (_g93169696_)
                            (if (gx#stx-pair? _g93169696_)
                                (let ((_e93209698_ (gx#stx-e _g93169696_)))
                                  (let ((_hd93219701_ (##car _e93209698_))
                                        (_tl93229703_ (##cdr _e93209698_)))
                                    (if (gx#stx-pair/null? _hd93219701_)
                                        (if (fx>= (gx#stx-length _hd93219701_)
                                                  '0)
                                            (let ((_g12366_
                                                   (gx#syntax-split-splice
                                                    _hd93219701_
                                                    '0)))
                                              (begin
                                                (let ((_g12367_
                                                       (values-count
                                                        _g12366_)))
                                                  (if (not (fx= _g12367_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12367_)))
                                                (let ((_target93239706_
                                                       (values-ref _g12366_ 0))
                                                      (_tl93259708_
                                                       (values-ref
                                                        _g12366_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl93259708_)
                                                      (letrec ((_loop93269711_
                                                                (lambda (_hd93249714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg93309716_)
                          (if (gx#stx-pair? _hd93249714_)
                              (let ((_e93279719_ (gx#stx-e _hd93249714_)))
                                (let ((_lp-hd93289722_ (##car _e93279719_))
                                      (_lp-tl93299724_ (##cdr _e93279719_)))
                                  (_loop93269711_
                                   _lp-tl93299724_
                                   (cons _lp-hd93289722_ _arg93309716_))))
                              (let ((_arg93319727_ (reverse _arg93309716_)))
                                (if (gx#stx-pair? _tl93229703_)
                                    (let ((_e93329730_
                                           (gx#stx-e _tl93229703_)))
                                      (let ((_hd93339733_ (##car _e93329730_))
                                            (_tl93349735_ (##cdr _e93329730_)))
                                        (if (gx#stx-pair? _hd93339733_)
                                            (let ((_e93359738_
                                                   (gx#stx-e _hd93339733_)))
                                              (let ((_hd93369741_
                                                     (##car _e93359738_))
                                                    (_tl93379743_
                                                     (##cdr _e93359738_)))
                                                (if (gx#identifier?
                                                     _hd93369741_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd93369741_)
                                                        (if (gx#stx-pair?
                                                             _tl93379743_)
                                                            (let ((_e93389746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl93379743_)))
                      (let ((_hd93399749_ (##car _e93389746_))
                            (_tl93409751_ (##cdr _e93389746_)))
                        (if (gx#stx-pair? _hd93399749_)
                            (let ((_e93419754_ (gx#stx-e _hd93399749_)))
                              (let ((_hd93429757_ (##car _e93419754_))
                                    (_tl93439759_ (##cdr _e93419754_)))
                                (if (gx#identifier? _hd93429757_)
                                    (if (gx#stx-eq? '%#ref _hd93429757_)
                                        (if (gx#stx-pair? _tl93439759_)
                                            (let ((_e93449762_
                                                   (gx#stx-e _tl93439759_)))
                                              (let ((_hd93459765_
                                                     (##car _e93449762_))
                                                    (_tl93469767_
                                                     (##cdr _e93449762_)))
                                                (if (gx#stx-null? _tl93469767_)
                                                    (if (gx#stx-pair/null?
                                                         _tl93409751_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl93409751_)
                          '0)
                    (let ((_g12368_ (gx#syntax-split-splice _tl93409751_ '0)))
                      (begin
                        (let ((_g12369_ (values-count _g12368_)))
                          (if (not (fx= _g12369_ 2))
                              (error "Context expects 2 values" _g12369_)))
                        (let ((_target93479770_ (values-ref _g12368_ 0))
                              (_tl93499772_ (values-ref _g12368_ 1)))
                          (if (gx#stx-null? _tl93499772_)
                              (letrec ((_loop93509775_
                                        (lambda (_hd93489778_ _xarg93549780_)
                                          (if (gx#stx-pair? _hd93489778_)
                                              (let ((_e93519783_
                                                     (gx#stx-e _hd93489778_)))
                                                (let ((_lp-hd93529786_
                                                       (##car _e93519783_))
                                                      (_lp-tl93539788_
                                                       (##cdr _e93519783_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd93529786_)
                                                      (let ((_e93569791_
                                                             (gx#stx-e
                                                              _lp-hd93529786_)))
                                                        (let ((_hd93579794_
                                                               (##car _e93569791_))
                                                              (_tl93589796_
                                                               (##cdr _e93569791_)))
                                                          (if (gx#identifier?
                                                               _hd93579794_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd93579794_)
                          (if (gx#stx-pair? _tl93589796_)
                              (let ((_e93599799_ (gx#stx-e _tl93589796_)))
                                (let ((_hd93609802_ (##car _e93599799_))
                                      (_tl93619804_ (##cdr _e93599799_)))
                                  (if (gx#stx-null? _tl93619804_)
                                      (_loop93509775_
                                       _lp-tl93539788_
                                       (cons _hd93609802_ _xarg93549780_))
                                      (_g93139693_ _g93169696_))))
                              (_g93139693_ _g93169696_))
                          (_g93139693_ _g93169696_))
                      (_g93139693_ _g93169696_))))
              (_g93139693_ _g93169696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg93559807_
                                                     (reverse _xarg93549780_)))
                                                (if (gx#stx-null? _tl93349735_)
                                                    ((lambda (_L9810_
                                                              _L9811_
                                                              _L9812_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg93559807_
                                                     _hd93459765_
                                                     _arg93319727_)
                                                    (_g93139693_
                                                     _g93169696_)))))))
                                (_loop93509775_ _target93479770_ '()))
                              (_g93139693_ _g93169696_)))))
                    (_g93139693_ _g93169696_))
                (_g93139693_ _g93169696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93139693_
                                                     _g93169696_))))
                                            (_g93139693_ _g93169696_))
                                        (_g93139693_ _g93169696_))
                                    (_g93139693_ _g93169696_))))
                            (_g93139693_ _g93169696_))))
                    (_g93139693_ _g93169696_))
                (_g93139693_ _g93169696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93139693_
                                                     _g93169696_))))
                                            (_g93139693_ _g93169696_))))
                                    (_g93139693_ _g93169696_)))))))
                (_loop93269711_ _target93239706_ '()))
              (_g93139693_ _g93169696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g93139693_ _g93169696_))
                                        (_g93139693_ _g93169696_))))
                                (_g93139693_ _g93169696_)))))
                    (_g93129841_ _form9311_))))
               (_generate19161_
                (lambda (_args9296_ _arglen9297_ _hd9298_ _body9299_)
                  (let* ((_len9301_ (gx#stx-length _hd9298_))
                         (_condition9303_
                          (if (gx#stx-list? _hd9298_)
                              (cons 'fx=
                                    (cons _arglen9297_ (cons _len9301_ '())))
                              (if (> _len9301_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9297_
                                              (cons _len9301_ '())))
                                  '#t)))
                         (_dispatch9305_
                          (if (_dispatch-case?9159_ _hd9298_ _body9299_)
                              (_dispatch-case-e9160_ _hd9298_ _body9299_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9298_)
                                          (cons (gxc#compile-e _body9299_)
                                                '()))))))
                    (cons _condition9303_
                          (cons (cons 'apply
                                      (cons _dispatch9305_
                                            (cons _args9296_ '())))
                                '()))))))
        (let* ((_g91639191_
                (lambda (_g91649188_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g91649188_)))
               (_g91629293_
                (lambda (_g91649194_)
                  (if (gx#stx-pair? _g91649194_)
                      (let ((_e91679196_ (gx#stx-e _g91649194_)))
                        (let ((_hd91689199_ (##car _e91679196_))
                              (_tl91699201_ (##cdr _e91679196_)))
                          (if (gx#stx-pair/null? _tl91699201_)
                              (if (fx>= (gx#stx-length _tl91699201_) '0)
                                  (let ((_g12370_
                                         (gx#syntax-split-splice
                                          _tl91699201_
                                          '0)))
                                    (begin
                                      (let ((_g12371_ (values-count _g12370_)))
                                        (if (not (fx= _g12371_ 2))
                                            (error "Context expects 2 values"
                                                   _g12371_)))
                                      (let ((_target91709204_
                                             (values-ref _g12370_ 0))
                                            (_tl91729206_
                                             (values-ref _g12370_ 1)))
                                        (if (gx#stx-null? _tl91729206_)
                                            (letrec ((_loop91739209_
                                                      (lambda (_hd91719212_
                                                               _body91779214_
                                                               _hd91789216_)
                                                        (if (gx#stx-pair?
                                                             _hd91719212_)
                                                            (let ((_e91749219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91719212_)))
                      (let ((_lp-hd91759222_ (##car _e91749219_))
                            (_lp-tl91769224_ (##cdr _e91749219_)))
                        (if (gx#stx-pair? _lp-hd91759222_)
                            (let ((_e91819227_ (gx#stx-e _lp-hd91759222_)))
                              (let ((_hd91829230_ (##car _e91819227_))
                                    (_tl91839232_ (##cdr _e91819227_)))
                                (if (gx#stx-pair? _tl91839232_)
                                    (let ((_e91849235_
                                           (gx#stx-e _tl91839232_)))
                                      (let ((_hd91859238_ (##car _e91849235_))
                                            (_tl91869240_ (##cdr _e91849235_)))
                                        (if (gx#stx-null? _tl91869240_)
                                            (_loop91739209_
                                             _lp-tl91769224_
                                             (cons _hd91859238_ _body91779214_)
                                             (cons _hd91829230_ _hd91789216_))
                                            (_g91639191_ _g91649194_))))
                                    (_g91639191_ _g91649194_))))
                            (_g91639191_ _g91649194_))))
                    (let ((_body91799243_ (reverse _body91779214_))
                          (_hd91809245_ (reverse _hd91789216_)))
                      ((lambda (_L9248_ _L9249_)
                         (let ((_args9268_ (gxc#generate-runtime-temporary__0))
                               (_arglen9269_
                                (gxc#generate-runtime-temporary__0))
                               (_name9270_
                                (let ((_$e9265_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx9156_
                                        '#f)))
                                  (if _$e9265_
                                      _$e9265_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9268_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9268_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9268_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g92719274_ _g92729276_)
                                            (_generate19161_
                                             _args9268_
                                             _arglen9269_
                                             _g92719274_
                                             _g92729276_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g92789281_
                                                             _g92799283_)
                                                      (cons _g92789281_
                                                            _g92799283_))
                                                    '()
                                                    _L9249_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g92859288_
                                                             _g92869290_)
                                                      (cons _g92859288_
                                                            _g92869290_))
                                                    '()
                                                    _L9248_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body91799243_
                       _hd91809245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop91739209_
                                               _target91709204_
                                               '()
                                               '()))
                                            (_g91639191_ _g91649194_)))))
                                  (_g91639191_ _g91649194_))
                              (_g91639191_ _g91649194_))))
                      (_g91639191_ _g91649194_)))))
          (_g91629293_ _stx9156_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8221_ _compiled-body?8222_)
        (letrec ((_generate-simple8224_
                  (lambda (_hd9143_ _body9144_)
                    (_coalesce-let*8225_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9143_
                      _body9144_
                      _compiled-body?8222_))))
                 (_coalesce-let*8225_
                  (lambda (_code8527_)
                    (let* ((_g85328667_
                            (lambda (_g85338664_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g85338664_)))
                           (_g85318674_
                            (lambda (_g85338670_) ((lambda () _code8527_))))
                           (_g85308844_
                            (lambda (_g85338677_)
                              (if (gx#stx-pair? _g85338677_)
                                  (let ((_e86218679_ (gx#stx-e _g85338677_)))
                                    (let ((_hd86228682_ (##car _e86218679_))
                                          (_tl86238684_ (##cdr _e86218679_)))
                                      (if (gx#identifier? _hd86228682_)
                                          (if (gx#stx-eq? 'let _hd86228682_)
                                              (if (gx#stx-pair? _tl86238684_)
                                                  (let ((_e86248687_
                                                         (gx#stx-e
                                                          _tl86238684_)))
                                                    (let ((_hd86258690_
                                                           (##car _e86248687_))
                                                          (_tl86268692_
                                                           (##cdr _e86248687_)))
                                                      (if (gx#stx-pair?
                                                           _hd86258690_)
                                                          (let ((_e86278695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd86258690_)))
                    (let ((_hd86288698_ (##car _e86278695_))
                          (_tl86298700_ (##cdr _e86278695_)))
                      (if (gx#stx-pair? _hd86288698_)
                          (let ((_e86308703_ (gx#stx-e _hd86288698_)))
                            (let ((_hd86318706_ (##car _e86308703_))
                                  (_tl86328708_ (##cdr _e86308703_)))
                              (if (gx#stx-pair? _tl86328708_)
                                  (let ((_e86338711_ (gx#stx-e _tl86328708_)))
                                    (let ((_hd86348714_ (##car _e86338711_))
                                          (_tl86358716_ (##cdr _e86338711_)))
                                      (if (gx#stx-null? _tl86358716_)
                                          (if (gx#stx-null? _tl86298700_)
                                              (if (gx#stx-pair? _tl86268692_)
                                                  (let ((_e86368719_
                                                         (gx#stx-e
                                                          _tl86268692_)))
                                                    (let ((_hd86378722_
                                                           (##car _e86368719_))
                                                          (_tl86388724_
                                                           (##cdr _e86368719_)))
                                                      (if (gx#stx-pair?
                                                           _hd86378722_)
                                                          (let ((_e86398727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd86378722_)))
                    (let ((_hd86408730_ (##car _e86398727_))
                          (_tl86418732_ (##cdr _e86398727_)))
                      (if (gx#identifier? _hd86408730_)
                          (if (gx#stx-eq? 'let* _hd86408730_)
                              (if (gx#stx-pair? _tl86418732_)
                                  (let ((_e86428735_ (gx#stx-e _tl86418732_)))
                                    (let ((_hd86438738_ (##car _e86428735_))
                                          (_tl86448740_ (##cdr _e86428735_)))
                                      (if (gx#stx-pair/null? _hd86438738_)
                                          (if (fx>= (gx#stx-length
                                                     _hd86438738_)
                                                    '0)
                                              (let ((_g12372_
                                                     (gx#syntax-split-splice
                                                      _hd86438738_
                                                      '0)))
                                                (begin
                                                  (let ((_g12373_
                                                         (values-count
                                                          _g12372_)))
                                                    (if (not (fx= _g12373_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12373_)))
                                                  (let ((_target86458743_
                                                         (values-ref
                                                          _g12372_
                                                          0))
                                                        (_tl86478745_
                                                         (values-ref
                                                          _g12372_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl86478745_)
                                                        (letrec ((_loop86488748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd86468751_ _bind86528753_)
                            (if (gx#stx-pair? _hd86468751_)
                                (let ((_e86498756_ (gx#stx-e _hd86468751_)))
                                  (let ((_lp-hd86508759_ (##car _e86498756_))
                                        (_lp-tl86518761_ (##cdr _e86498756_)))
                                    (_loop86488748_
                                     _lp-tl86518761_
                                     (cons _lp-hd86508759_ _bind86528753_))))
                                (let ((_bind86538764_
                                       (reverse _bind86528753_)))
                                  (if (gx#stx-pair/null? _tl86448740_)
                                      (if (fx>= (gx#stx-length _tl86448740_)
                                                '0)
                                          (let ((_g12374_
                                                 (gx#syntax-split-splice
                                                  _tl86448740_
                                                  '0)))
                                            (begin
                                              (let ((_g12375_
                                                     (values-count _g12374_)))
                                                (if (not (fx= _g12375_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12375_)))
                                              (let ((_target86548767_
                                                     (values-ref _g12374_ 0))
                                                    (_tl86568769_
                                                     (values-ref _g12374_ 1)))
                                                (if (gx#stx-null? _tl86568769_)
                                                    (letrec ((_loop86578772_
                                                              (lambda (_hd86558775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body86618777_)
                        (if (gx#stx-pair? _hd86558775_)
                            (let ((_e86588780_ (gx#stx-e _hd86558775_)))
                              (let ((_lp-hd86598783_ (##car _e86588780_))
                                    (_lp-tl86608785_ (##cdr _e86588780_)))
                                (_loop86578772_
                                 _lp-tl86608785_
                                 (cons _lp-hd86598783_ _body86618777_))))
                            (let ((_body86628788_ (reverse _body86618777_)))
                              (if (gx#stx-null? _tl86388724_)
                                  ((lambda (_L8791_ _L8792_ _L8793_ _L8794_)
                                     (cons 'let*
                                           (cons (cons (cons _L8794_
                                                             (cons _L8793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g88298832_ _g88308834_)
                           (cons _g88298832_ _g88308834_))
                         '()
                         _L8792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g88368839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g88378841_)
                     (cons _g88368839_ _g88378841_))
                   '()
                   _L8791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body86628788_
                                   _bind86538764_
                                   _hd86348714_
                                   _hd86318706_)
                                  (_g85318674_ _g85338677_)))))))
              (_loop86578772_ _target86548767_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g85318674_
                                                     _g85338677_)))))
                                          (_g85318674_ _g85338677_))
                                      (_g85318674_ _g85338677_)))))))
                  (_loop86488748_ _target86458743_ '()))
                (_g85318674_ _g85338677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85318674_ _g85338677_))
                                          (_g85318674_ _g85338677_))))
                                  (_g85318674_ _g85338677_))
                              (_g85318674_ _g85338677_))
                          (_g85318674_ _g85338677_))))
                  (_g85318674_ _g85338677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85318674_ _g85338677_))
                                              (_g85318674_ _g85338677_))
                                          (_g85318674_ _g85338677_))))
                                  (_g85318674_ _g85338677_))))
                          (_g85318674_ _g85338677_))))
                  (_g85318674_ _g85338677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85318674_ _g85338677_))
                                              (_g85318674_ _g85338677_))
                                          (_g85318674_ _g85338677_))))
                                  (_g85318674_ _g85338677_))))
                           (_g85299009_
                            (lambda (_g85338847_)
                              (if (gx#stx-pair? _g85338847_)
                                  (let ((_e85758849_ (gx#stx-e _g85338847_)))
                                    (let ((_hd85768852_ (##car _e85758849_))
                                          (_tl85778854_ (##cdr _e85758849_)))
                                      (if (gx#identifier? _hd85768852_)
                                          (if (gx#stx-eq? 'let _hd85768852_)
                                              (if (gx#stx-pair? _tl85778854_)
                                                  (let ((_e85788857_
                                                         (gx#stx-e
                                                          _tl85778854_)))
                                                    (let ((_hd85798860_
                                                           (##car _e85788857_))
                                                          (_tl85808862_
                                                           (##cdr _e85788857_)))
                                                      (if (gx#stx-pair?
                                                           _hd85798860_)
                                                          (let ((_e85818865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85798860_)))
                    (let ((_hd85828868_ (##car _e85818865_))
                          (_tl85838870_ (##cdr _e85818865_)))
                      (if (gx#stx-pair? _hd85828868_)
                          (let ((_e85848873_ (gx#stx-e _hd85828868_)))
                            (let ((_hd85858876_ (##car _e85848873_))
                                  (_tl85868878_ (##cdr _e85848873_)))
                              (if (gx#stx-pair? _tl85868878_)
                                  (let ((_e85878881_ (gx#stx-e _tl85868878_)))
                                    (let ((_hd85888884_ (##car _e85878881_))
                                          (_tl85898886_ (##cdr _e85878881_)))
                                      (if (gx#stx-null? _tl85898886_)
                                          (if (gx#stx-null? _tl85838870_)
                                              (if (gx#stx-pair? _tl85808862_)
                                                  (let ((_e85908889_
                                                         (gx#stx-e
                                                          _tl85808862_)))
                                                    (let ((_hd85918892_
                                                           (##car _e85908889_))
                                                          (_tl85928894_
                                                           (##cdr _e85908889_)))
                                                      (if (gx#stx-pair?
                                                           _hd85918892_)
                                                          (let ((_e85938897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85918892_)))
                    (let ((_hd85948900_ (##car _e85938897_))
                          (_tl85958902_ (##cdr _e85938897_)))
                      (if (gx#identifier? _hd85948900_)
                          (if (gx#stx-eq? 'let _hd85948900_)
                              (if (gx#stx-pair? _tl85958902_)
                                  (let ((_e85968905_ (gx#stx-e _tl85958902_)))
                                    (let ((_hd85978908_ (##car _e85968905_))
                                          (_tl85988910_ (##cdr _e85968905_)))
                                      (if (gx#stx-pair? _hd85978908_)
                                          (let ((_e85998913_
                                                 (gx#stx-e _hd85978908_)))
                                            (let ((_hd86008916_
                                                   (##car _e85998913_))
                                                  (_tl86018918_
                                                   (##cdr _e85998913_)))
                                              (if (gx#stx-pair? _hd86008916_)
                                                  (let ((_e86028921_
                                                         (gx#stx-e
                                                          _hd86008916_)))
                                                    (let ((_hd86038924_
                                                           (##car _e86028921_))
                                                          (_tl86048926_
                                                           (##cdr _e86028921_)))
                                                      (if (gx#stx-pair?
                                                           _tl86048926_)
                                                          (let ((_e86058929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl86048926_)))
                    (let ((_hd86068932_ (##car _e86058929_))
                          (_tl86078934_ (##cdr _e86058929_)))
                      (if (gx#stx-null? _tl86078934_)
                          (if (gx#stx-null? _tl86018918_)
                              (if (gx#stx-pair/null? _tl85988910_)
                                  (if (fx>= (gx#stx-length _tl85988910_) '0)
                                      (let ((_g12376_
                                             (gx#syntax-split-splice
                                              _tl85988910_
                                              '0)))
                                        (begin
                                          (let ((_g12377_
                                                 (values-count _g12376_)))
                                            (if (not (fx= _g12377_ 2))
                                                (error "Context expects 2 values"
                                                       _g12377_)))
                                          (let ((_target86088937_
                                                 (values-ref _g12376_ 0))
                                                (_tl86108939_
                                                 (values-ref _g12376_ 1)))
                                            (if (gx#stx-null? _tl86108939_)
                                                (letrec ((_loop86118942_
                                                          (lambda (_hd86098945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body86158947_)
                    (if (gx#stx-pair? _hd86098945_)
                        (let ((_e86128950_ (gx#stx-e _hd86098945_)))
                          (let ((_lp-hd86138953_ (##car _e86128950_))
                                (_lp-tl86148955_ (##cdr _e86128950_)))
                            (_loop86118942_
                             _lp-tl86148955_
                             (cons _lp-hd86138953_ _body86158947_))))
                        (let ((_body86168958_ (reverse _body86158947_)))
                          (if (gx#stx-null? _tl85928894_)
                              ((lambda (_L8961_
                                        _L8962_
                                        _L8963_
                                        _L8964_
                                        _L8965_)
                                 (cons 'let*
                                       (cons (cons (cons _L8965_
                                                         (cons _L8964_ '()))
                                                   (cons (cons _L8963_
                                                               (cons _L8962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g90019004_
                                                                _g90029006_)
                                                         (cons _g90019004_
                                                               _g90029006_))
                                                       '()
                                                       _L8961_)))))
                               _body86168958_
                               _hd86068932_
                               _hd86038924_
                               _hd85888884_
                               _hd85858876_)
                              (_g85308844_ _g85338847_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop86118942_
                                                   _target86088937_
                                                   '()))
                                                (_g85308844_ _g85338847_)))))
                                      (_g85308844_ _g85338847_))
                                  (_g85308844_ _g85338847_))
                              (_g85308844_ _g85338847_))
                          (_g85308844_ _g85338847_))))
                  (_g85308844_ _g85338847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85308844_ _g85338847_))))
                                          (_g85308844_ _g85338847_))))
                                  (_g85308844_ _g85338847_))
                              (_g85308844_ _g85338847_))
                          (_g85308844_ _g85338847_))))
                  (_g85308844_ _g85338847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85308844_ _g85338847_))
                                              (_g85308844_ _g85338847_))
                                          (_g85308844_ _g85338847_))))
                                  (_g85308844_ _g85338847_))))
                          (_g85308844_ _g85338847_))))
                  (_g85308844_ _g85338847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85308844_ _g85338847_))
                                              (_g85308844_ _g85338847_))
                                          (_g85308844_ _g85338847_))))
                                  (_g85308844_ _g85338847_))))
                           (_g85289140_
                            (lambda (_g85339012_)
                              (if (gx#stx-pair? _g85339012_)
                                  (let ((_e85379014_ (gx#stx-e _g85339012_)))
                                    (let ((_hd85389017_ (##car _e85379014_))
                                          (_tl85399019_ (##cdr _e85379014_)))
                                      (if (gx#identifier? _hd85389017_)
                                          (if (gx#stx-eq? 'let _hd85389017_)
                                              (if (gx#stx-pair? _tl85399019_)
                                                  (let ((_e85409022_
                                                         (gx#stx-e
                                                          _tl85399019_)))
                                                    (let ((_hd85419025_
                                                           (##car _e85409022_))
                                                          (_tl85429027_
                                                           (##cdr _e85409022_)))
                                                      (if (gx#stx-pair?
                                                           _hd85419025_)
                                                          (let ((_e85439030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85419025_)))
                    (let ((_hd85449033_ (##car _e85439030_))
                          (_tl85459035_ (##cdr _e85439030_)))
                      (if (gx#stx-pair? _hd85449033_)
                          (let ((_e85469038_ (gx#stx-e _hd85449033_)))
                            (let ((_hd85479041_ (##car _e85469038_))
                                  (_tl85489043_ (##cdr _e85469038_)))
                              (if (gx#stx-pair? _tl85489043_)
                                  (let ((_e85499046_ (gx#stx-e _tl85489043_)))
                                    (let ((_hd85509049_ (##car _e85499046_))
                                          (_tl85519051_ (##cdr _e85499046_)))
                                      (if (gx#stx-null? _tl85519051_)
                                          (if (gx#stx-null? _tl85459035_)
                                              (if (gx#stx-pair? _tl85429027_)
                                                  (let ((_e85529054_
                                                         (gx#stx-e
                                                          _tl85429027_)))
                                                    (let ((_hd85539057_
                                                           (##car _e85529054_))
                                                          (_tl85549059_
                                                           (##cdr _e85529054_)))
                                                      (if (gx#stx-pair?
                                                           _hd85539057_)
                                                          (let ((_e85559062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85539057_)))
                    (let ((_hd85569065_ (##car _e85559062_))
                          (_tl85579067_ (##cdr _e85559062_)))
                      (if (gx#identifier? _hd85569065_)
                          (if (gx#stx-eq? 'let _hd85569065_)
                              (if (gx#stx-pair? _tl85579067_)
                                  (let ((_e85589070_ (gx#stx-e _tl85579067_)))
                                    (let ((_hd85599073_ (##car _e85589070_))
                                          (_tl85609075_ (##cdr _e85589070_)))
                                      (if (gx#stx-null? _hd85599073_)
                                          (if (gx#stx-pair/null? _tl85609075_)
                                              (if (fx>= (gx#stx-length
                                                         _tl85609075_)
                                                        '0)
                                                  (let ((_g12378_
                                                         (gx#syntax-split-splice
                                                          _tl85609075_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12379_
                                                             (values-count
                                                              _g12378_)))
                                                        (if (not (fx= _g12379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12379_)))
              (let ((_target85619078_ (values-ref _g12378_ 0))
                    (_tl85639080_ (values-ref _g12378_ 1)))
                (if (gx#stx-null? _tl85639080_)
                    (letrec ((_loop85649083_
                              (lambda (_hd85629086_ _body85689088_)
                                (if (gx#stx-pair? _hd85629086_)
                                    (let ((_e85659091_
                                           (gx#stx-e _hd85629086_)))
                                      (let ((_lp-hd85669094_
                                             (##car _e85659091_))
                                            (_lp-tl85679096_
                                             (##cdr _e85659091_)))
                                        (_loop85649083_
                                         _lp-tl85679096_
                                         (cons _lp-hd85669094_
                                               _body85689088_))))
                                    (let ((_body85699099_
                                           (reverse _body85689088_)))
                                      (if (gx#stx-null? _tl85549059_)
                                          ((lambda (_L9102_ _L9103_ _L9104_)
                                             (cons 'let
                                                   (cons (cons (cons _L9104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9103_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g91329135_ _g91339137_)
                             (cons _g91329135_ _g91339137_))
                           '()
                           _L9102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body85699099_
                                           _hd85509049_
                                           _hd85479041_)
                                          (_g85299009_ _g85339012_)))))))
                      (_loop85649083_ _target85619078_ '()))
                    (_g85299009_ _g85339012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85299009_ _g85339012_))
                                              (_g85299009_ _g85339012_))
                                          (_g85299009_ _g85339012_))))
                                  (_g85299009_ _g85339012_))
                              (_g85299009_ _g85339012_))
                          (_g85299009_ _g85339012_))))
                  (_g85299009_ _g85339012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85299009_ _g85339012_))
                                              (_g85299009_ _g85339012_))
                                          (_g85299009_ _g85339012_))))
                                  (_g85299009_ _g85339012_))))
                          (_g85299009_ _g85339012_))))
                  (_g85299009_ _g85339012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85299009_ _g85339012_))
                                              (_g85299009_ _g85339012_))
                                          (_g85299009_ _g85339012_))))
                                  (_g85299009_ _g85339012_)))))
                      (_g85289140_ _code8527_))))
                 (_generate-values8226_
                  (lambda (_hd8340_ _body8341_)
                    (let _lp8343_ ((_rest8345_ _hd8340_)
                                   (_bind8346_ '())
                                   (_check8347_ '())
                                   (_post8348_ '()))
                      (let* ((_g83518362_
                              (lambda (_g83528359_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g83528359_)))
                             (_g83508376_
                              (lambda (_g83528365_)
                                ((lambda ()
                                   (let* ((_body8369_
                                           (if _compiled-body?8222_
                                               _body8341_
                                               (gxc#compile-e _body8341_)))
                                          (_body8371_
                                           (_generate-values-post8227_
                                            _post8348_
                                            _body8369_))
                                          (_body8373_
                                           (_generate-values-check8228_
                                            _check8347_
                                            _body8371_)))
                                     (cons 'let
                                           (cons (reverse _bind8346_)
                                                 (cons _body8373_ '()))))))))
                             (_g83498524_
                              (lambda (_g83528379_)
                                (if (gx#stx-pair? _g83528379_)
                                    (let ((_e83558381_ (gx#stx-e _g83528379_)))
                                      (let ((_hd83568384_ (##car _e83558381_))
                                            (_tl83578386_ (##cdr _e83558381_)))
                                        ((lambda (_L8389_ _L8390_)
                                           (let* ((_g84058430_
                                                   (lambda (_g84068427_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g84068427_)))
                                                  (_g84048474_
                                                   (lambda (_g84068433_)
                                                     (if (gx#stx-pair?
                                                          _g84068433_)
                                                         (let ((_e84208435_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g84068433_)))
                   (let ((_hd84218438_ (##car _e84208435_))
                         (_tl84228440_ (##cdr _e84208435_)))
                     (if (gx#stx-pair? _tl84228440_)
                         (let ((_e84238443_ (gx#stx-e _tl84228440_)))
                           (let ((_hd84248446_ (##car _e84238443_))
                                 (_tl84258448_ (##cdr _e84238443_)))
                             (if (gx#stx-null? _tl84258448_)
                                 ((lambda (_L8451_ _L8452_)
                                    (let* ((_vals8465_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8467_ (gxc#compile-e _L8451_))
                                           (_check-values8469_
                                            (gxc#generate-runtime-check-values
                                             _vals8465_
                                             _L8452_))
                                           (_refs8471_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8465_
                                             _L8452_)))
                                      (_lp8343_
                                       _L8389_
                                       (cons (cons _vals8465_
                                                   (cons _expr8467_ '()))
                                             _bind8346_)
                                       (cons _check-values8469_ _check8347_)
                                       (cons _refs8471_ _post8348_))))
                                  _hd84248446_
                                  _hd84218438_)
                                 (_g84058430_ _g84068433_))))
                         (_g84058430_ _g84068433_))))
                 (_g84058430_ _g84068433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g84038521_
                                                   (lambda (_g84068477_)
                                                     (if (gx#stx-pair?
                                                          _g84068477_)
                                                         (let ((_e84098479_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g84068477_)))
                   (let ((_hd84108482_ (##car _e84098479_))
                         (_tl84118484_ (##cdr _e84098479_)))
                     (if (gx#stx-pair? _hd84108482_)
                         (let ((_e84128487_ (gx#stx-e _hd84108482_)))
                           (let ((_hd84138490_ (##car _e84128487_))
                                 (_tl84148492_ (##cdr _e84128487_)))
                             (if (gx#stx-null? _tl84148492_)
                                 (if (gx#stx-pair? _tl84118484_)
                                     (let ((_e84158495_
                                            (gx#stx-e _tl84118484_)))
                                       (let ((_hd84168498_ (##car _e84158495_))
                                             (_tl84178500_
                                              (##cdr _e84158495_)))
                                         (if (gx#stx-null? _tl84178500_)
                                             ((lambda (_L8503_ _L8504_)
                                                (let ((_eid8518_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8504_))
                                                      (_expr8519_
                                                       (gxc#compile-e
                                                        _L8503_)))
                                                  (_lp8343_
                                                   _L8389_
                                                   (cons (cons _eid8518_
                                                               (cons _expr8519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8346_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8347_
                                                   _post8348_)))
                                              _hd84168498_
                                              _hd84138490_)
                                             (_g84048474_ _g84068477_))))
                                     (_g84048474_ _g84068477_))
                                 (_g84048474_ _g84068477_))))
                         (_g84048474_ _g84068477_))))
                 (_g84048474_ _g84068477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g84038521_ _L8390_)))
                                         _tl83578386_
                                         _hd83568384_)))
                                    (_g83508376_ _g83528379_)))))
                        (_g83498524_ _rest8345_)))))
                 (_generate-values-post8227_
                  (lambda (_post8299_ _body8300_)
                    (let _lp8302_ ((_rest8304_ _post8299_)
                                   (_body8305_ _body8300_))
                      (let* ((_rest83068314_ _rest8304_)
                             (_E83098318_
                              (lambda ()
                                (error '"No clause matching" _rest83068314_)))
                             (_else83088322_ (lambda () _body8305_))
                             (_K83108328_
                              (lambda (_rest8325_ _bind8326_)
                                (_lp8302_
                                 _rest8325_
                                 (cons 'let
                                       (cons _bind8326_
                                             (cons _body8305_ '())))))))
                        (if (##pair? _rest83068314_)
                            (let ((_hd83118331_ (##car _rest83068314_))
                                  (_tl83128333_ (##cdr _rest83068314_)))
                              (let* ((_bind8336_ _hd83118331_)
                                     (_rest8338_ _tl83128333_))
                                (_K83108328_ _rest8338_ _bind8336_)))
                            (_else83088322_))))))
                 (_generate-values-check8228_
                  (lambda (_check8296_ _body8297_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8297_ '())
                                  (reverse _check8296_))))))
          (let* ((_g82308247_
                  (lambda (_g82318244_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82318244_)))
                 (_g82298293_
                  (lambda (_g82318250_)
                    (if (gx#stx-pair? _g82318250_)
                        (let ((_e82348252_ (gx#stx-e _g82318250_)))
                          (let ((_hd82358255_ (##car _e82348252_))
                                (_tl82368257_ (##cdr _e82348252_)))
                            (if (gx#stx-pair? _tl82368257_)
                                (let ((_e82378260_ (gx#stx-e _tl82368257_)))
                                  (let ((_hd82388263_ (##car _e82378260_))
                                        (_tl82398265_ (##cdr _e82378260_)))
                                    (if (gx#stx-pair? _tl82398265_)
                                        (let ((_e82408268_
                                               (gx#stx-e _tl82398265_)))
                                          (let ((_hd82418271_
                                                 (##car _e82408268_))
                                                (_tl82428273_
                                                 (##cdr _e82408268_)))
                                            (if (gx#stx-null? _tl82428273_)
                                                ((lambda (_L8276_ _L8277_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8277_)
                                                       (_generate-simple8224_
                                                        _L8277_
                                                        _L8276_)
                                                       (_generate-values8226_
                                                        _L8277_
                                                        _L8276_)))
                                                 _hd82418271_
                                                 _hd82388263_)
                                                (_g82308247_ _g82318250_))))
                                        (_g82308247_ _g82318250_))))
                                (_g82308247_ _g82318250_))))
                        (_g82308247_ _g82318250_)))))
            (_g82298293_ _stx8221_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9149_)
          (let ((_compiled-body?9151_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9149_
             _compiled-body?9151_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12381_
          (let ((_g12380_ (length _g12381_)))
            (cond ((fx= _g12380_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12381_))
                  ((fx= _g12380_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12381_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12381_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8120_ _hd8121_)
      (let _lp8123_ ((_rest8125_ _hd8121_) (_k8126_ '0) (_r8127_ '()))
        (let* ((_g81328148_
                (lambda (_g81338145_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g81338145_)))
               (_g81318155_
                (lambda (_g81338151_) ((lambda () (reverse _r8127_)))))
               (_g81308171_
                (lambda (_g81338158_)
                  ((lambda (_L8160_)
                     (if (gx#identifier? _L8160_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L8160_)
                                             (cons (cons 'values->list
                                                         (cons _vals8120_
                                                               (cons _k8126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r8127_)
                         (_g81318155_ _g81338158_)))
                   _g81338158_)))
               (_g81298195_
                (lambda (_g81338174_)
                  (if (gx#stx-pair? _g81338174_)
                      (let ((_e81408176_ (gx#stx-e _g81338174_)))
                        (let ((_hd81418179_ (##car _e81408176_))
                              (_tl81428181_ (##cdr _e81408176_)))
                          ((lambda (_L8184_ _L8185_)
                             (_lp8123_
                              _L8184_
                              (fx+ _k8126_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L8185_)
                                          (cons (cons 'values-ref
                                                      (cons _vals8120_
                                                            (cons _k8126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r8127_)))
                           _tl81428181_
                           _hd81418179_)))
                      (_g81308171_ _g81338174_))))
               (_g81288217_
                (lambda (_g81338198_)
                  (if (gx#stx-pair? _g81338198_)
                      (let ((_e81358200_ (gx#stx-e _g81338198_)))
                        (let ((_hd81368203_ (##car _e81358200_))
                              (_tl81378205_ (##cdr _e81358200_)))
                          (if (gx#stx-datum? _hd81368203_)
                              (if (equal? (gx#stx-e _hd81368203_) '#f)
                                  ((lambda (_L8208_)
                                     (_lp8123_
                                      _L8208_
                                      (fx+ _k8126_ '1)
                                      _r8127_))
                                   _tl81378205_)
                                  (_g81298195_ _g81338198_))
                              (_g81298195_ _g81338198_))))
                      (_g81298195_ _g81338198_)))))
          (_g81288217_ _rest8125_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx7800_ _compiled-body?7801_)
        (letrec ((_generate-simple7803_
                  (lambda (_hd8107_ _body8108_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8107_
                     _body8108_
                     _compiled-body?7801_)))
                 (_generate-values7804_
                  (lambda (_hd7884_ _body7885_)
                    (let _lp7887_ ((_rest7889_ _hd7884_)
                                   (_bind7890_ '())
                                   (_check7891_ '())
                                   (_post7892_ '()))
                      (let* ((_g78957906_
                              (lambda (_g78967903_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g78967903_)))
                             (_g78947920_
                              (lambda (_g78967909_)
                                ((lambda ()
                                   (let* ((_body7913_
                                           (if _compiled-body?7801_
                                               _body7885_
                                               (gxc#compile-e _body7885_)))
                                          (_body7915_
                                           (_generate-values-post7806_
                                            _post7892_
                                            _body7913_))
                                          (_body7917_
                                           (_generate-values-check7805_
                                            _check7891_
                                            _body7915_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7890_)
                                                 (cons _body7917_ '()))))))))
                             (_g78938104_
                              (lambda (_g78967923_)
                                (if (gx#stx-pair? _g78967923_)
                                    (let ((_e78997925_ (gx#stx-e _g78967923_)))
                                      (let ((_hd79007928_ (##car _e78997925_))
                                            (_tl79017930_ (##cdr _e78997925_)))
                                        ((lambda (_L7933_ _L7934_)
                                           (let* ((_g79497974_
                                                   (lambda (_g79507971_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g79507971_)))
                                                  (_g79488054_
                                                   (lambda (_g79507977_)
                                                     (if (gx#stx-pair?
                                                          _g79507977_)
                                                         (let ((_e79647979_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79507977_)))
                   (let ((_hd79657982_ (##car _e79647979_))
                         (_tl79667984_ (##cdr _e79647979_)))
                     (if (gx#stx-pair? _tl79667984_)
                         (let ((_e79677987_ (gx#stx-e _tl79667984_)))
                           (let ((_hd79687990_ (##car _e79677987_))
                                 (_tl79697992_ (##cdr _e79677987_)))
                             (if (gx#stx-null? _tl79697992_)
                                 ((lambda (_L7995_ _L7996_)
                                    (let* ((_vals8009_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8011_ (gxc#compile-e _L7995_))
                                           (_check-values8013_
                                            (gxc#generate-runtime-check-values
                                             _vals8009_
                                             _L7996_))
                                           (_refs8015_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8009_
                                             _L7996_)))
                                      (_lp7887_
                                       _L7933_
                                       (foldl1 cons
                                               (cons (cons _vals8009_
                                                           (cons _expr8011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7890_)
                                               (map (lambda (_e80178019_)
                                                      (let* ((_g80218030_
                                                              _e80178019_)
                                                             (_E80238034_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g80218030_)))
                     (_K80248039_
                      (lambda (_eid8037_)
                        (cons _eid8037_ (cons '#!void '())))))
                (if (##pair? _g80218030_)
                    (let ((_hd80258042_ (##car _g80218030_))
                          (_tl80268044_ (##cdr _g80218030_)))
                      (let ((_eid8047_ _hd80258042_))
                        (if (##pair? _tl80268044_)
                            (let ((_hd80278049_ (##car _tl80268044_))
                                  (_tl80288051_ (##cdr _tl80268044_)))
                              (if (##null? _tl80288051_)
                                  (_K80248039_ _eid8047_)
                                  (_E80238034_)))
                            (_E80238034_))))
                    (_E80238034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8015_))
                                       (cons _check-values8013_ _check7891_)
                                       (foldl1 cons _refs8015_ _post7892_))))
                                  _hd79687990_
                                  _hd79657982_)
                                 (_g79497974_ _g79507977_))))
                         (_g79497974_ _g79507977_))))
                 (_g79497974_ _g79507977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79478101_
                                                   (lambda (_g79508057_)
                                                     (if (gx#stx-pair?
                                                          _g79508057_)
                                                         (let ((_e79538059_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79508057_)))
                   (let ((_hd79548062_ (##car _e79538059_))
                         (_tl79558064_ (##cdr _e79538059_)))
                     (if (gx#stx-pair? _hd79548062_)
                         (let ((_e79568067_ (gx#stx-e _hd79548062_)))
                           (let ((_hd79578070_ (##car _e79568067_))
                                 (_tl79588072_ (##cdr _e79568067_)))
                             (if (gx#stx-null? _tl79588072_)
                                 (if (gx#stx-pair? _tl79558064_)
                                     (let ((_e79598075_
                                            (gx#stx-e _tl79558064_)))
                                       (let ((_hd79608078_ (##car _e79598075_))
                                             (_tl79618080_
                                              (##cdr _e79598075_)))
                                         (if (gx#stx-null? _tl79618080_)
                                             ((lambda (_L8083_ _L8084_)
                                                (let ((_eid8098_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8084_))
                                                      (_expr8099_
                                                       (gxc#compile-e
                                                        _L8083_)))
                                                  (_lp7887_
                                                   _L7933_
                                                   (cons (cons _eid8098_
                                                               (cons _expr8099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7890_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7891_
                                                   _post7892_)))
                                              _hd79608078_
                                              _hd79578070_)
                                             (_g79488054_ _g79508057_))))
                                     (_g79488054_ _g79508057_))
                                 (_g79488054_ _g79508057_))))
                         (_g79488054_ _g79508057_))))
                 (_g79488054_ _g79508057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g79478101_ _L7934_)))
                                         _tl79017930_
                                         _hd79007928_)))
                                    (_g78947920_ _g78967923_)))))
                        (_g78938104_ _rest7889_)))))
                 (_generate-values-check7805_
                  (lambda (_check7881_ _body7882_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7882_ '())
                                  (reverse _check7881_)))))
                 (_generate-values-post7806_
                  (lambda (_post7874_ _body7875_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7875_ '())
                                  (map (lambda (_g78767878_)
                                         (cons 'set! _g78767878_))
                                       (reverse _post7874_)))))))
          (let* ((_g78087825_
                  (lambda (_g78097822_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g78097822_)))
                 (_g78077871_
                  (lambda (_g78097828_)
                    (if (gx#stx-pair? _g78097828_)
                        (let ((_e78127830_ (gx#stx-e _g78097828_)))
                          (let ((_hd78137833_ (##car _e78127830_))
                                (_tl78147835_ (##cdr _e78127830_)))
                            (if (gx#stx-pair? _tl78147835_)
                                (let ((_e78157838_ (gx#stx-e _tl78147835_)))
                                  (let ((_hd78167841_ (##car _e78157838_))
                                        (_tl78177843_ (##cdr _e78157838_)))
                                    (if (gx#stx-pair? _tl78177843_)
                                        (let ((_e78187846_
                                               (gx#stx-e _tl78177843_)))
                                          (let ((_hd78197849_
                                                 (##car _e78187846_))
                                                (_tl78207851_
                                                 (##cdr _e78187846_)))
                                            (if (gx#stx-null? _tl78207851_)
                                                ((lambda (_L7854_ _L7855_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7855_)
                                                       (_generate-simple7803_
                                                        _L7855_
                                                        _L7854_)
                                                       (_generate-values7804_
                                                        _L7855_
                                                        _L7854_)))
                                                 _hd78197849_
                                                 _hd78167841_)
                                                (_g78087825_ _g78097828_))))
                                        (_g78087825_ _g78097828_))))
                                (_g78087825_ _g78097828_))))
                        (_g78087825_ _g78097828_)))))
            (_g78077871_ _stx7800_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8113_)
          (let ((_compiled-body?8115_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8113_
             _compiled-body?8115_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12383_
          (let ((_g12382_ (length _g12383_)))
            (cond ((fx= _g12382_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12383_))
                  ((fx= _g12382_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12383_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12383_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7382_)
      (letrec ((_generate-values7384_
                (lambda (_hd7627_ _body7628_)
                  (let _lp7630_ ((_rest7632_ _hd7627_) (_bind7633_ '()))
                    (let* ((_rest76347642_ _rest7632_)
                           (_E76377646_
                            (lambda ()
                              (error '"No clause matching" _rest76347642_)))
                           (_else76367653_
                            (lambda ()
                              (let ((_bind7650_ (reverse _bind7633_))
                                    (_body7651_ (gxc#compile-e _body7628_)))
                                (cons 'letrec*
                                      (cons _bind7650_
                                            (cons _body7651_ '()))))))
                           (_K76387787_
                            (lambda (_rest7656_ _hd-bind7657_)
                              (let* ((_g76607685_
                                      (lambda (_g76617682_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g76617682_)))
                                     (_g76597737_
                                      (lambda (_g76617688_)
                                        (if (gx#stx-pair? _g76617688_)
                                            (let ((_e76757690_
                                                   (gx#stx-e _g76617688_)))
                                              (let ((_hd76767693_
                                                     (##car _e76757690_))
                                                    (_tl76777695_
                                                     (##cdr _e76757690_)))
                                                (if (gx#stx-pair? _tl76777695_)
                                                    (let ((_e76787698_
                                                           (gx#stx-e
                                                            _tl76777695_)))
                                                      (let ((_hd76797701_
                                                             (##car _e76787698_))
                                                            (_tl76807703_
                                                             (##cdr _e76787698_)))
                                                        (if (gx#stx-null?
                                                             _tl76807703_)
                                                            ((lambda (_L7706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7707_)
                       (let* ((_vals7726_ (gxc#generate-runtime-temporary__0))
                              (_tmp7728_ (gxc#generate-runtime-temporary__0))
                              (_expr7730_ (gxc#compile-e _L7706_))
                              (_check-values7732_
                               (gxc#generate-runtime-check-values
                                _tmp7728_
                                _L7707_))
                              (_refs7734_
                               (gxc#generate-runtime-let-values-bind
                                _vals7726_
                                _L7707_)))
                         (_lp7630_
                          _rest7656_
                          (foldl1 cons
                                  (cons (cons _vals7726_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7730_ '()))
                              '())
                        (cons _check-values7732_ (cons _tmp7728_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7633_)
                                  _refs7734_))))
                     _hd76797701_
                     _hd76767693_)
                    (_g76607685_ _g76617688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76607685_
                                                     _g76617688_))))
                                            (_g76607685_ _g76617688_))))
                                     (_g76587784_
                                      (lambda (_g76617740_)
                                        (if (gx#stx-pair? _g76617740_)
                                            (let ((_e76647742_
                                                   (gx#stx-e _g76617740_)))
                                              (let ((_hd76657745_
                                                     (##car _e76647742_))
                                                    (_tl76667747_
                                                     (##cdr _e76647742_)))
                                                (if (gx#stx-pair? _hd76657745_)
                                                    (let ((_e76677750_
                                                           (gx#stx-e
                                                            _hd76657745_)))
                                                      (let ((_hd76687753_
                                                             (##car _e76677750_))
                                                            (_tl76697755_
                                                             (##cdr _e76677750_)))
                                                        (if (gx#stx-null?
                                                             _tl76697755_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76667747_)
                        (let ((_e76707758_ (gx#stx-e _tl76667747_)))
                          (let ((_hd76717761_ (##car _e76707758_))
                                (_tl76727763_ (##cdr _e76707758_)))
                            (if (gx#stx-null? _tl76727763_)
                                ((lambda (_L7766_ _L7767_)
                                   (let ((_eid7781_
                                          (gxc#generate-runtime-binding-id*
                                           _L7767_))
                                         (_expr7782_ (gxc#compile-e _L7766_)))
                                     (_lp7630_
                                      _rest7656_
                                      (cons (cons _eid7781_
                                                  (cons _expr7782_ '()))
                                            _bind7633_))))
                                 _hd76717761_
                                 _hd76687753_)
                                (_g76597737_ _g76617740_))))
                        (_g76597737_ _g76617740_))
                    (_g76597737_ _g76617740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76597737_
                                                     _g76617740_))))
                                            (_g76597737_ _g76617740_)))))
                                (_g76587784_ _hd-bind7657_)))))
                      (if (##pair? _rest76347642_)
                          (let ((_hd76397790_ (##car _rest76347642_))
                                (_tl76407792_ (##cdr _rest76347642_)))
                            (let* ((_hd-bind7795_ _hd76397790_)
                                   (_rest7797_ _tl76407792_))
                              (_K76387787_ _rest7797_ _hd-bind7795_)))
                          (_else76367653_))))))
               (_generate-letrec?7385_
                (lambda (_hd7517_)
                  (let _lp7519_ ((_rest7521_ _hd7517_))
                    (let* ((_rest75227530_ _rest7521_)
                           (_E75257534_
                            (lambda ()
                              (error '"No clause matching" _rest75227530_)))
                           (_else75247538_ (lambda () '#t))
                           (_K75267615_
                            (lambda (_rest7541_ _hd-bind7542_)
                              (let* ((_g75447561_
                                      (lambda (_g75457558_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g75457558_)))
                                     (_g75437612_
                                      (lambda (_g75457564_)
                                        (if (gx#stx-pair? _g75457564_)
                                            (let ((_e75487566_
                                                   (gx#stx-e _g75457564_)))
                                              (let ((_hd75497569_
                                                     (##car _e75487566_))
                                                    (_tl75507571_
                                                     (##cdr _e75487566_)))
                                                (if (gx#stx-pair? _hd75497569_)
                                                    (let ((_e75517574_
                                                           (gx#stx-e
                                                            _hd75497569_)))
                                                      (let ((_hd75527577_
                                                             (##car _e75517574_))
                                                            (_tl75537579_
                                                             (##cdr _e75517574_)))
                                                        (if (gx#stx-null?
                                                             _tl75537579_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75507571_)
                        (let ((_e75547582_ (gx#stx-e _tl75507571_)))
                          (let ((_hd75557585_ (##car _e75547582_))
                                (_tl75567587_ (##cdr _e75547582_)))
                            (if (gx#stx-null? _tl75567587_)
                                ((lambda (_L7590_ _L7591_)
                                   (if (_is-lambda-expr?7386_ _L7590_)
                                       (_lp7519_ _rest7541_)
                                       '#f))
                                 _hd75557585_
                                 _hd75527577_)
                                (_g75447561_ _g75457564_))))
                        (_g75447561_ _g75457564_))
                    (_g75447561_ _g75457564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75447561_
                                                     _g75457564_))))
                                            (_g75447561_ _g75457564_)))))
                                (_g75437612_ _hd-bind7542_)))))
                      (if (##pair? _rest75227530_)
                          (let ((_hd75277618_ (##car _rest75227530_))
                                (_tl75287620_ (##cdr _rest75227530_)))
                            (let* ((_hd-bind7623_ _hd75277618_)
                                   (_rest7625_ _tl75287620_))
                              (_K75267615_ _rest7625_ _hd-bind7623_)))
                          (_else75247538_))))))
               (_is-lambda-expr?7386_
                (lambda (_expr7454_)
                  (let* ((_g74577471_
                          (lambda (_g74587468_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g74587468_)))
                         (_g74567478_ (lambda (_g74587474_) ((lambda () '#f))))
                         (_g74557514_
                          (lambda (_g74587481_)
                            (if (gx#stx-pair? _g74587481_)
                                (let ((_e74617483_ (gx#stx-e _g74587481_)))
                                  (let ((_hd74627486_ (##car _e74617483_))
                                        (_tl74637488_ (##cdr _e74617483_)))
                                    (if (gx#identifier? _hd74627486_)
                                        (if (gx#stx-eq? '%#lambda _hd74627486_)
                                            (if (gx#stx-pair? _tl74637488_)
                                                (let ((_e74647491_
                                                       (gx#stx-e
                                                        _tl74637488_)))
                                                  (let ((_hd74657494_
                                                         (##car _e74647491_))
                                                        (_tl74667496_
                                                         (##cdr _e74647491_)))
                                                    ((lambda (_L7499_ _L7500_)
                                                       '#t)
                                                     _tl74667496_
                                                     _hd74657494_)))
                                                (_g74567478_ _g74587481_))
                                            (_g74567478_ _g74587481_))
                                        (_g74567478_ _g74587481_))))
                                (_g74567478_ _g74587481_)))))
                    (_g74557514_ _expr7454_)))))
        (let* ((_g73887405_
                (lambda (_g73897402_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g73897402_)))
               (_g73877451_
                (lambda (_g73897408_)
                  (if (gx#stx-pair? _g73897408_)
                      (let ((_e73927410_ (gx#stx-e _g73897408_)))
                        (let ((_hd73937413_ (##car _e73927410_))
                              (_tl73947415_ (##cdr _e73927410_)))
                          (if (gx#stx-pair? _tl73947415_)
                              (let ((_e73957418_ (gx#stx-e _tl73947415_)))
                                (let ((_hd73967421_ (##car _e73957418_))
                                      (_tl73977423_ (##cdr _e73957418_)))
                                  (if (gx#stx-pair? _tl73977423_)
                                      (let ((_e73987426_
                                             (gx#stx-e _tl73977423_)))
                                        (let ((_hd73997429_
                                               (##car _e73987426_))
                                              (_tl74007431_
                                               (##cdr _e73987426_)))
                                          (if (gx#stx-null? _tl74007431_)
                                              ((lambda (_L7434_ _L7435_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7435_)
                                                     (if (_generate-letrec?7385_
                                                          _L7435_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7435_
                                                          _L7434_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7435_
                                                          _L7434_
                                                          '#f))
                                                     (_generate-values7384_
                                                      _L7435_
                                                      _L7434_)))
                                               _hd73997429_
                                               _hd73967421_)
                                              (_g73887405_ _g73897408_))))
                                      (_g73887405_ _g73897408_))))
                              (_g73887405_ _g73897408_))))
                      (_g73887405_ _g73897408_)))))
          (_g73877451_ _stx7382_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7275_)
      (let _lp7277_ ((_rest7279_ _hd7275_))
        (let* ((_g72837304_
                (lambda (_g72847301_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g72847301_)))
               (_g72827311_ (lambda (_g72847307_) ((lambda () '#f))))
               (_g72817318_
                (lambda (_g72847314_)
                  (if (gx#stx-null? _g72847314_)
                      ((lambda () '#t))
                      (_g72827311_ _g72847314_))))
               (_g72807379_
                (lambda (_g72847321_)
                  (if (gx#stx-pair? _g72847321_)
                      (let ((_e72887323_ (gx#stx-e _g72847321_)))
                        (let ((_hd72897326_ (##car _e72887323_))
                              (_tl72907328_ (##cdr _e72887323_)))
                          (if (gx#stx-pair? _hd72897326_)
                              (let ((_e72917331_ (gx#stx-e _hd72897326_)))
                                (let ((_hd72927334_ (##car _e72917331_))
                                      (_tl72937336_ (##cdr _e72917331_)))
                                  (if (gx#stx-pair? _hd72927334_)
                                      (let ((_e72947339_
                                             (gx#stx-e _hd72927334_)))
                                        (let ((_hd72957342_
                                               (##car _e72947339_))
                                              (_tl72967344_
                                               (##cdr _e72947339_)))
                                          (if (gx#stx-null? _tl72967344_)
                                              (if (gx#stx-pair? _tl72937336_)
                                                  (let ((_e72977347_
                                                         (gx#stx-e
                                                          _tl72937336_)))
                                                    (let ((_hd72987350_
                                                           (##car _e72977347_))
                                                          (_tl72997352_
                                                           (##cdr _e72977347_)))
                                                      (if (gx#stx-null?
                                                           _tl72997352_)
                                                          ((lambda (_L7355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7356_
                            _L7357_)
                     (_lp7277_ _L7355_))
                   _tl72907328_
                   _hd72987350_
                   _hd72957342_)
                  (_g72817318_ _g72847321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72817318_ _g72847321_))
                                              (_g72817318_ _g72847321_))))
                                      (_g72817318_ _g72847321_))))
                              (_g72817318_ _g72847321_))))
                      (_g72817318_ _g72847321_)))))
          (_g72807379_ _rest7279_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7199_ _hd7200_ _body7201_ _compiled-body?7202_)
      (letrec ((_generate17204_
                (lambda (_bind7206_)
                  (let* ((_g72087225_
                          (lambda (_g72097222_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g72097222_)))
                         (_g72077272_
                          (lambda (_g72097228_)
                            (if (gx#stx-pair? _g72097228_)
                                (let ((_e72127230_ (gx#stx-e _g72097228_)))
                                  (let ((_hd72137233_ (##car _e72127230_))
                                        (_tl72147235_ (##cdr _e72127230_)))
                                    (if (gx#stx-pair? _hd72137233_)
                                        (let ((_e72157238_
                                               (gx#stx-e _hd72137233_)))
                                          (let ((_hd72167241_
                                                 (##car _e72157238_))
                                                (_tl72177243_
                                                 (##cdr _e72157238_)))
                                            (if (gx#stx-null? _tl72177243_)
                                                (if (gx#stx-pair? _tl72147235_)
                                                    (let ((_e72187246_
                                                           (gx#stx-e
                                                            _tl72147235_)))
                                                      (let ((_hd72197249_
                                                             (##car _e72187246_))
                                                            (_tl72207251_
                                                             (##cdr _e72187246_)))
                                                        (if (gx#stx-null?
                                                             _tl72207251_)
                                                            ((lambda (_L7254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7255_)
                       (cons (gxc#generate-runtime-binding-id* _L7255_)
                             (cons (gxc#compile-e _L7254_) '())))
                     _hd72197249_
                     _hd72167241_)
                    (_g72087225_ _g72097228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72087225_ _g72097228_))
                                                (_g72087225_ _g72097228_))))
                                        (_g72087225_ _g72097228_))))
                                (_g72087225_ _g72097228_)))))
                    (_g72077272_ _bind7206_)))))
        (cons _form7199_
              (cons (map _generate17204_ _hd7200_)
                    (cons (if _compiled-body?7202_
                              _body7201_
                              (gxc#compile-e _body7201_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7107_)
      (letrec ((_generate17109_
                (lambda (_datum7161_)
                  (if (let ((_$e7163_ (null? _datum7161_)))
                        (if _$e7163_
                            _$e7163_
                            (let ((_$e7166_ (interned-symbol? _datum7161_)))
                              (if _$e7166_
                                  _$e7166_
                                  (let ((_$e7169_
                                         (gx#self-quoting? _datum7161_)))
                                    (if _$e7169_
                                        _$e7169_
                                        (eof-object? _datum7161_)))))))
                      _datum7161_
                      (if (uninterned-symbol? _datum7161_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7161_
                           '#t)
                          (if (pair? _datum7161_)
                              (cons (_generate17109_ (car _datum7161_))
                                    (_generate17109_ (cdr _datum7161_)))
                              (if (box? _datum7161_)
                                  (box (_generate17109_ (unbox _datum7161_)))
                                  (if (vector? _datum7161_)
                                      (vector-map _generate17109_ _datum7161_)
                                      (if (let ((_$e7172_
                                                 (s8vector? _datum7161_)))
                                            (if _$e7172_
                                                _$e7172_
                                                (let ((_$e7175_
                                                       (u8vector?
                                                        _datum7161_)))
                                                  (if _$e7175_
                                                      _$e7175_
                                                      (let ((_$e7178_
                                                             (s16vector?
                                                              _datum7161_)))
                                                        (if _$e7178_
                                                            _$e7178_
                                                            (let ((_$e7181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7161_)))
                      (if _$e7181_
                          _$e7181_
                          (let ((_$e7184_ (s32vector? _datum7161_)))
                            (if _$e7184_
                                _$e7184_
                                (let ((_$e7187_ (u32vector? _datum7161_)))
                                  (if _$e7187_
                                      _$e7187_
                                      (let ((_$e7190_
                                             (s64vector? _datum7161_)))
                                        (if _$e7190_
                                            _$e7190_
                                            (let ((_$e7193_
                                                   (u64vector? _datum7161_)))
                                              (if _$e7193_
                                                  _$e7193_
                                                  (let ((_$e7196_
                                                         (f32vector?
                                                          _datum7161_)))
                                                    (if _$e7196_
                                                        _$e7196_
                                                        (f64vector?
                                                         _datum7161_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7161_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7107_))))))))))
        (let* ((_g71117124_
                (lambda (_g71127121_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g71127121_)))
               (_g71107158_
                (lambda (_g71127127_)
                  (if (gx#stx-pair? _g71127127_)
                      (let ((_e71147129_ (gx#stx-e _g71127127_)))
                        (let ((_hd71157132_ (##car _e71147129_))
                              (_tl71167134_ (##cdr _e71147129_)))
                          (if (gx#stx-pair? _tl71167134_)
                              (let ((_e71177137_ (gx#stx-e _tl71167134_)))
                                (let ((_hd71187140_ (##car _e71177137_))
                                      (_tl71197142_ (##cdr _e71177137_)))
                                  (if (gx#stx-null? _tl71197142_)
                                      ((lambda (_L7145_)
                                         (cons 'quote
                                               (cons (_generate17109_
                                                      (gx#stx-e _L7145_))
                                                     '())))
                                       _hd71187140_)
                                      (_g71117124_ _g71127127_))))
                              (_g71117124_ _g71127127_))))
                      (_g71117124_ _g71127127_)))))
          (_g71107158_ _stx7107_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6800_)
      (let* ((_g68026816_
              (lambda (_g68036813_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68036813_)))
             (_g68017104_
              (lambda (_g68036819_)
                (if (gx#stx-pair? _g68036819_)
                    (let ((_e68066821_ (gx#stx-e _g68036819_)))
                      (let ((_hd68076824_ (##car _e68066821_))
                            (_tl68086826_ (##cdr _e68066821_)))
                        (if (gx#stx-pair? _tl68086826_)
                            (let ((_e68096829_ (gx#stx-e _tl68086826_)))
                              (let ((_hd68106832_ (##car _e68096829_))
                                    (_tl68116834_ (##cdr _e68096829_)))
                                ((lambda (_L6837_ _L6838_)
                                   (let ((_rator6851_ (gxc#compile-e _L6838_))
                                         (_rands6852_
                                          (map gxc#compile-e _L6837_)))
                                     (let* ((_g68556907_
                                             (lambda (_g68566904_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g68566904_)))
                                            (_g68546914_
                                             (lambda (_g68566910_)
                                               ((lambda ()
                                                  (cons _rator6851_
                                                        _rands6852_)))))
                                            (_g68537101_
                                             (lambda (_g68566917_)
                                               (if (gx#stx-pair? _g68566917_)
                                                   (let ((_e68616919_
                                                          (gx#stx-e
                                                           _g68566917_)))
                                                     (let ((_hd68626922_
                                                            (##car _e68616919_))
                                                           (_tl68636924_
                                                            (##cdr _e68616919_)))
                                                       (if (gx#identifier?
                                                            _hd68626922_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd68626922_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl68636924_)
                           (let ((_e68646927_ (gx#stx-e _tl68636924_)))
                             (let ((_hd68656930_ (##car _e68646927_))
                                   (_tl68666932_ (##cdr _e68646927_)))
                               (if (gx#stx-pair? _hd68656930_)
                                   (let ((_e68676935_ (gx#stx-e _hd68656930_)))
                                     (let ((_hd68686938_ (##car _e68676935_))
                                           (_tl68696940_ (##cdr _e68676935_)))
                                       (if (gx#stx-pair? _hd68686938_)
                                           (let ((_e68706943_
                                                  (gx#stx-e _hd68686938_)))
                                             (let ((_hd68716946_
                                                    (##car _e68706943_))
                                                   (_tl68726948_
                                                    (##cdr _e68706943_)))
                                               (if (gx#stx-pair? _tl68726948_)
                                                   (let ((_e68736951_
                                                          (gx#stx-e
                                                           _tl68726948_)))
                                                     (let ((_hd68746954_
                                                            (##car _e68736951_))
                                                           (_tl68756956_
                                                            (##cdr _e68736951_)))
                                                       (if (gx#stx-pair?
                                                            _hd68746954_)
                                                           (let ((_e68766959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd68746954_)))
                     (let ((_hd68776962_ (##car _e68766959_))
                           (_tl68786964_ (##cdr _e68766959_)))
                       (if (gx#identifier? _hd68776962_)
                           (if (gx#stx-eq? 'lambda _hd68776962_)
                               (if (gx#stx-pair? _tl68786964_)
                                   (let ((_e68796967_ (gx#stx-e _tl68786964_)))
                                     (let ((_hd68806970_ (##car _e68796967_))
                                           (_tl68816972_ (##cdr _e68796967_)))
                                       (if (gx#stx-pair/null? _hd68806970_)
                                           (if (fx>= (gx#stx-length
                                                      _hd68806970_)
                                                     '0)
                                               (let ((_g12384_
                                                      (gx#syntax-split-splice
                                                       _hd68806970_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12385_
                                                          (values-count
                                                           _g12384_)))
                                                     (if (not (fx= _g12385_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12385_)))
                                                   (let ((_target68826975_
                                                          (values-ref
                                                           _g12384_
                                                           0))
                                                         (_tl68846977_
                                                          (values-ref
                                                           _g12384_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl68846977_)
                                                         (letrec ((_loop68856980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd68836983_ _arg68896985_)
                             (if (gx#stx-pair? _hd68836983_)
                                 (let ((_e68866988_ (gx#stx-e _hd68836983_)))
                                   (let ((_lp-hd68876991_ (##car _e68866988_))
                                         (_lp-tl68886993_ (##cdr _e68866988_)))
                                     (_loop68856980_
                                      _lp-tl68886993_
                                      (cons _lp-hd68876991_ _arg68896985_))))
                                 (let ((_arg68906996_ (reverse _arg68896985_)))
                                   (if (gx#stx-pair/null? _tl68816972_)
                                       (if (fx>= (gx#stx-length _tl68816972_)
                                                 '0)
                                           (let ((_g12386_
                                                  (gx#syntax-split-splice
                                                   _tl68816972_
                                                   '0)))
                                             (begin
                                               (let ((_g12387_
                                                      (values-count _g12386_)))
                                                 (if (not (fx= _g12387_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12387_)))
                                               (let ((_target68916999_
                                                      (values-ref _g12386_ 0))
                                                     (_tl68937001_
                                                      (values-ref _g12386_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl68937001_)
                                                     (letrec ((_loop68947004_
                                                               (lambda (_hd68927007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body68987009_)
                         (if (gx#stx-pair? _hd68927007_)
                             (let ((_e68957012_ (gx#stx-e _hd68927007_)))
                               (let ((_lp-hd68967015_ (##car _e68957012_))
                                     (_lp-tl68977017_ (##cdr _e68957012_)))
                                 (_loop68947004_
                                  _lp-tl68977017_
                                  (cons _lp-hd68967015_ _body68987009_))))
                             (let ((_body68997020_ (reverse _body68987009_)))
                               (if (gx#stx-null? _tl68756956_)
                                   (if (gx#stx-null? _tl68696940_)
                                       (if (gx#stx-pair? _tl68666932_)
                                           (let ((_e69007023_
                                                  (gx#stx-e _tl68666932_)))
                                             (let ((_hd69017026_
                                                    (##car _e69007023_))
                                                   (_tl69027028_
                                                    (##cdr _e69007023_)))
                                               (if (gx#stx-null? _tl69027028_)
                                                   ((lambda (_L7031_
                                                             _L7032_
                                                             _L7033_
                                                             _L7034_)
                                                      (if (eq? _L7034_ _L7031_)
                                                          (if (fx= (length _rands6852_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g70707073_ _g70717075_)
                                               (cons _g70707073_ _g70717075_))
                                             '()
                                             _L7033_))))
                      (let* ((_id7078_ _L7034_)
                             (_args7087_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g70797082_ _g70807084_)
                                          (cons _g70797082_ _g70807084_))
                                        '()
                                        _L7033_)))
                             (_body7096_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g70887091_ _g70897093_)
                                          (cons _g70887091_ _g70897093_))
                                        '()
                                        _L7032_)))
                             (_init7098_ (map list _args7087_ _rands6852_)))
                        (cons 'let
                              (cons _id7078_ (cons _init7098_ _body7096_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6800_))
                  (_g68546914_ _g68566917_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd69017026_
                                                    _body68997020_
                                                    _arg68906996_
                                                    _hd68716946_)
                                                   (_g68546914_ _g68566917_))))
                                           (_g68546914_ _g68566917_))
                                       (_g68546914_ _g68566917_))
                                   (_g68546914_ _g68566917_)))))))
               (_loop68947004_ _target68916999_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g68546914_
                                                      _g68566917_)))))
                                           (_g68546914_ _g68566917_))
                                       (_g68546914_ _g68566917_)))))))
                   (_loop68856980_ _target68826975_ '()))
                 (_g68546914_ _g68566917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68546914_ _g68566917_))
                                           (_g68546914_ _g68566917_))))
                                   (_g68546914_ _g68566917_))
                               (_g68546914_ _g68566917_))
                           (_g68546914_ _g68566917_))))
                   (_g68546914_ _g68566917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g68546914_ _g68566917_))))
                                           (_g68546914_ _g68566917_))))
                                   (_g68546914_ _g68566917_))))
                           (_g68546914_ _g68566917_))
                       (_g68546914_ _g68566917_))
                   (_g68546914_ _g68566917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g68546914_
                                                    _g68566917_)))))
                                       (_g68537101_ _rator6851_))))
                                 _tl68116834_
                                 _hd68106832_)))
                            (_g68026816_ _g68036819_))))
                    (_g68026816_ _g68036819_)))))
        (_g68017104_ _stx6800_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6762_)
      (let* ((_g67646774_
              (lambda (_g67656771_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67656771_)))
             (_g67636797_
              (lambda (_g67656777_)
                (if (gx#stx-pair? _g67656777_)
                    (let ((_e67676779_ (gx#stx-e _g67656777_)))
                      (let ((_hd67686782_ (##car _e67676779_))
                            (_tl67696784_ (##cdr _e67676779_)))
                        ((lambda (_L6787_)
                           (cons 'if (map gxc#compile-e _L6787_)))
                         _tl67696784_)))
                    (_g67646774_ _g67656777_)))))
        (_g67636797_ _stx6762_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6711_)
      (let* ((_g67136726_
              (lambda (_g67146723_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67146723_)))
             (_g67126759_
              (lambda (_g67146729_)
                (if (gx#stx-pair? _g67146729_)
                    (let ((_e67166731_ (gx#stx-e _g67146729_)))
                      (let ((_hd67176734_ (##car _e67166731_))
                            (_tl67186736_ (##cdr _e67166731_)))
                        (if (gx#stx-pair? _tl67186736_)
                            (let ((_e67196739_ (gx#stx-e _tl67186736_)))
                              (let ((_hd67206742_ (##car _e67196739_))
                                    (_tl67216744_ (##cdr _e67196739_)))
                                (if (gx#stx-null? _tl67216744_)
                                    ((lambda (_L6747_)
                                       (gxc#generate-runtime-binding-id
                                        _L6747_))
                                     _hd67206742_)
                                    (_g67136726_ _g67146729_))))
                            (_g67136726_ _g67146729_))))
                    (_g67136726_ _g67146729_)))))
        (_g67126759_ _stx6711_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6644_)
      (let* ((_g66466663_
              (lambda (_g66476660_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66476660_)))
             (_g66456708_
              (lambda (_g66476666_)
                (if (gx#stx-pair? _g66476666_)
                    (let ((_e66506668_ (gx#stx-e _g66476666_)))
                      (let ((_hd66516671_ (##car _e66506668_))
                            (_tl66526673_ (##cdr _e66506668_)))
                        (if (gx#stx-pair? _tl66526673_)
                            (let ((_e66536676_ (gx#stx-e _tl66526673_)))
                              (let ((_hd66546679_ (##car _e66536676_))
                                    (_tl66556681_ (##cdr _e66536676_)))
                                (if (gx#stx-pair? _tl66556681_)
                                    (let ((_e66566684_
                                           (gx#stx-e _tl66556681_)))
                                      (let ((_hd66576687_ (##car _e66566684_))
                                            (_tl66586689_ (##cdr _e66566684_)))
                                        (if (gx#stx-null? _tl66586689_)
                                            ((lambda (_L6692_ _L6693_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6693_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6692_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd66576687_
                                             _hd66546679_)
                                            (_g66466663_ _g66476666_))))
                                    (_g66466663_ _g66476666_))))
                            (_g66466663_ _g66476666_))))
                    (_g66466663_ _g66476666_)))))
        (_g66456708_ _stx6644_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6577_)
      (let* ((_g65796596_
              (lambda (_g65806593_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65806593_)))
             (_g65786641_
              (lambda (_g65806599_)
                (if (gx#stx-pair? _g65806599_)
                    (let ((_e65836601_ (gx#stx-e _g65806599_)))
                      (let ((_hd65846604_ (##car _e65836601_))
                            (_tl65856606_ (##cdr _e65836601_)))
                        (if (gx#stx-pair? _tl65856606_)
                            (let ((_e65866609_ (gx#stx-e _tl65856606_)))
                              (let ((_hd65876612_ (##car _e65866609_))
                                    (_tl65886614_ (##cdr _e65866609_)))
                                (if (gx#stx-pair? _tl65886614_)
                                    (let ((_e65896617_
                                           (gx#stx-e _tl65886614_)))
                                      (let ((_hd65906620_ (##car _e65896617_))
                                            (_tl65916622_ (##cdr _e65896617_)))
                                        (if (gx#stx-null? _tl65916622_)
                                            ((lambda (_L6625_ _L6626_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6625_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6626_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd65906620_
                                             _hd65876612_)
                                            (_g65796596_ _g65806599_))))
                                    (_g65796596_ _g65806599_))))
                            (_g65796596_ _g65806599_))))
                    (_g65796596_ _g65806599_)))))
        (_g65786641_ _stx6577_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6510_)
      (let* ((_g65126529_
              (lambda (_g65136526_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65136526_)))
             (_g65116574_
              (lambda (_g65136532_)
                (if (gx#stx-pair? _g65136532_)
                    (let ((_e65166534_ (gx#stx-e _g65136532_)))
                      (let ((_hd65176537_ (##car _e65166534_))
                            (_tl65186539_ (##cdr _e65166534_)))
                        (if (gx#stx-pair? _tl65186539_)
                            (let ((_e65196542_ (gx#stx-e _tl65186539_)))
                              (let ((_hd65206545_ (##car _e65196542_))
                                    (_tl65216547_ (##cdr _e65196542_)))
                                (if (gx#stx-pair? _tl65216547_)
                                    (let ((_e65226550_
                                           (gx#stx-e _tl65216547_)))
                                      (let ((_hd65236553_ (##car _e65226550_))
                                            (_tl65246555_ (##cdr _e65226550_)))
                                        (if (gx#stx-null? _tl65246555_)
                                            ((lambda (_L6558_ _L6559_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6558_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6559_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd65236553_
                                             _hd65206545_)
                                            (_g65126529_ _g65136532_))))
                                    (_g65126529_ _g65136532_))))
                            (_g65126529_ _g65136532_))))
                    (_g65126529_ _g65136532_)))))
        (_g65116574_ _stx6510_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6427_)
      (let* ((_g64296450_
              (lambda (_g64306447_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64306447_)))
             (_g64286507_
              (lambda (_g64306453_)
                (if (gx#stx-pair? _g64306453_)
                    (let ((_e64346455_ (gx#stx-e _g64306453_)))
                      (let ((_hd64356458_ (##car _e64346455_))
                            (_tl64366460_ (##cdr _e64346455_)))
                        (if (gx#stx-pair? _tl64366460_)
                            (let ((_e64376463_ (gx#stx-e _tl64366460_)))
                              (let ((_hd64386466_ (##car _e64376463_))
                                    (_tl64396468_ (##cdr _e64376463_)))
                                (if (gx#stx-pair? _tl64396468_)
                                    (let ((_e64406471_
                                           (gx#stx-e _tl64396468_)))
                                      (let ((_hd64416474_ (##car _e64406471_))
                                            (_tl64426476_ (##cdr _e64406471_)))
                                        (if (gx#stx-pair? _tl64426476_)
                                            (let ((_e64436479_
                                                   (gx#stx-e _tl64426476_)))
                                              (let ((_hd64446482_
                                                     (##car _e64436479_))
                                                    (_tl64456484_
                                                     (##cdr _e64436479_)))
                                                (if (gx#stx-null? _tl64456484_)
                                                    ((lambda (_L6487_
                                                              _L6488_
                                                              _L6489_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6487_)
                           (cons (gxc#compile-e _L6488_)
                                 (cons (gxc#compile-e _L6489_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd64446482_
                                                     _hd64416474_
                                                     _hd64386466_)
                                                    (_g64296450_
                                                     _g64306453_))))
                                            (_g64296450_ _g64306453_))))
                                    (_g64296450_ _g64306453_))))
                            (_g64296450_ _g64306453_))))
                    (_g64296450_ _g64306453_)))))
        (_g64286507_ _stx6427_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6328_)
      (let* ((_g63306355_
              (lambda (_g63316352_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63316352_)))
             (_g63296424_
              (lambda (_g63316358_)
                (if (gx#stx-pair? _g63316358_)
                    (let ((_e63366360_ (gx#stx-e _g63316358_)))
                      (let ((_hd63376363_ (##car _e63366360_))
                            (_tl63386365_ (##cdr _e63366360_)))
                        (if (gx#stx-pair? _tl63386365_)
                            (let ((_e63396368_ (gx#stx-e _tl63386365_)))
                              (let ((_hd63406371_ (##car _e63396368_))
                                    (_tl63416373_ (##cdr _e63396368_)))
                                (if (gx#stx-pair? _tl63416373_)
                                    (let ((_e63426376_
                                           (gx#stx-e _tl63416373_)))
                                      (let ((_hd63436379_ (##car _e63426376_))
                                            (_tl63446381_ (##cdr _e63426376_)))
                                        (if (gx#stx-pair? _tl63446381_)
                                            (let ((_e63456384_
                                                   (gx#stx-e _tl63446381_)))
                                              (let ((_hd63466387_
                                                     (##car _e63456384_))
                                                    (_tl63476389_
                                                     (##cdr _e63456384_)))
                                                (if (gx#stx-pair? _tl63476389_)
                                                    (let ((_e63486392_
                                                           (gx#stx-e
                                                            _tl63476389_)))
                                                      (let ((_hd63496395_
                                                             (##car _e63486392_))
                                                            (_tl63506397_
                                                             (##cdr _e63486392_)))
                                                        (if (gx#stx-null?
                                                             _tl63506397_)
                                                            ((lambda (_L6400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6401_
                              _L6402_
                              _L6403_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6401_)
                                   (cons (gxc#compile-e _L6400_)
                                         (cons (gxc#compile-e _L6402_)
                                               (cons (gxc#compile-e _L6403_)
                                                     (cons ''#f '())))))))
                     _hd63496395_
                     _hd63466387_
                     _hd63436379_
                     _hd63406371_)
                    (_g63306355_ _g63316358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63306355_
                                                     _g63316358_))))
                                            (_g63306355_ _g63316358_))))
                                    (_g63306355_ _g63316358_))))
                            (_g63306355_ _g63316358_))))
                    (_g63306355_ _g63316358_)))))
        (_g63296424_ _stx6328_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6245_)
      (let* ((_g62476268_
              (lambda (_g62486265_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62486265_)))
             (_g62466325_
              (lambda (_g62486271_)
                (if (gx#stx-pair? _g62486271_)
                    (let ((_e62526273_ (gx#stx-e _g62486271_)))
                      (let ((_hd62536276_ (##car _e62526273_))
                            (_tl62546278_ (##cdr _e62526273_)))
                        (if (gx#stx-pair? _tl62546278_)
                            (let ((_e62556281_ (gx#stx-e _tl62546278_)))
                              (let ((_hd62566284_ (##car _e62556281_))
                                    (_tl62576286_ (##cdr _e62556281_)))
                                (if (gx#stx-pair? _tl62576286_)
                                    (let ((_e62586289_
                                           (gx#stx-e _tl62576286_)))
                                      (let ((_hd62596292_ (##car _e62586289_))
                                            (_tl62606294_ (##cdr _e62586289_)))
                                        (if (gx#stx-pair? _tl62606294_)
                                            (let ((_e62616297_
                                                   (gx#stx-e _tl62606294_)))
                                              (let ((_hd62626300_
                                                     (##car _e62616297_))
                                                    (_tl62636302_
                                                     (##cdr _e62616297_)))
                                                (if (gx#stx-null? _tl62636302_)
                                                    ((lambda (_L6305_
                                                              _L6306_
                                                              _L6307_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6305_)
                           (cons (gxc#compile-e _L6306_)
                                 (cons (gxc#compile-e _L6307_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd62626300_
                                                     _hd62596292_
                                                     _hd62566284_)
                                                    (_g62476268_
                                                     _g62486271_))))
                                            (_g62476268_ _g62486271_))))
                                    (_g62476268_ _g62486271_))))
                            (_g62476268_ _g62486271_))))
                    (_g62476268_ _g62486271_)))))
        (_g62466325_ _stx6245_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6146_)
      (let* ((_g61486173_
              (lambda (_g61496170_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61496170_)))
             (_g61476242_
              (lambda (_g61496176_)
                (if (gx#stx-pair? _g61496176_)
                    (let ((_e61546178_ (gx#stx-e _g61496176_)))
                      (let ((_hd61556181_ (##car _e61546178_))
                            (_tl61566183_ (##cdr _e61546178_)))
                        (if (gx#stx-pair? _tl61566183_)
                            (let ((_e61576186_ (gx#stx-e _tl61566183_)))
                              (let ((_hd61586189_ (##car _e61576186_))
                                    (_tl61596191_ (##cdr _e61576186_)))
                                (if (gx#stx-pair? _tl61596191_)
                                    (let ((_e61606194_
                                           (gx#stx-e _tl61596191_)))
                                      (let ((_hd61616197_ (##car _e61606194_))
                                            (_tl61626199_ (##cdr _e61606194_)))
                                        (if (gx#stx-pair? _tl61626199_)
                                            (let ((_e61636202_
                                                   (gx#stx-e _tl61626199_)))
                                              (let ((_hd61646205_
                                                     (##car _e61636202_))
                                                    (_tl61656207_
                                                     (##cdr _e61636202_)))
                                                (if (gx#stx-pair? _tl61656207_)
                                                    (let ((_e61666210_
                                                           (gx#stx-e
                                                            _tl61656207_)))
                                                      (let ((_hd61676213_
                                                             (##car _e61666210_))
                                                            (_tl61686215_
                                                             (##cdr _e61666210_)))
                                                        (if (gx#stx-null?
                                                             _tl61686215_)
                                                            ((lambda (_L6218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6219_
                              _L6220_
                              _L6221_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6219_)
                                   (cons (gxc#compile-e _L6218_)
                                         (cons (gxc#compile-e _L6220_)
                                               (cons (gxc#compile-e _L6221_)
                                                     (cons ''#f '())))))))
                     _hd61676213_
                     _hd61646205_
                     _hd61616197_
                     _hd61586189_)
                    (_g61486173_ _g61496176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61486173_
                                                     _g61496176_))))
                                            (_g61486173_ _g61496176_))))
                                    (_g61486173_ _g61496176_))))
                            (_g61486173_ _g61496176_))))
                    (_g61486173_ _g61496176_)))))
        (_g61476242_ _stx6146_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6063_)
      (let* ((_g60656086_
              (lambda (_g60666083_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60666083_)))
             (_g60646143_
              (lambda (_g60666089_)
                (if (gx#stx-pair? _g60666089_)
                    (let ((_e60706091_ (gx#stx-e _g60666089_)))
                      (let ((_hd60716094_ (##car _e60706091_))
                            (_tl60726096_ (##cdr _e60706091_)))
                        (if (gx#stx-pair? _tl60726096_)
                            (let ((_e60736099_ (gx#stx-e _tl60726096_)))
                              (let ((_hd60746102_ (##car _e60736099_))
                                    (_tl60756104_ (##cdr _e60736099_)))
                                (if (gx#stx-pair? _tl60756104_)
                                    (let ((_e60766107_
                                           (gx#stx-e _tl60756104_)))
                                      (let ((_hd60776110_ (##car _e60766107_))
                                            (_tl60786112_ (##cdr _e60766107_)))
                                        (if (gx#stx-pair? _tl60786112_)
                                            (let ((_e60796115_
                                                   (gx#stx-e _tl60786112_)))
                                              (let ((_hd60806118_
                                                     (##car _e60796115_))
                                                    (_tl60816120_
                                                     (##cdr _e60796115_)))
                                                (if (gx#stx-null? _tl60816120_)
                                                    ((lambda (_L6123_
                                                              _L6124_
                                                              _L6125_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6123_)
                           (cons (gxc#compile-e _L6124_)
                                 (cons (gxc#compile-e _L6125_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd60806118_
                                                     _hd60776110_
                                                     _hd60746102_)
                                                    (_g60656086_
                                                     _g60666089_))))
                                            (_g60656086_ _g60666089_))))
                                    (_g60656086_ _g60666089_))))
                            (_g60656086_ _g60666089_))))
                    (_g60656086_ _g60666089_)))))
        (_g60646143_ _stx6063_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5964_)
      (let* ((_g59665991_
              (lambda (_g59675988_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59675988_)))
             (_g59656060_
              (lambda (_g59675994_)
                (if (gx#stx-pair? _g59675994_)
                    (let ((_e59725996_ (gx#stx-e _g59675994_)))
                      (let ((_hd59735999_ (##car _e59725996_))
                            (_tl59746001_ (##cdr _e59725996_)))
                        (if (gx#stx-pair? _tl59746001_)
                            (let ((_e59756004_ (gx#stx-e _tl59746001_)))
                              (let ((_hd59766007_ (##car _e59756004_))
                                    (_tl59776009_ (##cdr _e59756004_)))
                                (if (gx#stx-pair? _tl59776009_)
                                    (let ((_e59786012_
                                           (gx#stx-e _tl59776009_)))
                                      (let ((_hd59796015_ (##car _e59786012_))
                                            (_tl59806017_ (##cdr _e59786012_)))
                                        (if (gx#stx-pair? _tl59806017_)
                                            (let ((_e59816020_
                                                   (gx#stx-e _tl59806017_)))
                                              (let ((_hd59826023_
                                                     (##car _e59816020_))
                                                    (_tl59836025_
                                                     (##cdr _e59816020_)))
                                                (if (gx#stx-pair? _tl59836025_)
                                                    (let ((_e59846028_
                                                           (gx#stx-e
                                                            _tl59836025_)))
                                                      (let ((_hd59856031_
                                                             (##car _e59846028_))
                                                            (_tl59866033_
                                                             (##cdr _e59846028_)))
                                                        (if (gx#stx-null?
                                                             _tl59866033_)
                                                            ((lambda (_L6036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6037_
                              _L6038_
                              _L6039_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6037_)
                                   (cons (gxc#compile-e _L6036_)
                                         (cons (gxc#compile-e _L6038_)
                                               (cons (gxc#compile-e _L6039_)
                                                     (cons ''#f '())))))))
                     _hd59856031_
                     _hd59826023_
                     _hd59796015_
                     _hd59766007_)
                    (_g59665991_ _g59675994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g59665991_
                                                     _g59675994_))))
                                            (_g59665991_ _g59675994_))))
                                    (_g59665991_ _g59675994_))))
                            (_g59665991_ _g59675994_))))
                    (_g59665991_ _g59675994_)))))
        (_g59656060_ _stx5964_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5818_)
      (letrec ((_import-set-template5820_
                (lambda (_in5916_ _phi5917_)
                  (let ((_iphi5919_
                         (fx+ _phi5917_
                              (##direct-structure-ref
                               _in5916_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports5920_
                         (##structure-ref
                          (##direct-structure-ref
                           _in5916_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp5922_ ((_rest5924_ _imports5920_) (_r5925_ '()))
                      (let* ((_rest59265934_ _rest5924_)
                             (_E59295938_
                              (lambda ()
                                (error '"No clause matching" _rest59265934_)))
                             (_else59285942_ (lambda () _r5925_))
                             (_K59305952_
                              (lambda (_rest5945_ _in5946_)
                                (if (##structure-instance-of?
                                     _in5946_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi5919_)
                                        (_lp5922_
                                         _rest5945_
                                         (cons _in5946_ _r5925_))
                                        (_lp5922_ _rest5945_ _r5925_))
                                    (if (##structure-direct-instance-of?
                                         _in5946_
                                         'gx#module-import::t)
                                        (let ((_iphi5948_
                                               (fx+ _phi5917_
                                                    (##direct-structure-ref
                                                     _in5946_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi5948_)
                                              (_lp5922_
                                               _rest5945_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in5946_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r5925_))
                                              (_lp5922_ _rest5945_ _r5925_)))
                                        (if (##structure-direct-instance-of?
                                             _in5946_
                                             'gx#import-set::t)
                                            (let ((_xphi5950_
                                                   (fx+ _iphi5919_
                                                        (##direct-structure-ref
                                                         _in5946_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi5950_)
                                                  (_lp5922_
                                                   _rest5945_
                                                   (cons (##direct-structure-ref
                                                          _in5946_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r5925_))
                                                  (if (fxpositive? _xphi5950_)
                                                      (_lp5922_
                                                       _rest5945_
                                                       (foldl1 cons
                                                               _r5925_
                                                               (_import-set-template5820_
                                                                _in5946_
                                                                _iphi5919_)))
                                                      (_lp5922_
                                                       _rest5945_
                                                       _r5925_))))
                                            (_lp5922_ _rest5945_ _r5925_)))))))
                        (if (##pair? _rest59265934_)
                            (let ((_hd59315955_ (##car _rest59265934_))
                                  (_tl59325957_ (##cdr _rest59265934_)))
                              (let* ((_in5960_ _hd59315955_)
                                     (_rest5962_ _tl59325957_))
                                (_K59305952_ _rest5962_ _in5960_)))
                            (_else59285942_))))))))
        (let* ((_g58225832_
                (lambda (_g58235829_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58235829_)))
               (_g58215913_
                (lambda (_g58235835_)
                  (if (gx#stx-pair? _g58235835_)
                      (let ((_e58255837_ (gx#stx-e _g58235835_)))
                        (let ((_hd58265840_ (##car _e58255837_))
                              (_tl58275842_ (##cdr _e58255837_)))
                          ((lambda (_L5845_)
                             (let ((_ht5856_ (make-hash-table-eq)))
                               (let _lp5858_ ((_rest5860_ _L5845_)
                                              (_loads5861_ '()))
                                 (letrec ((_K5863_ (lambda (_ctx5906_
                                                            _rest5907_)
                                                     (let ((_id5909_
                                                            (##structure-ref
                                                             _ctx5906_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht5856_
                                                            _id5909_
                                                            '#f)
                                                           (_lp5858_
                                                            _rest5907_
                                                            _loads5861_)
                                                           (let ((_rt5911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id5909_)
                           '"__rt")))
                     (begin
                       (table-set! _ht5856_ _id5909_ _rt5911_)
                       (_lp5858_ _rest5907_ (cons _rt5911_ _loads5861_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest58645872_ _rest5860_)
                                          (_E58675876_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest58645872_)))
                                          (_else58665884_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g58795881_)
                                                          (list 'load-module
                                                                _g58795881_))
                                                        (reverse _loads5861_)))))
                                          (_K58685894_
                                           (lambda (_rest5887_ _in5888_)
                                             (if (##structure-instance-of?
                                                  _in5888_
                                                  'gx#module-context::t)
                                                 (_K5863_ _in5888_ _rest5887_)
                                                 (if (##structure-direct-instance-of?
                                                      _in5888_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in5888_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K5863_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in5888_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest5887_)
                 (_lp5858_ _rest5887_ _loads5861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in5888_
                                                          'gx#import-set::t)
                                                         (let ((_phi5890_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in5888_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi5890_)
                       (_K5863_ (##direct-structure-ref
                                 _in5888_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest5887_)
                       (if (fxpositive? _phi5890_)
                           (let ((_deps5892_
                                  (_import-set-template5820_ _in5888_ '0)))
                             (_lp5858_
                              (foldl1 cons _rest5887_ _deps5892_)
                              _loads5861_))
                           (_lp5858_ _rest5887_ _loads5861_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx5818_
                  _in5888_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest58645872_)
                                         (let ((_hd58695897_
                                                (##car _rest58645872_))
                                               (_tl58705899_
                                                (##cdr _rest58645872_)))
                                           (let* ((_in5902_ _hd58695897_)
                                                  (_rest5904_ _tl58705899_))
                                             (_K58685894_
                                              _rest5904_
                                              _in5902_)))
                                         (_else58665884_)))))))
                           _tl58275842_)))
                      (_g58225832_ _g58235835_)))))
          (_g58215913_ _stx5818_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx5641_)
      (letrec ((_add-lift!5643_
                (lambda (_expr5816_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5816_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5644_
                (lambda (_stxq5811_)
                  (let ((_gid5813_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid5814_
                         (gxc#generate-runtime-identifier _stxq5811_)))
                    (begin
                      (_add-lift!5643_
                       (cons 'define
                             (cons _gid5813_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'quote (cons '() '())) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5813_))))
               (_generate-serialized5645_
                (lambda (_stxq5801_ _marks5802_)
                  (let* ((_mark-refs5804_
                          (map _generate-mark5646_ _marks5802_))
                         (_gid5806_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid5808_
                          (gxc#generate-runtime-identifier _stxq5801_)))
                    (begin
                      (_add-lift!5643_
                       (cons 'define
                             (cons _gid5806_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5804_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5806_))))
               (_generate-mark5646_
                (lambda (_mark5787_)
                  (let ((_$e5789_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5787_
                          '#f)))
                    (if _$e5789_
                        (values _$e5789_)
                        (let* ((_gid5792_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr5794_ (_serialize-mark5647_ _mark5787_))
                               (_ctx5796_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5787_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5798_
                                (if (eq? _ctx5796_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5648_
                                                             _ctx5796_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5787_
                             _gid5792_)
                            (_add-lift!5643_
                             (cons 'define
                                   (cons _gid5792_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5794_ '()))
                   (cons _ctx-ref5798_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5792_))))))
               (_serialize-mark5647_
                (lambda (_mark5734_)
                  (letrec ((_quote-e5736_
                            (lambda (_sym5785_)
                              (if (interned-symbol? _sym5785_)
                                  _sym5785_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5785_)))))
                    (let* ((_mark57375746_ _mark5734_)
                           (_E57395750_
                            (lambda ()
                              (error '"No clause matching" _mark57375746_)))
                           (_K57405762_
                            (lambda (_trace5753_
                                     _phi5754_
                                     _ctx5755_
                                     _subst5756_)
                              (let ((_subs5758_
                                     (if _subst5756_
                                         (table->list _subst5756_)
                                         '())))
                                (cons _phi5754_
                                      (map (lambda (_pair5760_)
                                             (cons (_quote-e5736_
                                                    (car _pair5760_))
                                                   (_quote-e5736_
                                                    (cdr _pair5760_))))
                                           _subs5758_))))))
                      (if (##structure-instance-of?
                           _mark57375746_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e57415765_ (##vector-ref _mark57375746_ '1))
                                 (_subst5768_ _e57415765_)
                                 (_e57425770_ (##vector-ref _mark57375746_ '2))
                                 (_ctx5773_ _e57425770_)
                                 (_e57435775_ (##vector-ref _mark57375746_ '3))
                                 (_phi5778_ _e57435775_)
                                 (_e57445780_ (##vector-ref _mark57375746_ '4))
                                 (_trace5783_ _e57445780_))
                            (_K57405762_
                             _trace5783_
                             _phi5778_
                             _ctx5773_
                             _subst5768_))
                          (_E57395750_))))))
               (_context-ref5648_
                (lambda (_ctx5721_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5721_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5723_
                             (_context-ref-nested5650_ _ctx5721_))
                            (_ctx-origin5724_
                             (_context-ref-origin5649_ _ctx5721_))
                            (_origin5725_
                             (_context-ref-origin5649_
                              (gx#current-expander-context))))
                        (if (eq? _origin5725_ _ctx-origin5724_)
                            (let ((_ref5727_
                                   (_context-ref-nested5650_
                                    (gx#current-expander-context))))
                              (let _lp5729_ ((_ref5731_ (cdr _ref5727_))
                                             (_ctx-ref5732_
                                              (cdr _ctx-ref5723_)))
                                (if (if (pair? _ref5731_)
                                        (eq? (car _ref5731_)
                                             (car _ctx-ref5732_))
                                        '#f)
                                    (_lp5729_
                                     (cdr _ref5731_)
                                     (cdr _ctx-ref5732_))
                                    (cons '#f _ctx-ref5732_))))
                            _ctx-ref5723_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5721_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5649_
                (lambda (_ctx5713_)
                  (let _lp5715_ ((_ctx5717_ _ctx5713_))
                    (let ((_super5719_
                           (##structure-ref
                            _ctx5717_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5719_
                           'gx#module-context::t)
                          (_lp5715_ _super5719_)
                          _ctx5717_)))))
               (_context-ref-nested5650_
                (lambda (_ctx5704_)
                  (let _lp5706_ ((_ctx5708_ _ctx5704_) (_r5709_ '()))
                    (let ((_super5711_
                           (##structure-ref
                            _ctx5708_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5711_
                           'gx#module-context::t)
                          (_lp5706_
                           _super5711_
                           (cons (car (##structure-ref
                                       _ctx5708_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5709_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5708_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5709_)))))))
        (let* ((_g56525665_
                (lambda (_g56535662_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g56535662_)))
               (_g56515701_
                (lambda (_g56535668_)
                  (if (gx#stx-pair? _g56535668_)
                      (let ((_e56555670_ (gx#stx-e _g56535668_)))
                        (let ((_hd56565673_ (##car _e56555670_))
                              (_tl56575675_ (##cdr _e56555670_)))
                          (if (gx#stx-pair? _tl56575675_)
                              (let ((_e56585678_ (gx#stx-e _tl56575675_)))
                                (let ((_hd56595681_ (##car _e56585678_))
                                      (_tl56605683_ (##cdr _e56585678_)))
                                  (if (gx#stx-null? _tl56605683_)
                                      ((lambda (_L5686_)
                                         (if (gx#identifier? _L5686_)
                                             (let ((_marks5699_
                                                    (##direct-structure-ref
                                                     _L5686_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5699_)
                                                   (_generate-simple5644_
                                                    _L5686_)
                                                   (_generate-serialized5645_
                                                    _L5686_
                                                    _marks5699_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5686_)))
                                       _hd56595681_)
                                      (_g56525665_ _g56535668_))))
                              (_g56525665_ _g56535668_))))
                      (_g56525665_ _g56535668_)))))
          (_g56515701_ _stx5641_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5574_)
      (let* ((_g55765593_
              (lambda (_g55775590_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55775590_)))
             (_g55755638_
              (lambda (_g55775596_)
                (if (gx#stx-pair? _g55775596_)
                    (let ((_e55805598_ (gx#stx-e _g55775596_)))
                      (let ((_hd55815601_ (##car _e55805598_))
                            (_tl55825603_ (##cdr _e55805598_)))
                        (if (gx#stx-pair? _tl55825603_)
                            (let ((_e55835606_ (gx#stx-e _tl55825603_)))
                              (let ((_hd55845609_ (##car _e55835606_))
                                    (_tl55855611_ (##cdr _e55835606_)))
                                (if (gx#stx-pair? _tl55855611_)
                                    (let ((_e55865614_
                                           (gx#stx-e _tl55855611_)))
                                      (let ((_hd55875617_ (##car _e55865614_))
                                            (_tl55885619_ (##cdr _e55865614_)))
                                        (if (gx#stx-null? _tl55885619_)
                                            ((lambda (_L5622_ _L5623_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5623_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5622_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd55875617_
                                             _hd55845609_)
                                            (_g55765593_ _g55775596_))))
                                    (_g55765593_ _g55775596_))))
                            (_g55765593_ _g55775596_))))
                    (_g55765593_ _g55775596_)))))
        (_g55755638_ _stx5574_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5523_ _state5524_)
      (let* ((_g55265536_
              (lambda (_g55275533_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55275533_)))
             (_g55255571_
              (lambda (_g55275539_)
                (if (gx#stx-pair? _g55275539_)
                    (let ((_e55295541_ (gx#stx-e _g55275539_)))
                      (let ((_hd55305544_ (##car _e55295541_))
                            (_tl55315546_ (##cdr _e55295541_)))
                        ((lambda (_L5549_)
                           (let* ((_c-body5563_
                                   (map (lambda (_g55585560_)
                                          (gxc#compile-e
                                           _g55585560_
                                           _state5524_))
                                        _L5549_))
                                  (_c-body5568_
                                   (filter (lambda (_$obj5565_)
                                             (not (eq? _$obj5565_ '#!void)))
                                           _c-body5563_)))
                             (cons '%#begin _c-body5568_)))
                         _tl55315546_)))
                    (_g55265536_ _g55275539_)))))
        (_g55255571_ _stx5523_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5431_ _state5432_)
      (let* ((_g54345444_
              (lambda (_g54355441_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54355441_)))
             (_g54335520_
              (lambda (_g54355447_)
                (if (gx#stx-pair? _g54355447_)
                    (let ((_e54375449_ (gx#stx-e _g54355447_)))
                      (let ((_hd54385452_ (##car _e54375449_))
                            (_tl54395454_ (##cdr _e54375449_)))
                        ((lambda (_L5457_)
                           (let* ((_phi5467_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5469_
                                   (gxc#meta-state-begin-phi!
                                    _state5432_
                                    _phi5467_))
                                  (_compiled5472_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5457_)
                                       _state5432_))
                                    gx#current-expander-phi
                                    _phi5467_)))
                             (let* ((_g54755485_
                                     (lambda (_g54765482_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g54765482_)))
                                    (_g54745517_
                                     (lambda (_g54765488_)
                                       (if (gx#stx-pair? _g54765488_)
                                           (let ((_e54785490_
                                                  (gx#stx-e _g54765488_)))
                                             (let ((_hd54795493_
                                                    (##car _e54785490_))
                                                   (_tl54805495_
                                                    (##cdr _e54785490_)))
                                               (if (gx#identifier?
                                                    _hd54795493_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd54795493_)
                                                       ((lambda (_L5498_)
                                                          (let ((_c-body5515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5512_)
                                   (not (eq? _$obj5512_ '#!void)))
                                 _L5498_)))
                    (if _block5469_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5515_))
                        (if (null? _c-body5515_)
                            '#!void
                            (cons '%#begin-syntax _c-body5515_)))))
                _tl54805495_)
               (_g54755485_ _g54765488_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g54755485_ _g54765488_))))
                                           (_g54755485_ _g54765488_)))))
                               (_g54745517_ _compiled5472_))))
                         _tl54395454_)))
                    (_g54345444_ _g54355447_)))))
        (_g54335520_ _stx5431_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5362_ _state5363_)
      (begin
        (gxc#meta-state-end-phi! _state5363_)
        (let* ((_g53655379_
                (lambda (_g53665376_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53665376_)))
               (_g53645428_
                (lambda (_g53665382_)
                  (if (gx#stx-pair? _g53665382_)
                      (let ((_e53695384_ (gx#stx-e _g53665382_)))
                        (let ((_hd53705387_ (##car _e53695384_))
                              (_tl53715389_ (##cdr _e53695384_)))
                          (if (gx#stx-pair? _tl53715389_)
                              (let ((_e53725392_ (gx#stx-e _tl53715389_)))
                                (let ((_hd53735395_ (##car _e53725392_))
                                      (_tl53745397_ (##cdr _e53725392_)))
                                  ((lambda (_L5400_ _L5401_)
                                     (let ((_key5414_
                                            (gx#core-identifier-key _L5401_)))
                                       (begin
                                         (if (interned-symbol? _key5414_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5362_
                                              _L5401_
                                              _key5414_))
                                         (let* ((_ctx5416_
                                                 (gx#syntax-local-e__0
                                                  _L5401_))
                                                (_code5419_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5416_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5363_))
                                                  gx#current-expander-context
                                                  _ctx5416_))
                                                (_rt5421_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5416_
                                                  '#f))
                                                (_loader5423_
                                                 (if _rt5421_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5421_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5425_
                                                 (gx#stx-e _L5401_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5363_)
                                             (cons '%#module
                                                   (cons _modid5425_
                                                         (cons _code5419_
                                                               _loader5423_))))))))
                                   _tl53745397_
                                   _hd53735395_)))
                              (_g53655379_ _g53665382_))))
                      (_g53655379_ _g53665382_)))))
          (_g53645428_ _stx5362_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5352_ _context-chain5353_)
      (let _lp5355_ ((_ctx5357_ _ctx5352_) (_path5358_ '()))
        (let ((_super5360_
               (##structure-ref _ctx5357_ '3 gx#phi-context::t '#f)))
          (if (memq _super5360_ _context-chain5353_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5357_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5358_))
              (if (##structure-instance-of? _super5360_ 'gx#module-context::t)
                  (_lp5355_
                   _super5360_
                   (cons (car (##structure-ref
                               _ctx5357_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5358_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5357_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5358_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5347_ ((_ctx5349_ (gx#current-expander-context)) (_r5350_ '()))
        (if (##structure-instance-of? _ctx5349_ 'gx#module-context::t)
            (_lp5347_
             (##structure-ref _ctx5349_ '3 gx#phi-context::t '#f)
             (cons _ctx5349_ _r5350_))
            _r5350_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5116_ _state5117_)
      (letrec* ((_context-chain5119_ (gxc#current-context-chain))
                (_make-import-spec5120_
                 (lambda (_in5283_)
                   (let* ((_in52845296_ _in5283_)
                          (_E52865300_
                           (lambda ()
                             (error '"No clause matching" _in52845296_)))
                          (_K52875310_
                           (lambda (_phi5303_
                                    _name5304_
                                    _src-name5305_
                                    _src-phi5306_
                                    _src-key5307_
                                    _src-ctx5308_)
                             (cons _phi5303_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5304_)
                                         (cons _src-phi5306_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5305_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in52845296_
                          (##type-id gx#module-import::t))
                         (let ((_e52885313_ (##vector-ref _in52845296_ '1)))
                           (if (##structure-direct-instance-of?
                                _e52885313_
                                (##type-id gx#module-export::t))
                               (let* ((_e52915316_
                                       (##vector-ref _e52885313_ '1))
                                      (_src-ctx5319_ _e52915316_)
                                      (_e52925321_
                                       (##vector-ref _e52885313_ '2))
                                      (_src-key5324_ _e52925321_)
                                      (_e52935326_
                                       (##vector-ref _e52885313_ '3))
                                      (_src-phi5329_ _e52935326_)
                                      (_e52945331_
                                       (##vector-ref _e52885313_ '4))
                                      (_src-name5334_ _e52945331_)
                                      (_e52895336_
                                       (##vector-ref _in52845296_ '2))
                                      (_name5339_ _e52895336_)
                                      (_e52905341_
                                       (##vector-ref _in52845296_ '3))
                                      (_phi5344_ _e52905341_))
                                 (_K52875310_
                                  _phi5344_
                                  _name5339_
                                  _src-name5334_
                                  _src-phi5329_
                                  _src-key5324_
                                  _src-ctx5319_))
                               (_E52865300_)))
                         (_E52865300_)))))
                (_make-import-path5121_
                 (lambda (_ctx5281_)
                   (gxc#generate-meta-import-path
                    _ctx5281_
                    _context-chain5119_)))
                (_make-import-spec-in5122_
                 (lambda (_ctx5278_ _in5279_)
                   (cons 'spec:
                         (cons (_make-import-path5121_ _ctx5278_)
                               (reverse _in5279_))))))
        (begin
          (gxc#meta-state-end-phi! _state5117_)
          (let* ((_g51245134_
                  (lambda (_g51255131_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g51255131_)))
                 (_g51235275_
                  (lambda (_g51255137_)
                    (if (gx#stx-pair? _g51255137_)
                        (let ((_e51275139_ (gx#stx-e _g51255137_)))
                          (let ((_hd51285142_ (##car _e51275139_))
                                (_tl51295144_ (##cdr _e51275139_)))
                            ((lambda (_L5147_)
                               (let _lp5158_ ((_rest5160_ _L5147_)
                                              (_current-src5161_ '#f)
                                              (_current-in5162_ '())
                                              (_r5163_ '()))
                                 (let* ((_rest51645172_ _rest5160_)
                                        (_E51675176_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest51645172_)))
                                        (_else51665182_
                                         (lambda ()
                                           (let ((_r5180_ (if _current-src5161_
                                                              (cons (_make-import-spec-in5122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5161_
                             _current-in5162_)
                            _r5163_)
                      _r5163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5180_)))))
                                        (_K51685263_
                                         (lambda (_rest5185_ _in5186_)
                                           (if (##structure-direct-instance-of?
                                                _in5186_
                                                'gx#module-import::t)
                                               (let* ((_in51875194_ _in5186_)
                                                      (_E51895198_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in51875194_)))
                                                      (_K51905203_
                                                       (lambda (_src-ctx5201_)
                                                         (if (eq? _current-src5161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5201_)
                     (_lp5158_
                      _rest5185_
                      _current-src5161_
                      (cons (_make-import-spec5120_ _in5186_) _current-in5162_)
                      _r5163_)
                     (if _current-src5161_
                         (_lp5158_
                          _rest5185_
                          _src-ctx5201_
                          (cons (_make-import-spec5120_ _in5186_) '())
                          (cons (_make-import-spec-in5122_
                                 _current-src5161_
                                 _current-in5162_)
                                _r5163_))
                         (_lp5158_
                          _rest5185_
                          _src-ctx5201_
                          (cons (_make-import-spec5120_ _in5186_) '())
                          _r5163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in51875194_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e51915206_
                                                            (##vector-ref
                                                             _in51875194_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e51915206_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e51925209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e51915206_ '1))
                          (_src-ctx5212_ _e51925209_))
                     (_K51905203_ _src-ctx5212_))
                   (_E51895198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E51895198_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5186_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5214_
                                                           (##direct-structure-ref
                                                            _in5186_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5216_
                                                           (##direct-structure-ref
                                                            _in5186_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5256_
                                                           (let* ((_g52175226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5121_ _src5216_))
                          (_E52205230_
                           (lambda ()
                             (error '"No clause matching" _g52175226_)))
                          (_try-match52195241_
                           (lambda ()
                             (let* ((_K52215236_
                                     (lambda (_path5234_)
                                       (cons 'in: _path5234_)))
                                    (_path5239_ _g52175226_))
                               (_K52215236_ _path5239_))))
                          (_K52225246_ (lambda (_path5244_) _path5244_)))
                     (if (##pair? _g52175226_)
                         (let ((_hd52235249_ (##car _g52175226_))
                               (_tl52245251_ (##cdr _g52175226_)))
                           (let ((_path5254_ _hd52235249_))
                             (if (##null? _tl52245251_)
                                 (_K52225246_ _path5254_)
                                 (_try-match52195241_))))
                         (_try-match52195241_))))
                  (_r5258_ (if _current-src5161_
                               (cons (_make-import-spec-in5122_
                                      _current-src5161_
                                      _current-in5162_)
                                     _r5163_)
                               _r5163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5158_
                                                      _rest5185_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5214_)
                                                                _src-in5256_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5214_ (cons _src-in5256_ '()))))
                    _r5258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5186_
                                                        'gx#module-context::t)
                                                       (let ((_r5261_ (if _current-src5161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5122_
                                         _current-src5161_
                                         _current-in5162_)
                                        _r5163_)
                                  _r5163_)))
                 (_lp5158_
                  _rest5185_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5121_ _in5186_))
                        _r5261_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest51645172_)
                                       (let ((_hd51695266_
                                              (##car _rest51645172_))
                                             (_tl51705268_
                                              (##cdr _rest51645172_)))
                                         (let* ((_in5271_ _hd51695266_)
                                                (_rest5273_ _tl51705268_))
                                           (_K51685263_ _rest5273_ _in5271_)))
                                       (_else51665182_)))))
                             _tl51295144_)))
                        (_g51245134_ _g51255137_)))))
            (_g51235275_ _stx5116_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4926_ _state4927_)
      (letrec* ((_context-chain4929_ (gxc#current-context-chain))
                (_make-import-path4930_
                 (lambda (_ctx5114_)
                   (gxc#generate-meta-import-path
                    _ctx5114_
                    _context-chain4929_))))
        (let* ((_g49324942_
                (lambda (_g49334939_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g49334939_)))
               (_g49315111_
                (lambda (_g49334945_)
                  (if (gx#stx-pair? _g49334945_)
                      (let ((_e49354947_ (gx#stx-e _g49334945_)))
                        (let ((_hd49364950_ (##car _e49354947_))
                              (_tl49374952_ (##cdr _e49354947_)))
                          ((lambda (_L4955_)
                             (let _lp4966_ ((_rest4968_ _L4955_) (_r4969_ '()))
                               (let* ((_rest49704978_ _rest4968_)
                                      (_E49734982_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest49704978_)))
                                      (_else49724986_
                                       (lambda ()
                                         (cons '%#export (reverse _r4969_))))
                                      (_K49745099_
                                       (lambda (_rest4989_ _out4990_)
                                         (let* ((_out49915004_ _out4990_)
                                                (_E49945008_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out49915004_)))
                                                (_try-match49935071_
                                                 (lambda ()
                                                   (let ((_K49955058_
                                                          (lambda (_phi5012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src5013_)
                    (let* ((_out5053_
                            (if _src5013_
                                (cons 'import:
                                      (cons (let* ((_g50145023_
                                                    (_make-import-path4930_
                                                     _src5013_))
                                                   (_E50175027_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g50145023_)))
                                                   (_try-match50165038_
                                                    (lambda ()
                                                      (let* ((_K50185033_
                                                              (lambda (_path5031_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path5031_)))
                     (_path5036_ _g50145023_))
                (_K50185033_ _path5036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K50195043_
                                                    (lambda (_path5041_)
                                                      _path5041_)))
                                              (if (##pair? _g50145023_)
                                                  (let ((_hd50205046_
                                                         (##car _g50145023_))
                                                        (_tl50215048_
                                                         (##cdr _g50145023_)))
                                                    (let ((_path5051_
                                                           _hd50205046_))
                                                      (if (##null? _tl50215048_)
                                                          (_K50195043_
                                                           _path5051_)
                                                          (_try-match50165038_))))
                                                  (_try-match50165038_)))
                                            '()))
                                '#t))
                           (_out5055_
                            (if (fxzero? _phi5012_)
                                _out5053_
                                (cons 'phi:
                                      (cons _phi5012_ (cons _out5053_ '()))))))
                      (_lp4966_ _rest4989_ (cons _out5055_ _r4969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out49915004_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e49965061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out49915004_ '1))
                        (_src5064_ _e49965061_)
                        (_e49975066_ (##vector-ref _out49915004_ '2))
                        (_phi5069_ _e49975066_))
                   (_K49955058_ _phi5069_ _src5064_))
                 (_E49945008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K49985078_
                                                 (lambda (_name5074_
                                                          _phi5075_
                                                          _key5076_)
                                                   (_lp4966_
                                                    _rest4989_
                                                    (cons (cons 'spec:
                                                                (cons _phi5075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key5076_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name5074_)
                                          '()))))
                  _r4969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out49915004_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e49995081_
                                                       (##vector-ref
                                                        _out49915004_
                                                        '1))
                                                      (_e50005084_
                                                       (##vector-ref
                                                        _out49915004_
                                                        '2))
                                                      (_key5087_ _e50005084_)
                                                      (_e50015089_
                                                       (##vector-ref
                                                        _out49915004_
                                                        '3))
                                                      (_phi5092_ _e50015089_)
                                                      (_e50025094_
                                                       (##vector-ref
                                                        _out49915004_
                                                        '4))
                                                      (_name5097_ _e50025094_))
                                                 (_K49985078_
                                                  _name5097_
                                                  _phi5092_
                                                  _key5087_))
                                               (_try-match49935071_))))))
                                 (if (##pair? _rest49704978_)
                                     (let ((_hd49755102_
                                            (##car _rest49704978_))
                                           (_tl49765104_
                                            (##cdr _rest49704978_)))
                                       (let* ((_out5107_ _hd49755102_)
                                              (_rest5109_ _tl49765104_))
                                         (_K49745099_ _rest5109_ _out5107_)))
                                     (_else49724986_)))))
                           _tl49374952_)))
                      (_g49324942_ _g49334945_)))))
          (_g49315111_ _stx4926_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4887_ _state4888_)
      (begin
        (gxc#meta-state-end-phi! _state4888_)
        (let* ((_g48904900_
                (lambda (_g48914897_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g48914897_)))
               (_g48894923_
                (lambda (_g48914903_)
                  (if (gx#stx-pair? _g48914903_)
                      (let ((_e48934905_ (gx#stx-e _g48914903_)))
                        (let ((_hd48944908_ (##car _e48934905_))
                              (_tl48954910_ (##cdr _e48934905_)))
                          ((lambda (_L4913_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4913_)))
                           _tl48954910_)))
                      (_g48904900_ _g48914903_)))))
          (_g48894923_ _stx4887_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4758_ _state4759_)
      (letrec ((_generate14761_
                (lambda (_id4882_ _eid4883_)
                  (let ((_eid4885_ (gx#stx-e _eid4883_)))
                    (begin
                      (if (interned-symbol? _eid4885_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4758_
                           _eid4885_))
                      (cons (gxc#generate-runtime-identifier _id4882_)
                            (cons _eid4885_ '())))))))
        (let* ((_g47634791_
                (lambda (_g47644788_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47644788_)))
               (_g47624879_
                (lambda (_g47644794_)
                  (if (gx#stx-pair? _g47644794_)
                      (let ((_e47674796_ (gx#stx-e _g47644794_)))
                        (let ((_hd47684799_ (##car _e47674796_))
                              (_tl47694801_ (##cdr _e47674796_)))
                          (if (gx#stx-pair/null? _tl47694801_)
                              (if (fx>= (gx#stx-length _tl47694801_) '0)
                                  (let ((_g12388_
                                         (gx#syntax-split-splice
                                          _tl47694801_
                                          '0)))
                                    (begin
                                      (let ((_g12389_ (values-count _g12388_)))
                                        (if (not (fx= _g12389_ 2))
                                            (error "Context expects 2 values"
                                                   _g12389_)))
                                      (let ((_target47704804_
                                             (values-ref _g12388_ 0))
                                            (_tl47724806_
                                             (values-ref _g12388_ 1)))
                                        (if (gx#stx-null? _tl47724806_)
                                            (letrec ((_loop47734809_
                                                      (lambda (_hd47714812_
                                                               _eid47774814_
                                                               _id47784816_)
                                                        (if (gx#stx-pair?
                                                             _hd47714812_)
                                                            (let ((_e47744819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd47714812_)))
                      (let ((_lp-hd47754822_ (##car _e47744819_))
                            (_lp-tl47764824_ (##cdr _e47744819_)))
                        (if (gx#stx-pair? _lp-hd47754822_)
                            (let ((_e47814827_ (gx#stx-e _lp-hd47754822_)))
                              (let ((_hd47824830_ (##car _e47814827_))
                                    (_tl47834832_ (##cdr _e47814827_)))
                                (if (gx#stx-pair? _tl47834832_)
                                    (let ((_e47844835_
                                           (gx#stx-e _tl47834832_)))
                                      (let ((_hd47854838_ (##car _e47844835_))
                                            (_tl47864840_ (##cdr _e47844835_)))
                                        (if (gx#stx-null? _tl47864840_)
                                            (_loop47734809_
                                             _lp-tl47764824_
                                             (cons _hd47854838_ _eid47774814_)
                                             (cons _hd47824830_ _id47784816_))
                                            (_g47634791_ _g47644794_))))
                                    (_g47634791_ _g47644794_))))
                            (_g47634791_ _g47644794_))))
                    (let ((_eid47794843_ (reverse _eid47774814_))
                          (_id47804845_ (reverse _id47784816_)))
                      ((lambda (_L4848_ _L4849_)
                         (cons '%#extern
                               (map _generate14761_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g48644867_ _g48654869_)
                                                (cons _g48644867_ _g48654869_))
                                              '()
                                              _L4849_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g48714874_ _g48724876_)
                                                (cons _g48714874_ _g48724876_))
                                              '()
                                              _L4848_)))))
                       _eid47794843_
                       _id47804845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop47734809_
                                               _target47704804_
                                               '()
                                               '()))
                                            (_g47634791_ _g47644794_)))))
                                  (_g47634791_ _g47644794_))
                              (_g47634791_ _g47644794_))))
                      (_g47634791_ _g47644794_)))))
          (_g47624879_ _stx4758_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4553_ _state4554_)
      (letrec ((_generate14556_
                (lambda (_id4753_)
                  (let ((_eid4755_ (gxc#generate-runtime-binding-id _id4753_))
                        (_ident4756_
                         (gxc#generate-runtime-identifier _id4753_)))
                    (cons '%#define-runtime
                          (cons _ident4756_ (cons _eid4755_ '()))))))
               (_generate*4557_
                (lambda (_all4721_)
                  (let* ((_all47224730_ _all4721_)
                         (_E47254734_
                          (lambda ()
                            (error '"No clause matching" _all47224730_)))
                         (_else47244738_ (lambda () (cons '%#begin _all4721_)))
                         (_K47264743_ (lambda (_one4741_) _one4741_)))
                    (if (##pair? _all47224730_)
                        (let ((_hd47274746_ (##car _all47224730_))
                              (_tl47284748_ (##cdr _all47224730_)))
                          (let ((_one4751_ _hd47274746_))
                            (if (##null? _tl47284748_)
                                (_K47264743_ _one4751_)
                                (_else47244738_))))
                        (_else47244738_))))))
        (let* ((_g45594576_
                (lambda (_g45604573_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45604573_)))
               (_g45584718_
                (lambda (_g45604579_)
                  (if (gx#stx-pair? _g45604579_)
                      (let ((_e45634581_ (gx#stx-e _g45604579_)))
                        (let ((_hd45644584_ (##car _e45634581_))
                              (_tl45654586_ (##cdr _e45634581_)))
                          (if (gx#stx-pair? _tl45654586_)
                              (let ((_e45664589_ (gx#stx-e _tl45654586_)))
                                (let ((_hd45674592_ (##car _e45664589_))
                                      (_tl45684594_ (##cdr _e45664589_)))
                                  (if (gx#stx-pair? _tl45684594_)
                                      (let ((_e45694597_
                                             (gx#stx-e _tl45684594_)))
                                        (let ((_hd45704600_
                                               (##car _e45694597_))
                                              (_tl45714602_
                                               (##cdr _e45694597_)))
                                          (if (gx#stx-null? _tl45714602_)
                                              ((lambda (_L4605_ _L4606_)
                                                 (let _lp4622_ ((_rest4624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4606_)
                        (_r4625_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g46304646_
                                                           (lambda (_g46314643_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g46314643_)))
                                                          (_g46294653_
                                                           (lambda (_g46314649_)
                                                             ((lambda ()
                                                                (_generate*4557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4625_))))))
                  (_g46284669_
                   (lambda (_g46314656_)
                     ((lambda (_L4658_)
                        (if (gx#identifier? _L4658_)
                            (_generate*4557_
                             (foldl1 cons
                                     (cons (_generate14556_ _L4658_) '())
                                     _r4625_))
                            (_g46294653_ _g46314656_)))
                      _g46314656_)))
                  (_g46274693_
                   (lambda (_g46314672_)
                     (if (gx#stx-pair? _g46314672_)
                         (let ((_e46384674_ (gx#stx-e _g46314672_)))
                           (let ((_hd46394677_ (##car _e46384674_))
                                 (_tl46404679_ (##cdr _e46384674_)))
                             ((lambda (_L4682_ _L4683_)
                                (_lp4622_
                                 _L4682_
                                 (cons (_generate14556_ _L4683_) _r4625_)))
                              _tl46404679_
                              _hd46394677_)))
                         (_g46284669_ _g46314672_))))
                  (_g46264715_
                   (lambda (_g46314696_)
                     (if (gx#stx-pair? _g46314696_)
                         (let ((_e46334698_ (gx#stx-e _g46314696_)))
                           (let ((_hd46344701_ (##car _e46334698_))
                                 (_tl46354703_ (##cdr _e46334698_)))
                             (if (gx#stx-datum? _hd46344701_)
                                 (if (equal? (gx#stx-e _hd46344701_) '#f)
                                     ((lambda (_L4706_)
                                        (_lp4622_ _L4706_ _r4625_))
                                      _tl46354703_)
                                     (_g46274693_ _g46314696_))
                                 (_g46274693_ _g46314696_))))
                         (_g46274693_ _g46314696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46264715_
                                                      _rest4624_))))
                                               _hd45704600_
                                               _hd45674592_)
                                              (_g45594576_ _g45604579_))))
                                      (_g45594576_ _g45604579_))))
                              (_g45594576_ _g45604579_))))
                      (_g45594576_ _g45604579_)))))
          (_g45584718_ _stx4553_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4450_ _state4451_)
      (let* ((_g44534470_
              (lambda (_g44544467_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44544467_)))
             (_g44524550_
              (lambda (_g44544473_)
                (if (gx#stx-pair? _g44544473_)
                    (let ((_e44574475_ (gx#stx-e _g44544473_)))
                      (let ((_hd44584478_ (##car _e44574475_))
                            (_tl44594480_ (##cdr _e44574475_)))
                        (if (gx#stx-pair? _tl44594480_)
                            (let ((_e44604483_ (gx#stx-e _tl44594480_)))
                              (let ((_hd44614486_ (##car _e44604483_))
                                    (_tl44624488_ (##cdr _e44604483_)))
                                (if (gx#stx-pair? _tl44624488_)
                                    (let ((_e44634491_
                                           (gx#stx-e _tl44624488_)))
                                      (let ((_hd44644494_ (##car _e44634491_))
                                            (_tl44654496_ (##cdr _e44634491_)))
                                        (if (gx#stx-null? _tl44654496_)
                                            ((lambda (_L4499_ _L4500_)
                                               (let* ((_eid4515_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4500_))
                                                      (_phi4517_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4519_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4451_
                                                        _phi4517_)))
                                                 (begin
                                                   (let* ((_g45224529_
                                                           (lambda (_g45234526_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g45234526_)))
                                                          (_g45214547_
                                                           (lambda (_g45234532_)
                                                             ((lambda (_L4534_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4451_
                           _phi4517_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4534_ (cons _L4499_ '()))))))
                      _g45234532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45214547_ _eid4515_))
                                                   (if _block4519_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4500_)
                                             (cons _eid4515_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4500_)
                           (cons _eid4515_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd44644494_
                                             _hd44614486_)
                                            (_g44534470_ _g44544473_))))
                                    (_g44534470_ _g44544473_))))
                            (_g44534470_ _g44544473_))))
                    (_g44534470_ _g44544473_)))))
        (_g44524550_ _stx4450_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4382_ _state4383_)
      (let* ((_g43854402_
              (lambda (_g43864399_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43864399_)))
             (_g43844447_
              (lambda (_g43864405_)
                (if (gx#stx-pair? _g43864405_)
                    (let ((_e43894407_ (gx#stx-e _g43864405_)))
                      (let ((_hd43904410_ (##car _e43894407_))
                            (_tl43914412_ (##cdr _e43894407_)))
                        (if (gx#stx-pair? _tl43914412_)
                            (let ((_e43924415_ (gx#stx-e _tl43914412_)))
                              (let ((_hd43934418_ (##car _e43924415_))
                                    (_tl43944420_ (##cdr _e43924415_)))
                                (if (gx#stx-pair? _tl43944420_)
                                    (let ((_e43954423_
                                           (gx#stx-e _tl43944420_)))
                                      (let ((_hd43964426_ (##car _e43954423_))
                                            (_tl43974428_ (##cdr _e43954423_)))
                                        (if (gx#stx-null? _tl43974428_)
                                            ((lambda (_L4431_ _L4432_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4432_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4431_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd43964426_
                                             _hd43934418_)
                                            (_g43854402_ _g43864405_))))
                                    (_g43854402_ _g43864405_))))
                            (_g43854402_ _g43864405_))))
                    (_g43854402_ _g43864405_)))))
        (_g43844447_ _stx4382_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4379_ _state4380_)
      (begin
        (gxc#meta-state-add-phi!
         _state4380_
         (gx#current-expander-phi)
         _stx4379_)
        (gxc#generate-meta-define-values% _stx4379_ _state4380_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4376_ _state4377_)
      (begin
        (gxc#meta-state-add-phi!
         _state4377_
         (gx#current-expander-phi)
         _stx4376_)
        '#!void)))
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
    (lambda _$args4373_
      (apply make-struct-instance gxc#meta-state::t _$args4373_)))
  (define gxc#meta-state-src (make-struct-field-accessor gxc#meta-state::t '0))
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
    (lambda (_self4370_ _ctx4371_)
      (if (##fx< '4 (##vector-length _self4370_))
          (begin
            (##vector-set!
             _self4370_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4371_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4370_ '2 '1)
            (##vector-set! _self4370_ '3 (make-hash-table-eq))
            (##vector-set! _self4370_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4370_))))
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
    (lambda _$args4245_
      (apply make-struct-instance gxc#meta-state-block::t _$args4245_)))
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
    (lambda (_state4204_ _phi4205_)
      (let* ((_state42064214_ _state4204_)
             (_E42084218_
              (lambda () (error '"No clause matching" _state42064214_)))
             (_K42094227_
              (lambda (_open4221_ _n4222_ _src4223_)
                (if (table-ref _open4221_ _phi4205_ '#f)
                    '#f
                    (let ((_block-ref4225_
                           (string-append
                            _src4223_
                            '"__"
                            (number->string _n4222_))))
                      (begin
                        (##structure-set!
                         _state4204_
                         (fx+ _n4222_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4221_
                         _phi4205_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4205_
                          _n4222_
                          '()))
                        _block-ref4225_))))))
        (if (##structure-instance-of?
             _state42064214_
             (##type-id gxc#meta-state::t))
            (let* ((_e42104230_ (##vector-ref _state42064214_ '1))
                   (_src4233_ _e42104230_)
                   (_e42114235_ (##vector-ref _state42064214_ '2))
                   (_n4238_ _e42114235_)
                   (_e42124240_ (##vector-ref _state42064214_ '3))
                   (_open4243_ _e42124240_))
              (_K42094227_ _open4243_ _n4238_ _src4233_))
            (_E42084218_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4198_ _phi4199_ _stx4200_)
      (let ((_block4202_
             (table-ref
              (##structure-ref _state4198_ '3 gxc#meta-state::t '#f)
              _phi4199_
              '#f)))
        (##structure-set!
         _block4202_
         (cons _stx4200_
               (##structure-ref _block4202_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4193_)
      (begin
        (##structure-set!
         _state4193_
         (hash-fold
          (lambda (_g12390_ _block4195_ _r4196_) (cons _block4195_ _r4196_))
          (##structure-ref _state4193_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4193_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4193_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4145_)
      (begin
        (gxc#meta-state-end-phi! _state4145_)
        (foldl1 (lambda (_block4147_ _r4148_)
                  (let* ((_block41494158_ _block4147_)
                         (_E41514162_
                          (lambda ()
                            (error '"No clause matching" _block41494158_)))
                         (_K41524170_
                          (lambda (_code4165_ _n4166_ _phi4167_ _ctx4168_)
                            (if (null? _code4165_)
                                _r4148_
                                (cons (cons _ctx4168_
                                            (cons _phi4167_
                                                  (cons _n4166_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4165_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4148_)))))
                    (if (##structure-instance-of?
                         _block41494158_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e41534173_ (##vector-ref _block41494158_ '1))
                               (_ctx4176_ _e41534173_)
                               (_e41544178_ (##vector-ref _block41494158_ '2))
                               (_phi4181_ _e41544178_)
                               (_e41554183_ (##vector-ref _block41494158_ '3))
                               (_n4186_ _e41554183_)
                               (_e41564188_ (##vector-ref _block41494158_ '4))
                               (_code4191_ _e41564188_))
                          (_K41524170_ _code4191_ _n4186_ _phi4181_ _ctx4176_))
                        (_E41514162_))))
                '()
                (##structure-ref _state4145_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4141_)
      (let ((_ht4143_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4141_ _ht4143_)
          _ht4143_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4084_ _ht4085_)
      (let* ((_g40874100_
              (lambda (_g40884097_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40884097_)))
             (_g40864138_
              (lambda (_g40884103_)
                (if (gx#stx-pair? _g40884103_)
                    (let ((_e40904105_ (gx#stx-e _g40884103_)))
                      (let ((_hd40914108_ (##car _e40904105_))
                            (_tl40924110_ (##cdr _e40904105_)))
                        (if (gx#stx-pair? _tl40924110_)
                            (let ((_e40934113_ (gx#stx-e _tl40924110_)))
                              (let ((_hd40944116_ (##car _e40934113_))
                                    (_tl40954118_ (##cdr _e40934113_)))
                                (if (gx#stx-null? _tl40954118_)
                                    ((lambda (_L4121_)
                                       (let* ((_bind4133_
                                               (gx#resolve-identifier__0
                                                _L4121_))
                                              (_eid4135_
                                               (if _bind4133_
                                                   (##structure-ref
                                                    _bind4133_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4121_))))
                                         (table-set!
                                          _ht4085_
                                          _eid4135_
                                          _eid4135_)))
                                     _hd40944116_)
                                    (_g40874100_ _g40884103_))))
                            (_g40874100_ _g40884103_))))
                    (_g40874100_ _g40884103_)))))
        (_g40864138_ _stx4084_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4011_ _ht4012_)
      (let* ((_g40144031_
              (lambda (_g40154028_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40154028_)))
             (_g40134081_
              (lambda (_g40154034_)
                (if (gx#stx-pair? _g40154034_)
                    (let ((_e40184036_ (gx#stx-e _g40154034_)))
                      (let ((_hd40194039_ (##car _e40184036_))
                            (_tl40204041_ (##cdr _e40184036_)))
                        (if (gx#stx-pair? _tl40204041_)
                            (let ((_e40214044_ (gx#stx-e _tl40204041_)))
                              (let ((_hd40224047_ (##car _e40214044_))
                                    (_tl40234049_ (##cdr _e40214044_)))
                                (if (gx#stx-pair? _tl40234049_)
                                    (let ((_e40244052_
                                           (gx#stx-e _tl40234049_)))
                                      (let ((_hd40254055_ (##car _e40244052_))
                                            (_tl40264057_ (##cdr _e40244052_)))
                                        (if (gx#stx-null? _tl40264057_)
                                            ((lambda (_L4060_ _L4061_)
                                               (let* ((_bind4076_
                                                       (gx#resolve-identifier__0
                                                        _L4061_))
                                                      (_eid4078_
                                                       (if _bind4076_
                                                           (##structure-ref
                                                            _bind4076_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4061_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4012_
                                                    _eid4078_
                                                    _eid4078_)
                                                   (gxc#compile-e
                                                    _L4060_
                                                    _ht4012_))))
                                             _hd40254055_
                                             _hd40224047_)
                                            (_g40144031_ _g40154034_))))
                                    (_g40144031_ _g40154034_))))
                            (_g40144031_ _g40154034_))))
                    (_g40144031_ _g40154034_)))))
        (_g40134081_ _stx4011_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3973_)
      (let* ((_g39753985_
              (lambda (_g39763982_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39763982_)))
             (_g39744008_
              (lambda (_g39763988_)
                (if (gx#stx-pair? _g39763988_)
                    (let ((_e39783990_ (gx#stx-e _g39763988_)))
                      (let ((_hd39793993_ (##car _e39783990_))
                            (_tl39803995_ (##cdr _e39783990_)))
                        ((lambda (_L3998_) (ormap1 gxc#compile-e _L3998_))
                         _tl39803995_)))
                    (_g39753985_ _g39763988_)))))
        (_g39744008_ _stx3973_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3935_)
      (let* ((_g39373947_
              (lambda (_g39383944_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39383944_)))
             (_g39363970_
              (lambda (_g39383950_)
                (if (gx#stx-pair? _g39383950_)
                    (let ((_e39403952_ (gx#stx-e _g39383950_)))
                      (let ((_hd39413955_ (##car _e39403952_))
                            (_tl39423957_ (##cdr _e39403952_)))
                        ((lambda (_L3960_) (gxc#compile-e (last _L3960_)))
                         _tl39423957_)))
                    (_g39373947_ _g39383950_)))))
        (_g39363970_ _stx3935_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3868_)
      (let* ((_g38703887_
              (lambda (_g38713884_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38713884_)))
             (_g38693932_
              (lambda (_g38713890_)
                (if (gx#stx-pair? _g38713890_)
                    (let ((_e38743892_ (gx#stx-e _g38713890_)))
                      (let ((_hd38753895_ (##car _e38743892_))
                            (_tl38763897_ (##cdr _e38743892_)))
                        (if (gx#stx-pair? _tl38763897_)
                            (let ((_e38773900_ (gx#stx-e _tl38763897_)))
                              (let ((_hd38783903_ (##car _e38773900_))
                                    (_tl38793905_ (##cdr _e38773900_)))
                                (if (gx#stx-pair? _tl38793905_)
                                    (let ((_e38803908_
                                           (gx#stx-e _tl38793905_)))
                                      (let ((_hd38813911_ (##car _e38803908_))
                                            (_tl38823913_ (##cdr _e38803908_)))
                                        (if (gx#stx-null? _tl38823913_)
                                            ((lambda (_L3916_ _L3917_)
                                               (gxc#compile-e _L3916_))
                                             _hd38813911_
                                             _hd38783903_)
                                            (_g38703887_ _g38713890_))))
                                    (_g38703887_ _g38713890_))))
                            (_g38703887_ _g38713890_))))
                    (_g38703887_ _g38713890_)))))
        (_g38693932_ _stx3868_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3801_)
      (let* ((_g38033820_
              (lambda (_g38043817_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38043817_)))
             (_g38023865_
              (lambda (_g38043823_)
                (if (gx#stx-pair? _g38043823_)
                    (let ((_e38073825_ (gx#stx-e _g38043823_)))
                      (let ((_hd38083828_ (##car _e38073825_))
                            (_tl38093830_ (##cdr _e38073825_)))
                        (if (gx#stx-pair? _tl38093830_)
                            (let ((_e38103833_ (gx#stx-e _tl38093830_)))
                              (let ((_hd38113836_ (##car _e38103833_))
                                    (_tl38123838_ (##cdr _e38103833_)))
                                (if (gx#stx-pair? _tl38123838_)
                                    (let ((_e38133841_
                                           (gx#stx-e _tl38123838_)))
                                      (let ((_hd38143844_ (##car _e38133841_))
                                            (_tl38153846_ (##cdr _e38133841_)))
                                        (if (gx#stx-null? _tl38153846_)
                                            ((lambda (_L3849_ _L3850_)
                                               (gxc#compile-e _L3849_))
                                             _hd38143844_
                                             _hd38113836_)
                                            (_g38033820_ _g38043823_))))
                                    (_g38033820_ _g38043823_))))
                            (_g38033820_ _g38043823_))))
                    (_g38033820_ _g38043823_)))))
        (_g38023865_ _stx3801_)))))
