(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10597_ . _args10598_)
      (let ((_g1060010610_
             (lambda (_g1060110607_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1060110607_))))
        (let ((_g1059910638_
               (lambda (_g1060110613_)
                 (if (gx#stx-pair? _g1060110613_)
                     (let ((_e1060310615_ (gx#stx-e _g1060110613_)))
                       (let ((_hd1060410618_ (##car _e1060310615_))
                             (_tl1060510620_ (##cdr _e1060310615_)))
                         ((lambda (_L10623_)
                            (let ((_$e10633_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10623_)
                                    '#f)))
                              (if _$e10633_
                                  ((lambda (_method10636_)
                                     (apply _method10636_
                                            _stx10597_
                                            _args10598_))
                                   _$e10633_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10597_
                                   _L10623_))))
                          _hd1060410618_)))
                     (_g1060010610_ _g1060110613_)))))
          (_g1059910638_ _stx10597_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10594_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10594_ '%#lambda void)
           (table-set! _tbl10594_ '%#case-lambda void)
           (table-set! _tbl10594_ '%#let-values void)
           (table-set! _tbl10594_ '%#letrec-values void)
           (table-set! _tbl10594_ '%#letrec*-values void)
           (table-set! _tbl10594_ '%#quote void)
           (table-set! _tbl10594_ '%#quote-syntax void)
           (table-set! _tbl10594_ '%#call void)
           (table-set! _tbl10594_ '%#if void)
           (table-set! _tbl10594_ '%#ref void)
           (table-set! _tbl10594_ '%#set! void)
           (table-set! _tbl10594_ '%#struct-instance? void)
           (table-set! _tbl10594_ '%#struct-direct-instance? void)
           (table-set! _tbl10594_ '%#struct-ref void)
           (table-set! _tbl10594_ '%#struct-set! void)
           (table-set! _tbl10594_ '%#struct-direct-ref void)
           (table-set! _tbl10594_ '%#struct-direct-set! void)
           (table-set! _tbl10594_ '%#struct-unchecked-ref void)
           (table-set! _tbl10594_ '%#struct-unchecked-set! void)
           _tbl10594_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10590_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10590_ '%#begin void)
           (table-set! _tbl10590_ '%#begin-syntax void)
           (table-set! _tbl10590_ '%#begin-foreign void)
           (table-set! _tbl10590_ '%#module void)
           (table-set! _tbl10590_ '%#import void)
           (table-set! _tbl10590_ '%#export void)
           (table-set! _tbl10590_ '%#provide void)
           (table-set! _tbl10590_ '%#extern void)
           (table-set! _tbl10590_ '%#define-values void)
           (table-set! _tbl10590_ '%#define-syntax void)
           (table-set! _tbl10590_ '%#define-alias void)
           (table-set! _tbl10590_ '%#declare void)
           _tbl10590_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10586_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10586_ (force gxc#&void-special-form))
           (hash-copy! _tbl10586_ (force gxc#&void-expression))
           _tbl10586_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl10582_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10582_ '%#lambda false)
           (table-set! _tbl10582_ '%#case-lambda false)
           (table-set! _tbl10582_ '%#let-values false)
           (table-set! _tbl10582_ '%#letrec-values false)
           (table-set! _tbl10582_ '%#letrec*-values false)
           (table-set! _tbl10582_ '%#quote false)
           (table-set! _tbl10582_ '%#quote-syntax false)
           (table-set! _tbl10582_ '%#call false)
           (table-set! _tbl10582_ '%#if false)
           (table-set! _tbl10582_ '%#ref false)
           (table-set! _tbl10582_ '%#set! false)
           (table-set! _tbl10582_ '%#struct-instance? false)
           (table-set! _tbl10582_ '%#struct-direct-instance? false)
           (table-set! _tbl10582_ '%#struct-ref false)
           (table-set! _tbl10582_ '%#struct-set! false)
           (table-set! _tbl10582_ '%#struct-direct-ref false)
           (table-set! _tbl10582_ '%#struct-direct-set! false)
           (table-set! _tbl10582_ '%#struct-unchecked-ref false)
           (table-set! _tbl10582_ '%#struct-unchecked-set! false)
           _tbl10582_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10578_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10578_ '%#begin false)
           (table-set! _tbl10578_ '%#begin-syntax false)
           (table-set! _tbl10578_ '%#begin-foreign false)
           (table-set! _tbl10578_ '%#module false)
           (table-set! _tbl10578_ '%#import false)
           (table-set! _tbl10578_ '%#export false)
           (table-set! _tbl10578_ '%#provide false)
           (table-set! _tbl10578_ '%#extern false)
           (table-set! _tbl10578_ '%#define-values false)
           (table-set! _tbl10578_ '%#define-syntax false)
           (table-set! _tbl10578_ '%#define-alias false)
           (table-set! _tbl10578_ '%#declare false)
           _tbl10578_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10574_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10574_ (force gxc#&false-special-form))
           (hash-copy! _tbl10574_ (force gxc#&false-expression))
           _tbl10574_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10570_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10570_ (force gxc#&void-expression))
           (hash-copy! _tbl10570_ (force gxc#&void-special-form))
           (table-set! _tbl10570_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10570_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10570_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10570_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10570_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10570_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10563_ . _args10565_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10563_ _args10565_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10560_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10560_ (force gxc#&void))
           (table-set! _tbl10560_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10560_ '%#module gxc#lift-modules-module%)
           _tbl10560_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10553_ . _args10555_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10553_ _args10555_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10550_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10550_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10550_ '%#begin-syntax false)
           (table-set! _tbl10550_ '%#begin-foreign true)
           (table-set! _tbl10550_ '%#module false)
           (table-set! _tbl10550_ '%#import false)
           (table-set! _tbl10550_ '%#export false)
           (table-set! _tbl10550_ '%#provide false)
           (table-set! _tbl10550_ '%#extern false)
           (table-set! _tbl10550_ '%#define-values true)
           (table-set! _tbl10550_ '%#define-syntax false)
           (table-set! _tbl10550_ '%#define-alias false)
           (table-set! _tbl10550_ '%#declare false)
           (table-set! _tbl10550_ '%#lambda true)
           (table-set! _tbl10550_ '%#case-lambda true)
           (table-set! _tbl10550_ '%#let-values true)
           (table-set! _tbl10550_ '%#letrec-values true)
           (table-set! _tbl10550_ '%#letrec*-values true)
           (table-set! _tbl10550_ '%#quote true)
           (table-set! _tbl10550_ '%#call true)
           (table-set! _tbl10550_ '%#if true)
           (table-set! _tbl10550_ '%#ref true)
           (table-set! _tbl10550_ '%#set! true)
           (table-set! _tbl10550_ '%#struct-instance? true)
           (table-set! _tbl10550_ '%#struct-direct-instance? true)
           (table-set! _tbl10550_ '%#struct-ref true)
           (table-set! _tbl10550_ '%#struct-set! true)
           (table-set! _tbl10550_ '%#struct-direct-ref true)
           (table-set! _tbl10550_ '%#struct-direct-set! true)
           (table-set! _tbl10550_ '%#struct-unchecked-ref true)
           (table-set! _tbl10550_ '%#struct-unchecked-set! true)
           _tbl10550_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10543_ . _args10545_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10543_ _args10545_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl10540_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10540_ (force gxc#&false))
           (table-set! _tbl10540_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set! _tbl10540_ '%#lambda values)
           (table-set! _tbl10540_ '%#case-lambda values)
           (table-set!
            _tbl10540_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10540_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10540_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl10540_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx10533_ . _args10535_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10533_ _args10535_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10530_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10530_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10530_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10530_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10530_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10530_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10530_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10530_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10530_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl10530_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10526_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10526_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10526_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10526_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10526_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10519_ . _args10521_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10519_ _args10521_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10516_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10516_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10516_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10516_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10516_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10516_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10516_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10516_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10516_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10516_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10516_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10516_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10516_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10516_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10516_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10516_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10516_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10516_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10516_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10516_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10516_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10516_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl10516_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl10516_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl10516_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10509_ . _args10511_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10509_ _args10511_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10506_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10506_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10506_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10506_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10506_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10499_ . _args10501_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10499_ _args10501_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10496_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10496_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10496_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10496_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10496_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10496_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10496_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10496_ '%#quote void)
           (table-set! _tbl10496_ '%#quote-syntax void)
           (table-set! _tbl10496_ '%#call gxc#collect-operands)
           (table-set! _tbl10496_ '%#if gxc#collect-operands)
           (table-set! _tbl10496_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10496_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10496_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10496_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10496_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10496_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10496_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10496_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl10496_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl10496_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl10496_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10489_ . _args10491_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10489_ _args10491_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10486_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10486_ (force gxc#&void-expression))
           (table-set! _tbl10486_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10486_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10486_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10486_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10486_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10486_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10486_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10486_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10486_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10486_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10486_ '%#begin-foreign void)
           (table-set! _tbl10486_ '%#declare void)
           _tbl10486_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10479_ . _args10481_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10479_ _args10481_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10476_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10476_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10476_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10476_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10476_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10476_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10476_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10476_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10476_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10476_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10476_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10476_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10476_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10476_ '%#declare void)
           _tbl10476_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10469_ . _args10471_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10469_ _args10471_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10426_ . _args10427_)
      (let ((_g1042910439_
             (lambda (_g1043010436_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1043010436_))))
        (let ((_g1042810466_
               (lambda (_g1043010442_)
                 (if (gx#stx-pair? _g1043010442_)
                     (let ((_e1043210444_ (gx#stx-e _g1043010442_)))
                       (let ((_hd1043310447_ (##car _e1043210444_))
                             (_tl1043410449_ (##cdr _e1043210444_)))
                         ((lambda (_L10452_)
                            (for-each
                             (lambda (_g1046110463_)
                               (apply gxc#compile-e _g1046110463_ _args10427_))
                             (gx#stx-e _L10452_)))
                          _tl1043410449_)))
                     (_g1042910439_ _g1043010442_)))))
          (_g1042810466_ _stx10426_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10382_ . _args10383_)
      (let ((_g1038510395_
             (lambda (_g1038610392_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1038610392_))))
        (let ((_g1038410423_
               (lambda (_g1038610398_)
                 (if (gx#stx-pair? _g1038610398_)
                     (let ((_e1038810400_ (gx#stx-e _g1038610398_)))
                       (let ((_hd1038910403_ (##car _e1038810400_))
                             (_tl1039010405_ (##cdr _e1038810400_)))
                         ((lambda (_L10408_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1041810420_)
                                  (apply gxc#compile-e
                                         _g1041810420_
                                         _args10383_))
                                (gx#stx-e _L10408_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl1039010405_)))
                     (_g1038510395_ _g1038610398_)))))
          (_g1038410423_ _stx10382_)))))
  (define gxc#collect-module%
    (lambda (_stx10324_ . _args10325_)
      (let ((_g1032710341_
             (lambda (_g1032810338_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1032810338_))))
        (let ((_g1032610379_
               (lambda (_g1032810344_)
                 (if (gx#stx-pair? _g1032810344_)
                     (let ((_e1033110346_ (gx#stx-e _g1032810344_)))
                       (let ((_hd1033210349_ (##car _e1033110346_))
                             (_tl1033310351_ (##cdr _e1033110346_)))
                         (if (gx#stx-pair? _tl1033310351_)
                             (let ((_e1033410354_ (gx#stx-e _tl1033310351_)))
                               (let ((_hd1033510357_ (##car _e1033410354_))
                                     (_tl1033610359_ (##cdr _e1033410354_)))
                                 ((lambda (_L10362_ _L10363_)
                                    (let ((_ctx10376_
                                           (gx#syntax-local-e__0 _L10363_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx10376_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args10325_))
                                       gx#current-expander-context
                                       _ctx10376_)))
                                  _tl1033610359_
                                  _hd1033510357_)))
                             (_g1032710341_ _g1032810344_))))
                     (_g1032710341_ _g1032810344_)))))
          (_g1032610379_ _stx10324_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10256_ . _args10257_)
      (let ((_g1025910276_
             (lambda (_g1026010273_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1026010273_))))
        (let ((_g1025810321_
               (lambda (_g1026010279_)
                 (if (gx#stx-pair? _g1026010279_)
                     (let ((_e1026310281_ (gx#stx-e _g1026010279_)))
                       (let ((_hd1026410284_ (##car _e1026310281_))
                             (_tl1026510286_ (##cdr _e1026310281_)))
                         (if (gx#stx-pair? _tl1026510286_)
                             (let ((_e1026610289_ (gx#stx-e _tl1026510286_)))
                               (let ((_hd1026710292_ (##car _e1026610289_))
                                     (_tl1026810294_ (##cdr _e1026610289_)))
                                 (if (gx#stx-pair? _tl1026810294_)
                                     (let ((_e1026910297_
                                            (gx#stx-e _tl1026810294_)))
                                       (let ((_hd1027010300_
                                              (##car _e1026910297_))
                                             (_tl1027110302_
                                              (##cdr _e1026910297_)))
                                         (if (gx#stx-null? _tl1027110302_)
                                             ((lambda (_L10305_ _L10306_)
                                                (apply gxc#compile-e
                                                       _L10305_
                                                       _args10257_))
                                              _hd1027010300_
                                              _hd1026710292_)
                                             (_g1025910276_ _g1026010279_))))
                                     (_g1025910276_ _g1026010279_))))
                             (_g1025910276_ _g1026010279_))))
                     (_g1025910276_ _g1026010279_)))))
          (_g1025810321_ _stx10256_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10138_ . _args10139_)
      (let ((_g1014110169_
             (lambda (_g1014210166_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1014210166_))))
        (let ((_g1014010253_
               (lambda (_g1014210172_)
                 (if (gx#stx-pair? _g1014210172_)
                     (let ((_e1014510174_ (gx#stx-e _g1014210172_)))
                       (let ((_hd1014610177_ (##car _e1014510174_))
                             (_tl1014710179_ (##cdr _e1014510174_)))
                         (if (gx#stx-pair/null? _tl1014710179_)
                             (if (fx>= (gx#stx-length _tl1014710179_) '0)
                                 (let ((_g10640_
                                        (gx#syntax-split-splice
                                         _tl1014710179_
                                         '0)))
                                   (begin
                                     (let ((_g10641_ (values-count _g10640_)))
                                       (if (not (fx= _g10641_ 2))
                                           (error "Context expects 2 values"
                                                  _g10641_)))
                                     (let ((_target1014810182_
                                            (values-ref _g10640_ 0))
                                           (_tl1015010184_
                                            (values-ref _g10640_ 1)))
                                       (if (gx#stx-null? _tl1015010184_)
                                           (letrec ((_loop1015110187_
                                                     (lambda (_hd1014910190_
                                                              _body1015510192_
                                                              _hd1015610194_)
                                                       (if (gx#stx-pair?
                                                            _hd1014910190_)
                                                           (let ((_e1015210197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1014910190_)))
                     (let ((_lp-hd1015310200_ (##car _e1015210197_))
                           (_lp-tl1015410202_ (##cdr _e1015210197_)))
                       (if (gx#stx-pair? _lp-hd1015310200_)
                           (let ((_e1015910205_ (gx#stx-e _lp-hd1015310200_)))
                             (let ((_hd1016010208_ (##car _e1015910205_))
                                   (_tl1016110210_ (##cdr _e1015910205_)))
                               (if (gx#stx-pair? _tl1016110210_)
                                   (let ((_e1016210213_
                                          (gx#stx-e _tl1016110210_)))
                                     (let ((_hd1016310216_
                                            (##car _e1016210213_))
                                           (_tl1016410218_
                                            (##cdr _e1016210213_)))
                                       (if (gx#stx-null? _tl1016410218_)
                                           (_loop1015110187_
                                            _lp-tl1015410202_
                                            (cons _hd1016310216_
                                                  _body1015510192_)
                                            (cons _hd1016010208_
                                                  _hd1015610194_))
                                           (_g1014110169_ _g1014210172_))))
                                   (_g1014110169_ _g1014210172_))))
                           (_g1014110169_ _g1014210172_))))
                   (let ((_body1015710221_ (reverse _body1015510192_))
                         (_hd1015810223_ (reverse _hd1015610194_)))
                     ((lambda (_L10226_ _L10227_)
                        (for-each
                         (lambda (_g1024110243_)
                           (apply gxc#compile-e _g1024110243_ _args10139_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1024510248_ _g1024610250_)
                                     (cons _g1024510248_ _g1024610250_))
                                   '()
                                   _L10226_))))
                      _body1015710221_
                      _hd1015810223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1015110187_
                                              _target1014810182_
                                              '()
                                              '()))
                                           (_g1014110169_ _g1014210172_)))))
                                 (_g1014110169_ _g1014210172_))
                             (_g1014110169_ _g1014210172_))))
                     (_g1014110169_ _g1014210172_)))))
          (_g1014010253_ _stx10138_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9991_ . _args9992_)
      (let ((_g999410029_
             (lambda (_g999510026_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g999510026_))))
        (let ((_g999310135_
               (lambda (_g999510032_)
                 (if (gx#stx-pair? _g999510032_)
                     (let ((_e999910034_ (gx#stx-e _g999510032_)))
                       (let ((_hd1000010037_ (##car _e999910034_))
                             (_tl1000110039_ (##cdr _e999910034_)))
                         (if (gx#stx-pair? _tl1000110039_)
                             (let ((_e1000210042_ (gx#stx-e _tl1000110039_)))
                               (let ((_hd1000310045_ (##car _e1000210042_))
                                     (_tl1000410047_ (##cdr _e1000210042_)))
                                 (if (gx#stx-pair/null? _hd1000310045_)
                                     (if (fx>= (gx#stx-length _hd1000310045_)
                                               '0)
                                         (let ((_g10642_
                                                (gx#syntax-split-splice
                                                 _hd1000310045_
                                                 '0)))
                                           (begin
                                             (let ((_g10643_
                                                    (values-count _g10642_)))
                                               (if (not (fx= _g10643_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10643_)))
                                             (let ((_target1000510050_
                                                    (values-ref _g10642_ 0))
                                                   (_tl1000710052_
                                                    (values-ref _g10642_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1000710052_)
                                                   (letrec ((_loop1000810055_
                                                             (lambda (_hd1000610058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1001210060_
                              _hd1001310062_)
                       (if (gx#stx-pair? _hd1000610058_)
                           (let ((_e1000910065_ (gx#stx-e _hd1000610058_)))
                             (let ((_lp-hd1001010068_ (##car _e1000910065_))
                                   (_lp-tl1001110070_ (##cdr _e1000910065_)))
                               (if (gx#stx-pair? _lp-hd1001010068_)
                                   (let ((_e1001610073_
                                          (gx#stx-e _lp-hd1001010068_)))
                                     (let ((_hd1001710076_
                                            (##car _e1001610073_))
                                           (_tl1001810078_
                                            (##cdr _e1001610073_)))
                                       (if (gx#stx-pair? _tl1001810078_)
                                           (let ((_e1001910081_
                                                  (gx#stx-e _tl1001810078_)))
                                             (let ((_hd1002010084_
                                                    (##car _e1001910081_))
                                                   (_tl1002110086_
                                                    (##cdr _e1001910081_)))
                                               (if (gx#stx-null?
                                                    _tl1002110086_)
                                                   (_loop1000810055_
                                                    _lp-tl1001110070_
                                                    (cons _hd1002010084_
                                                          _expr1001210060_)
                                                    (cons _hd1001710076_
                                                          _hd1001310062_))
                                                   (_g999410029_
                                                    _g999510032_))))
                                           (_g999410029_ _g999510032_))))
                                   (_g999410029_ _g999510032_))))
                           (let ((_expr1001410089_ (reverse _expr1001210060_))
                                 (_hd1001510091_ (reverse _hd1001310062_)))
                             (if (gx#stx-pair? _tl1000410047_)
                                 (let ((_e1002210094_
                                        (gx#stx-e _tl1000410047_)))
                                   (let ((_hd1002310097_ (##car _e1002210094_))
                                         (_tl1002410099_
                                          (##cdr _e1002210094_)))
                                     (if (gx#stx-null? _tl1002410099_)
                                         ((lambda (_L10102_ _L10103_ _L10104_)
                                            (for-each
                                             (lambda (_g1012310125_)
                                               (apply gxc#compile-e
                                                      _g1012310125_
                                                      _args9992_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1012710130_
                                                                _g1012810132_)
                                                         (cons _g1012710130_
                                                               _g1012810132_))
                                                       (cons _L10102_ '())
                                                       _L10103_))))
                                          _hd1002310097_
                                          _expr1001410089_
                                          _hd1001510091_)
                                         (_g999410029_ _g999510032_))))
                                 (_g999410029_ _g999510032_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1000810055_
                                                      _target1000510050_
                                                      '()
                                                      '()))
                                                   (_g999410029_
                                                    _g999510032_)))))
                                         (_g999410029_ _g999510032_))
                                     (_g999410029_ _g999510032_))))
                             (_g999410029_ _g999510032_))))
                     (_g999410029_ _g999510032_)))))
          (_g999310135_ _stx9991_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9923_ . _args9924_)
      (let ((_g99269943_
             (lambda (_g99279940_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99279940_))))
        (let ((_g99259988_
               (lambda (_g99279946_)
                 (if (gx#stx-pair? _g99279946_)
                     (let ((_e99309948_ (gx#stx-e _g99279946_)))
                       (let ((_hd99319951_ (##car _e99309948_))
                             (_tl99329953_ (##cdr _e99309948_)))
                         (if (gx#stx-pair? _tl99329953_)
                             (let ((_e99339956_ (gx#stx-e _tl99329953_)))
                               (let ((_hd99349959_ (##car _e99339956_))
                                     (_tl99359961_ (##cdr _e99339956_)))
                                 (if (gx#stx-pair? _tl99359961_)
                                     (let ((_e99369964_
                                            (gx#stx-e _tl99359961_)))
                                       (let ((_hd99379967_ (##car _e99369964_))
                                             (_tl99389969_
                                              (##cdr _e99369964_)))
                                         (if (gx#stx-null? _tl99389969_)
                                             ((lambda (_L9972_ _L9973_)
                                                (apply gxc#compile-e
                                                       _L9972_
                                                       _args9924_))
                                              _hd99379967_
                                              _hd99349959_)
                                             (_g99269943_ _g99279946_))))
                                     (_g99269943_ _g99279946_))))
                             (_g99269943_ _g99279946_))))
                     (_g99269943_ _g99279946_)))))
          (_g99259988_ _stx9923_)))))
  (define gxc#collect-operands
    (lambda (_stx9836_ . _args9837_)
      (let ((_g98399858_
             (lambda (_g98409855_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98409855_))))
        (let ((_g98389920_
               (lambda (_g98409861_)
                 (if (gx#stx-pair? _g98409861_)
                     (let ((_e98429863_ (gx#stx-e _g98409861_)))
                       (let ((_hd98439866_ (##car _e98429863_))
                             (_tl98449868_ (##cdr _e98429863_)))
                         (if (gx#stx-pair/null? _tl98449868_)
                             (if (fx>= (gx#stx-length _tl98449868_) '0)
                                 (let ((_g10644_
                                        (gx#syntax-split-splice
                                         _tl98449868_
                                         '0)))
                                   (begin
                                     (let ((_g10645_ (values-count _g10644_)))
                                       (if (not (fx= _g10645_ 2))
                                           (error "Context expects 2 values"
                                                  _g10645_)))
                                     (let ((_target98459871_
                                            (values-ref _g10644_ 0))
                                           (_tl98479873_
                                            (values-ref _g10644_ 1)))
                                       (if (gx#stx-null? _tl98479873_)
                                           (letrec ((_loop98489876_
                                                     (lambda (_hd98469879_
                                                              _rands98529881_)
                                                       (if (gx#stx-pair?
                                                            _hd98469879_)
                                                           (let ((_e98499884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd98469879_)))
                     (let ((_lp-hd98509887_ (##car _e98499884_))
                           (_lp-tl98519889_ (##cdr _e98499884_)))
                       (_loop98489876_
                        _lp-tl98519889_
                        (cons _lp-hd98509887_ _rands98529881_))))
                   (let ((_rands98539892_ (reverse _rands98529881_)))
                     ((lambda (_L9895_)
                        (for-each
                         (lambda (_g99089910_)
                           (apply gxc#compile-e _g99089910_ _args9837_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g99129915_ _g99139917_)
                                     (cons _g99129915_ _g99139917_))
                                   '()
                                   _L9895_))))
                      _rands98539892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop98489876_
                                              _target98459871_
                                              '()))
                                           (_g98399858_ _g98409861_)))))
                                 (_g98399858_ _g98409861_))
                             (_g98399858_ _g98409861_))))
                     (_g98399858_ _g98409861_)))))
          (_g98389920_ _stx9836_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9767_)
      (let ((_g97699786_
             (lambda (_g97709783_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97709783_))))
        (let ((_g97689833_
               (lambda (_g97709789_)
                 (if (gx#stx-pair? _g97709789_)
                     (let ((_e97739791_ (gx#stx-e _g97709789_)))
                       (let ((_hd97749794_ (##car _e97739791_))
                             (_tl97759796_ (##cdr _e97739791_)))
                         (if (gx#stx-pair? _tl97759796_)
                             (let ((_e97769799_ (gx#stx-e _tl97759796_)))
                               (let ((_hd97779802_ (##car _e97769799_))
                                     (_tl97789804_ (##cdr _e97769799_)))
                                 (if (gx#stx-pair? _tl97789804_)
                                     (let ((_e97799807_
                                            (gx#stx-e _tl97789804_)))
                                       (let ((_hd97809810_ (##car _e97799807_))
                                             (_tl97819812_
                                              (##cdr _e97799807_)))
                                         (if (gx#stx-null? _tl97819812_)
                                             ((lambda (_L9815_ _L9816_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9831_)
                                                   (if (gx#identifier?
                                                        _bind9831_)
                                                       (gxc#add-module-binding!
                                                        _bind9831_
                                                        '#f)
                                                       '#!void))
                                                 _L9816_))
                                              _hd97809810_
                                              _hd97779802_)
                                             (_g97699786_ _g97709789_))))
                                     (_g97699786_ _g97709789_))))
                             (_g97699786_ _g97709789_))))
                     (_g97699786_ _g97709789_)))))
          (_g97689833_ _stx9767_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9700_)
      (let ((_g97029719_
             (lambda (_g97039716_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97039716_))))
        (let ((_g97019764_
               (lambda (_g97039722_)
                 (if (gx#stx-pair? _g97039722_)
                     (let ((_e97069724_ (gx#stx-e _g97039722_)))
                       (let ((_hd97079727_ (##car _e97069724_))
                             (_tl97089729_ (##cdr _e97069724_)))
                         (if (gx#stx-pair? _tl97089729_)
                             (let ((_e97099732_ (gx#stx-e _tl97089729_)))
                               (let ((_hd97109735_ (##car _e97099732_))
                                     (_tl97119737_ (##cdr _e97099732_)))
                                 (if (gx#stx-pair? _tl97119737_)
                                     (let ((_e97129740_
                                            (gx#stx-e _tl97119737_)))
                                       (let ((_hd97139743_ (##car _e97129740_))
                                             (_tl97149745_
                                              (##cdr _e97129740_)))
                                         (if (gx#stx-null? _tl97149745_)
                                             ((lambda (_L9748_ _L9749_)
                                                (gxc#add-module-binding!
                                                 _L9749_
                                                 '#t))
                                              _hd97139743_
                                              _hd97109735_)
                                             (_g97029719_ _g97039722_))))
                                     (_g97029719_ _g97039722_))))
                             (_g97029719_ _g97039722_))))
                     (_g97029719_ _g97039722_)))))
          (_g97019764_ _stx9700_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9642_ _modules9643_)
      (let ((_g96459659_
             (lambda (_g96469656_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96469656_))))
        (let ((_g96449697_
               (lambda (_g96469662_)
                 (if (gx#stx-pair? _g96469662_)
                     (let ((_e96499664_ (gx#stx-e _g96469662_)))
                       (let ((_hd96509667_ (##car _e96499664_))
                             (_tl96519669_ (##cdr _e96499664_)))
                         (if (gx#stx-pair? _tl96519669_)
                             (let ((_e96529672_ (gx#stx-e _tl96519669_)))
                               (let ((_hd96539675_ (##car _e96529672_))
                                     (_tl96549677_ (##cdr _e96529672_)))
                                 ((lambda (_L9680_ _L9681_)
                                    (let ((_ctx9694_
                                           (gx#syntax-local-e__0 _L9681_)))
                                      (begin
                                        (set-box!
                                         _modules9643_
                                         (cons _ctx9694_
                                               (unbox _modules9643_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9694_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9643_))
                                         gx#current-expander-context
                                         _ctx9694_))))
                                  _tl96549677_
                                  _hd96539675_)))
                             (_g96459659_ _g96469662_))))
                     (_g96459659_ _g96469662_)))))
          (_g96449697_ _stx9642_)))))
  (define gxc#add-module-binding!
    (lambda (_id9636_ _syntax?9637_)
      (let ((_eid9639_
             (##structure-ref
              (gx#resolve-identifier__0 _id9636_)
              '1
              gx#binding::t
              '#f))
            (_ht9640_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9639_)
            '#!void
            (table-set!
             _ht9640_
             _eid9639_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9639_)
              _syntax?9637_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9617_)
      (let ((_bind9619_ (gx#resolve-identifier__0 _id9617_)))
        (if _bind9619_
            (let ((_eid9621_ (##structure-ref _bind9619_ '1 gx#binding::t '#f))
                  (_ht9622_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9621_)
                  _eid9621_
                  (let ((_$e9624_ (table-ref _ht9622_ _eid9621_ '#f)))
                    (if _$e9624_
                        (values _$e9624_)
                        (if (##structure-instance-of?
                             _bind9619_
                             'gx#local-binding::t)
                            (let ((_gid9627_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9621_)))
                              (begin
                                (table-set! _ht9622_ _eid9621_ _gid9627_)
                                _gid9627_))
                            (if (##structure-instance-of?
                                 _bind9619_
                                 'gx#module-binding::t)
                                (let ((_gid9634_
                                       (let ((_$e9629_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9619_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9629_
                                             ((lambda (_ns9632_)
                                                (make-symbol
                                                 _ns9632_
                                                 '"#"
                                                 _eid9621_))
                                              _$e9629_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9621_)))))
                                  (begin
                                    (table-set! _ht9622_ _eid9621_ _gid9634_)
                                    _gid9634_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9617_
                                 _eid9621_
                                 _bind9619_)))))))
            (if (interned-symbol? (gx#stx-e _id9617_))
                (gx#stx-e _id9617_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9617_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9615_)
      (if (gx#identifier? _id9615_)
          (gxc#generate-runtime-binding-id _id9615_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9593
      (lambda (_sym9595_ _quote?9596_)
        (let ((_ht9598_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9600_ (table-ref _ht9598_ _sym9595_ '#f)))
            (if _$e9600_
                (values _$e9600_)
                (let ((_g9603_ (if _quote?9596_
                                   (make-symbol
                                    '"__"
                                    _sym9595_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9595_ '"_"))))
                  (begin (table-set! _ht9598_ _sym9595_ _g9603_) _g9603_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9608_)
          (let ((_quote?9610_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9593
             _sym9608_
             _quote?9610_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10647_
          (let ((_g10646_ (length _g10647_)))
            (cond ((fx= _g10646_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10647_))
                  ((fx= _g10646_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9593
                          _g10647_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g10647_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9592_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9592_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9554_)
      (if (interned-symbol? _key9554_)
          _key9554_
          (if (uninterned-symbol? _key9554_)
              (gxc#generate-runtime-gensym-reference__0 _key9554_)
              (let ((_key95559562_ _key9554_))
                (let ((_E95579566_
                       (lambda ()
                         (error '"No clause matching" _key95559562_))))
                  (let ((_K95589580_
                         (lambda (_mark9569_ _eid9570_)
                           (let ((_$e9572_
                                  (##structure-ref
                                   _mark9569_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9572_
                                 ((lambda (_ht9575_)
                                    (let ((_$e9577_
                                           (table-ref _ht9575_ _eid9570_ '#f)))
                                      (if _$e9577_
                                          (values _$e9577_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9570_))))
                                  _$e9572_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9570_))))))
                    (if (##pair? _key95559562_)
                        (let ((_hd95599583_ (##car _key95559562_))
                              (_tl95609585_ (##cdr _key95559562_)))
                          (let ((_eid9588_ _hd95599583_))
                            (let ((_mark9590_ _tl95609585_))
                              (_K95589580_ _mark9590_ _eid9588_))))
                        (_E95579566_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9539
      (lambda (_top9541_)
        (if _top9541_
            (let ((_ns9543_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9544_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9544_)
                  (make-symbol
                   _ns9543_
                   '"["
                   (number->string _phi9544_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9543_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9550_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9539 _top9550_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10649_
          (let ((_g10648_ (length _g10649_)))
            (cond ((fx= _g10648_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10649_))
                  ((fx= _g10648_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9539
                          _g10649_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g10649_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9538_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9458_)
      (let ((_g94609470_
             (lambda (_g94619467_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94619467_))))
        (let ((_g94599535_
               (lambda (_g94619473_)
                 (if (gx#stx-pair? _g94619473_)
                     (let ((_e94639475_ (gx#stx-e _g94619473_)))
                       (let ((_hd94649478_ (##car _e94639475_))
                             (_tl94659480_ (##cdr _e94639475_)))
                         ((lambda (_L9483_)
                            (let ((_body9493_
                                   (gx#stx-map1 gxc#compile-e _L9483_)))
                              (let ((_body9532_
                                     (filter (lambda (_stx9495_)
                                               (let ((_g94989507_
                                                      (lambda (_g94999504_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g94999504_))))
                                                 (let ((_g94979514_
                                                        (lambda (_g94999510_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g94969529_
                                                          (lambda (_g94999517_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g94999517_)
                        (let ((_e95009519_ (gx#stx-e _g94999517_)))
                          (let ((_hd95019522_ (##car _e95009519_))
                                (_tl95029524_ (##cdr _e95009519_)))
                            (if (gx#identifier? _hd95019522_)
                                (if (gx#stx-eq? 'begin _hd95019522_)
                                    (if (gx#stx-null? _tl95029524_)
                                        ((lambda () '#f))
                                        (_g94979514_ _g94999517_))
                                    (_g94979514_ _g94999517_))
                                (_g94979514_ _g94999517_))))
                        (_g94979514_ _g94999517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94969529_
                                                      _stx9495_)))))
                                             _body9493_)))
                                (let ()
                                  (if (fx= (length _body9532_) '1)
                                      (car _body9532_)
                                      (cons 'begin _body9532_))))))
                          _tl94659480_)))
                     (_g94609470_ _g94619473_)))))
          (_g94599535_ _stx9458_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9420_)
      (let ((_g94229432_
             (lambda (_g94239429_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94239429_))))
        (let ((_g94219455_
               (lambda (_g94239435_)
                 (if (gx#stx-pair? _g94239435_)
                     (let ((_e94259437_ (gx#stx-e _g94239435_)))
                       (let ((_hd94269440_ (##car _e94259437_))
                             (_tl94279442_ (##cdr _e94259437_)))
                         ((lambda (_L9445_)
                            (cons 'begin (gx#syntax->datum _L9445_)))
                          _tl94279442_)))
                     (_g94229432_ _g94239435_)))))
          (_g94219455_ _stx9420_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9382_)
      (let ((_g93849394_
             (lambda (_g93859391_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93859391_))))
        (let ((_g93839417_
               (lambda (_g93859397_)
                 (if (gx#stx-pair? _g93859397_)
                     (let ((_e93879399_ (gx#stx-e _g93859397_)))
                       (let ((_hd93889402_ (##car _e93879399_))
                             (_tl93899404_ (##cdr _e93879399_)))
                         ((lambda (_L9407_)
                            (cons 'declare (map gx#syntax->datum _L9407_)))
                          _tl93899404_)))
                     (_g93849394_ _g93859397_)))))
          (_g93839417_ _stx9382_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9138_)
      (let ((_g91409157_
             (lambda (_g91419154_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91419154_))))
        (let ((_g91399379_
               (lambda (_g91419160_)
                 (if (gx#stx-pair? _g91419160_)
                     (let ((_e91449162_ (gx#stx-e _g91419160_)))
                       (let ((_hd91459165_ (##car _e91449162_))
                             (_tl91469167_ (##cdr _e91449162_)))
                         (if (gx#stx-pair? _tl91469167_)
                             (let ((_e91479170_ (gx#stx-e _tl91469167_)))
                               (let ((_hd91489173_ (##car _e91479170_))
                                     (_tl91499175_ (##cdr _e91479170_)))
                                 (if (gx#stx-pair? _tl91499175_)
                                     (let ((_e91509178_
                                            (gx#stx-e _tl91499175_)))
                                       (let ((_hd91519181_ (##car _e91509178_))
                                             (_tl91529183_
                                              (##cdr _e91509178_)))
                                         (if (gx#stx-null? _tl91529183_)
                                             ((lambda (_L9186_ _L9187_)
                                                (let ((_g92049217_
                                                       (lambda (_g92059214_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g92059214_))))
                                                  (let ((_g92039331_
                                                         (lambda (_g92059220_)
                                                           ((lambda ()
                                                              (let ((_tmp9224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9539
                              '#t)))
                        (let ((_body9328_
                               ((letrec ((_lp9226_
                                          (lambda (_rest9228_ _k9229_ _r9230_)
                                            (let ((_g92359251_
                                                   (lambda (_g92369248_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g92369248_))))
                                              (let ((_g92349258_
                                                     (lambda (_g92369254_)
                                                       ((lambda ()
                                                          (reverse _r9230_))))))
                                                (let ((_g92339279_
                                                       (lambda (_g92369261_)
                                                         ((lambda (_L9263_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9263_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L9263_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp9224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k9229_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r9230_)
                        (_g92349258_ _g92369261_)))
                  _g92369261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g92329303_
                                                         (lambda (_g92369282_)
                                                           (if (gx#stx-pair?
                                                                _g92369282_)
                                                               (let ((_e92439284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g92369282_)))
                         (let ((_hd92449287_ (##car _e92439284_))
                               (_tl92459289_ (##cdr _e92439284_)))
                           ((lambda (_L9292_ _L9293_)
                              (_lp9226_
                               _L9292_
                               (fx+ _k9229_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L9293_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp9224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k9229_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r9230_)))
                            _tl92459289_
                            _hd92449287_)))
                       (_g92339279_ _g92369282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g92319325_
                                                           (lambda (_g92369306_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g92369306_)
                         (let ((_e92389308_ (gx#stx-e _g92369306_)))
                           (let ((_hd92399311_ (##car _e92389308_))
                                 (_tl92409313_ (##cdr _e92389308_)))
                             (if (gx#stx-datum? _hd92399311_)
                                 (if (equal? (gx#stx-e _hd92399311_) '#f)
                                     ((lambda (_L9316_)
                                        (_lp9226_
                                         _L9316_
                                         (fx+ _k9229_ '1)
                                         _r9230_))
                                      _tl92409313_)
                                     (_g92329303_ _g92369306_))
                                 (_g92329303_ _g92369306_))))
                         (_g92329303_ _g92369306_)))))
              (_g92319325_ _rest9228_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp9226_)
                                _L9187_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp9224_
                                                    (cons (gxc#compile-e
                                                           _L9186_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp9224_
                                               _L9187_)
                                              _body9328_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g92029361_
                                                           (lambda (_g92059334_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g92059334_)
                         (let ((_e92109336_ (gx#stx-e _g92059334_)))
                           (let ((_hd92119339_ (##car _e92109336_))
                                 (_tl92129341_ (##cdr _e92109336_)))
                             (if (gx#stx-null? _tl92129341_)
                                 ((lambda (_L9344_)
                                    (let ((_eid9353_
                                           (gxc#generate-runtime-binding-id
                                            _L9344_)))
                                      (begin
                                        (let ((_lambda-expr93549356_
                                               (gxc#apply-find-lambda-expression
                                                _L9186_)))
                                          (if _lambda-expr93549356_
                                              (let ((_lambda-expr9359_
                                                     _lambda-expr93549356_))
                                                (table-set!
                                                 (gxc#current-compile-runtime-names)
                                                 _lambda-expr9359_
                                                 _eid9353_))
                                              '#f))
                                        (cons 'define
                                              (cons _eid9353_
                                                    (cons (gxc#compile-e
                                                           _L9186_)
                                                          '()))))))
                                  _hd92119339_)
                                 (_g92039331_ _g92059334_))))
                         (_g92039331_ _g92059334_)))))
              (let ((_g92019376_
                     (lambda (_g92059364_)
                       (if (gx#stx-pair? _g92059364_)
                           (let ((_e92069366_ (gx#stx-e _g92059364_)))
                             (let ((_hd92079369_ (##car _e92069366_))
                                   (_tl92089371_ (##cdr _e92069366_)))
                               (if (gx#stx-datum? _hd92079369_)
                                   (if (equal? (gx#stx-e _hd92079369_) '#f)
                                       (if (gx#stx-null? _tl92089371_)
                                           ((lambda ()
                                              (gxc#compile-e _L9186_)))
                                           (_g92029361_ _g92059364_))
                                       (_g92029361_ _g92059364_))
                                   (_g92029361_ _g92059364_))))
                           (_g92029361_ _g92059364_)))))
                (_g92019376_ _L9187_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd91519181_
                                              _hd91489173_)
                                             (_g91409157_ _g91419160_))))
                                     (_g91409157_ _g91419160_))))
                             (_g91409157_ _g91419160_))))
                     (_g91409157_ _g91419160_)))))
          (_g91399379_ _stx9138_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9126_ _hd9127_)
      (let ((_len9129_ (gx#stx-length _hd9127_)))
        (let ((_cmp9131_ (if (gx#stx-list? _hd9127_) 'fx= 'fx>=)))
          (let ((_errmsg9133_
                 (string-append
                  (if (gx#stx-list? _hd9127_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len9129_)
                  '" values")))
            (let ((_count9135_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd9127_)) (fx= _len9129_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count9135_
                                            (cons (cons 'values-count
                                                        (cons _vals9126_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp9131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9135_ (cons _len9129_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg9133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9135_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9059_)
      (let ((_g90619078_
             (lambda (_g90629075_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90629075_))))
        (let ((_g90609123_
               (lambda (_g90629081_)
                 (if (gx#stx-pair? _g90629081_)
                     (let ((_e90659083_ (gx#stx-e _g90629081_)))
                       (let ((_hd90669086_ (##car _e90659083_))
                             (_tl90679088_ (##cdr _e90659083_)))
                         (if (gx#stx-pair? _tl90679088_)
                             (let ((_e90689091_ (gx#stx-e _tl90679088_)))
                               (let ((_hd90699094_ (##car _e90689091_))
                                     (_tl90709096_ (##cdr _e90689091_)))
                                 (if (gx#stx-pair? _tl90709096_)
                                     (let ((_e90719099_
                                            (gx#stx-e _tl90709096_)))
                                       (let ((_hd90729102_ (##car _e90719099_))
                                             (_tl90739104_
                                              (##cdr _e90719099_)))
                                         (if (gx#stx-null? _tl90739104_)
                                             ((lambda (_L9107_ _L9108_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L9108_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L9107_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd90729102_
                                              _hd90699094_)
                                             (_g90619078_ _g90629081_))))
                                     (_g90619078_ _g90629081_))))
                             (_g90619078_ _g90629081_))))
                     (_g90619078_ _g90629081_)))))
          (_g90609123_ _stx9059_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9057_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9057_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7590_)
      (let ((_runtime-identifier=?7592_
             (lambda (_id-stx9048_ _sym9049_)
               (let ((_bind90509052_ (gx#resolve-identifier__0 _id-stx9048_)))
                 (if _bind90509052_
                     (let ((_bind9055_ _bind90509052_))
                       (eq? (##structure-ref _bind9055_ '1 gx#binding::t '#f)
                            _sym9049_))
                     '#f)))))
        (let ((_dispatch-case?7593_
               (lambda (_hd8278_ _body8279_)
                 (let ((_form8281_ (cons _hd8278_ (cons _body8279_ '()))))
                   (let ((_g82868443_
                          (lambda (_g82878440_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g82878440_))))
                     (let ((_g82858450_
                            (lambda (_g82878446_) ((lambda () '#f)))))
                       (let ((_g82848591_
                              (lambda (_g82878453_)
                                (if (gx#stx-pair? _g82878453_)
                                    (let ((_e84038455_ (gx#stx-e _g82878453_)))
                                      (let ((_hd84048458_ (##car _e84038455_))
                                            (_tl84058460_ (##cdr _e84038455_)))
                                        (if (gx#stx-pair? _tl84058460_)
                                            (let ((_e84068463_
                                                   (gx#stx-e _tl84058460_)))
                                              (let ((_hd84078466_
                                                     (##car _e84068463_))
                                                    (_tl84088468_
                                                     (##cdr _e84068463_)))
                                                (if (gx#stx-pair? _hd84078466_)
                                                    (let ((_e84098471_
                                                           (gx#stx-e
                                                            _hd84078466_)))
                                                      (let ((_hd84108474_
                                                             (##car _e84098471_))
                                                            (_tl84118476_
                                                             (##cdr _e84098471_)))
                                                        (if (gx#identifier?
                                                             _hd84108474_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd84108474_)
                        (if (gx#stx-pair? _tl84118476_)
                            (let ((_e84128479_ (gx#stx-e _tl84118476_)))
                              (let ((_hd84138482_ (##car _e84128479_))
                                    (_tl84148484_ (##cdr _e84128479_)))
                                (if (gx#stx-pair? _hd84138482_)
                                    (let ((_e84158487_
                                           (gx#stx-e _hd84138482_)))
                                      (let ((_hd84168490_ (##car _e84158487_))
                                            (_tl84178492_ (##cdr _e84158487_)))
                                        (if (gx#identifier? _hd84168490_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd84168490_)
                                                (if (gx#stx-pair? _tl84178492_)
                                                    (let ((_e84188495_
                                                           (gx#stx-e
                                                            _tl84178492_)))
                                                      (let ((_hd84198498_
                                                             (##car _e84188495_))
                                                            (_tl84208500_
                                                             (##cdr _e84188495_)))
                                                        (if (gx#stx-null?
                                                             _tl84208500_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl84148484_)
                        (let ((_e84218503_ (gx#stx-e _tl84148484_)))
                          (let ((_hd84228506_ (##car _e84218503_))
                                (_tl84238508_ (##cdr _e84218503_)))
                            (if (gx#stx-pair? _hd84228506_)
                                (let ((_e84248511_ (gx#stx-e _hd84228506_)))
                                  (let ((_hd84258514_ (##car _e84248511_))
                                        (_tl84268516_ (##cdr _e84248511_)))
                                    (if (gx#identifier? _hd84258514_)
                                        (if (gx#stx-eq? '%#ref _hd84258514_)
                                            (if (gx#stx-pair? _tl84268516_)
                                                (let ((_e84278519_
                                                       (gx#stx-e
                                                        _tl84268516_)))
                                                  (let ((_hd84288522_
                                                         (##car _e84278519_))
                                                        (_tl84298524_
                                                         (##cdr _e84278519_)))
                                                    (if (gx#stx-null?
                                                         _tl84298524_)
                                                        (if (gx#stx-pair?
                                                             _tl84238508_)
                                                            (let ((_e84308527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl84238508_)))
                      (let ((_hd84318530_ (##car _e84308527_))
                            (_tl84328532_ (##cdr _e84308527_)))
                        (if (gx#stx-pair? _hd84318530_)
                            (let ((_e84338535_ (gx#stx-e _hd84318530_)))
                              (let ((_hd84348538_ (##car _e84338535_))
                                    (_tl84358540_ (##cdr _e84338535_)))
                                (if (gx#identifier? _hd84348538_)
                                    (if (gx#stx-eq? '%#ref _hd84348538_)
                                        (if (gx#stx-pair? _tl84358540_)
                                            (let ((_e84368543_
                                                   (gx#stx-e _tl84358540_)))
                                              (let ((_hd84378546_
                                                     (##car _e84368543_))
                                                    (_tl84388548_
                                                     (##cdr _e84368543_)))
                                                (if (gx#stx-null? _tl84388548_)
                                                    (if (gx#stx-null?
                                                         _tl84328532_)
                                                        (if (gx#stx-null?
                                                             _tl84088468_)
                                                            ((lambda (_L8551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8552_
                              _L8553_
                              _L8554_)
                       (if (if (gx#identifier? _L8554_)
                               (if (_runtime-identifier=?7592_ _L8553_ 'apply)
                                   (if (gx#free-identifier=? _L8554_ _L8551_)
                                       (not (gx#free-identifier=?
                                             _L8552_
                                             _L8554_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g82858450_ _g82878453_)))
                     _hd84378546_
                     _hd84288522_
                     _hd84198498_
                     _hd84048458_)
                    (_g82858450_ _g82878453_))
                (_g82858450_ _g82878453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82858450_
                                                     _g82878453_))))
                                            (_g82858450_ _g82878453_))
                                        (_g82858450_ _g82878453_))
                                    (_g82858450_ _g82878453_))))
                            (_g82858450_ _g82878453_))))
                    (_g82858450_ _g82878453_))
                (_g82858450_ _g82878453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82858450_ _g82878453_))
                                            (_g82858450_ _g82878453_))
                                        (_g82858450_ _g82878453_))))
                                (_g82858450_ _g82878453_))))
                        (_g82858450_ _g82878453_))
                    (_g82858450_ _g82878453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82858450_ _g82878453_))
                                                (_g82858450_ _g82878453_))
                                            (_g82858450_ _g82878453_))))
                                    (_g82858450_ _g82878453_))))
                            (_g82858450_ _g82878453_))
                        (_g82858450_ _g82878453_))
                    (_g82858450_ _g82878453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82858450_
                                                     _g82878453_))))
                                            (_g82858450_ _g82878453_))))
                                    (_g82858450_ _g82878453_)))))
                         (let ((_g82838851_
                                (lambda (_g82878594_)
                                  (if (gx#stx-pair? _g82878594_)
                                      (let ((_e83398596_
                                             (gx#stx-e _g82878594_)))
                                        (let ((_hd83408599_
                                               (##car _e83398596_))
                                              (_tl83418601_
                                               (##cdr _e83398596_)))
                                          (if (gx#stx-pair/null? _hd83408599_)
                                              (if (fx>= (gx#stx-length
                                                         _hd83408599_)
                                                        '0)
                                                  (let ((_g10658_
                                                         (gx#syntax-split-splice
                                                          _hd83408599_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10659_
                                                             (values-count
                                                              _g10658_)))
                                                        (if (not (fx= _g10659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10659_)))
              (let ((_target83428604_ (values-ref _g10658_ 0))
                    (_tl83448606_ (values-ref _g10658_ 1)))
                (letrec ((_loop83458609_
                          (lambda (_hd83438612_ _arg83498614_)
                            (if (gx#stx-pair? _hd83438612_)
                                (let ((_e83468617_ (gx#stx-e _hd83438612_)))
                                  (let ((_lp-hd83478620_ (##car _e83468617_))
                                        (_lp-tl83488622_ (##cdr _e83468617_)))
                                    (_loop83458609_
                                     _lp-tl83488622_
                                     (cons _lp-hd83478620_ _arg83498614_))))
                                (let ((_arg83508625_ (reverse _arg83498614_)))
                                  (if (gx#stx-pair? _tl83418601_)
                                      (let ((_e83518628_
                                             (gx#stx-e _tl83418601_)))
                                        (let ((_hd83528631_
                                               (##car _e83518628_))
                                              (_tl83538633_
                                               (##cdr _e83518628_)))
                                          (if (gx#stx-pair? _hd83528631_)
                                              (let ((_e83548636_
                                                     (gx#stx-e _hd83528631_)))
                                                (let ((_hd83558639_
                                                       (##car _e83548636_))
                                                      (_tl83568641_
                                                       (##cdr _e83548636_)))
                                                  (if (gx#identifier?
                                                       _hd83558639_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd83558639_)
                                                          (if (gx#stx-pair?
                                                               _tl83568641_)
                                                              (let ((_e83578644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl83568641_)))
                        (let ((_hd83588647_ (##car _e83578644_))
                              (_tl83598649_ (##cdr _e83578644_)))
                          (if (gx#stx-pair? _hd83588647_)
                              (let ((_e83608652_ (gx#stx-e _hd83588647_)))
                                (let ((_hd83618655_ (##car _e83608652_))
                                      (_tl83628657_ (##cdr _e83608652_)))
                                  (if (gx#identifier? _hd83618655_)
                                      (if (gx#stx-eq? '%#ref _hd83618655_)
                                          (if (gx#stx-pair? _tl83628657_)
                                              (let ((_e83638660_
                                                     (gx#stx-e _tl83628657_)))
                                                (let ((_hd83648663_
                                                       (##car _e83638660_))
                                                      (_tl83658665_
                                                       (##cdr _e83638660_)))
                                                  (if (gx#stx-null?
                                                       _tl83658665_)
                                                      (if (gx#stx-pair?
                                                           _tl83598649_)
                                                          (let ((_e83668668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83598649_)))
                    (let ((_hd83678671_ (##car _e83668668_))
                          (_tl83688673_ (##cdr _e83668668_)))
                      (if (gx#stx-pair? _hd83678671_)
                          (let ((_e83698676_ (gx#stx-e _hd83678671_)))
                            (let ((_hd83708679_ (##car _e83698676_))
                                  (_tl83718681_ (##cdr _e83698676_)))
                              (if (gx#identifier? _hd83708679_)
                                  (if (gx#stx-eq? '%#ref _hd83708679_)
                                      (if (gx#stx-pair? _tl83718681_)
                                          (let ((_e83728684_
                                                 (gx#stx-e _tl83718681_)))
                                            (let ((_hd83738687_
                                                   (##car _e83728684_))
                                                  (_tl83748689_
                                                   (##cdr _e83728684_)))
                                              (if (gx#stx-null? _tl83748689_)
                                                  (if (gx#stx-pair/null?
                                                       _tl83688673_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83688673_)
                        '1)
                  (let ((_g10660_ (gx#syntax-split-splice _tl83688673_ '1)))
                    (begin
                      (let ((_g10661_ (values-count _g10660_)))
                        (if (not (fx= _g10661_ 2))
                            (error "Context expects 2 values" _g10661_)))
                      (let ((_target83758692_ (values-ref _g10660_ 0))
                            (_tl83778694_ (values-ref _g10660_ 1)))
                        (if (gx#stx-pair? _tl83778694_)
                            (let ((_e83848697_ (gx#stx-e _tl83778694_)))
                              (let ((_hd83858700_ (##car _e83848697_))
                                    (_tl83868702_ (##cdr _e83848697_)))
                                (if (gx#stx-pair? _hd83858700_)
                                    (let ((_e83878705_
                                           (gx#stx-e _hd83858700_)))
                                      (let ((_hd83888708_ (##car _e83878705_))
                                            (_tl83898710_ (##cdr _e83878705_)))
                                        (if (gx#identifier? _hd83888708_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd83888708_)
                                                (if (gx#stx-pair? _tl83898710_)
                                                    (let ((_e83908713_
                                                           (gx#stx-e
                                                            _tl83898710_)))
                                                      (let ((_hd83918716_
                                                             (##car _e83908713_))
                                                            (_tl83928718_
                                                             (##cdr _e83908713_)))
                                                        (if (gx#stx-null?
                                                             _tl83928718_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83868702_)
                        (letrec ((_loop83788721_
                                  (lambda (_hd83768724_ _xarg83828726_)
                                    (if (gx#stx-pair? _hd83768724_)
                                        (let ((_e83798729_
                                               (gx#stx-e _hd83768724_)))
                                          (let ((_lp-hd83808732_
                                                 (##car _e83798729_))
                                                (_lp-tl83818734_
                                                 (##cdr _e83798729_)))
                                            (if (gx#stx-pair? _lp-hd83808732_)
                                                (let ((_e83938737_
                                                       (gx#stx-e
                                                        _lp-hd83808732_)))
                                                  (let ((_hd83948740_
                                                         (##car _e83938737_))
                                                        (_tl83958742_
                                                         (##cdr _e83938737_)))
                                                    (if (gx#identifier?
                                                         _hd83948740_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd83948740_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83958742_)
                        (let ((_e83968745_ (gx#stx-e _tl83958742_)))
                          (let ((_hd83978748_ (##car _e83968745_))
                                (_tl83988750_ (##cdr _e83968745_)))
                            (if (gx#stx-null? _tl83988750_)
                                (_loop83788721_
                                 _lp-tl83818734_
                                 (cons _hd83978748_ _xarg83828726_))
                                (_g82848591_ _g82878594_))))
                        (_g82848591_ _g82878594_))
                    (_g82848591_ _g82878594_))
                (_g82848591_ _g82878594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82848591_ _g82878594_))))
                                        (let ((_xarg83838753_
                                               (reverse _xarg83828726_)))
                                          (if (gx#stx-null? _tl83538633_)
                                              ((lambda (_L8756_
                                                        _L8757_
                                                        _L8758_
                                                        _L8759_
                                                        _L8760_
                                                        _L8761_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g88048807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g88058809_)
                              (cons _g88048807_ _g88058809_))
                            '()
                            _L8761_)))
                 (if (gx#identifier? _L8760_)
                     (if (_runtime-identifier=?7592_ _L8759_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g88118814_
                                                             _g88128816_)
                                                      (cons _g88118814_
                                                            _g88128816_))
                                                    '()
                                                    _L8761_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g88188821_
                                                             _g88198823_)
                                                      (cons _g88188821_
                                                            _g88198823_))
                                                    '()
                                                    _L8757_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g88258828_
                                                            _g88268830_)
                                                     (cons _g88258828_
                                                           _g88268830_))
                                                   '()
                                                   _L8761_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g88328835_
                                                            _g88338837_)
                                                     (cons _g88328835_
                                                           _g88338837_))
                                                   '()
                                                   _L8757_)))
                                 (if (gx#free-identifier=? _L8760_ _L8756_)
                                     (not (find (lambda (_g88398841_)
                                                  (gx#free-identifier=?
                                                   _g88398841_
                                                   _L8758_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g88438846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g88448848_)
                    (cons _g88438846_ _g88448848_))
                  (cons _L8760_ '())
                  _L8761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g82848591_
                                                      _g82878594_)))
                                               _hd83918716_
                                               _xarg83838753_
                                               _hd83738687_
                                               _hd83648663_
                                               _tl83448606_
                                               _arg83508625_)
                                              (_g82848591_ _g82878594_)))))))
                          (_loop83788721_ _target83758692_ '()))
                        (_g82848591_ _g82878594_))
                    (_g82848591_ _g82878594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82848591_ _g82878594_))
                                                (_g82848591_ _g82878594_))
                                            (_g82848591_ _g82878594_))))
                                    (_g82848591_ _g82878594_))))
                            (_g82848591_ _g82878594_)))))
                  (_g82848591_ _g82878594_))
              (_g82848591_ _g82878594_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82848591_ _g82878594_))))
                                          (_g82848591_ _g82878594_))
                                      (_g82848591_ _g82878594_))
                                  (_g82848591_ _g82878594_))))
                          (_g82848591_ _g82878594_))))
                  (_g82848591_ _g82878594_))
              (_g82848591_ _g82878594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82848591_ _g82878594_))
                                          (_g82848591_ _g82878594_))
                                      (_g82848591_ _g82878594_))))
                              (_g82848591_ _g82878594_))))
                      (_g82848591_ _g82878594_))
                  (_g82848591_ _g82878594_))
              (_g82848591_ _g82878594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82848591_ _g82878594_))))
                                      (_g82848591_ _g82878594_)))))))
                  (_loop83458609_ _target83428604_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82848591_ _g82878594_))
                                              (_g82848591_ _g82878594_))))
                                      (_g82848591_ _g82878594_)))))
                           (let ((_g82829045_
                                  (lambda (_g82878854_)
                                    (if (gx#stx-pair? _g82878854_)
                                        (let ((_e82918856_
                                               (gx#stx-e _g82878854_)))
                                          (let ((_hd82928859_
                                                 (##car _e82918856_))
                                                (_tl82938861_
                                                 (##cdr _e82918856_)))
                                            (if (gx#stx-pair/null?
                                                 _hd82928859_)
                                                (if (fx>= (gx#stx-length
                                                           _hd82928859_)
                                                          '0)
                                                    (let ((_g10662_
                                                           (gx#syntax-split-splice
                                                            _hd82928859_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10663_
                                                               (values-count
                                                                _g10662_)))
                                                          (if (not (fx= _g10663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10663_)))
                (let ((_target82948864_ (values-ref _g10662_ 0))
                      (_tl82968866_ (values-ref _g10662_ 1)))
                  (if (gx#stx-null? _tl82968866_)
                      (letrec ((_loop82978869_
                                (lambda (_hd82958872_ _arg83018874_)
                                  (if (gx#stx-pair? _hd82958872_)
                                      (let ((_e82988877_
                                             (gx#stx-e _hd82958872_)))
                                        (let ((_lp-hd82998880_
                                               (##car _e82988877_))
                                              (_lp-tl83008882_
                                               (##cdr _e82988877_)))
                                          (_loop82978869_
                                           _lp-tl83008882_
                                           (cons _lp-hd82998880_
                                                 _arg83018874_))))
                                      (let ((_arg83028885_
                                             (reverse _arg83018874_)))
                                        (if (gx#stx-pair? _tl82938861_)
                                            (let ((_e83038888_
                                                   (gx#stx-e _tl82938861_)))
                                              (let ((_hd83048891_
                                                     (##car _e83038888_))
                                                    (_tl83058893_
                                                     (##cdr _e83038888_)))
                                                (if (gx#stx-pair? _hd83048891_)
                                                    (let ((_e83068896_
                                                           (gx#stx-e
                                                            _hd83048891_)))
                                                      (let ((_hd83078899_
                                                             (##car _e83068896_))
                                                            (_tl83088901_
                                                             (##cdr _e83068896_)))
                                                        (if (gx#identifier?
                                                             _hd83078899_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd83078899_)
                        (if (gx#stx-pair? _tl83088901_)
                            (let ((_e83098904_ (gx#stx-e _tl83088901_)))
                              (let ((_hd83108907_ (##car _e83098904_))
                                    (_tl83118909_ (##cdr _e83098904_)))
                                (if (gx#stx-pair? _hd83108907_)
                                    (let ((_e83128912_
                                           (gx#stx-e _hd83108907_)))
                                      (let ((_hd83138915_ (##car _e83128912_))
                                            (_tl83148917_ (##cdr _e83128912_)))
                                        (if (gx#identifier? _hd83138915_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd83138915_)
                                                (if (gx#stx-pair? _tl83148917_)
                                                    (let ((_e83158920_
                                                           (gx#stx-e
                                                            _tl83148917_)))
                                                      (let ((_hd83168923_
                                                             (##car _e83158920_))
                                                            (_tl83178925_
                                                             (##cdr _e83158920_)))
                                                        (if (gx#stx-null?
                                                             _tl83178925_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83118909_)
                        (if (fx>= (gx#stx-length _tl83118909_) '0)
                            (let ((_g10664_
                                   (gx#syntax-split-splice _tl83118909_ '0)))
                              (begin
                                (let ((_g10665_ (values-count _g10664_)))
                                  (if (not (fx= _g10665_ 2))
                                      (error "Context expects 2 values"
                                             _g10665_)))
                                (let ((_target83188928_
                                       (values-ref _g10664_ 0))
                                      (_tl83208930_ (values-ref _g10664_ 1)))
                                  (if (gx#stx-null? _tl83208930_)
                                      (letrec ((_loop83218933_
                                                (lambda (_hd83198936_
                                                         _xarg83258938_)
                                                  (if (gx#stx-pair?
                                                       _hd83198936_)
                                                      (let ((_e83228941_
                                                             (gx#stx-e
                                                              _hd83198936_)))
                                                        (let ((_lp-hd83238944_
                                                               (##car _e83228941_))
                                                              (_lp-tl83248946_
                                                               (##cdr _e83228941_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd83238944_)
                                                              (let ((_e83278949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd83238944_)))
                        (let ((_hd83288952_ (##car _e83278949_))
                              (_tl83298954_ (##cdr _e83278949_)))
                          (if (gx#identifier? _hd83288952_)
                              (if (gx#stx-eq? '%#ref _hd83288952_)
                                  (if (gx#stx-pair? _tl83298954_)
                                      (let ((_e83308957_
                                             (gx#stx-e _tl83298954_)))
                                        (let ((_hd83318960_
                                               (##car _e83308957_))
                                              (_tl83328962_
                                               (##cdr _e83308957_)))
                                          (if (gx#stx-null? _tl83328962_)
                                              (_loop83218933_
                                               _lp-tl83248946_
                                               (cons _hd83318960_
                                                     _xarg83258938_))
                                              (_g82838851_ _g82878854_))))
                                      (_g82838851_ _g82878854_))
                                  (_g82838851_ _g82878854_))
                              (_g82838851_ _g82878854_))))
                      (_g82838851_ _g82878854_))))
              (let ((_xarg83268965_ (reverse _xarg83258938_)))
                (if (gx#stx-null? _tl83058893_)
                    ((lambda (_L8968_ _L8969_ _L8970_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g89989001_ _g89999003_)
                                            (cons _g89989001_ _g89999003_))
                                          '()
                                          _L8970_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g90059008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90069010_)
                    (cons _g90059008_ _g90069010_))
                  '()
                  _L8970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g90129015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90139017_)
                    (cons _g90129015_ _g90139017_))
                  '()
                  _L8968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g90199022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90209024_)
                   (cons _g90199022_ _g90209024_))
                 '()
                 _L8970_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g90269029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90279031_)
                   (cons _g90269029_ _g90279031_))
                 '()
                 _L8968_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g90339035_)
                                                    (gx#free-identifier=?
                                                     _g90339035_
                                                     _L8969_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g90379040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g90389042_)
                      (cons _g90379040_ _g90389042_))
                    '()
                    _L8970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g82838851_ _g82878854_)))
                     _xarg83268965_
                     _hd83168923_
                     _arg83028885_)
                    (_g82838851_ _g82878854_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop83218933_ _target83188928_ '()))
                                      (_g82838851_ _g82878854_)))))
                            (_g82838851_ _g82878854_))
                        (_g82838851_ _g82878854_))
                    (_g82838851_ _g82878854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82838851_ _g82878854_))
                                                (_g82838851_ _g82878854_))
                                            (_g82838851_ _g82878854_))))
                                    (_g82838851_ _g82878854_))))
                            (_g82838851_ _g82878854_))
                        (_g82838851_ _g82878854_))
                    (_g82838851_ _g82878854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82838851_
                                                     _g82878854_))))
                                            (_g82838851_ _g82878854_)))))))
                        (_loop82978869_ _target82948864_ '()))
                      (_g82838851_ _g82878854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82838851_ _g82878854_))
                                                (_g82838851_ _g82878854_))))
                                        (_g82838851_ _g82878854_)))))
                             (_g82829045_ _form8281_))))))))))
          (let ((_dispatch-case-e7594_
                 (lambda (_hd7742_ _body7743_)
                   (let ((_form7745_ (cons _hd7742_ (cons _body7743_ '()))))
                     (let ((_g77497873_
                            (lambda (_g77507870_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g77507870_))))
                       (let ((_g77487991_
                              (lambda (_g77507876_)
                                (if (gx#stx-pair? _g77507876_)
                                    (let ((_e78397878_ (gx#stx-e _g77507876_)))
                                      (let ((_hd78407881_ (##car _e78397878_))
                                            (_tl78417883_ (##cdr _e78397878_)))
                                        (if (gx#stx-pair? _tl78417883_)
                                            (let ((_e78427886_
                                                   (gx#stx-e _tl78417883_)))
                                              (let ((_hd78437889_
                                                     (##car _e78427886_))
                                                    (_tl78447891_
                                                     (##cdr _e78427886_)))
                                                (if (gx#stx-pair? _hd78437889_)
                                                    (let ((_e78457894_
                                                           (gx#stx-e
                                                            _hd78437889_)))
                                                      (let ((_hd78467897_
                                                             (##car _e78457894_))
                                                            (_tl78477899_
                                                             (##cdr _e78457894_)))
                                                        (if (gx#identifier?
                                                             _hd78467897_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78467897_)
                        (if (gx#stx-pair? _tl78477899_)
                            (let ((_e78487902_ (gx#stx-e _tl78477899_)))
                              (let ((_hd78497905_ (##car _e78487902_))
                                    (_tl78507907_ (##cdr _e78487902_)))
                                (if (gx#stx-pair? _hd78497905_)
                                    (let ((_e78517910_
                                           (gx#stx-e _hd78497905_)))
                                      (let ((_hd78527913_ (##car _e78517910_))
                                            (_tl78537915_ (##cdr _e78517910_)))
                                        (if (gx#identifier? _hd78527913_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78527913_)
                                                (if (gx#stx-pair? _tl78537915_)
                                                    (let ((_e78547918_
                                                           (gx#stx-e
                                                            _tl78537915_)))
                                                      (let ((_hd78557921_
                                                             (##car _e78547918_))
                                                            (_tl78567923_
                                                             (##cdr _e78547918_)))
                                                        (if (gx#stx-null?
                                                             _tl78567923_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78507907_)
                        (let ((_e78577926_ (gx#stx-e _tl78507907_)))
                          (let ((_hd78587929_ (##car _e78577926_))
                                (_tl78597931_ (##cdr _e78577926_)))
                            (if (gx#stx-pair? _hd78587929_)
                                (let ((_e78607934_ (gx#stx-e _hd78587929_)))
                                  (let ((_hd78617937_ (##car _e78607934_))
                                        (_tl78627939_ (##cdr _e78607934_)))
                                    (if (gx#identifier? _hd78617937_)
                                        (if (gx#stx-eq? '%#ref _hd78617937_)
                                            (if (gx#stx-pair? _tl78627939_)
                                                (let ((_e78637942_
                                                       (gx#stx-e
                                                        _tl78627939_)))
                                                  (let ((_hd78647945_
                                                         (##car _e78637942_))
                                                        (_tl78657947_
                                                         (##cdr _e78637942_)))
                                                    (if (gx#stx-null?
                                                         _tl78657947_)
                                                        (if (gx#stx-pair?
                                                             _tl78597931_)
                                                            (let ((_e78667950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl78597931_)))
                      (let ((_hd78677953_ (##car _e78667950_))
                            (_tl78687955_ (##cdr _e78667950_)))
                        (if (gx#stx-null? _tl78687955_)
                            (if (gx#stx-null? _tl78447891_)
                                ((lambda (_L7958_ _L7959_ _L7960_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7958_ '()))))
                                 _hd78647945_
                                 _hd78557921_
                                 _hd78407881_)
                                (_g77497873_ _g77507876_))
                            (_g77497873_ _g77507876_))))
                    (_g77497873_ _g77507876_))
                (_g77497873_ _g77507876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77497873_ _g77507876_))
                                            (_g77497873_ _g77507876_))
                                        (_g77497873_ _g77507876_))))
                                (_g77497873_ _g77507876_))))
                        (_g77497873_ _g77507876_))
                    (_g77497873_ _g77507876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77497873_ _g77507876_))
                                                (_g77497873_ _g77507876_))
                                            (_g77497873_ _g77507876_))))
                                    (_g77497873_ _g77507876_))))
                            (_g77497873_ _g77507876_))
                        (_g77497873_ _g77507876_))
                    (_g77497873_ _g77507876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77497873_
                                                     _g77507876_))))
                                            (_g77497873_ _g77507876_))))
                                    (_g77497873_ _g77507876_)))))
                         (let ((_g77478127_
                                (lambda (_g77507994_)
                                  (if (gx#stx-pair? _g77507994_)
                                      (let ((_e78007996_
                                             (gx#stx-e _g77507994_)))
                                        (let ((_hd78017999_
                                               (##car _e78007996_))
                                              (_tl78028001_
                                               (##cdr _e78007996_)))
                                          (if (gx#stx-pair/null? _hd78017999_)
                                              (if (fx>= (gx#stx-length
                                                         _hd78017999_)
                                                        '0)
                                                  (let ((_g10652_
                                                         (gx#syntax-split-splice
                                                          _hd78017999_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10653_
                                                             (values-count
                                                              _g10652_)))
                                                        (if (not (fx= _g10653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10653_)))
              (let ((_target78038004_ (values-ref _g10652_ 0))
                    (_tl78058006_ (values-ref _g10652_ 1)))
                (letrec ((_loop78068009_
                          (lambda (_hd78048012_ _arg78108014_)
                            (if (gx#stx-pair? _hd78048012_)
                                (let ((_e78078017_ (gx#stx-e _hd78048012_)))
                                  (let ((_lp-hd78088020_ (##car _e78078017_))
                                        (_lp-tl78098022_ (##cdr _e78078017_)))
                                    (_loop78068009_
                                     _lp-tl78098022_
                                     (cons _lp-hd78088020_ _arg78108014_))))
                                (let ((_arg78118025_ (reverse _arg78108014_)))
                                  (if (gx#stx-pair? _tl78028001_)
                                      (let ((_e78128028_
                                             (gx#stx-e _tl78028001_)))
                                        (let ((_hd78138031_
                                               (##car _e78128028_))
                                              (_tl78148033_
                                               (##cdr _e78128028_)))
                                          (if (gx#stx-pair? _hd78138031_)
                                              (let ((_e78158036_
                                                     (gx#stx-e _hd78138031_)))
                                                (let ((_hd78168039_
                                                       (##car _e78158036_))
                                                      (_tl78178041_
                                                       (##cdr _e78158036_)))
                                                  (if (gx#identifier?
                                                       _hd78168039_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78168039_)
                                                          (if (gx#stx-pair?
                                                               _tl78178041_)
                                                              (let ((_e78188044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78178041_)))
                        (let ((_hd78198047_ (##car _e78188044_))
                              (_tl78208049_ (##cdr _e78188044_)))
                          (if (gx#stx-pair? _hd78198047_)
                              (let ((_e78218052_ (gx#stx-e _hd78198047_)))
                                (let ((_hd78228055_ (##car _e78218052_))
                                      (_tl78238057_ (##cdr _e78218052_)))
                                  (if (gx#identifier? _hd78228055_)
                                      (if (gx#stx-eq? '%#ref _hd78228055_)
                                          (if (gx#stx-pair? _tl78238057_)
                                              (let ((_e78248060_
                                                     (gx#stx-e _tl78238057_)))
                                                (let ((_hd78258063_
                                                       (##car _e78248060_))
                                                      (_tl78268065_
                                                       (##cdr _e78248060_)))
                                                  (if (gx#stx-null?
                                                       _tl78268065_)
                                                      (if (gx#stx-pair?
                                                           _tl78208049_)
                                                          (let ((_e78278068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78208049_)))
                    (let ((_hd78288071_ (##car _e78278068_))
                          (_tl78298073_ (##cdr _e78278068_)))
                      (if (gx#stx-pair? _hd78288071_)
                          (let ((_e78308076_ (gx#stx-e _hd78288071_)))
                            (let ((_hd78318079_ (##car _e78308076_))
                                  (_tl78328081_ (##cdr _e78308076_)))
                              (if (gx#identifier? _hd78318079_)
                                  (if (gx#stx-eq? '%#ref _hd78318079_)
                                      (if (gx#stx-pair? _tl78328081_)
                                          (let ((_e78338084_
                                                 (gx#stx-e _tl78328081_)))
                                            (let ((_hd78348087_
                                                   (##car _e78338084_))
                                                  (_tl78358089_
                                                   (##cdr _e78338084_)))
                                              (if (gx#stx-null? _tl78358089_)
                                                  (if (gx#stx-null?
                                                       _tl78148033_)
                                                      ((lambda (_L8092_
                                                                _L8093_
                                                                _L8094_
                                                                _L8095_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L8092_ '()))))
               _hd78348087_
               _hd78258063_
               _tl78058006_
               _arg78118025_)
              (_g77487991_ _g77507994_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77487991_ _g77507994_))))
                                          (_g77487991_ _g77507994_))
                                      (_g77487991_ _g77507994_))
                                  (_g77487991_ _g77507994_))))
                          (_g77487991_ _g77507994_))))
                  (_g77487991_ _g77507994_))
              (_g77487991_ _g77507994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77487991_ _g77507994_))
                                          (_g77487991_ _g77507994_))
                                      (_g77487991_ _g77507994_))))
                              (_g77487991_ _g77507994_))))
                      (_g77487991_ _g77507994_))
                  (_g77487991_ _g77507994_))
              (_g77487991_ _g77507994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77487991_ _g77507994_))))
                                      (_g77487991_ _g77507994_)))))))
                  (_loop78068009_ _target78038004_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77487991_ _g77507994_))
                                              (_g77487991_ _g77507994_))))
                                      (_g77487991_ _g77507994_)))))
                           (let ((_g77468275_
                                  (lambda (_g77508130_)
                                    (if (gx#stx-pair? _g77508130_)
                                        (let ((_e77548132_
                                               (gx#stx-e _g77508130_)))
                                          (let ((_hd77558135_
                                                 (##car _e77548132_))
                                                (_tl77568137_
                                                 (##cdr _e77548132_)))
                                            (if (gx#stx-pair/null?
                                                 _hd77558135_)
                                                (if (fx>= (gx#stx-length
                                                           _hd77558135_)
                                                          '0)
                                                    (let ((_g10654_
                                                           (gx#syntax-split-splice
                                                            _hd77558135_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10655_
                                                               (values-count
                                                                _g10654_)))
                                                          (if (not (fx= _g10655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10655_)))
                (let ((_target77578140_ (values-ref _g10654_ 0))
                      (_tl77598142_ (values-ref _g10654_ 1)))
                  (if (gx#stx-null? _tl77598142_)
                      (letrec ((_loop77608145_
                                (lambda (_hd77588148_ _arg77648150_)
                                  (if (gx#stx-pair? _hd77588148_)
                                      (let ((_e77618153_
                                             (gx#stx-e _hd77588148_)))
                                        (let ((_lp-hd77628156_
                                               (##car _e77618153_))
                                              (_lp-tl77638158_
                                               (##cdr _e77618153_)))
                                          (_loop77608145_
                                           _lp-tl77638158_
                                           (cons _lp-hd77628156_
                                                 _arg77648150_))))
                                      (let ((_arg77658161_
                                             (reverse _arg77648150_)))
                                        (if (gx#stx-pair? _tl77568137_)
                                            (let ((_e77668164_
                                                   (gx#stx-e _tl77568137_)))
                                              (let ((_hd77678167_
                                                     (##car _e77668164_))
                                                    (_tl77688169_
                                                     (##cdr _e77668164_)))
                                                (if (gx#stx-pair? _hd77678167_)
                                                    (let ((_e77698172_
                                                           (gx#stx-e
                                                            _hd77678167_)))
                                                      (let ((_hd77708175_
                                                             (##car _e77698172_))
                                                            (_tl77718177_
                                                             (##cdr _e77698172_)))
                                                        (if (gx#identifier?
                                                             _hd77708175_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd77708175_)
                        (if (gx#stx-pair? _tl77718177_)
                            (let ((_e77728180_ (gx#stx-e _tl77718177_)))
                              (let ((_hd77738183_ (##car _e77728180_))
                                    (_tl77748185_ (##cdr _e77728180_)))
                                (if (gx#stx-pair? _hd77738183_)
                                    (let ((_e77758188_
                                           (gx#stx-e _hd77738183_)))
                                      (let ((_hd77768191_ (##car _e77758188_))
                                            (_tl77778193_ (##cdr _e77758188_)))
                                        (if (gx#identifier? _hd77768191_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd77768191_)
                                                (if (gx#stx-pair? _tl77778193_)
                                                    (let ((_e77788196_
                                                           (gx#stx-e
                                                            _tl77778193_)))
                                                      (let ((_hd77798199_
                                                             (##car _e77788196_))
                                                            (_tl77808201_
                                                             (##cdr _e77788196_)))
                                                        (if (gx#stx-null?
                                                             _tl77808201_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77748185_)
                        (if (fx>= (gx#stx-length _tl77748185_) '0)
                            (let ((_g10656_
                                   (gx#syntax-split-splice _tl77748185_ '0)))
                              (begin
                                (let ((_g10657_ (values-count _g10656_)))
                                  (if (not (fx= _g10657_ 2))
                                      (error "Context expects 2 values"
                                             _g10657_)))
                                (let ((_target77818204_
                                       (values-ref _g10656_ 0))
                                      (_tl77838206_ (values-ref _g10656_ 1)))
                                  (if (gx#stx-null? _tl77838206_)
                                      (letrec ((_loop77848209_
                                                (lambda (_hd77828212_
                                                         _xarg77888214_)
                                                  (if (gx#stx-pair?
                                                       _hd77828212_)
                                                      (let ((_e77858217_
                                                             (gx#stx-e
                                                              _hd77828212_)))
                                                        (let ((_lp-hd77868220_
                                                               (##car _e77858217_))
                                                              (_lp-tl77878222_
                                                               (##cdr _e77858217_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd77868220_)
                                                              (let ((_e77908225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd77868220_)))
                        (let ((_hd77918228_ (##car _e77908225_))
                              (_tl77928230_ (##cdr _e77908225_)))
                          (if (gx#identifier? _hd77918228_)
                              (if (gx#stx-eq? '%#ref _hd77918228_)
                                  (if (gx#stx-pair? _tl77928230_)
                                      (let ((_e77938233_
                                             (gx#stx-e _tl77928230_)))
                                        (let ((_hd77948236_
                                               (##car _e77938233_))
                                              (_tl77958238_
                                               (##cdr _e77938233_)))
                                          (if (gx#stx-null? _tl77958238_)
                                              (_loop77848209_
                                               _lp-tl77878222_
                                               (cons _hd77948236_
                                                     _xarg77888214_))
                                              (_g77478127_ _g77508130_))))
                                      (_g77478127_ _g77508130_))
                                  (_g77478127_ _g77508130_))
                              (_g77478127_ _g77508130_))))
                      (_g77478127_ _g77508130_))))
              (let ((_xarg77898241_ (reverse _xarg77888214_)))
                (if (gx#stx-null? _tl77688169_)
                    ((lambda (_L8244_ _L8245_ _L8246_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L8245_ '()))))
                     _xarg77898241_
                     _hd77798199_
                     _arg77658161_)
                    (_g77478127_ _g77508130_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop77848209_ _target77818204_ '()))
                                      (_g77478127_ _g77508130_)))))
                            (_g77478127_ _g77508130_))
                        (_g77478127_ _g77508130_))
                    (_g77478127_ _g77508130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77478127_ _g77508130_))
                                                (_g77478127_ _g77508130_))
                                            (_g77478127_ _g77508130_))))
                                    (_g77478127_ _g77508130_))))
                            (_g77478127_ _g77508130_))
                        (_g77478127_ _g77508130_))
                    (_g77478127_ _g77508130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77478127_
                                                     _g77508130_))))
                                            (_g77478127_ _g77508130_)))))))
                        (_loop77608145_ _target77578140_ '()))
                      (_g77478127_ _g77508130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77478127_ _g77508130_))
                                                (_g77478127_ _g77508130_))))
                                        (_g77478127_ _g77508130_)))))
                             (_g77468275_ _form7745_)))))))))
            (let ((_generate17595_
                   (lambda (_args7730_ _arglen7731_ _hd7732_ _body7733_)
                     (let ((_len7735_ (gx#stx-length _hd7732_)))
                       (let ((_condition7737_
                              (if (gx#stx-list? _hd7732_)
                                  (cons 'fx=
                                        (cons _arglen7731_
                                              (cons _len7735_ '())))
                                  (if (> _len7735_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7731_
                                                  (cons _len7735_ '())))
                                      '#t))))
                         (let ((_dispatch7739_
                                (if (_dispatch-case?7593_ _hd7732_ _body7733_)
                                    (_dispatch-case-e7594_ _hd7732_ _body7733_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7732_)
                                                (cons (gxc#compile-e
                                                       _body7733_)
                                                      '()))))))
                           (let ()
                             (cons _condition7737_
                                   (cons (cons 'apply
                                               (cons _dispatch7739_
                                                     (cons _args7730_ '())))
                                         '())))))))))
              (let ((_g75977625_
                     (lambda (_g75987622_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g75987622_))))
                (let ((_g75967727_
                       (lambda (_g75987628_)
                         (if (gx#stx-pair? _g75987628_)
                             (let ((_e76017630_ (gx#stx-e _g75987628_)))
                               (let ((_hd76027633_ (##car _e76017630_))
                                     (_tl76037635_ (##cdr _e76017630_)))
                                 (if (gx#stx-pair/null? _tl76037635_)
                                     (if (fx>= (gx#stx-length _tl76037635_) '0)
                                         (let ((_g10650_
                                                (gx#syntax-split-splice
                                                 _tl76037635_
                                                 '0)))
                                           (begin
                                             (let ((_g10651_
                                                    (values-count _g10650_)))
                                               (if (not (fx= _g10651_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10651_)))
                                             (let ((_target76047638_
                                                    (values-ref _g10650_ 0))
                                                   (_tl76067640_
                                                    (values-ref _g10650_ 1)))
                                               (if (gx#stx-null? _tl76067640_)
                                                   (letrec ((_loop76077643_
                                                             (lambda (_hd76057646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body76117648_
                              _hd76127650_)
                       (if (gx#stx-pair? _hd76057646_)
                           (let ((_e76087653_ (gx#stx-e _hd76057646_)))
                             (let ((_lp-hd76097656_ (##car _e76087653_))
                                   (_lp-tl76107658_ (##cdr _e76087653_)))
                               (if (gx#stx-pair? _lp-hd76097656_)
                                   (let ((_e76157661_
                                          (gx#stx-e _lp-hd76097656_)))
                                     (let ((_hd76167664_ (##car _e76157661_))
                                           (_tl76177666_ (##cdr _e76157661_)))
                                       (if (gx#stx-pair? _tl76177666_)
                                           (let ((_e76187669_
                                                  (gx#stx-e _tl76177666_)))
                                             (let ((_hd76197672_
                                                    (##car _e76187669_))
                                                   (_tl76207674_
                                                    (##cdr _e76187669_)))
                                               (if (gx#stx-null? _tl76207674_)
                                                   (_loop76077643_
                                                    _lp-tl76107658_
                                                    (cons _hd76197672_
                                                          _body76117648_)
                                                    (cons _hd76167664_
                                                          _hd76127650_))
                                                   (_g75977625_ _g75987628_))))
                                           (_g75977625_ _g75987628_))))
                                   (_g75977625_ _g75987628_))))
                           (let ((_body76137677_ (reverse _body76117648_))
                                 (_hd76147679_ (reverse _hd76127650_)))
                             ((lambda (_L7682_ _L7683_)
                                (let ((_args7702_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7703_
                                       (gxc#generate-runtime-temporary__0))
                                      (_name7704_
                                       (let ((_$e7699_
                                              (table-ref
                                               (gxc#current-compile-runtime-names)
                                               _stx7590_
                                               '#f)))
                                         (if _$e7699_
                                             _$e7699_
                                             ''case-lambda-dispatch))))
                                  (cons 'lambda
                                        (cons _args7702_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7702_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons '##raise-wrong-number-of-arguments-exception
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _name7704_ (cons _args7702_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g77057708_
                                                          _g77067710_)
                                                   (_generate17595_
                                                    _args7702_
                                                    _arglen7703_
                                                    _g77057708_
                                                    _g77067710_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77127715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77137717_)
                     (cons _g77127715_ _g77137717_))
                   '()
                   _L7683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77197722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77207724_)
                     (cons _g77197722_ _g77207724_))
                   '()
                   _L7682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body76137677_
                              _hd76147679_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop76077643_
                                                      _target76047638_
                                                      '()
                                                      '()))
                                                   (_g75977625_
                                                    _g75987628_)))))
                                         (_g75977625_ _g75987628_))
                                     (_g75977625_ _g75987628_))))
                             (_g75977625_ _g75987628_)))))
                  (_g75967727_ _stx7590_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7270
      (lambda (_stx7272_ _compiled-body?7273_)
        (let ((_generate-simple7275_
               (lambda (_hd7577_ _body7578_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7577_
                  _body7578_
                  _compiled-body?7273_))))
          (let ((_generate-values-post7277_
                 (lambda (_post7349_ _body7350_)
                   ((letrec ((_lp7352_
                              (lambda (_rest7354_ _body7355_)
                                (let ((_rest73567364_ _rest7354_))
                                  (let ((_E73597368_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest73567364_))))
                                    (let ((_else73587372_
                                           (lambda () _body7355_)))
                                      (let ((_K73607378_
                                             (lambda (_rest7375_ _bind7376_)
                                               (_lp7352_
                                                _rest7375_
                                                (cons 'let
                                                      (cons _bind7376_
                                                            (cons _body7355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest73567364_)
                                            (let ((_hd73617381_
                                                   (##car _rest73567364_))
                                                  (_tl73627383_
                                                   (##cdr _rest73567364_)))
                                              (let ((_bind7386_ _hd73617381_))
                                                (let ((_rest7388_
                                                       _tl73627383_))
                                                  (_K73607378_
                                                   _rest7388_
                                                   _bind7386_))))
                                            (_else73587372_)))))))))
                      _lp7352_)
                    _post7349_
                    _body7350_))))
            (let ((_generate-values-check7278_
                   (lambda (_check7346_ _body7347_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body7347_ '())
                                   (reverse _check7346_))))))
              (let ((_generate-values7276_
                     (lambda (_hd7390_ _body7391_)
                       ((letrec ((_lp7393_
                                  (lambda (_rest7395_
                                           _bind7396_
                                           _check7397_
                                           _post7398_)
                                    (let ((_g74017412_
                                           (lambda (_g74027409_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g74027409_))))
                                      (let ((_g74007426_
                                             (lambda (_g74027415_)
                                               ((lambda ()
                                                  (let ((_body7419_
                                                         (if _compiled-body?7273_
                                                             _body7391_
                                                             (gxc#compile-e
                                                              _body7391_))))
                                                    (let ((_body7421_
                                                           (_generate-values-post7277_
                                                            _post7398_
                                                            _body7419_)))
                                                      (let ((_body7423_
                                                             (_generate-values-check7278_
                                                              _check7397_
                                                              _body7421_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind7396_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body7423_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g73997574_
                                               (lambda (_g74027429_)
                                                 (if (gx#stx-pair? _g74027429_)
                                                     (let ((_e74057431_
                                                            (gx#stx-e
                                                             _g74027429_)))
                                                       (let ((_hd74067434_
                                                              (##car _e74057431_))
                                                             (_tl74077436_
                                                              (##cdr _e74057431_)))
                                                         ((lambda (_L7439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7440_)
                    (let ((_g74557480_
                           (lambda (_g74567477_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g74567477_))))
                      (let ((_g74547524_
                             (lambda (_g74567483_)
                               (if (gx#stx-pair? _g74567483_)
                                   (let ((_e74707485_ (gx#stx-e _g74567483_)))
                                     (let ((_hd74717488_ (##car _e74707485_))
                                           (_tl74727490_ (##cdr _e74707485_)))
                                       (if (gx#stx-pair? _tl74727490_)
                                           (let ((_e74737493_
                                                  (gx#stx-e _tl74727490_)))
                                             (let ((_hd74747496_
                                                    (##car _e74737493_))
                                                   (_tl74757498_
                                                    (##cdr _e74737493_)))
                                               (if (gx#stx-null? _tl74757498_)
                                                   ((lambda (_L7501_ _L7502_)
                                                      (let ((_vals7515_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7517_
                                                               (gxc#compile-e
                                                                _L7501_)))
                                                          (let ((_check-values7519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7515_
                          _L7502_)))
                    (let ((_refs7521_
                           (gxc#generate-runtime-let-values-bind
                            _vals7515_
                            _L7502_)))
                      (let ()
                        (_lp7393_
                         _L7439_
                         (cons (cons _vals7515_ (cons _expr7517_ '()))
                               _bind7396_)
                         (cons _check-values7519_ _check7397_)
                         (cons _refs7521_ _post7398_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd74747496_
                                                    _hd74717488_)
                                                   (_g74557480_ _g74567483_))))
                                           (_g74557480_ _g74567483_))))
                                   (_g74557480_ _g74567483_)))))
                        (let ((_g74537571_
                               (lambda (_g74567527_)
                                 (if (gx#stx-pair? _g74567527_)
                                     (let ((_e74597529_
                                            (gx#stx-e _g74567527_)))
                                       (let ((_hd74607532_ (##car _e74597529_))
                                             (_tl74617534_
                                              (##cdr _e74597529_)))
                                         (if (gx#stx-pair? _hd74607532_)
                                             (let ((_e74627537_
                                                    (gx#stx-e _hd74607532_)))
                                               (let ((_hd74637540_
                                                      (##car _e74627537_))
                                                     (_tl74647542_
                                                      (##cdr _e74627537_)))
                                                 (if (gx#stx-null?
                                                      _tl74647542_)
                                                     (if (gx#stx-pair?
                                                          _tl74617534_)
                                                         (let ((_e74657545_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74617534_)))
                   (let ((_hd74667548_ (##car _e74657545_))
                         (_tl74677550_ (##cdr _e74657545_)))
                     (if (gx#stx-null? _tl74677550_)
                         ((lambda (_L7553_ _L7554_)
                            (let ((_eid7568_
                                   (gxc#generate-runtime-binding-id* _L7554_))
                                  (_expr7569_ (gxc#compile-e _L7553_)))
                              (_lp7393_
                               _L7439_
                               (cons (cons _eid7568_ (cons _expr7569_ '()))
                                     _bind7396_)
                               _check7397_
                               _post7398_)))
                          _hd74667548_
                          _hd74637540_)
                         (_g74547524_ _g74567527_))))
                 (_g74547524_ _g74567527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74547524_
                                                      _g74567527_))))
                                             (_g74547524_ _g74567527_))))
                                     (_g74547524_ _g74567527_)))))
                          (_g74537571_ _L7440_)))))
                  _tl74077436_
                  _hd74067434_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74007426_
                                                      _g74027429_)))))
                                          (_g73997574_ _rest7395_)))))))
                          _lp7393_)
                        _hd7390_
                        '()
                        '()
                        '()))))
                (let ((_g72807297_
                       (lambda (_g72817294_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g72817294_))))
                  (let ((_g72797343_
                         (lambda (_g72817300_)
                           (if (gx#stx-pair? _g72817300_)
                               (let ((_e72847302_ (gx#stx-e _g72817300_)))
                                 (let ((_hd72857305_ (##car _e72847302_))
                                       (_tl72867307_ (##cdr _e72847302_)))
                                   (if (gx#stx-pair? _tl72867307_)
                                       (let ((_e72877310_
                                              (gx#stx-e _tl72867307_)))
                                         (let ((_hd72887313_
                                                (##car _e72877310_))
                                               (_tl72897315_
                                                (##cdr _e72877310_)))
                                           (if (gx#stx-pair? _tl72897315_)
                                               (let ((_e72907318_
                                                      (gx#stx-e _tl72897315_)))
                                                 (let ((_hd72917321_
                                                        (##car _e72907318_))
                                                       (_tl72927323_
                                                        (##cdr _e72907318_)))
                                                   (if (gx#stx-null?
                                                        _tl72927323_)
                                                       ((lambda (_L7326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7327_)
                  (if (gxc#generate-runtime-simple-let? _L7327_)
                      (_generate-simple7275_ _L7327_ _L7326_)
                      (_generate-values7276_ _L7327_ _L7326_)))
                _hd72917321_
                _hd72887313_)
               (_g72807297_ _g72817300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g72807297_ _g72817300_))))
                                       (_g72807297_ _g72817300_))))
                               (_g72807297_ _g72817300_)))))
                    (_g72797343_ _stx7272_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7583_)
          (let ((_compiled-body?7585_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7270
             _stx7583_
             _compiled-body?7585_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10667_
          (let ((_g10666_ (length _g10667_)))
            (cond ((fx= _g10666_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10667_))
                  ((fx= _g10666_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7270
                          _g10667_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g10667_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7171_ _hd7172_)
      ((letrec ((_lp7174_
                 (lambda (_rest7176_ _k7177_ _r7178_)
                   (let ((_g71837199_
                          (lambda (_g71847196_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71847196_))))
                     (let ((_g71827206_
                            (lambda (_g71847202_)
                              ((lambda () (reverse _r7178_))))))
                       (let ((_g71817222_
                              (lambda (_g71847209_)
                                ((lambda (_L7211_)
                                   (if (gx#identifier? _L7211_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L7211_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals7171_ (cons _k7177_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r7178_)
                                       (_g71827206_ _g71847209_)))
                                 _g71847209_))))
                         (let ((_g71807246_
                                (lambda (_g71847225_)
                                  (if (gx#stx-pair? _g71847225_)
                                      (let ((_e71917227_
                                             (gx#stx-e _g71847225_)))
                                        (let ((_hd71927230_
                                               (##car _e71917227_))
                                              (_tl71937232_
                                               (##cdr _e71917227_)))
                                          ((lambda (_L7235_ _L7236_)
                                             (_lp7174_
                                              _L7235_
                                              (fx+ _k7177_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L7236_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals7171_ (cons _k7177_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r7178_)))
                                           _tl71937232_
                                           _hd71927230_)))
                                      (_g71817222_ _g71847225_)))))
                           (let ((_g71797268_
                                  (lambda (_g71847249_)
                                    (if (gx#stx-pair? _g71847249_)
                                        (let ((_e71867251_
                                               (gx#stx-e _g71847249_)))
                                          (let ((_hd71877254_
                                                 (##car _e71867251_))
                                                (_tl71887256_
                                                 (##cdr _e71867251_)))
                                            (if (gx#stx-datum? _hd71877254_)
                                                (if (equal? (gx#stx-e
                                                             _hd71877254_)
                                                            '#f)
                                                    ((lambda (_L7259_)
                                                       (_lp7174_
                                                        _L7259_
                                                        (fx+ _k7177_ '1)
                                                        _r7178_))
                                                     _tl71887256_)
                                                    (_g71807246_ _g71847249_))
                                                (_g71807246_ _g71847249_))))
                                        (_g71807246_ _g71847249_)))))
                             (_g71797268_ _rest7176_)))))))))
         _lp7174_)
       _hd7172_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6849
      (lambda (_stx6851_ _compiled-body?6852_)
        (let ((_generate-simple6854_
               (lambda (_hd7158_ _body7159_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd7158_
                  _body7159_
                  _compiled-body?6852_))))
          (let ((_generate-values-check6856_
                 (lambda (_check6932_ _body6933_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6933_ '())
                                 (reverse _check6932_))))))
            (let ((_generate-values-post6857_
                   (lambda (_post6925_ _body6926_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6926_ '())
                                   (map (lambda (_g69276929_)
                                          (cons 'set! _g69276929_))
                                        (reverse _post6925_)))))))
              (let ((_generate-values6855_
                     (lambda (_hd6935_ _body6936_)
                       ((letrec ((_lp6938_
                                  (lambda (_rest6940_
                                           _bind6941_
                                           _check6942_
                                           _post6943_)
                                    (let ((_g69466957_
                                           (lambda (_g69476954_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69476954_))))
                                      (let ((_g69456971_
                                             (lambda (_g69476960_)
                                               ((lambda ()
                                                  (let ((_body6964_
                                                         (if _compiled-body?6852_
                                                             _body6936_
                                                             (gxc#compile-e
                                                              _body6936_))))
                                                    (let ((_body6966_
                                                           (_generate-values-post6857_
                                                            _post6943_
                                                            _body6964_)))
                                                      (let ((_body6968_
                                                             (_generate-values-check6856_
                                                              _check6942_
                                                              _body6966_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6941_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6968_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69447155_
                                               (lambda (_g69476974_)
                                                 (if (gx#stx-pair? _g69476974_)
                                                     (let ((_e69506976_
                                                            (gx#stx-e
                                                             _g69476974_)))
                                                       (let ((_hd69516979_
                                                              (##car _e69506976_))
                                                             (_tl69526981_
                                                              (##cdr _e69506976_)))
                                                         ((lambda (_L6984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6985_)
                    (let ((_g70007025_
                           (lambda (_g70017022_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g70017022_))))
                      (let ((_g69997105_
                             (lambda (_g70017028_)
                               (if (gx#stx-pair? _g70017028_)
                                   (let ((_e70157030_ (gx#stx-e _g70017028_)))
                                     (let ((_hd70167033_ (##car _e70157030_))
                                           (_tl70177035_ (##cdr _e70157030_)))
                                       (if (gx#stx-pair? _tl70177035_)
                                           (let ((_e70187038_
                                                  (gx#stx-e _tl70177035_)))
                                             (let ((_hd70197041_
                                                    (##car _e70187038_))
                                                   (_tl70207043_
                                                    (##cdr _e70187038_)))
                                               (if (gx#stx-null? _tl70207043_)
                                                   ((lambda (_L7046_ _L7047_)
                                                      (let ((_vals7060_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7062_
                                                               (gxc#compile-e
                                                                _L7046_)))
                                                          (let ((_check-values7064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7060_
                          _L7047_)))
                    (let ((_refs7066_
                           (gxc#generate-runtime-let-values-bind
                            _vals7060_
                            _L7047_)))
                      (let ()
                        (_lp6938_
                         _L6984_
                         (foldl1 cons
                                 (cons (cons _vals7060_ (cons _expr7062_ '()))
                                       _bind6941_)
                                 (map (lambda (_e70687070_)
                                        (let ((_g70727081_ _e70687070_))
                                          (let ((_E70747085_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g70727081_))))
                                            (let ((_K70757090_
                                                   (lambda (_eid7088_)
                                                     (cons _eid7088_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g70727081_)
                                                  (let ((_hd70767093_
                                                         (##car _g70727081_))
                                                        (_tl70777095_
                                                         (##cdr _g70727081_)))
                                                    (let ((_eid7098_
                                                           _hd70767093_))
                                                      (if (##pair? _tl70777095_)
                                                          (let ((_hd70787100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl70777095_))
                        (_tl70797102_ (##cdr _tl70777095_)))
                    (if (##null? _tl70797102_)
                        (_K70757090_ _eid7098_)
                        (_E70747085_)))
                  (_E70747085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E70747085_))))))
                                      _refs7066_))
                         (cons _check-values7064_ _check6942_)
                         (foldl1 cons _refs7066_ _post6943_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd70197041_
                                                    _hd70167033_)
                                                   (_g70007025_ _g70017028_))))
                                           (_g70007025_ _g70017028_))))
                                   (_g70007025_ _g70017028_)))))
                        (let ((_g69987152_
                               (lambda (_g70017108_)
                                 (if (gx#stx-pair? _g70017108_)
                                     (let ((_e70047110_
                                            (gx#stx-e _g70017108_)))
                                       (let ((_hd70057113_ (##car _e70047110_))
                                             (_tl70067115_
                                              (##cdr _e70047110_)))
                                         (if (gx#stx-pair? _hd70057113_)
                                             (let ((_e70077118_
                                                    (gx#stx-e _hd70057113_)))
                                               (let ((_hd70087121_
                                                      (##car _e70077118_))
                                                     (_tl70097123_
                                                      (##cdr _e70077118_)))
                                                 (if (gx#stx-null?
                                                      _tl70097123_)
                                                     (if (gx#stx-pair?
                                                          _tl70067115_)
                                                         (let ((_e70107126_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70067115_)))
                   (let ((_hd70117129_ (##car _e70107126_))
                         (_tl70127131_ (##cdr _e70107126_)))
                     (if (gx#stx-null? _tl70127131_)
                         ((lambda (_L7134_ _L7135_)
                            (let ((_eid7149_
                                   (gxc#generate-runtime-binding-id* _L7135_))
                                  (_expr7150_ (gxc#compile-e _L7134_)))
                              (_lp6938_
                               _L6984_
                               (cons (cons _eid7149_ (cons _expr7150_ '()))
                                     _bind6941_)
                               _check6942_
                               _post6943_)))
                          _hd70117129_
                          _hd70087121_)
                         (_g69997105_ _g70017108_))))
                 (_g69997105_ _g70017108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69997105_
                                                      _g70017108_))))
                                             (_g69997105_ _g70017108_))))
                                     (_g69997105_ _g70017108_)))))
                          (_g69987152_ _L6985_)))))
                  _tl69526981_
                  _hd69516979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69456971_
                                                      _g69476974_)))))
                                          (_g69447155_ _rest6940_)))))))
                          _lp6938_)
                        _hd6935_
                        '()
                        '()
                        '()))))
                (let ((_g68596876_
                       (lambda (_g68606873_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68606873_))))
                  (let ((_g68586922_
                         (lambda (_g68606879_)
                           (if (gx#stx-pair? _g68606879_)
                               (let ((_e68636881_ (gx#stx-e _g68606879_)))
                                 (let ((_hd68646884_ (##car _e68636881_))
                                       (_tl68656886_ (##cdr _e68636881_)))
                                   (if (gx#stx-pair? _tl68656886_)
                                       (let ((_e68666889_
                                              (gx#stx-e _tl68656886_)))
                                         (let ((_hd68676892_
                                                (##car _e68666889_))
                                               (_tl68686894_
                                                (##cdr _e68666889_)))
                                           (if (gx#stx-pair? _tl68686894_)
                                               (let ((_e68696897_
                                                      (gx#stx-e _tl68686894_)))
                                                 (let ((_hd68706900_
                                                        (##car _e68696897_))
                                                       (_tl68716902_
                                                        (##cdr _e68696897_)))
                                                   (if (gx#stx-null?
                                                        _tl68716902_)
                                                       ((lambda (_L6905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6906_)
                  (if (gxc#generate-runtime-simple-let? _L6906_)
                      (_generate-simple6854_ _L6906_ _L6905_)
                      (_generate-values6855_ _L6906_ _L6905_)))
                _hd68706900_
                _hd68676892_)
               (_g68596876_ _g68606879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68596876_ _g68606879_))))
                                       (_g68596876_ _g68606879_))))
                               (_g68596876_ _g68606879_)))))
                    (_g68586922_ _stx6851_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7164_)
          (let ((_compiled-body?7166_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6849
             _stx7164_
             _compiled-body?7166_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10669_
          (let ((_g10668_ (length _g10669_)))
            (cond ((fx= _g10668_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10669_))
                  ((fx= _g10668_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6849
                          _g10669_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g10669_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5970_)
      (let ((_collect-closures5973_
             (lambda (_forms6791_)
               (map (lambda (_e67926794_)
                      (let ((_g67966805_ _e67926794_))
                        (let ((_E67986809_
                               (lambda ()
                                 (error '"No clause matching" _g67966805_))))
                          (let ((_K67996814_
                                 (lambda (_expr6812_)
                                   (gxc#collect-expression-refs _expr6812_))))
                            (if (##pair? _g67966805_)
                                (let ((_hd68006817_ (##car _g67966805_))
                                      (_tl68016819_ (##cdr _g67966805_)))
                                  (if (##pair? _tl68016819_)
                                      (let ((_hd68026822_ (##car _tl68016819_))
                                            (_tl68036824_
                                             (##cdr _tl68016819_)))
                                        (let ((_expr6827_ _hd68026822_))
                                          (if (##null? _tl68036824_)
                                              (_K67996814_ _expr6827_)
                                              (_E67986809_))))
                                      (_E67986809_)))
                                (_E67986809_))))))
                    _forms6791_))))
        (let ((_collect-bindings5974_
               (lambda (_forms6715_)
                 (map (lambda (_e67166718_)
                        (let ((_g67206729_ _e67166718_))
                          (let ((_E67226733_
                                 (lambda ()
                                   (error '"No clause matching" _g67206729_))))
                            (let ((_K67236776_
                                   (lambda (_bind6736_)
                                     ((letrec ((_lp6738_
                                                (lambda (_rest6740_ _r6741_)
                                                  (let ((_rest67426750_
                                                         _rest6740_))
                                                    (let ((_E67456754_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest67426750_))))
              (let ((_else67446758_
                     (lambda ()
                       (if (gx#identifier? _rest6740_)
                           (cons _rest6740_ _r6741_)
                           _r6741_))))
                (let ((_K67466764_
                       (lambda (_rest6761_ _id6762_)
                         (if (gx#identifier? _id6762_)
                             (_lp6738_
                              _rest6761_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6762_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6741_))
                             (_lp6738_ _rest6761_ _r6741_)))))
                  (if (##pair? _rest67426750_)
                      (let ((_hd67476767_ (##car _rest67426750_))
                            (_tl67486769_ (##cdr _rest67426750_)))
                        (let ((_id6772_ _hd67476767_))
                          (let ((_rest6774_ _tl67486769_))
                            (_K67466764_ _rest6774_ _id6772_))))
                      (_else67446758_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6738_)
                                      _bind6736_
                                      '()))))
                              (if (##pair? _g67206729_)
                                  (let ((_hd67246779_ (##car _g67206729_))
                                        (_tl67256781_ (##cdr _g67206729_)))
                                    (let ((_bind6784_ _hd67246779_))
                                      (if (##pair? _tl67256781_)
                                          (let ((_hd67266786_
                                                 (##car _tl67256781_))
                                                (_tl67276788_
                                                 (##cdr _tl67256781_)))
                                            (if (##null? _tl67276788_)
                                                (_K67236776_ _bind6784_)
                                                (_E67226733_)))
                                          (_E67226733_))))
                                  (_E67226733_))))))
                      _forms6715_))))
          (let ((_closure-reference?5978_
                 (lambda (_closure6267_ _bindings6268_)
                   (ormap1 (lambda (_g62696271_)
                             (table-ref _closure6267_ _g62696271_ '#f))
                           _bindings6268_))))
            (let ((_is-effect-expr?5980_
                   (lambda (_expr6178_)
                     (let ((_g61806190_
                            (lambda (_g61816187_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g61816187_))))
                       (let ((_g61796213_
                              (lambda (_g61816193_)
                                (if (gx#stx-pair? _g61816193_)
                                    (let ((_e61836195_ (gx#stx-e _g61816193_)))
                                      (let ((_hd61846198_ (##car _e61836195_))
                                            (_tl61856200_ (##cdr _e61836195_)))
                                        ((lambda (_L6203_)
                                           (not (memq (gx#stx-e _L6203_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd61846198_)))
                                    (_g61806190_ _g61816193_)))))
                         (_g61796213_ _expr6178_))))))
              (let ((_is-lambda-expr?5981_
                     (lambda (_expr6140_)
                       (let ((_g61426152_
                              (lambda (_g61436149_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g61436149_))))
                         (let ((_g61416175_
                                (lambda (_g61436155_)
                                  (if (gx#stx-pair? _g61436155_)
                                      (let ((_e61456157_
                                             (gx#stx-e _g61436155_)))
                                        (let ((_hd61466160_
                                               (##car _e61456157_))
                                              (_tl61476162_
                                               (##cdr _e61456157_)))
                                          ((lambda (_L6165_)
                                             (memq (gx#stx-e _L6165_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd61466160_)))
                                      (_g61426152_ _g61436155_)))))
                           (_g61416175_ _expr6140_))))))
                (let ((_lift-rec5977_
                       (lambda (_forms6274_)
                         ((letrec ((_lp6276_
                                    (lambda (_rest6278_
                                             _pre6279_
                                             _bind6280_
                                             _init6281_)
                                      (let ((_rest62826290_ _rest6278_))
                                        (let ((_E62856294_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest62826290_))))
                                          (let ((_else62846298_
                                                 (lambda ()
                                                   (values (reverse _pre6279_)
                                                           (reverse _bind6280_)
                                                           (reverse _init6281_)))))
                                            (let ((_K62866489_
                                                   (lambda (_rest6301_
                                                            _bind-hd6302_)
                                                     (let ((_g63066341_
                                                            (lambda (_g63076338_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g63076338_))))
                                                       (let ((_g63056398_
                                                              (lambda (_g63076344_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g63076344_)
                            (let ((_e63316346_ (gx#stx-e _g63076344_)))
                              (let ((_hd63326349_ (##car _e63316346_))
                                    (_tl63336351_ (##cdr _e63316346_)))
                                (if (gx#stx-pair? _tl63336351_)
                                    (let ((_e63346354_
                                           (gx#stx-e _tl63336351_)))
                                      (let ((_hd63356357_ (##car _e63346354_))
                                            (_tl63366359_ (##cdr _e63346354_)))
                                        (if (gx#stx-null? _tl63366359_)
                                            ((lambda (_L6362_ _L6363_)
                                               (let ((_vals6382_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr6384_
                                                        (gxc#compile-e
                                                         _L6362_)))
                                                   (let ((_check-values6386_
                                                          (gxc#generate-runtime-check-values
                                                           _vals6382_
                                                           _L6363_)))
                                                     (let ((_refs6388_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals6382_
                                                             _L6363_)))
                                                       (let ()
                                                         (_lp6276_
                                                          _rest6301_
                                                          (foldl1 (lambda (_ref6391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r6392_)
                            (cons (cons (car _ref6391_) (cons '#!void '()))
                                  _r6392_))
                          _pre6279_
                          _refs6388_)
                  _bind6280_
                  (cons (cons 'let
                              (cons (cons (cons _vals6382_
                                                (cons _expr6384_ '()))
                                          '())
                                    (cons _check-values6386_
                                          (cons (map (lambda (_g63936395_)
                                                       (cons 'set!
                                                             _g63936395_))
                                                     _refs6388_)
                                                '()))))
                        _init6281_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63356357_
                                             _hd63326349_)
                                            (_g63066341_ _g63076344_))))
                                    (_g63066341_ _g63076344_))))
                            (_g63066341_ _g63076344_)))))
                 (let ((_g63046444_
                        (lambda (_g63076401_)
                          (if (gx#stx-pair? _g63076401_)
                              (let ((_e63206403_ (gx#stx-e _g63076401_)))
                                (let ((_hd63216406_ (##car _e63206403_))
                                      (_tl63226408_ (##cdr _e63206403_)))
                                  (if (gx#stx-pair? _hd63216406_)
                                      (let ((_e63236411_
                                             (gx#stx-e _hd63216406_)))
                                        (let ((_hd63246414_
                                               (##car _e63236411_))
                                              (_tl63256416_
                                               (##cdr _e63236411_)))
                                          (if (gx#stx-null? _tl63256416_)
                                              (if (gx#stx-pair? _tl63226408_)
                                                  (let ((_e63266419_
                                                         (gx#stx-e
                                                          _tl63226408_)))
                                                    (let ((_hd63276422_
                                                           (##car _e63266419_))
                                                          (_tl63286424_
                                                           (##cdr _e63266419_)))
                                                      (if (gx#stx-null?
                                                           _tl63286424_)
                                                          ((lambda (_L6427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6428_)
                     (let ((_eid6442_
                            (gxc#generate-runtime-binding-id _L6428_)))
                       (if (_is-lambda-expr?5981_ _L6427_)
                           (_lp6276_
                            _rest6301_
                            _pre6279_
                            (cons (cons _eid6442_
                                        (cons (gxc#compile-e _L6427_) '()))
                                  _bind6280_)
                            _init6281_)
                           (_lp6276_
                            _rest6301_
                            (cons (cons _eid6442_ (cons '#!void '()))
                                  _pre6279_)
                            _bind6280_
                            (cons (cons 'set!
                                        (cons _eid6442_
                                              (cons (gxc#compile-e _L6427_)
                                                    '())))
                                  _init6281_)))))
                   _hd63276422_
                   _hd63246414_)
                  (_g63056398_ _g63076401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63056398_ _g63076401_))
                                              (_g63056398_ _g63076401_))))
                                      (_g63056398_ _g63076401_))))
                              (_g63056398_ _g63076401_)))))
                   (let ((_g63036486_
                          (lambda (_g63076447_)
                            (if (gx#stx-pair? _g63076447_)
                                (let ((_e63096449_ (gx#stx-e _g63076447_)))
                                  (let ((_hd63106452_ (##car _e63096449_))
                                        (_tl63116454_ (##cdr _e63096449_)))
                                    (if (gx#stx-pair? _hd63106452_)
                                        (let ((_e63126457_
                                               (gx#stx-e _hd63106452_)))
                                          (let ((_hd63136460_
                                                 (##car _e63126457_))
                                                (_tl63146462_
                                                 (##cdr _e63126457_)))
                                            (if (gx#stx-datum? _hd63136460_)
                                                (if (equal? (gx#stx-e
                                                             _hd63136460_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl63146462_)
                                                        (if (gx#stx-pair?
                                                             _tl63116454_)
                                                            (let ((_e63156465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl63116454_)))
                      (let ((_hd63166468_ (##car _e63156465_))
                            (_tl63176470_ (##cdr _e63156465_)))
                        (if (gx#stx-null? _tl63176470_)
                            ((lambda (_L6473_)
                               (_lp6276_
                                _rest6301_
                                _pre6279_
                                _bind6280_
                                (cons (gxc#compile-e _L6473_) _init6281_)))
                             _hd63166468_)
                            (_g63046444_ _g63076447_))))
                    (_g63046444_ _g63076447_))
                (_g63046444_ _g63076447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63046444_ _g63076447_))
                                                (_g63046444_ _g63076447_))))
                                        (_g63046444_ _g63076447_))))
                                (_g63046444_ _g63076447_)))))
                     (_g63036486_ _bind-hd6302_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest62826290_)
                                                  (let ((_hd62876492_
                                                         (##car _rest62826290_))
                                                        (_tl62886494_
                                                         (##cdr _rest62826290_)))
                                                    (let ((_bind-hd6497_
                                                           _hd62876492_))
                                                      (let ((_rest6499_
                                                             _tl62886494_))
                                                        (_K62866489_
                                                         _rest6499_
                                                         _bind-hd6497_))))
                                                  (_else62846298_)))))))))
                            _lp6276_)
                          _forms6274_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5979_
                         (lambda (_hd-bind6216_)
                           (let ((_g62186231_
                                  (lambda (_g62196228_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62196228_))))
                             (let ((_g62176264_
                                    (lambda (_g62196234_)
                                      (if (gx#stx-pair? _g62196234_)
                                          (let ((_e62216236_
                                                 (gx#stx-e _g62196234_)))
                                            (let ((_hd62226239_
                                                   (##car _e62216236_))
                                                  (_tl62236241_
                                                   (##cdr _e62216236_)))
                                              (if (gx#stx-pair? _tl62236241_)
                                                  (let ((_e62246244_
                                                         (gx#stx-e
                                                          _tl62236241_)))
                                                    (let ((_hd62256247_
                                                           (##car _e62246244_))
                                                          (_tl62266249_
                                                           (##cdr _e62246244_)))
                                                      (if (gx#stx-null?
                                                           _tl62266249_)
                                                          ((lambda (_L6252_)
                                                             (_is-effect-expr?5980_
                                                              _L6252_))
                                                           _hd62256247_)
                                                          (_g62186231_
                                                           _g62196234_))))
                                                  (_g62186231_ _g62196234_))))
                                          (_g62186231_ _g62196234_)))))
                               (_g62176264_ _hd-bind6216_))))))
                    (let ((_lift-pre5975_
                           (lambda (_hd6608_ _bindings6609_ _closures6610_)
                             ((letrec ((_lp6612_
                                        (lambda (_rest-forms6614_
                                                 _rest-bindings6615_
                                                 _rest-closures6616_
                                                 _post-forms6617_
                                                 _post-bindings6618_
                                                 _post-closures6619_
                                                 _pre-forms6620_
                                                 _lifted?6621_)
                                          (let ((_rest-forms66226638_
                                                 _rest-forms6614_)
                                                (_rest-bindings66236640_
                                                 _rest-bindings6615_)
                                                (_rest-closures66246642_
                                                 _rest-closures6616_))
                                            (let ((_E66276646_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms66226638_
                                                            _rest-bindings66236640_
                                                            _rest-closures66246642_))))
                                              (let ((_else66266650_
                                                     (lambda ()
                                                       (if _lifted?6621_
                                                           (_lp6612_
                                                            (reverse _post-forms6617_)
                                                            (reverse _post-bindings6618_)
                                                            (reverse _post-closures6619_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6620_
                                                            '#f)
                                                           (values (reverse _pre-forms6620_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6617_)
                           (reverse _post-bindings6618_)
                           (reverse _post-closures6619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K66286703_
                                                       (lambda (_rest-forms6653_
                                                                _form6654_)
                                                         (let ((_K66296691_
                                                                (lambda (_rest-bindings6656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6657_)
                          (let ((_K66306679_
                                 (lambda (_rest-closures6659_ _closure6660_)
                                   (if (let ((_$e6662_
                                              (_closure-reference?5978_
                                               _closure6660_
                                               _bindings6657_)))
                                         (if _$e6662_
                                             _$e6662_
                                             (let ((_$e6669_
                                                    (ormap1 (lambda (_g66646666_)
                                                              (_closure-reference?5978_
                                                               _closure6660_
                                                               _g66646666_))
                                                            _rest-bindings6656_)))
                                               (if _$e6669_
                                                   _$e6669_
                                                   (let ((_$e6676_
                                                          (ormap1 (lambda (_g66716673_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5978_
                             _closure6660_
                             _g66716673_))
                          _post-bindings6618_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6676_
                                                         _$e6676_
                                                         (if (_is-effect-bind?5979_
                                                              _form6654_)
                                                             (find _is-effect-bind?5979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6617_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6612_
                                        _rest-forms6653_
                                        _rest-bindings6656_
                                        _rest-closures6659_
                                        (cons _form6654_ _post-forms6617_)
                                        (cons _bindings6657_
                                              _post-bindings6618_)
                                        (cons _closure6660_
                                              _post-closures6619_)
                                        _pre-forms6620_
                                        _lifted?6621_)
                                       (_lp6612_
                                        _rest-forms6653_
                                        _rest-bindings6656_
                                        _rest-closures6659_
                                        _post-forms6617_
                                        _post-bindings6618_
                                        _post-closures6619_
                                        (cons _form6654_ _pre-forms6620_)
                                        '#t)))))
                            (if (##pair? _rest-closures66246642_)
                                (let ((_hd66316682_
                                       (##car _rest-closures66246642_))
                                      (_tl66326684_
                                       (##cdr _rest-closures66246642_)))
                                  (let ((_closure6687_ _hd66316682_))
                                    (let ((_rest-closures6689_ _tl66326684_))
                                      (_K66306679_
                                       _rest-closures6689_
                                       _closure6687_))))
                                (_else66266650_))))))
                   (if (##pair? _rest-bindings66236640_)
                       (let ((_hd66336694_ (##car _rest-bindings66236640_))
                             (_tl66346696_ (##cdr _rest-bindings66236640_)))
                         (let ((_bindings6699_ _hd66336694_))
                           (let ((_rest-bindings6701_ _tl66346696_))
                             (_K66296691_
                              _rest-bindings6701_
                              _bindings6699_))))
                       (_else66266650_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms66226638_)
                                                      (let ((_hd66356706_
                                                             (##car _rest-forms66226638_))
                                                            (_tl66366708_
                                                             (##cdr _rest-forms66226638_)))
                                                        (let ((_form6711_
                                                               _hd66356706_))
                                                          (let ((_rest-forms6713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66366708_))
                    (_K66286703_ _rest-forms6713_ _form6711_))))
              (_else66266650_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6612_)
                              _hd6608_
                              _bindings6609_
                              _closures6610_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5976_
                             (lambda (_hd6501_ _bindings6502_ _closures6503_)
                               ((letrec ((_lp6505_
                                          (lambda (_rest-forms6507_
                                                   _rest-bindings6508_
                                                   _rest-closures6509_
                                                   _pre-forms6510_
                                                   _pre-bindings6511_
                                                   _pre-closures6512_
                                                   _post-forms6513_
                                                   _lifted?6514_)
                                            (let ((_rest-forms65156531_
                                                   _rest-forms6507_)
                                                  (_rest-bindings65166533_
                                                   _rest-bindings6508_)
                                                  (_rest-closures65176535_
                                                   _rest-closures6509_))
                                              (let ((_E65206539_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms65156531_
                                                              _rest-bindings65166533_
                                                              _rest-closures65176535_))))
                                                (let ((_else65196543_
                                                       (lambda ()
                                                         (if _lifted?6514_
                                                             (_lp6505_
                                                              (reverse _pre-forms6510_)
                                                              (reverse _pre-bindings6511_)
                                                              (reverse _pre-closures6512_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6513_
                                                              '#f)
                                                             (values _post-forms6513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6510_
                             _pre-bindings6511_
                             _pre-closures6512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K65216596_
                                                         (lambda (_rest-forms6546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6547_)
                   (let ((_K65226584_
                          (lambda (_rest-bindings6549_ _bindings6550_)
                            (let ((_K65236572_
                                   (lambda (_rest-closures6552_ _closure6553_)
                                     (if (let ((_$e6555_
                                                (_closure-reference?5978_
                                                 _closure6553_
                                                 _bindings6550_)))
                                           (if _$e6555_
                                               _$e6555_
                                               (let ((_$e6562_
                                                      (ormap1 (lambda (_g65576559_)
                                                                (_closure-reference?5978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g65576559_
                         _bindings6550_))
                      _rest-closures6552_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6562_
                                                     _$e6562_
                                                     (let ((_$e6569_
                                                            (ormap1 (lambda (_g65646566_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5978_
                               _g65646566_
                               _bindings6550_))
                            _pre-closures6512_)))
               (if _$e6569_
                   _$e6569_
                   (if (_is-effect-bind?5979_ _form6547_)
                       (find _is-effect-bind?5979_ _pre-forms6510_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6505_
                                          _rest-forms6546_
                                          _rest-bindings6549_
                                          _rest-closures6552_
                                          (cons _form6547_ _pre-forms6510_)
                                          (cons _bindings6550_
                                                _pre-bindings6511_)
                                          (cons _closure6553_
                                                _pre-closures6512_)
                                          _post-forms6513_
                                          _lifted?6514_)
                                         (_lp6505_
                                          _rest-forms6546_
                                          _rest-bindings6549_
                                          _rest-closures6552_
                                          _pre-forms6510_
                                          _pre-bindings6511_
                                          _pre-closures6512_
                                          (cons _form6547_ _post-forms6513_)
                                          '#t)))))
                              (if (##pair? _rest-closures65176535_)
                                  (let ((_hd65246575_
                                         (##car _rest-closures65176535_))
                                        (_tl65256577_
                                         (##cdr _rest-closures65176535_)))
                                    (let ((_closure6580_ _hd65246575_))
                                      (let ((_rest-closures6582_ _tl65256577_))
                                        (_K65236572_
                                         _rest-closures6582_
                                         _closure6580_))))
                                  (_else65196543_))))))
                     (if (##pair? _rest-bindings65166533_)
                         (let ((_hd65266587_ (##car _rest-bindings65166533_))
                               (_tl65276589_ (##cdr _rest-bindings65166533_)))
                           (let ((_bindings6592_ _hd65266587_))
                             (let ((_rest-bindings6594_ _tl65276589_))
                               (_K65226584_
                                _rest-bindings6594_
                                _bindings6592_))))
                         (_else65196543_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms65156531_)
                                                        (let ((_hd65286599_
                                                               (##car _rest-forms65156531_))
                                                              (_tl65296601_
                                                               (##cdr _rest-forms65156531_)))
                                                          (let ((_form6604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd65286599_))
                    (let ((_rest-forms6606_ _tl65296601_))
                      (_K65216596_ _rest-forms6606_ _form6604_))))
                (_else65196543_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6505_)
                                (reverse _hd6501_)
                                (reverse _bindings6502_)
                                (reverse _closures6503_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5972_
                               (lambda (_forms6829_)
                                 (let ((_closures6831_
                                        (_collect-closures5973_ _forms6829_)))
                                   (let ((_bindings6833_
                                          (_collect-bindings5974_
                                           _forms6829_)))
                                     (let ((_g10672_
                                            (_lift-pre5975_
                                             _forms6829_
                                             _bindings6833_
                                             _closures6831_)))
                                       (begin
                                         (let ((_g10673_
                                                (values-count _g10672_)))
                                           (if (not (fx= _g10673_ 4))
                                               (error "Context expects 4 values"
                                                      _g10673_)))
                                         (let ((_pre-bind6835_
                                                (values-ref _g10672_ 0))
                                               (_forms6836_
                                                (values-ref _g10672_ 1))
                                               (_bindings6837_
                                                (values-ref _g10672_ 2))
                                               (_closures6838_
                                                (values-ref _g10672_ 3)))
                                           (let ((_g10674_
                                                  (_lift-post5976_
                                                   _forms6836_
                                                   _bindings6837_
                                                   _closures6838_)))
                                             (begin
                                               (let ((_g10675_
                                                      (values-count _g10674_)))
                                                 (if (not (fx= _g10675_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10675_)))
                                               (let ((_post-bind6840_
                                                      (values-ref _g10674_ 0))
                                                     (_forms6841_
                                                      (values-ref _g10674_ 1))
                                                     (_bindings6842_
                                                      (values-ref _g10674_ 2))
                                                     (_closures6843_
                                                      (values-ref _g10674_ 3)))
                                                 (let ((_g10676_
                                                        (_lift-rec5977_
                                                         _forms6841_)))
                                                   (begin
                                                     (let ((_g10677_
                                                            (values-count
                                                             _g10676_)))
                                                       (if (not (fx= _g10677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6845_
                                                            (values-ref
                                                             _g10676_
                                                             0))
                                                           (_rec-bind6846_
                                                            (values-ref
                                                             _g10676_
                                                             1))
                                                           (_rec-init6847_
                                                            (values-ref
                                                             _g10676_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6845_
                         _rec-bind6846_
                         _rec-init6847_
                         _post-bind6840_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5982_
                                    (lambda (_hd6069_ _body6070_)
                                      (let ((_hd60716079_ _hd6069_))
                                        (let ((_E60746083_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd60716079_))))
                                          (let ((_else60736087_
                                                 (lambda () _body6070_)))
                                            (let ((_K60756128_
                                                   (lambda (_rest6090_
                                                            _bind6091_)
                                                     (let ((_bind60926101_
                                                            _bind6091_))
                                                       (let ((_E60946105_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind60926101_))))
                 (let ((_K60956111_
                        (lambda (_expr6108_ _hd6109_)
                          (if (gx#stx-ormap gx#identifier? _hd6109_)
                              (gxc#generate-runtime-let-values%__opt-lambda7270
                               (cons '%#let-values
                                     (cons (cons _bind6091_ '())
                                           (cons (_generate-let*5982_
                                                  _rest6090_
                                                  _body6070_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr6108_)
                                          (cons (_generate-let*5982_
                                                 _rest6090_
                                                 _body6070_)
                                                '())))))))
                   (if (##pair? _bind60926101_)
                       (let ((_hd60966114_ (##car _bind60926101_))
                             (_tl60976116_ (##cdr _bind60926101_)))
                         (let ((_hd6119_ _hd60966114_))
                           (if (##pair? _tl60976116_)
                               (let ((_hd60986121_ (##car _tl60976116_))
                                     (_tl60996123_ (##cdr _tl60976116_)))
                                 (let ((_expr6126_ _hd60986121_))
                                   (if (##null? _tl60996123_)
                                       (_K60956111_ _expr6126_ _hd6119_)
                                       (_E60946105_))))
                               (_E60946105_))))
                       (_E60946105_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd60716079_)
                                                  (let ((_hd60766131_
                                                         (##car _hd60716079_))
                                                        (_tl60776133_
                                                         (##cdr _hd60716079_)))
                                                    (let ((_bind6136_
                                                           _hd60766131_))
                                                      (let ((_rest6138_
                                                             _tl60776133_))
                                                        (_K60756128_
                                                         _rest6138_
                                                         _bind6136_))))
                                                  (_else60736087_)))))))))
                            (let ((_g59846001_
                                   (lambda (_g59855998_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g59855998_))))
                              (let ((_g59836066_
                                     (lambda (_g59856004_)
                                       (if (gx#stx-pair? _g59856004_)
                                           (let ((_e59886006_
                                                  (gx#stx-e _g59856004_)))
                                             (let ((_hd59896009_
                                                    (##car _e59886006_))
                                                   (_tl59906011_
                                                    (##cdr _e59886006_)))
                                               (if (gx#stx-pair? _tl59906011_)
                                                   (let ((_e59916014_
                                                          (gx#stx-e
                                                           _tl59906011_)))
                                                     (let ((_hd59926017_
                                                            (##car _e59916014_))
                                                           (_tl59936019_
                                                            (##cdr _e59916014_)))
                                                       (if (gx#stx-pair?
                                                            _tl59936019_)
                                                           (let ((_e59946022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl59936019_)))
                     (let ((_hd59956025_ (##car _e59946022_))
                           (_tl59966027_ (##cdr _e59946022_)))
                       (if (gx#stx-null? _tl59966027_)
                           ((lambda (_L6030_ _L6031_)
                              (let ((_g10670_ (_linearize5972_ _L6031_)))
                                (begin
                                  (let ((_g10671_ (values-count _g10670_)))
                                    (if (not (fx= _g10671_ 5))
                                        (error "Context expects 5 values"
                                               _g10671_)))
                                  (let ((_pre6047_ (values-ref _g10670_ 0))
                                        (_rec-pre6048_ (values-ref _g10670_ 1))
                                        (_rec-bind6049_
                                         (values-ref _g10670_ 2))
                                        (_rec-init6050_
                                         (values-ref _g10670_ 3))
                                        (_post6051_ (values-ref _g10670_ 4)))
                                    (let ((_body6053_ (gxc#compile-e _L6030_)))
                                      (let ((_body6055_
                                             (if (null? _post6051_)
                                                 _body6053_
                                                 (_generate-let*5982_
                                                  _post6051_
                                                  _body6053_))))
                                        (let ((_body6057_
                                               (if (null? _rec-init6050_)
                                                   _body6055_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body6055_ '())
                         _rec-init6050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body6059_
                                                 (if (null? _rec-bind6049_)
                                                     _body6057_
                                                     (cons 'letrec
                                                           (cons _rec-bind6049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body6057_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body6061_
                                                   (if (null? _rec-pre6048_)
                                                       _body6059_
                                                       (cons 'let
                                                             (cons _rec-pre6048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body6059_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body6063_
                                                     (if (null? _pre6047_)
                                                         _body6061_
                                                         (_generate-let*5982_
                                                          _pre6047_
                                                          _body6061_))))
                                                (let () _body6063_)))))))))))
                            _hd59956025_
                            _hd59926017_)
                           (_g59846001_ _g59856004_))))
                   (_g59846001_ _g59856004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59846001_ _g59856004_))))
                                           (_g59846001_ _g59856004_)))))
                                (_g59836066_ _stx5970_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5863_)
      ((letrec ((_lp5865_
                 (lambda (_rest5867_)
                   (let ((_g58715892_
                          (lambda (_g58725889_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g58725889_))))
                     (let ((_g58705899_
                            (lambda (_g58725895_) ((lambda () '#f)))))
                       (let ((_g58695906_
                              (lambda (_g58725902_)
                                (if (gx#stx-null? _g58725902_)
                                    ((lambda () '#t))
                                    (_g58705899_ _g58725902_)))))
                         (let ((_g58685967_
                                (lambda (_g58725909_)
                                  (if (gx#stx-pair? _g58725909_)
                                      (let ((_e58765911_
                                             (gx#stx-e _g58725909_)))
                                        (let ((_hd58775914_
                                               (##car _e58765911_))
                                              (_tl58785916_
                                               (##cdr _e58765911_)))
                                          (if (gx#stx-pair? _hd58775914_)
                                              (let ((_e58795919_
                                                     (gx#stx-e _hd58775914_)))
                                                (let ((_hd58805922_
                                                       (##car _e58795919_))
                                                      (_tl58815924_
                                                       (##cdr _e58795919_)))
                                                  (if (gx#stx-pair?
                                                       _hd58805922_)
                                                      (let ((_e58825927_
                                                             (gx#stx-e
                                                              _hd58805922_)))
                                                        (let ((_hd58835930_
                                                               (##car _e58825927_))
                                                              (_tl58845932_
                                                               (##cdr _e58825927_)))
                                                          (if (gx#stx-null?
                                                               _tl58845932_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl58815924_)
                          (let ((_e58855935_ (gx#stx-e _tl58815924_)))
                            (let ((_hd58865938_ (##car _e58855935_))
                                  (_tl58875940_ (##cdr _e58855935_)))
                              (if (gx#stx-null? _tl58875940_)
                                  ((lambda (_L5943_ _L5944_ _L5945_)
                                     (_lp5865_ _L5943_))
                                   _tl58785916_
                                   _hd58865938_
                                   _hd58835930_)
                                  (_g58695906_ _g58725909_))))
                          (_g58695906_ _g58725909_))
                      (_g58695906_ _g58725909_))))
              (_g58695906_ _g58725909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g58695906_ _g58725909_))))
                                      (_g58695906_ _g58725909_)))))
                           (_g58685967_ _rest5867_))))))))
         _lp5865_)
       _hd5863_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5787_ _hd5788_ _body5789_ _compiled-body?5790_)
      (let ((_generate15792_
             (lambda (_bind5794_)
               (let ((_g57965813_
                      (lambda (_g57975810_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g57975810_))))
                 (let ((_g57955860_
                        (lambda (_g57975816_)
                          (if (gx#stx-pair? _g57975816_)
                              (let ((_e58005818_ (gx#stx-e _g57975816_)))
                                (let ((_hd58015821_ (##car _e58005818_))
                                      (_tl58025823_ (##cdr _e58005818_)))
                                  (if (gx#stx-pair? _hd58015821_)
                                      (let ((_e58035826_
                                             (gx#stx-e _hd58015821_)))
                                        (let ((_hd58045829_
                                               (##car _e58035826_))
                                              (_tl58055831_
                                               (##cdr _e58035826_)))
                                          (if (gx#stx-null? _tl58055831_)
                                              (if (gx#stx-pair? _tl58025823_)
                                                  (let ((_e58065834_
                                                         (gx#stx-e
                                                          _tl58025823_)))
                                                    (let ((_hd58075837_
                                                           (##car _e58065834_))
                                                          (_tl58085839_
                                                           (##cdr _e58065834_)))
                                                      (if (gx#stx-null?
                                                           _tl58085839_)
                                                          ((lambda (_L5842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5843_)
                     (cons (gxc#generate-runtime-binding-id* _L5843_)
                           (cons (gxc#compile-e _L5842_) '())))
                   _hd58075837_
                   _hd58045829_)
                  (_g57965813_ _g57975816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57965813_ _g57975816_))
                                              (_g57965813_ _g57975816_))))
                                      (_g57965813_ _g57975816_))))
                              (_g57965813_ _g57975816_)))))
                   (_g57955860_ _bind5794_))))))
        (cons _form5787_
              (cons (map _generate15792_ _hd5788_)
                    (cons (if _compiled-body?5790_
                              _body5789_
                              (gxc#compile-e _body5789_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5695_)
      (letrec ((_generate15697_
                (lambda (_datum5749_)
                  (if (let ((_$e5751_ (null? _datum5749_)))
                        (if _$e5751_
                            _$e5751_
                            (let ((_$e5754_ (interned-symbol? _datum5749_)))
                              (if _$e5754_
                                  _$e5754_
                                  (let ((_$e5757_
                                         (gx#self-quoting? _datum5749_)))
                                    (if _$e5757_
                                        _$e5757_
                                        (eof-object? _datum5749_)))))))
                      _datum5749_
                      (if (uninterned-symbol? _datum5749_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9593
                           _datum5749_
                           '#t)
                          (if (pair? _datum5749_)
                              (cons (_generate15697_ (car _datum5749_))
                                    (_generate15697_ (cdr _datum5749_)))
                              (if (box? _datum5749_)
                                  (box (_generate15697_ (unbox _datum5749_)))
                                  (if (vector? _datum5749_)
                                      (vector-map _generate15697_ _datum5749_)
                                      (if (let ((_$e5760_
                                                 (s8vector? _datum5749_)))
                                            (if _$e5760_
                                                _$e5760_
                                                (let ((_$e5763_
                                                       (u8vector?
                                                        _datum5749_)))
                                                  (if _$e5763_
                                                      _$e5763_
                                                      (let ((_$e5766_
                                                             (s16vector?
                                                              _datum5749_)))
                                                        (if _$e5766_
                                                            _$e5766_
                                                            (let ((_$e5769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5749_)))
                      (if _$e5769_
                          _$e5769_
                          (let ((_$e5772_ (s32vector? _datum5749_)))
                            (if _$e5772_
                                _$e5772_
                                (let ((_$e5775_ (u32vector? _datum5749_)))
                                  (if _$e5775_
                                      _$e5775_
                                      (let ((_$e5778_
                                             (s64vector? _datum5749_)))
                                        (if _$e5778_
                                            _$e5778_
                                            (let ((_$e5781_
                                                   (u64vector? _datum5749_)))
                                              (if _$e5781_
                                                  _$e5781_
                                                  (let ((_$e5784_
                                                         (f32vector?
                                                          _datum5749_)))
                                                    (if _$e5784_
                                                        _$e5784_
                                                        (f64vector?
                                                         _datum5749_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5749_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5695_))))))))))
        (let ((_g56995712_
               (lambda (_g57005709_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g57005709_))))
          (let ((_g56985746_
                 (lambda (_g57005715_)
                   (if (gx#stx-pair? _g57005715_)
                       (let ((_e57025717_ (gx#stx-e _g57005715_)))
                         (let ((_hd57035720_ (##car _e57025717_))
                               (_tl57045722_ (##cdr _e57025717_)))
                           (if (gx#stx-pair? _tl57045722_)
                               (let ((_e57055725_ (gx#stx-e _tl57045722_)))
                                 (let ((_hd57065728_ (##car _e57055725_))
                                       (_tl57075730_ (##cdr _e57055725_)))
                                   (if (gx#stx-null? _tl57075730_)
                                       ((lambda (_L5733_)
                                          (cons 'quote
                                                (cons (_generate15697_
                                                       (gx#stx-e _L5733_))
                                                      '())))
                                        _hd57065728_)
                                       (_g56995712_ _g57005715_))))
                               (_g56995712_ _g57005715_))))
                       (_g56995712_ _g57005715_)))))
            (_g56985746_ _stx5695_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5657_)
      (let ((_g56595669_
             (lambda (_g56605666_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56605666_))))
        (let ((_g56585692_
               (lambda (_g56605672_)
                 (if (gx#stx-pair? _g56605672_)
                     (let ((_e56625674_ (gx#stx-e _g56605672_)))
                       (let ((_hd56635677_ (##car _e56625674_))
                             (_tl56645679_ (##cdr _e56625674_)))
                         ((lambda (_L5682_) (map gxc#compile-e _L5682_))
                          _tl56645679_)))
                     (_g56595669_ _g56605672_)))))
          (_g56585692_ _stx5657_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5619_)
      (let ((_g56215631_
             (lambda (_g56225628_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56225628_))))
        (let ((_g56205654_
               (lambda (_g56225634_)
                 (if (gx#stx-pair? _g56225634_)
                     (let ((_e56245636_ (gx#stx-e _g56225634_)))
                       (let ((_hd56255639_ (##car _e56245636_))
                             (_tl56265641_ (##cdr _e56245636_)))
                         ((lambda (_L5644_)
                            (cons 'if (map gxc#compile-e _L5644_)))
                          _tl56265641_)))
                     (_g56215631_ _g56225634_)))))
          (_g56205654_ _stx5619_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5568_)
      (let ((_g55705583_
             (lambda (_g55715580_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55715580_))))
        (let ((_g55695616_
               (lambda (_g55715586_)
                 (if (gx#stx-pair? _g55715586_)
                     (let ((_e55735588_ (gx#stx-e _g55715586_)))
                       (let ((_hd55745591_ (##car _e55735588_))
                             (_tl55755593_ (##cdr _e55735588_)))
                         (if (gx#stx-pair? _tl55755593_)
                             (let ((_e55765596_ (gx#stx-e _tl55755593_)))
                               (let ((_hd55775599_ (##car _e55765596_))
                                     (_tl55785601_ (##cdr _e55765596_)))
                                 (if (gx#stx-null? _tl55785601_)
                                     ((lambda (_L5604_)
                                        (gxc#generate-runtime-binding-id
                                         _L5604_))
                                      _hd55775599_)
                                     (_g55705583_ _g55715586_))))
                             (_g55705583_ _g55715586_))))
                     (_g55705583_ _g55715586_)))))
          (_g55695616_ _stx5568_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5501_)
      (let ((_g55035520_
             (lambda (_g55045517_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55045517_))))
        (let ((_g55025565_
               (lambda (_g55045523_)
                 (if (gx#stx-pair? _g55045523_)
                     (let ((_e55075525_ (gx#stx-e _g55045523_)))
                       (let ((_hd55085528_ (##car _e55075525_))
                             (_tl55095530_ (##cdr _e55075525_)))
                         (if (gx#stx-pair? _tl55095530_)
                             (let ((_e55105533_ (gx#stx-e _tl55095530_)))
                               (let ((_hd55115536_ (##car _e55105533_))
                                     (_tl55125538_ (##cdr _e55105533_)))
                                 (if (gx#stx-pair? _tl55125538_)
                                     (let ((_e55135541_
                                            (gx#stx-e _tl55125538_)))
                                       (let ((_hd55145544_ (##car _e55135541_))
                                             (_tl55155546_
                                              (##cdr _e55135541_)))
                                         (if (gx#stx-null? _tl55155546_)
                                             ((lambda (_L5549_ _L5550_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5550_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5549_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd55145544_
                                              _hd55115536_)
                                             (_g55035520_ _g55045523_))))
                                     (_g55035520_ _g55045523_))))
                             (_g55035520_ _g55045523_))))
                     (_g55035520_ _g55045523_)))))
          (_g55025565_ _stx5501_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5434_)
      (let ((_g54365453_
             (lambda (_g54375450_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54375450_))))
        (let ((_g54355498_
               (lambda (_g54375456_)
                 (if (gx#stx-pair? _g54375456_)
                     (let ((_e54405458_ (gx#stx-e _g54375456_)))
                       (let ((_hd54415461_ (##car _e54405458_))
                             (_tl54425463_ (##cdr _e54405458_)))
                         (if (gx#stx-pair? _tl54425463_)
                             (let ((_e54435466_ (gx#stx-e _tl54425463_)))
                               (let ((_hd54445469_ (##car _e54435466_))
                                     (_tl54455471_ (##cdr _e54435466_)))
                                 (if (gx#stx-pair? _tl54455471_)
                                     (let ((_e54465474_
                                            (gx#stx-e _tl54455471_)))
                                       (let ((_hd54475477_ (##car _e54465474_))
                                             (_tl54485479_
                                              (##cdr _e54465474_)))
                                         (if (gx#stx-null? _tl54485479_)
                                             ((lambda (_L5482_ _L5483_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5482_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5483_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd54475477_
                                              _hd54445469_)
                                             (_g54365453_ _g54375456_))))
                                     (_g54365453_ _g54375456_))))
                             (_g54365453_ _g54375456_))))
                     (_g54365453_ _g54375456_)))))
          (_g54355498_ _stx5434_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5367_)
      (let ((_g53695386_
             (lambda (_g53705383_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53705383_))))
        (let ((_g53685431_
               (lambda (_g53705389_)
                 (if (gx#stx-pair? _g53705389_)
                     (let ((_e53735391_ (gx#stx-e _g53705389_)))
                       (let ((_hd53745394_ (##car _e53735391_))
                             (_tl53755396_ (##cdr _e53735391_)))
                         (if (gx#stx-pair? _tl53755396_)
                             (let ((_e53765399_ (gx#stx-e _tl53755396_)))
                               (let ((_hd53775402_ (##car _e53765399_))
                                     (_tl53785404_ (##cdr _e53765399_)))
                                 (if (gx#stx-pair? _tl53785404_)
                                     (let ((_e53795407_
                                            (gx#stx-e _tl53785404_)))
                                       (let ((_hd53805410_ (##car _e53795407_))
                                             (_tl53815412_
                                              (##cdr _e53795407_)))
                                         (if (gx#stx-null? _tl53815412_)
                                             ((lambda (_L5415_ _L5416_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5415_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5416_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd53805410_
                                              _hd53775402_)
                                             (_g53695386_ _g53705389_))))
                                     (_g53695386_ _g53705389_))))
                             (_g53695386_ _g53705389_))))
                     (_g53695386_ _g53705389_)))))
          (_g53685431_ _stx5367_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5284_)
      (let ((_g52865307_
             (lambda (_g52875304_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52875304_))))
        (let ((_g52855364_
               (lambda (_g52875310_)
                 (if (gx#stx-pair? _g52875310_)
                     (let ((_e52915312_ (gx#stx-e _g52875310_)))
                       (let ((_hd52925315_ (##car _e52915312_))
                             (_tl52935317_ (##cdr _e52915312_)))
                         (if (gx#stx-pair? _tl52935317_)
                             (let ((_e52945320_ (gx#stx-e _tl52935317_)))
                               (let ((_hd52955323_ (##car _e52945320_))
                                     (_tl52965325_ (##cdr _e52945320_)))
                                 (if (gx#stx-pair? _tl52965325_)
                                     (let ((_e52975328_
                                            (gx#stx-e _tl52965325_)))
                                       (let ((_hd52985331_ (##car _e52975328_))
                                             (_tl52995333_
                                              (##cdr _e52975328_)))
                                         (if (gx#stx-pair? _tl52995333_)
                                             (let ((_e53005336_
                                                    (gx#stx-e _tl52995333_)))
                                               (let ((_hd53015339_
                                                      (##car _e53005336_))
                                                     (_tl53025341_
                                                      (##cdr _e53005336_)))
                                                 (if (gx#stx-null?
                                                      _tl53025341_)
                                                     ((lambda (_L5344_
                                                               _L5345_
                                                               _L5346_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5344_)
                            (cons (gxc#compile-e _L5345_)
                                  (cons (gxc#compile-e _L5346_)
                                        (cons ''#f '()))))))
              _hd53015339_
              _hd52985331_
              _hd52955323_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52865307_
                                                      _g52875310_))))
                                             (_g52865307_ _g52875310_))))
                                     (_g52865307_ _g52875310_))))
                             (_g52865307_ _g52875310_))))
                     (_g52865307_ _g52875310_)))))
          (_g52855364_ _stx5284_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5185_)
      (let ((_g51875212_
             (lambda (_g51885209_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51885209_))))
        (let ((_g51865281_
               (lambda (_g51885215_)
                 (if (gx#stx-pair? _g51885215_)
                     (let ((_e51935217_ (gx#stx-e _g51885215_)))
                       (let ((_hd51945220_ (##car _e51935217_))
                             (_tl51955222_ (##cdr _e51935217_)))
                         (if (gx#stx-pair? _tl51955222_)
                             (let ((_e51965225_ (gx#stx-e _tl51955222_)))
                               (let ((_hd51975228_ (##car _e51965225_))
                                     (_tl51985230_ (##cdr _e51965225_)))
                                 (if (gx#stx-pair? _tl51985230_)
                                     (let ((_e51995233_
                                            (gx#stx-e _tl51985230_)))
                                       (let ((_hd52005236_ (##car _e51995233_))
                                             (_tl52015238_
                                              (##cdr _e51995233_)))
                                         (if (gx#stx-pair? _tl52015238_)
                                             (let ((_e52025241_
                                                    (gx#stx-e _tl52015238_)))
                                               (let ((_hd52035244_
                                                      (##car _e52025241_))
                                                     (_tl52045246_
                                                      (##cdr _e52025241_)))
                                                 (if (gx#stx-pair?
                                                      _tl52045246_)
                                                     (let ((_e52055249_
                                                            (gx#stx-e
                                                             _tl52045246_)))
                                                       (let ((_hd52065252_
                                                              (##car _e52055249_))
                                                             (_tl52075254_
                                                              (##cdr _e52055249_)))
                                                         (if (gx#stx-null?
                                                              _tl52075254_)
                                                             ((lambda (_L5257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5258_
                               _L5259_
                               _L5260_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L5258_)
                                    (cons (gxc#compile-e _L5257_)
                                          (cons (gxc#compile-e _L5259_)
                                                (cons (gxc#compile-e _L5260_)
                                                      (cons ''#f '())))))))
                      _hd52065252_
                      _hd52035244_
                      _hd52005236_
                      _hd51975228_)
                     (_g51875212_ _g51885215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51875212_
                                                      _g51885215_))))
                                             (_g51875212_ _g51885215_))))
                                     (_g51875212_ _g51885215_))))
                             (_g51875212_ _g51885215_))))
                     (_g51875212_ _g51885215_)))))
          (_g51865281_ _stx5185_)))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5102_)
      (let ((_g51045125_
             (lambda (_g51055122_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51055122_))))
        (let ((_g51035182_
               (lambda (_g51055128_)
                 (if (gx#stx-pair? _g51055128_)
                     (let ((_e51095130_ (gx#stx-e _g51055128_)))
                       (let ((_hd51105133_ (##car _e51095130_))
                             (_tl51115135_ (##cdr _e51095130_)))
                         (if (gx#stx-pair? _tl51115135_)
                             (let ((_e51125138_ (gx#stx-e _tl51115135_)))
                               (let ((_hd51135141_ (##car _e51125138_))
                                     (_tl51145143_ (##cdr _e51125138_)))
                                 (if (gx#stx-pair? _tl51145143_)
                                     (let ((_e51155146_
                                            (gx#stx-e _tl51145143_)))
                                       (let ((_hd51165149_ (##car _e51155146_))
                                             (_tl51175151_
                                              (##cdr _e51155146_)))
                                         (if (gx#stx-pair? _tl51175151_)
                                             (let ((_e51185154_
                                                    (gx#stx-e _tl51175151_)))
                                               (let ((_hd51195157_
                                                      (##car _e51185154_))
                                                     (_tl51205159_
                                                      (##cdr _e51185154_)))
                                                 (if (gx#stx-null?
                                                      _tl51205159_)
                                                     ((lambda (_L5162_
                                                               _L5163_
                                                               _L5164_)
                                                        (cons '##direct-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5162_)
                            (cons (gxc#compile-e _L5163_)
                                  (cons (gxc#compile-e _L5164_)
                                        (cons ''#f '()))))))
              _hd51195157_
              _hd51165149_
              _hd51135141_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51045125_
                                                      _g51055128_))))
                                             (_g51045125_ _g51055128_))))
                                     (_g51045125_ _g51055128_))))
                             (_g51045125_ _g51055128_))))
                     (_g51045125_ _g51055128_)))))
          (_g51035182_ _stx5102_)))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5003_)
      (let ((_g50055030_
             (lambda (_g50065027_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50065027_))))
        (let ((_g50045099_
               (lambda (_g50065033_)
                 (if (gx#stx-pair? _g50065033_)
                     (let ((_e50115035_ (gx#stx-e _g50065033_)))
                       (let ((_hd50125038_ (##car _e50115035_))
                             (_tl50135040_ (##cdr _e50115035_)))
                         (if (gx#stx-pair? _tl50135040_)
                             (let ((_e50145043_ (gx#stx-e _tl50135040_)))
                               (let ((_hd50155046_ (##car _e50145043_))
                                     (_tl50165048_ (##cdr _e50145043_)))
                                 (if (gx#stx-pair? _tl50165048_)
                                     (let ((_e50175051_
                                            (gx#stx-e _tl50165048_)))
                                       (let ((_hd50185054_ (##car _e50175051_))
                                             (_tl50195056_
                                              (##cdr _e50175051_)))
                                         (if (gx#stx-pair? _tl50195056_)
                                             (let ((_e50205059_
                                                    (gx#stx-e _tl50195056_)))
                                               (let ((_hd50215062_
                                                      (##car _e50205059_))
                                                     (_tl50225064_
                                                      (##cdr _e50205059_)))
                                                 (if (gx#stx-pair?
                                                      _tl50225064_)
                                                     (let ((_e50235067_
                                                            (gx#stx-e
                                                             _tl50225064_)))
                                                       (let ((_hd50245070_
                                                              (##car _e50235067_))
                                                             (_tl50255072_
                                                              (##cdr _e50235067_)))
                                                         (if (gx#stx-null?
                                                              _tl50255072_)
                                                             ((lambda (_L5075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5076_
                               _L5077_
                               _L5078_)
                        (cons '##direct-structure-set!
                              (cons (gxc#compile-e _L5076_)
                                    (cons (gxc#compile-e _L5075_)
                                          (cons (gxc#compile-e _L5077_)
                                                (cons (gxc#compile-e _L5078_)
                                                      (cons ''#f '())))))))
                      _hd50245070_
                      _hd50215062_
                      _hd50185054_
                      _hd50155046_)
                     (_g50055030_ _g50065033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50055030_
                                                      _g50065033_))))
                                             (_g50055030_ _g50065033_))))
                                     (_g50055030_ _g50065033_))))
                             (_g50055030_ _g50065033_))))
                     (_g50055030_ _g50065033_)))))
          (_g50045099_ _stx5003_)))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx4920_)
      (let ((_g49224943_
             (lambda (_g49234940_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49234940_))))
        (let ((_g49215000_
               (lambda (_g49234946_)
                 (if (gx#stx-pair? _g49234946_)
                     (let ((_e49274948_ (gx#stx-e _g49234946_)))
                       (let ((_hd49284951_ (##car _e49274948_))
                             (_tl49294953_ (##cdr _e49274948_)))
                         (if (gx#stx-pair? _tl49294953_)
                             (let ((_e49304956_ (gx#stx-e _tl49294953_)))
                               (let ((_hd49314959_ (##car _e49304956_))
                                     (_tl49324961_ (##cdr _e49304956_)))
                                 (if (gx#stx-pair? _tl49324961_)
                                     (let ((_e49334964_
                                            (gx#stx-e _tl49324961_)))
                                       (let ((_hd49344967_ (##car _e49334964_))
                                             (_tl49354969_
                                              (##cdr _e49334964_)))
                                         (if (gx#stx-pair? _tl49354969_)
                                             (let ((_e49364972_
                                                    (gx#stx-e _tl49354969_)))
                                               (let ((_hd49374975_
                                                      (##car _e49364972_))
                                                     (_tl49384977_
                                                      (##cdr _e49364972_)))
                                                 (if (gx#stx-null?
                                                      _tl49384977_)
                                                     ((lambda (_L4980_
                                                               _L4981_
                                                               _L4982_)
                                                        (cons '##unchecked-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4980_)
                            (cons (gxc#compile-e _L4981_)
                                  (cons (gxc#compile-e _L4982_)
                                        (cons ''#f '()))))))
              _hd49374975_
              _hd49344967_
              _hd49314959_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49224943_
                                                      _g49234946_))))
                                             (_g49224943_ _g49234946_))))
                                     (_g49224943_ _g49234946_))))
                             (_g49224943_ _g49234946_))))
                     (_g49224943_ _g49234946_)))))
          (_g49215000_ _stx4920_)))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx4821_)
      (let ((_g48234848_
             (lambda (_g48244845_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48244845_))))
        (let ((_g48224917_
               (lambda (_g48244851_)
                 (if (gx#stx-pair? _g48244851_)
                     (let ((_e48294853_ (gx#stx-e _g48244851_)))
                       (let ((_hd48304856_ (##car _e48294853_))
                             (_tl48314858_ (##cdr _e48294853_)))
                         (if (gx#stx-pair? _tl48314858_)
                             (let ((_e48324861_ (gx#stx-e _tl48314858_)))
                               (let ((_hd48334864_ (##car _e48324861_))
                                     (_tl48344866_ (##cdr _e48324861_)))
                                 (if (gx#stx-pair? _tl48344866_)
                                     (let ((_e48354869_
                                            (gx#stx-e _tl48344866_)))
                                       (let ((_hd48364872_ (##car _e48354869_))
                                             (_tl48374874_
                                              (##cdr _e48354869_)))
                                         (if (gx#stx-pair? _tl48374874_)
                                             (let ((_e48384877_
                                                    (gx#stx-e _tl48374874_)))
                                               (let ((_hd48394880_
                                                      (##car _e48384877_))
                                                     (_tl48404882_
                                                      (##cdr _e48384877_)))
                                                 (if (gx#stx-pair?
                                                      _tl48404882_)
                                                     (let ((_e48414885_
                                                            (gx#stx-e
                                                             _tl48404882_)))
                                                       (let ((_hd48424888_
                                                              (##car _e48414885_))
                                                             (_tl48434890_
                                                              (##cdr _e48414885_)))
                                                         (if (gx#stx-null?
                                                              _tl48434890_)
                                                             ((lambda (_L4893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4894_
                               _L4895_
                               _L4896_)
                        (cons '##unchecked-structure-set!
                              (cons (gxc#compile-e _L4894_)
                                    (cons (gxc#compile-e _L4893_)
                                          (cons (gxc#compile-e _L4895_)
                                                (cons (gxc#compile-e _L4896_)
                                                      (cons ''#f '())))))))
                      _hd48424888_
                      _hd48394880_
                      _hd48364872_
                      _hd48334864_)
                     (_g48234848_ _g48244851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48234848_
                                                      _g48244851_))))
                                             (_g48234848_ _g48244851_))))
                                     (_g48234848_ _g48244851_))))
                             (_g48234848_ _g48244851_))))
                     (_g48234848_ _g48244851_)))))
          (_g48224917_ _stx4821_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4730_)
      (let ((_g47324742_
             (lambda (_g47334739_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47334739_))))
        (let ((_g47314818_
               (lambda (_g47334745_)
                 (if (gx#stx-pair? _g47334745_)
                     (let ((_e47354747_ (gx#stx-e _g47334745_)))
                       (let ((_hd47364750_ (##car _e47354747_))
                             (_tl47374752_ (##cdr _e47354747_)))
                         ((lambda (_L4755_)
                            (let ((_ht4765_ (make-hash-table-eq)))
                              ((letrec ((_lp4767_
                                         (lambda (_rest4769_ _loads4770_)
                                           (let ((_K4772_ (lambda (_ctx4811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4812_)
                    (let ((_id4814_
                           (##structure-ref
                            _ctx4811_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4765_ _id4814_ '#f)
                          (_lp4767_ _rest4812_ _loads4770_)
                          (let ((_rt4816_
                                 (string-append
                                  (symbol->string _id4814_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4765_ _id4814_ _rt4816_)
                              (_lp4767_
                               _rest4812_
                               (cons _rt4816_ _loads4770_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest47734781_ _rest4769_))
                                               (let ((_E47764785_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest47734781_))))
                                                 (let ((_else47754793_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g47884790_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g47884790_))
                             (reverse _loads4770_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K47774799_
                                                          (lambda (_rest4796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4797_)
                    (if (##structure-instance-of?
                         _in4797_
                         'gx#module-context::t)
                        (_K4772_ _in4797_ _rest4796_)
                        (if (##structure-direct-instance-of?
                             _in4797_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##direct-structure-ref
                                  _in4797_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4767_ _rest4796_ _loads4770_)
                                (_K4772_ (##direct-structure-ref
                                          (##direct-structure-ref
                                           _in4797_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4796_))
                            (if (##structure-direct-instance-of?
                                 _in4797_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##direct-structure-ref
                                      _in4797_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4767_ _rest4796_ _loads4770_)
                                    (_K4772_ (##direct-structure-ref
                                              _in4797_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4796_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4730_
                                 _in4797_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest47734781_)
                                                         (let ((_hd47784802_
                                                                (##car _rest47734781_))
                                                               (_tl47794804_
                                                                (##cdr _rest47734781_)))
                                                           (let ((_in4807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd47784802_))
                     (let ((_rest4809_ _tl47794804_))
                       (_K47774799_ _rest4809_ _in4807_))))
                 (_else47754793_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4767_)
                               _L4755_
                               '())))
                          _tl47374752_)))
                     (_g47324742_ _g47334745_)))))
          (_g47314818_ _stx4730_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4671_)
      (let ((_generate-quote4673_
             (lambda (_q4728_)
               (if (gx#identifier? _q4728_)
                   (gxc#generate-runtime-identifier _q4728_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4671_
                    _q4728_)))))
        (let ((_g46754688_
               (lambda (_g46764685_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46764685_))))
          (let ((_g46744725_
                 (lambda (_g46764691_)
                   (if (gx#stx-pair? _g46764691_)
                       (let ((_e46784693_ (gx#stx-e _g46764691_)))
                         (let ((_hd46794696_ (##car _e46784693_))
                               (_tl46804698_ (##cdr _e46784693_)))
                           (if (gx#stx-pair? _tl46804698_)
                               (let ((_e46814701_ (gx#stx-e _tl46804698_)))
                                 (let ((_hd46824704_ (##car _e46814701_))
                                       (_tl46834706_ (##cdr _e46814701_)))
                                   (if (gx#stx-null? _tl46834706_)
                                       ((lambda (_L4709_)
                                          (let ((_gid4722_
                                                 (gxc#generate-runtime-temporary__opt-lambda9539
                                                  '#t))
                                                (_quote-e4723_
                                                 (_generate-quote4673_
                                                  _L4709_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4723_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4722_)))
                                        _hd46824704_)
                                       (_g46754688_ _g46764691_))))
                               (_g46754688_ _g46764691_))))
                       (_g46754688_ _g46764691_)))))
            (_g46744725_ _stx4671_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4604_)
      (let ((_g46064623_
             (lambda (_g46074620_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46074620_))))
        (let ((_g46054668_
               (lambda (_g46074626_)
                 (if (gx#stx-pair? _g46074626_)
                     (let ((_e46104628_ (gx#stx-e _g46074626_)))
                       (let ((_hd46114631_ (##car _e46104628_))
                             (_tl46124633_ (##cdr _e46104628_)))
                         (if (gx#stx-pair? _tl46124633_)
                             (let ((_e46134636_ (gx#stx-e _tl46124633_)))
                               (let ((_hd46144639_ (##car _e46134636_))
                                     (_tl46154641_ (##cdr _e46134636_)))
                                 (if (gx#stx-pair? _tl46154641_)
                                     (let ((_e46164644_
                                            (gx#stx-e _tl46154641_)))
                                       (let ((_hd46174647_ (##car _e46164644_))
                                             (_tl46184649_
                                              (##cdr _e46164644_)))
                                         (if (gx#stx-null? _tl46184649_)
                                             ((lambda (_L4652_ _L4653_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4653_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4652_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd46174647_
                                              _hd46144639_)
                                             (_g46064623_ _g46074626_))))
                                     (_g46064623_ _g46074626_))))
                             (_g46064623_ _g46074626_))))
                     (_g46064623_ _g46074626_)))))
          (_g46054668_ _stx4604_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4553_ _state4554_)
      (let ((_g45564566_
             (lambda (_g45574563_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45574563_))))
        (let ((_g45554601_
               (lambda (_g45574569_)
                 (if (gx#stx-pair? _g45574569_)
                     (let ((_e45594571_ (gx#stx-e _g45574569_)))
                       (let ((_hd45604574_ (##car _e45594571_))
                             (_tl45614576_ (##cdr _e45594571_)))
                         ((lambda (_L4579_)
                            (let ((_c-body4593_
                                   (map (lambda (_g45884590_)
                                          (gxc#compile-e
                                           _g45884590_
                                           _state4554_))
                                        _L4579_)))
                              (let ((_c-body4598_
                                     (filter (lambda (_$obj4595_)
                                               (not (eq? _$obj4595_ '#!void)))
                                             _c-body4593_)))
                                (let () (cons '%#begin _c-body4598_)))))
                          _tl45614576_)))
                     (_g45564566_ _g45574569_)))))
          (_g45554601_ _stx4553_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4461_ _state4462_)
      (let ((_g44644474_
             (lambda (_g44654471_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44654471_))))
        (let ((_g44634550_
               (lambda (_g44654477_)
                 (if (gx#stx-pair? _g44654477_)
                     (let ((_e44674479_ (gx#stx-e _g44654477_)))
                       (let ((_hd44684482_ (##car _e44674479_))
                             (_tl44694484_ (##cdr _e44674479_)))
                         ((lambda (_L4487_)
                            (let ((_phi4497_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4499_
                                     (gxc#meta-state-begin-phi!
                                      _state4462_
                                      _phi4497_)))
                                (let ((_compiled4502_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4487_)
                                           _state4462_))
                                        gx#current-expander-phi
                                        _phi4497_)))
                                  (let ()
                                    (let ((_g45054515_
                                           (lambda (_g45064512_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g45064512_))))
                                      (let ((_g45044547_
                                             (lambda (_g45064518_)
                                               (if (gx#stx-pair? _g45064518_)
                                                   (let ((_e45084520_
                                                          (gx#stx-e
                                                           _g45064518_)))
                                                     (let ((_hd45094523_
                                                            (##car _e45084520_))
                                                           (_tl45104525_
                                                            (##cdr _e45084520_)))
                                                       (if (gx#identifier?
                                                            _hd45094523_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd45094523_)
                                                               ((lambda (_L4528_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4545_
                                 (filter (lambda (_$obj4542_)
                                           (not (eq? _$obj4542_ '#!void)))
                                         _L4528_)))
                            (if _block4499_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4499_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4545_))
                                (if (null? _c-body4545_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4545_)))))
                        _tl45104525_)
                       (_g45054515_ _g45064518_))
                   (_g45054515_ _g45064518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45054515_
                                                    _g45064518_)))))
                                        (_g45044547_ _compiled4502_))))))))
                          _tl44694484_)))
                     (_g44644474_ _g44654477_)))))
          (_g44634550_ _stx4461_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4392_ _state4393_)
      (begin
        (gxc#meta-state-end-phi! _state4393_)
        (let ((_g43954409_
               (lambda (_g43964406_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43964406_))))
          (let ((_g43944458_
                 (lambda (_g43964412_)
                   (if (gx#stx-pair? _g43964412_)
                       (let ((_e43994414_ (gx#stx-e _g43964412_)))
                         (let ((_hd44004417_ (##car _e43994414_))
                               (_tl44014419_ (##cdr _e43994414_)))
                           (if (gx#stx-pair? _tl44014419_)
                               (let ((_e44024422_ (gx#stx-e _tl44014419_)))
                                 (let ((_hd44034425_ (##car _e44024422_))
                                       (_tl44044427_ (##cdr _e44024422_)))
                                   ((lambda (_L4430_ _L4431_)
                                      (let ((_key4444_
                                             (gx#core-identifier-key _L4431_)))
                                        (begin
                                          (if (interned-symbol? _key4444_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4392_
                                               _L4431_
                                               _key4444_))
                                          (let ((_ctx4446_
                                                 (gx#syntax-local-e__0
                                                  _L4431_)))
                                            (let ((_code4449_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4446_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4393_))
                                                    gx#current-expander-context
                                                    _ctx4446_)))
                                              (let ((_rt4451_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4446_
                                                      '#f)))
                                                (let ((_loader4453_
                                                       (if _rt4451_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4451_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4455_
                                                         (gx#stx-e _L4431_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4393_)
                                                        (cons '%#module
                                                              (cons _modid4455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4449_ _loader4453_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl44044427_
                                    _hd44034425_)))
                               (_g43954409_ _g43964412_))))
                       (_g43954409_ _g43964412_)))))
            (_g43944458_ _stx4392_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4382_ _context-chain4383_)
      ((letrec ((_lp4385_
                 (lambda (_ctx4387_ _path4388_)
                   (let ((_super4390_
                          (##structure-ref
                           _ctx4387_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4390_ _context-chain4383_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4387_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4388_)
                         (if (##structure-instance-of?
                              _super4390_
                              'gx#module-context::t)
                             (_lp4385_
                              _super4390_
                              (cons (car (##structure-ref
                                          _ctx4387_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4388_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4387_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4388_)))))))
         _lp4385_)
       _ctx4382_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4377_
                 (lambda (_ctx4379_ _r4380_)
                   (if (##structure-instance-of?
                        _ctx4379_
                        'gx#module-context::t)
                       (_lp4377_
                        (##structure-ref _ctx4379_ '3 gx#phi-context::t '#f)
                        (cons _ctx4379_ _r4380_))
                       _r4380_))))
         _lp4377_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4146_ _state4147_)
      (let ((_context-chain4149_ (gxc#current-context-chain)))
        (let ((_make-import-spec4150_
               (lambda (_in4313_)
                 (let ((_in43144326_ _in4313_))
                   (let ((_E43164330_
                          (lambda ()
                            (error '"No clause matching" _in43144326_))))
                     (let ((_K43174340_
                            (lambda (_phi4333_
                                     _name4334_
                                     _src-name4335_
                                     _src-phi4336_
                                     _src-key4337_
                                     _src-ctx4338_)
                              (cons _phi4333_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4334_)
                                          (cons _src-phi4336_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4335_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in43144326_
                            (##type-id gx#module-import::t))
                           (let ((_e43184343_ (##vector-ref _in43144326_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e43184343_
                                  (##type-id gx#module-export::t))
                                 (let ((_e43214346_
                                        (##vector-ref _e43184343_ '1)))
                                   (let ((_src-ctx4349_ _e43214346_))
                                     (let ((_e43224351_
                                            (##vector-ref _e43184343_ '2)))
                                       (let ((_src-key4354_ _e43224351_))
                                         (let ((_e43234356_
                                                (##vector-ref _e43184343_ '3)))
                                           (let ((_src-phi4359_ _e43234356_))
                                             (let ((_e43244361_
                                                    (##vector-ref
                                                     _e43184343_
                                                     '4)))
                                               (let ((_src-name4364_
                                                      _e43244361_))
                                                 (let ((_e43194366_
                                                        (##vector-ref
                                                         _in43144326_
                                                         '2)))
                                                   (let ((_name4369_
                                                          _e43194366_))
                                                     (let ((_e43204371_
                                                            (##vector-ref
                                                             _in43144326_
                                                             '3)))
                                                       (let ((_phi4374_
                                                              _e43204371_))
                                                         (_K43174340_
                                                          _phi4374_
                                                          _name4369_
                                                          _src-name4364_
                                                          _src-phi4359_
                                                          _src-key4354_
                                                          _src-ctx4349_)))))))))))))
                                 (_E43164330_)))
                           (_E43164330_))))))))
          (let ((_make-import-path4151_
                 (lambda (_ctx4311_)
                   (gxc#generate-meta-import-path
                    _ctx4311_
                    _context-chain4149_))))
            (let ((_make-import-spec-in4152_
                   (lambda (_ctx4308_ _in4309_)
                     (cons 'spec:
                           (cons (_make-import-path4151_ _ctx4308_)
                                 (reverse _in4309_))))))
              (begin
                (gxc#meta-state-end-phi! _state4147_)
                (let ((_g41544164_
                       (lambda (_g41554161_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g41554161_))))
                  (let ((_g41534305_
                         (lambda (_g41554167_)
                           (if (gx#stx-pair? _g41554167_)
                               (let ((_e41574169_ (gx#stx-e _g41554167_)))
                                 (let ((_hd41584172_ (##car _e41574169_))
                                       (_tl41594174_ (##cdr _e41574169_)))
                                   ((lambda (_L4177_)
                                      ((letrec ((_lp4188_
                                                 (lambda (_rest4190_
                                                          _current-src4191_
                                                          _current-in4192_
                                                          _r4193_)
                                                   (let ((_rest41944202_
                                                          _rest4190_))
                                                     (let ((_E41974206_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest41944202_))))
               (let ((_else41964212_
                      (lambda ()
                        (let ((_r4210_ (if _current-src4191_
                                           (cons (_make-import-spec-in4152_
                                                  _current-src4191_
                                                  _current-in4192_)
                                                 _r4193_)
                                           _r4193_)))
                          (cons '%#import (reverse _r4210_))))))
                 (let ((_K41984293_
                        (lambda (_rest4215_ _in4216_)
                          (if (##structure-direct-instance-of?
                               _in4216_
                               'gx#module-import::t)
                              (let ((_in42174224_ _in4216_))
                                (let ((_E42194228_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in42174224_))))
                                  (let ((_K42204233_
                                         (lambda (_src-ctx4231_)
                                           (if (eq? _current-src4191_
                                                    _src-ctx4231_)
                                               (_lp4188_
                                                _rest4215_
                                                _current-src4191_
                                                (cons (_make-import-spec4150_
                                                       _in4216_)
                                                      _current-in4192_)
                                                _r4193_)
                                               (if _current-src4191_
                                                   (_lp4188_
                                                    _rest4215_
                                                    _src-ctx4231_
                                                    (cons (_make-import-spec4150_
                                                           _in4216_)
                                                          '())
                                                    (cons (_make-import-spec-in4152_
                                                           _current-src4191_
                                                           _current-in4192_)
                                                          _r4193_))
                                                   (_lp4188_
                                                    _rest4215_
                                                    _src-ctx4231_
                                                    (cons (_make-import-spec4150_
                                                           _in4216_)
                                                          '())
                                                    _r4193_))))))
                                    (if (##structure-direct-instance-of?
                                         _in42174224_
                                         (##type-id gx#module-import::t))
                                        (let ((_e42214236_
                                               (##vector-ref _in42174224_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e42214236_
                                               (##type-id gx#module-export::t))
                                              (let ((_e42224239_
                                                     (##vector-ref
                                                      _e42214236_
                                                      '1)))
                                                (let ((_src-ctx4242_
                                                       _e42224239_))
                                                  (_K42204233_ _src-ctx4242_)))
                                              (_E42194228_)))
                                        (_E42194228_)))))
                              (if (##structure-direct-instance-of?
                                   _in4216_
                                   'gx#import-set::t)
                                  (let ((_phi4244_
                                         (##direct-structure-ref
                                          _in4216_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4246_
                                           (##direct-structure-ref
                                            _in4216_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4286_
                                             (let ((_g42474256_
                                                    (_make-import-path4151_
                                                     _src4246_)))
                                               (let ((_E42504260_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g42474256_))))
                                                 (let ((_try-match42494271_
                                                        (lambda ()
                                                          (let ((_K42514266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4264_) (cons 'in: _path4264_))))
                    (let ((_path4269_ _g42474256_))
                      (_K42514266_ _path4269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K42524276_
                                                          (lambda (_path4274_)
                                                            _path4274_)))
                                                     (if (##pair? _g42474256_)
                                                         (let ((_hd42534279_
                                                                (##car _g42474256_))
                                                               (_tl42544281_
                                                                (##cdr _g42474256_)))
                                                           (let ((_path4284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd42534279_))
                     (if (##null? _tl42544281_)
                         (_K42524276_ _path4284_)
                         (_try-match42494271_))))
                 (_try-match42494271_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4288_ (if _current-src4191_
                                                           (cons (_make-import-spec-in4152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4191_
                          _current-in4192_)
                         _r4193_)
                   _r4193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4188_
                                             _rest4215_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4244_)
                                                       _src-in4286_
                                                       (cons 'phi:
                                                             (cons _phi4244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4286_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4288_)))))))
                                  (if (##structure-instance-of?
                                       _in4216_
                                       'gx#module-context::t)
                                      (let ((_r4291_ (if _current-src4191_
                                                         (cons (_make-import-spec-in4152_
                                                                _current-src4191_
                                                                _current-in4192_)
                                                               _r4193_)
                                                         _r4193_)))
                                        (_lp4188_
                                         _rest4215_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4151_
                                                      _in4216_))
                                               _r4291_)))
                                      '#!void))))))
                   (if (##pair? _rest41944202_)
                       (let ((_hd41994296_ (##car _rest41944202_))
                             (_tl42004298_ (##cdr _rest41944202_)))
                         (let ((_in4301_ _hd41994296_))
                           (let ((_rest4303_ _tl42004298_))
                             (_K41984293_ _rest4303_ _in4301_))))
                       (_else41964212_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4188_)
                                       _L4177_
                                       '#f
                                       '()
                                       '()))
                                    _tl41594174_)))
                               (_g41544164_ _g41554167_)))))
                    (_g41534305_ _stx4146_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3956_ _state3957_)
      (let ((_context-chain3959_ (gxc#current-context-chain)))
        (let ((_make-import-path3960_
               (lambda (_ctx4144_)
                 (gxc#generate-meta-import-path
                  _ctx4144_
                  _context-chain3959_))))
          (let ((_g39623972_
                 (lambda (_g39633969_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g39633969_))))
            (let ((_g39614141_
                   (lambda (_g39633975_)
                     (if (gx#stx-pair? _g39633975_)
                         (let ((_e39653977_ (gx#stx-e _g39633975_)))
                           (let ((_hd39663980_ (##car _e39653977_))
                                 (_tl39673982_ (##cdr _e39653977_)))
                             ((lambda (_L3985_)
                                ((letrec ((_lp3996_
                                           (lambda (_rest3998_ _r3999_)
                                             (let ((_rest40004008_ _rest3998_))
                                               (let ((_E40034012_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest40004008_))))
                                                 (let ((_else40024016_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3999_)))))
                                                   (let ((_K40044129_
                                                          (lambda (_rest4019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out4020_)
                    (let ((_out40214034_ _out4020_))
                      (let ((_E40244038_
                             (lambda ()
                               (error '"No clause matching" _out40214034_))))
                        (let ((_try-match40234101_
                               (lambda ()
                                 (let ((_K40254088_
                                        (lambda (_phi4042_ _src4043_)
                                          (let ((_out4083_
                                                 (if _src4043_
                                                     (cons 'import:
                                                           (cons (let ((_g40444053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3960_ _src4043_)))
                           (let ((_E40474057_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g40444053_))))
                             (let ((_try-match40464068_
                                    (lambda ()
                                      (let ((_K40484063_
                                             (lambda (_path4061_)
                                               (cons 'in: _path4061_))))
                                        (let ((_path4066_ _g40444053_))
                                          (_K40484063_ _path4066_))))))
                               (let ((_K40494073_
                                      (lambda (_path4071_) _path4071_)))
                                 (if (##pair? _g40444053_)
                                     (let ((_hd40504076_ (##car _g40444053_))
                                           (_tl40514078_ (##cdr _g40444053_)))
                                       (let ((_path4081_ _hd40504076_))
                                         (if (##null? _tl40514078_)
                                             (_K40494073_ _path4081_)
                                             (_try-match40464068_))))
                                     (_try-match40464068_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out4085_
                                                   (if (fxzero? _phi4042_)
                                                       _out4083_
                                                       (cons 'phi:
                                                             (cons _phi4042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out4083_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3996_
                                                 _rest4019_
                                                 (cons _out4085_
                                                       _r3999_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out40214034_
                                        (##type-id gx#export-set::t))
                                       (let ((_e40264091_
                                              (##vector-ref _out40214034_ '1)))
                                         (let ((_src4094_ _e40264091_))
                                           (let ((_e40274096_
                                                  (##vector-ref
                                                   _out40214034_
                                                   '2)))
                                             (let ((_phi4099_ _e40274096_))
                                               (_K40254088_
                                                _phi4099_
                                                _src4094_)))))
                                       (_E40244038_))))))
                          (let ((_K40284108_
                                 (lambda (_name4104_ _phi4105_ _key4106_)
                                   (_lp3996_
                                    _rest4019_
                                    (cons (cons 'spec:
                                                (cons _phi4105_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4106_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name4104_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3999_)))))
                            (if (##structure-direct-instance-of?
                                 _out40214034_
                                 (##type-id gx#module-export::t))
                                (let ((_e40294111_
                                       (##vector-ref _out40214034_ '1)))
                                  (let ((_e40304114_
                                         (##vector-ref _out40214034_ '2)))
                                    (let ((_key4117_ _e40304114_))
                                      (let ((_e40314119_
                                             (##vector-ref _out40214034_ '3)))
                                        (let ((_phi4122_ _e40314119_))
                                          (let ((_e40324124_
                                                 (##vector-ref
                                                  _out40214034_
                                                  '4)))
                                            (let ((_name4127_ _e40324124_))
                                              (_K40284108_
                                               _name4127_
                                               _phi4122_
                                               _key4117_))))))))
                                (_try-match40234101_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest40004008_)
                                                         (let ((_hd40054132_
                                                                (##car _rest40004008_))
                                                               (_tl40064134_
                                                                (##cdr _rest40004008_)))
                                                           (let ((_out4137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd40054132_))
                     (let ((_rest4139_ _tl40064134_))
                       (_K40044129_ _rest4139_ _out4137_))))
                 (_else40024016_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3996_)
                                 _L3985_
                                 '()))
                              _tl39673982_)))
                         (_g39623972_ _g39633975_)))))
              (_g39614141_ _stx3956_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3917_ _state3918_)
      (begin
        (gxc#meta-state-end-phi! _state3918_)
        (let ((_g39203930_
               (lambda (_g39213927_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g39213927_))))
          (let ((_g39193953_
                 (lambda (_g39213933_)
                   (if (gx#stx-pair? _g39213933_)
                       (let ((_e39233935_ (gx#stx-e _g39213933_)))
                         (let ((_hd39243938_ (##car _e39233935_))
                               (_tl39253940_ (##cdr _e39233935_)))
                           ((lambda (_L3943_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3943_)))
                            _tl39253940_)))
                       (_g39203930_ _g39213933_)))))
            (_g39193953_ _stx3917_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3788_ _state3789_)
      (let ((_generate13791_
             (lambda (_id3912_ _eid3913_)
               (let ((_eid3915_ (gx#stx-e _eid3913_)))
                 (begin
                   (if (interned-symbol? _eid3915_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3788_
                        _eid3915_))
                   (cons (gxc#generate-runtime-identifier _id3912_)
                         (cons _eid3915_ '())))))))
        (let ((_g37933821_
               (lambda (_g37943818_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37943818_))))
          (let ((_g37923909_
                 (lambda (_g37943824_)
                   (if (gx#stx-pair? _g37943824_)
                       (let ((_e37973826_ (gx#stx-e _g37943824_)))
                         (let ((_hd37983829_ (##car _e37973826_))
                               (_tl37993831_ (##cdr _e37973826_)))
                           (if (gx#stx-pair/null? _tl37993831_)
                               (if (fx>= (gx#stx-length _tl37993831_) '0)
                                   (let ((_g10678_
                                          (gx#syntax-split-splice
                                           _tl37993831_
                                           '0)))
                                     (begin
                                       (let ((_g10679_
                                              (values-count _g10678_)))
                                         (if (not (fx= _g10679_ 2))
                                             (error "Context expects 2 values"
                                                    _g10679_)))
                                       (let ((_target38003834_
                                              (values-ref _g10678_ 0))
                                             (_tl38023836_
                                              (values-ref _g10678_ 1)))
                                         (if (gx#stx-null? _tl38023836_)
                                             (letrec ((_loop38033839_
                                                       (lambda (_hd38013842_
                                                                _eid38073844_
                                                                _id38083846_)
                                                         (if (gx#stx-pair?
                                                              _hd38013842_)
                                                             (let ((_e38043849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd38013842_)))
                       (let ((_lp-hd38053852_ (##car _e38043849_))
                             (_lp-tl38063854_ (##cdr _e38043849_)))
                         (if (gx#stx-pair? _lp-hd38053852_)
                             (let ((_e38113857_ (gx#stx-e _lp-hd38053852_)))
                               (let ((_hd38123860_ (##car _e38113857_))
                                     (_tl38133862_ (##cdr _e38113857_)))
                                 (if (gx#stx-pair? _tl38133862_)
                                     (let ((_e38143865_
                                            (gx#stx-e _tl38133862_)))
                                       (let ((_hd38153868_ (##car _e38143865_))
                                             (_tl38163870_
                                              (##cdr _e38143865_)))
                                         (if (gx#stx-null? _tl38163870_)
                                             (_loop38033839_
                                              _lp-tl38063854_
                                              (cons _hd38153868_ _eid38073844_)
                                              (cons _hd38123860_ _id38083846_))
                                             (_g37933821_ _g37943824_))))
                                     (_g37933821_ _g37943824_))))
                             (_g37933821_ _g37943824_))))
                     (let ((_eid38093873_ (reverse _eid38073844_))
                           (_id38103875_ (reverse _id38083846_)))
                       ((lambda (_L3878_ _L3879_)
                          (cons '%#extern
                                (map _generate13791_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g38943897_
                                                        _g38953899_)
                                                 (cons _g38943897_
                                                       _g38953899_))
                                               '()
                                               _L3879_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g39013904_
                                                        _g39023906_)
                                                 (cons _g39013904_
                                                       _g39023906_))
                                               '()
                                               _L3878_)))))
                        _eid38093873_
                        _id38103875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop38033839_
                                                _target38003834_
                                                '()
                                                '()))
                                             (_g37933821_ _g37943824_)))))
                                   (_g37933821_ _g37943824_))
                               (_g37933821_ _g37943824_))))
                       (_g37933821_ _g37943824_)))))
            (_g37923909_ _stx3788_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3583_ _state3584_)
      (let ((_generate13586_
             (lambda (_id3783_)
               (let ((_eid3785_ (gxc#generate-runtime-binding-id _id3783_))
                     (_ident3786_ (gxc#generate-runtime-identifier _id3783_)))
                 (cons '%#define-runtime
                       (cons _ident3786_ (cons _eid3785_ '())))))))
        (let ((_generate*3587_
               (lambda (_all3751_)
                 (let ((_all37523760_ _all3751_))
                   (let ((_E37553764_
                          (lambda ()
                            (error '"No clause matching" _all37523760_))))
                     (let ((_else37543768_
                            (lambda () (cons '%#begin _all3751_))))
                       (let ((_K37563773_ (lambda (_one3771_) _one3771_)))
                         (if (##pair? _all37523760_)
                             (let ((_hd37573776_ (##car _all37523760_))
                                   (_tl37583778_ (##cdr _all37523760_)))
                               (let ((_one3781_ _hd37573776_))
                                 (if (##null? _tl37583778_)
                                     (_K37563773_ _one3781_)
                                     (_else37543768_))))
                             (_else37543768_)))))))))
          (let ((_g35893606_
                 (lambda (_g35903603_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g35903603_))))
            (let ((_g35883748_
                   (lambda (_g35903609_)
                     (if (gx#stx-pair? _g35903609_)
                         (let ((_e35933611_ (gx#stx-e _g35903609_)))
                           (let ((_hd35943614_ (##car _e35933611_))
                                 (_tl35953616_ (##cdr _e35933611_)))
                             (if (gx#stx-pair? _tl35953616_)
                                 (let ((_e35963619_ (gx#stx-e _tl35953616_)))
                                   (let ((_hd35973622_ (##car _e35963619_))
                                         (_tl35983624_ (##cdr _e35963619_)))
                                     (if (gx#stx-pair? _tl35983624_)
                                         (let ((_e35993627_
                                                (gx#stx-e _tl35983624_)))
                                           (let ((_hd36003630_
                                                  (##car _e35993627_))
                                                 (_tl36013632_
                                                  (##cdr _e35993627_)))
                                             (if (gx#stx-null? _tl36013632_)
                                                 ((lambda (_L3635_ _L3636_)
                                                    ((letrec ((_lp3652_
                                                               (lambda (_rest3654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3655_)
                         (let ((_g36603676_
                                (lambda (_g36613673_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g36613673_))))
                           (let ((_g36593683_
                                  (lambda (_g36613679_)
                                    ((lambda ()
                                       (_generate*3587_ (reverse _r3655_)))))))
                             (let ((_g36583699_
                                    (lambda (_g36613686_)
                                      ((lambda (_L3688_)
                                         (if (gx#identifier? _L3688_)
                                             (_generate*3587_
                                              (foldl1 cons
                                                      (cons (_generate13586_
                                                             _L3688_)
                                                            '())
                                                      _r3655_))
                                             (_g36593683_ _g36613686_)))
                                       _g36613686_))))
                               (let ((_g36573723_
                                      (lambda (_g36613702_)
                                        (if (gx#stx-pair? _g36613702_)
                                            (let ((_e36683704_
                                                   (gx#stx-e _g36613702_)))
                                              (let ((_hd36693707_
                                                     (##car _e36683704_))
                                                    (_tl36703709_
                                                     (##cdr _e36683704_)))
                                                ((lambda (_L3712_ _L3713_)
                                                   (_lp3652_
                                                    _L3712_
                                                    (cons (_generate13586_
                                                           _L3713_)
                                                          _r3655_)))
                                                 _tl36703709_
                                                 _hd36693707_)))
                                            (_g36583699_ _g36613702_)))))
                                 (let ((_g36563745_
                                        (lambda (_g36613726_)
                                          (if (gx#stx-pair? _g36613726_)
                                              (let ((_e36633728_
                                                     (gx#stx-e _g36613726_)))
                                                (let ((_hd36643731_
                                                       (##car _e36633728_))
                                                      (_tl36653733_
                                                       (##cdr _e36633728_)))
                                                  (if (gx#stx-datum?
                                                       _hd36643731_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd36643731_)
                          '#f)
                  ((lambda (_L3736_) (_lp3652_ _L3736_ _r3655_)) _tl36653733_)
                  (_g36573723_ _g36613726_))
              (_g36573723_ _g36613726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g36573723_ _g36613726_)))))
                                   (_g36563745_ _rest3654_)))))))))
               _lp3652_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3636_
                                                     '()))
                                                  _hd36003630_
                                                  _hd35973622_)
                                                 (_g35893606_ _g35903609_))))
                                         (_g35893606_ _g35903609_))))
                                 (_g35893606_ _g35903609_))))
                         (_g35893606_ _g35903609_)))))
              (_g35883748_ _stx3583_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3480_ _state3481_)
      (let ((_g34833500_
             (lambda (_g34843497_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34843497_))))
        (let ((_g34823580_
               (lambda (_g34843503_)
                 (if (gx#stx-pair? _g34843503_)
                     (let ((_e34873505_ (gx#stx-e _g34843503_)))
                       (let ((_hd34883508_ (##car _e34873505_))
                             (_tl34893510_ (##cdr _e34873505_)))
                         (if (gx#stx-pair? _tl34893510_)
                             (let ((_e34903513_ (gx#stx-e _tl34893510_)))
                               (let ((_hd34913516_ (##car _e34903513_))
                                     (_tl34923518_ (##cdr _e34903513_)))
                                 (if (gx#stx-pair? _tl34923518_)
                                     (let ((_e34933521_
                                            (gx#stx-e _tl34923518_)))
                                       (let ((_hd34943524_ (##car _e34933521_))
                                             (_tl34953526_
                                              (##cdr _e34933521_)))
                                         (if (gx#stx-null? _tl34953526_)
                                             ((lambda (_L3529_ _L3530_)
                                                (let ((_eid3545_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3530_)))
                                                  (let ((_phi3547_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3549_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3481_
                                                            _phi3547_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g35523559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g35533556_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g35533556_))))
                    (let ((_g35513577_
                           (lambda (_g35533562_)
                             ((lambda (_L3564_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3481_
                                   _phi3547_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3564_ (cons _L3529_ '()))))))
                              _g35533562_))))
                      (_g35513577_ _eid3545_)))
                  (if _block3549_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3549_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3530_)
                                                    (cons _eid3545_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3530_)
                                  (cons _eid3545_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34943524_
                                              _hd34913516_)
                                             (_g34833500_ _g34843503_))))
                                     (_g34833500_ _g34843503_))))
                             (_g34833500_ _g34843503_))))
                     (_g34833500_ _g34843503_)))))
          (_g34823580_ _stx3480_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3412_ _state3413_)
      (let ((_g34153432_
             (lambda (_g34163429_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34163429_))))
        (let ((_g34143477_
               (lambda (_g34163435_)
                 (if (gx#stx-pair? _g34163435_)
                     (let ((_e34193437_ (gx#stx-e _g34163435_)))
                       (let ((_hd34203440_ (##car _e34193437_))
                             (_tl34213442_ (##cdr _e34193437_)))
                         (if (gx#stx-pair? _tl34213442_)
                             (let ((_e34223445_ (gx#stx-e _tl34213442_)))
                               (let ((_hd34233448_ (##car _e34223445_))
                                     (_tl34243450_ (##cdr _e34223445_)))
                                 (if (gx#stx-pair? _tl34243450_)
                                     (let ((_e34253453_
                                            (gx#stx-e _tl34243450_)))
                                       (let ((_hd34263456_ (##car _e34253453_))
                                             (_tl34273458_
                                              (##cdr _e34253453_)))
                                         (if (gx#stx-null? _tl34273458_)
                                             ((lambda (_L3461_ _L3462_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3462_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3461_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34263456_
                                              _hd34233448_)
                                             (_g34153432_ _g34163435_))))
                                     (_g34153432_ _g34163435_))))
                             (_g34153432_ _g34163435_))))
                     (_g34153432_ _g34163435_)))))
          (_g34143477_ _stx3412_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3409_ _state3410_)
      (begin
        (gxc#meta-state-add-phi!
         _state3410_
         (gx#current-expander-phi)
         _stx3409_)
        (gxc#generate-meta-define-values% _stx3409_ _state3410_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3406_ _state3407_)
      (begin
        (gxc#meta-state-add-phi!
         _state3407_
         (gx#current-expander-phi)
         _stx3406_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3403_
      (apply make-struct-instance gxc#meta-state::t _$args3403_)))
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
    (lambda (_self3400_ _ctx3401_)
      (struct-instance-init!
       _self3400_
       (symbol->string
        (##structure-ref _ctx3401_ '1 gx#expander-context::t '#f))
       '1
       (make-hash-table-eq)
       '())))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args3397_
      (apply make-struct-instance gxc#meta-state-block::t _$args3397_)))
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
    (lambda (_state3356_ _phi3357_)
      (let ((_state33583366_ _state3356_))
        (let ((_E33603370_
               (lambda () (error '"No clause matching" _state33583366_))))
          (let ((_K33613379_
                 (lambda (_open3373_ _n3374_ _src3375_)
                   (if (table-ref _open3373_ _phi3357_ '#f)
                       '#f
                       (let ((_block-ref3377_
                              (string-append
                               _src3375_
                               '"__"
                               (number->string _n3374_))))
                         (begin
                           (##structure-set!
                            _state3356_
                            (fx+ _n3374_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3373_
                            _phi3357_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3357_
                             _n3374_
                             '()))
                           _block-ref3377_))))))
            (if (##structure-instance-of?
                 _state33583366_
                 (##type-id gxc#meta-state::t))
                (let ((_e33623382_ (##vector-ref _state33583366_ '1)))
                  (let ((_src3385_ _e33623382_))
                    (let ((_e33633387_ (##vector-ref _state33583366_ '2)))
                      (let ((_n3390_ _e33633387_))
                        (let ((_e33643392_ (##vector-ref _state33583366_ '3)))
                          (let ((_open3395_ _e33643392_))
                            (_K33613379_ _open3395_ _n3390_ _src3385_)))))))
                (_E33603370_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3350_ _phi3351_ _stx3352_)
      (let ((_block3354_
             (table-ref
              (##structure-ref _state3350_ '3 gxc#meta-state::t '#f)
              _phi3351_
              '#f)))
        (##structure-set!
         _block3354_
         (cons _stx3352_
               (##structure-ref _block3354_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3345_)
      (begin
        (##structure-set!
         _state3345_
         (hash-fold
          (lambda (_g10680_ _block3347_ _r3348_) (cons _block3347_ _r3348_))
          (##structure-ref _state3345_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3345_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3345_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3297_)
      (begin
        (gxc#meta-state-end-phi! _state3297_)
        (foldl1 (lambda (_block3299_ _r3300_)
                  (let ((_block33013310_ _block3299_))
                    (let ((_E33033314_
                           (lambda ()
                             (error '"No clause matching" _block33013310_))))
                      (let ((_K33043322_
                             (lambda (_code3317_ _n3318_ _phi3319_ _ctx3320_)
                               (if (null? _code3317_)
                                   _r3300_
                                   (cons (cons _ctx3320_
                                               (cons _phi3319_
                                                     (cons _n3318_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3317_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3300_)))))
                        (if (##structure-instance-of?
                             _block33013310_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e33053325_
                                   (##vector-ref _block33013310_ '1)))
                              (let ((_ctx3328_ _e33053325_))
                                (let ((_e33063330_
                                       (##vector-ref _block33013310_ '2)))
                                  (let ((_phi3333_ _e33063330_))
                                    (let ((_e33073335_
                                           (##vector-ref _block33013310_ '3)))
                                      (let ((_n3338_ _e33073335_))
                                        (let ((_e33083340_
                                               (##vector-ref
                                                _block33013310_
                                                '4)))
                                          (let ((_code3343_ _e33083340_))
                                            (_K33043322_
                                             _code3343_
                                             _n3338_
                                             _phi3333_
                                             _ctx3328_)))))))))
                            (_E33033314_))))))
                '()
                (##structure-ref _state3297_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3293_)
      (let ((_ht3295_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3293_ _ht3295_)
          _ht3295_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3236_ _ht3237_)
      (let ((_g32393252_
             (lambda (_g32403249_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32403249_))))
        (let ((_g32383290_
               (lambda (_g32403255_)
                 (if (gx#stx-pair? _g32403255_)
                     (let ((_e32423257_ (gx#stx-e _g32403255_)))
                       (let ((_hd32433260_ (##car _e32423257_))
                             (_tl32443262_ (##cdr _e32423257_)))
                         (if (gx#stx-pair? _tl32443262_)
                             (let ((_e32453265_ (gx#stx-e _tl32443262_)))
                               (let ((_hd32463268_ (##car _e32453265_))
                                     (_tl32473270_ (##cdr _e32453265_)))
                                 (if (gx#stx-null? _tl32473270_)
                                     ((lambda (_L3273_)
                                        (let ((_bind3285_
                                               (gx#resolve-identifier__0
                                                _L3273_)))
                                          (let ((_eid3287_
                                                 (if _bind3285_
                                                     (##structure-ref
                                                      _bind3285_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3273_))))
                                            (let ()
                                              (table-set!
                                               _ht3237_
                                               _eid3287_
                                               _eid3287_)))))
                                      _hd32463268_)
                                     (_g32393252_ _g32403255_))))
                             (_g32393252_ _g32403255_))))
                     (_g32393252_ _g32403255_)))))
          (_g32383290_ _stx3236_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3163_ _ht3164_)
      (let ((_g31663183_
             (lambda (_g31673180_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31673180_))))
        (let ((_g31653233_
               (lambda (_g31673186_)
                 (if (gx#stx-pair? _g31673186_)
                     (let ((_e31703188_ (gx#stx-e _g31673186_)))
                       (let ((_hd31713191_ (##car _e31703188_))
                             (_tl31723193_ (##cdr _e31703188_)))
                         (if (gx#stx-pair? _tl31723193_)
                             (let ((_e31733196_ (gx#stx-e _tl31723193_)))
                               (let ((_hd31743199_ (##car _e31733196_))
                                     (_tl31753201_ (##cdr _e31733196_)))
                                 (if (gx#stx-pair? _tl31753201_)
                                     (let ((_e31763204_
                                            (gx#stx-e _tl31753201_)))
                                       (let ((_hd31773207_ (##car _e31763204_))
                                             (_tl31783209_
                                              (##cdr _e31763204_)))
                                         (if (gx#stx-null? _tl31783209_)
                                             ((lambda (_L3212_ _L3213_)
                                                (let ((_bind3228_
                                                       (gx#resolve-identifier__0
                                                        _L3213_)))
                                                  (let ((_eid3230_
                                                         (if _bind3228_
                                                             (##structure-ref
                                                              _bind3228_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3213_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3164_
                                                         _eid3230_
                                                         _eid3230_)
                                                        (gxc#compile-e
                                                         _L3212_
                                                         _ht3164_))))))
                                              _hd31773207_
                                              _hd31743199_)
                                             (_g31663183_ _g31673186_))))
                                     (_g31663183_ _g31673186_))))
                             (_g31663183_ _g31673186_))))
                     (_g31663183_ _g31673186_)))))
          (_g31653233_ _stx3163_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3125_)
      (let ((_g31273137_
             (lambda (_g31283134_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31283134_))))
        (let ((_g31263160_
               (lambda (_g31283140_)
                 (if (gx#stx-pair? _g31283140_)
                     (let ((_e31303142_ (gx#stx-e _g31283140_)))
                       (let ((_hd31313145_ (##car _e31303142_))
                             (_tl31323147_ (##cdr _e31303142_)))
                         ((lambda (_L3150_) (ormap1 gxc#compile-e _L3150_))
                          _tl31323147_)))
                     (_g31273137_ _g31283140_)))))
          (_g31263160_ _stx3125_)))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3087_)
      (let ((_g30893099_
             (lambda (_g30903096_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30903096_))))
        (let ((_g30883122_
               (lambda (_g30903102_)
                 (if (gx#stx-pair? _g30903102_)
                     (let ((_e30923104_ (gx#stx-e _g30903102_)))
                       (let ((_hd30933107_ (##car _e30923104_))
                             (_tl30943109_ (##cdr _e30923104_)))
                         ((lambda (_L3112_) (gxc#compile-e (last _L3112_)))
                          _tl30943109_)))
                     (_g30893099_ _g30903102_)))))
          (_g30883122_ _stx3087_)))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3020_)
      (let ((_g30223039_
             (lambda (_g30233036_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30233036_))))
        (let ((_g30213084_
               (lambda (_g30233042_)
                 (if (gx#stx-pair? _g30233042_)
                     (let ((_e30263044_ (gx#stx-e _g30233042_)))
                       (let ((_hd30273047_ (##car _e30263044_))
                             (_tl30283049_ (##cdr _e30263044_)))
                         (if (gx#stx-pair? _tl30283049_)
                             (let ((_e30293052_ (gx#stx-e _tl30283049_)))
                               (let ((_hd30303055_ (##car _e30293052_))
                                     (_tl30313057_ (##cdr _e30293052_)))
                                 (if (gx#stx-pair? _tl30313057_)
                                     (let ((_e30323060_
                                            (gx#stx-e _tl30313057_)))
                                       (let ((_hd30333063_ (##car _e30323060_))
                                             (_tl30343065_
                                              (##cdr _e30323060_)))
                                         (if (gx#stx-null? _tl30343065_)
                                             ((lambda (_L3068_ _L3069_)
                                                (gxc#compile-e _L3068_))
                                              _hd30333063_
                                              _hd30303055_)
                                             (_g30223039_ _g30233042_))))
                                     (_g30223039_ _g30233042_))))
                             (_g30223039_ _g30233042_))))
                     (_g30223039_ _g30233042_)))))
          (_g30213084_ _stx3020_))))))
