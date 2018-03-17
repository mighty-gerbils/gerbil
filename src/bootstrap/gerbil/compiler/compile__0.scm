(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12832_ . _args12833_)
      (let* ((_g1283512845_
              (lambda (_g1283612842_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1283612842_)))
             (_g1283412873_
              (lambda (_g1283612848_)
                (if (gx#stx-pair? _g1283612848_)
                    (let ((_e1283812850_ (gx#stx-e _g1283612848_)))
                      (let ((_hd1283912853_ (##car _e1283812850_))
                            (_tl1284012855_ (##cdr _e1283812850_)))
                        ((lambda (_L12858_)
                           (let ((_$e12868_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12858_)
                                   '#f)))
                             (if _$e12868_
                                 ((lambda (_method12871_)
                                    (apply _method12871_
                                           _stx12832_
                                           _args12833_))
                                  _$e12868_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12832_
                                  _L12858_))))
                         _hd1283912853_)))
                    (_g1283512845_ _g1283612848_)))))
        (_g1283412873_ _stx12832_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12829_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12829_ '%#begin-annotation void)
           (table-set! _tbl12829_ '%#lambda void)
           (table-set! _tbl12829_ '%#case-lambda void)
           (table-set! _tbl12829_ '%#let-values void)
           (table-set! _tbl12829_ '%#letrec-values void)
           (table-set! _tbl12829_ '%#letrec*-values void)
           (table-set! _tbl12829_ '%#quote void)
           (table-set! _tbl12829_ '%#quote-syntax void)
           (table-set! _tbl12829_ '%#call void)
           (table-set! _tbl12829_ '%#if void)
           (table-set! _tbl12829_ '%#ref void)
           (table-set! _tbl12829_ '%#set! void)
           (table-set! _tbl12829_ '%#struct-instance? void)
           (table-set! _tbl12829_ '%#struct-direct-instance? void)
           (table-set! _tbl12829_ '%#struct-ref void)
           (table-set! _tbl12829_ '%#struct-set! void)
           (table-set! _tbl12829_ '%#struct-direct-ref void)
           (table-set! _tbl12829_ '%#struct-direct-set! void)
           (table-set! _tbl12829_ '%#struct-unchecked-ref void)
           (table-set! _tbl12829_ '%#struct-unchecked-set! void)
           _tbl12829_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12825_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12825_ '%#begin void)
           (table-set! _tbl12825_ '%#begin-syntax void)
           (table-set! _tbl12825_ '%#begin-foreign void)
           (table-set! _tbl12825_ '%#module void)
           (table-set! _tbl12825_ '%#import void)
           (table-set! _tbl12825_ '%#export void)
           (table-set! _tbl12825_ '%#provide void)
           (table-set! _tbl12825_ '%#extern void)
           (table-set! _tbl12825_ '%#define-values void)
           (table-set! _tbl12825_ '%#define-syntax void)
           (table-set! _tbl12825_ '%#define-alias void)
           (table-set! _tbl12825_ '%#declare void)
           _tbl12825_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12821_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12821_ (force gxc#&void-special-form))
           (hash-copy! _tbl12821_ (force gxc#&void-expression))
           _tbl12821_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12817_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12817_ '%#begin-annotation false)
           (table-set! _tbl12817_ '%#lambda false)
           (table-set! _tbl12817_ '%#case-lambda false)
           (table-set! _tbl12817_ '%#let-values false)
           (table-set! _tbl12817_ '%#letrec-values false)
           (table-set! _tbl12817_ '%#letrec*-values false)
           (table-set! _tbl12817_ '%#quote false)
           (table-set! _tbl12817_ '%#quote-syntax false)
           (table-set! _tbl12817_ '%#call false)
           (table-set! _tbl12817_ '%#if false)
           (table-set! _tbl12817_ '%#ref false)
           (table-set! _tbl12817_ '%#set! false)
           (table-set! _tbl12817_ '%#struct-instance? false)
           (table-set! _tbl12817_ '%#struct-direct-instance? false)
           (table-set! _tbl12817_ '%#struct-ref false)
           (table-set! _tbl12817_ '%#struct-set! false)
           (table-set! _tbl12817_ '%#struct-direct-ref false)
           (table-set! _tbl12817_ '%#struct-direct-set! false)
           (table-set! _tbl12817_ '%#struct-unchecked-ref false)
           (table-set! _tbl12817_ '%#struct-unchecked-set! false)
           _tbl12817_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12813_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12813_ '%#begin false)
           (table-set! _tbl12813_ '%#begin-syntax false)
           (table-set! _tbl12813_ '%#begin-foreign false)
           (table-set! _tbl12813_ '%#module false)
           (table-set! _tbl12813_ '%#import false)
           (table-set! _tbl12813_ '%#export false)
           (table-set! _tbl12813_ '%#provide false)
           (table-set! _tbl12813_ '%#extern false)
           (table-set! _tbl12813_ '%#define-values false)
           (table-set! _tbl12813_ '%#define-syntax false)
           (table-set! _tbl12813_ '%#define-alias false)
           (table-set! _tbl12813_ '%#declare false)
           _tbl12813_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12809_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12809_ (force gxc#&false-special-form))
           (hash-copy! _tbl12809_ (force gxc#&false-expression))
           _tbl12809_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12805_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12805_ (force gxc#&void-expression))
           (hash-copy! _tbl12805_ (force gxc#&void-special-form))
           (table-set! _tbl12805_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12805_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12805_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12805_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12805_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12805_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12798_ . _args12800_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12798_ _args12800_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12795_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12795_ (force gxc#&void))
           (table-set! _tbl12795_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12795_ '%#module gxc#lift-modules-module%)
           _tbl12795_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12788_ . _args12790_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12788_ _args12790_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12785_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12785_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12785_ '%#begin-syntax false)
           (table-set! _tbl12785_ '%#begin-foreign true)
           (table-set! _tbl12785_ '%#begin-annotation true)
           (table-set! _tbl12785_ '%#module false)
           (table-set! _tbl12785_ '%#import false)
           (table-set! _tbl12785_ '%#export false)
           (table-set! _tbl12785_ '%#provide false)
           (table-set! _tbl12785_ '%#extern false)
           (table-set! _tbl12785_ '%#define-values true)
           (table-set! _tbl12785_ '%#define-syntax false)
           (table-set! _tbl12785_ '%#define-alias false)
           (table-set! _tbl12785_ '%#declare false)
           (table-set! _tbl12785_ '%#lambda true)
           (table-set! _tbl12785_ '%#case-lambda true)
           (table-set! _tbl12785_ '%#let-values true)
           (table-set! _tbl12785_ '%#letrec-values true)
           (table-set! _tbl12785_ '%#letrec*-values true)
           (table-set! _tbl12785_ '%#quote true)
           (table-set! _tbl12785_ '%#call true)
           (table-set! _tbl12785_ '%#if true)
           (table-set! _tbl12785_ '%#ref true)
           (table-set! _tbl12785_ '%#set! true)
           (table-set! _tbl12785_ '%#struct-instance? true)
           (table-set! _tbl12785_ '%#struct-direct-instance? true)
           (table-set! _tbl12785_ '%#struct-ref true)
           (table-set! _tbl12785_ '%#struct-set! true)
           (table-set! _tbl12785_ '%#struct-direct-ref true)
           (table-set! _tbl12785_ '%#struct-direct-set! true)
           (table-set! _tbl12785_ '%#struct-unchecked-ref true)
           (table-set! _tbl12785_ '%#struct-unchecked-set! true)
           _tbl12785_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12778_ . _args12780_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12778_ _args12780_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12775_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12775_ (force gxc#&false))
           (table-set! _tbl12775_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12775_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12775_ '%#lambda values)
           (table-set! _tbl12775_ '%#case-lambda values)
           (table-set!
            _tbl12775_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12775_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12775_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12775_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12768_ . _args12770_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12768_ _args12770_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl12765_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12765_ (force gxc#&false-expression))
           (table-set! _tbl12765_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12765_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12765_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12765_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12765_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12765_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12765_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12765_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12765_ '%#call gxc#count-values-call%)
           (table-set! _tbl12765_ '%#if gxc#count-values-if%)
           _tbl12765_)))))
  (define gxc#apply-count-values
    (lambda (_stx12758_ . _args12760_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12758_ _args12760_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12755_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12755_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12755_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12755_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12755_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12751_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12751_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12751_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12751_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12751_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12744_ . _args12746_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12744_ _args12746_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12741_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12741_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12741_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12741_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12741_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12741_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12741_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12741_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12741_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12741_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12741_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12741_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12741_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12741_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12741_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12741_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12741_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12741_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12741_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12741_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12741_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12741_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12741_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12741_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12741_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12741_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12741_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12734_ . _args12736_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12734_ _args12736_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12731_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12731_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12731_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12731_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12724_ . _args12726_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12724_ _args12726_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12721_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12721_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12721_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12721_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12721_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12721_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12721_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12721_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12721_ '%#quote void)
           (table-set! _tbl12721_ '%#quote-syntax void)
           (table-set! _tbl12721_ '%#call gxc#collect-operands)
           (table-set! _tbl12721_ '%#if gxc#collect-operands)
           (table-set! _tbl12721_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12721_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12721_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12721_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12721_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12721_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12721_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12721_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12721_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12721_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12721_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12714_ . _args12716_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12714_ _args12716_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12711_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12711_ (force gxc#&void-expression))
           (table-set! _tbl12711_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12711_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12711_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12711_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12711_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12711_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12711_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12711_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12711_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12711_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12711_ '%#begin-foreign void)
           (table-set! _tbl12711_ '%#declare void)
           _tbl12711_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12704_ . _args12706_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12704_ _args12706_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12701_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12701_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12701_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12701_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12701_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12701_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12701_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12701_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12701_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12701_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12701_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12701_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12701_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12701_ '%#declare void)
           _tbl12701_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12694_ . _args12696_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12694_ _args12696_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12651_ . _args12652_)
      (let* ((_g1265412664_
              (lambda (_g1265512661_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1265512661_)))
             (_g1265312691_
              (lambda (_g1265512667_)
                (if (gx#stx-pair? _g1265512667_)
                    (let ((_e1265712669_ (gx#stx-e _g1265512667_)))
                      (let ((_hd1265812672_ (##car _e1265712669_))
                            (_tl1265912674_ (##cdr _e1265712669_)))
                        ((lambda (_L12677_)
                           (for-each
                            (lambda (_g1268612688_)
                              (apply gxc#compile-e _g1268612688_ _args12652_))
                            (gx#stx-e _L12677_)))
                         _tl1265912674_)))
                    (_g1265412664_ _g1265512667_)))))
        (_g1265312691_ _stx12651_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12607_ . _args12608_)
      (let* ((_g1261012620_
              (lambda (_g1261112617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1261112617_)))
             (_g1260912648_
              (lambda (_g1261112623_)
                (if (gx#stx-pair? _g1261112623_)
                    (let ((_e1261312625_ (gx#stx-e _g1261112623_)))
                      (let ((_hd1261412628_ (##car _e1261312625_))
                            (_tl1261512630_ (##cdr _e1261312625_)))
                        ((lambda (_L12633_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1264312645_)
                                 (apply gxc#compile-e
                                        _g1264312645_
                                        _args12608_))
                               (gx#stx-e _L12633_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1261512630_)))
                    (_g1261012620_ _g1261112623_)))))
        (_g1260912648_ _stx12607_))))
  (define gxc#collect-module%
    (lambda (_stx12549_ . _args12550_)
      (let* ((_g1255212566_
              (lambda (_g1255312563_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1255312563_)))
             (_g1255112604_
              (lambda (_g1255312569_)
                (if (gx#stx-pair? _g1255312569_)
                    (let ((_e1255612571_ (gx#stx-e _g1255312569_)))
                      (let ((_hd1255712574_ (##car _e1255612571_))
                            (_tl1255812576_ (##cdr _e1255612571_)))
                        (if (gx#stx-pair? _tl1255812576_)
                            (let ((_e1255912579_ (gx#stx-e _tl1255812576_)))
                              (let ((_hd1256012582_ (##car _e1255912579_))
                                    (_tl1256112584_ (##cdr _e1255912579_)))
                                ((lambda (_L12587_ _L12588_)
                                   (let ((_ctx12601_
                                          (gx#syntax-local-e__0 _L12588_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12601_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12550_))
                                      gx#current-expander-context
                                      _ctx12601_)))
                                 _tl1256112584_
                                 _hd1256012582_)))
                            (_g1255212566_ _g1255312569_))))
                    (_g1255212566_ _g1255312569_)))))
        (_g1255112604_ _stx12549_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12481_ . _args12482_)
      (let* ((_g1248412501_
              (lambda (_g1248512498_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1248512498_)))
             (_g1248312546_
              (lambda (_g1248512504_)
                (if (gx#stx-pair? _g1248512504_)
                    (let ((_e1248812506_ (gx#stx-e _g1248512504_)))
                      (let ((_hd1248912509_ (##car _e1248812506_))
                            (_tl1249012511_ (##cdr _e1248812506_)))
                        (if (gx#stx-pair? _tl1249012511_)
                            (let ((_e1249112514_ (gx#stx-e _tl1249012511_)))
                              (let ((_hd1249212517_ (##car _e1249112514_))
                                    (_tl1249312519_ (##cdr _e1249112514_)))
                                (if (gx#stx-pair? _tl1249312519_)
                                    (let ((_e1249412522_
                                           (gx#stx-e _tl1249312519_)))
                                      (let ((_hd1249512525_
                                             (##car _e1249412522_))
                                            (_tl1249612527_
                                             (##cdr _e1249412522_)))
                                        (if (gx#stx-null? _tl1249612527_)
                                            ((lambda (_L12530_ _L12531_)
                                               (apply gxc#compile-e
                                                      _L12530_
                                                      _args12482_))
                                             _hd1249512525_
                                             _hd1249212517_)
                                            (_g1248412501_ _g1248512504_))))
                                    (_g1248412501_ _g1248512504_))))
                            (_g1248412501_ _g1248512504_))))
                    (_g1248412501_ _g1248512504_)))))
        (_g1248312546_ _stx12481_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12413_ . _args12414_)
      (let* ((_g1241612433_
              (lambda (_g1241712430_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1241712430_)))
             (_g1241512478_
              (lambda (_g1241712436_)
                (if (gx#stx-pair? _g1241712436_)
                    (let ((_e1242012438_ (gx#stx-e _g1241712436_)))
                      (let ((_hd1242112441_ (##car _e1242012438_))
                            (_tl1242212443_ (##cdr _e1242012438_)))
                        (if (gx#stx-pair? _tl1242212443_)
                            (let ((_e1242312446_ (gx#stx-e _tl1242212443_)))
                              (let ((_hd1242412449_ (##car _e1242312446_))
                                    (_tl1242512451_ (##cdr _e1242312446_)))
                                (if (gx#stx-pair? _tl1242512451_)
                                    (let ((_e1242612454_
                                           (gx#stx-e _tl1242512451_)))
                                      (let ((_hd1242712457_
                                             (##car _e1242612454_))
                                            (_tl1242812459_
                                             (##cdr _e1242612454_)))
                                        (if (gx#stx-null? _tl1242812459_)
                                            ((lambda (_L12462_ _L12463_)
                                               (apply gxc#compile-e
                                                      _L12462_
                                                      _args12414_))
                                             _hd1242712457_
                                             _hd1242412449_)
                                            (_g1241612433_ _g1241712436_))))
                                    (_g1241612433_ _g1241712436_))))
                            (_g1241612433_ _g1241712436_))))
                    (_g1241612433_ _g1241712436_)))))
        (_g1241512478_ _stx12413_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12295_ . _args12296_)
      (let* ((_g1229812326_
              (lambda (_g1229912323_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1229912323_)))
             (_g1229712410_
              (lambda (_g1229912329_)
                (if (gx#stx-pair? _g1229912329_)
                    (let ((_e1230212331_ (gx#stx-e _g1229912329_)))
                      (let ((_hd1230312334_ (##car _e1230212331_))
                            (_tl1230412336_ (##cdr _e1230212331_)))
                        (if (gx#stx-pair/null? _tl1230412336_)
                            (if (fx>= (gx#stx-length _tl1230412336_) '0)
                                (let ((_g12886_
                                       (gx#syntax-split-splice
                                        _tl1230412336_
                                        '0)))
                                  (begin
                                    (let ((_g12887_
                                           (if (##values? _g12886_)
                                               (##vector-length _g12886_)
                                               1)))
                                      (if (not (##fx= _g12887_ 2))
                                          (error "Context expects 2 values"
                                                 _g12887_)))
                                    (let ((_target1230512339_
                                           (##vector-ref _g12886_ 0))
                                          (_tl1230712341_
                                           (##vector-ref _g12886_ 1)))
                                      (if (gx#stx-null? _tl1230712341_)
                                          (letrec ((_loop1230812344_
                                                    (lambda (_hd1230612347_
                                                             _body1231212349_
                                                             _hd1231312351_)
                                                      (if (gx#stx-pair?
                                                           _hd1230612347_)
                                                          (let ((_e1230912354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1230612347_)))
                    (let ((_lp-hd1231012357_ (##car _e1230912354_))
                          (_lp-tl1231112359_ (##cdr _e1230912354_)))
                      (if (gx#stx-pair? _lp-hd1231012357_)
                          (let ((_e1231612362_ (gx#stx-e _lp-hd1231012357_)))
                            (let ((_hd1231712365_ (##car _e1231612362_))
                                  (_tl1231812367_ (##cdr _e1231612362_)))
                              (if (gx#stx-pair? _tl1231812367_)
                                  (let ((_e1231912370_
                                         (gx#stx-e _tl1231812367_)))
                                    (let ((_hd1232012373_
                                           (##car _e1231912370_))
                                          (_tl1232112375_
                                           (##cdr _e1231912370_)))
                                      (if (gx#stx-null? _tl1232112375_)
                                          (_loop1230812344_
                                           _lp-tl1231112359_
                                           (cons _hd1232012373_
                                                 _body1231212349_)
                                           (cons _hd1231712365_
                                                 _hd1231312351_))
                                          (_g1229812326_ _g1229912329_))))
                                  (_g1229812326_ _g1229912329_))))
                          (_g1229812326_ _g1229912329_))))
                  (let ((_body1231412378_ (reverse _body1231212349_))
                        (_hd1231512380_ (reverse _hd1231312351_)))
                    ((lambda (_L12383_ _L12384_)
                       (for-each
                        (lambda (_g1239812400_)
                          (apply gxc#compile-e _g1239812400_ _args12296_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1240212405_ _g1240312407_)
                                    (cons _g1240212405_ _g1240312407_))
                                  '()
                                  _L12383_))))
                     _body1231412378_
                     _hd1231512380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1230812344_
                                             _target1230512339_
                                             '()
                                             '()))
                                          (_g1229812326_ _g1229912329_)))))
                                (_g1229812326_ _g1229912329_))
                            (_g1229812326_ _g1229912329_))))
                    (_g1229812326_ _g1229912329_)))))
        (_g1229712410_ _stx12295_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12148_ . _args12149_)
      (let* ((_g1215112186_
              (lambda (_g1215212183_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1215212183_)))
             (_g1215012292_
              (lambda (_g1215212189_)
                (if (gx#stx-pair? _g1215212189_)
                    (let ((_e1215612191_ (gx#stx-e _g1215212189_)))
                      (let ((_hd1215712194_ (##car _e1215612191_))
                            (_tl1215812196_ (##cdr _e1215612191_)))
                        (if (gx#stx-pair? _tl1215812196_)
                            (let ((_e1215912199_ (gx#stx-e _tl1215812196_)))
                              (let ((_hd1216012202_ (##car _e1215912199_))
                                    (_tl1216112204_ (##cdr _e1215912199_)))
                                (if (gx#stx-pair/null? _hd1216012202_)
                                    (if (fx>= (gx#stx-length _hd1216012202_)
                                              '0)
                                        (let ((_g12888_
                                               (gx#syntax-split-splice
                                                _hd1216012202_
                                                '0)))
                                          (begin
                                            (let ((_g12889_
                                                   (if (##values? _g12888_)
                                                       (##vector-length
                                                        _g12888_)
                                                       1)))
                                              (if (not (##fx= _g12889_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12889_)))
                                            (let ((_target1216212207_
                                                   (##vector-ref _g12888_ 0))
                                                  (_tl1216412209_
                                                   (##vector-ref _g12888_ 1)))
                                              (if (gx#stx-null? _tl1216412209_)
                                                  (letrec ((_loop1216512212_
                                                            (lambda (_hd1216312215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1216912217_
                             _hd1217012219_)
                      (if (gx#stx-pair? _hd1216312215_)
                          (let ((_e1216612222_ (gx#stx-e _hd1216312215_)))
                            (let ((_lp-hd1216712225_ (##car _e1216612222_))
                                  (_lp-tl1216812227_ (##cdr _e1216612222_)))
                              (if (gx#stx-pair? _lp-hd1216712225_)
                                  (let ((_e1217312230_
                                         (gx#stx-e _lp-hd1216712225_)))
                                    (let ((_hd1217412233_
                                           (##car _e1217312230_))
                                          (_tl1217512235_
                                           (##cdr _e1217312230_)))
                                      (if (gx#stx-pair? _tl1217512235_)
                                          (let ((_e1217612238_
                                                 (gx#stx-e _tl1217512235_)))
                                            (let ((_hd1217712241_
                                                   (##car _e1217612238_))
                                                  (_tl1217812243_
                                                   (##cdr _e1217612238_)))
                                              (if (gx#stx-null? _tl1217812243_)
                                                  (_loop1216512212_
                                                   _lp-tl1216812227_
                                                   (cons _hd1217712241_
                                                         _expr1216912217_)
                                                   (cons _hd1217412233_
                                                         _hd1217012219_))
                                                  (_g1215112186_
                                                   _g1215212189_))))
                                          (_g1215112186_ _g1215212189_))))
                                  (_g1215112186_ _g1215212189_))))
                          (let ((_expr1217112246_ (reverse _expr1216912217_))
                                (_hd1217212248_ (reverse _hd1217012219_)))
                            (if (gx#stx-pair? _tl1216112204_)
                                (let ((_e1217912251_
                                       (gx#stx-e _tl1216112204_)))
                                  (let ((_hd1218012254_ (##car _e1217912251_))
                                        (_tl1218112256_ (##cdr _e1217912251_)))
                                    (if (gx#stx-null? _tl1218112256_)
                                        ((lambda (_L12259_ _L12260_ _L12261_)
                                           (for-each
                                            (lambda (_g1228012282_)
                                              (apply gxc#compile-e
                                                     _g1228012282_
                                                     _args12149_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1228412287_
                                                               _g1228512289_)
                                                        (cons _g1228412287_
                                                              _g1228512289_))
                                                      (cons _L12259_ '())
                                                      _L12260_))))
                                         _hd1218012254_
                                         _expr1217112246_
                                         _hd1217212248_)
                                        (_g1215112186_ _g1215212189_))))
                                (_g1215112186_ _g1215212189_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1216512212_
                                                     _target1216212207_
                                                     '()
                                                     '()))
                                                  (_g1215112186_
                                                   _g1215212189_)))))
                                        (_g1215112186_ _g1215212189_))
                                    (_g1215112186_ _g1215212189_))))
                            (_g1215112186_ _g1215212189_))))
                    (_g1215112186_ _g1215212189_)))))
        (_g1215012292_ _stx12148_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12080_ . _args12081_)
      (let* ((_g1208312100_
              (lambda (_g1208412097_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1208412097_)))
             (_g1208212145_
              (lambda (_g1208412103_)
                (if (gx#stx-pair? _g1208412103_)
                    (let ((_e1208712105_ (gx#stx-e _g1208412103_)))
                      (let ((_hd1208812108_ (##car _e1208712105_))
                            (_tl1208912110_ (##cdr _e1208712105_)))
                        (if (gx#stx-pair? _tl1208912110_)
                            (let ((_e1209012113_ (gx#stx-e _tl1208912110_)))
                              (let ((_hd1209112116_ (##car _e1209012113_))
                                    (_tl1209212118_ (##cdr _e1209012113_)))
                                (if (gx#stx-pair? _tl1209212118_)
                                    (let ((_e1209312121_
                                           (gx#stx-e _tl1209212118_)))
                                      (let ((_hd1209412124_
                                             (##car _e1209312121_))
                                            (_tl1209512126_
                                             (##cdr _e1209312121_)))
                                        (if (gx#stx-null? _tl1209512126_)
                                            ((lambda (_L12129_ _L12130_)
                                               (apply gxc#compile-e
                                                      _L12129_
                                                      _args12081_))
                                             _hd1209412124_
                                             _hd1209112116_)
                                            (_g1208312100_ _g1208412103_))))
                                    (_g1208312100_ _g1208412103_))))
                            (_g1208312100_ _g1208412103_))))
                    (_g1208312100_ _g1208412103_)))))
        (_g1208212145_ _stx12080_))))
  (define gxc#collect-operands
    (lambda (_stx11993_ . _args11994_)
      (let* ((_g1199612015_
              (lambda (_g1199712012_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1199712012_)))
             (_g1199512077_
              (lambda (_g1199712018_)
                (if (gx#stx-pair? _g1199712018_)
                    (let ((_e1199912020_ (gx#stx-e _g1199712018_)))
                      (let ((_hd1200012023_ (##car _e1199912020_))
                            (_tl1200112025_ (##cdr _e1199912020_)))
                        (if (gx#stx-pair/null? _tl1200112025_)
                            (if (fx>= (gx#stx-length _tl1200112025_) '0)
                                (let ((_g12890_
                                       (gx#syntax-split-splice
                                        _tl1200112025_
                                        '0)))
                                  (begin
                                    (let ((_g12891_
                                           (if (##values? _g12890_)
                                               (##vector-length _g12890_)
                                               1)))
                                      (if (not (##fx= _g12891_ 2))
                                          (error "Context expects 2 values"
                                                 _g12891_)))
                                    (let ((_target1200212028_
                                           (##vector-ref _g12890_ 0))
                                          (_tl1200412030_
                                           (##vector-ref _g12890_ 1)))
                                      (if (gx#stx-null? _tl1200412030_)
                                          (letrec ((_loop1200512033_
                                                    (lambda (_hd1200312036_
                                                             _rands1200912038_)
                                                      (if (gx#stx-pair?
                                                           _hd1200312036_)
                                                          (let ((_e1200612041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1200312036_)))
                    (let ((_lp-hd1200712044_ (##car _e1200612041_))
                          (_lp-tl1200812046_ (##cdr _e1200612041_)))
                      (_loop1200512033_
                       _lp-tl1200812046_
                       (cons _lp-hd1200712044_ _rands1200912038_))))
                  (let ((_rands1201012049_ (reverse _rands1200912038_)))
                    ((lambda (_L12052_)
                       (for-each
                        (lambda (_g1206512067_)
                          (apply gxc#compile-e _g1206512067_ _args11994_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1206912072_ _g1207012074_)
                                    (cons _g1206912072_ _g1207012074_))
                                  '()
                                  _L12052_))))
                     _rands1201012049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1200512033_
                                             _target1200212028_
                                             '()))
                                          (_g1199612015_ _g1199712018_)))))
                                (_g1199612015_ _g1199712018_))
                            (_g1199612015_ _g1199712018_))))
                    (_g1199612015_ _g1199712018_)))))
        (_g1199512077_ _stx11993_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11924_)
      (let* ((_g1192611943_
              (lambda (_g1192711940_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1192711940_)))
             (_g1192511990_
              (lambda (_g1192711946_)
                (if (gx#stx-pair? _g1192711946_)
                    (let ((_e1193011948_ (gx#stx-e _g1192711946_)))
                      (let ((_hd1193111951_ (##car _e1193011948_))
                            (_tl1193211953_ (##cdr _e1193011948_)))
                        (if (gx#stx-pair? _tl1193211953_)
                            (let ((_e1193311956_ (gx#stx-e _tl1193211953_)))
                              (let ((_hd1193411959_ (##car _e1193311956_))
                                    (_tl1193511961_ (##cdr _e1193311956_)))
                                (if (gx#stx-pair? _tl1193511961_)
                                    (let ((_e1193611964_
                                           (gx#stx-e _tl1193511961_)))
                                      (let ((_hd1193711967_
                                             (##car _e1193611964_))
                                            (_tl1193811969_
                                             (##cdr _e1193611964_)))
                                        (if (gx#stx-null? _tl1193811969_)
                                            ((lambda (_L11972_ _L11973_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11988_)
                                                  (if (gx#identifier?
                                                       _bind11988_)
                                                      (gxc#add-module-binding!
                                                       _bind11988_
                                                       '#f)
                                                      '#!void))
                                                _L11973_))
                                             _hd1193711967_
                                             _hd1193411959_)
                                            (_g1192611943_ _g1192711946_))))
                                    (_g1192611943_ _g1192711946_))))
                            (_g1192611943_ _g1192711946_))))
                    (_g1192611943_ _g1192711946_)))))
        (_g1192511990_ _stx11924_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11857_)
      (let* ((_g1185911876_
              (lambda (_g1186011873_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1186011873_)))
             (_g1185811921_
              (lambda (_g1186011879_)
                (if (gx#stx-pair? _g1186011879_)
                    (let ((_e1186311881_ (gx#stx-e _g1186011879_)))
                      (let ((_hd1186411884_ (##car _e1186311881_))
                            (_tl1186511886_ (##cdr _e1186311881_)))
                        (if (gx#stx-pair? _tl1186511886_)
                            (let ((_e1186611889_ (gx#stx-e _tl1186511886_)))
                              (let ((_hd1186711892_ (##car _e1186611889_))
                                    (_tl1186811894_ (##cdr _e1186611889_)))
                                (if (gx#stx-pair? _tl1186811894_)
                                    (let ((_e1186911897_
                                           (gx#stx-e _tl1186811894_)))
                                      (let ((_hd1187011900_
                                             (##car _e1186911897_))
                                            (_tl1187111902_
                                             (##cdr _e1186911897_)))
                                        (if (gx#stx-null? _tl1187111902_)
                                            ((lambda (_L11905_ _L11906_)
                                               (gxc#add-module-binding!
                                                _L11906_
                                                '#t))
                                             _hd1187011900_
                                             _hd1186711892_)
                                            (_g1185911876_ _g1186011879_))))
                                    (_g1185911876_ _g1186011879_))))
                            (_g1185911876_ _g1186011879_))))
                    (_g1185911876_ _g1186011879_)))))
        (_g1185811921_ _stx11857_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11799_ _modules11800_)
      (let* ((_g1180211816_
              (lambda (_g1180311813_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1180311813_)))
             (_g1180111854_
              (lambda (_g1180311819_)
                (if (gx#stx-pair? _g1180311819_)
                    (let ((_e1180611821_ (gx#stx-e _g1180311819_)))
                      (let ((_hd1180711824_ (##car _e1180611821_))
                            (_tl1180811826_ (##cdr _e1180611821_)))
                        (if (gx#stx-pair? _tl1180811826_)
                            (let ((_e1180911829_ (gx#stx-e _tl1180811826_)))
                              (let ((_hd1181011832_ (##car _e1180911829_))
                                    (_tl1181111834_ (##cdr _e1180911829_)))
                                ((lambda (_L11837_ _L11838_)
                                   (let ((_ctx11851_
                                          (gx#syntax-local-e__0 _L11838_)))
                                     (begin
                                       (set-box!
                                        _modules11800_
                                        (cons _ctx11851_
                                              (unbox _modules11800_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11851_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11800_))
                                        gx#current-expander-context
                                        _ctx11851_))))
                                 _tl1181111834_
                                 _hd1181011832_)))
                            (_g1180211816_ _g1180311819_))))
                    (_g1180211816_ _g1180311819_)))))
        (_g1180111854_ _stx11799_))))
  (define gxc#add-module-binding!
    (lambda (_id11793_ _syntax?11794_)
      (let ((_eid11796_
             (##structure-ref
              (gx#resolve-identifier__0 _id11793_)
              '1
              gx#binding::t
              '#f))
            (_ht11797_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11796_)
            '#!void
            (table-set!
             _ht11797_
             _eid11796_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11796_)
              _syntax?11794_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id111786_ _id211787_)
      (letrec ((_symbol-e11789_
                (lambda (_id11791_)
                  (if (symbol? _id11791_)
                      _id11791_
                      (gxc#generate-runtime-binding-id _id11791_)))))
        (eq? (_symbol-e11789_ _id111786_) (_symbol-e11789_ _id211787_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11764_)
      (let ((_$e11766_
             (if (##structure-direct-instance-of?
                  _id11764_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11764_)
                 '#f)))
        (if _$e11766_
            ((lambda (_bind11769_)
               (let ((_eid11771_
                      (##structure-ref _bind11769_ '1 gx#binding::t '#f))
                     (_ht11772_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11771_)
                     _eid11771_
                     (let ((_$e11774_ (table-ref _ht11772_ _eid11771_ '#f)))
                       (if _$e11774_
                           (values _$e11774_)
                           (if (##structure-instance-of?
                                _bind11769_
                                'gx#local-binding::t)
                               (let ((_gid11777_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11771_)))
                                 (begin
                                   (table-set! _ht11772_ _eid11771_ _gid11777_)
                                   _gid11777_))
                               (if (##structure-instance-of?
                                    _bind11769_
                                    'gx#module-binding::t)
                                   (let ((_gid11784_
                                          (let ((_$e11779_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11769_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11779_
                                                ((lambda (_ns11782_)
                                                   (make-symbol
                                                    _ns11782_
                                                    '"#"
                                                    _eid11771_))
                                                 _$e11779_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11771_)))))
                                     (begin
                                       (table-set!
                                        _ht11772_
                                        _eid11771_
                                        _gid11784_)
                                       _gid11784_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11764_
                                    _eid11771_
                                    _bind11769_))))))))
             _$e11766_)
            (if (interned-symbol? (gx#stx-e _id11764_))
                (gx#stx-e _id11764_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11764_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11762_)
      (if (gx#identifier? _id11762_)
          (gxc#generate-runtime-binding-id _id11762_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11742_ _quote?11743_)
        (let* ((_ht11745_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11747_ (table-ref _ht11745_ _sym11742_ '#f)))
          (if _$e11747_
              (values _$e11747_)
              (let ((_g11750_
                     (if _quote?11743_
                         (make-symbol
                          '"__"
                          _sym11742_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11742_ '"_"))))
                (begin
                  (table-set! _ht11745_ _sym11742_ _g11750_)
                  _g11750_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11755_)
          (let ((_quote?11757_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11755_
             _quote?11757_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12893_
          (let ((_g12892_ (length _g12893_)))
            (cond ((##fx= _g12892_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12893_))
                  ((##fx= _g12892_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12893_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12893_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11739_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11739_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11699_)
      (if (interned-symbol? _key11699_)
          _key11699_
          (if (uninterned-symbol? _key11699_)
              (gxc#generate-runtime-gensym-reference__0 _key11699_)
              (let* ((_key1170011707_ _key11699_)
                     (_E1170211711_
                      (lambda ()
                        (error '"No clause matching" _key1170011707_)))
                     (_K1170311727_
                      (lambda (_mark11714_ _eid11715_)
                        (let ((_$e11717_
                               (##structure-ref
                                _mark11714_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11717_
                              ((lambda (_ht11720_)
                                 (let ((_$e11722_
                                        (table-ref _ht11720_ _eid11715_ '#f)))
                                   (if _$e11722_
                                       ((lambda (_id11725_)
                                          (if (interned-symbol? _id11725_)
                                              _id11725_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11725_)))
                                        _$e11722_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11715_))))
                               _$e11717_)
                              (gxc#generate-runtime-identifier-key
                               _eid11715_))))))
                (if (##pair? _key1170011707_)
                    (let ((_hd1170411730_ (##car _key1170011707_))
                          (_tl1170511732_ (##cdr _key1170011707_)))
                      (let* ((_eid11735_ _hd1170411730_)
                             (_mark11737_ _tl1170511732_))
                        (_K1170311727_ _mark11737_ _eid11735_)))
                    (_E1170211711_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11686_)
        (if _top11686_
            (let ((_ns11688_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11689_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11689_)
                  (make-symbol
                   _ns11688_
                   '"["
                   (number->string _phi11689_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11688_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11695_ '#f))
            (gxc#generate-runtime-temporary__% _top11695_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12895_
          (let ((_g12894_ (length _g12895_)))
            (cond ((##fx= _g12894_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12895_))
                  ((##fx= _g12894_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12895_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12895_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11683_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11603_)
      (let* ((_g1160511615_
              (lambda (_g1160611612_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1160611612_)))
             (_g1160411680_
              (lambda (_g1160611618_)
                (if (gx#stx-pair? _g1160611618_)
                    (let ((_e1160811620_ (gx#stx-e _g1160611618_)))
                      (let ((_hd1160911623_ (##car _e1160811620_))
                            (_tl1161011625_ (##cdr _e1160811620_)))
                        ((lambda (_L11628_)
                           (let* ((_body11638_
                                   (gx#stx-map1 gxc#compile-e _L11628_))
                                  (_body11677_
                                   (filter (lambda (_stx11640_)
                                             (let* ((_g1164311652_
                                                     (lambda (_g1164411649_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1164411649_)))
                                                    (_g1164211659_
                                                     (lambda (_g1164411655_)
                                                       ((lambda () '#t))))
                                                    (_g1164111674_
                                                     (lambda (_g1164411662_)
                                                       (if (gx#stx-pair?
                                                            _g1164411662_)
                                                           (let ((_e1164511664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1164411662_)))
                     (let ((_hd1164611667_ (##car _e1164511664_))
                           (_tl1164711669_ (##cdr _e1164511664_)))
                       (if (gx#identifier? _hd1164611667_)
                           (if (gx#stx-eq? 'begin _hd1164611667_)
                               (if (gx#stx-null? _tl1164711669_)
                                   ((lambda () '#f))
                                   (_g1164211659_ _g1164411662_))
                               (_g1164211659_ _g1164411662_))
                           (_g1164211659_ _g1164411662_))))
                   (_g1164211659_ _g1164411662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1164111674_ _stx11640_)))
                                           _body11638_)))
                             (if (fx= (length _body11677_) '1)
                                 (car _body11677_)
                                 (cons 'begin _body11677_))))
                         _tl1161011625_)))
                    (_g1160511615_ _g1160611618_)))))
        (_g1160411680_ _stx11603_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11565_)
      (let* ((_g1156711577_
              (lambda (_g1156811574_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1156811574_)))
             (_g1156611600_
              (lambda (_g1156811580_)
                (if (gx#stx-pair? _g1156811580_)
                    (let ((_e1157011582_ (gx#stx-e _g1156811580_)))
                      (let ((_hd1157111585_ (##car _e1157011582_))
                            (_tl1157211587_ (##cdr _e1157011582_)))
                        ((lambda (_L11590_)
                           (cons 'begin (gx#syntax->datum _L11590_)))
                         _tl1157211587_)))
                    (_g1156711577_ _g1156811580_)))))
        (_g1156611600_ _stx11565_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11442_)
      (let* ((_g1144511473_
              (lambda (_g1144611470_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1144611470_)))
             (_g1144411518_
              (lambda (_g1144611476_)
                (if (gx#stx-pair? _g1144611476_)
                    (let ((_e1146011478_ (gx#stx-e _g1144611476_)))
                      (let ((_hd1146111481_ (##car _e1146011478_))
                            (_tl1146211483_ (##cdr _e1146011478_)))
                        (if (gx#stx-pair? _tl1146211483_)
                            (let ((_e1146311486_ (gx#stx-e _tl1146211483_)))
                              (let ((_hd1146411489_ (##car _e1146311486_))
                                    (_tl1146511491_ (##cdr _e1146311486_)))
                                (if (gx#stx-pair? _tl1146511491_)
                                    (let ((_e1146611494_
                                           (gx#stx-e _tl1146511491_)))
                                      (let ((_hd1146711497_
                                             (##car _e1146611494_))
                                            (_tl1146811499_
                                             (##cdr _e1146611494_)))
                                        (if (gx#stx-null? _tl1146811499_)
                                            ((lambda (_L11502_ _L11503_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L11503_))
                   (cons (gxc#compile-e _L11502_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1146711497_
                                             _hd1146411489_)
                                            (_g1144511473_ _g1144611476_))))
                                    (_g1144511473_ _g1144611476_))))
                            (_g1144511473_ _g1144611476_))))
                    (_g1144511473_ _g1144611476_))))
             (_g1144311562_
              (lambda (_g1144611521_)
                (if (gx#stx-pair? _g1144611521_)
                    (let ((_e1144911523_ (gx#stx-e _g1144611521_)))
                      (let ((_hd1145011526_ (##car _e1144911523_))
                            (_tl1145111528_ (##cdr _e1144911523_)))
                        (if (gx#stx-pair? _tl1145111528_)
                            (let ((_e1145211531_ (gx#stx-e _tl1145111528_)))
                              (let ((_hd1145311534_ (##car _e1145211531_))
                                    (_tl1145411536_ (##cdr _e1145211531_)))
                                (if (gx#stx-pair? _tl1145411536_)
                                    (let ((_e1145511539_
                                           (gx#stx-e _tl1145411536_)))
                                      (let ((_hd1145611542_
                                             (##car _e1145511539_))
                                            (_tl1145711544_
                                             (##cdr _e1145511539_)))
                                        (if (gx#stx-null? _tl1145711544_)
                                            ((lambda (_L11547_ _L11548_)
                                               (if (gx#identifier? _L11548_)
                                                   (gxc#compile-e _L11547_)
                                                   (_g1144411518_
                                                    _g1144611521_)))
                                             _hd1145611542_
                                             _hd1145311534_)
                                            (_g1144411518_ _g1144611521_))))
                                    (_g1144411518_ _g1144611521_))))
                            (_g1144411518_ _g1144611521_))))
                    (_g1144411518_ _g1144611521_)))))
        (_g1144311562_ _stx11442_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11404_)
      (let* ((_g1140611416_
              (lambda (_g1140711413_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1140711413_)))
             (_g1140511439_
              (lambda (_g1140711419_)
                (if (gx#stx-pair? _g1140711419_)
                    (let ((_e1140911421_ (gx#stx-e _g1140711419_)))
                      (let ((_hd1141011424_ (##car _e1140911421_))
                            (_tl1141111426_ (##cdr _e1140911421_)))
                        ((lambda (_L11429_)
                           (cons 'declare (map gx#syntax->datum _L11429_)))
                         _tl1141111426_)))
                    (_g1140611416_ _g1140711419_)))))
        (_g1140511439_ _stx11404_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11160_)
      (let* ((_g1116211179_
              (lambda (_g1116311176_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1116311176_)))
             (_g1116111401_
              (lambda (_g1116311182_)
                (if (gx#stx-pair? _g1116311182_)
                    (let ((_e1116611184_ (gx#stx-e _g1116311182_)))
                      (let ((_hd1116711187_ (##car _e1116611184_))
                            (_tl1116811189_ (##cdr _e1116611184_)))
                        (if (gx#stx-pair? _tl1116811189_)
                            (let ((_e1116911192_ (gx#stx-e _tl1116811189_)))
                              (let ((_hd1117011195_ (##car _e1116911192_))
                                    (_tl1117111197_ (##cdr _e1116911192_)))
                                (if (gx#stx-pair? _tl1117111197_)
                                    (let ((_e1117211200_
                                           (gx#stx-e _tl1117111197_)))
                                      (let ((_hd1117311203_
                                             (##car _e1117211200_))
                                            (_tl1117411205_
                                             (##cdr _e1117211200_)))
                                        (if (gx#stx-null? _tl1117411205_)
                                            ((lambda (_L11208_ _L11209_)
                                               (let* ((_g1122611239_
                                                       (lambda (_g1122711236_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1122711236_)))
                                                      (_g1122511353_
                                                       (lambda (_g1122711242_)
                                                         ((lambda ()
                                                            (let* ((_tmp11246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body11350_
                            (let _lp11248_ ((_rest11250_ _L11209_)
                                            (_k11251_ '0)
                                            (_r11252_ '()))
                              (let* ((_g1125711273_
                                      (lambda (_g1125811270_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1125811270_)))
                                     (_g1125611280_
                                      (lambda (_g1125811276_)
                                        ((lambda () (reverse _r11252_)))))
                                     (_g1125511301_
                                      (lambda (_g1125811283_)
                                        ((lambda (_L11285_)
                                           (if (gx#identifier? _L11285_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L11285_)
                                 (cons (gxc#generate-runtime-values->list
                                        _tmp11246_
                                        _k11251_)
                                       '())))
                     '())
               _r11252_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1125611280_ _g1125811283_)))
                                         _g1125811283_)))
                                     (_g1125411325_
                                      (lambda (_g1125811304_)
                                        (if (gx#stx-pair? _g1125811304_)
                                            (let ((_e1126511306_
                                                   (gx#stx-e _g1125811304_)))
                                              (let ((_hd1126611309_
                                                     (##car _e1126511306_))
                                                    (_tl1126711311_
                                                     (##cdr _e1126511306_)))
                                                ((lambda (_L11314_ _L11315_)
                                                   (_lp11248_
                                                    _L11314_
                                                    (fx+ _k11251_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L11315_)
                              (cons (gxc#generate-runtime-values-ref
                                     _tmp11246_
                                     _k11251_
                                     _L11314_)
                                    '())))
                  _r11252_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1126711311_
                                                 _hd1126611309_)))
                                            (_g1125511301_ _g1125811304_))))
                                     (_g1125311347_
                                      (lambda (_g1125811328_)
                                        (if (gx#stx-pair? _g1125811328_)
                                            (let ((_e1126011330_
                                                   (gx#stx-e _g1125811328_)))
                                              (let ((_hd1126111333_
                                                     (##car _e1126011330_))
                                                    (_tl1126211335_
                                                     (##cdr _e1126011330_)))
                                                (if (gx#stx-datum?
                                                     _hd1126111333_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1126111333_)
                        '#f)
                ((lambda (_L11338_)
                   (_lp11248_ _L11338_ (fx+ _k11251_ '1) _r11252_))
                 _tl1126211335_)
                (_g1125411325_ _g1125811328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1125411325_
                                                     _g1125811328_))))
                                            (_g1125411325_ _g1125811328_)))))
                                (_g1125311347_ _rest11250_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp11246_
                                              (cons (gxc#compile-e _L11208_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp11246_
                                         _L11209_
                                         _L11208_)
                                        _body11350_))))))))
              (_g1122411383_
               (lambda (_g1122711356_)
                 (if (gx#stx-pair? _g1122711356_)
                     (let ((_e1123211358_ (gx#stx-e _g1122711356_)))
                       (let ((_hd1123311361_ (##car _e1123211358_))
                             (_tl1123411363_ (##cdr _e1123211358_)))
                         (if (gx#stx-null? _tl1123411363_)
                             ((lambda (_L11366_)
                                (let ((_eid11375_
                                       (gxc#generate-runtime-binding-id
                                        _L11366_)))
                                  (begin
                                    (let ((_lambda-expr1137611378_
                                           (gxc#apply-find-lambda-expression
                                            _L11208_)))
                                      (if _lambda-expr1137611378_
                                          (let ((_lambda-expr11381_
                                                 _lambda-expr1137611378_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr11381_
                                             _eid11375_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid11375_
                                                (cons (gxc#compile-e _L11208_)
                                                      '()))))))
                              _hd1123311361_)
                             (_g1122511353_ _g1122711356_))))
                     (_g1122511353_ _g1122711356_))))
              (_g1122311398_
               (lambda (_g1122711386_)
                 (if (gx#stx-pair? _g1122711386_)
                     (let ((_e1122811388_ (gx#stx-e _g1122711386_)))
                       (let ((_hd1122911391_ (##car _e1122811388_))
                             (_tl1123011393_ (##cdr _e1122811388_)))
                         (if (gx#stx-datum? _hd1122911391_)
                             (if (equal? (gx#stx-e _hd1122911391_) '#f)
                                 (if (gx#stx-null? _tl1123011393_)
                                     ((lambda () (gxc#compile-e _L11208_)))
                                     (_g1122411383_ _g1122711386_))
                                 (_g1122411383_ _g1122711386_))
                             (_g1122411383_ _g1122711386_))))
                     (_g1122411383_ _g1122711386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1122311398_ _L11209_)))
                                             _hd1117311203_
                                             _hd1117011195_)
                                            (_g1116211179_ _g1116311182_))))
                                    (_g1116211179_ _g1116311182_))))
                            (_g1116211179_ _g1116311182_))))
                    (_g1116211179_ _g1116311182_)))))
        (_g1116111401_ _stx11160_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11136_ _hd11137_ _expr11138_)
      (let ((_$e11140_ (gxc#apply-count-values _expr11138_)))
        (if _$e11140_
            ((lambda (_count11143_)
               (let ((_len11145_ (gx#stx-length _hd11137_))
                     (_cmp11146_ (if (gx#stx-list? _hd11137_) fx= fx>=)))
                 (if (let ((_$e11148_ (fx= _len11145_ '0)))
                       (if _$e11148_
                           _$e11148_
                           (_cmp11146_ _count11143_ _len11145_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11138_
                      _hd11137_))))
             _$e11140_)
            (let* ((_len11151_ (gx#stx-length _hd11137_))
                   (_cmp11153_ (if (gx#stx-list? _hd11137_) '##fx= '##fx>=))
                   (_errmsg11155_
                    (string-append
                     (if (gx#stx-list? _hd11137_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11151_)
                     '" values"))
                   (_count11157_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11137_)) (fx= _len11151_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11157_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11136_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11157_ (cons _len11151_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11157_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11134_)
      (cons 'if
            (cons (cons '##values? (cons _var11134_ '()))
                  (cons (cons '##vector-length (cons _var11134_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11130_ _i11131_ _rest11132_)
      (if (if (fx= _i11131_ '0) (not (gx#stx-pair? _rest11132_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11130_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11130_ (cons '0 '())))
                            (cons _var11130_ '()))))
          (cons '##vector-ref (cons _var11130_ (cons _i11131_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11127_ _i11128_)
      (if (fx= _i11128_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11127_ '()))
                      (cons (cons '##vector->list (cons _var11127_ '()))
                            (cons (cons 'list (cons _var11127_ '())) '()))))
          (if (fx= _i11128_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11127_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11127_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11127_ '()))
                          (cons _i11128_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11060_)
      (let* ((_g1106211079_
              (lambda (_g1106311076_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1106311076_)))
             (_g1106111124_
              (lambda (_g1106311082_)
                (if (gx#stx-pair? _g1106311082_)
                    (let ((_e1106611084_ (gx#stx-e _g1106311082_)))
                      (let ((_hd1106711087_ (##car _e1106611084_))
                            (_tl1106811089_ (##cdr _e1106611084_)))
                        (if (gx#stx-pair? _tl1106811089_)
                            (let ((_e1106911092_ (gx#stx-e _tl1106811089_)))
                              (let ((_hd1107011095_ (##car _e1106911092_))
                                    (_tl1107111097_ (##cdr _e1106911092_)))
                                (if (gx#stx-pair? _tl1107111097_)
                                    (let ((_e1107211100_
                                           (gx#stx-e _tl1107111097_)))
                                      (let ((_hd1107311103_
                                             (##car _e1107211100_))
                                            (_tl1107411105_
                                             (##cdr _e1107211100_)))
                                        (if (gx#stx-null? _tl1107411105_)
                                            ((lambda (_L11108_ _L11109_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11109_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11108_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1107311103_
                                             _hd1107011095_)
                                            (_g1106211079_ _g1106311082_))))
                                    (_g1106211079_ _g1106311082_))))
                            (_g1106211079_ _g1106311082_))))
                    (_g1106211079_ _g1106311082_)))))
        (_g1106111124_ _stx11060_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11058_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11058_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9601_)
      (letrec ((_dispatch-case?9603_
                (lambda (_hd10288_ _body10289_)
                  (let* ((_form10291_ (cons _hd10288_ (cons _body10289_ '())))
                         (_g1029610453_
                          (lambda (_g1029710450_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1029710450_)))
                         (_g1029510460_
                          (lambda (_g1029710456_) ((lambda () '#f))))
                         (_g1029410601_
                          (lambda (_g1029710463_)
                            (if (gx#stx-pair? _g1029710463_)
                                (let ((_e1041310465_ (gx#stx-e _g1029710463_)))
                                  (let ((_hd1041410468_ (##car _e1041310465_))
                                        (_tl1041510470_ (##cdr _e1041310465_)))
                                    (if (gx#stx-pair? _tl1041510470_)
                                        (let ((_e1041610473_
                                               (gx#stx-e _tl1041510470_)))
                                          (let ((_hd1041710476_
                                                 (##car _e1041610473_))
                                                (_tl1041810478_
                                                 (##cdr _e1041610473_)))
                                            (if (gx#stx-pair? _hd1041710476_)
                                                (let ((_e1041910481_
                                                       (gx#stx-e
                                                        _hd1041710476_)))
                                                  (let ((_hd1042010484_
                                                         (##car _e1041910481_))
                                                        (_tl1042110486_
                                                         (##cdr _e1041910481_)))
                                                    (if (gx#identifier?
                                                         _hd1042010484_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1042010484_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1042110486_)
                        (let ((_e1042210489_ (gx#stx-e _tl1042110486_)))
                          (let ((_hd1042310492_ (##car _e1042210489_))
                                (_tl1042410494_ (##cdr _e1042210489_)))
                            (if (gx#stx-pair? _hd1042310492_)
                                (let ((_e1042510497_
                                       (gx#stx-e _hd1042310492_)))
                                  (let ((_hd1042610500_ (##car _e1042510497_))
                                        (_tl1042710502_ (##cdr _e1042510497_)))
                                    (if (gx#identifier? _hd1042610500_)
                                        (if (gx#stx-eq? '%#ref _hd1042610500_)
                                            (if (gx#stx-pair? _tl1042710502_)
                                                (let ((_e1042810505_
                                                       (gx#stx-e
                                                        _tl1042710502_)))
                                                  (let ((_hd1042910508_
                                                         (##car _e1042810505_))
                                                        (_tl1043010510_
                                                         (##cdr _e1042810505_)))
                                                    (if (gx#stx-null?
                                                         _tl1043010510_)
                                                        (if (gx#stx-pair?
                                                             _tl1042410494_)
                                                            (let ((_e1043110513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1042410494_)))
                      (let ((_hd1043210516_ (##car _e1043110513_))
                            (_tl1043310518_ (##cdr _e1043110513_)))
                        (if (gx#stx-pair? _hd1043210516_)
                            (let ((_e1043410521_ (gx#stx-e _hd1043210516_)))
                              (let ((_hd1043510524_ (##car _e1043410521_))
                                    (_tl1043610526_ (##cdr _e1043410521_)))
                                (if (gx#identifier? _hd1043510524_)
                                    (if (gx#stx-eq? '%#ref _hd1043510524_)
                                        (if (gx#stx-pair? _tl1043610526_)
                                            (let ((_e1043710529_
                                                   (gx#stx-e _tl1043610526_)))
                                              (let ((_hd1043810532_
                                                     (##car _e1043710529_))
                                                    (_tl1043910534_
                                                     (##cdr _e1043710529_)))
                                                (if (gx#stx-null?
                                                     _tl1043910534_)
                                                    (if (gx#stx-pair?
                                                         _tl1043310518_)
                                                        (let ((_e1044010537_
                                                               (gx#stx-e
                                                                _tl1043310518_)))
                                                          (let ((_hd1044110540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044010537_))
                        (_tl1044210542_ (##cdr _e1044010537_)))
                    (if (gx#stx-pair? _hd1044110540_)
                        (let ((_e1044310545_ (gx#stx-e _hd1044110540_)))
                          (let ((_hd1044410548_ (##car _e1044310545_))
                                (_tl1044510550_ (##cdr _e1044310545_)))
                            (if (gx#identifier? _hd1044410548_)
                                (if (gx#stx-eq? '%#ref _hd1044410548_)
                                    (if (gx#stx-pair? _tl1044510550_)
                                        (let ((_e1044610553_
                                               (gx#stx-e _tl1044510550_)))
                                          (let ((_hd1044710556_
                                                 (##car _e1044610553_))
                                                (_tl1044810558_
                                                 (##cdr _e1044610553_)))
                                            (if (gx#stx-null? _tl1044810558_)
                                                (if (gx#stx-null?
                                                     _tl1044210542_)
                                                    (if (gx#stx-null?
                                                         _tl1041810478_)
                                                        ((lambda (_L10561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10562_
                          _L10563_
                          _L10564_)
                   (if (if (gx#identifier? _L10564_)
                           (if (gxc#runtime-identifier=? _L10563_ 'apply)
                               (if (gx#free-identifier=? _L10564_ _L10561_)
                                   (not (gx#free-identifier=?
                                         _L10562_
                                         _L10564_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g1029510460_ _g1029710463_)))
                 _hd1044710556_
                 _hd1043810532_
                 _hd1042910508_
                 _hd1041410468_)
                (_g1029510460_ _g1029710463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510460_
                                                     _g1029710463_))
                                                (_g1029510460_
                                                 _g1029710463_))))
                                        (_g1029510460_ _g1029710463_))
                                    (_g1029510460_ _g1029710463_))
                                (_g1029510460_ _g1029710463_))))
                        (_g1029510460_ _g1029710463_))))
                (_g1029510460_ _g1029710463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029510460_
                                                     _g1029710463_))))
                                            (_g1029510460_ _g1029710463_))
                                        (_g1029510460_ _g1029710463_))
                                    (_g1029510460_ _g1029710463_))))
                            (_g1029510460_ _g1029710463_))))
                    (_g1029510460_ _g1029710463_))
                (_g1029510460_ _g1029710463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029510460_ _g1029710463_))
                                            (_g1029510460_ _g1029710463_))
                                        (_g1029510460_ _g1029710463_))))
                                (_g1029510460_ _g1029710463_))))
                        (_g1029510460_ _g1029710463_))
                    (_g1029510460_ _g1029710463_))
                (_g1029510460_ _g1029710463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029510460_
                                                 _g1029710463_))))
                                        (_g1029510460_ _g1029710463_))))
                                (_g1029510460_ _g1029710463_))))
                         (_g1029310861_
                          (lambda (_g1029710604_)
                            (if (gx#stx-pair? _g1029710604_)
                                (let ((_e1034910606_ (gx#stx-e _g1029710604_)))
                                  (let ((_hd1035010609_ (##car _e1034910606_))
                                        (_tl1035110611_ (##cdr _e1034910606_)))
                                    (if (gx#stx-pair/null? _hd1035010609_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1035010609_)
                                                  '0)
                                            (let ((_g12896_
                                                   (gx#syntax-split-splice
                                                    _hd1035010609_
                                                    '0)))
                                              (begin
                                                (let ((_g12897_
                                                       (if (##values? _g12896_)
                                                           (##vector-length
                                                            _g12896_)
                                                           1)))
                                                  (if (not (##fx= _g12897_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12897_)))
                                                (let ((_target1035210614_
                                                       (##vector-ref
                                                        _g12896_
                                                        0))
                                                      (_tl1035410616_
                                                       (##vector-ref
                                                        _g12896_
                                                        1)))
                                                  (letrec ((_loop1035510619_
                                                            (lambda (_hd1035310622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1035910624_)
                      (if (gx#stx-pair? _hd1035310622_)
                          (let ((_e1035610627_ (gx#stx-e _hd1035310622_)))
                            (let ((_lp-hd1035710630_ (##car _e1035610627_))
                                  (_lp-tl1035810632_ (##cdr _e1035610627_)))
                              (_loop1035510619_
                               _lp-tl1035810632_
                               (cons _lp-hd1035710630_ _arg1035910624_))))
                          (let ((_arg1036010635_ (reverse _arg1035910624_)))
                            (if (gx#stx-pair? _tl1035110611_)
                                (let ((_e1036110638_
                                       (gx#stx-e _tl1035110611_)))
                                  (let ((_hd1036210641_ (##car _e1036110638_))
                                        (_tl1036310643_ (##cdr _e1036110638_)))
                                    (if (gx#stx-pair? _hd1036210641_)
                                        (let ((_e1036410646_
                                               (gx#stx-e _hd1036210641_)))
                                          (let ((_hd1036510649_
                                                 (##car _e1036410646_))
                                                (_tl1036610651_
                                                 (##cdr _e1036410646_)))
                                            (if (gx#identifier? _hd1036510649_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1036510649_)
                                                    (if (gx#stx-pair?
                                                         _tl1036610651_)
                                                        (let ((_e1036710654_
                                                               (gx#stx-e
                                                                _tl1036610651_)))
                                                          (let ((_hd1036810657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1036710654_))
                        (_tl1036910659_ (##cdr _e1036710654_)))
                    (if (gx#stx-pair? _hd1036810657_)
                        (let ((_e1037010662_ (gx#stx-e _hd1036810657_)))
                          (let ((_hd1037110665_ (##car _e1037010662_))
                                (_tl1037210667_ (##cdr _e1037010662_)))
                            (if (gx#identifier? _hd1037110665_)
                                (if (gx#stx-eq? '%#ref _hd1037110665_)
                                    (if (gx#stx-pair? _tl1037210667_)
                                        (let ((_e1037310670_
                                               (gx#stx-e _tl1037210667_)))
                                          (let ((_hd1037410673_
                                                 (##car _e1037310670_))
                                                (_tl1037510675_
                                                 (##cdr _e1037310670_)))
                                            (if (gx#stx-null? _tl1037510675_)
                                                (if (gx#stx-pair?
                                                     _tl1036910659_)
                                                    (let ((_e1037610678_
                                                           (gx#stx-e
                                                            _tl1036910659_)))
                                                      (let ((_hd1037710681_
                                                             (##car _e1037610678_))
                                                            (_tl1037810683_
                                                             (##cdr _e1037610678_)))
                                                        (if (gx#stx-pair?
                                                             _hd1037710681_)
                                                            (let ((_e1037910686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1037710681_)))
                      (let ((_hd1038010689_ (##car _e1037910686_))
                            (_tl1038110691_ (##cdr _e1037910686_)))
                        (if (gx#identifier? _hd1038010689_)
                            (if (gx#stx-eq? '%#ref _hd1038010689_)
                                (if (gx#stx-pair? _tl1038110691_)
                                    (let ((_e1038210694_
                                           (gx#stx-e _tl1038110691_)))
                                      (let ((_hd1038310697_
                                             (##car _e1038210694_))
                                            (_tl1038410699_
                                             (##cdr _e1038210694_)))
                                        (if (gx#stx-null? _tl1038410699_)
                                            (if (gx#stx-pair/null?
                                                 _tl1037810683_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1037810683_)
                                                          '1)
                                                    (let ((_g12898_
                                                           (gx#syntax-split-splice
                                                            _tl1037810683_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12899_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12898_)
                           (##vector-length _g12898_)
                           1)))
                  (if (not (##fx= _g12899_ 2))
                      (error "Context expects 2 values" _g12899_)))
                (let ((_target1038510702_ (##vector-ref _g12898_ 0))
                      (_tl1038710704_ (##vector-ref _g12898_ 1)))
                  (if (gx#stx-pair? _tl1038710704_)
                      (let ((_e1039410707_ (gx#stx-e _tl1038710704_)))
                        (let ((_hd1039510710_ (##car _e1039410707_))
                              (_tl1039610712_ (##cdr _e1039410707_)))
                          (if (gx#stx-pair? _hd1039510710_)
                              (let ((_e1039710715_ (gx#stx-e _hd1039510710_)))
                                (let ((_hd1039810718_ (##car _e1039710715_))
                                      (_tl1039910720_ (##cdr _e1039710715_)))
                                  (if (gx#identifier? _hd1039810718_)
                                      (if (gx#stx-eq? '%#ref _hd1039810718_)
                                          (if (gx#stx-pair? _tl1039910720_)
                                              (let ((_e1040010723_
                                                     (gx#stx-e
                                                      _tl1039910720_)))
                                                (let ((_hd1040110726_
                                                       (##car _e1040010723_))
                                                      (_tl1040210728_
                                                       (##cdr _e1040010723_)))
                                                  (if (gx#stx-null?
                                                       _tl1040210728_)
                                                      (if (gx#stx-null?
                                                           _tl1039610712_)
                                                          (letrec ((_loop1038810731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1038610734_ _xarg1039210736_)
                              (if (gx#stx-pair? _hd1038610734_)
                                  (let ((_e1038910739_
                                         (gx#stx-e _hd1038610734_)))
                                    (let ((_lp-hd1039010742_
                                           (##car _e1038910739_))
                                          (_lp-tl1039110744_
                                           (##cdr _e1038910739_)))
                                      (if (gx#stx-pair? _lp-hd1039010742_)
                                          (let ((_e1040310747_
                                                 (gx#stx-e _lp-hd1039010742_)))
                                            (let ((_hd1040410750_
                                                   (##car _e1040310747_))
                                                  (_tl1040510752_
                                                   (##cdr _e1040310747_)))
                                              (if (gx#identifier?
                                                   _hd1040410750_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1040410750_)
                                                      (if (gx#stx-pair?
                                                           _tl1040510752_)
                                                          (let ((_e1040610755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1040510752_)))
                    (let ((_hd1040710758_ (##car _e1040610755_))
                          (_tl1040810760_ (##cdr _e1040610755_)))
                      (if (gx#stx-null? _tl1040810760_)
                          (_loop1038810731_
                           _lp-tl1039110744_
                           (cons _hd1040710758_ _xarg1039210736_))
                          (_g1029410601_ _g1029710604_))))
                  (_g1029410601_ _g1029710604_))
              (_g1029410601_ _g1029710604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1029410601_
                                                   _g1029710604_))))
                                          (_g1029410601_ _g1029710604_))))
                                  (let ((_xarg1039310763_
                                         (reverse _xarg1039210736_)))
                                    (if (gx#stx-null? _tl1036310643_)
                                        ((lambda (_L10766_
                                                  _L10767_
                                                  _L10768_
                                                  _L10769_
                                                  _L10770_
                                                  _L10771_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1081410817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1081510819_)
                        (cons _g1081410817_ _g1081510819_))
                      '()
                      _L10771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10770_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L10769_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1082110824_
                                                       _g1082210826_)
                                                (cons _g1082110824_
                                                      _g1082210826_))
                                              '()
                                              _L10771_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1082810831_
                                                       _g1082910833_)
                                                (cons _g1082810831_
                                                      _g1082910833_))
                                              '()
                                              _L10767_))))
                       (if (andmap2 gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1083510838_
                                                       _g1083610840_)
                                                (cons _g1083510838_
                                                      _g1083610840_))
                                              '()
                                              _L10771_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1084210845_
                                                       _g1084310847_)
                                                (cons _g1084210845_
                                                      _g1084310847_))
                                              '()
                                              _L10767_)))
                           (if (gx#free-identifier=? _L10770_ _L10766_)
                               (not (find (lambda (_g1084910851_)
                                            (gx#free-identifier=?
                                             _g1084910851_
                                             _L10768_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1085310856_
                                                             _g1085410858_)
                                                      (cons _g1085310856_
                                                            _g1085410858_))
                                                    (cons _L10770_ '())
                                                    _L10771_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1029410601_ _g1029710604_)))
                                         _hd1040110726_
                                         _xarg1039310763_
                                         _hd1038310697_
                                         _hd1037410673_
                                         _tl1035410616_
                                         _arg1036010635_)
                                        (_g1029410601_ _g1029710604_)))))))
                    (_loop1038810731_ _target1038510702_ '()))
                  (_g1029410601_ _g1029710604_))
              (_g1029410601_ _g1029710604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1029410601_ _g1029710604_))
                                          (_g1029410601_ _g1029710604_))
                                      (_g1029410601_ _g1029710604_))))
                              (_g1029410601_ _g1029710604_))))
                      (_g1029410601_ _g1029710604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029410601_
                                                     _g1029710604_))
                                                (_g1029410601_ _g1029710604_))
                                            (_g1029410601_ _g1029710604_))))
                                    (_g1029410601_ _g1029710604_))
                                (_g1029410601_ _g1029710604_))
                            (_g1029410601_ _g1029710604_))))
                    (_g1029410601_ _g1029710604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029410601_
                                                     _g1029710604_))
                                                (_g1029410601_
                                                 _g1029710604_))))
                                        (_g1029410601_ _g1029710604_))
                                    (_g1029410601_ _g1029710604_))
                                (_g1029410601_ _g1029710604_))))
                        (_g1029410601_ _g1029710604_))))
                (_g1029410601_ _g1029710604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029410601_
                                                     _g1029710604_))
                                                (_g1029410601_
                                                 _g1029710604_))))
                                        (_g1029410601_ _g1029710604_))))
                                (_g1029410601_ _g1029710604_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1035510619_
                                                     _target1035210614_
                                                     '())))))
                                            (_g1029410601_ _g1029710604_))
                                        (_g1029410601_ _g1029710604_))))
                                (_g1029410601_ _g1029710604_))))
                         (_g1029211055_
                          (lambda (_g1029710864_)
                            (if (gx#stx-pair? _g1029710864_)
                                (let ((_e1030110866_ (gx#stx-e _g1029710864_)))
                                  (let ((_hd1030210869_ (##car _e1030110866_))
                                        (_tl1030310871_ (##cdr _e1030110866_)))
                                    (if (gx#stx-pair/null? _hd1030210869_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1030210869_)
                                                  '0)
                                            (let ((_g12900_
                                                   (gx#syntax-split-splice
                                                    _hd1030210869_
                                                    '0)))
                                              (begin
                                                (let ((_g12901_
                                                       (if (##values? _g12900_)
                                                           (##vector-length
                                                            _g12900_)
                                                           1)))
                                                  (if (not (##fx= _g12901_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12901_)))
                                                (let ((_target1030410874_
                                                       (##vector-ref
                                                        _g12900_
                                                        0))
                                                      (_tl1030610876_
                                                       (##vector-ref
                                                        _g12900_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1030610876_)
                                                      (letrec ((_loop1030710879_
                                                                (lambda (_hd1030510882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg1031110884_)
                          (if (gx#stx-pair? _hd1030510882_)
                              (let ((_e1030810887_ (gx#stx-e _hd1030510882_)))
                                (let ((_lp-hd1030910890_ (##car _e1030810887_))
                                      (_lp-tl1031010892_
                                       (##cdr _e1030810887_)))
                                  (_loop1030710879_
                                   _lp-tl1031010892_
                                   (cons _lp-hd1030910890_ _arg1031110884_))))
                              (let ((_arg1031210895_
                                     (reverse _arg1031110884_)))
                                (if (gx#stx-pair? _tl1030310871_)
                                    (let ((_e1031310898_
                                           (gx#stx-e _tl1030310871_)))
                                      (let ((_hd1031410901_
                                             (##car _e1031310898_))
                                            (_tl1031510903_
                                             (##cdr _e1031310898_)))
                                        (if (gx#stx-pair? _hd1031410901_)
                                            (let ((_e1031610906_
                                                   (gx#stx-e _hd1031410901_)))
                                              (let ((_hd1031710909_
                                                     (##car _e1031610906_))
                                                    (_tl1031810911_
                                                     (##cdr _e1031610906_)))
                                                (if (gx#identifier?
                                                     _hd1031710909_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1031710909_)
                                                        (if (gx#stx-pair?
                                                             _tl1031810911_)
                                                            (let ((_e1031910914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1031810911_)))
                      (let ((_hd1032010917_ (##car _e1031910914_))
                            (_tl1032110919_ (##cdr _e1031910914_)))
                        (if (gx#stx-pair? _hd1032010917_)
                            (let ((_e1032210922_ (gx#stx-e _hd1032010917_)))
                              (let ((_hd1032310925_ (##car _e1032210922_))
                                    (_tl1032410927_ (##cdr _e1032210922_)))
                                (if (gx#identifier? _hd1032310925_)
                                    (if (gx#stx-eq? '%#ref _hd1032310925_)
                                        (if (gx#stx-pair? _tl1032410927_)
                                            (let ((_e1032510930_
                                                   (gx#stx-e _tl1032410927_)))
                                              (let ((_hd1032610933_
                                                     (##car _e1032510930_))
                                                    (_tl1032710935_
                                                     (##cdr _e1032510930_)))
                                                (if (gx#stx-null?
                                                     _tl1032710935_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1032110919_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1032110919_)
                          '0)
                    (let ((_g12902_
                           (gx#syntax-split-splice _tl1032110919_ '0)))
                      (begin
                        (let ((_g12903_
                               (if (##values? _g12902_)
                                   (##vector-length _g12902_)
                                   1)))
                          (if (not (##fx= _g12903_ 2))
                              (error "Context expects 2 values" _g12903_)))
                        (let ((_target1032810938_ (##vector-ref _g12902_ 0))
                              (_tl1033010940_ (##vector-ref _g12902_ 1)))
                          (if (gx#stx-null? _tl1033010940_)
                              (letrec ((_loop1033110943_
                                        (lambda (_hd1032910946_
                                                 _xarg1033510948_)
                                          (if (gx#stx-pair? _hd1032910946_)
                                              (let ((_e1033210951_
                                                     (gx#stx-e
                                                      _hd1032910946_)))
                                                (let ((_lp-hd1033310954_
                                                       (##car _e1033210951_))
                                                      (_lp-tl1033410956_
                                                       (##cdr _e1033210951_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd1033310954_)
                                                      (let ((_e1033710959_
                                                             (gx#stx-e
                                                              _lp-hd1033310954_)))
                                                        (let ((_hd1033810962_
                                                               (##car _e1033710959_))
                                                              (_tl1033910964_
                                                               (##cdr _e1033710959_)))
                                                          (if (gx#identifier?
                                                               _hd1033810962_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd1033810962_)
                          (if (gx#stx-pair? _tl1033910964_)
                              (let ((_e1034010967_ (gx#stx-e _tl1033910964_)))
                                (let ((_hd1034110970_ (##car _e1034010967_))
                                      (_tl1034210972_ (##cdr _e1034010967_)))
                                  (if (gx#stx-null? _tl1034210972_)
                                      (_loop1033110943_
                                       _lp-tl1033410956_
                                       (cons _hd1034110970_ _xarg1033510948_))
                                      (_g1029310861_ _g1029710864_))))
                              (_g1029310861_ _g1029710864_))
                          (_g1029310861_ _g1029710864_))
                      (_g1029310861_ _g1029710864_))))
              (_g1029310861_ _g1029710864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg1033610975_
                                                     (reverse _xarg1033510948_)))
                                                (if (gx#stx-null?
                                                     _tl1031510903_)
                                                    ((lambda (_L10978_
                                                              _L10979_
                                                              _L10980_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1100811011_ _g1100911013_)
                                    (cons _g1100811011_ _g1100911013_))
                                  '()
                                  _L10980_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1101511018_
                                                           _g1101611020_)
                                                    (cons _g1101511018_
                                                          _g1101611020_))
                                                  '()
                                                  _L10980_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1102211025_
                                                           _g1102311027_)
                                                    (cons _g1102211025_
                                                          _g1102311027_))
                                                  '()
                                                  _L10978_))))
                           (if (andmap2 gx#free-identifier=?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1102911032_
                                                           _g1103011034_)
                                                    (cons _g1102911032_
                                                          _g1103011034_))
                                                  '()
                                                  _L10980_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103611039_
                                                           _g1103711041_)
                                                    (cons _g1103611039_
                                                          _g1103711041_))
                                                  '()
                                                  _L10978_)))
                               (not (find (lambda (_g1104311045_)
                                            (gx#free-identifier=?
                                             _g1104311045_
                                             _L10979_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1104711050_
                                                             _g1104811052_)
                                                      (cons _g1104711050_
                                                            _g1104811052_))
                                                    '()
                                                    _L10980_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g1029310861_ _g1029710864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg1033610975_
                                                     _hd1032610933_
                                                     _arg1031210895_)
                                                    (_g1029310861_
                                                     _g1029710864_)))))))
                                (_loop1033110943_ _target1032810938_ '()))
                              (_g1029310861_ _g1029710864_)))))
                    (_g1029310861_ _g1029710864_))
                (_g1029310861_ _g1029710864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029310861_
                                                     _g1029710864_))))
                                            (_g1029310861_ _g1029710864_))
                                        (_g1029310861_ _g1029710864_))
                                    (_g1029310861_ _g1029710864_))))
                            (_g1029310861_ _g1029710864_))))
                    (_g1029310861_ _g1029710864_))
                (_g1029310861_ _g1029710864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029310861_
                                                     _g1029710864_))))
                                            (_g1029310861_ _g1029710864_))))
                                    (_g1029310861_ _g1029710864_)))))))
                (_loop1030710879_ _target1030410874_ '()))
              (_g1029310861_ _g1029710864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1029310861_ _g1029710864_))
                                        (_g1029310861_ _g1029710864_))))
                                (_g1029310861_ _g1029710864_)))))
                    (_g1029211055_ _form10291_))))
               (_dispatch-case-e9604_
                (lambda (_hd9752_ _body9753_)
                  (let* ((_form9755_ (cons _hd9752_ (cons _body9753_ '())))
                         (_g97599883_
                          (lambda (_g97609880_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g97609880_)))
                         (_g975810001_
                          (lambda (_g97609886_)
                            (if (gx#stx-pair? _g97609886_)
                                (let ((_e98499888_ (gx#stx-e _g97609886_)))
                                  (let ((_hd98509891_ (##car _e98499888_))
                                        (_tl98519893_ (##cdr _e98499888_)))
                                    (if (gx#stx-pair? _tl98519893_)
                                        (let ((_e98529896_
                                               (gx#stx-e _tl98519893_)))
                                          (let ((_hd98539899_
                                                 (##car _e98529896_))
                                                (_tl98549901_
                                                 (##cdr _e98529896_)))
                                            (if (gx#stx-pair? _hd98539899_)
                                                (let ((_e98559904_
                                                       (gx#stx-e
                                                        _hd98539899_)))
                                                  (let ((_hd98569907_
                                                         (##car _e98559904_))
                                                        (_tl98579909_
                                                         (##cdr _e98559904_)))
                                                    (if (gx#identifier?
                                                         _hd98569907_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd98569907_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98579909_)
                        (let ((_e98589912_ (gx#stx-e _tl98579909_)))
                          (let ((_hd98599915_ (##car _e98589912_))
                                (_tl98609917_ (##cdr _e98589912_)))
                            (if (gx#stx-pair? _hd98599915_)
                                (let ((_e98619920_ (gx#stx-e _hd98599915_)))
                                  (let ((_hd98629923_ (##car _e98619920_))
                                        (_tl98639925_ (##cdr _e98619920_)))
                                    (if (gx#identifier? _hd98629923_)
                                        (if (gx#stx-eq? '%#ref _hd98629923_)
                                            (if (gx#stx-pair? _tl98639925_)
                                                (let ((_e98649928_
                                                       (gx#stx-e
                                                        _tl98639925_)))
                                                  (let ((_hd98659931_
                                                         (##car _e98649928_))
                                                        (_tl98669933_
                                                         (##cdr _e98649928_)))
                                                    (if (gx#stx-null?
                                                         _tl98669933_)
                                                        (if (gx#stx-pair?
                                                             _tl98609917_)
                                                            (let ((_e98679936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl98609917_)))
                      (let ((_hd98689939_ (##car _e98679936_))
                            (_tl98699941_ (##cdr _e98679936_)))
                        (if (gx#stx-pair? _hd98689939_)
                            (let ((_e98709944_ (gx#stx-e _hd98689939_)))
                              (let ((_hd98719947_ (##car _e98709944_))
                                    (_tl98729949_ (##cdr _e98709944_)))
                                (if (gx#identifier? _hd98719947_)
                                    (if (gx#stx-eq? '%#ref _hd98719947_)
                                        (if (gx#stx-pair? _tl98729949_)
                                            (let ((_e98739952_
                                                   (gx#stx-e _tl98729949_)))
                                              (let ((_hd98749955_
                                                     (##car _e98739952_))
                                                    (_tl98759957_
                                                     (##cdr _e98739952_)))
                                                (if (gx#stx-null? _tl98759957_)
                                                    (if (gx#stx-pair?
                                                         _tl98699941_)
                                                        (let ((_e98769960_
                                                               (gx#stx-e
                                                                _tl98699941_)))
                                                          (let ((_hd98779963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e98769960_))
                        (_tl98789965_ (##cdr _e98769960_)))
                    (if (gx#stx-null? _tl98789965_)
                        (if (gx#stx-null? _tl98549901_)
                            ((lambda (_L9968_ _L9969_ _L9970_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9968_ '()))))
                             _hd98749955_
                             _hd98659931_
                             _hd98509891_)
                            (_g97599883_ _g97609886_))
                        (_g97599883_ _g97609886_))))
                (_g97599883_ _g97609886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g97599883_
                                                     _g97609886_))))
                                            (_g97599883_ _g97609886_))
                                        (_g97599883_ _g97609886_))
                                    (_g97599883_ _g97609886_))))
                            (_g97599883_ _g97609886_))))
                    (_g97599883_ _g97609886_))
                (_g97599883_ _g97609886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97599883_ _g97609886_))
                                            (_g97599883_ _g97609886_))
                                        (_g97599883_ _g97609886_))))
                                (_g97599883_ _g97609886_))))
                        (_g97599883_ _g97609886_))
                    (_g97599883_ _g97609886_))
                (_g97599883_ _g97609886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97599883_ _g97609886_))))
                                        (_g97599883_ _g97609886_))))
                                (_g97599883_ _g97609886_))))
                         (_g975710137_
                          (lambda (_g976010004_)
                            (if (gx#stx-pair? _g976010004_)
                                (let ((_e981010006_ (gx#stx-e _g976010004_)))
                                  (let ((_hd981110009_ (##car _e981010006_))
                                        (_tl981210011_ (##cdr _e981010006_)))
                                    (if (gx#stx-pair/null? _hd981110009_)
                                        (if (fx>= (gx#stx-length _hd981110009_)
                                                  '0)
                                            (let ((_g12904_
                                                   (gx#syntax-split-splice
                                                    _hd981110009_
                                                    '0)))
                                              (begin
                                                (let ((_g12905_
                                                       (if (##values? _g12904_)
                                                           (##vector-length
                                                            _g12904_)
                                                           1)))
                                                  (if (not (##fx= _g12905_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12905_)))
                                                (let ((_target981310014_
                                                       (##vector-ref
                                                        _g12904_
                                                        0))
                                                      (_tl981510016_
                                                       (##vector-ref
                                                        _g12904_
                                                        1)))
                                                  (letrec ((_loop981610019_
                                                            (lambda (_hd981410022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg982010024_)
                      (if (gx#stx-pair? _hd981410022_)
                          (let ((_e981710027_ (gx#stx-e _hd981410022_)))
                            (let ((_lp-hd981810030_ (##car _e981710027_))
                                  (_lp-tl981910032_ (##cdr _e981710027_)))
                              (_loop981610019_
                               _lp-tl981910032_
                               (cons _lp-hd981810030_ _arg982010024_))))
                          (let ((_arg982110035_ (reverse _arg982010024_)))
                            (if (gx#stx-pair? _tl981210011_)
                                (let ((_e982210038_ (gx#stx-e _tl981210011_)))
                                  (let ((_hd982310041_ (##car _e982210038_))
                                        (_tl982410043_ (##cdr _e982210038_)))
                                    (if (gx#stx-pair? _hd982310041_)
                                        (let ((_e982510046_
                                               (gx#stx-e _hd982310041_)))
                                          (let ((_hd982610049_
                                                 (##car _e982510046_))
                                                (_tl982710051_
                                                 (##cdr _e982510046_)))
                                            (if (gx#identifier? _hd982610049_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd982610049_)
                                                    (if (gx#stx-pair?
                                                         _tl982710051_)
                                                        (let ((_e982810054_
                                                               (gx#stx-e
                                                                _tl982710051_)))
                                                          (let ((_hd982910057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e982810054_))
                        (_tl983010059_ (##cdr _e982810054_)))
                    (if (gx#stx-pair? _hd982910057_)
                        (let ((_e983110062_ (gx#stx-e _hd982910057_)))
                          (let ((_hd983210065_ (##car _e983110062_))
                                (_tl983310067_ (##cdr _e983110062_)))
                            (if (gx#identifier? _hd983210065_)
                                (if (gx#stx-eq? '%#ref _hd983210065_)
                                    (if (gx#stx-pair? _tl983310067_)
                                        (let ((_e983410070_
                                               (gx#stx-e _tl983310067_)))
                                          (let ((_hd983510073_
                                                 (##car _e983410070_))
                                                (_tl983610075_
                                                 (##cdr _e983410070_)))
                                            (if (gx#stx-null? _tl983610075_)
                                                (if (gx#stx-pair?
                                                     _tl983010059_)
                                                    (let ((_e983710078_
                                                           (gx#stx-e
                                                            _tl983010059_)))
                                                      (let ((_hd983810081_
                                                             (##car _e983710078_))
                                                            (_tl983910083_
                                                             (##cdr _e983710078_)))
                                                        (if (gx#stx-pair?
                                                             _hd983810081_)
                                                            (let ((_e984010086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd983810081_)))
                      (let ((_hd984110089_ (##car _e984010086_))
                            (_tl984210091_ (##cdr _e984010086_)))
                        (if (gx#identifier? _hd984110089_)
                            (if (gx#stx-eq? '%#ref _hd984110089_)
                                (if (gx#stx-pair? _tl984210091_)
                                    (let ((_e984310094_
                                           (gx#stx-e _tl984210091_)))
                                      (let ((_hd984410097_
                                             (##car _e984310094_))
                                            (_tl984510099_
                                             (##cdr _e984310094_)))
                                        (if (gx#stx-null? _tl984510099_)
                                            (if (gx#stx-null? _tl982410043_)
                                                ((lambda (_L10102_
                                                          _L10103_
                                                          _L10104_
                                                          _L10105_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L10102_
                                                                '()))))
                                                 _hd984410097_
                                                 _hd983510073_
                                                 _tl981510016_
                                                 _arg982110035_)
                                                (_g975810001_ _g976010004_))
                                            (_g975810001_ _g976010004_))))
                                    (_g975810001_ _g976010004_))
                                (_g975810001_ _g976010004_))
                            (_g975810001_ _g976010004_))))
                    (_g975810001_ _g976010004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975810001_
                                                     _g976010004_))
                                                (_g975810001_ _g976010004_))))
                                        (_g975810001_ _g976010004_))
                                    (_g975810001_ _g976010004_))
                                (_g975810001_ _g976010004_))))
                        (_g975810001_ _g976010004_))))
                (_g975810001_ _g976010004_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975810001_
                                                     _g976010004_))
                                                (_g975810001_ _g976010004_))))
                                        (_g975810001_ _g976010004_))))
                                (_g975810001_ _g976010004_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop981610019_
                                                     _target981310014_
                                                     '())))))
                                            (_g975810001_ _g976010004_))
                                        (_g975810001_ _g976010004_))))
                                (_g975810001_ _g976010004_))))
                         (_g975610285_
                          (lambda (_g976010140_)
                            (if (gx#stx-pair? _g976010140_)
                                (let ((_e976410142_ (gx#stx-e _g976010140_)))
                                  (let ((_hd976510145_ (##car _e976410142_))
                                        (_tl976610147_ (##cdr _e976410142_)))
                                    (if (gx#stx-pair/null? _hd976510145_)
                                        (if (fx>= (gx#stx-length _hd976510145_)
                                                  '0)
                                            (let ((_g12906_
                                                   (gx#syntax-split-splice
                                                    _hd976510145_
                                                    '0)))
                                              (begin
                                                (let ((_g12907_
                                                       (if (##values? _g12906_)
                                                           (##vector-length
                                                            _g12906_)
                                                           1)))
                                                  (if (not (##fx= _g12907_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12907_)))
                                                (let ((_target976710150_
                                                       (##vector-ref
                                                        _g12906_
                                                        0))
                                                      (_tl976910152_
                                                       (##vector-ref
                                                        _g12906_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl976910152_)
                                                      (letrec ((_loop977010155_
                                                                (lambda (_hd976810158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg977410160_)
                          (if (gx#stx-pair? _hd976810158_)
                              (let ((_e977110163_ (gx#stx-e _hd976810158_)))
                                (let ((_lp-hd977210166_ (##car _e977110163_))
                                      (_lp-tl977310168_ (##cdr _e977110163_)))
                                  (_loop977010155_
                                   _lp-tl977310168_
                                   (cons _lp-hd977210166_ _arg977410160_))))
                              (let ((_arg977510171_ (reverse _arg977410160_)))
                                (if (gx#stx-pair? _tl976610147_)
                                    (let ((_e977610174_
                                           (gx#stx-e _tl976610147_)))
                                      (let ((_hd977710177_
                                             (##car _e977610174_))
                                            (_tl977810179_
                                             (##cdr _e977610174_)))
                                        (if (gx#stx-pair? _hd977710177_)
                                            (let ((_e977910182_
                                                   (gx#stx-e _hd977710177_)))
                                              (let ((_hd978010185_
                                                     (##car _e977910182_))
                                                    (_tl978110187_
                                                     (##cdr _e977910182_)))
                                                (if (gx#identifier?
                                                     _hd978010185_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd978010185_)
                                                        (if (gx#stx-pair?
                                                             _tl978110187_)
                                                            (let ((_e978210190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl978110187_)))
                      (let ((_hd978310193_ (##car _e978210190_))
                            (_tl978410195_ (##cdr _e978210190_)))
                        (if (gx#stx-pair? _hd978310193_)
                            (let ((_e978510198_ (gx#stx-e _hd978310193_)))
                              (let ((_hd978610201_ (##car _e978510198_))
                                    (_tl978710203_ (##cdr _e978510198_)))
                                (if (gx#identifier? _hd978610201_)
                                    (if (gx#stx-eq? '%#ref _hd978610201_)
                                        (if (gx#stx-pair? _tl978710203_)
                                            (let ((_e978810206_
                                                   (gx#stx-e _tl978710203_)))
                                              (let ((_hd978910209_
                                                     (##car _e978810206_))
                                                    (_tl979010211_
                                                     (##cdr _e978810206_)))
                                                (if (gx#stx-null?
                                                     _tl979010211_)
                                                    (if (gx#stx-pair/null?
                                                         _tl978410195_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl978410195_)
                          '0)
                    (let ((_g12908_ (gx#syntax-split-splice _tl978410195_ '0)))
                      (begin
                        (let ((_g12909_
                               (if (##values? _g12908_)
                                   (##vector-length _g12908_)
                                   1)))
                          (if (not (##fx= _g12909_ 2))
                              (error "Context expects 2 values" _g12909_)))
                        (let ((_target979110214_ (##vector-ref _g12908_ 0))
                              (_tl979310216_ (##vector-ref _g12908_ 1)))
                          (if (gx#stx-null? _tl979310216_)
                              (letrec ((_loop979410219_
                                        (lambda (_hd979210222_ _xarg979810224_)
                                          (if (gx#stx-pair? _hd979210222_)
                                              (let ((_e979510227_
                                                     (gx#stx-e _hd979210222_)))
                                                (let ((_lp-hd979610230_
                                                       (##car _e979510227_))
                                                      (_lp-tl979710232_
                                                       (##cdr _e979510227_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd979610230_)
                                                      (let ((_e980010235_
                                                             (gx#stx-e
                                                              _lp-hd979610230_)))
                                                        (let ((_hd980110238_
                                                               (##car _e980010235_))
                                                              (_tl980210240_
                                                               (##cdr _e980010235_)))
                                                          (if (gx#identifier?
                                                               _hd980110238_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd980110238_)
                          (if (gx#stx-pair? _tl980210240_)
                              (let ((_e980310243_ (gx#stx-e _tl980210240_)))
                                (let ((_hd980410246_ (##car _e980310243_))
                                      (_tl980510248_ (##cdr _e980310243_)))
                                  (if (gx#stx-null? _tl980510248_)
                                      (_loop979410219_
                                       _lp-tl979710232_
                                       (cons _hd980410246_ _xarg979810224_))
                                      (_g975710137_ _g976010140_))))
                              (_g975710137_ _g976010140_))
                          (_g975710137_ _g976010140_))
                      (_g975710137_ _g976010140_))))
              (_g975710137_ _g976010140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg979910251_
                                                     (reverse _xarg979810224_)))
                                                (if (gx#stx-null?
                                                     _tl977810179_)
                                                    ((lambda (_L10254_
                                                              _L10255_
                                                              _L10256_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L10255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg979910251_
                                                     _hd978910209_
                                                     _arg977510171_)
                                                    (_g975710137_
                                                     _g976010140_)))))))
                                (_loop979410219_ _target979110214_ '()))
                              (_g975710137_ _g976010140_)))))
                    (_g975710137_ _g976010140_))
                (_g975710137_ _g976010140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975710137_
                                                     _g976010140_))))
                                            (_g975710137_ _g976010140_))
                                        (_g975710137_ _g976010140_))
                                    (_g975710137_ _g976010140_))))
                            (_g975710137_ _g976010140_))))
                    (_g975710137_ _g976010140_))
                (_g975710137_ _g976010140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g975710137_
                                                     _g976010140_))))
                                            (_g975710137_ _g976010140_))))
                                    (_g975710137_ _g976010140_)))))))
                (_loop977010155_ _target976710150_ '()))
              (_g975710137_ _g976010140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g975710137_ _g976010140_))
                                        (_g975710137_ _g976010140_))))
                                (_g975710137_ _g976010140_)))))
                    (_g975610285_ _form9755_))))
               (_generate19605_
                (lambda (_args9740_ _arglen9741_ _hd9742_ _body9743_)
                  (let* ((_len9745_ (gx#stx-length _hd9742_))
                         (_condition9747_
                          (if (gx#stx-list? _hd9742_)
                              (cons '##fx=
                                    (cons _arglen9741_ (cons _len9745_ '())))
                              (if (> _len9745_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9741_
                                              (cons _len9745_ '())))
                                  '#t)))
                         (_dispatch9749_
                          (if (_dispatch-case?9603_ _hd9742_ _body9743_)
                              (_dispatch-case-e9604_ _hd9742_ _body9743_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9742_)
                                          (cons (gxc#compile-e _body9743_)
                                                '()))))))
                    (cons _condition9747_
                          (cons (cons 'apply
                                      (cons _dispatch9749_
                                            (cons _args9740_ '())))
                                '()))))))
        (let* ((_g96079635_
                (lambda (_g96089632_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g96089632_)))
               (_g96069737_
                (lambda (_g96089638_)
                  (if (gx#stx-pair? _g96089638_)
                      (let ((_e96119640_ (gx#stx-e _g96089638_)))
                        (let ((_hd96129643_ (##car _e96119640_))
                              (_tl96139645_ (##cdr _e96119640_)))
                          (if (gx#stx-pair/null? _tl96139645_)
                              (if (fx>= (gx#stx-length _tl96139645_) '0)
                                  (let ((_g12910_
                                         (gx#syntax-split-splice
                                          _tl96139645_
                                          '0)))
                                    (begin
                                      (let ((_g12911_
                                             (if (##values? _g12910_)
                                                 (##vector-length _g12910_)
                                                 1)))
                                        (if (not (##fx= _g12911_ 2))
                                            (error "Context expects 2 values"
                                                   _g12911_)))
                                      (let ((_target96149648_
                                             (##vector-ref _g12910_ 0))
                                            (_tl96169650_
                                             (##vector-ref _g12910_ 1)))
                                        (if (gx#stx-null? _tl96169650_)
                                            (letrec ((_loop96179653_
                                                      (lambda (_hd96159656_
                                                               _body96219658_
                                                               _hd96229660_)
                                                        (if (gx#stx-pair?
                                                             _hd96159656_)
                                                            (let ((_e96189663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96159656_)))
                      (let ((_lp-hd96199666_ (##car _e96189663_))
                            (_lp-tl96209668_ (##cdr _e96189663_)))
                        (if (gx#stx-pair? _lp-hd96199666_)
                            (let ((_e96259671_ (gx#stx-e _lp-hd96199666_)))
                              (let ((_hd96269674_ (##car _e96259671_))
                                    (_tl96279676_ (##cdr _e96259671_)))
                                (if (gx#stx-pair? _tl96279676_)
                                    (let ((_e96289679_
                                           (gx#stx-e _tl96279676_)))
                                      (let ((_hd96299682_ (##car _e96289679_))
                                            (_tl96309684_ (##cdr _e96289679_)))
                                        (if (gx#stx-null? _tl96309684_)
                                            (_loop96179653_
                                             _lp-tl96209668_
                                             (cons _hd96299682_ _body96219658_)
                                             (cons _hd96269674_ _hd96229660_))
                                            (_g96079635_ _g96089638_))))
                                    (_g96079635_ _g96089638_))))
                            (_g96079635_ _g96089638_))))
                    (let ((_body96239687_ (reverse _body96219658_))
                          (_hd96249689_ (reverse _hd96229660_)))
                      ((lambda (_L9692_ _L9693_)
                         (let ((_args9712_ (gxc#generate-runtime-temporary__0))
                               (_arglen9713_
                                (gxc#generate-runtime-temporary__0))
                               (_name9714_
                                (let ((_$e9709_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx9601_
                                        '#f)))
                                  (if _$e9709_
                                      _$e9709_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9712_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9712_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9712_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g97159718_ _g97169720_)
                                            (_generate19605_
                                             _args9712_
                                             _arglen9713_
                                             _g97159718_
                                             _g97169720_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97229725_
                                                             _g97239727_)
                                                      (cons _g97229725_
                                                            _g97239727_))
                                                    '()
                                                    _L9693_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97299732_
                                                             _g97309734_)
                                                      (cons _g97299732_
                                                            _g97309734_))
                                                    '()
                                                    _L9692_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body96239687_
                       _hd96249689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop96179653_
                                               _target96149648_
                                               '()
                                               '()))
                                            (_g96079635_ _g96089638_)))))
                                  (_g96079635_ _g96089638_))
                              (_g96079635_ _g96089638_))))
                      (_g96079635_ _g96089638_)))))
          (_g96069737_ _stx9601_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8666_ _compiled-body?8667_)
        (letrec ((_generate-simple8669_
                  (lambda (_hd9588_ _body9589_)
                    (_coalesce-let*8670_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9588_
                      _body9589_
                      _compiled-body?8667_))))
                 (_coalesce-let*8670_
                  (lambda (_code8972_)
                    (let* ((_g89779112_
                            (lambda (_g89789109_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g89789109_)))
                           (_g89769119_
                            (lambda (_g89789115_) ((lambda () _code8972_))))
                           (_g89759289_
                            (lambda (_g89789122_)
                              (if (gx#stx-pair? _g89789122_)
                                  (let ((_e90669124_ (gx#stx-e _g89789122_)))
                                    (let ((_hd90679127_ (##car _e90669124_))
                                          (_tl90689129_ (##cdr _e90669124_)))
                                      (if (gx#identifier? _hd90679127_)
                                          (if (gx#stx-eq? 'let _hd90679127_)
                                              (if (gx#stx-pair? _tl90689129_)
                                                  (let ((_e90699132_
                                                         (gx#stx-e
                                                          _tl90689129_)))
                                                    (let ((_hd90709135_
                                                           (##car _e90699132_))
                                                          (_tl90719137_
                                                           (##cdr _e90699132_)))
                                                      (if (gx#stx-pair?
                                                           _hd90709135_)
                                                          (let ((_e90729140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90709135_)))
                    (let ((_hd90739143_ (##car _e90729140_))
                          (_tl90749145_ (##cdr _e90729140_)))
                      (if (gx#stx-pair? _hd90739143_)
                          (let ((_e90759148_ (gx#stx-e _hd90739143_)))
                            (let ((_hd90769151_ (##car _e90759148_))
                                  (_tl90779153_ (##cdr _e90759148_)))
                              (if (gx#stx-pair? _tl90779153_)
                                  (let ((_e90789156_ (gx#stx-e _tl90779153_)))
                                    (let ((_hd90799159_ (##car _e90789156_))
                                          (_tl90809161_ (##cdr _e90789156_)))
                                      (if (gx#stx-null? _tl90809161_)
                                          (if (gx#stx-null? _tl90749145_)
                                              (if (gx#stx-pair? _tl90719137_)
                                                  (let ((_e90819164_
                                                         (gx#stx-e
                                                          _tl90719137_)))
                                                    (let ((_hd90829167_
                                                           (##car _e90819164_))
                                                          (_tl90839169_
                                                           (##cdr _e90819164_)))
                                                      (if (gx#stx-pair?
                                                           _hd90829167_)
                                                          (let ((_e90849172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90829167_)))
                    (let ((_hd90859175_ (##car _e90849172_))
                          (_tl90869177_ (##cdr _e90849172_)))
                      (if (gx#identifier? _hd90859175_)
                          (if (gx#stx-eq? 'let* _hd90859175_)
                              (if (gx#stx-pair? _tl90869177_)
                                  (let ((_e90879180_ (gx#stx-e _tl90869177_)))
                                    (let ((_hd90889183_ (##car _e90879180_))
                                          (_tl90899185_ (##cdr _e90879180_)))
                                      (if (gx#stx-pair/null? _hd90889183_)
                                          (if (fx>= (gx#stx-length
                                                     _hd90889183_)
                                                    '0)
                                              (let ((_g12912_
                                                     (gx#syntax-split-splice
                                                      _hd90889183_
                                                      '0)))
                                                (begin
                                                  (let ((_g12913_
                                                         (if (##values?
                                                              _g12912_)
                                                             (##vector-length
                                                              _g12912_)
                                                             1)))
                                                    (if (not (##fx= _g12913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g12913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target90909188_
                                                         (##vector-ref
                                                          _g12912_
                                                          0))
                                                        (_tl90929190_
                                                         (##vector-ref
                                                          _g12912_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl90929190_)
                                                        (letrec ((_loop90939193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd90919196_ _bind90979198_)
                            (if (gx#stx-pair? _hd90919196_)
                                (let ((_e90949201_ (gx#stx-e _hd90919196_)))
                                  (let ((_lp-hd90959204_ (##car _e90949201_))
                                        (_lp-tl90969206_ (##cdr _e90949201_)))
                                    (_loop90939193_
                                     _lp-tl90969206_
                                     (cons _lp-hd90959204_ _bind90979198_))))
                                (let ((_bind90989209_
                                       (reverse _bind90979198_)))
                                  (if (gx#stx-pair/null? _tl90899185_)
                                      (if (fx>= (gx#stx-length _tl90899185_)
                                                '0)
                                          (let ((_g12914_
                                                 (gx#syntax-split-splice
                                                  _tl90899185_
                                                  '0)))
                                            (begin
                                              (let ((_g12915_
                                                     (if (##values? _g12914_)
                                                         (##vector-length
                                                          _g12914_)
                                                         1)))
                                                (if (not (##fx= _g12915_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12915_)))
                                              (let ((_target90999212_
                                                     (##vector-ref _g12914_ 0))
                                                    (_tl91019214_
                                                     (##vector-ref
                                                      _g12914_
                                                      1)))
                                                (if (gx#stx-null? _tl91019214_)
                                                    (letrec ((_loop91029217_
                                                              (lambda (_hd91009220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body91069222_)
                        (if (gx#stx-pair? _hd91009220_)
                            (let ((_e91039225_ (gx#stx-e _hd91009220_)))
                              (let ((_lp-hd91049228_ (##car _e91039225_))
                                    (_lp-tl91059230_ (##cdr _e91039225_)))
                                (_loop91029217_
                                 _lp-tl91059230_
                                 (cons _lp-hd91049228_ _body91069222_))))
                            (let ((_body91079233_ (reverse _body91069222_)))
                              (if (gx#stx-null? _tl90839169_)
                                  ((lambda (_L9236_ _L9237_ _L9238_ _L9239_)
                                     (cons 'let*
                                           (cons (cons (cons _L9239_
                                                             (cons _L9238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g92749277_ _g92759279_)
                           (cons _g92749277_ _g92759279_))
                         '()
                         _L9237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g92819284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g92829286_)
                     (cons _g92819284_ _g92829286_))
                   '()
                   _L9236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body91079233_
                                   _bind90989209_
                                   _hd90799159_
                                   _hd90769151_)
                                  (_g89769119_ _g89789122_)))))))
              (_loop91029217_ _target90999212_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g89769119_
                                                     _g89789122_)))))
                                          (_g89769119_ _g89789122_))
                                      (_g89769119_ _g89789122_)))))))
                  (_loop90939193_ _target90909188_ '()))
                (_g89769119_ _g89789122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g89769119_ _g89789122_))
                                          (_g89769119_ _g89789122_))))
                                  (_g89769119_ _g89789122_))
                              (_g89769119_ _g89789122_))
                          (_g89769119_ _g89789122_))))
                  (_g89769119_ _g89789122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769119_ _g89789122_))
                                              (_g89769119_ _g89789122_))
                                          (_g89769119_ _g89789122_))))
                                  (_g89769119_ _g89789122_))))
                          (_g89769119_ _g89789122_))))
                  (_g89769119_ _g89789122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769119_ _g89789122_))
                                              (_g89769119_ _g89789122_))
                                          (_g89769119_ _g89789122_))))
                                  (_g89769119_ _g89789122_))))
                           (_g89749454_
                            (lambda (_g89789292_)
                              (if (gx#stx-pair? _g89789292_)
                                  (let ((_e90209294_ (gx#stx-e _g89789292_)))
                                    (let ((_hd90219297_ (##car _e90209294_))
                                          (_tl90229299_ (##cdr _e90209294_)))
                                      (if (gx#identifier? _hd90219297_)
                                          (if (gx#stx-eq? 'let _hd90219297_)
                                              (if (gx#stx-pair? _tl90229299_)
                                                  (let ((_e90239302_
                                                         (gx#stx-e
                                                          _tl90229299_)))
                                                    (let ((_hd90249305_
                                                           (##car _e90239302_))
                                                          (_tl90259307_
                                                           (##cdr _e90239302_)))
                                                      (if (gx#stx-pair?
                                                           _hd90249305_)
                                                          (let ((_e90269310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90249305_)))
                    (let ((_hd90279313_ (##car _e90269310_))
                          (_tl90289315_ (##cdr _e90269310_)))
                      (if (gx#stx-pair? _hd90279313_)
                          (let ((_e90299318_ (gx#stx-e _hd90279313_)))
                            (let ((_hd90309321_ (##car _e90299318_))
                                  (_tl90319323_ (##cdr _e90299318_)))
                              (if (gx#stx-pair? _tl90319323_)
                                  (let ((_e90329326_ (gx#stx-e _tl90319323_)))
                                    (let ((_hd90339329_ (##car _e90329326_))
                                          (_tl90349331_ (##cdr _e90329326_)))
                                      (if (gx#stx-null? _tl90349331_)
                                          (if (gx#stx-null? _tl90289315_)
                                              (if (gx#stx-pair? _tl90259307_)
                                                  (let ((_e90359334_
                                                         (gx#stx-e
                                                          _tl90259307_)))
                                                    (let ((_hd90369337_
                                                           (##car _e90359334_))
                                                          (_tl90379339_
                                                           (##cdr _e90359334_)))
                                                      (if (gx#stx-pair?
                                                           _hd90369337_)
                                                          (let ((_e90389342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90369337_)))
                    (let ((_hd90399345_ (##car _e90389342_))
                          (_tl90409347_ (##cdr _e90389342_)))
                      (if (gx#identifier? _hd90399345_)
                          (if (gx#stx-eq? 'let _hd90399345_)
                              (if (gx#stx-pair? _tl90409347_)
                                  (let ((_e90419350_ (gx#stx-e _tl90409347_)))
                                    (let ((_hd90429353_ (##car _e90419350_))
                                          (_tl90439355_ (##cdr _e90419350_)))
                                      (if (gx#stx-pair? _hd90429353_)
                                          (let ((_e90449358_
                                                 (gx#stx-e _hd90429353_)))
                                            (let ((_hd90459361_
                                                   (##car _e90449358_))
                                                  (_tl90469363_
                                                   (##cdr _e90449358_)))
                                              (if (gx#stx-pair? _hd90459361_)
                                                  (let ((_e90479366_
                                                         (gx#stx-e
                                                          _hd90459361_)))
                                                    (let ((_hd90489369_
                                                           (##car _e90479366_))
                                                          (_tl90499371_
                                                           (##cdr _e90479366_)))
                                                      (if (gx#stx-pair?
                                                           _tl90499371_)
                                                          (let ((_e90509374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl90499371_)))
                    (let ((_hd90519377_ (##car _e90509374_))
                          (_tl90529379_ (##cdr _e90509374_)))
                      (if (gx#stx-null? _tl90529379_)
                          (if (gx#stx-null? _tl90469363_)
                              (if (gx#stx-pair/null? _tl90439355_)
                                  (if (fx>= (gx#stx-length _tl90439355_) '0)
                                      (let ((_g12916_
                                             (gx#syntax-split-splice
                                              _tl90439355_
                                              '0)))
                                        (begin
                                          (let ((_g12917_
                                                 (if (##values? _g12916_)
                                                     (##vector-length _g12916_)
                                                     1)))
                                            (if (not (##fx= _g12917_ 2))
                                                (error "Context expects 2 values"
                                                       _g12917_)))
                                          (let ((_target90539382_
                                                 (##vector-ref _g12916_ 0))
                                                (_tl90559384_
                                                 (##vector-ref _g12916_ 1)))
                                            (if (gx#stx-null? _tl90559384_)
                                                (letrec ((_loop90569387_
                                                          (lambda (_hd90549390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90609392_)
                    (if (gx#stx-pair? _hd90549390_)
                        (let ((_e90579395_ (gx#stx-e _hd90549390_)))
                          (let ((_lp-hd90589398_ (##car _e90579395_))
                                (_lp-tl90599400_ (##cdr _e90579395_)))
                            (_loop90569387_
                             _lp-tl90599400_
                             (cons _lp-hd90589398_ _body90609392_))))
                        (let ((_body90619403_ (reverse _body90609392_)))
                          (if (gx#stx-null? _tl90379339_)
                              ((lambda (_L9406_
                                        _L9407_
                                        _L9408_
                                        _L9409_
                                        _L9410_)
                                 (cons 'let*
                                       (cons (cons (cons _L9410_
                                                         (cons _L9409_ '()))
                                                   (cons (cons _L9408_
                                                               (cons _L9407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g94469449_
                                                                _g94479451_)
                                                         (cons _g94469449_
                                                               _g94479451_))
                                                       '()
                                                       _L9406_)))))
                               _body90619403_
                               _hd90519377_
                               _hd90489369_
                               _hd90339329_
                               _hd90309321_)
                              (_g89759289_ _g89789292_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop90569387_
                                                   _target90539382_
                                                   '()))
                                                (_g89759289_ _g89789292_)))))
                                      (_g89759289_ _g89789292_))
                                  (_g89759289_ _g89789292_))
                              (_g89759289_ _g89789292_))
                          (_g89759289_ _g89789292_))))
                  (_g89759289_ _g89789292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89759289_ _g89789292_))))
                                          (_g89759289_ _g89789292_))))
                                  (_g89759289_ _g89789292_))
                              (_g89759289_ _g89789292_))
                          (_g89759289_ _g89789292_))))
                  (_g89759289_ _g89789292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89759289_ _g89789292_))
                                              (_g89759289_ _g89789292_))
                                          (_g89759289_ _g89789292_))))
                                  (_g89759289_ _g89789292_))))
                          (_g89759289_ _g89789292_))))
                  (_g89759289_ _g89789292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89759289_ _g89789292_))
                                              (_g89759289_ _g89789292_))
                                          (_g89759289_ _g89789292_))))
                                  (_g89759289_ _g89789292_))))
                           (_g89739585_
                            (lambda (_g89789457_)
                              (if (gx#stx-pair? _g89789457_)
                                  (let ((_e89829459_ (gx#stx-e _g89789457_)))
                                    (let ((_hd89839462_ (##car _e89829459_))
                                          (_tl89849464_ (##cdr _e89829459_)))
                                      (if (gx#identifier? _hd89839462_)
                                          (if (gx#stx-eq? 'let _hd89839462_)
                                              (if (gx#stx-pair? _tl89849464_)
                                                  (let ((_e89859467_
                                                         (gx#stx-e
                                                          _tl89849464_)))
                                                    (let ((_hd89869470_
                                                           (##car _e89859467_))
                                                          (_tl89879472_
                                                           (##cdr _e89859467_)))
                                                      (if (gx#stx-pair?
                                                           _hd89869470_)
                                                          (let ((_e89889475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd89869470_)))
                    (let ((_hd89899478_ (##car _e89889475_))
                          (_tl89909480_ (##cdr _e89889475_)))
                      (if (gx#stx-pair? _hd89899478_)
                          (let ((_e89919483_ (gx#stx-e _hd89899478_)))
                            (let ((_hd89929486_ (##car _e89919483_))
                                  (_tl89939488_ (##cdr _e89919483_)))
                              (if (gx#stx-pair? _tl89939488_)
                                  (let ((_e89949491_ (gx#stx-e _tl89939488_)))
                                    (let ((_hd89959494_ (##car _e89949491_))
                                          (_tl89969496_ (##cdr _e89949491_)))
                                      (if (gx#stx-null? _tl89969496_)
                                          (if (gx#stx-null? _tl89909480_)
                                              (if (gx#stx-pair? _tl89879472_)
                                                  (let ((_e89979499_
                                                         (gx#stx-e
                                                          _tl89879472_)))
                                                    (let ((_hd89989502_
                                                           (##car _e89979499_))
                                                          (_tl89999504_
                                                           (##cdr _e89979499_)))
                                                      (if (gx#stx-pair?
                                                           _hd89989502_)
                                                          (let ((_e90009507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd89989502_)))
                    (let ((_hd90019510_ (##car _e90009507_))
                          (_tl90029512_ (##cdr _e90009507_)))
                      (if (gx#identifier? _hd90019510_)
                          (if (gx#stx-eq? 'let _hd90019510_)
                              (if (gx#stx-pair? _tl90029512_)
                                  (let ((_e90039515_ (gx#stx-e _tl90029512_)))
                                    (let ((_hd90049518_ (##car _e90039515_))
                                          (_tl90059520_ (##cdr _e90039515_)))
                                      (if (gx#stx-null? _hd90049518_)
                                          (if (gx#stx-pair/null? _tl90059520_)
                                              (if (fx>= (gx#stx-length
                                                         _tl90059520_)
                                                        '0)
                                                  (let ((_g12918_
                                                         (gx#syntax-split-splice
                                                          _tl90059520_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12919_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g12918_)
                         (##vector-length _g12918_)
                         1)))
                (if (not (##fx= _g12919_ 2))
                    (error "Context expects 2 values" _g12919_)))
              (let ((_target90069523_ (##vector-ref _g12918_ 0))
                    (_tl90089525_ (##vector-ref _g12918_ 1)))
                (if (gx#stx-null? _tl90089525_)
                    (letrec ((_loop90099528_
                              (lambda (_hd90079531_ _body90139533_)
                                (if (gx#stx-pair? _hd90079531_)
                                    (let ((_e90109536_
                                           (gx#stx-e _hd90079531_)))
                                      (let ((_lp-hd90119539_
                                             (##car _e90109536_))
                                            (_lp-tl90129541_
                                             (##cdr _e90109536_)))
                                        (_loop90099528_
                                         _lp-tl90129541_
                                         (cons _lp-hd90119539_
                                               _body90139533_))))
                                    (let ((_body90149544_
                                           (reverse _body90139533_)))
                                      (if (gx#stx-null? _tl89999504_)
                                          ((lambda (_L9547_ _L9548_ _L9549_)
                                             (cons 'let
                                                   (cons (cons (cons _L9549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9548_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g95779580_ _g95789582_)
                             (cons _g95779580_ _g95789582_))
                           '()
                           _L9547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body90149544_
                                           _hd89959494_
                                           _hd89929486_)
                                          (_g89749454_ _g89789457_)))))))
                      (_loop90099528_ _target90069523_ '()))
                    (_g89749454_ _g89789457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89749454_ _g89789457_))
                                              (_g89749454_ _g89789457_))
                                          (_g89749454_ _g89789457_))))
                                  (_g89749454_ _g89789457_))
                              (_g89749454_ _g89789457_))
                          (_g89749454_ _g89789457_))))
                  (_g89749454_ _g89789457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89749454_ _g89789457_))
                                              (_g89749454_ _g89789457_))
                                          (_g89749454_ _g89789457_))))
                                  (_g89749454_ _g89789457_))))
                          (_g89749454_ _g89789457_))))
                  (_g89749454_ _g89789457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89749454_ _g89789457_))
                                              (_g89749454_ _g89789457_))
                                          (_g89749454_ _g89789457_))))
                                  (_g89749454_ _g89789457_)))))
                      (_g89739585_ _code8972_))))
                 (_generate-values8671_
                  (lambda (_hd8785_ _body8786_)
                    (let _lp8788_ ((_rest8790_ _hd8785_)
                                   (_bind8791_ '())
                                   (_check8792_ '())
                                   (_post8793_ '()))
                      (let* ((_g87968807_
                              (lambda (_g87978804_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g87978804_)))
                             (_g87958821_
                              (lambda (_g87978810_)
                                ((lambda ()
                                   (let* ((_body8814_
                                           (if _compiled-body?8667_
                                               _body8786_
                                               (gxc#compile-e _body8786_)))
                                          (_body8816_
                                           (_generate-values-post8672_
                                            _post8793_
                                            _body8814_))
                                          (_body8818_
                                           (_generate-values-check8673_
                                            _check8792_
                                            _body8816_)))
                                     (cons 'let
                                           (cons (reverse _bind8791_)
                                                 (cons _body8818_ '()))))))))
                             (_g87948969_
                              (lambda (_g87978824_)
                                (if (gx#stx-pair? _g87978824_)
                                    (let ((_e88008826_ (gx#stx-e _g87978824_)))
                                      (let ((_hd88018829_ (##car _e88008826_))
                                            (_tl88028831_ (##cdr _e88008826_)))
                                        ((lambda (_L8834_ _L8835_)
                                           (let* ((_g88508875_
                                                   (lambda (_g88518872_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g88518872_)))
                                                  (_g88498919_
                                                   (lambda (_g88518878_)
                                                     (if (gx#stx-pair?
                                                          _g88518878_)
                                                         (let ((_e88658880_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88518878_)))
                   (let ((_hd88668883_ (##car _e88658880_))
                         (_tl88678885_ (##cdr _e88658880_)))
                     (if (gx#stx-pair? _tl88678885_)
                         (let ((_e88688888_ (gx#stx-e _tl88678885_)))
                           (let ((_hd88698891_ (##car _e88688888_))
                                 (_tl88708893_ (##cdr _e88688888_)))
                             (if (gx#stx-null? _tl88708893_)
                                 ((lambda (_L8896_ _L8897_)
                                    (let* ((_vals8910_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8912_
                                            (gxc#generate-runtime-check-values
                                             _vals8910_
                                             _L8897_
                                             _L8896_))
                                           (_refs8914_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8910_
                                             _L8897_))
                                           (_expr8916_
                                            (gxc#compile-e _L8896_)))
                                      (_lp8788_
                                       _L8834_
                                       (cons (cons _vals8910_
                                                   (cons _expr8916_ '()))
                                             _bind8791_)
                                       (cons _check-values8912_ _check8792_)
                                       (cons _refs8914_ _post8793_))))
                                  _hd88698891_
                                  _hd88668883_)
                                 (_g88508875_ _g88518878_))))
                         (_g88508875_ _g88518878_))))
                 (_g88508875_ _g88518878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88488966_
                                                   (lambda (_g88518922_)
                                                     (if (gx#stx-pair?
                                                          _g88518922_)
                                                         (let ((_e88548924_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88518922_)))
                   (let ((_hd88558927_ (##car _e88548924_))
                         (_tl88568929_ (##cdr _e88548924_)))
                     (if (gx#stx-pair? _hd88558927_)
                         (let ((_e88578932_ (gx#stx-e _hd88558927_)))
                           (let ((_hd88588935_ (##car _e88578932_))
                                 (_tl88598937_ (##cdr _e88578932_)))
                             (if (gx#stx-null? _tl88598937_)
                                 (if (gx#stx-pair? _tl88568929_)
                                     (let ((_e88608940_
                                            (gx#stx-e _tl88568929_)))
                                       (let ((_hd88618943_ (##car _e88608940_))
                                             (_tl88628945_
                                              (##cdr _e88608940_)))
                                         (if (gx#stx-null? _tl88628945_)
                                             ((lambda (_L8948_ _L8949_)
                                                (let ((_eid8963_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8949_))
                                                      (_expr8964_
                                                       (gxc#compile-e
                                                        _L8948_)))
                                                  (_lp8788_
                                                   _L8834_
                                                   (cons (cons _eid8963_
                                                               (cons _expr8964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8791_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8792_
                                                   _post8793_)))
                                              _hd88618943_
                                              _hd88588935_)
                                             (_g88498919_ _g88518922_))))
                                     (_g88498919_ _g88518922_))
                                 (_g88498919_ _g88518922_))))
                         (_g88498919_ _g88518922_))))
                 (_g88498919_ _g88518922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g88488966_ _L8835_)))
                                         _tl88028831_
                                         _hd88018829_)))
                                    (_g87958821_ _g87978824_)))))
                        (_g87948969_ _rest8790_)))))
                 (_generate-values-post8672_
                  (lambda (_post8744_ _body8745_)
                    (let _lp8747_ ((_rest8749_ _post8744_)
                                   (_body8750_ _body8745_))
                      (let* ((_rest87518759_ _rest8749_)
                             (_else87538767_ (lambda () _body8750_))
                             (_K87558773_
                              (lambda (_rest8770_ _bind8771_)
                                (_lp8747_
                                 _rest8770_
                                 (cons 'let
                                       (cons _bind8771_
                                             (cons _body8750_ '())))))))
                        (if (##pair? _rest87518759_)
                            (let ((_hd87568776_ (##car _rest87518759_))
                                  (_tl87578778_ (##cdr _rest87518759_)))
                              (let* ((_bind8781_ _hd87568776_)
                                     (_rest8783_ _tl87578778_))
                                (_K87558773_ _rest8783_ _bind8781_)))
                            (_else87538767_))))))
                 (_generate-values-check8673_
                  (lambda (_check8741_ _body8742_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8742_ '())
                                  (reverse _check8741_))))))
          (let* ((_g86758692_
                  (lambda (_g86768689_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86768689_)))
                 (_g86748738_
                  (lambda (_g86768695_)
                    (if (gx#stx-pair? _g86768695_)
                        (let ((_e86798697_ (gx#stx-e _g86768695_)))
                          (let ((_hd86808700_ (##car _e86798697_))
                                (_tl86818702_ (##cdr _e86798697_)))
                            (if (gx#stx-pair? _tl86818702_)
                                (let ((_e86828705_ (gx#stx-e _tl86818702_)))
                                  (let ((_hd86838708_ (##car _e86828705_))
                                        (_tl86848710_ (##cdr _e86828705_)))
                                    (if (gx#stx-pair? _tl86848710_)
                                        (let ((_e86858713_
                                               (gx#stx-e _tl86848710_)))
                                          (let ((_hd86868716_
                                                 (##car _e86858713_))
                                                (_tl86878718_
                                                 (##cdr _e86858713_)))
                                            (if (gx#stx-null? _tl86878718_)
                                                ((lambda (_L8721_ _L8722_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8722_)
                                                       (_generate-simple8669_
                                                        _L8722_
                                                        _L8721_)
                                                       (_generate-values8671_
                                                        _L8722_
                                                        _L8721_)))
                                                 _hd86868716_
                                                 _hd86838708_)
                                                (_g86758692_ _g86768695_))))
                                        (_g86758692_ _g86768695_))))
                                (_g86758692_ _g86768695_))))
                        (_g86758692_ _g86768695_)))))
            (_g86748738_ _stx8666_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9594_)
          (let ((_compiled-body?9596_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9594_
             _compiled-body?9596_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12921_
          (let ((_g12920_ (length _g12921_)))
            (cond ((##fx= _g12920_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12921_))
                  ((##fx= _g12920_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12921_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12921_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8565_ _hd8566_)
      (let _lp8568_ ((_rest8570_ _hd8566_) (_k8571_ '0) (_r8572_ '()))
        (let* ((_g85778593_
                (lambda (_g85788590_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85788590_)))
               (_g85768600_
                (lambda (_g85788596_) ((lambda () (reverse _r8572_)))))
               (_g85758616_
                (lambda (_g85788603_)
                  ((lambda (_L8605_)
                     (if (gx#identifier? _L8605_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L8605_)
                                             (cons (gxc#generate-runtime-values->list
                                                    _vals8565_
                                                    _k8571_)
                                                   '()))
                                       '())
                                 _r8572_)
                         (_g85768600_ _g85788603_)))
                   _g85788603_)))
               (_g85748640_
                (lambda (_g85788619_)
                  (if (gx#stx-pair? _g85788619_)
                      (let ((_e85858621_ (gx#stx-e _g85788619_)))
                        (let ((_hd85868624_ (##car _e85858621_))
                              (_tl85878626_ (##cdr _e85858621_)))
                          ((lambda (_L8629_ _L8630_)
                             (_lp8568_
                              _L8629_
                              (fx+ _k8571_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L8630_)
                                          (cons (gxc#generate-runtime-values-ref
                                                 _vals8565_
                                                 _k8571_
                                                 _L8629_)
                                                '()))
                                    _r8572_)))
                           _tl85878626_
                           _hd85868624_)))
                      (_g85758616_ _g85788619_))))
               (_g85738662_
                (lambda (_g85788643_)
                  (if (gx#stx-pair? _g85788643_)
                      (let ((_e85808645_ (gx#stx-e _g85788643_)))
                        (let ((_hd85818648_ (##car _e85808645_))
                              (_tl85828650_ (##cdr _e85808645_)))
                          (if (gx#stx-datum? _hd85818648_)
                              (if (equal? (gx#stx-e _hd85818648_) '#f)
                                  ((lambda (_L8653_)
                                     (_lp8568_
                                      _L8653_
                                      (fx+ _k8571_ '1)
                                      _r8572_))
                                   _tl85828650_)
                                  (_g85748640_ _g85788643_))
                              (_g85748640_ _g85788643_))))
                      (_g85748640_ _g85788643_)))))
          (_g85738662_ _rest8570_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8247_ _compiled-body?8248_)
        (letrec ((_generate-simple8250_
                  (lambda (_hd8552_ _body8553_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8552_
                     _body8553_
                     _compiled-body?8248_)))
                 (_generate-values8251_
                  (lambda (_hd8331_ _body8332_)
                    (let _lp8334_ ((_rest8336_ _hd8331_)
                                   (_bind8337_ '())
                                   (_check8338_ '())
                                   (_post8339_ '()))
                      (let* ((_g83428353_
                              (lambda (_g83438350_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g83438350_)))
                             (_g83418367_
                              (lambda (_g83438356_)
                                ((lambda ()
                                   (let* ((_body8360_
                                           (if _compiled-body?8248_
                                               _body8332_
                                               (gxc#compile-e _body8332_)))
                                          (_body8362_
                                           (_generate-values-post8253_
                                            _post8339_
                                            _body8360_))
                                          (_body8364_
                                           (_generate-values-check8252_
                                            _check8338_
                                            _body8362_)))
                                     (cons 'letrec
                                           (cons (reverse _bind8337_)
                                                 (cons _body8364_ '()))))))))
                             (_g83408549_
                              (lambda (_g83438370_)
                                (if (gx#stx-pair? _g83438370_)
                                    (let ((_e83468372_ (gx#stx-e _g83438370_)))
                                      (let ((_hd83478375_ (##car _e83468372_))
                                            (_tl83488377_ (##cdr _e83468372_)))
                                        ((lambda (_L8380_ _L8381_)
                                           (let* ((_g83968421_
                                                   (lambda (_g83978418_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g83978418_)))
                                                  (_g83958499_
                                                   (lambda (_g83978424_)
                                                     (if (gx#stx-pair?
                                                          _g83978424_)
                                                         (let ((_e84118426_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83978424_)))
                   (let ((_hd84128429_ (##car _e84118426_))
                         (_tl84138431_ (##cdr _e84118426_)))
                     (if (gx#stx-pair? _tl84138431_)
                         (let ((_e84148434_ (gx#stx-e _tl84138431_)))
                           (let ((_hd84158437_ (##car _e84148434_))
                                 (_tl84168439_ (##cdr _e84148434_)))
                             (if (gx#stx-null? _tl84168439_)
                                 ((lambda (_L8442_ _L8443_)
                                    (let* ((_vals8456_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8458_
                                            (gxc#generate-runtime-check-values
                                             _vals8456_
                                             _L8443_
                                             _L8442_))
                                           (_refs8460_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8456_
                                             _L8443_))
                                           (_expr8462_
                                            (gxc#compile-e _L8442_)))
                                      (_lp8334_
                                       _L8380_
                                       (foldl1 cons
                                               (cons (cons _vals8456_
                                                           (cons _expr8462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8337_)
                                               (map (lambda (_e84648466_)
                                                      (let* ((_g84688477_
                                                              _e84648466_)
                                                             (_E84708481_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g84688477_)))
                     (_K84718486_
                      (lambda (_eid8484_)
                        (cons _eid8484_ (cons '#!void '())))))
                (if (##pair? _g84688477_)
                    (let ((_hd84728489_ (##car _g84688477_))
                          (_tl84738491_ (##cdr _g84688477_)))
                      (let ((_eid8494_ _hd84728489_))
                        (if (##pair? _tl84738491_)
                            (let ((_tl84758496_ (##cdr _tl84738491_)))
                              (if (##null? _tl84758496_)
                                  (_K84718486_ _eid8494_)
                                  (_E84708481_)))
                            (_E84708481_))))
                    (_E84708481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8460_))
                                       (cons _check-values8458_ _check8338_)
                                       (foldl1 cons _refs8460_ _post8339_))))
                                  _hd84158437_
                                  _hd84128429_)
                                 (_g83968421_ _g83978424_))))
                         (_g83968421_ _g83978424_))))
                 (_g83968421_ _g83978424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83948546_
                                                   (lambda (_g83978502_)
                                                     (if (gx#stx-pair?
                                                          _g83978502_)
                                                         (let ((_e84008504_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83978502_)))
                   (let ((_hd84018507_ (##car _e84008504_))
                         (_tl84028509_ (##cdr _e84008504_)))
                     (if (gx#stx-pair? _hd84018507_)
                         (let ((_e84038512_ (gx#stx-e _hd84018507_)))
                           (let ((_hd84048515_ (##car _e84038512_))
                                 (_tl84058517_ (##cdr _e84038512_)))
                             (if (gx#stx-null? _tl84058517_)
                                 (if (gx#stx-pair? _tl84028509_)
                                     (let ((_e84068520_
                                            (gx#stx-e _tl84028509_)))
                                       (let ((_hd84078523_ (##car _e84068520_))
                                             (_tl84088525_
                                              (##cdr _e84068520_)))
                                         (if (gx#stx-null? _tl84088525_)
                                             ((lambda (_L8528_ _L8529_)
                                                (let ((_eid8543_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8529_))
                                                      (_expr8544_
                                                       (gxc#compile-e
                                                        _L8528_)))
                                                  (_lp8334_
                                                   _L8380_
                                                   (cons (cons _eid8543_
                                                               (cons _expr8544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8337_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8338_
                                                   _post8339_)))
                                              _hd84078523_
                                              _hd84048515_)
                                             (_g83958499_ _g83978502_))))
                                     (_g83958499_ _g83978502_))
                                 (_g83958499_ _g83978502_))))
                         (_g83958499_ _g83978502_))))
                 (_g83958499_ _g83978502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83948546_ _L8381_)))
                                         _tl83488377_
                                         _hd83478375_)))
                                    (_g83418367_ _g83438370_)))))
                        (_g83408549_ _rest8336_)))))
                 (_generate-values-check8252_
                  (lambda (_check8328_ _body8329_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8329_ '())
                                  (reverse _check8328_)))))
                 (_generate-values-post8253_
                  (lambda (_post8321_ _body8322_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8322_ '())
                                  (map (lambda (_g83238325_)
                                         (cons 'set! _g83238325_))
                                       (reverse _post8321_)))))))
          (let* ((_g82558272_
                  (lambda (_g82568269_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82568269_)))
                 (_g82548318_
                  (lambda (_g82568275_)
                    (if (gx#stx-pair? _g82568275_)
                        (let ((_e82598277_ (gx#stx-e _g82568275_)))
                          (let ((_hd82608280_ (##car _e82598277_))
                                (_tl82618282_ (##cdr _e82598277_)))
                            (if (gx#stx-pair? _tl82618282_)
                                (let ((_e82628285_ (gx#stx-e _tl82618282_)))
                                  (let ((_hd82638288_ (##car _e82628285_))
                                        (_tl82648290_ (##cdr _e82628285_)))
                                    (if (gx#stx-pair? _tl82648290_)
                                        (let ((_e82658293_
                                               (gx#stx-e _tl82648290_)))
                                          (let ((_hd82668296_
                                                 (##car _e82658293_))
                                                (_tl82678298_
                                                 (##cdr _e82658293_)))
                                            (if (gx#stx-null? _tl82678298_)
                                                ((lambda (_L8301_ _L8302_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8302_)
                                                       (_generate-simple8250_
                                                        _L8302_
                                                        _L8301_)
                                                       (_generate-values8251_
                                                        _L8302_
                                                        _L8301_)))
                                                 _hd82668296_
                                                 _hd82638288_)
                                                (_g82558272_ _g82568275_))))
                                        (_g82558272_ _g82568275_))))
                                (_g82558272_ _g82568275_))))
                        (_g82558272_ _g82568275_)))))
            (_g82548318_ _stx8247_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8558_)
          (let ((_compiled-body?8560_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8558_
             _compiled-body?8560_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12923_
          (let ((_g12922_ (length _g12923_)))
            (cond ((##fx= _g12922_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12923_))
                  ((##fx= _g12922_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12923_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12923_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7829_)
      (letrec ((_generate-values7831_
                (lambda (_hd8074_ _body8075_)
                  (let _lp8077_ ((_rest8079_ _hd8074_) (_bind8080_ '()))
                    (let* ((_rest80818089_ _rest8079_)
                           (_else80838100_
                            (lambda ()
                              (let ((_bind8097_ (reverse _bind8080_))
                                    (_body8098_ (gxc#compile-e _body8075_)))
                                (cons 'letrec*
                                      (cons _bind8097_
                                            (cons _body8098_ '()))))))
                           (_K80858234_
                            (lambda (_rest8103_ _hd-bind8104_)
                              (let* ((_g81078132_
                                      (lambda (_g81088129_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g81088129_)))
                                     (_g81068184_
                                      (lambda (_g81088135_)
                                        (if (gx#stx-pair? _g81088135_)
                                            (let ((_e81228137_
                                                   (gx#stx-e _g81088135_)))
                                              (let ((_hd81238140_
                                                     (##car _e81228137_))
                                                    (_tl81248142_
                                                     (##cdr _e81228137_)))
                                                (if (gx#stx-pair? _tl81248142_)
                                                    (let ((_e81258145_
                                                           (gx#stx-e
                                                            _tl81248142_)))
                                                      (let ((_hd81268148_
                                                             (##car _e81258145_))
                                                            (_tl81278150_
                                                             (##cdr _e81258145_)))
                                                        (if (gx#stx-null?
                                                             _tl81278150_)
                                                            ((lambda (_L8153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8154_)
                       (let* ((_vals8173_ (gxc#generate-runtime-temporary__0))
                              (_tmp8175_ (gxc#generate-runtime-temporary__0))
                              (_check-values8177_
                               (gxc#generate-runtime-check-values
                                _tmp8175_
                                _L8154_
                                _L8153_))
                              (_refs8179_
                               (gxc#generate-runtime-let-values-bind
                                _vals8173_
                                _L8154_))
                              (_expr8181_ (gxc#compile-e _L8153_)))
                         (_lp8077_
                          _rest8103_
                          (foldl1 cons
                                  (cons (cons _vals8173_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp8175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr8181_ '()))
                              '())
                        (cons _check-values8177_ (cons _tmp8175_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind8080_)
                                  _refs8179_))))
                     _hd81268148_
                     _hd81238140_)
                    (_g81078132_ _g81088135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81078132_
                                                     _g81088135_))))
                                            (_g81078132_ _g81088135_))))
                                     (_g81058231_
                                      (lambda (_g81088187_)
                                        (if (gx#stx-pair? _g81088187_)
                                            (let ((_e81118189_
                                                   (gx#stx-e _g81088187_)))
                                              (let ((_hd81128192_
                                                     (##car _e81118189_))
                                                    (_tl81138194_
                                                     (##cdr _e81118189_)))
                                                (if (gx#stx-pair? _hd81128192_)
                                                    (let ((_e81148197_
                                                           (gx#stx-e
                                                            _hd81128192_)))
                                                      (let ((_hd81158200_
                                                             (##car _e81148197_))
                                                            (_tl81168202_
                                                             (##cdr _e81148197_)))
                                                        (if (gx#stx-null?
                                                             _tl81168202_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81138194_)
                        (let ((_e81178205_ (gx#stx-e _tl81138194_)))
                          (let ((_hd81188208_ (##car _e81178205_))
                                (_tl81198210_ (##cdr _e81178205_)))
                            (if (gx#stx-null? _tl81198210_)
                                ((lambda (_L8213_ _L8214_)
                                   (let ((_eid8228_
                                          (gxc#generate-runtime-binding-id*
                                           _L8214_))
                                         (_expr8229_ (gxc#compile-e _L8213_)))
                                     (_lp8077_
                                      _rest8103_
                                      (cons (cons _eid8228_
                                                  (cons _expr8229_ '()))
                                            _bind8080_))))
                                 _hd81188208_
                                 _hd81158200_)
                                (_g81068184_ _g81088187_))))
                        (_g81068184_ _g81088187_))
                    (_g81068184_ _g81088187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81068184_
                                                     _g81088187_))))
                                            (_g81068184_ _g81088187_)))))
                                (_g81058231_ _hd-bind8104_)))))
                      (if (##pair? _rest80818089_)
                          (let ((_hd80868237_ (##car _rest80818089_))
                                (_tl80878239_ (##cdr _rest80818089_)))
                            (let* ((_hd-bind8242_ _hd80868237_)
                                   (_rest8244_ _tl80878239_))
                              (_K80858234_ _rest8244_ _hd-bind8242_)))
                          (_else80838100_))))))
               (_generate-letrec?7832_
                (lambda (_hd7964_)
                  (let _lp7966_ ((_rest7968_ _hd7964_))
                    (let* ((_rest79697977_ _rest7968_)
                           (_else79717985_ (lambda () '#t))
                           (_K79738062_
                            (lambda (_rest7988_ _hd-bind7989_)
                              (let* ((_g79918008_
                                      (lambda (_g79928005_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g79928005_)))
                                     (_g79908059_
                                      (lambda (_g79928011_)
                                        (if (gx#stx-pair? _g79928011_)
                                            (let ((_e79958013_
                                                   (gx#stx-e _g79928011_)))
                                              (let ((_hd79968016_
                                                     (##car _e79958013_))
                                                    (_tl79978018_
                                                     (##cdr _e79958013_)))
                                                (if (gx#stx-pair? _hd79968016_)
                                                    (let ((_e79988021_
                                                           (gx#stx-e
                                                            _hd79968016_)))
                                                      (let ((_hd79998024_
                                                             (##car _e79988021_))
                                                            (_tl80008026_
                                                             (##cdr _e79988021_)))
                                                        (if (gx#stx-null?
                                                             _tl80008026_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79978018_)
                        (let ((_e80018029_ (gx#stx-e _tl79978018_)))
                          (let ((_hd80028032_ (##car _e80018029_))
                                (_tl80038034_ (##cdr _e80018029_)))
                            (if (gx#stx-null? _tl80038034_)
                                ((lambda (_L8037_ _L8038_)
                                   (if (_is-lambda-expr?7833_ _L8037_)
                                       (_lp7966_ _rest7988_)
                                       '#f))
                                 _hd80028032_
                                 _hd79998024_)
                                (_g79918008_ _g79928011_))))
                        (_g79918008_ _g79928011_))
                    (_g79918008_ _g79928011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79918008_
                                                     _g79928011_))))
                                            (_g79918008_ _g79928011_)))))
                                (_g79908059_ _hd-bind7989_)))))
                      (if (##pair? _rest79697977_)
                          (let ((_hd79748065_ (##car _rest79697977_))
                                (_tl79758067_ (##cdr _rest79697977_)))
                            (let* ((_hd-bind8070_ _hd79748065_)
                                   (_rest8072_ _tl79758067_))
                              (_K79738062_ _rest8072_ _hd-bind8070_)))
                          (_else79717985_))))))
               (_is-lambda-expr?7833_
                (lambda (_expr7901_)
                  (let* ((_g79047918_
                          (lambda (_g79057915_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g79057915_)))
                         (_g79037925_ (lambda (_g79057921_) ((lambda () '#f))))
                         (_g79027961_
                          (lambda (_g79057928_)
                            (if (gx#stx-pair? _g79057928_)
                                (let ((_e79087930_ (gx#stx-e _g79057928_)))
                                  (let ((_hd79097933_ (##car _e79087930_))
                                        (_tl79107935_ (##cdr _e79087930_)))
                                    (if (gx#identifier? _hd79097933_)
                                        (if (gx#stx-eq? '%#lambda _hd79097933_)
                                            (if (gx#stx-pair? _tl79107935_)
                                                (let ((_e79117938_
                                                       (gx#stx-e
                                                        _tl79107935_)))
                                                  (let ((_hd79127941_
                                                         (##car _e79117938_))
                                                        (_tl79137943_
                                                         (##cdr _e79117938_)))
                                                    ((lambda (_L7946_ _L7947_)
                                                       '#t)
                                                     _tl79137943_
                                                     _hd79127941_)))
                                                (_g79037925_ _g79057928_))
                                            (_g79037925_ _g79057928_))
                                        (_g79037925_ _g79057928_))))
                                (_g79037925_ _g79057928_)))))
                    (_g79027961_ _expr7901_)))))
        (let* ((_g78357852_
                (lambda (_g78367849_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78367849_)))
               (_g78347898_
                (lambda (_g78367855_)
                  (if (gx#stx-pair? _g78367855_)
                      (let ((_e78397857_ (gx#stx-e _g78367855_)))
                        (let ((_hd78407860_ (##car _e78397857_))
                              (_tl78417862_ (##cdr _e78397857_)))
                          (if (gx#stx-pair? _tl78417862_)
                              (let ((_e78427865_ (gx#stx-e _tl78417862_)))
                                (let ((_hd78437868_ (##car _e78427865_))
                                      (_tl78447870_ (##cdr _e78427865_)))
                                  (if (gx#stx-pair? _tl78447870_)
                                      (let ((_e78457873_
                                             (gx#stx-e _tl78447870_)))
                                        (let ((_hd78467876_
                                               (##car _e78457873_))
                                              (_tl78477878_
                                               (##cdr _e78457873_)))
                                          (if (gx#stx-null? _tl78477878_)
                                              ((lambda (_L7881_ _L7882_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7882_)
                                                     (if (_generate-letrec?7832_
                                                          _L7882_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7882_
                                                          _L7881_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7882_
                                                          _L7881_
                                                          '#f))
                                                     (_generate-values7831_
                                                      _L7882_
                                                      _L7881_)))
                                               _hd78467876_
                                               _hd78437868_)
                                              (_g78357852_ _g78367855_))))
                                      (_g78357852_ _g78367855_))))
                              (_g78357852_ _g78367855_))))
                      (_g78357852_ _g78367855_)))))
          (_g78347898_ _stx7829_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7722_)
      (let _lp7724_ ((_rest7726_ _hd7722_))
        (let* ((_g77307751_
                (lambda (_g77317748_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g77317748_)))
               (_g77297758_ (lambda (_g77317754_) ((lambda () '#f))))
               (_g77287765_
                (lambda (_g77317761_)
                  (if (gx#stx-null? _g77317761_)
                      ((lambda () '#t))
                      (_g77297758_ _g77317761_))))
               (_g77277826_
                (lambda (_g77317768_)
                  (if (gx#stx-pair? _g77317768_)
                      (let ((_e77357770_ (gx#stx-e _g77317768_)))
                        (let ((_hd77367773_ (##car _e77357770_))
                              (_tl77377775_ (##cdr _e77357770_)))
                          (if (gx#stx-pair? _hd77367773_)
                              (let ((_e77387778_ (gx#stx-e _hd77367773_)))
                                (let ((_hd77397781_ (##car _e77387778_))
                                      (_tl77407783_ (##cdr _e77387778_)))
                                  (if (gx#stx-pair? _hd77397781_)
                                      (let ((_e77417786_
                                             (gx#stx-e _hd77397781_)))
                                        (let ((_hd77427789_
                                               (##car _e77417786_))
                                              (_tl77437791_
                                               (##cdr _e77417786_)))
                                          (if (gx#stx-null? _tl77437791_)
                                              (if (gx#stx-pair? _tl77407783_)
                                                  (let ((_e77447794_
                                                         (gx#stx-e
                                                          _tl77407783_)))
                                                    (let ((_hd77457797_
                                                           (##car _e77447794_))
                                                          (_tl77467799_
                                                           (##cdr _e77447794_)))
                                                      (if (gx#stx-null?
                                                           _tl77467799_)
                                                          ((lambda (_L7802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7803_
                            _L7804_)
                     (_lp7724_ _L7802_))
                   _tl77377775_
                   _hd77457797_
                   _hd77427789_)
                  (_g77287765_ _g77317768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77287765_ _g77317768_))
                                              (_g77287765_ _g77317768_))))
                                      (_g77287765_ _g77317768_))))
                              (_g77287765_ _g77317768_))))
                      (_g77287765_ _g77317768_)))))
          (_g77277826_ _rest7726_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7646_ _hd7647_ _body7648_ _compiled-body?7649_)
      (letrec ((_generate17651_
                (lambda (_bind7653_)
                  (let* ((_g76557672_
                          (lambda (_g76567669_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g76567669_)))
                         (_g76547719_
                          (lambda (_g76567675_)
                            (if (gx#stx-pair? _g76567675_)
                                (let ((_e76597677_ (gx#stx-e _g76567675_)))
                                  (let ((_hd76607680_ (##car _e76597677_))
                                        (_tl76617682_ (##cdr _e76597677_)))
                                    (if (gx#stx-pair? _hd76607680_)
                                        (let ((_e76627685_
                                               (gx#stx-e _hd76607680_)))
                                          (let ((_hd76637688_
                                                 (##car _e76627685_))
                                                (_tl76647690_
                                                 (##cdr _e76627685_)))
                                            (if (gx#stx-null? _tl76647690_)
                                                (if (gx#stx-pair? _tl76617682_)
                                                    (let ((_e76657693_
                                                           (gx#stx-e
                                                            _tl76617682_)))
                                                      (let ((_hd76667696_
                                                             (##car _e76657693_))
                                                            (_tl76677698_
                                                             (##cdr _e76657693_)))
                                                        (if (gx#stx-null?
                                                             _tl76677698_)
                                                            ((lambda (_L7701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7702_)
                       (cons (gxc#generate-runtime-binding-id* _L7702_)
                             (cons (gxc#compile-e _L7701_) '())))
                     _hd76667696_
                     _hd76637688_)
                    (_g76557672_ _g76567675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76557672_ _g76567675_))
                                                (_g76557672_ _g76567675_))))
                                        (_g76557672_ _g76567675_))))
                                (_g76557672_ _g76567675_)))))
                    (_g76547719_ _bind7653_)))))
        (cons _form7646_
              (cons (map _generate17651_ _hd7647_)
                    (cons (if _compiled-body?7649_
                              _body7648_
                              (gxc#compile-e _body7648_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7554_)
      (letrec ((_generate17556_
                (lambda (_datum7608_)
                  (if (let ((_$e7610_ (null? _datum7608_)))
                        (if _$e7610_
                            _$e7610_
                            (let ((_$e7613_ (interned-symbol? _datum7608_)))
                              (if _$e7613_
                                  _$e7613_
                                  (let ((_$e7616_
                                         (gx#self-quoting? _datum7608_)))
                                    (if _$e7616_
                                        _$e7616_
                                        (eof-object? _datum7608_)))))))
                      _datum7608_
                      (if (uninterned-symbol? _datum7608_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7608_
                           '#t)
                          (if (pair? _datum7608_)
                              (cons (_generate17556_ (car _datum7608_))
                                    (_generate17556_ (cdr _datum7608_)))
                              (if (box? _datum7608_)
                                  (box (_generate17556_ (unbox _datum7608_)))
                                  (if (vector? _datum7608_)
                                      (vector-map _generate17556_ _datum7608_)
                                      (if (let ((_$e7619_
                                                 (s8vector? _datum7608_)))
                                            (if _$e7619_
                                                _$e7619_
                                                (let ((_$e7622_
                                                       (u8vector?
                                                        _datum7608_)))
                                                  (if _$e7622_
                                                      _$e7622_
                                                      (let ((_$e7625_
                                                             (s16vector?
                                                              _datum7608_)))
                                                        (if _$e7625_
                                                            _$e7625_
                                                            (let ((_$e7628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7608_)))
                      (if _$e7628_
                          _$e7628_
                          (let ((_$e7631_ (s32vector? _datum7608_)))
                            (if _$e7631_
                                _$e7631_
                                (let ((_$e7634_ (u32vector? _datum7608_)))
                                  (if _$e7634_
                                      _$e7634_
                                      (let ((_$e7637_
                                             (s64vector? _datum7608_)))
                                        (if _$e7637_
                                            _$e7637_
                                            (let ((_$e7640_
                                                   (u64vector? _datum7608_)))
                                              (if _$e7640_
                                                  _$e7640_
                                                  (let ((_$e7643_
                                                         (f32vector?
                                                          _datum7608_)))
                                                    (if _$e7643_
                                                        _$e7643_
                                                        (f64vector?
                                                         _datum7608_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7608_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7554_))))))))))
        (let* ((_g75587571_
                (lambda (_g75597568_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75597568_)))
               (_g75577605_
                (lambda (_g75597574_)
                  (if (gx#stx-pair? _g75597574_)
                      (let ((_e75617576_ (gx#stx-e _g75597574_)))
                        (let ((_hd75627579_ (##car _e75617576_))
                              (_tl75637581_ (##cdr _e75617576_)))
                          (if (gx#stx-pair? _tl75637581_)
                              (let ((_e75647584_ (gx#stx-e _tl75637581_)))
                                (let ((_hd75657587_ (##car _e75647584_))
                                      (_tl75667589_ (##cdr _e75647584_)))
                                  (if (gx#stx-null? _tl75667589_)
                                      ((lambda (_L7592_)
                                         (cons 'quote
                                               (cons (_generate17556_
                                                      (gx#stx-e _L7592_))
                                                     '())))
                                       _hd75657587_)
                                      (_g75587571_ _g75597574_))))
                              (_g75587571_ _g75597574_))))
                      (_g75587571_ _g75597574_)))))
          (_g75577605_ _stx7554_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7247_)
      (let* ((_g72497263_
              (lambda (_g72507260_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72507260_)))
             (_g72487551_
              (lambda (_g72507266_)
                (if (gx#stx-pair? _g72507266_)
                    (let ((_e72537268_ (gx#stx-e _g72507266_)))
                      (let ((_hd72547271_ (##car _e72537268_))
                            (_tl72557273_ (##cdr _e72537268_)))
                        (if (gx#stx-pair? _tl72557273_)
                            (let ((_e72567276_ (gx#stx-e _tl72557273_)))
                              (let ((_hd72577279_ (##car _e72567276_))
                                    (_tl72587281_ (##cdr _e72567276_)))
                                ((lambda (_L7284_ _L7285_)
                                   (let ((_rator7298_ (gxc#compile-e _L7285_))
                                         (_rands7299_
                                          (map gxc#compile-e _L7284_)))
                                     (let* ((_g73027354_
                                             (lambda (_g73037351_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g73037351_)))
                                            (_g73017361_
                                             (lambda (_g73037357_)
                                               ((lambda ()
                                                  (cons _rator7298_
                                                        _rands7299_)))))
                                            (_g73007548_
                                             (lambda (_g73037364_)
                                               (if (gx#stx-pair? _g73037364_)
                                                   (let ((_e73087366_
                                                          (gx#stx-e
                                                           _g73037364_)))
                                                     (let ((_hd73097369_
                                                            (##car _e73087366_))
                                                           (_tl73107371_
                                                            (##cdr _e73087366_)))
                                                       (if (gx#identifier?
                                                            _hd73097369_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd73097369_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl73107371_)
                           (let ((_e73117374_ (gx#stx-e _tl73107371_)))
                             (let ((_hd73127377_ (##car _e73117374_))
                                   (_tl73137379_ (##cdr _e73117374_)))
                               (if (gx#stx-pair? _hd73127377_)
                                   (let ((_e73147382_ (gx#stx-e _hd73127377_)))
                                     (let ((_hd73157385_ (##car _e73147382_))
                                           (_tl73167387_ (##cdr _e73147382_)))
                                       (if (gx#stx-pair? _hd73157385_)
                                           (let ((_e73177390_
                                                  (gx#stx-e _hd73157385_)))
                                             (let ((_hd73187393_
                                                    (##car _e73177390_))
                                                   (_tl73197395_
                                                    (##cdr _e73177390_)))
                                               (if (gx#stx-pair? _tl73197395_)
                                                   (let ((_e73207398_
                                                          (gx#stx-e
                                                           _tl73197395_)))
                                                     (let ((_hd73217401_
                                                            (##car _e73207398_))
                                                           (_tl73227403_
                                                            (##cdr _e73207398_)))
                                                       (if (gx#stx-pair?
                                                            _hd73217401_)
                                                           (let ((_e73237406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd73217401_)))
                     (let ((_hd73247409_ (##car _e73237406_))
                           (_tl73257411_ (##cdr _e73237406_)))
                       (if (gx#identifier? _hd73247409_)
                           (if (gx#stx-eq? 'lambda _hd73247409_)
                               (if (gx#stx-pair? _tl73257411_)
                                   (let ((_e73267414_ (gx#stx-e _tl73257411_)))
                                     (let ((_hd73277417_ (##car _e73267414_))
                                           (_tl73287419_ (##cdr _e73267414_)))
                                       (if (gx#stx-pair/null? _hd73277417_)
                                           (if (fx>= (gx#stx-length
                                                      _hd73277417_)
                                                     '0)
                                               (let ((_g12924_
                                                      (gx#syntax-split-splice
                                                       _hd73277417_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12925_
                                                          (if (##values?
                                                               _g12924_)
                                                              (##vector-length
                                                               _g12924_)
                                                              1)))
                                                     (if (not (##fx= _g12925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g12925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target73297422_
                                                          (##vector-ref
                                                           _g12924_
                                                           0))
                                                         (_tl73317424_
                                                          (##vector-ref
                                                           _g12924_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl73317424_)
                                                         (letrec ((_loop73327427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd73307430_ _arg73367432_)
                             (if (gx#stx-pair? _hd73307430_)
                                 (let ((_e73337435_ (gx#stx-e _hd73307430_)))
                                   (let ((_lp-hd73347438_ (##car _e73337435_))
                                         (_lp-tl73357440_ (##cdr _e73337435_)))
                                     (_loop73327427_
                                      _lp-tl73357440_
                                      (cons _lp-hd73347438_ _arg73367432_))))
                                 (let ((_arg73377443_ (reverse _arg73367432_)))
                                   (if (gx#stx-pair/null? _tl73287419_)
                                       (if (fx>= (gx#stx-length _tl73287419_)
                                                 '0)
                                           (let ((_g12926_
                                                  (gx#syntax-split-splice
                                                   _tl73287419_
                                                   '0)))
                                             (begin
                                               (let ((_g12927_
                                                      (if (##values? _g12926_)
                                                          (##vector-length
                                                           _g12926_)
                                                          1)))
                                                 (if (not (##fx= _g12927_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12927_)))
                                               (let ((_target73387446_
                                                      (##vector-ref
                                                       _g12926_
                                                       0))
                                                     (_tl73407448_
                                                      (##vector-ref
                                                       _g12926_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl73407448_)
                                                     (letrec ((_loop73417451_
                                                               (lambda (_hd73397454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body73457456_)
                         (if (gx#stx-pair? _hd73397454_)
                             (let ((_e73427459_ (gx#stx-e _hd73397454_)))
                               (let ((_lp-hd73437462_ (##car _e73427459_))
                                     (_lp-tl73447464_ (##cdr _e73427459_)))
                                 (_loop73417451_
                                  _lp-tl73447464_
                                  (cons _lp-hd73437462_ _body73457456_))))
                             (let ((_body73467467_ (reverse _body73457456_)))
                               (if (gx#stx-null? _tl73227403_)
                                   (if (gx#stx-null? _tl73167387_)
                                       (if (gx#stx-pair? _tl73137379_)
                                           (let ((_e73477470_
                                                  (gx#stx-e _tl73137379_)))
                                             (let ((_hd73487473_
                                                    (##car _e73477470_))
                                                   (_tl73497475_
                                                    (##cdr _e73477470_)))
                                               (if (gx#stx-null? _tl73497475_)
                                                   ((lambda (_L7478_
                                                             _L7479_
                                                             _L7480_
                                                             _L7481_)
                                                      (if (eq? _L7481_ _L7478_)
                                                          (if (fx= (length _rands7299_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g75177520_ _g75187522_)
                                               (cons _g75177520_ _g75187522_))
                                             '()
                                             _L7480_))))
                      (let* ((_id7525_ _L7481_)
                             (_args7534_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75267529_ _g75277531_)
                                          (cons _g75267529_ _g75277531_))
                                        '()
                                        _L7480_)))
                             (_body7543_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75357538_ _g75367540_)
                                          (cons _g75357538_ _g75367540_))
                                        '()
                                        _L7479_)))
                             (_init7545_ (map list _args7534_ _rands7299_)))
                        (cons 'let
                              (cons _id7525_ (cons _init7545_ _body7543_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx7247_))
                  (_g73017361_ _g73037364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73487473_
                                                    _body73467467_
                                                    _arg73377443_
                                                    _hd73187393_)
                                                   (_g73017361_ _g73037364_))))
                                           (_g73017361_ _g73037364_))
                                       (_g73017361_ _g73037364_))
                                   (_g73017361_ _g73037364_)))))))
               (_loop73417451_ _target73387446_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73017361_
                                                      _g73037364_)))))
                                           (_g73017361_ _g73037364_))
                                       (_g73017361_ _g73037364_)))))))
                   (_loop73327427_ _target73297422_ '()))
                 (_g73017361_ _g73037364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g73017361_ _g73037364_))
                                           (_g73017361_ _g73037364_))))
                                   (_g73017361_ _g73037364_))
                               (_g73017361_ _g73037364_))
                           (_g73017361_ _g73037364_))))
                   (_g73017361_ _g73037364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73017361_ _g73037364_))))
                                           (_g73017361_ _g73037364_))))
                                   (_g73017361_ _g73037364_))))
                           (_g73017361_ _g73037364_))
                       (_g73017361_ _g73037364_))
                   (_g73017361_ _g73037364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73017361_
                                                    _g73037364_)))))
                                       (_g73007548_ _rator7298_))))
                                 _tl72587281_
                                 _hd72577279_)))
                            (_g72497263_ _g72507266_))))
                    (_g72497263_ _g72507266_)))))
        (_g72487551_ _stx7247_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7209_)
      (let* ((_g72117221_
              (lambda (_g72127218_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72127218_)))
             (_g72107244_
              (lambda (_g72127224_)
                (if (gx#stx-pair? _g72127224_)
                    (let ((_e72147226_ (gx#stx-e _g72127224_)))
                      (let ((_hd72157229_ (##car _e72147226_))
                            (_tl72167231_ (##cdr _e72147226_)))
                        ((lambda (_L7234_)
                           (cons 'if (map gxc#compile-e _L7234_)))
                         _tl72167231_)))
                    (_g72117221_ _g72127224_)))))
        (_g72107244_ _stx7209_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7158_)
      (let* ((_g71607173_
              (lambda (_g71617170_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71617170_)))
             (_g71597206_
              (lambda (_g71617176_)
                (if (gx#stx-pair? _g71617176_)
                    (let ((_e71637178_ (gx#stx-e _g71617176_)))
                      (let ((_hd71647181_ (##car _e71637178_))
                            (_tl71657183_ (##cdr _e71637178_)))
                        (if (gx#stx-pair? _tl71657183_)
                            (let ((_e71667186_ (gx#stx-e _tl71657183_)))
                              (let ((_hd71677189_ (##car _e71667186_))
                                    (_tl71687191_ (##cdr _e71667186_)))
                                (if (gx#stx-null? _tl71687191_)
                                    ((lambda (_L7194_)
                                       (gxc#generate-runtime-binding-id
                                        _L7194_))
                                     _hd71677189_)
                                    (_g71607173_ _g71617176_))))
                            (_g71607173_ _g71617176_))))
                    (_g71607173_ _g71617176_)))))
        (_g71597206_ _stx7158_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7091_)
      (let* ((_g70937110_
              (lambda (_g70947107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70947107_)))
             (_g70927155_
              (lambda (_g70947113_)
                (if (gx#stx-pair? _g70947113_)
                    (let ((_e70977115_ (gx#stx-e _g70947113_)))
                      (let ((_hd70987118_ (##car _e70977115_))
                            (_tl70997120_ (##cdr _e70977115_)))
                        (if (gx#stx-pair? _tl70997120_)
                            (let ((_e71007123_ (gx#stx-e _tl70997120_)))
                              (let ((_hd71017126_ (##car _e71007123_))
                                    (_tl71027128_ (##cdr _e71007123_)))
                                (if (gx#stx-pair? _tl71027128_)
                                    (let ((_e71037131_
                                           (gx#stx-e _tl71027128_)))
                                      (let ((_hd71047134_ (##car _e71037131_))
                                            (_tl71057136_ (##cdr _e71037131_)))
                                        (if (gx#stx-null? _tl71057136_)
                                            ((lambda (_L7139_ _L7140_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7140_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7139_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71047134_
                                             _hd71017126_)
                                            (_g70937110_ _g70947113_))))
                                    (_g70937110_ _g70947113_))))
                            (_g70937110_ _g70947113_))))
                    (_g70937110_ _g70947113_)))))
        (_g70927155_ _stx7091_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7024_)
      (let* ((_g70267043_
              (lambda (_g70277040_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70277040_)))
             (_g70257088_
              (lambda (_g70277046_)
                (if (gx#stx-pair? _g70277046_)
                    (let ((_e70307048_ (gx#stx-e _g70277046_)))
                      (let ((_hd70317051_ (##car _e70307048_))
                            (_tl70327053_ (##cdr _e70307048_)))
                        (if (gx#stx-pair? _tl70327053_)
                            (let ((_e70337056_ (gx#stx-e _tl70327053_)))
                              (let ((_hd70347059_ (##car _e70337056_))
                                    (_tl70357061_ (##cdr _e70337056_)))
                                (if (gx#stx-pair? _tl70357061_)
                                    (let ((_e70367064_
                                           (gx#stx-e _tl70357061_)))
                                      (let ((_hd70377067_ (##car _e70367064_))
                                            (_tl70387069_ (##cdr _e70367064_)))
                                        (if (gx#stx-null? _tl70387069_)
                                            ((lambda (_L7072_ _L7073_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7072_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7073_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70377067_
                                             _hd70347059_)
                                            (_g70267043_ _g70277046_))))
                                    (_g70267043_ _g70277046_))))
                            (_g70267043_ _g70277046_))))
                    (_g70267043_ _g70277046_)))))
        (_g70257088_ _stx7024_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6957_)
      (let* ((_g69596976_
              (lambda (_g69606973_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69606973_)))
             (_g69587021_
              (lambda (_g69606979_)
                (if (gx#stx-pair? _g69606979_)
                    (let ((_e69636981_ (gx#stx-e _g69606979_)))
                      (let ((_hd69646984_ (##car _e69636981_))
                            (_tl69656986_ (##cdr _e69636981_)))
                        (if (gx#stx-pair? _tl69656986_)
                            (let ((_e69666989_ (gx#stx-e _tl69656986_)))
                              (let ((_hd69676992_ (##car _e69666989_))
                                    (_tl69686994_ (##cdr _e69666989_)))
                                (if (gx#stx-pair? _tl69686994_)
                                    (let ((_e69696997_
                                           (gx#stx-e _tl69686994_)))
                                      (let ((_hd69707000_ (##car _e69696997_))
                                            (_tl69717002_ (##cdr _e69696997_)))
                                        (if (gx#stx-null? _tl69717002_)
                                            ((lambda (_L7005_ _L7006_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7005_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7006_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd69707000_
                                             _hd69676992_)
                                            (_g69596976_ _g69606979_))))
                                    (_g69596976_ _g69606979_))))
                            (_g69596976_ _g69606979_))))
                    (_g69596976_ _g69606979_)))))
        (_g69587021_ _stx6957_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6874_)
      (let* ((_g68766897_
              (lambda (_g68776894_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68776894_)))
             (_g68756954_
              (lambda (_g68776900_)
                (if (gx#stx-pair? _g68776900_)
                    (let ((_e68816902_ (gx#stx-e _g68776900_)))
                      (let ((_hd68826905_ (##car _e68816902_))
                            (_tl68836907_ (##cdr _e68816902_)))
                        (if (gx#stx-pair? _tl68836907_)
                            (let ((_e68846910_ (gx#stx-e _tl68836907_)))
                              (let ((_hd68856913_ (##car _e68846910_))
                                    (_tl68866915_ (##cdr _e68846910_)))
                                (if (gx#stx-pair? _tl68866915_)
                                    (let ((_e68876918_
                                           (gx#stx-e _tl68866915_)))
                                      (let ((_hd68886921_ (##car _e68876918_))
                                            (_tl68896923_ (##cdr _e68876918_)))
                                        (if (gx#stx-pair? _tl68896923_)
                                            (let ((_e68906926_
                                                   (gx#stx-e _tl68896923_)))
                                              (let ((_hd68916929_
                                                     (##car _e68906926_))
                                                    (_tl68926931_
                                                     (##cdr _e68906926_)))
                                                (if (gx#stx-null? _tl68926931_)
                                                    ((lambda (_L6934_
                                                              _L6935_
                                                              _L6936_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6934_)
                           (cons (gxc#compile-e _L6935_)
                                 (cons (gxc#compile-e _L6936_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd68916929_
                                                     _hd68886921_
                                                     _hd68856913_)
                                                    (_g68766897_
                                                     _g68776900_))))
                                            (_g68766897_ _g68776900_))))
                                    (_g68766897_ _g68776900_))))
                            (_g68766897_ _g68776900_))))
                    (_g68766897_ _g68776900_)))))
        (_g68756954_ _stx6874_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6775_)
      (let* ((_g67776802_
              (lambda (_g67786799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67786799_)))
             (_g67766871_
              (lambda (_g67786805_)
                (if (gx#stx-pair? _g67786805_)
                    (let ((_e67836807_ (gx#stx-e _g67786805_)))
                      (let ((_hd67846810_ (##car _e67836807_))
                            (_tl67856812_ (##cdr _e67836807_)))
                        (if (gx#stx-pair? _tl67856812_)
                            (let ((_e67866815_ (gx#stx-e _tl67856812_)))
                              (let ((_hd67876818_ (##car _e67866815_))
                                    (_tl67886820_ (##cdr _e67866815_)))
                                (if (gx#stx-pair? _tl67886820_)
                                    (let ((_e67896823_
                                           (gx#stx-e _tl67886820_)))
                                      (let ((_hd67906826_ (##car _e67896823_))
                                            (_tl67916828_ (##cdr _e67896823_)))
                                        (if (gx#stx-pair? _tl67916828_)
                                            (let ((_e67926831_
                                                   (gx#stx-e _tl67916828_)))
                                              (let ((_hd67936834_
                                                     (##car _e67926831_))
                                                    (_tl67946836_
                                                     (##cdr _e67926831_)))
                                                (if (gx#stx-pair? _tl67946836_)
                                                    (let ((_e67956839_
                                                           (gx#stx-e
                                                            _tl67946836_)))
                                                      (let ((_hd67966842_
                                                             (##car _e67956839_))
                                                            (_tl67976844_
                                                             (##cdr _e67956839_)))
                                                        (if (gx#stx-null?
                                                             _tl67976844_)
                                                            ((lambda (_L6847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6848_
                              _L6849_
                              _L6850_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6848_)
                                   (cons (gxc#compile-e _L6847_)
                                         (cons (gxc#compile-e _L6849_)
                                               (cons (gxc#compile-e _L6850_)
                                                     (cons ''#f '())))))))
                     _hd67966842_
                     _hd67936834_
                     _hd67906826_
                     _hd67876818_)
                    (_g67776802_ _g67786805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g67776802_
                                                     _g67786805_))))
                                            (_g67776802_ _g67786805_))))
                                    (_g67776802_ _g67786805_))))
                            (_g67776802_ _g67786805_))))
                    (_g67776802_ _g67786805_)))))
        (_g67766871_ _stx6775_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6692_)
      (let* ((_g66946715_
              (lambda (_g66956712_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66956712_)))
             (_g66936772_
              (lambda (_g66956718_)
                (if (gx#stx-pair? _g66956718_)
                    (let ((_e66996720_ (gx#stx-e _g66956718_)))
                      (let ((_hd67006723_ (##car _e66996720_))
                            (_tl67016725_ (##cdr _e66996720_)))
                        (if (gx#stx-pair? _tl67016725_)
                            (let ((_e67026728_ (gx#stx-e _tl67016725_)))
                              (let ((_hd67036731_ (##car _e67026728_))
                                    (_tl67046733_ (##cdr _e67026728_)))
                                (if (gx#stx-pair? _tl67046733_)
                                    (let ((_e67056736_
                                           (gx#stx-e _tl67046733_)))
                                      (let ((_hd67066739_ (##car _e67056736_))
                                            (_tl67076741_ (##cdr _e67056736_)))
                                        (if (gx#stx-pair? _tl67076741_)
                                            (let ((_e67086744_
                                                   (gx#stx-e _tl67076741_)))
                                              (let ((_hd67096747_
                                                     (##car _e67086744_))
                                                    (_tl67106749_
                                                     (##cdr _e67086744_)))
                                                (if (gx#stx-null? _tl67106749_)
                                                    ((lambda (_L6752_
                                                              _L6753_
                                                              _L6754_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6752_)
                           (cons (gxc#compile-e _L6753_)
                                 (cons (gxc#compile-e _L6754_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67096747_
                                                     _hd67066739_
                                                     _hd67036731_)
                                                    (_g66946715_
                                                     _g66956718_))))
                                            (_g66946715_ _g66956718_))))
                                    (_g66946715_ _g66956718_))))
                            (_g66946715_ _g66956718_))))
                    (_g66946715_ _g66956718_)))))
        (_g66936772_ _stx6692_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6593_)
      (let* ((_g65956620_
              (lambda (_g65966617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65966617_)))
             (_g65946689_
              (lambda (_g65966623_)
                (if (gx#stx-pair? _g65966623_)
                    (let ((_e66016625_ (gx#stx-e _g65966623_)))
                      (let ((_hd66026628_ (##car _e66016625_))
                            (_tl66036630_ (##cdr _e66016625_)))
                        (if (gx#stx-pair? _tl66036630_)
                            (let ((_e66046633_ (gx#stx-e _tl66036630_)))
                              (let ((_hd66056636_ (##car _e66046633_))
                                    (_tl66066638_ (##cdr _e66046633_)))
                                (if (gx#stx-pair? _tl66066638_)
                                    (let ((_e66076641_
                                           (gx#stx-e _tl66066638_)))
                                      (let ((_hd66086644_ (##car _e66076641_))
                                            (_tl66096646_ (##cdr _e66076641_)))
                                        (if (gx#stx-pair? _tl66096646_)
                                            (let ((_e66106649_
                                                   (gx#stx-e _tl66096646_)))
                                              (let ((_hd66116652_
                                                     (##car _e66106649_))
                                                    (_tl66126654_
                                                     (##cdr _e66106649_)))
                                                (if (gx#stx-pair? _tl66126654_)
                                                    (let ((_e66136657_
                                                           (gx#stx-e
                                                            _tl66126654_)))
                                                      (let ((_hd66146660_
                                                             (##car _e66136657_))
                                                            (_tl66156662_
                                                             (##cdr _e66136657_)))
                                                        (if (gx#stx-null?
                                                             _tl66156662_)
                                                            ((lambda (_L6665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6666_
                              _L6667_
                              _L6668_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6666_)
                                   (cons (gxc#compile-e _L6665_)
                                         (cons (gxc#compile-e _L6667_)
                                               (cons (gxc#compile-e _L6668_)
                                                     (cons ''#f '())))))))
                     _hd66146660_
                     _hd66116652_
                     _hd66086644_
                     _hd66056636_)
                    (_g65956620_ _g65966623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65956620_
                                                     _g65966623_))))
                                            (_g65956620_ _g65966623_))))
                                    (_g65956620_ _g65966623_))))
                            (_g65956620_ _g65966623_))))
                    (_g65956620_ _g65966623_)))))
        (_g65946689_ _stx6593_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6510_)
      (let* ((_g65126533_
              (lambda (_g65136530_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65136530_)))
             (_g65116590_
              (lambda (_g65136536_)
                (if (gx#stx-pair? _g65136536_)
                    (let ((_e65176538_ (gx#stx-e _g65136536_)))
                      (let ((_hd65186541_ (##car _e65176538_))
                            (_tl65196543_ (##cdr _e65176538_)))
                        (if (gx#stx-pair? _tl65196543_)
                            (let ((_e65206546_ (gx#stx-e _tl65196543_)))
                              (let ((_hd65216549_ (##car _e65206546_))
                                    (_tl65226551_ (##cdr _e65206546_)))
                                (if (gx#stx-pair? _tl65226551_)
                                    (let ((_e65236554_
                                           (gx#stx-e _tl65226551_)))
                                      (let ((_hd65246557_ (##car _e65236554_))
                                            (_tl65256559_ (##cdr _e65236554_)))
                                        (if (gx#stx-pair? _tl65256559_)
                                            (let ((_e65266562_
                                                   (gx#stx-e _tl65256559_)))
                                              (let ((_hd65276565_
                                                     (##car _e65266562_))
                                                    (_tl65286567_
                                                     (##cdr _e65266562_)))
                                                (if (gx#stx-null? _tl65286567_)
                                                    ((lambda (_L6570_
                                                              _L6571_
                                                              _L6572_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6570_)
                           (cons (gxc#compile-e _L6571_)
                                 (cons (gxc#compile-e _L6572_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65276565_
                                                     _hd65246557_
                                                     _hd65216549_)
                                                    (_g65126533_
                                                     _g65136536_))))
                                            (_g65126533_ _g65136536_))))
                                    (_g65126533_ _g65136536_))))
                            (_g65126533_ _g65136536_))))
                    (_g65126533_ _g65136536_)))))
        (_g65116590_ _stx6510_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6411_)
      (let* ((_g64136438_
              (lambda (_g64146435_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64146435_)))
             (_g64126507_
              (lambda (_g64146441_)
                (if (gx#stx-pair? _g64146441_)
                    (let ((_e64196443_ (gx#stx-e _g64146441_)))
                      (let ((_hd64206446_ (##car _e64196443_))
                            (_tl64216448_ (##cdr _e64196443_)))
                        (if (gx#stx-pair? _tl64216448_)
                            (let ((_e64226451_ (gx#stx-e _tl64216448_)))
                              (let ((_hd64236454_ (##car _e64226451_))
                                    (_tl64246456_ (##cdr _e64226451_)))
                                (if (gx#stx-pair? _tl64246456_)
                                    (let ((_e64256459_
                                           (gx#stx-e _tl64246456_)))
                                      (let ((_hd64266462_ (##car _e64256459_))
                                            (_tl64276464_ (##cdr _e64256459_)))
                                        (if (gx#stx-pair? _tl64276464_)
                                            (let ((_e64286467_
                                                   (gx#stx-e _tl64276464_)))
                                              (let ((_hd64296470_
                                                     (##car _e64286467_))
                                                    (_tl64306472_
                                                     (##cdr _e64286467_)))
                                                (if (gx#stx-pair? _tl64306472_)
                                                    (let ((_e64316475_
                                                           (gx#stx-e
                                                            _tl64306472_)))
                                                      (let ((_hd64326478_
                                                             (##car _e64316475_))
                                                            (_tl64336480_
                                                             (##cdr _e64316475_)))
                                                        (if (gx#stx-null?
                                                             _tl64336480_)
                                                            ((lambda (_L6483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6484_
                              _L6485_
                              _L6486_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6484_)
                                   (cons (gxc#compile-e _L6483_)
                                         (cons (gxc#compile-e _L6485_)
                                               (cons (gxc#compile-e _L6486_)
                                                     (cons ''#f '())))))))
                     _hd64326478_
                     _hd64296470_
                     _hd64266462_
                     _hd64236454_)
                    (_g64136438_ _g64146441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64136438_
                                                     _g64146441_))))
                                            (_g64136438_ _g64146441_))))
                                    (_g64136438_ _g64146441_))))
                            (_g64136438_ _g64146441_))))
                    (_g64136438_ _g64146441_)))))
        (_g64126507_ _stx6411_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6265_)
      (letrec ((_import-set-template6267_
                (lambda (_in6363_ _phi6364_)
                  (let ((_iphi6366_
                         (fx+ _phi6364_
                              (##direct-structure-ref
                               _in6363_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6367_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6363_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6369_ ((_rest6371_ _imports6367_) (_r6372_ '()))
                      (let* ((_rest63736381_ _rest6371_)
                             (_else63756389_ (lambda () _r6372_))
                             (_K63776399_
                              (lambda (_rest6392_ _in6393_)
                                (if (##structure-instance-of?
                                     _in6393_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6366_)
                                        (_lp6369_
                                         _rest6392_
                                         (cons _in6393_ _r6372_))
                                        (_lp6369_ _rest6392_ _r6372_))
                                    (if (##structure-direct-instance-of?
                                         _in6393_
                                         'gx#module-import::t)
                                        (let ((_iphi6395_
                                               (fx+ _phi6364_
                                                    (##direct-structure-ref
                                                     _in6393_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6395_)
                                              (_lp6369_
                                               _rest6392_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6393_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6372_))
                                              (_lp6369_ _rest6392_ _r6372_)))
                                        (if (##structure-direct-instance-of?
                                             _in6393_
                                             'gx#import-set::t)
                                            (let ((_xphi6397_
                                                   (fx+ _iphi6366_
                                                        (##direct-structure-ref
                                                         _in6393_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6397_)
                                                  (_lp6369_
                                                   _rest6392_
                                                   (cons (##direct-structure-ref
                                                          _in6393_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6372_))
                                                  (if (fxpositive? _xphi6397_)
                                                      (_lp6369_
                                                       _rest6392_
                                                       (foldl1 cons
                                                               _r6372_
                                                               (_import-set-template6267_
                                                                _in6393_
                                                                _iphi6366_)))
                                                      (_lp6369_
                                                       _rest6392_
                                                       _r6372_))))
                                            (_lp6369_ _rest6392_ _r6372_)))))))
                        (if (##pair? _rest63736381_)
                            (let ((_hd63786402_ (##car _rest63736381_))
                                  (_tl63796404_ (##cdr _rest63736381_)))
                              (let* ((_in6407_ _hd63786402_)
                                     (_rest6409_ _tl63796404_))
                                (_K63776399_ _rest6409_ _in6407_)))
                            (_else63756389_))))))))
        (let* ((_g62696279_
                (lambda (_g62706276_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g62706276_)))
               (_g62686360_
                (lambda (_g62706282_)
                  (if (gx#stx-pair? _g62706282_)
                      (let ((_e62726284_ (gx#stx-e _g62706282_)))
                        (let ((_hd62736287_ (##car _e62726284_))
                              (_tl62746289_ (##cdr _e62726284_)))
                          ((lambda (_L6292_)
                             (let ((_ht6303_ (make-hash-table-eq)))
                               (let _lp6305_ ((_rest6307_ _L6292_)
                                              (_loads6308_ '()))
                                 (letrec ((_K6310_ (lambda (_ctx6353_
                                                            _rest6354_)
                                                     (let ((_id6356_
                                                            (##structure-ref
                                                             _ctx6353_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6303_
                                                            _id6356_
                                                            '#f)
                                                           (_lp6305_
                                                            _rest6354_
                                                            _loads6308_)
                                                           (let ((_rt6358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6356_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6303_ _id6356_ _rt6358_)
                       (_lp6305_ _rest6354_ (cons _rt6358_ _loads6308_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63116319_ _rest6307_)
                                          (_else63136331_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63266328_)
                                                          (list 'load-module
                                                                _g63266328_))
                                                        (reverse _loads6308_)))))
                                          (_K63156341_
                                           (lambda (_rest6334_ _in6335_)
                                             (if (##structure-instance-of?
                                                  _in6335_
                                                  'gx#module-context::t)
                                                 (_K6310_ _in6335_ _rest6334_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6335_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6335_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6310_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6335_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6334_)
                 (_lp6305_ _rest6334_ _loads6308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6335_
                                                          'gx#import-set::t)
                                                         (let ((_phi6337_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6335_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6337_)
                       (_K6310_ (##direct-structure-ref
                                 _in6335_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6334_)
                       (if (fxpositive? _phi6337_)
                           (let ((_deps6339_
                                  (_import-set-template6267_ _in6335_ '0)))
                             (_lp6305_
                              (foldl1 cons _rest6334_ _deps6339_)
                              _loads6308_))
                           (_lp6305_ _rest6334_ _loads6308_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6265_
                  _in6335_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63116319_)
                                         (let ((_hd63166344_
                                                (##car _rest63116319_))
                                               (_tl63176346_
                                                (##cdr _rest63116319_)))
                                           (let* ((_in6349_ _hd63166344_)
                                                  (_rest6351_ _tl63176346_))
                                             (_K63156341_
                                              _rest6351_
                                              _in6349_)))
                                         (_else63136331_)))))))
                           _tl62746289_)))
                      (_g62696279_ _g62706282_)))))
          (_g62686360_ _stx6265_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6088_)
      (letrec ((_add-lift!6090_
                (lambda (_expr6263_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6263_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6091_
                (lambda (_stxq6258_)
                  (let ((_gid6260_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6261_
                         (gxc#generate-runtime-identifier _stxq6258_)))
                    (begin
                      (_add-lift!6090_
                       (cons 'define
                             (cons _gid6260_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6261_
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
                      _gid6260_))))
               (_generate-serialized6092_
                (lambda (_stxq6248_ _marks6249_)
                  (let* ((_mark-refs6251_
                          (map _generate-mark6093_ _marks6249_))
                         (_gid6253_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6255_
                          (gxc#generate-runtime-identifier _stxq6248_)))
                    (begin
                      (_add-lift!6090_
                       (cons 'define
                             (cons _gid6253_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6251_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6253_))))
               (_generate-mark6093_
                (lambda (_mark6234_)
                  (let ((_$e6236_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6234_
                          '#f)))
                    (if _$e6236_
                        (values _$e6236_)
                        (let* ((_gid6239_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6241_ (_serialize-mark6094_ _mark6234_))
                               (_ctx6243_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6234_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6245_
                                (if (eq? _ctx6243_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6095_
                                                             _ctx6243_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6234_
                             _gid6239_)
                            (_add-lift!6090_
                             (cons 'define
                                   (cons _gid6239_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6241_ '()))
                   (cons _ctx-ref6245_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6239_))))))
               (_serialize-mark6094_
                (lambda (_mark6181_)
                  (letrec ((_quote-e6183_
                            (lambda (_sym6232_)
                              (if (interned-symbol? _sym6232_)
                                  _sym6232_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6232_)))))
                    (let* ((_mark61846193_ _mark6181_)
                           (_E61866197_
                            (lambda ()
                              (error '"No clause matching" _mark61846193_)))
                           (_K61876209_
                            (lambda (_trace6200_
                                     _phi6201_
                                     _ctx6202_
                                     _subst6203_)
                              (let ((_subs6205_
                                     (if _subst6203_
                                         (table->list _subst6203_)
                                         '())))
                                (cons _phi6201_
                                      (map (lambda (_pair6207_)
                                             (cons (_quote-e6183_
                                                    (car _pair6207_))
                                                   (_quote-e6183_
                                                    (cdr _pair6207_))))
                                           _subs6205_))))))
                      (if (##structure-instance-of?
                           _mark61846193_
                           'gx#expander-mark::t)
                          (let* ((_e61886212_ (##vector-ref _mark61846193_ '1))
                                 (_subst6215_ _e61886212_)
                                 (_e61896217_ (##vector-ref _mark61846193_ '2))
                                 (_ctx6220_ _e61896217_)
                                 (_e61906222_ (##vector-ref _mark61846193_ '3))
                                 (_phi6225_ _e61906222_)
                                 (_e61916227_ (##vector-ref _mark61846193_ '4))
                                 (_trace6230_ _e61916227_))
                            (_K61876209_
                             _trace6230_
                             _phi6225_
                             _ctx6220_
                             _subst6215_))
                          (_E61866197_))))))
               (_context-ref6095_
                (lambda (_ctx6168_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6168_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6170_
                             (_context-ref-nested6097_ _ctx6168_))
                            (_ctx-origin6171_
                             (_context-ref-origin6096_ _ctx6168_))
                            (_origin6172_
                             (_context-ref-origin6096_
                              (gx#current-expander-context))))
                        (if (eq? _origin6172_ _ctx-origin6171_)
                            (let ((_ref6174_
                                   (_context-ref-nested6097_
                                    (gx#current-expander-context))))
                              (let _lp6176_ ((_ref6178_ (cdr _ref6174_))
                                             (_ctx-ref6179_
                                              (cdr _ctx-ref6170_)))
                                (if (if (pair? _ref6178_)
                                        (eq? (car _ref6178_)
                                             (car _ctx-ref6179_))
                                        '#f)
                                    (_lp6176_
                                     (cdr _ref6178_)
                                     (cdr _ctx-ref6179_))
                                    (cons '#f _ctx-ref6179_))))
                            _ctx-ref6170_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6168_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6096_
                (lambda (_ctx6160_)
                  (let _lp6162_ ((_ctx6164_ _ctx6160_))
                    (let ((_super6166_
                           (##structure-ref
                            _ctx6164_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6166_
                           'gx#module-context::t)
                          (_lp6162_ _super6166_)
                          _ctx6164_)))))
               (_context-ref-nested6097_
                (lambda (_ctx6151_)
                  (let _lp6153_ ((_ctx6155_ _ctx6151_) (_r6156_ '()))
                    (let ((_super6158_
                           (##structure-ref
                            _ctx6155_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6158_
                           'gx#module-context::t)
                          (_lp6153_
                           _super6158_
                           (cons (car (##structure-ref
                                       _ctx6155_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6156_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6155_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6156_)))))))
        (let* ((_g60996112_
                (lambda (_g61006109_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61006109_)))
               (_g60986148_
                (lambda (_g61006115_)
                  (if (gx#stx-pair? _g61006115_)
                      (let ((_e61026117_ (gx#stx-e _g61006115_)))
                        (let ((_hd61036120_ (##car _e61026117_))
                              (_tl61046122_ (##cdr _e61026117_)))
                          (if (gx#stx-pair? _tl61046122_)
                              (let ((_e61056125_ (gx#stx-e _tl61046122_)))
                                (let ((_hd61066128_ (##car _e61056125_))
                                      (_tl61076130_ (##cdr _e61056125_)))
                                  (if (gx#stx-null? _tl61076130_)
                                      ((lambda (_L6133_)
                                         (if (gx#identifier? _L6133_)
                                             (let ((_marks6146_
                                                    (##direct-structure-ref
                                                     _L6133_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks6146_)
                                                   (_generate-simple6091_
                                                    _L6133_)
                                                   (_generate-serialized6092_
                                                    _L6133_
                                                    _marks6146_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6133_)))
                                       _hd61066128_)
                                      (_g60996112_ _g61006115_))))
                              (_g60996112_ _g61006115_))))
                      (_g60996112_ _g61006115_)))))
          (_g60986148_ _stx6088_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6021_)
      (let* ((_g60236040_
              (lambda (_g60246037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60246037_)))
             (_g60226085_
              (lambda (_g60246043_)
                (if (gx#stx-pair? _g60246043_)
                    (let ((_e60276045_ (gx#stx-e _g60246043_)))
                      (let ((_hd60286048_ (##car _e60276045_))
                            (_tl60296050_ (##cdr _e60276045_)))
                        (if (gx#stx-pair? _tl60296050_)
                            (let ((_e60306053_ (gx#stx-e _tl60296050_)))
                              (let ((_hd60316056_ (##car _e60306053_))
                                    (_tl60326058_ (##cdr _e60306053_)))
                                (if (gx#stx-pair? _tl60326058_)
                                    (let ((_e60336061_
                                           (gx#stx-e _tl60326058_)))
                                      (let ((_hd60346064_ (##car _e60336061_))
                                            (_tl60356066_ (##cdr _e60336061_)))
                                        (if (gx#stx-null? _tl60356066_)
                                            ((lambda (_L6069_ _L6070_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6070_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6069_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60346064_
                                             _hd60316056_)
                                            (_g60236040_ _g60246043_))))
                                    (_g60236040_ _g60246043_))))
                            (_g60236040_ _g60246043_))))
                    (_g60236040_ _g60246043_)))))
        (_g60226085_ _stx6021_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5970_ _state5971_)
      (let* ((_g59735983_
              (lambda (_g59745980_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59745980_)))
             (_g59726018_
              (lambda (_g59745986_)
                (if (gx#stx-pair? _g59745986_)
                    (let ((_e59765988_ (gx#stx-e _g59745986_)))
                      (let ((_hd59775991_ (##car _e59765988_))
                            (_tl59785993_ (##cdr _e59765988_)))
                        ((lambda (_L5996_)
                           (let* ((_c-body6010_
                                   (map (lambda (_g60056007_)
                                          (gxc#compile-e
                                           _g60056007_
                                           _state5971_))
                                        _L5996_))
                                  (_c-body6015_
                                   (filter (lambda (_$obj6012_)
                                             (not (eq? _$obj6012_ '#!void)))
                                           _c-body6010_)))
                             (cons '%#begin _c-body6015_)))
                         _tl59785993_)))
                    (_g59735983_ _g59745986_)))))
        (_g59726018_ _stx5970_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5878_ _state5879_)
      (let* ((_g58815891_
              (lambda (_g58825888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58825888_)))
             (_g58805967_
              (lambda (_g58825894_)
                (if (gx#stx-pair? _g58825894_)
                    (let ((_e58845896_ (gx#stx-e _g58825894_)))
                      (let ((_hd58855899_ (##car _e58845896_))
                            (_tl58865901_ (##cdr _e58845896_)))
                        ((lambda (_L5904_)
                           (let* ((_phi5914_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5916_
                                   (gxc#meta-state-begin-phi!
                                    _state5879_
                                    _phi5914_))
                                  (_compiled5919_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5904_)
                                       _state5879_))
                                    gx#current-expander-phi
                                    _phi5914_)))
                             (let* ((_g59225932_
                                     (lambda (_g59235929_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59235929_)))
                                    (_g59215964_
                                     (lambda (_g59235935_)
                                       (if (gx#stx-pair? _g59235935_)
                                           (let ((_e59255937_
                                                  (gx#stx-e _g59235935_)))
                                             (let ((_hd59265940_
                                                    (##car _e59255937_))
                                                   (_tl59275942_
                                                    (##cdr _e59255937_)))
                                               (if (gx#identifier?
                                                    _hd59265940_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59265940_)
                                                       ((lambda (_L5945_)
                                                          (let ((_c-body5962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5959_)
                                   (not (eq? _$obj5959_ '#!void)))
                                 _L5945_)))
                    (if _block5916_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5962_))
                        (if (null? _c-body5962_)
                            '#!void
                            (cons '%#begin-syntax _c-body5962_)))))
                _tl59275942_)
               (_g59225932_ _g59235935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59225932_ _g59235935_))))
                                           (_g59225932_ _g59235935_)))))
                               (_g59215964_ _compiled5919_))))
                         _tl58865901_)))
                    (_g58815891_ _g58825894_)))))
        (_g58805967_ _stx5878_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5809_ _state5810_)
      (begin
        (gxc#meta-state-end-phi! _state5810_)
        (let* ((_g58125826_
                (lambda (_g58135823_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58135823_)))
               (_g58115875_
                (lambda (_g58135829_)
                  (if (gx#stx-pair? _g58135829_)
                      (let ((_e58165831_ (gx#stx-e _g58135829_)))
                        (let ((_hd58175834_ (##car _e58165831_))
                              (_tl58185836_ (##cdr _e58165831_)))
                          (if (gx#stx-pair? _tl58185836_)
                              (let ((_e58195839_ (gx#stx-e _tl58185836_)))
                                (let ((_hd58205842_ (##car _e58195839_))
                                      (_tl58215844_ (##cdr _e58195839_)))
                                  ((lambda (_L5847_ _L5848_)
                                     (let ((_key5861_
                                            (gx#core-identifier-key _L5848_)))
                                       (begin
                                         (if (interned-symbol? _key5861_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5809_
                                              _L5848_
                                              _key5861_))
                                         (let* ((_ctx5863_
                                                 (gx#syntax-local-e__0
                                                  _L5848_))
                                                (_code5866_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5863_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5810_))
                                                  gx#current-expander-context
                                                  _ctx5863_))
                                                (_rt5868_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5863_
                                                  '#f))
                                                (_loader5870_
                                                 (if _rt5868_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5868_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5872_
                                                 (gx#stx-e _L5848_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5810_)
                                             (cons '%#module
                                                   (cons _modid5872_
                                                         (cons _code5866_
                                                               _loader5870_))))))))
                                   _tl58215844_
                                   _hd58205842_)))
                              (_g58125826_ _g58135829_))))
                      (_g58125826_ _g58135829_)))))
          (_g58115875_ _stx5809_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5799_ _context-chain5800_)
      (let _lp5802_ ((_ctx5804_ _ctx5799_) (_path5805_ '()))
        (let ((_super5807_
               (##structure-ref _ctx5804_ '3 gx#phi-context::t '#f)))
          (if (memq _super5807_ _context-chain5800_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5804_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5805_))
              (if (##structure-instance-of? _super5807_ 'gx#module-context::t)
                  (_lp5802_
                   _super5807_
                   (cons (car (##structure-ref
                               _ctx5804_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5805_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5804_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5805_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5794_ ((_ctx5796_ (gx#current-expander-context)) (_r5797_ '()))
        (if (##structure-instance-of? _ctx5796_ 'gx#module-context::t)
            (_lp5794_
             (##structure-ref _ctx5796_ '3 gx#phi-context::t '#f)
             (cons _ctx5796_ _r5797_))
            _r5797_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5563_ _state5564_)
      (letrec* ((_context-chain5566_ (gxc#current-context-chain))
                (_make-import-spec5567_
                 (lambda (_in5730_)
                   (let* ((_in57315743_ _in5730_)
                          (_E57335747_
                           (lambda ()
                             (error '"No clause matching" _in57315743_)))
                          (_K57345757_
                           (lambda (_phi5750_
                                    _name5751_
                                    _src-name5752_
                                    _src-phi5753_
                                    _src-key5754_
                                    _src-ctx5755_)
                             (cons _phi5750_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5751_)
                                         (cons _src-phi5753_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5752_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57315743_
                          'gx#module-import::t)
                         (let ((_e57355760_ (##vector-ref _in57315743_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57355760_
                                'gx#module-export::t)
                               (let* ((_e57385763_
                                       (##vector-ref _e57355760_ '1))
                                      (_src-ctx5766_ _e57385763_)
                                      (_e57395768_
                                       (##vector-ref _e57355760_ '2))
                                      (_src-key5771_ _e57395768_)
                                      (_e57405773_
                                       (##vector-ref _e57355760_ '3))
                                      (_src-phi5776_ _e57405773_)
                                      (_e57415778_
                                       (##vector-ref _e57355760_ '4))
                                      (_src-name5781_ _e57415778_)
                                      (_e57365783_
                                       (##vector-ref _in57315743_ '2))
                                      (_name5786_ _e57365783_)
                                      (_e57375788_
                                       (##vector-ref _in57315743_ '3))
                                      (_phi5791_ _e57375788_))
                                 (_K57345757_
                                  _phi5791_
                                  _name5786_
                                  _src-name5781_
                                  _src-phi5776_
                                  _src-key5771_
                                  _src-ctx5766_))
                               (_E57335747_)))
                         (_E57335747_)))))
                (_make-import-path5568_
                 (lambda (_ctx5728_)
                   (gxc#generate-meta-import-path
                    _ctx5728_
                    _context-chain5566_)))
                (_make-import-spec-in5569_
                 (lambda (_ctx5725_ _in5726_)
                   (cons 'spec:
                         (cons (_make-import-path5568_ _ctx5725_)
                               (reverse _in5726_))))))
        (begin
          (gxc#meta-state-end-phi! _state5564_)
          (let* ((_g55715581_
                  (lambda (_g55725578_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g55725578_)))
                 (_g55705722_
                  (lambda (_g55725584_)
                    (if (gx#stx-pair? _g55725584_)
                        (let ((_e55745586_ (gx#stx-e _g55725584_)))
                          (let ((_hd55755589_ (##car _e55745586_))
                                (_tl55765591_ (##cdr _e55745586_)))
                            ((lambda (_L5594_)
                               (let _lp5605_ ((_rest5607_ _L5594_)
                                              (_current-src5608_ '#f)
                                              (_current-in5609_ '())
                                              (_r5610_ '()))
                                 (let* ((_rest56115619_ _rest5607_)
                                        (_else56135629_
                                         (lambda ()
                                           (let ((_r5627_ (if _current-src5608_
                                                              (cons (_make-import-spec-in5569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5608_
                             _current-in5609_)
                            _r5610_)
                      _r5610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5627_)))))
                                        (_K56155710_
                                         (lambda (_rest5632_ _in5633_)
                                           (if (##structure-direct-instance-of?
                                                _in5633_
                                                'gx#module-import::t)
                                               (let* ((_in56345641_ _in5633_)
                                                      (_E56365645_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56345641_)))
                                                      (_K56375650_
                                                       (lambda (_src-ctx5648_)
                                                         (if (eq? _current-src5608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5648_)
                     (_lp5605_
                      _rest5632_
                      _current-src5608_
                      (cons (_make-import-spec5567_ _in5633_) _current-in5609_)
                      _r5610_)
                     (if _current-src5608_
                         (_lp5605_
                          _rest5632_
                          _src-ctx5648_
                          (cons (_make-import-spec5567_ _in5633_) '())
                          (cons (_make-import-spec-in5569_
                                 _current-src5608_
                                 _current-in5609_)
                                _r5610_))
                         (_lp5605_
                          _rest5632_
                          _src-ctx5648_
                          (cons (_make-import-spec5567_ _in5633_) '())
                          _r5610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56345641_
                                                      'gx#module-import::t)
                                                     (let ((_e56385653_
                                                            (##vector-ref
                                                             _in56345641_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56385653_
                                                            'gx#module-export::t)
                                                           (let* ((_e56395656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56385653_ '1))
                          (_src-ctx5659_ _e56395656_))
                     (_K56375650_ _src-ctx5659_))
                   (_E56365645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56365645_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5633_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5661_
                                                           (##direct-structure-ref
                                                            _in5633_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5663_
                                                           (##direct-structure-ref
                                                            _in5633_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5703_
                                                           (let* ((_g56645673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5568_ _src5663_))
                          (_E56675677_
                           (lambda ()
                             (error '"No clause matching" _g56645673_))))
                     (let ((_K56695693_ (lambda (_path5691_) _path5691_))
                           (_K56685683_
                            (lambda (_path5681_) (cons 'in: _path5681_))))
                       (if (##pair? _g56645673_)
                           (let ((_tl56715698_ (##cdr _g56645673_))
                                 (_hd56705696_ (##car _g56645673_)))
                             (if (##null? _tl56715698_)
                                 (let ((_path5701_ _hd56705696_))
                                   (_K56695693_ _path5701_))
                                 (let ((_path5686_ _g56645673_))
                                   (_K56685683_ _path5686_))))
                           (let ((_path5686_ _g56645673_))
                             (_K56685683_ _path5686_))))))
                  (_r5705_ (if _current-src5608_
                               (cons (_make-import-spec-in5569_
                                      _current-src5608_
                                      _current-in5609_)
                                     _r5610_)
                               _r5610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5605_
                                                      _rest5632_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5661_)
                                                                _src-in5703_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5661_ (cons _src-in5703_ '()))))
                    _r5705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5633_
                                                        'gx#module-context::t)
                                                       (let ((_r5708_ (if _current-src5608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5569_
                                         _current-src5608_
                                         _current-in5609_)
                                        _r5610_)
                                  _r5610_)))
                 (_lp5605_
                  _rest5632_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5568_ _in5633_))
                        _r5708_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56115619_)
                                       (let ((_hd56165713_
                                              (##car _rest56115619_))
                                             (_tl56175715_
                                              (##cdr _rest56115619_)))
                                         (let* ((_in5718_ _hd56165713_)
                                                (_rest5720_ _tl56175715_))
                                           (_K56155710_ _rest5720_ _in5718_)))
                                       (_else56135629_)))))
                             _tl55765591_)))
                        (_g55715581_ _g55725584_)))))
            (_g55705722_ _stx5563_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5373_ _state5374_)
      (letrec* ((_context-chain5376_ (gxc#current-context-chain))
                (_make-import-path5377_
                 (lambda (_ctx5561_)
                   (gxc#generate-meta-import-path
                    _ctx5561_
                    _context-chain5376_))))
        (let* ((_g53795389_
                (lambda (_g53805386_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53805386_)))
               (_g53785558_
                (lambda (_g53805392_)
                  (if (gx#stx-pair? _g53805392_)
                      (let ((_e53825394_ (gx#stx-e _g53805392_)))
                        (let ((_hd53835397_ (##car _e53825394_))
                              (_tl53845399_ (##cdr _e53825394_)))
                          ((lambda (_L5402_)
                             (let _lp5413_ ((_rest5415_ _L5402_) (_r5416_ '()))
                               (let* ((_rest54175425_ _rest5415_)
                                      (_else54195433_
                                       (lambda ()
                                         (cons '%#export (reverse _r5416_))))
                                      (_K54215546_
                                       (lambda (_rest5436_ _out5437_)
                                         (let* ((_out54385451_ _out5437_)
                                                (_E54415455_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54385451_))))
                                           (let ((_K54455525_
                                                  (lambda (_name5521_
                                                           _phi5522_
                                                           _key5523_)
                                                    (_lp5413_
                                                     _rest5436_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi5522_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key5523_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name5521_)
                                           '()))))
                   _r5416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K54425505_
                                                  (lambda (_phi5459_ _src5460_)
                                                    (let* ((_out5500_
                                                            (if _src5460_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g54615470_
                                            (_make-import-path5377_ _src5460_))
                                           (_E54645474_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g54615470_))))
                                      (let ((_K54665490_
                                             (lambda (_path5488_) _path5488_))
                                            (_K54655480_
                                             (lambda (_path5478_)
                                               (cons 'in: _path5478_))))
                                        (if (##pair? _g54615470_)
                                            (let ((_tl54685495_
                                                   (##cdr _g54615470_))
                                                  (_hd54675493_
                                                   (##car _g54615470_)))
                                              (if (##null? _tl54685495_)
                                                  (let ((_path5498_
                                                         _hd54675493_))
                                                    (_K54665490_ _path5498_))
                                                  (let ((_path5483_
                                                         _g54615470_))
                                                    (_K54655480_ _path5483_))))
                                            (let ((_path5483_ _g54615470_))
                                              (_K54655480_ _path5483_)))))
                                    '()))
                        '#t))
                   (_out5502_
                    (if (fxzero? _phi5459_)
                        _out5500_
                        (cons 'phi: (cons _phi5459_ (cons _out5500_ '()))))))
              (_lp5413_ _rest5436_ (cons _out5502_ _r5416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match54405518_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out54385451_
                                                           'gx#export-set::t)
                                                          (let* ((_e54435508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out54385451_ '1))
                         (_e54445513_ (##vector-ref _out54385451_ '2)))
                    (let ((_src5511_ _e54435508_) (_phi5516_ _e54445513_))
                      (_K54425505_ _phi5516_ _src5511_)))
                  (_E54415455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out54385451_
                                                    'gx#module-export::t)
                                                   (let* ((_e54465528_
                                                           (##vector-ref
                                                            _out54385451_
                                                            '1))
                                                          (_e54475531_
                                                           (##vector-ref
                                                            _out54385451_
                                                            '2))
                                                          (_e54485536_
                                                           (##vector-ref
                                                            _out54385451_
                                                            '3))
                                                          (_e54495541_
                                                           (##vector-ref
                                                            _out54385451_
                                                            '4)))
                                                     (let ((_key5534_
                                                            _e54475531_)
                                                           (_phi5539_
                                                            _e54485536_)
                                                           (_name5544_
                                                            _e54495541_))
                                                       (_K54455525_
                                                        _name5544_
                                                        _phi5539_
                                                        _key5534_)))
                                                   (_try-match54405518_))))))))
                                 (if (##pair? _rest54175425_)
                                     (let ((_hd54225549_
                                            (##car _rest54175425_))
                                           (_tl54235551_
                                            (##cdr _rest54175425_)))
                                       (let* ((_out5554_ _hd54225549_)
                                              (_rest5556_ _tl54235551_))
                                         (_K54215546_ _rest5556_ _out5554_)))
                                     (_else54195433_)))))
                           _tl53845399_)))
                      (_g53795389_ _g53805392_)))))
          (_g53785558_ _stx5373_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5334_ _state5335_)
      (begin
        (gxc#meta-state-end-phi! _state5335_)
        (let* ((_g53375347_
                (lambda (_g53385344_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53385344_)))
               (_g53365370_
                (lambda (_g53385350_)
                  (if (gx#stx-pair? _g53385350_)
                      (let ((_e53405352_ (gx#stx-e _g53385350_)))
                        (let ((_hd53415355_ (##car _e53405352_))
                              (_tl53425357_ (##cdr _e53405352_)))
                          ((lambda (_L5360_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5360_)))
                           _tl53425357_)))
                      (_g53375347_ _g53385350_)))))
          (_g53365370_ _stx5334_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5205_ _state5206_)
      (letrec ((_generate15208_
                (lambda (_id5329_ _eid5330_)
                  (let ((_eid5332_ (gx#stx-e _eid5330_)))
                    (begin
                      (if (interned-symbol? _eid5332_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5205_
                           _eid5332_))
                      (cons (gxc#generate-runtime-identifier _id5329_)
                            (cons _eid5332_ '())))))))
        (let* ((_g52105238_
                (lambda (_g52115235_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52115235_)))
               (_g52095326_
                (lambda (_g52115241_)
                  (if (gx#stx-pair? _g52115241_)
                      (let ((_e52145243_ (gx#stx-e _g52115241_)))
                        (let ((_hd52155246_ (##car _e52145243_))
                              (_tl52165248_ (##cdr _e52145243_)))
                          (if (gx#stx-pair/null? _tl52165248_)
                              (if (fx>= (gx#stx-length _tl52165248_) '0)
                                  (let ((_g12928_
                                         (gx#syntax-split-splice
                                          _tl52165248_
                                          '0)))
                                    (begin
                                      (let ((_g12929_
                                             (if (##values? _g12928_)
                                                 (##vector-length _g12928_)
                                                 1)))
                                        (if (not (##fx= _g12929_ 2))
                                            (error "Context expects 2 values"
                                                   _g12929_)))
                                      (let ((_target52175251_
                                             (##vector-ref _g12928_ 0))
                                            (_tl52195253_
                                             (##vector-ref _g12928_ 1)))
                                        (if (gx#stx-null? _tl52195253_)
                                            (letrec ((_loop52205256_
                                                      (lambda (_hd52185259_
                                                               _eid52245261_
                                                               _id52255263_)
                                                        (if (gx#stx-pair?
                                                             _hd52185259_)
                                                            (let ((_e52215266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd52185259_)))
                      (let ((_lp-hd52225269_ (##car _e52215266_))
                            (_lp-tl52235271_ (##cdr _e52215266_)))
                        (if (gx#stx-pair? _lp-hd52225269_)
                            (let ((_e52285274_ (gx#stx-e _lp-hd52225269_)))
                              (let ((_hd52295277_ (##car _e52285274_))
                                    (_tl52305279_ (##cdr _e52285274_)))
                                (if (gx#stx-pair? _tl52305279_)
                                    (let ((_e52315282_
                                           (gx#stx-e _tl52305279_)))
                                      (let ((_hd52325285_ (##car _e52315282_))
                                            (_tl52335287_ (##cdr _e52315282_)))
                                        (if (gx#stx-null? _tl52335287_)
                                            (_loop52205256_
                                             _lp-tl52235271_
                                             (cons _hd52325285_ _eid52245261_)
                                             (cons _hd52295277_ _id52255263_))
                                            (_g52105238_ _g52115241_))))
                                    (_g52105238_ _g52115241_))))
                            (_g52105238_ _g52115241_))))
                    (let ((_eid52265290_ (reverse _eid52245261_))
                          (_id52275292_ (reverse _id52255263_)))
                      ((lambda (_L5295_ _L5296_)
                         (cons '%#extern
                               (map _generate15208_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53115314_ _g53125316_)
                                                (cons _g53115314_ _g53125316_))
                                              '()
                                              _L5296_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53185321_ _g53195323_)
                                                (cons _g53185321_ _g53195323_))
                                              '()
                                              _L5295_)))))
                       _eid52265290_
                       _id52275292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop52205256_
                                               _target52175251_
                                               '()
                                               '()))
                                            (_g52105238_ _g52115241_)))))
                                  (_g52105238_ _g52115241_))
                              (_g52105238_ _g52115241_))))
                      (_g52105238_ _g52115241_)))))
          (_g52095326_ _stx5205_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5000_ _state5001_)
      (letrec ((_generate15003_
                (lambda (_id5200_)
                  (let ((_eid5202_ (gxc#generate-runtime-binding-id _id5200_))
                        (_ident5203_
                         (gxc#generate-runtime-identifier _id5200_)))
                    (cons '%#define-runtime
                          (cons _ident5203_ (cons _eid5202_ '()))))))
               (_generate*5004_
                (lambda (_all5168_)
                  (let* ((_all51695177_ _all5168_)
                         (_else51715185_ (lambda () (cons '%#begin _all5168_)))
                         (_K51735190_ (lambda (_one5188_) _one5188_)))
                    (if (##pair? _all51695177_)
                        (let ((_hd51745193_ (##car _all51695177_))
                              (_tl51755195_ (##cdr _all51695177_)))
                          (let ((_one5198_ _hd51745193_))
                            (if (##null? _tl51755195_)
                                (_K51735190_ _one5198_)
                                (_else51715185_))))
                        (_else51715185_))))))
        (let* ((_g50065023_
                (lambda (_g50075020_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50075020_)))
               (_g50055165_
                (lambda (_g50075026_)
                  (if (gx#stx-pair? _g50075026_)
                      (let ((_e50105028_ (gx#stx-e _g50075026_)))
                        (let ((_hd50115031_ (##car _e50105028_))
                              (_tl50125033_ (##cdr _e50105028_)))
                          (if (gx#stx-pair? _tl50125033_)
                              (let ((_e50135036_ (gx#stx-e _tl50125033_)))
                                (let ((_hd50145039_ (##car _e50135036_))
                                      (_tl50155041_ (##cdr _e50135036_)))
                                  (if (gx#stx-pair? _tl50155041_)
                                      (let ((_e50165044_
                                             (gx#stx-e _tl50155041_)))
                                        (let ((_hd50175047_
                                               (##car _e50165044_))
                                              (_tl50185049_
                                               (##cdr _e50165044_)))
                                          (if (gx#stx-null? _tl50185049_)
                                              ((lambda (_L5052_ _L5053_)
                                                 (let _lp5069_ ((_rest5071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5053_)
                        (_r5072_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g50775093_
                                                           (lambda (_g50785090_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50785090_)))
                                                          (_g50765100_
                                                           (lambda (_g50785096_)
                                                             ((lambda ()
                                                                (_generate*5004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r5072_))))))
                  (_g50755116_
                   (lambda (_g50785103_)
                     ((lambda (_L5105_)
                        (if (gx#identifier? _L5105_)
                            (_generate*5004_
                             (foldl1 cons
                                     (cons (_generate15003_ _L5105_) '())
                                     _r5072_))
                            (_g50765100_ _g50785103_)))
                      _g50785103_)))
                  (_g50745140_
                   (lambda (_g50785119_)
                     (if (gx#stx-pair? _g50785119_)
                         (let ((_e50855121_ (gx#stx-e _g50785119_)))
                           (let ((_hd50865124_ (##car _e50855121_))
                                 (_tl50875126_ (##cdr _e50855121_)))
                             ((lambda (_L5129_ _L5130_)
                                (_lp5069_
                                 _L5129_
                                 (cons (_generate15003_ _L5130_) _r5072_)))
                              _tl50875126_
                              _hd50865124_)))
                         (_g50755116_ _g50785119_))))
                  (_g50735162_
                   (lambda (_g50785143_)
                     (if (gx#stx-pair? _g50785143_)
                         (let ((_e50805145_ (gx#stx-e _g50785143_)))
                           (let ((_hd50815148_ (##car _e50805145_))
                                 (_tl50825150_ (##cdr _e50805145_)))
                             (if (gx#stx-datum? _hd50815148_)
                                 (if (equal? (gx#stx-e _hd50815148_) '#f)
                                     ((lambda (_L5153_)
                                        (_lp5069_ _L5153_ _r5072_))
                                      _tl50825150_)
                                     (_g50745140_ _g50785143_))
                                 (_g50745140_ _g50785143_))))
                         (_g50745140_ _g50785143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50735162_
                                                      _rest5071_))))
                                               _hd50175047_
                                               _hd50145039_)
                                              (_g50065023_ _g50075026_))))
                                      (_g50065023_ _g50075026_))))
                              (_g50065023_ _g50075026_))))
                      (_g50065023_ _g50075026_)))))
          (_g50055165_ _stx5000_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4897_ _state4898_)
      (let* ((_g49004917_
              (lambda (_g49014914_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49014914_)))
             (_g48994997_
              (lambda (_g49014920_)
                (if (gx#stx-pair? _g49014920_)
                    (let ((_e49044922_ (gx#stx-e _g49014920_)))
                      (let ((_hd49054925_ (##car _e49044922_))
                            (_tl49064927_ (##cdr _e49044922_)))
                        (if (gx#stx-pair? _tl49064927_)
                            (let ((_e49074930_ (gx#stx-e _tl49064927_)))
                              (let ((_hd49084933_ (##car _e49074930_))
                                    (_tl49094935_ (##cdr _e49074930_)))
                                (if (gx#stx-pair? _tl49094935_)
                                    (let ((_e49104938_
                                           (gx#stx-e _tl49094935_)))
                                      (let ((_hd49114941_ (##car _e49104938_))
                                            (_tl49124943_ (##cdr _e49104938_)))
                                        (if (gx#stx-null? _tl49124943_)
                                            ((lambda (_L4946_ _L4947_)
                                               (let* ((_eid4962_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4947_))
                                                      (_phi4964_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4966_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4898_
                                                        _phi4964_)))
                                                 (begin
                                                   (let* ((_g49694976_
                                                           (lambda (_g49704973_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49704973_)))
                                                          (_g49684994_
                                                           (lambda (_g49704979_)
                                                             ((lambda (_L4981_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4898_
                           _phi4964_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4981_ (cons _L4946_ '()))))))
                      _g49704979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49684994_ _eid4962_))
                                                   (if _block4966_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4947_)
                                             (cons _eid4962_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4947_)
                           (cons _eid4962_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49114941_
                                             _hd49084933_)
                                            (_g49004917_ _g49014920_))))
                                    (_g49004917_ _g49014920_))))
                            (_g49004917_ _g49014920_))))
                    (_g49004917_ _g49014920_)))))
        (_g48994997_ _stx4897_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4829_ _state4830_)
      (let* ((_g48324849_
              (lambda (_g48334846_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48334846_)))
             (_g48314894_
              (lambda (_g48334852_)
                (if (gx#stx-pair? _g48334852_)
                    (let ((_e48364854_ (gx#stx-e _g48334852_)))
                      (let ((_hd48374857_ (##car _e48364854_))
                            (_tl48384859_ (##cdr _e48364854_)))
                        (if (gx#stx-pair? _tl48384859_)
                            (let ((_e48394862_ (gx#stx-e _tl48384859_)))
                              (let ((_hd48404865_ (##car _e48394862_))
                                    (_tl48414867_ (##cdr _e48394862_)))
                                (if (gx#stx-pair? _tl48414867_)
                                    (let ((_e48424870_
                                           (gx#stx-e _tl48414867_)))
                                      (let ((_hd48434873_ (##car _e48424870_))
                                            (_tl48444875_ (##cdr _e48424870_)))
                                        (if (gx#stx-null? _tl48444875_)
                                            ((lambda (_L4878_ _L4879_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4879_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4878_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48434873_
                                             _hd48404865_)
                                            (_g48324849_ _g48334852_))))
                                    (_g48324849_ _g48334852_))))
                            (_g48324849_ _g48334852_))))
                    (_g48324849_ _g48334852_)))))
        (_g48314894_ _stx4829_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4826_ _state4827_)
      (begin
        (gxc#meta-state-add-phi!
         _state4827_
         (gx#current-expander-phi)
         _stx4826_)
        (gxc#generate-meta-define-values% _stx4826_ _state4827_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4823_ _state4824_)
      (begin
        (gxc#meta-state-add-phi!
         _state4824_
         (gx#current-expander-phi)
         _stx4823_)
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
    (lambda _$args4820_
      (apply make-struct-instance gxc#meta-state::t _$args4820_)))
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
    (lambda (_self4817_ _ctx4818_)
      (if (##fx< '4 (##vector-length _self4817_))
          (begin
            (##vector-set!
             _self4817_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4818_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4817_ '2 '1)
            (##vector-set! _self4817_ '3 (make-hash-table-eq))
            (##vector-set! _self4817_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4817_))))
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
    (lambda _$args4692_
      (apply make-struct-instance gxc#meta-state-block::t _$args4692_)))
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
    (lambda (_state4651_ _phi4652_)
      (let* ((_state46534661_ _state4651_)
             (_E46554665_
              (lambda () (error '"No clause matching" _state46534661_)))
             (_K46564674_
              (lambda (_open4668_ _n4669_ _src4670_)
                (if (table-ref _open4668_ _phi4652_ '#f)
                    '#f
                    (let ((_block-ref4672_
                           (string-append
                            _src4670_
                            '"__"
                            (number->string _n4669_))))
                      (begin
                        (##structure-set!
                         _state4651_
                         (fx+ _n4669_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4668_
                         _phi4652_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4652_
                          _n4669_
                          '()))
                        _block-ref4672_))))))
        (if (##structure-instance-of? _state46534661_ 'gxc#meta-state::t)
            (let* ((_e46574677_ (##vector-ref _state46534661_ '1))
                   (_src4680_ _e46574677_)
                   (_e46584682_ (##vector-ref _state46534661_ '2))
                   (_n4685_ _e46584682_)
                   (_e46594687_ (##vector-ref _state46534661_ '3))
                   (_open4690_ _e46594687_))
              (_K46564674_ _open4690_ _n4685_ _src4680_))
            (_E46554665_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4645_ _phi4646_ _stx4647_)
      (let ((_block4649_
             (table-ref
              (##structure-ref _state4645_ '3 gxc#meta-state::t '#f)
              _phi4646_
              '#f)))
        (##structure-set!
         _block4649_
         (cons _stx4647_
               (##structure-ref _block4649_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4640_)
      (begin
        (##structure-set!
         _state4640_
         (hash-fold
          (lambda (_g12930_ _block4642_ _r4643_) (cons _block4642_ _r4643_))
          (##structure-ref _state4640_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4640_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4640_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4592_)
      (begin
        (gxc#meta-state-end-phi! _state4592_)
        (foldl1 (lambda (_block4594_ _r4595_)
                  (let* ((_block45964605_ _block4594_)
                         (_E45984609_
                          (lambda ()
                            (error '"No clause matching" _block45964605_)))
                         (_K45994617_
                          (lambda (_code4612_ _n4613_ _phi4614_ _ctx4615_)
                            (if (null? _code4612_)
                                _r4595_
                                (cons (cons _ctx4615_
                                            (cons _phi4614_
                                                  (cons _n4613_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4612_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4595_)))))
                    (if (##structure-instance-of?
                         _block45964605_
                         'gxc#meta-state-block::t)
                        (let* ((_e46004620_ (##vector-ref _block45964605_ '1))
                               (_ctx4623_ _e46004620_)
                               (_e46014625_ (##vector-ref _block45964605_ '2))
                               (_phi4628_ _e46014625_)
                               (_e46024630_ (##vector-ref _block45964605_ '3))
                               (_n4633_ _e46024630_)
                               (_e46034635_ (##vector-ref _block45964605_ '4))
                               (_code4638_ _e46034635_))
                          (_K45994617_ _code4638_ _n4633_ _phi4628_ _ctx4623_))
                        (_E45984609_))))
                '()
                (##structure-ref _state4592_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4588_)
      (let ((_ht4590_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4588_ _ht4590_)
          _ht4590_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4531_ _ht4532_)
      (let* ((_g45344547_
              (lambda (_g45354544_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45354544_)))
             (_g45334585_
              (lambda (_g45354550_)
                (if (gx#stx-pair? _g45354550_)
                    (let ((_e45374552_ (gx#stx-e _g45354550_)))
                      (let ((_hd45384555_ (##car _e45374552_))
                            (_tl45394557_ (##cdr _e45374552_)))
                        (if (gx#stx-pair? _tl45394557_)
                            (let ((_e45404560_ (gx#stx-e _tl45394557_)))
                              (let ((_hd45414563_ (##car _e45404560_))
                                    (_tl45424565_ (##cdr _e45404560_)))
                                (if (gx#stx-null? _tl45424565_)
                                    ((lambda (_L4568_)
                                       (let* ((_bind4580_
                                               (gx#resolve-identifier__0
                                                _L4568_))
                                              (_eid4582_
                                               (if _bind4580_
                                                   (##structure-ref
                                                    _bind4580_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4568_))))
                                         (table-set!
                                          _ht4532_
                                          _eid4582_
                                          _eid4582_)))
                                     _hd45414563_)
                                    (_g45344547_ _g45354550_))))
                            (_g45344547_ _g45354550_))))
                    (_g45344547_ _g45354550_)))))
        (_g45334585_ _stx4531_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4458_ _ht4459_)
      (let* ((_g44614478_
              (lambda (_g44624475_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44624475_)))
             (_g44604528_
              (lambda (_g44624481_)
                (if (gx#stx-pair? _g44624481_)
                    (let ((_e44654483_ (gx#stx-e _g44624481_)))
                      (let ((_hd44664486_ (##car _e44654483_))
                            (_tl44674488_ (##cdr _e44654483_)))
                        (if (gx#stx-pair? _tl44674488_)
                            (let ((_e44684491_ (gx#stx-e _tl44674488_)))
                              (let ((_hd44694494_ (##car _e44684491_))
                                    (_tl44704496_ (##cdr _e44684491_)))
                                (if (gx#stx-pair? _tl44704496_)
                                    (let ((_e44714499_
                                           (gx#stx-e _tl44704496_)))
                                      (let ((_hd44724502_ (##car _e44714499_))
                                            (_tl44734504_ (##cdr _e44714499_)))
                                        (if (gx#stx-null? _tl44734504_)
                                            ((lambda (_L4507_ _L4508_)
                                               (let* ((_bind4523_
                                                       (gx#resolve-identifier__0
                                                        _L4508_))
                                                      (_eid4525_
                                                       (if _bind4523_
                                                           (##structure-ref
                                                            _bind4523_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4508_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4459_
                                                    _eid4525_
                                                    _eid4525_)
                                                   (gxc#compile-e
                                                    _L4507_
                                                    _ht4459_))))
                                             _hd44724502_
                                             _hd44694494_)
                                            (_g44614478_ _g44624481_))))
                                    (_g44614478_ _g44624481_))))
                            (_g44614478_ _g44624481_))))
                    (_g44614478_ _g44624481_)))))
        (_g44604528_ _stx4458_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4420_)
      (let* ((_g44224432_
              (lambda (_g44234429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44234429_)))
             (_g44214455_
              (lambda (_g44234435_)
                (if (gx#stx-pair? _g44234435_)
                    (let ((_e44254437_ (gx#stx-e _g44234435_)))
                      (let ((_hd44264440_ (##car _e44254437_))
                            (_tl44274442_ (##cdr _e44254437_)))
                        ((lambda (_L4445_) (ormap1 gxc#compile-e _L4445_))
                         _tl44274442_)))
                    (_g44224432_ _g44234435_)))))
        (_g44214455_ _stx4420_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4382_)
      (let* ((_g43844394_
              (lambda (_g43854391_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43854391_)))
             (_g43834417_
              (lambda (_g43854397_)
                (if (gx#stx-pair? _g43854397_)
                    (let ((_e43874399_ (gx#stx-e _g43854397_)))
                      (let ((_hd43884402_ (##car _e43874399_))
                            (_tl43894404_ (##cdr _e43874399_)))
                        ((lambda (_L4407_) (gxc#compile-e (last _L4407_)))
                         _tl43894404_)))
                    (_g43844394_ _g43854397_)))))
        (_g43834417_ _stx4382_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4315_)
      (let* ((_g43174334_
              (lambda (_g43184331_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43184331_)))
             (_g43164379_
              (lambda (_g43184337_)
                (if (gx#stx-pair? _g43184337_)
                    (let ((_e43214339_ (gx#stx-e _g43184337_)))
                      (let ((_hd43224342_ (##car _e43214339_))
                            (_tl43234344_ (##cdr _e43214339_)))
                        (if (gx#stx-pair? _tl43234344_)
                            (let ((_e43244347_ (gx#stx-e _tl43234344_)))
                              (let ((_hd43254350_ (##car _e43244347_))
                                    (_tl43264352_ (##cdr _e43244347_)))
                                (if (gx#stx-pair? _tl43264352_)
                                    (let ((_e43274355_
                                           (gx#stx-e _tl43264352_)))
                                      (let ((_hd43284358_ (##car _e43274355_))
                                            (_tl43294360_ (##cdr _e43274355_)))
                                        (if (gx#stx-null? _tl43294360_)
                                            ((lambda (_L4363_ _L4364_)
                                               (gxc#compile-e _L4363_))
                                             _hd43284358_
                                             _hd43254350_)
                                            (_g43174334_ _g43184337_))))
                                    (_g43174334_ _g43184337_))))
                            (_g43174334_ _g43184337_))))
                    (_g43174334_ _g43184337_)))))
        (_g43164379_ _stx4315_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4248_)
      (let* ((_g42504267_
              (lambda (_g42514264_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42514264_)))
             (_g42494312_
              (lambda (_g42514270_)
                (if (gx#stx-pair? _g42514270_)
                    (let ((_e42544272_ (gx#stx-e _g42514270_)))
                      (let ((_hd42554275_ (##car _e42544272_))
                            (_tl42564277_ (##cdr _e42544272_)))
                        (if (gx#stx-pair? _tl42564277_)
                            (let ((_e42574280_ (gx#stx-e _tl42564277_)))
                              (let ((_hd42584283_ (##car _e42574280_))
                                    (_tl42594285_ (##cdr _e42574280_)))
                                (if (gx#stx-pair? _tl42594285_)
                                    (let ((_e42604288_
                                           (gx#stx-e _tl42594285_)))
                                      (let ((_hd42614291_ (##car _e42604288_))
                                            (_tl42624293_ (##cdr _e42604288_)))
                                        (if (gx#stx-null? _tl42624293_)
                                            ((lambda (_L4296_ _L4297_)
                                               (gxc#compile-e _L4296_))
                                             _hd42614291_
                                             _hd42584283_)
                                            (_g42504267_ _g42514270_))))
                                    (_g42504267_ _g42514270_))))
                            (_g42504267_ _g42514270_))))
                    (_g42504267_ _g42514270_)))))
        (_g42494312_ _stx4248_))))
  (define gxc#count-values-single% (lambda (_stx4246_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4164_)
      (let* ((_g41664185_
              (lambda (_g41674182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41674182_)))
             (_g41654243_
              (lambda (_g41674188_)
                (if (gx#stx-pair? _g41674188_)
                    (let ((_e41694190_ (gx#stx-e _g41674188_)))
                      (let ((_hd41704193_ (##car _e41694190_))
                            (_tl41714195_ (##cdr _e41694190_)))
                        (if (gx#stx-pair/null? _tl41714195_)
                            (if (fx>= (gx#stx-length _tl41714195_) '0)
                                (let ((_g12931_
                                       (gx#syntax-split-splice
                                        _tl41714195_
                                        '0)))
                                  (begin
                                    (let ((_g12932_
                                           (if (##values? _g12931_)
                                               (##vector-length _g12931_)
                                               1)))
                                      (if (not (##fx= _g12932_ 2))
                                          (error "Context expects 2 values"
                                                 _g12932_)))
                                    (let ((_target41724198_
                                           (##vector-ref _g12931_ 0))
                                          (_tl41744200_
                                           (##vector-ref _g12931_ 1)))
                                      (if (gx#stx-null? _tl41744200_)
                                          (letrec ((_loop41754203_
                                                    (lambda (_hd41734206_
                                                             _expr41794208_)
                                                      (if (gx#stx-pair?
                                                           _hd41734206_)
                                                          (let ((_e41764211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd41734206_)))
                    (let ((_lp-hd41774214_ (##car _e41764211_))
                          (_lp-tl41784216_ (##cdr _e41764211_)))
                      (_loop41754203_
                       _lp-tl41784216_
                       (cons _lp-hd41774214_ _expr41794208_))))
                  (let ((_expr41804219_ (reverse _expr41794208_)))
                    ((lambda (_L4222_)
                       (gxc#compile-e
                        (last (begin
                                '#!void
                                (foldr1 (lambda (_g42354238_ _g42364240_)
                                          (cons _g42354238_ _g42364240_))
                                        '()
                                        _L4222_)))))
                     _expr41804219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop41754203_
                                             _target41724198_
                                             '()))
                                          (_g41664185_ _g41674188_)))))
                                (_g41664185_ _g41674188_))
                            (_g41664185_ _g41674188_))))
                    (_g41664185_ _g41674188_)))))
        (_g41654243_ _stx4164_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4097_)
      (let* ((_g40994116_
              (lambda (_g41004113_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41004113_)))
             (_g40984161_
              (lambda (_g41004119_)
                (if (gx#stx-pair? _g41004119_)
                    (let ((_e41034121_ (gx#stx-e _g41004119_)))
                      (let ((_hd41044124_ (##car _e41034121_))
                            (_tl41054126_ (##cdr _e41034121_)))
                        (if (gx#stx-pair? _tl41054126_)
                            (let ((_e41064129_ (gx#stx-e _tl41054126_)))
                              (let ((_hd41074132_ (##car _e41064129_))
                                    (_tl41084134_ (##cdr _e41064129_)))
                                (if (gx#stx-pair? _tl41084134_)
                                    (let ((_e41094137_
                                           (gx#stx-e _tl41084134_)))
                                      (let ((_hd41104140_ (##car _e41094137_))
                                            (_tl41114142_ (##cdr _e41094137_)))
                                        (if (gx#stx-null? _tl41114142_)
                                            ((lambda (_L4145_ _L4146_)
                                               (gxc#compile-e _L4145_))
                                             _hd41104140_
                                             _hd41074132_)
                                            (_g40994116_ _g41004119_))))
                                    (_g40994116_ _g41004119_))))
                            (_g40994116_ _g41004119_))))
                    (_g40994116_ _g41004119_)))))
        (_g40984161_ _stx4097_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4030_)
      (let* ((_g40324049_
              (lambda (_g40334046_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40334046_)))
             (_g40314094_
              (lambda (_g40334052_)
                (if (gx#stx-pair? _g40334052_)
                    (let ((_e40364054_ (gx#stx-e _g40334052_)))
                      (let ((_hd40374057_ (##car _e40364054_))
                            (_tl40384059_ (##cdr _e40364054_)))
                        (if (gx#stx-pair? _tl40384059_)
                            (let ((_e40394062_ (gx#stx-e _tl40384059_)))
                              (let ((_hd40404065_ (##car _e40394062_))
                                    (_tl40414067_ (##cdr _e40394062_)))
                                (if (gx#stx-pair? _tl40414067_)
                                    (let ((_e40424070_
                                           (gx#stx-e _tl40414067_)))
                                      (let ((_hd40434073_ (##car _e40424070_))
                                            (_tl40444075_ (##cdr _e40424070_)))
                                        (if (gx#stx-null? _tl40444075_)
                                            ((lambda (_L4078_ _L4079_)
                                               (gxc#compile-e _L4078_))
                                             _hd40434073_
                                             _hd40404065_)
                                            (_g40324049_ _g40334052_))))
                                    (_g40324049_ _g40334052_))))
                            (_g40324049_ _g40334052_))))
                    (_g40324049_ _g40334052_)))))
        (_g40314094_ _stx4030_))))
  (define gxc#count-values-call%
    (lambda (_stx3897_)
      (let* ((_g39003929_
              (lambda (_g39013926_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39013926_)))
             (_g38993936_ (lambda (_g39013932_) ((lambda () '#f))))
             (_g38984027_
              (lambda (_g39013939_)
                (if (gx#stx-pair? _g39013939_)
                    (let ((_e39043941_ (gx#stx-e _g39013939_)))
                      (let ((_hd39053944_ (##car _e39043941_))
                            (_tl39063946_ (##cdr _e39043941_)))
                        (if (gx#stx-pair? _tl39063946_)
                            (let ((_e39073949_ (gx#stx-e _tl39063946_)))
                              (let ((_hd39083952_ (##car _e39073949_))
                                    (_tl39093954_ (##cdr _e39073949_)))
                                (if (gx#stx-pair? _hd39083952_)
                                    (let ((_e39103957_
                                           (gx#stx-e _hd39083952_)))
                                      (let ((_hd39113960_ (##car _e39103957_))
                                            (_tl39123962_ (##cdr _e39103957_)))
                                        (if (gx#identifier? _hd39113960_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd39113960_)
                                                (if (gx#stx-pair? _tl39123962_)
                                                    (let ((_e39133965_
                                                           (gx#stx-e
                                                            _tl39123962_)))
                                                      (let ((_hd39143968_
                                                             (##car _e39133965_))
                                                            (_tl39153970_
                                                             (##cdr _e39133965_)))
                                                        (if (gx#stx-null?
                                                             _tl39153970_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl39093954_)
                        (if (fx>= (gx#stx-length _tl39093954_) '0)
                            (let ((_g12933_
                                   (gx#syntax-split-splice _tl39093954_ '0)))
                              (begin
                                (let ((_g12934_
                                       (if (##values? _g12933_)
                                           (##vector-length _g12933_)
                                           1)))
                                  (if (not (##fx= _g12934_ 2))
                                      (error "Context expects 2 values"
                                             _g12934_)))
                                (let ((_target39163973_
                                       (##vector-ref _g12933_ 0))
                                      (_tl39183975_ (##vector-ref _g12933_ 1)))
                                  (if (gx#stx-null? _tl39183975_)
                                      (letrec ((_loop39193978_
                                                (lambda (_hd39173981_
                                                         _rand39233983_)
                                                  (if (gx#stx-pair?
                                                       _hd39173981_)
                                                      (let ((_e39203986_
                                                             (gx#stx-e
                                                              _hd39173981_)))
                                                        (let ((_lp-hd39213989_
                                                               (##car _e39203986_))
                                                              (_lp-tl39223991_
                                                               (##cdr _e39203986_)))
                                                          (_loop39193978_
                                                           _lp-tl39223991_
                                                           (cons _lp-hd39213989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rand39233983_))))
              (let ((_rand39243994_ (reverse _rand39233983_)))
                ((lambda (_L3997_ _L3998_)
                   (if (gx#free-identifier=? _L3998_ 'values)
                       (length (begin
                                 '#!void
                                 (foldr1 (lambda (_g40194022_ _g40204024_)
                                           (cons _g40194022_ _g40204024_))
                                         '()
                                         _L3997_)))
                       (_g38993936_ _g39013939_)))
                 _rand39243994_
                 _hd39143968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop39193978_ _target39163973_ '()))
                                      (_g38993936_ _g39013939_)))))
                            (_g38993936_ _g39013939_))
                        (_g38993936_ _g39013939_))
                    (_g38993936_ _g39013939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g38993936_ _g39013939_))
                                                (_g38993936_ _g39013939_))
                                            (_g38993936_ _g39013939_))))
                                    (_g38993936_ _g39013939_))))
                            (_g38993936_ _g39013939_))))
                    (_g38993936_ _g39013939_)))))
        (_g38984027_ _stx3897_))))
  (define gxc#count-values-if%
    (lambda (_stx3801_)
      (let* ((_g38033824_
              (lambda (_g38043821_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38043821_)))
             (_g38023894_
              (lambda (_g38043827_)
                (if (gx#stx-pair? _g38043827_)
                    (let ((_e38083829_ (gx#stx-e _g38043827_)))
                      (let ((_hd38093832_ (##car _e38083829_))
                            (_tl38103834_ (##cdr _e38083829_)))
                        (if (gx#stx-pair? _tl38103834_)
                            (let ((_e38113837_ (gx#stx-e _tl38103834_)))
                              (let ((_hd38123840_ (##car _e38113837_))
                                    (_tl38133842_ (##cdr _e38113837_)))
                                (if (gx#stx-pair? _tl38133842_)
                                    (let ((_e38143845_
                                           (gx#stx-e _tl38133842_)))
                                      (let ((_hd38153848_ (##car _e38143845_))
                                            (_tl38163850_ (##cdr _e38143845_)))
                                        (if (gx#stx-pair? _tl38163850_)
                                            (let ((_e38173853_
                                                   (gx#stx-e _tl38163850_)))
                                              (let ((_hd38183856_
                                                     (##car _e38173853_))
                                                    (_tl38193858_
                                                     (##cdr _e38173853_)))
                                                (if (gx#stx-null? _tl38193858_)
                                                    ((lambda (_L3861_
                                                              _L3862_
                                                              _L3863_)
                                                       (let ((_c138803882_
                                                              (gxc#compile-e
                                                               _L3862_)))
                                                         (if _c138803882_
                                                             (let* ((_c13885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c138803882_)
                            (_c238863888_ (gxc#compile-e _L3861_)))
                       (if _c238863888_
                           (let ((_c23891_ _c238863888_))
                             (if (fx= _c13885_ _c23891_) _c13885_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38183856_
                                                     _hd38153848_
                                                     _hd38123840_)
                                                    (_g38033824_
                                                     _g38043827_))))
                                            (_g38033824_ _g38043827_))))
                                    (_g38033824_ _g38043827_))))
                            (_g38033824_ _g38043827_))))
                    (_g38033824_ _g38043827_)))))
        (_g38023894_ _stx3801_)))))
