(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx11762_ . _args11763_)
      (let* ((_g1176511775_
              (lambda (_g1176611772_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1176611772_)))
             (_g1176411803_
              (lambda (_g1176611778_)
                (if (gx#stx-pair? _g1176611778_)
                    (let ((_e1176811780_ (gx#stx-e _g1176611778_)))
                      (let ((_hd1176911783_ (##car _e1176811780_))
                            (_tl1177011785_ (##cdr _e1176811780_)))
                        ((lambda (_L11788_)
                           (let ((_$e11798_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L11788_)
                                   '#f)))
                             (if _$e11798_
                                 ((lambda (_method11801_)
                                    (apply _method11801_
                                           _stx11762_
                                           _args11763_))
                                  _$e11798_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx11762_
                                  _L11788_))))
                         _hd1176911783_)))
                    (_g1176511775_ _g1176611778_)))))
        (_g1176411803_ _stx11762_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl11759_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11759_ '%#begin-annotation void)
           (table-set! _tbl11759_ '%#lambda void)
           (table-set! _tbl11759_ '%#case-lambda void)
           (table-set! _tbl11759_ '%#let-values void)
           (table-set! _tbl11759_ '%#letrec-values void)
           (table-set! _tbl11759_ '%#letrec*-values void)
           (table-set! _tbl11759_ '%#quote void)
           (table-set! _tbl11759_ '%#quote-syntax void)
           (table-set! _tbl11759_ '%#call void)
           (table-set! _tbl11759_ '%#if void)
           (table-set! _tbl11759_ '%#ref void)
           (table-set! _tbl11759_ '%#set! void)
           (table-set! _tbl11759_ '%#struct-instance? void)
           (table-set! _tbl11759_ '%#struct-direct-instance? void)
           (table-set! _tbl11759_ '%#struct-ref void)
           (table-set! _tbl11759_ '%#struct-set! void)
           (table-set! _tbl11759_ '%#struct-direct-ref void)
           (table-set! _tbl11759_ '%#struct-direct-set! void)
           (table-set! _tbl11759_ '%#struct-unchecked-ref void)
           (table-set! _tbl11759_ '%#struct-unchecked-set! void)
           _tbl11759_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11755_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11755_ '%#begin void)
           (table-set! _tbl11755_ '%#begin-syntax void)
           (table-set! _tbl11755_ '%#begin-foreign void)
           (table-set! _tbl11755_ '%#module void)
           (table-set! _tbl11755_ '%#import void)
           (table-set! _tbl11755_ '%#export void)
           (table-set! _tbl11755_ '%#provide void)
           (table-set! _tbl11755_ '%#extern void)
           (table-set! _tbl11755_ '%#define-values void)
           (table-set! _tbl11755_ '%#define-syntax void)
           (table-set! _tbl11755_ '%#define-alias void)
           (table-set! _tbl11755_ '%#declare void)
           _tbl11755_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11751_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11751_ (force gxc#&void-special-form))
           (hash-copy! _tbl11751_ (force gxc#&void-expression))
           _tbl11751_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11747_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11747_ '%#begin-annotation false)
           (table-set! _tbl11747_ '%#lambda false)
           (table-set! _tbl11747_ '%#case-lambda false)
           (table-set! _tbl11747_ '%#let-values false)
           (table-set! _tbl11747_ '%#letrec-values false)
           (table-set! _tbl11747_ '%#letrec*-values false)
           (table-set! _tbl11747_ '%#quote false)
           (table-set! _tbl11747_ '%#quote-syntax false)
           (table-set! _tbl11747_ '%#call false)
           (table-set! _tbl11747_ '%#if false)
           (table-set! _tbl11747_ '%#ref false)
           (table-set! _tbl11747_ '%#set! false)
           (table-set! _tbl11747_ '%#struct-instance? false)
           (table-set! _tbl11747_ '%#struct-direct-instance? false)
           (table-set! _tbl11747_ '%#struct-ref false)
           (table-set! _tbl11747_ '%#struct-set! false)
           (table-set! _tbl11747_ '%#struct-direct-ref false)
           (table-set! _tbl11747_ '%#struct-direct-set! false)
           (table-set! _tbl11747_ '%#struct-unchecked-ref false)
           (table-set! _tbl11747_ '%#struct-unchecked-set! false)
           _tbl11747_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11743_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11743_ '%#begin false)
           (table-set! _tbl11743_ '%#begin-syntax false)
           (table-set! _tbl11743_ '%#begin-foreign false)
           (table-set! _tbl11743_ '%#module false)
           (table-set! _tbl11743_ '%#import false)
           (table-set! _tbl11743_ '%#export false)
           (table-set! _tbl11743_ '%#provide false)
           (table-set! _tbl11743_ '%#extern false)
           (table-set! _tbl11743_ '%#define-values false)
           (table-set! _tbl11743_ '%#define-syntax false)
           (table-set! _tbl11743_ '%#define-alias false)
           (table-set! _tbl11743_ '%#declare false)
           _tbl11743_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl11739_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11739_ (force gxc#&false-special-form))
           (hash-copy! _tbl11739_ (force gxc#&false-expression))
           _tbl11739_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl11735_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11735_ (force gxc#&void-expression))
           (hash-copy! _tbl11735_ (force gxc#&void-special-form))
           (table-set! _tbl11735_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11735_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11735_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11735_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11735_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11735_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11728_ . _args11730_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11728_ _args11730_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11725_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11725_ (force gxc#&void))
           (table-set! _tbl11725_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11725_ '%#module gxc#lift-modules-module%)
           _tbl11725_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11718_ . _args11720_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11718_ _args11720_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11715_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11715_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11715_ '%#begin-syntax false)
           (table-set! _tbl11715_ '%#begin-foreign true)
           (table-set! _tbl11715_ '%#begin-annotation true)
           (table-set! _tbl11715_ '%#module false)
           (table-set! _tbl11715_ '%#import false)
           (table-set! _tbl11715_ '%#export false)
           (table-set! _tbl11715_ '%#provide false)
           (table-set! _tbl11715_ '%#extern false)
           (table-set! _tbl11715_ '%#define-values true)
           (table-set! _tbl11715_ '%#define-syntax false)
           (table-set! _tbl11715_ '%#define-alias false)
           (table-set! _tbl11715_ '%#declare false)
           (table-set! _tbl11715_ '%#lambda true)
           (table-set! _tbl11715_ '%#case-lambda true)
           (table-set! _tbl11715_ '%#let-values true)
           (table-set! _tbl11715_ '%#letrec-values true)
           (table-set! _tbl11715_ '%#letrec*-values true)
           (table-set! _tbl11715_ '%#quote true)
           (table-set! _tbl11715_ '%#call true)
           (table-set! _tbl11715_ '%#if true)
           (table-set! _tbl11715_ '%#ref true)
           (table-set! _tbl11715_ '%#set! true)
           (table-set! _tbl11715_ '%#struct-instance? true)
           (table-set! _tbl11715_ '%#struct-direct-instance? true)
           (table-set! _tbl11715_ '%#struct-ref true)
           (table-set! _tbl11715_ '%#struct-set! true)
           (table-set! _tbl11715_ '%#struct-direct-ref true)
           (table-set! _tbl11715_ '%#struct-direct-set! true)
           (table-set! _tbl11715_ '%#struct-unchecked-ref true)
           (table-set! _tbl11715_ '%#struct-unchecked-set! true)
           _tbl11715_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11708_ . _args11710_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11708_ _args11710_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11705_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11705_ (force gxc#&false))
           (table-set! _tbl11705_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11705_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11705_ '%#lambda values)
           (table-set! _tbl11705_ '%#case-lambda values)
           (table-set!
            _tbl11705_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11705_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11705_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11705_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11698_ . _args11700_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11698_ _args11700_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11695_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11695_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11695_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11695_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11695_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11691_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11691_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11691_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11691_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11691_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11684_ . _args11686_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11684_ _args11686_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11681_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11681_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11681_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11681_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11681_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11681_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11681_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11681_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11681_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11681_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11681_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11681_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11681_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl11681_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11681_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11681_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11681_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11681_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11681_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11681_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11681_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11681_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11681_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11681_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11681_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11681_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11674_ . _args11676_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11674_ _args11676_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11671_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11671_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11671_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl11671_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11671_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11664_ . _args11666_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11664_ _args11666_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11661_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11661_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11661_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11661_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11661_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11661_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11661_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11661_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11661_ '%#quote void)
           (table-set! _tbl11661_ '%#quote-syntax void)
           (table-set! _tbl11661_ '%#call gxc#collect-operands)
           (table-set! _tbl11661_ '%#if gxc#collect-operands)
           (table-set! _tbl11661_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11661_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11661_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11661_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11661_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11661_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11661_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11661_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11661_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11661_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11661_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11654_ . _args11656_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11654_ _args11656_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11651_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11651_ (force gxc#&void-expression))
           (table-set! _tbl11651_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11651_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11651_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11651_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11651_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11651_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11651_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11651_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11651_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11651_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11651_ '%#begin-foreign void)
           (table-set! _tbl11651_ '%#declare void)
           _tbl11651_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11644_ . _args11646_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11644_ _args11646_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11641_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11641_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11641_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11641_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11641_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11641_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11641_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11641_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11641_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11641_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11641_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11641_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11641_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11641_ '%#declare void)
           _tbl11641_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11634_ . _args11636_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11634_ _args11636_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11591_ . _args11592_)
      (let* ((_g1159411604_
              (lambda (_g1159511601_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1159511601_)))
             (_g1159311631_
              (lambda (_g1159511607_)
                (if (gx#stx-pair? _g1159511607_)
                    (let ((_e1159711609_ (gx#stx-e _g1159511607_)))
                      (let ((_hd1159811612_ (##car _e1159711609_))
                            (_tl1159911614_ (##cdr _e1159711609_)))
                        ((lambda (_L11617_)
                           (for-each
                            (lambda (_g1162611628_)
                              (apply gxc#compile-e _g1162611628_ _args11592_))
                            (gx#stx-e _L11617_)))
                         _tl1159911614_)))
                    (_g1159411604_ _g1159511607_)))))
        (_g1159311631_ _stx11591_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11547_ . _args11548_)
      (let* ((_g1155011560_
              (lambda (_g1155111557_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1155111557_)))
             (_g1154911588_
              (lambda (_g1155111563_)
                (if (gx#stx-pair? _g1155111563_)
                    (let ((_e1155311565_ (gx#stx-e _g1155111563_)))
                      (let ((_hd1155411568_ (##car _e1155311565_))
                            (_tl1155511570_ (##cdr _e1155311565_)))
                        ((lambda (_L11573_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1158311585_)
                                 (apply gxc#compile-e
                                        _g1158311585_
                                        _args11548_))
                               (gx#stx-e _L11573_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1155511570_)))
                    (_g1155011560_ _g1155111563_)))))
        (_g1154911588_ _stx11547_))))
  (define gxc#collect-module%
    (lambda (_stx11489_ . _args11490_)
      (let* ((_g1149211506_
              (lambda (_g1149311503_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1149311503_)))
             (_g1149111544_
              (lambda (_g1149311509_)
                (if (gx#stx-pair? _g1149311509_)
                    (let ((_e1149611511_ (gx#stx-e _g1149311509_)))
                      (let ((_hd1149711514_ (##car _e1149611511_))
                            (_tl1149811516_ (##cdr _e1149611511_)))
                        (if (gx#stx-pair? _tl1149811516_)
                            (let ((_e1149911519_ (gx#stx-e _tl1149811516_)))
                              (let ((_hd1150011522_ (##car _e1149911519_))
                                    (_tl1150111524_ (##cdr _e1149911519_)))
                                ((lambda (_L11527_ _L11528_)
                                   (let ((_ctx11541_
                                          (gx#syntax-local-e__0 _L11528_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11541_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11490_))
                                      gx#current-expander-context
                                      _ctx11541_)))
                                 _tl1150111524_
                                 _hd1150011522_)))
                            (_g1149211506_ _g1149311509_))))
                    (_g1149211506_ _g1149311509_)))))
        (_g1149111544_ _stx11489_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11421_ . _args11422_)
      (let* ((_g1142411441_
              (lambda (_g1142511438_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1142511438_)))
             (_g1142311486_
              (lambda (_g1142511444_)
                (if (gx#stx-pair? _g1142511444_)
                    (let ((_e1142811446_ (gx#stx-e _g1142511444_)))
                      (let ((_hd1142911449_ (##car _e1142811446_))
                            (_tl1143011451_ (##cdr _e1142811446_)))
                        (if (gx#stx-pair? _tl1143011451_)
                            (let ((_e1143111454_ (gx#stx-e _tl1143011451_)))
                              (let ((_hd1143211457_ (##car _e1143111454_))
                                    (_tl1143311459_ (##cdr _e1143111454_)))
                                (if (gx#stx-pair? _tl1143311459_)
                                    (let ((_e1143411462_
                                           (gx#stx-e _tl1143311459_)))
                                      (let ((_hd1143511465_
                                             (##car _e1143411462_))
                                            (_tl1143611467_
                                             (##cdr _e1143411462_)))
                                        (if (gx#stx-null? _tl1143611467_)
                                            ((lambda (_L11470_ _L11471_)
                                               (apply gxc#compile-e
                                                      _L11470_
                                                      _args11422_))
                                             _hd1143511465_
                                             _hd1143211457_)
                                            (_g1142411441_ _g1142511444_))))
                                    (_g1142411441_ _g1142511444_))))
                            (_g1142411441_ _g1142511444_))))
                    (_g1142411441_ _g1142511444_)))))
        (_g1142311486_ _stx11421_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11353_ . _args11354_)
      (let* ((_g1135611373_
              (lambda (_g1135711370_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1135711370_)))
             (_g1135511418_
              (lambda (_g1135711376_)
                (if (gx#stx-pair? _g1135711376_)
                    (let ((_e1136011378_ (gx#stx-e _g1135711376_)))
                      (let ((_hd1136111381_ (##car _e1136011378_))
                            (_tl1136211383_ (##cdr _e1136011378_)))
                        (if (gx#stx-pair? _tl1136211383_)
                            (let ((_e1136311386_ (gx#stx-e _tl1136211383_)))
                              (let ((_hd1136411389_ (##car _e1136311386_))
                                    (_tl1136511391_ (##cdr _e1136311386_)))
                                (if (gx#stx-pair? _tl1136511391_)
                                    (let ((_e1136611394_
                                           (gx#stx-e _tl1136511391_)))
                                      (let ((_hd1136711397_
                                             (##car _e1136611394_))
                                            (_tl1136811399_
                                             (##cdr _e1136611394_)))
                                        (if (gx#stx-null? _tl1136811399_)
                                            ((lambda (_L11402_ _L11403_)
                                               (apply gxc#compile-e
                                                      _L11402_
                                                      _args11354_))
                                             _hd1136711397_
                                             _hd1136411389_)
                                            (_g1135611373_ _g1135711376_))))
                                    (_g1135611373_ _g1135711376_))))
                            (_g1135611373_ _g1135711376_))))
                    (_g1135611373_ _g1135711376_)))))
        (_g1135511418_ _stx11353_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11235_ . _args11236_)
      (let* ((_g1123811266_
              (lambda (_g1123911263_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1123911263_)))
             (_g1123711350_
              (lambda (_g1123911269_)
                (if (gx#stx-pair? _g1123911269_)
                    (let ((_e1124211271_ (gx#stx-e _g1123911269_)))
                      (let ((_hd1124311274_ (##car _e1124211271_))
                            (_tl1124411276_ (##cdr _e1124211271_)))
                        (if (gx#stx-pair/null? _tl1124411276_)
                            (if (fx>= (gx#stx-length _tl1124411276_) '0)
                                (let ((_g11805_
                                       (gx#syntax-split-splice
                                        _tl1124411276_
                                        '0)))
                                  (begin
                                    (let ((_g11806_ (values-count _g11805_)))
                                      (if (not (fx= _g11806_ 2))
                                          (error "Context expects 2 values"
                                                 _g11806_)))
                                    (let ((_target1124511279_
                                           (values-ref _g11805_ 0))
                                          (_tl1124711281_
                                           (values-ref _g11805_ 1)))
                                      (if (gx#stx-null? _tl1124711281_)
                                          (letrec ((_loop1124811284_
                                                    (lambda (_hd1124611287_
                                                             _body1125211289_
                                                             _hd1125311291_)
                                                      (if (gx#stx-pair?
                                                           _hd1124611287_)
                                                          (let ((_e1124911294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1124611287_)))
                    (let ((_lp-hd1125011297_ (##car _e1124911294_))
                          (_lp-tl1125111299_ (##cdr _e1124911294_)))
                      (if (gx#stx-pair? _lp-hd1125011297_)
                          (let ((_e1125611302_ (gx#stx-e _lp-hd1125011297_)))
                            (let ((_hd1125711305_ (##car _e1125611302_))
                                  (_tl1125811307_ (##cdr _e1125611302_)))
                              (if (gx#stx-pair? _tl1125811307_)
                                  (let ((_e1125911310_
                                         (gx#stx-e _tl1125811307_)))
                                    (let ((_hd1126011313_
                                           (##car _e1125911310_))
                                          (_tl1126111315_
                                           (##cdr _e1125911310_)))
                                      (if (gx#stx-null? _tl1126111315_)
                                          (_loop1124811284_
                                           _lp-tl1125111299_
                                           (cons _hd1126011313_
                                                 _body1125211289_)
                                           (cons _hd1125711305_
                                                 _hd1125311291_))
                                          (_g1123811266_ _g1123911269_))))
                                  (_g1123811266_ _g1123911269_))))
                          (_g1123811266_ _g1123911269_))))
                  (let ((_body1125411318_ (reverse _body1125211289_))
                        (_hd1125511320_ (reverse _hd1125311291_)))
                    ((lambda (_L11323_ _L11324_)
                       (for-each
                        (lambda (_g1133811340_)
                          (apply gxc#compile-e _g1133811340_ _args11236_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1134211345_ _g1134311347_)
                                    (cons _g1134211345_ _g1134311347_))
                                  '()
                                  _L11323_))))
                     _body1125411318_
                     _hd1125511320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1124811284_
                                             _target1124511279_
                                             '()
                                             '()))
                                          (_g1123811266_ _g1123911269_)))))
                                (_g1123811266_ _g1123911269_))
                            (_g1123811266_ _g1123911269_))))
                    (_g1123811266_ _g1123911269_)))))
        (_g1123711350_ _stx11235_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11088_ . _args11089_)
      (let* ((_g1109111126_
              (lambda (_g1109211123_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1109211123_)))
             (_g1109011232_
              (lambda (_g1109211129_)
                (if (gx#stx-pair? _g1109211129_)
                    (let ((_e1109611131_ (gx#stx-e _g1109211129_)))
                      (let ((_hd1109711134_ (##car _e1109611131_))
                            (_tl1109811136_ (##cdr _e1109611131_)))
                        (if (gx#stx-pair? _tl1109811136_)
                            (let ((_e1109911139_ (gx#stx-e _tl1109811136_)))
                              (let ((_hd1110011142_ (##car _e1109911139_))
                                    (_tl1110111144_ (##cdr _e1109911139_)))
                                (if (gx#stx-pair/null? _hd1110011142_)
                                    (if (fx>= (gx#stx-length _hd1110011142_)
                                              '0)
                                        (let ((_g11807_
                                               (gx#syntax-split-splice
                                                _hd1110011142_
                                                '0)))
                                          (begin
                                            (let ((_g11808_
                                                   (values-count _g11807_)))
                                              (if (not (fx= _g11808_ 2))
                                                  (error "Context expects 2 values"
                                                         _g11808_)))
                                            (let ((_target1110211147_
                                                   (values-ref _g11807_ 0))
                                                  (_tl1110411149_
                                                   (values-ref _g11807_ 1)))
                                              (if (gx#stx-null? _tl1110411149_)
                                                  (letrec ((_loop1110511152_
                                                            (lambda (_hd1110311155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1110911157_
                             _hd1111011159_)
                      (if (gx#stx-pair? _hd1110311155_)
                          (let ((_e1110611162_ (gx#stx-e _hd1110311155_)))
                            (let ((_lp-hd1110711165_ (##car _e1110611162_))
                                  (_lp-tl1110811167_ (##cdr _e1110611162_)))
                              (if (gx#stx-pair? _lp-hd1110711165_)
                                  (let ((_e1111311170_
                                         (gx#stx-e _lp-hd1110711165_)))
                                    (let ((_hd1111411173_
                                           (##car _e1111311170_))
                                          (_tl1111511175_
                                           (##cdr _e1111311170_)))
                                      (if (gx#stx-pair? _tl1111511175_)
                                          (let ((_e1111611178_
                                                 (gx#stx-e _tl1111511175_)))
                                            (let ((_hd1111711181_
                                                   (##car _e1111611178_))
                                                  (_tl1111811183_
                                                   (##cdr _e1111611178_)))
                                              (if (gx#stx-null? _tl1111811183_)
                                                  (_loop1110511152_
                                                   _lp-tl1110811167_
                                                   (cons _hd1111711181_
                                                         _expr1110911157_)
                                                   (cons _hd1111411173_
                                                         _hd1111011159_))
                                                  (_g1109111126_
                                                   _g1109211129_))))
                                          (_g1109111126_ _g1109211129_))))
                                  (_g1109111126_ _g1109211129_))))
                          (let ((_expr1111111186_ (reverse _expr1110911157_))
                                (_hd1111211188_ (reverse _hd1111011159_)))
                            (if (gx#stx-pair? _tl1110111144_)
                                (let ((_e1111911191_
                                       (gx#stx-e _tl1110111144_)))
                                  (let ((_hd1112011194_ (##car _e1111911191_))
                                        (_tl1112111196_ (##cdr _e1111911191_)))
                                    (if (gx#stx-null? _tl1112111196_)
                                        ((lambda (_L11199_ _L11200_ _L11201_)
                                           (for-each
                                            (lambda (_g1122011222_)
                                              (apply gxc#compile-e
                                                     _g1122011222_
                                                     _args11089_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1122411227_
                                                               _g1122511229_)
                                                        (cons _g1122411227_
                                                              _g1122511229_))
                                                      (cons _L11199_ '())
                                                      _L11200_))))
                                         _hd1112011194_
                                         _expr1111111186_
                                         _hd1111211188_)
                                        (_g1109111126_ _g1109211129_))))
                                (_g1109111126_ _g1109211129_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1110511152_
                                                     _target1110211147_
                                                     '()
                                                     '()))
                                                  (_g1109111126_
                                                   _g1109211129_)))))
                                        (_g1109111126_ _g1109211129_))
                                    (_g1109111126_ _g1109211129_))))
                            (_g1109111126_ _g1109211129_))))
                    (_g1109111126_ _g1109211129_)))))
        (_g1109011232_ _stx11088_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11020_ . _args11021_)
      (let* ((_g1102311040_
              (lambda (_g1102411037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1102411037_)))
             (_g1102211085_
              (lambda (_g1102411043_)
                (if (gx#stx-pair? _g1102411043_)
                    (let ((_e1102711045_ (gx#stx-e _g1102411043_)))
                      (let ((_hd1102811048_ (##car _e1102711045_))
                            (_tl1102911050_ (##cdr _e1102711045_)))
                        (if (gx#stx-pair? _tl1102911050_)
                            (let ((_e1103011053_ (gx#stx-e _tl1102911050_)))
                              (let ((_hd1103111056_ (##car _e1103011053_))
                                    (_tl1103211058_ (##cdr _e1103011053_)))
                                (if (gx#stx-pair? _tl1103211058_)
                                    (let ((_e1103311061_
                                           (gx#stx-e _tl1103211058_)))
                                      (let ((_hd1103411064_
                                             (##car _e1103311061_))
                                            (_tl1103511066_
                                             (##cdr _e1103311061_)))
                                        (if (gx#stx-null? _tl1103511066_)
                                            ((lambda (_L11069_ _L11070_)
                                               (apply gxc#compile-e
                                                      _L11069_
                                                      _args11021_))
                                             _hd1103411064_
                                             _hd1103111056_)
                                            (_g1102311040_ _g1102411043_))))
                                    (_g1102311040_ _g1102411043_))))
                            (_g1102311040_ _g1102411043_))))
                    (_g1102311040_ _g1102411043_)))))
        (_g1102211085_ _stx11020_))))
  (define gxc#collect-operands
    (lambda (_stx10933_ . _args10934_)
      (let* ((_g1093610955_
              (lambda (_g1093710952_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1093710952_)))
             (_g1093511017_
              (lambda (_g1093710958_)
                (if (gx#stx-pair? _g1093710958_)
                    (let ((_e1093910960_ (gx#stx-e _g1093710958_)))
                      (let ((_hd1094010963_ (##car _e1093910960_))
                            (_tl1094110965_ (##cdr _e1093910960_)))
                        (if (gx#stx-pair/null? _tl1094110965_)
                            (if (fx>= (gx#stx-length _tl1094110965_) '0)
                                (let ((_g11809_
                                       (gx#syntax-split-splice
                                        _tl1094110965_
                                        '0)))
                                  (begin
                                    (let ((_g11810_ (values-count _g11809_)))
                                      (if (not (fx= _g11810_ 2))
                                          (error "Context expects 2 values"
                                                 _g11810_)))
                                    (let ((_target1094210968_
                                           (values-ref _g11809_ 0))
                                          (_tl1094410970_
                                           (values-ref _g11809_ 1)))
                                      (if (gx#stx-null? _tl1094410970_)
                                          (letrec ((_loop1094510973_
                                                    (lambda (_hd1094310976_
                                                             _rands1094910978_)
                                                      (if (gx#stx-pair?
                                                           _hd1094310976_)
                                                          (let ((_e1094610981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1094310976_)))
                    (let ((_lp-hd1094710984_ (##car _e1094610981_))
                          (_lp-tl1094810986_ (##cdr _e1094610981_)))
                      (_loop1094510973_
                       _lp-tl1094810986_
                       (cons _lp-hd1094710984_ _rands1094910978_))))
                  (let ((_rands1095010989_ (reverse _rands1094910978_)))
                    ((lambda (_L10992_)
                       (for-each
                        (lambda (_g1100511007_)
                          (apply gxc#compile-e _g1100511007_ _args10934_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1100911012_ _g1101011014_)
                                    (cons _g1100911012_ _g1101011014_))
                                  '()
                                  _L10992_))))
                     _rands1095010989_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1094510973_
                                             _target1094210968_
                                             '()))
                                          (_g1093610955_ _g1093710958_)))))
                                (_g1093610955_ _g1093710958_))
                            (_g1093610955_ _g1093710958_))))
                    (_g1093610955_ _g1093710958_)))))
        (_g1093511017_ _stx10933_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx10864_)
      (let* ((_g1086610883_
              (lambda (_g1086710880_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1086710880_)))
             (_g1086510930_
              (lambda (_g1086710886_)
                (if (gx#stx-pair? _g1086710886_)
                    (let ((_e1087010888_ (gx#stx-e _g1086710886_)))
                      (let ((_hd1087110891_ (##car _e1087010888_))
                            (_tl1087210893_ (##cdr _e1087010888_)))
                        (if (gx#stx-pair? _tl1087210893_)
                            (let ((_e1087310896_ (gx#stx-e _tl1087210893_)))
                              (let ((_hd1087410899_ (##car _e1087310896_))
                                    (_tl1087510901_ (##cdr _e1087310896_)))
                                (if (gx#stx-pair? _tl1087510901_)
                                    (let ((_e1087610904_
                                           (gx#stx-e _tl1087510901_)))
                                      (let ((_hd1087710907_
                                             (##car _e1087610904_))
                                            (_tl1087810909_
                                             (##cdr _e1087610904_)))
                                        (if (gx#stx-null? _tl1087810909_)
                                            ((lambda (_L10912_ _L10913_)
                                               (gx#stx-for-each1
                                                (lambda (_bind10928_)
                                                  (if (gx#identifier?
                                                       _bind10928_)
                                                      (gxc#add-module-binding!
                                                       _bind10928_
                                                       '#f)
                                                      '#!void))
                                                _L10913_))
                                             _hd1087710907_
                                             _hd1087410899_)
                                            (_g1086610883_ _g1086710886_))))
                                    (_g1086610883_ _g1086710886_))))
                            (_g1086610883_ _g1086710886_))))
                    (_g1086610883_ _g1086710886_)))))
        (_g1086510930_ _stx10864_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx10797_)
      (let* ((_g1079910816_
              (lambda (_g1080010813_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1080010813_)))
             (_g1079810861_
              (lambda (_g1080010819_)
                (if (gx#stx-pair? _g1080010819_)
                    (let ((_e1080310821_ (gx#stx-e _g1080010819_)))
                      (let ((_hd1080410824_ (##car _e1080310821_))
                            (_tl1080510826_ (##cdr _e1080310821_)))
                        (if (gx#stx-pair? _tl1080510826_)
                            (let ((_e1080610829_ (gx#stx-e _tl1080510826_)))
                              (let ((_hd1080710832_ (##car _e1080610829_))
                                    (_tl1080810834_ (##cdr _e1080610829_)))
                                (if (gx#stx-pair? _tl1080810834_)
                                    (let ((_e1080910837_
                                           (gx#stx-e _tl1080810834_)))
                                      (let ((_hd1081010840_
                                             (##car _e1080910837_))
                                            (_tl1081110842_
                                             (##cdr _e1080910837_)))
                                        (if (gx#stx-null? _tl1081110842_)
                                            ((lambda (_L10845_ _L10846_)
                                               (gxc#add-module-binding!
                                                _L10846_
                                                '#t))
                                             _hd1081010840_
                                             _hd1080710832_)
                                            (_g1079910816_ _g1080010819_))))
                                    (_g1079910816_ _g1080010819_))))
                            (_g1079910816_ _g1080010819_))))
                    (_g1079910816_ _g1080010819_)))))
        (_g1079810861_ _stx10797_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10739_ _modules10740_)
      (let* ((_g1074210756_
              (lambda (_g1074310753_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1074310753_)))
             (_g1074110794_
              (lambda (_g1074310759_)
                (if (gx#stx-pair? _g1074310759_)
                    (let ((_e1074610761_ (gx#stx-e _g1074310759_)))
                      (let ((_hd1074710764_ (##car _e1074610761_))
                            (_tl1074810766_ (##cdr _e1074610761_)))
                        (if (gx#stx-pair? _tl1074810766_)
                            (let ((_e1074910769_ (gx#stx-e _tl1074810766_)))
                              (let ((_hd1075010772_ (##car _e1074910769_))
                                    (_tl1075110774_ (##cdr _e1074910769_)))
                                ((lambda (_L10777_ _L10778_)
                                   (let ((_ctx10791_
                                          (gx#syntax-local-e__0 _L10778_)))
                                     (begin
                                       (set-box!
                                        _modules10740_
                                        (cons _ctx10791_
                                              (unbox _modules10740_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx10791_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10740_))
                                        gx#current-expander-context
                                        _ctx10791_))))
                                 _tl1075110774_
                                 _hd1075010772_)))
                            (_g1074210756_ _g1074310759_))))
                    (_g1074210756_ _g1074310759_)))))
        (_g1074110794_ _stx10739_))))
  (define gxc#add-module-binding!
    (lambda (_id10733_ _syntax?10734_)
      (let ((_eid10736_
             (##structure-ref
              (gx#resolve-identifier__0 _id10733_)
              '1
              gx#binding::t
              '#f))
            (_ht10737_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10736_)
            '#!void
            (table-set!
             _ht10737_
             _eid10736_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10736_)
              _syntax?10734_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10714_)
      (let ((_bind10716_ (gx#resolve-identifier__0 _id10714_)))
        (if _bind10716_
            (let ((_eid10718_
                   (##structure-ref _bind10716_ '1 gx#binding::t '#f))
                  (_ht10719_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10718_)
                  _eid10718_
                  (let ((_$e10721_ (table-ref _ht10719_ _eid10718_ '#f)))
                    (if _$e10721_
                        (values _$e10721_)
                        (if (##structure-instance-of?
                             _bind10716_
                             'gx#local-binding::t)
                            (let ((_gid10724_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10718_)))
                              (begin
                                (table-set! _ht10719_ _eid10718_ _gid10724_)
                                _gid10724_))
                            (if (##structure-instance-of?
                                 _bind10716_
                                 'gx#module-binding::t)
                                (let ((_gid10731_
                                       (let ((_$e10726_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10716_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10726_
                                             ((lambda (_ns10729_)
                                                (make-symbol
                                                 _ns10729_
                                                 '"#"
                                                 _eid10718_))
                                              _$e10726_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10718_)))))
                                  (begin
                                    (table-set!
                                     _ht10719_
                                     _eid10718_
                                     _gid10731_)
                                    _gid10731_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10714_
                                 _eid10718_
                                 _bind10716_)))))))
            (if (interned-symbol? (gx#stx-e _id10714_))
                (gx#stx-e _id10714_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10714_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10712_)
      (if (gx#identifier? _id10712_)
          (gxc#generate-runtime-binding-id _id10712_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10690
      (lambda (_sym10692_ _quote?10693_)
        (let* ((_ht10695_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10697_ (table-ref _ht10695_ _sym10692_ '#f)))
          (if _$e10697_
              (values _$e10697_)
              (let ((_g10700_
                     (if _quote?10693_
                         (make-symbol
                          '"__"
                          _sym10692_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10692_ '"_"))))
                (begin
                  (table-set! _ht10695_ _sym10692_ _g10700_)
                  _g10700_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10705_)
          (let ((_quote?10707_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10690
             _sym10705_
             _quote?10707_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g11812_
          (let ((_g11811_ (length _g11812_)))
            (cond ((fx= _g11811_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g11812_))
                  ((fx= _g11811_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10690
                          _g11812_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g11812_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10689_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10689_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10649_)
      (if (interned-symbol? _key10649_)
          _key10649_
          (if (uninterned-symbol? _key10649_)
              (gxc#generate-runtime-gensym-reference__0 _key10649_)
              (let* ((_key1065010657_ _key10649_)
                     (_E1065210661_
                      (lambda ()
                        (error '"No clause matching" _key1065010657_)))
                     (_K1065310677_
                      (lambda (_mark10664_ _eid10665_)
                        (let ((_$e10667_
                               (##structure-ref
                                _mark10664_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10667_
                              ((lambda (_ht10670_)
                                 (let ((_$e10672_
                                        (table-ref _ht10670_ _eid10665_ '#f)))
                                   (if _$e10672_
                                       ((lambda (_id10675_)
                                          (if (interned-symbol? _id10675_)
                                              _id10675_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10675_)))
                                        _$e10672_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10665_))))
                               _$e10667_)
                              (gxc#generate-runtime-identifier-key
                               _eid10665_))))))
                (if (##pair? _key1065010657_)
                    (let ((_hd1065410680_ (##car _key1065010657_))
                          (_tl1065510682_ (##cdr _key1065010657_)))
                      (let* ((_eid10685_ _hd1065410680_)
                             (_mark10687_ _tl1065510682_))
                        (_K1065310677_ _mark10687_ _eid10685_)))
                    (_E1065210661_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10634
      (lambda (_top10636_)
        (if _top10636_
            (let ((_ns10638_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10639_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10639_)
                  (make-symbol
                   _ns10638_
                   '"["
                   (number->string _phi10639_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10638_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10645_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10634 _top10645_))))
      (define gxc#generate-runtime-temporary
        (lambda _g11814_
          (let ((_g11813_ (length _g11814_)))
            (cond ((fx= _g11813_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g11814_))
                  ((fx= _g11813_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10634
                          _g11814_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g11814_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10633_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10553_)
      (let* ((_g1055510565_
              (lambda (_g1055610562_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1055610562_)))
             (_g1055410630_
              (lambda (_g1055610568_)
                (if (gx#stx-pair? _g1055610568_)
                    (let ((_e1055810570_ (gx#stx-e _g1055610568_)))
                      (let ((_hd1055910573_ (##car _e1055810570_))
                            (_tl1056010575_ (##cdr _e1055810570_)))
                        ((lambda (_L10578_)
                           (let* ((_body10588_
                                   (gx#stx-map1 gxc#compile-e _L10578_))
                                  (_body10627_
                                   (filter (lambda (_stx10590_)
                                             (let* ((_g1059310602_
                                                     (lambda (_g1059410599_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1059410599_)))
                                                    (_g1059210609_
                                                     (lambda (_g1059410605_)
                                                       ((lambda () '#t))))
                                                    (_g1059110624_
                                                     (lambda (_g1059410612_)
                                                       (if (gx#stx-pair?
                                                            _g1059410612_)
                                                           (let ((_e1059510614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1059410612_)))
                     (let ((_hd1059610617_ (##car _e1059510614_))
                           (_tl1059710619_ (##cdr _e1059510614_)))
                       (if (gx#identifier? _hd1059610617_)
                           (if (gx#stx-eq? 'begin _hd1059610617_)
                               (if (gx#stx-null? _tl1059710619_)
                                   ((lambda () '#f))
                                   (_g1059210609_ _g1059410612_))
                               (_g1059210609_ _g1059410612_))
                           (_g1059210609_ _g1059410612_))))
                   (_g1059210609_ _g1059410612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1059110624_ _stx10590_)))
                                           _body10588_)))
                             (if (fx= (length _body10627_) '1)
                                 (car _body10627_)
                                 (cons 'begin _body10627_))))
                         _tl1056010575_)))
                    (_g1055510565_ _g1055610568_)))))
        (_g1055410630_ _stx10553_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10515_)
      (let* ((_g1051710527_
              (lambda (_g1051810524_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1051810524_)))
             (_g1051610550_
              (lambda (_g1051810530_)
                (if (gx#stx-pair? _g1051810530_)
                    (let ((_e1052010532_ (gx#stx-e _g1051810530_)))
                      (let ((_hd1052110535_ (##car _e1052010532_))
                            (_tl1052210537_ (##cdr _e1052010532_)))
                        ((lambda (_L10540_)
                           (cons 'begin (gx#syntax->datum _L10540_)))
                         _tl1052210537_)))
                    (_g1051710527_ _g1051810530_)))))
        (_g1051610550_ _stx10515_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10448_)
      (let* ((_g1045010467_
              (lambda (_g1045110464_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1045110464_)))
             (_g1044910512_
              (lambda (_g1045110470_)
                (if (gx#stx-pair? _g1045110470_)
                    (let ((_e1045410472_ (gx#stx-e _g1045110470_)))
                      (let ((_hd1045510475_ (##car _e1045410472_))
                            (_tl1045610477_ (##cdr _e1045410472_)))
                        (if (gx#stx-pair? _tl1045610477_)
                            (let ((_e1045710480_ (gx#stx-e _tl1045610477_)))
                              (let ((_hd1045810483_ (##car _e1045710480_))
                                    (_tl1045910485_ (##cdr _e1045710480_)))
                                (if (gx#stx-pair? _tl1045910485_)
                                    (let ((_e1046010488_
                                           (gx#stx-e _tl1045910485_)))
                                      (let ((_hd1046110491_
                                             (##car _e1046010488_))
                                            (_tl1046210493_
                                             (##cdr _e1046010488_)))
                                        (if (gx#stx-null? _tl1046210493_)
                                            ((lambda (_L10496_ _L10497_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10497_))
                   (cons (gxc#compile-e _L10496_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1046110491_
                                             _hd1045810483_)
                                            (_g1045010467_ _g1045110470_))))
                                    (_g1045010467_ _g1045110470_))))
                            (_g1045010467_ _g1045110470_))))
                    (_g1045010467_ _g1045110470_)))))
        (_g1044910512_ _stx10448_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10410_)
      (let* ((_g1041210422_
              (lambda (_g1041310419_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1041310419_)))
             (_g1041110445_
              (lambda (_g1041310425_)
                (if (gx#stx-pair? _g1041310425_)
                    (let ((_e1041510427_ (gx#stx-e _g1041310425_)))
                      (let ((_hd1041610430_ (##car _e1041510427_))
                            (_tl1041710432_ (##cdr _e1041510427_)))
                        ((lambda (_L10435_)
                           (cons 'declare (map gx#syntax->datum _L10435_)))
                         _tl1041710432_)))
                    (_g1041210422_ _g1041310425_)))))
        (_g1041110445_ _stx10410_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10166_)
      (let* ((_g1016810185_
              (lambda (_g1016910182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1016910182_)))
             (_g1016710407_
              (lambda (_g1016910188_)
                (if (gx#stx-pair? _g1016910188_)
                    (let ((_e1017210190_ (gx#stx-e _g1016910188_)))
                      (let ((_hd1017310193_ (##car _e1017210190_))
                            (_tl1017410195_ (##cdr _e1017210190_)))
                        (if (gx#stx-pair? _tl1017410195_)
                            (let ((_e1017510198_ (gx#stx-e _tl1017410195_)))
                              (let ((_hd1017610201_ (##car _e1017510198_))
                                    (_tl1017710203_ (##cdr _e1017510198_)))
                                (if (gx#stx-pair? _tl1017710203_)
                                    (let ((_e1017810206_
                                           (gx#stx-e _tl1017710203_)))
                                      (let ((_hd1017910209_
                                             (##car _e1017810206_))
                                            (_tl1018010211_
                                             (##cdr _e1017810206_)))
                                        (if (gx#stx-null? _tl1018010211_)
                                            ((lambda (_L10214_ _L10215_)
                                               (let* ((_g1023210245_
                                                       (lambda (_g1023310242_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1023310242_)))
                                                      (_g1023110359_
                                                       (lambda (_g1023310248_)
                                                         ((lambda ()
                                                            (let* ((_tmp10252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10634
                             '#t))
                           (_body10356_
                            (let _lp10254_ ((_rest10256_ _L10215_)
                                            (_k10257_ '0)
                                            (_r10258_ '()))
                              (let* ((_g1026310279_
                                      (lambda (_g1026410276_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1026410276_)))
                                     (_g1026210286_
                                      (lambda (_g1026410282_)
                                        ((lambda () (reverse _r10258_)))))
                                     (_g1026110307_
                                      (lambda (_g1026410289_)
                                        ((lambda (_L10291_)
                                           (if (gx#identifier? _L10291_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10291_)
                                 (cons (cons 'values->list
                                             (cons _tmp10252_
                                                   (cons _k10257_ '())))
                                       '())))
                     '())
               _r10258_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1026210286_ _g1026410289_)))
                                         _g1026410289_)))
                                     (_g1026010331_
                                      (lambda (_g1026410310_)
                                        (if (gx#stx-pair? _g1026410310_)
                                            (let ((_e1027110312_
                                                   (gx#stx-e _g1026410310_)))
                                              (let ((_hd1027210315_
                                                     (##car _e1027110312_))
                                                    (_tl1027310317_
                                                     (##cdr _e1027110312_)))
                                                ((lambda (_L10320_ _L10321_)
                                                   (_lp10254_
                                                    _L10320_
                                                    (fx+ _k10257_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10321_)
                              (cons (cons 'values-ref
                                          (cons _tmp10252_
                                                (cons _k10257_ '())))
                                    '())))
                  _r10258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1027310317_
                                                 _hd1027210315_)))
                                            (_g1026110307_ _g1026410310_))))
                                     (_g1025910353_
                                      (lambda (_g1026410334_)
                                        (if (gx#stx-pair? _g1026410334_)
                                            (let ((_e1026610336_
                                                   (gx#stx-e _g1026410334_)))
                                              (let ((_hd1026710339_
                                                     (##car _e1026610336_))
                                                    (_tl1026810341_
                                                     (##cdr _e1026610336_)))
                                                (if (gx#stx-datum?
                                                     _hd1026710339_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1026710339_)
                        '#f)
                ((lambda (_L10344_)
                   (_lp10254_ _L10344_ (fx+ _k10257_ '1) _r10258_))
                 _tl1026810341_)
                (_g1026010331_ _g1026410334_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1026010331_
                                                     _g1026410334_))))
                                            (_g1026010331_ _g1026410334_)))))
                                (_g1025910353_ _rest10256_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10252_
                                              (cons (gxc#compile-e _L10214_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10252_
                                         _L10215_)
                                        _body10356_))))))))
              (_g1023010389_
               (lambda (_g1023310362_)
                 (if (gx#stx-pair? _g1023310362_)
                     (let ((_e1023810364_ (gx#stx-e _g1023310362_)))
                       (let ((_hd1023910367_ (##car _e1023810364_))
                             (_tl1024010369_ (##cdr _e1023810364_)))
                         (if (gx#stx-null? _tl1024010369_)
                             ((lambda (_L10372_)
                                (let ((_eid10381_
                                       (gxc#generate-runtime-binding-id
                                        _L10372_)))
                                  (begin
                                    (let ((_lambda-expr1038210384_
                                           (gxc#apply-find-lambda-expression
                                            _L10214_)))
                                      (if _lambda-expr1038210384_
                                          (let ((_lambda-expr10387_
                                                 _lambda-expr1038210384_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10387_
                                             _eid10381_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10381_
                                                (cons (gxc#compile-e _L10214_)
                                                      '()))))))
                              _hd1023910367_)
                             (_g1023110359_ _g1023310362_))))
                     (_g1023110359_ _g1023310362_))))
              (_g1022910404_
               (lambda (_g1023310392_)
                 (if (gx#stx-pair? _g1023310392_)
                     (let ((_e1023410394_ (gx#stx-e _g1023310392_)))
                       (let ((_hd1023510397_ (##car _e1023410394_))
                             (_tl1023610399_ (##cdr _e1023410394_)))
                         (if (gx#stx-datum? _hd1023510397_)
                             (if (equal? (gx#stx-e _hd1023510397_) '#f)
                                 (if (gx#stx-null? _tl1023610399_)
                                     ((lambda () (gxc#compile-e _L10214_)))
                                     (_g1023010389_ _g1023310392_))
                                 (_g1023010389_ _g1023310392_))
                             (_g1023010389_ _g1023310392_))))
                     (_g1023010389_ _g1023310392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1022910404_ _L10215_)))
                                             _hd1017910209_
                                             _hd1017610201_)
                                            (_g1016810185_ _g1016910188_))))
                                    (_g1016810185_ _g1016910188_))))
                            (_g1016810185_ _g1016910188_))))
                    (_g1016810185_ _g1016910188_)))))
        (_g1016710407_ _stx10166_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10154_ _hd10155_)
      (let* ((_len10157_ (gx#stx-length _hd10155_))
             (_cmp10159_ (if (gx#stx-list? _hd10155_) 'fx= 'fx>=))
             (_errmsg10161_
              (string-append
               (if (gx#stx-list? _hd10155_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10157_)
               '" values"))
             (_count10163_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10155_)) (fx= _len10157_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10163_
                                    (cons (cons 'values-count
                                                (cons _vals10154_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10159_
                                                            (cons _count10163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10157_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10161_
                                                            (cons _count10163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10087_)
      (let* ((_g1008910106_
              (lambda (_g1009010103_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1009010103_)))
             (_g1008810151_
              (lambda (_g1009010109_)
                (if (gx#stx-pair? _g1009010109_)
                    (let ((_e1009310111_ (gx#stx-e _g1009010109_)))
                      (let ((_hd1009410114_ (##car _e1009310111_))
                            (_tl1009510116_ (##cdr _e1009310111_)))
                        (if (gx#stx-pair? _tl1009510116_)
                            (let ((_e1009610119_ (gx#stx-e _tl1009510116_)))
                              (let ((_hd1009710122_ (##car _e1009610119_))
                                    (_tl1009810124_ (##cdr _e1009610119_)))
                                (if (gx#stx-pair? _tl1009810124_)
                                    (let ((_e1009910127_
                                           (gx#stx-e _tl1009810124_)))
                                      (let ((_hd1010010130_
                                             (##car _e1009910127_))
                                            (_tl1010110132_
                                             (##cdr _e1009910127_)))
                                        (if (gx#stx-null? _tl1010110132_)
                                            ((lambda (_L10135_ _L10136_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10136_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10135_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1010010130_
                                             _hd1009710122_)
                                            (_g1008910106_ _g1009010109_))))
                                    (_g1008910106_ _g1009010109_))))
                            (_g1008910106_ _g1009010109_))))
                    (_g1008910106_ _g1009010109_)))))
        (_g1008810151_ _stx10087_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10085_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10085_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8618_)
      (letrec ((_runtime-identifier=?8620_
                (lambda (_id-stx10076_ _sym10077_)
                  (let ((_bind1007810080_
                         (gx#resolve-identifier__0 _id-stx10076_)))
                    (if _bind1007810080_
                        (let ((_bind10083_ _bind1007810080_))
                          (eq? (##structure-ref
                                _bind10083_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10077_))
                        '#f))))
               (_dispatch-case?8621_
                (lambda (_hd9306_ _body9307_)
                  (let* ((_form9309_ (cons _hd9306_ (cons _body9307_ '())))
                         (_g93149471_
                          (lambda (_g93159468_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g93159468_)))
                         (_g93139478_ (lambda (_g93159474_) ((lambda () '#f))))
                         (_g93129619_
                          (lambda (_g93159481_)
                            (if (gx#stx-pair? _g93159481_)
                                (let ((_e94319483_ (gx#stx-e _g93159481_)))
                                  (let ((_hd94329486_ (##car _e94319483_))
                                        (_tl94339488_ (##cdr _e94319483_)))
                                    (if (gx#stx-pair? _tl94339488_)
                                        (let ((_e94349491_
                                               (gx#stx-e _tl94339488_)))
                                          (let ((_hd94359494_
                                                 (##car _e94349491_))
                                                (_tl94369496_
                                                 (##cdr _e94349491_)))
                                            (if (gx#stx-pair? _hd94359494_)
                                                (let ((_e94379499_
                                                       (gx#stx-e
                                                        _hd94359494_)))
                                                  (let ((_hd94389502_
                                                         (##car _e94379499_))
                                                        (_tl94399504_
                                                         (##cdr _e94379499_)))
                                                    (if (gx#identifier?
                                                         _hd94389502_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd94389502_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94399504_)
                        (let ((_e94409507_ (gx#stx-e _tl94399504_)))
                          (let ((_hd94419510_ (##car _e94409507_))
                                (_tl94429512_ (##cdr _e94409507_)))
                            (if (gx#stx-pair? _hd94419510_)
                                (let ((_e94439515_ (gx#stx-e _hd94419510_)))
                                  (let ((_hd94449518_ (##car _e94439515_))
                                        (_tl94459520_ (##cdr _e94439515_)))
                                    (if (gx#identifier? _hd94449518_)
                                        (if (gx#stx-eq? '%#ref _hd94449518_)
                                            (if (gx#stx-pair? _tl94459520_)
                                                (let ((_e94469523_
                                                       (gx#stx-e
                                                        _tl94459520_)))
                                                  (let ((_hd94479526_
                                                         (##car _e94469523_))
                                                        (_tl94489528_
                                                         (##cdr _e94469523_)))
                                                    (if (gx#stx-null?
                                                         _tl94489528_)
                                                        (if (gx#stx-pair?
                                                             _tl94429512_)
                                                            (let ((_e94499531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl94429512_)))
                      (let ((_hd94509534_ (##car _e94499531_))
                            (_tl94519536_ (##cdr _e94499531_)))
                        (if (gx#stx-pair? _hd94509534_)
                            (let ((_e94529539_ (gx#stx-e _hd94509534_)))
                              (let ((_hd94539542_ (##car _e94529539_))
                                    (_tl94549544_ (##cdr _e94529539_)))
                                (if (gx#identifier? _hd94539542_)
                                    (if (gx#stx-eq? '%#ref _hd94539542_)
                                        (if (gx#stx-pair? _tl94549544_)
                                            (let ((_e94559547_
                                                   (gx#stx-e _tl94549544_)))
                                              (let ((_hd94569550_
                                                     (##car _e94559547_))
                                                    (_tl94579552_
                                                     (##cdr _e94559547_)))
                                                (if (gx#stx-null? _tl94579552_)
                                                    (if (gx#stx-pair?
                                                         _tl94519536_)
                                                        (let ((_e94589555_
                                                               (gx#stx-e
                                                                _tl94519536_)))
                                                          (let ((_hd94599558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e94589555_))
                        (_tl94609560_ (##cdr _e94589555_)))
                    (if (gx#stx-pair? _hd94599558_)
                        (let ((_e94619563_ (gx#stx-e _hd94599558_)))
                          (let ((_hd94629566_ (##car _e94619563_))
                                (_tl94639568_ (##cdr _e94619563_)))
                            (if (gx#identifier? _hd94629566_)
                                (if (gx#stx-eq? '%#ref _hd94629566_)
                                    (if (gx#stx-pair? _tl94639568_)
                                        (let ((_e94649571_
                                               (gx#stx-e _tl94639568_)))
                                          (let ((_hd94659574_
                                                 (##car _e94649571_))
                                                (_tl94669576_
                                                 (##cdr _e94649571_)))
                                            (if (gx#stx-null? _tl94669576_)
                                                (if (gx#stx-null? _tl94609560_)
                                                    (if (gx#stx-null?
                                                         _tl94369496_)
                                                        ((lambda (_L9579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9580_
                          _L9581_
                          _L9582_)
                   (if (if (gx#identifier? _L9582_)
                           (if (_runtime-identifier=?8620_ _L9581_ 'apply)
                               (if (gx#free-identifier=? _L9582_ _L9579_)
                                   (not (gx#free-identifier=? _L9580_ _L9582_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g93139478_ _g93159481_)))
                 _hd94659574_
                 _hd94569550_
                 _hd94479526_
                 _hd94329486_)
                (_g93139478_ _g93159481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93139478_ _g93159481_))
                                                (_g93139478_ _g93159481_))))
                                        (_g93139478_ _g93159481_))
                                    (_g93139478_ _g93159481_))
                                (_g93139478_ _g93159481_))))
                        (_g93139478_ _g93159481_))))
                (_g93139478_ _g93159481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93139478_
                                                     _g93159481_))))
                                            (_g93139478_ _g93159481_))
                                        (_g93139478_ _g93159481_))
                                    (_g93139478_ _g93159481_))))
                            (_g93139478_ _g93159481_))))
                    (_g93139478_ _g93159481_))
                (_g93139478_ _g93159481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93139478_ _g93159481_))
                                            (_g93139478_ _g93159481_))
                                        (_g93139478_ _g93159481_))))
                                (_g93139478_ _g93159481_))))
                        (_g93139478_ _g93159481_))
                    (_g93139478_ _g93159481_))
                (_g93139478_ _g93159481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93139478_ _g93159481_))))
                                        (_g93139478_ _g93159481_))))
                                (_g93139478_ _g93159481_))))
                         (_g93119879_
                          (lambda (_g93159622_)
                            (if (gx#stx-pair? _g93159622_)
                                (let ((_e93679624_ (gx#stx-e _g93159622_)))
                                  (let ((_hd93689627_ (##car _e93679624_))
                                        (_tl93699629_ (##cdr _e93679624_)))
                                    (if (gx#stx-pair/null? _hd93689627_)
                                        (if (fx>= (gx#stx-length _hd93689627_)
                                                  '0)
                                            (let ((_g11815_
                                                   (gx#syntax-split-splice
                                                    _hd93689627_
                                                    '0)))
                                              (begin
                                                (let ((_g11816_
                                                       (values-count
                                                        _g11815_)))
                                                  (if (not (fx= _g11816_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11816_)))
                                                (let ((_target93709632_
                                                       (values-ref _g11815_ 0))
                                                      (_tl93729634_
                                                       (values-ref
                                                        _g11815_
                                                        1)))
                                                  (letrec ((_loop93739637_
                                                            (lambda (_hd93719640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg93779642_)
                      (if (gx#stx-pair? _hd93719640_)
                          (let ((_e93749645_ (gx#stx-e _hd93719640_)))
                            (let ((_lp-hd93759648_ (##car _e93749645_))
                                  (_lp-tl93769650_ (##cdr _e93749645_)))
                              (_loop93739637_
                               _lp-tl93769650_
                               (cons _lp-hd93759648_ _arg93779642_))))
                          (let ((_arg93789653_ (reverse _arg93779642_)))
                            (if (gx#stx-pair? _tl93699629_)
                                (let ((_e93799656_ (gx#stx-e _tl93699629_)))
                                  (let ((_hd93809659_ (##car _e93799656_))
                                        (_tl93819661_ (##cdr _e93799656_)))
                                    (if (gx#stx-pair? _hd93809659_)
                                        (let ((_e93829664_
                                               (gx#stx-e _hd93809659_)))
                                          (let ((_hd93839667_
                                                 (##car _e93829664_))
                                                (_tl93849669_
                                                 (##cdr _e93829664_)))
                                            (if (gx#identifier? _hd93839667_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd93839667_)
                                                    (if (gx#stx-pair?
                                                         _tl93849669_)
                                                        (let ((_e93859672_
                                                               (gx#stx-e
                                                                _tl93849669_)))
                                                          (let ((_hd93869675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e93859672_))
                        (_tl93879677_ (##cdr _e93859672_)))
                    (if (gx#stx-pair? _hd93869675_)
                        (let ((_e93889680_ (gx#stx-e _hd93869675_)))
                          (let ((_hd93899683_ (##car _e93889680_))
                                (_tl93909685_ (##cdr _e93889680_)))
                            (if (gx#identifier? _hd93899683_)
                                (if (gx#stx-eq? '%#ref _hd93899683_)
                                    (if (gx#stx-pair? _tl93909685_)
                                        (let ((_e93919688_
                                               (gx#stx-e _tl93909685_)))
                                          (let ((_hd93929691_
                                                 (##car _e93919688_))
                                                (_tl93939693_
                                                 (##cdr _e93919688_)))
                                            (if (gx#stx-null? _tl93939693_)
                                                (if (gx#stx-pair? _tl93879677_)
                                                    (let ((_e93949696_
                                                           (gx#stx-e
                                                            _tl93879677_)))
                                                      (let ((_hd93959699_
                                                             (##car _e93949696_))
                                                            (_tl93969701_
                                                             (##cdr _e93949696_)))
                                                        (if (gx#stx-pair?
                                                             _hd93959699_)
                                                            (let ((_e93979704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd93959699_)))
                      (let ((_hd93989707_ (##car _e93979704_))
                            (_tl93999709_ (##cdr _e93979704_)))
                        (if (gx#identifier? _hd93989707_)
                            (if (gx#stx-eq? '%#ref _hd93989707_)
                                (if (gx#stx-pair? _tl93999709_)
                                    (let ((_e94009712_
                                           (gx#stx-e _tl93999709_)))
                                      (let ((_hd94019715_ (##car _e94009712_))
                                            (_tl94029717_ (##cdr _e94009712_)))
                                        (if (gx#stx-null? _tl94029717_)
                                            (if (gx#stx-pair/null?
                                                 _tl93969701_)
                                                (if (fx>= (gx#stx-length
                                                           _tl93969701_)
                                                          '1)
                                                    (let ((_g11817_
                                                           (gx#syntax-split-splice
                                                            _tl93969701_
                                                            '1)))
                                                      (begin
                                                        (let ((_g11818_
                                                               (values-count
                                                                _g11817_)))
                                                          (if (not (fx= _g11818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g11818_)))
                (let ((_target94039720_ (values-ref _g11817_ 0))
                      (_tl94059722_ (values-ref _g11817_ 1)))
                  (if (gx#stx-pair? _tl94059722_)
                      (let ((_e94129725_ (gx#stx-e _tl94059722_)))
                        (let ((_hd94139728_ (##car _e94129725_))
                              (_tl94149730_ (##cdr _e94129725_)))
                          (if (gx#stx-pair? _hd94139728_)
                              (let ((_e94159733_ (gx#stx-e _hd94139728_)))
                                (let ((_hd94169736_ (##car _e94159733_))
                                      (_tl94179738_ (##cdr _e94159733_)))
                                  (if (gx#identifier? _hd94169736_)
                                      (if (gx#stx-eq? '%#ref _hd94169736_)
                                          (if (gx#stx-pair? _tl94179738_)
                                              (let ((_e94189741_
                                                     (gx#stx-e _tl94179738_)))
                                                (let ((_hd94199744_
                                                       (##car _e94189741_))
                                                      (_tl94209746_
                                                       (##cdr _e94189741_)))
                                                  (if (gx#stx-null?
                                                       _tl94209746_)
                                                      (if (gx#stx-null?
                                                           _tl94149730_)
                                                          (letrec ((_loop94069749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd94049752_ _xarg94109754_)
                              (if (gx#stx-pair? _hd94049752_)
                                  (let ((_e94079757_ (gx#stx-e _hd94049752_)))
                                    (let ((_lp-hd94089760_ (##car _e94079757_))
                                          (_lp-tl94099762_
                                           (##cdr _e94079757_)))
                                      (if (gx#stx-pair? _lp-hd94089760_)
                                          (let ((_e94219765_
                                                 (gx#stx-e _lp-hd94089760_)))
                                            (let ((_hd94229768_
                                                   (##car _e94219765_))
                                                  (_tl94239770_
                                                   (##cdr _e94219765_)))
                                              (if (gx#identifier? _hd94229768_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd94229768_)
                                                      (if (gx#stx-pair?
                                                           _tl94239770_)
                                                          (let ((_e94249773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl94239770_)))
                    (let ((_hd94259776_ (##car _e94249773_))
                          (_tl94269778_ (##cdr _e94249773_)))
                      (if (gx#stx-null? _tl94269778_)
                          (_loop94069749_
                           _lp-tl94099762_
                           (cons _hd94259776_ _xarg94109754_))
                          (_g93129619_ _g93159622_))))
                  (_g93129619_ _g93159622_))
              (_g93129619_ _g93159622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g93129619_ _g93159622_))))
                                          (_g93129619_ _g93159622_))))
                                  (let ((_xarg94119781_
                                         (reverse _xarg94109754_)))
                                    (if (gx#stx-null? _tl93819661_)
                                        ((lambda (_L9784_
                                                  _L9785_
                                                  _L9786_
                                                  _L9787_
                                                  _L9788_
                                                  _L9789_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g98329835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g98339837_)
                        (cons _g98329835_ _g98339837_))
                      '()
                      _L9789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier? _L9788_)
                                                       (if (_runtime-identifier=?8620_
                                                            _L9787_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g98399842_ _g98409844_)
                                                (cons _g98399842_ _g98409844_))
                                              '()
                                              _L9789_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g98469849_ _g98479851_)
                                                (cons _g98469849_ _g98479851_))
                                              '()
                                              _L9785_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g98539856_ _g98549858_)
                                               (cons _g98539856_ _g98549858_))
                                             '()
                                             _L9789_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g98609863_ _g98619865_)
                                               (cons _g98609863_ _g98619865_))
                                             '()
                                             _L9785_)))
                           (if (gx#free-identifier=? _L9788_ _L9784_)
                               (not (find (lambda (_g98679869_)
                                            (gx#free-identifier=?
                                             _g98679869_
                                             _L9786_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g98719874_
                                                             _g98729876_)
                                                      (cons _g98719874_
                                                            _g98729876_))
                                                    (cons _L9788_ '())
                                                    _L9789_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g93129619_ _g93159622_)))
                                         _hd94199744_
                                         _xarg94119781_
                                         _hd94019715_
                                         _hd93929691_
                                         _tl93729634_
                                         _arg93789653_)
                                        (_g93129619_ _g93159622_)))))))
                    (_loop94069749_ _target94039720_ '()))
                  (_g93129619_ _g93159622_))
              (_g93129619_ _g93159622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g93129619_ _g93159622_))
                                          (_g93129619_ _g93159622_))
                                      (_g93129619_ _g93159622_))))
                              (_g93129619_ _g93159622_))))
                      (_g93129619_ _g93159622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93129619_ _g93159622_))
                                                (_g93129619_ _g93159622_))
                                            (_g93129619_ _g93159622_))))
                                    (_g93129619_ _g93159622_))
                                (_g93129619_ _g93159622_))
                            (_g93129619_ _g93159622_))))
                    (_g93129619_ _g93159622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93129619_ _g93159622_))
                                                (_g93129619_ _g93159622_))))
                                        (_g93129619_ _g93159622_))
                                    (_g93129619_ _g93159622_))
                                (_g93129619_ _g93159622_))))
                        (_g93129619_ _g93159622_))))
                (_g93129619_ _g93159622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93129619_ _g93159622_))
                                                (_g93129619_ _g93159622_))))
                                        (_g93129619_ _g93159622_))))
                                (_g93129619_ _g93159622_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop93739637_
                                                     _target93709632_
                                                     '())))))
                                            (_g93129619_ _g93159622_))
                                        (_g93129619_ _g93159622_))))
                                (_g93129619_ _g93159622_))))
                         (_g931010073_
                          (lambda (_g93159882_)
                            (if (gx#stx-pair? _g93159882_)
                                (let ((_e93199884_ (gx#stx-e _g93159882_)))
                                  (let ((_hd93209887_ (##car _e93199884_))
                                        (_tl93219889_ (##cdr _e93199884_)))
                                    (if (gx#stx-pair/null? _hd93209887_)
                                        (if (fx>= (gx#stx-length _hd93209887_)
                                                  '0)
                                            (let ((_g11819_
                                                   (gx#syntax-split-splice
                                                    _hd93209887_
                                                    '0)))
                                              (begin
                                                (let ((_g11820_
                                                       (values-count
                                                        _g11819_)))
                                                  (if (not (fx= _g11820_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11820_)))
                                                (let ((_target93229892_
                                                       (values-ref _g11819_ 0))
                                                      (_tl93249894_
                                                       (values-ref
                                                        _g11819_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl93249894_)
                                                      (letrec ((_loop93259897_
                                                                (lambda (_hd93239900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg93299902_)
                          (if (gx#stx-pair? _hd93239900_)
                              (let ((_e93269905_ (gx#stx-e _hd93239900_)))
                                (let ((_lp-hd93279908_ (##car _e93269905_))
                                      (_lp-tl93289910_ (##cdr _e93269905_)))
                                  (_loop93259897_
                                   _lp-tl93289910_
                                   (cons _lp-hd93279908_ _arg93299902_))))
                              (let ((_arg93309913_ (reverse _arg93299902_)))
                                (if (gx#stx-pair? _tl93219889_)
                                    (let ((_e93319916_
                                           (gx#stx-e _tl93219889_)))
                                      (let ((_hd93329919_ (##car _e93319916_))
                                            (_tl93339921_ (##cdr _e93319916_)))
                                        (if (gx#stx-pair? _hd93329919_)
                                            (let ((_e93349924_
                                                   (gx#stx-e _hd93329919_)))
                                              (let ((_hd93359927_
                                                     (##car _e93349924_))
                                                    (_tl93369929_
                                                     (##cdr _e93349924_)))
                                                (if (gx#identifier?
                                                     _hd93359927_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd93359927_)
                                                        (if (gx#stx-pair?
                                                             _tl93369929_)
                                                            (let ((_e93379932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl93369929_)))
                      (let ((_hd93389935_ (##car _e93379932_))
                            (_tl93399937_ (##cdr _e93379932_)))
                        (if (gx#stx-pair? _hd93389935_)
                            (let ((_e93409940_ (gx#stx-e _hd93389935_)))
                              (let ((_hd93419943_ (##car _e93409940_))
                                    (_tl93429945_ (##cdr _e93409940_)))
                                (if (gx#identifier? _hd93419943_)
                                    (if (gx#stx-eq? '%#ref _hd93419943_)
                                        (if (gx#stx-pair? _tl93429945_)
                                            (let ((_e93439948_
                                                   (gx#stx-e _tl93429945_)))
                                              (let ((_hd93449951_
                                                     (##car _e93439948_))
                                                    (_tl93459953_
                                                     (##cdr _e93439948_)))
                                                (if (gx#stx-null? _tl93459953_)
                                                    (if (gx#stx-pair/null?
                                                         _tl93399937_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl93399937_)
                          '0)
                    (let ((_g11821_ (gx#syntax-split-splice _tl93399937_ '0)))
                      (begin
                        (let ((_g11822_ (values-count _g11821_)))
                          (if (not (fx= _g11822_ 2))
                              (error "Context expects 2 values" _g11822_)))
                        (let ((_target93469956_ (values-ref _g11821_ 0))
                              (_tl93489958_ (values-ref _g11821_ 1)))
                          (if (gx#stx-null? _tl93489958_)
                              (letrec ((_loop93499961_
                                        (lambda (_hd93479964_ _xarg93539966_)
                                          (if (gx#stx-pair? _hd93479964_)
                                              (let ((_e93509969_
                                                     (gx#stx-e _hd93479964_)))
                                                (let ((_lp-hd93519972_
                                                       (##car _e93509969_))
                                                      (_lp-tl93529974_
                                                       (##cdr _e93509969_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd93519972_)
                                                      (let ((_e93559977_
                                                             (gx#stx-e
                                                              _lp-hd93519972_)))
                                                        (let ((_hd93569980_
                                                               (##car _e93559977_))
                                                              (_tl93579982_
                                                               (##cdr _e93559977_)))
                                                          (if (gx#identifier?
                                                               _hd93569980_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd93569980_)
                          (if (gx#stx-pair? _tl93579982_)
                              (let ((_e93589985_ (gx#stx-e _tl93579982_)))
                                (let ((_hd93599988_ (##car _e93589985_))
                                      (_tl93609990_ (##cdr _e93589985_)))
                                  (if (gx#stx-null? _tl93609990_)
                                      (_loop93499961_
                                       _lp-tl93529974_
                                       (cons _hd93599988_ _xarg93539966_))
                                      (_g93119879_ _g93159882_))))
                              (_g93119879_ _g93159882_))
                          (_g93119879_ _g93159882_))
                      (_g93119879_ _g93159882_))))
              (_g93119879_ _g93159882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg93549993_
                                                     (reverse _xarg93539966_)))
                                                (if (gx#stx-null? _tl93339921_)
                                                    ((lambda (_L9996_
                                                              _L9997_
                                                              _L9998_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1002610029_ _g1002710031_)
                                    (cons _g1002610029_ _g1002710031_))
                                  '()
                                  _L9998_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1003310036_
                                                           _g1003410038_)
                                                    (cons _g1003310036_
                                                          _g1003410038_))
                                                  '()
                                                  _L9998_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1004010043_
                                                           _g1004110045_)
                                                    (cons _g1004010043_
                                                          _g1004110045_))
                                                  '()
                                                  _L9996_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1004710050_
                                                          _g1004810052_)
                                                   (cons _g1004710050_
                                                         _g1004810052_))
                                                 '()
                                                 _L9998_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1005410057_
                                                          _g1005510059_)
                                                   (cons _g1005410057_
                                                         _g1005510059_))
                                                 '()
                                                 _L9996_)))
                               (not (find (lambda (_g1006110063_)
                                            (gx#free-identifier=?
                                             _g1006110063_
                                             _L9997_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1006510068_
                                                             _g1006610070_)
                                                      (cons _g1006510068_
                                                            _g1006610070_))
                                                    '()
                                                    _L9998_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g93119879_ _g93159882_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg93549993_
                                                     _hd93449951_
                                                     _arg93309913_)
                                                    (_g93119879_
                                                     _g93159882_)))))))
                                (_loop93499961_ _target93469956_ '()))
                              (_g93119879_ _g93159882_)))))
                    (_g93119879_ _g93159882_))
                (_g93119879_ _g93159882_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93119879_
                                                     _g93159882_))))
                                            (_g93119879_ _g93159882_))
                                        (_g93119879_ _g93159882_))
                                    (_g93119879_ _g93159882_))))
                            (_g93119879_ _g93159882_))))
                    (_g93119879_ _g93159882_))
                (_g93119879_ _g93159882_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g93119879_
                                                     _g93159882_))))
                                            (_g93119879_ _g93159882_))))
                                    (_g93119879_ _g93159882_)))))))
                (_loop93259897_ _target93229892_ '()))
              (_g93119879_ _g93159882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g93119879_ _g93159882_))
                                        (_g93119879_ _g93159882_))))
                                (_g93119879_ _g93159882_)))))
                    (_g931010073_ _form9309_))))
               (_dispatch-case-e8622_
                (lambda (_hd8770_ _body8771_)
                  (let* ((_form8773_ (cons _hd8770_ (cons _body8771_ '())))
                         (_g87778901_
                          (lambda (_g87788898_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g87788898_)))
                         (_g87769019_
                          (lambda (_g87788904_)
                            (if (gx#stx-pair? _g87788904_)
                                (let ((_e88678906_ (gx#stx-e _g87788904_)))
                                  (let ((_hd88688909_ (##car _e88678906_))
                                        (_tl88698911_ (##cdr _e88678906_)))
                                    (if (gx#stx-pair? _tl88698911_)
                                        (let ((_e88708914_
                                               (gx#stx-e _tl88698911_)))
                                          (let ((_hd88718917_
                                                 (##car _e88708914_))
                                                (_tl88728919_
                                                 (##cdr _e88708914_)))
                                            (if (gx#stx-pair? _hd88718917_)
                                                (let ((_e88738922_
                                                       (gx#stx-e
                                                        _hd88718917_)))
                                                  (let ((_hd88748925_
                                                         (##car _e88738922_))
                                                        (_tl88758927_
                                                         (##cdr _e88738922_)))
                                                    (if (gx#identifier?
                                                         _hd88748925_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd88748925_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl88758927_)
                        (let ((_e88768930_ (gx#stx-e _tl88758927_)))
                          (let ((_hd88778933_ (##car _e88768930_))
                                (_tl88788935_ (##cdr _e88768930_)))
                            (if (gx#stx-pair? _hd88778933_)
                                (let ((_e88798938_ (gx#stx-e _hd88778933_)))
                                  (let ((_hd88808941_ (##car _e88798938_))
                                        (_tl88818943_ (##cdr _e88798938_)))
                                    (if (gx#identifier? _hd88808941_)
                                        (if (gx#stx-eq? '%#ref _hd88808941_)
                                            (if (gx#stx-pair? _tl88818943_)
                                                (let ((_e88828946_
                                                       (gx#stx-e
                                                        _tl88818943_)))
                                                  (let ((_hd88838949_
                                                         (##car _e88828946_))
                                                        (_tl88848951_
                                                         (##cdr _e88828946_)))
                                                    (if (gx#stx-null?
                                                         _tl88848951_)
                                                        (if (gx#stx-pair?
                                                             _tl88788935_)
                                                            (let ((_e88858954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl88788935_)))
                      (let ((_hd88868957_ (##car _e88858954_))
                            (_tl88878959_ (##cdr _e88858954_)))
                        (if (gx#stx-pair? _hd88868957_)
                            (let ((_e88888962_ (gx#stx-e _hd88868957_)))
                              (let ((_hd88898965_ (##car _e88888962_))
                                    (_tl88908967_ (##cdr _e88888962_)))
                                (if (gx#identifier? _hd88898965_)
                                    (if (gx#stx-eq? '%#ref _hd88898965_)
                                        (if (gx#stx-pair? _tl88908967_)
                                            (let ((_e88918970_
                                                   (gx#stx-e _tl88908967_)))
                                              (let ((_hd88928973_
                                                     (##car _e88918970_))
                                                    (_tl88938975_
                                                     (##cdr _e88918970_)))
                                                (if (gx#stx-null? _tl88938975_)
                                                    (if (gx#stx-pair?
                                                         _tl88878959_)
                                                        (let ((_e88948978_
                                                               (gx#stx-e
                                                                _tl88878959_)))
                                                          (let ((_hd88958981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e88948978_))
                        (_tl88968983_ (##cdr _e88948978_)))
                    (if (gx#stx-null? _tl88968983_)
                        (if (gx#stx-null? _tl88728919_)
                            ((lambda (_L8986_ _L8987_ _L8988_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8986_ '()))))
                             _hd88928973_
                             _hd88838949_
                             _hd88688909_)
                            (_g87778901_ _g87788904_))
                        (_g87778901_ _g87788904_))))
                (_g87778901_ _g87788904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87778901_
                                                     _g87788904_))))
                                            (_g87778901_ _g87788904_))
                                        (_g87778901_ _g87788904_))
                                    (_g87778901_ _g87788904_))))
                            (_g87778901_ _g87788904_))))
                    (_g87778901_ _g87788904_))
                (_g87778901_ _g87788904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g87778901_ _g87788904_))
                                            (_g87778901_ _g87788904_))
                                        (_g87778901_ _g87788904_))))
                                (_g87778901_ _g87788904_))))
                        (_g87778901_ _g87788904_))
                    (_g87778901_ _g87788904_))
                (_g87778901_ _g87788904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g87778901_ _g87788904_))))
                                        (_g87778901_ _g87788904_))))
                                (_g87778901_ _g87788904_))))
                         (_g87759155_
                          (lambda (_g87789022_)
                            (if (gx#stx-pair? _g87789022_)
                                (let ((_e88289024_ (gx#stx-e _g87789022_)))
                                  (let ((_hd88299027_ (##car _e88289024_))
                                        (_tl88309029_ (##cdr _e88289024_)))
                                    (if (gx#stx-pair/null? _hd88299027_)
                                        (if (fx>= (gx#stx-length _hd88299027_)
                                                  '0)
                                            (let ((_g11823_
                                                   (gx#syntax-split-splice
                                                    _hd88299027_
                                                    '0)))
                                              (begin
                                                (let ((_g11824_
                                                       (values-count
                                                        _g11823_)))
                                                  (if (not (fx= _g11824_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11824_)))
                                                (let ((_target88319032_
                                                       (values-ref _g11823_ 0))
                                                      (_tl88339034_
                                                       (values-ref
                                                        _g11823_
                                                        1)))
                                                  (letrec ((_loop88349037_
                                                            (lambda (_hd88329040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg88389042_)
                      (if (gx#stx-pair? _hd88329040_)
                          (let ((_e88359045_ (gx#stx-e _hd88329040_)))
                            (let ((_lp-hd88369048_ (##car _e88359045_))
                                  (_lp-tl88379050_ (##cdr _e88359045_)))
                              (_loop88349037_
                               _lp-tl88379050_
                               (cons _lp-hd88369048_ _arg88389042_))))
                          (let ((_arg88399053_ (reverse _arg88389042_)))
                            (if (gx#stx-pair? _tl88309029_)
                                (let ((_e88409056_ (gx#stx-e _tl88309029_)))
                                  (let ((_hd88419059_ (##car _e88409056_))
                                        (_tl88429061_ (##cdr _e88409056_)))
                                    (if (gx#stx-pair? _hd88419059_)
                                        (let ((_e88439064_
                                               (gx#stx-e _hd88419059_)))
                                          (let ((_hd88449067_
                                                 (##car _e88439064_))
                                                (_tl88459069_
                                                 (##cdr _e88439064_)))
                                            (if (gx#identifier? _hd88449067_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd88449067_)
                                                    (if (gx#stx-pair?
                                                         _tl88459069_)
                                                        (let ((_e88469072_
                                                               (gx#stx-e
                                                                _tl88459069_)))
                                                          (let ((_hd88479075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e88469072_))
                        (_tl88489077_ (##cdr _e88469072_)))
                    (if (gx#stx-pair? _hd88479075_)
                        (let ((_e88499080_ (gx#stx-e _hd88479075_)))
                          (let ((_hd88509083_ (##car _e88499080_))
                                (_tl88519085_ (##cdr _e88499080_)))
                            (if (gx#identifier? _hd88509083_)
                                (if (gx#stx-eq? '%#ref _hd88509083_)
                                    (if (gx#stx-pair? _tl88519085_)
                                        (let ((_e88529088_
                                               (gx#stx-e _tl88519085_)))
                                          (let ((_hd88539091_
                                                 (##car _e88529088_))
                                                (_tl88549093_
                                                 (##cdr _e88529088_)))
                                            (if (gx#stx-null? _tl88549093_)
                                                (if (gx#stx-pair? _tl88489077_)
                                                    (let ((_e88559096_
                                                           (gx#stx-e
                                                            _tl88489077_)))
                                                      (let ((_hd88569099_
                                                             (##car _e88559096_))
                                                            (_tl88579101_
                                                             (##cdr _e88559096_)))
                                                        (if (gx#stx-pair?
                                                             _hd88569099_)
                                                            (let ((_e88589104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd88569099_)))
                      (let ((_hd88599107_ (##car _e88589104_))
                            (_tl88609109_ (##cdr _e88589104_)))
                        (if (gx#identifier? _hd88599107_)
                            (if (gx#stx-eq? '%#ref _hd88599107_)
                                (if (gx#stx-pair? _tl88609109_)
                                    (let ((_e88619112_
                                           (gx#stx-e _tl88609109_)))
                                      (let ((_hd88629115_ (##car _e88619112_))
                                            (_tl88639117_ (##cdr _e88619112_)))
                                        (if (gx#stx-null? _tl88639117_)
                                            (if (gx#stx-null? _tl88429061_)
                                                ((lambda (_L9120_
                                                          _L9121_
                                                          _L9122_
                                                          _L9123_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9120_ '()))))
                                                 _hd88629115_
                                                 _hd88539091_
                                                 _tl88339034_
                                                 _arg88399053_)
                                                (_g87769019_ _g87789022_))
                                            (_g87769019_ _g87789022_))))
                                    (_g87769019_ _g87789022_))
                                (_g87769019_ _g87789022_))
                            (_g87769019_ _g87789022_))))
                    (_g87769019_ _g87789022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87769019_ _g87789022_))
                                                (_g87769019_ _g87789022_))))
                                        (_g87769019_ _g87789022_))
                                    (_g87769019_ _g87789022_))
                                (_g87769019_ _g87789022_))))
                        (_g87769019_ _g87789022_))))
                (_g87769019_ _g87789022_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87769019_ _g87789022_))
                                                (_g87769019_ _g87789022_))))
                                        (_g87769019_ _g87789022_))))
                                (_g87769019_ _g87789022_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop88349037_
                                                     _target88319032_
                                                     '())))))
                                            (_g87769019_ _g87789022_))
                                        (_g87769019_ _g87789022_))))
                                (_g87769019_ _g87789022_))))
                         (_g87749303_
                          (lambda (_g87789158_)
                            (if (gx#stx-pair? _g87789158_)
                                (let ((_e87829160_ (gx#stx-e _g87789158_)))
                                  (let ((_hd87839163_ (##car _e87829160_))
                                        (_tl87849165_ (##cdr _e87829160_)))
                                    (if (gx#stx-pair/null? _hd87839163_)
                                        (if (fx>= (gx#stx-length _hd87839163_)
                                                  '0)
                                            (let ((_g11825_
                                                   (gx#syntax-split-splice
                                                    _hd87839163_
                                                    '0)))
                                              (begin
                                                (let ((_g11826_
                                                       (values-count
                                                        _g11825_)))
                                                  (if (not (fx= _g11826_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11826_)))
                                                (let ((_target87859168_
                                                       (values-ref _g11825_ 0))
                                                      (_tl87879170_
                                                       (values-ref
                                                        _g11825_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl87879170_)
                                                      (letrec ((_loop87889173_
                                                                (lambda (_hd87869176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg87929178_)
                          (if (gx#stx-pair? _hd87869176_)
                              (let ((_e87899181_ (gx#stx-e _hd87869176_)))
                                (let ((_lp-hd87909184_ (##car _e87899181_))
                                      (_lp-tl87919186_ (##cdr _e87899181_)))
                                  (_loop87889173_
                                   _lp-tl87919186_
                                   (cons _lp-hd87909184_ _arg87929178_))))
                              (let ((_arg87939189_ (reverse _arg87929178_)))
                                (if (gx#stx-pair? _tl87849165_)
                                    (let ((_e87949192_
                                           (gx#stx-e _tl87849165_)))
                                      (let ((_hd87959195_ (##car _e87949192_))
                                            (_tl87969197_ (##cdr _e87949192_)))
                                        (if (gx#stx-pair? _hd87959195_)
                                            (let ((_e87979200_
                                                   (gx#stx-e _hd87959195_)))
                                              (let ((_hd87989203_
                                                     (##car _e87979200_))
                                                    (_tl87999205_
                                                     (##cdr _e87979200_)))
                                                (if (gx#identifier?
                                                     _hd87989203_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd87989203_)
                                                        (if (gx#stx-pair?
                                                             _tl87999205_)
                                                            (let ((_e88009208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl87999205_)))
                      (let ((_hd88019211_ (##car _e88009208_))
                            (_tl88029213_ (##cdr _e88009208_)))
                        (if (gx#stx-pair? _hd88019211_)
                            (let ((_e88039216_ (gx#stx-e _hd88019211_)))
                              (let ((_hd88049219_ (##car _e88039216_))
                                    (_tl88059221_ (##cdr _e88039216_)))
                                (if (gx#identifier? _hd88049219_)
                                    (if (gx#stx-eq? '%#ref _hd88049219_)
                                        (if (gx#stx-pair? _tl88059221_)
                                            (let ((_e88069224_
                                                   (gx#stx-e _tl88059221_)))
                                              (let ((_hd88079227_
                                                     (##car _e88069224_))
                                                    (_tl88089229_
                                                     (##cdr _e88069224_)))
                                                (if (gx#stx-null? _tl88089229_)
                                                    (if (gx#stx-pair/null?
                                                         _tl88029213_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl88029213_)
                          '0)
                    (let ((_g11827_ (gx#syntax-split-splice _tl88029213_ '0)))
                      (begin
                        (let ((_g11828_ (values-count _g11827_)))
                          (if (not (fx= _g11828_ 2))
                              (error "Context expects 2 values" _g11828_)))
                        (let ((_target88099232_ (values-ref _g11827_ 0))
                              (_tl88119234_ (values-ref _g11827_ 1)))
                          (if (gx#stx-null? _tl88119234_)
                              (letrec ((_loop88129237_
                                        (lambda (_hd88109240_ _xarg88169242_)
                                          (if (gx#stx-pair? _hd88109240_)
                                              (let ((_e88139245_
                                                     (gx#stx-e _hd88109240_)))
                                                (let ((_lp-hd88149248_
                                                       (##car _e88139245_))
                                                      (_lp-tl88159250_
                                                       (##cdr _e88139245_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd88149248_)
                                                      (let ((_e88189253_
                                                             (gx#stx-e
                                                              _lp-hd88149248_)))
                                                        (let ((_hd88199256_
                                                               (##car _e88189253_))
                                                              (_tl88209258_
                                                               (##cdr _e88189253_)))
                                                          (if (gx#identifier?
                                                               _hd88199256_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd88199256_)
                          (if (gx#stx-pair? _tl88209258_)
                              (let ((_e88219261_ (gx#stx-e _tl88209258_)))
                                (let ((_hd88229264_ (##car _e88219261_))
                                      (_tl88239266_ (##cdr _e88219261_)))
                                  (if (gx#stx-null? _tl88239266_)
                                      (_loop88129237_
                                       _lp-tl88159250_
                                       (cons _hd88229264_ _xarg88169242_))
                                      (_g87759155_ _g87789158_))))
                              (_g87759155_ _g87789158_))
                          (_g87759155_ _g87789158_))
                      (_g87759155_ _g87789158_))))
              (_g87759155_ _g87789158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg88179269_
                                                     (reverse _xarg88169242_)))
                                                (if (gx#stx-null? _tl87969197_)
                                                    ((lambda (_L9272_
                                                              _L9273_
                                                              _L9274_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg88179269_
                                                     _hd88079227_
                                                     _arg87939189_)
                                                    (_g87759155_
                                                     _g87789158_)))))))
                                (_loop88129237_ _target88099232_ '()))
                              (_g87759155_ _g87789158_)))))
                    (_g87759155_ _g87789158_))
                (_g87759155_ _g87789158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87759155_
                                                     _g87789158_))))
                                            (_g87759155_ _g87789158_))
                                        (_g87759155_ _g87789158_))
                                    (_g87759155_ _g87789158_))))
                            (_g87759155_ _g87789158_))))
                    (_g87759155_ _g87789158_))
                (_g87759155_ _g87789158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87759155_
                                                     _g87789158_))))
                                            (_g87759155_ _g87789158_))))
                                    (_g87759155_ _g87789158_)))))))
                (_loop87889173_ _target87859168_ '()))
              (_g87759155_ _g87789158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g87759155_ _g87789158_))
                                        (_g87759155_ _g87789158_))))
                                (_g87759155_ _g87789158_)))))
                    (_g87749303_ _form8773_))))
               (_generate18623_
                (lambda (_args8758_ _arglen8759_ _hd8760_ _body8761_)
                  (let* ((_len8763_ (gx#stx-length _hd8760_))
                         (_condition8765_
                          (if (gx#stx-list? _hd8760_)
                              (cons 'fx=
                                    (cons _arglen8759_ (cons _len8763_ '())))
                              (if (> _len8763_ '0)
                                  (cons 'fx>=
                                        (cons _arglen8759_
                                              (cons _len8763_ '())))
                                  '#t)))
                         (_dispatch8767_
                          (if (_dispatch-case?8621_ _hd8760_ _body8761_)
                              (_dispatch-case-e8622_ _hd8760_ _body8761_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd8760_)
                                          (cons (gxc#compile-e _body8761_)
                                                '()))))))
                    (cons _condition8765_
                          (cons (cons 'apply
                                      (cons _dispatch8767_
                                            (cons _args8758_ '())))
                                '()))))))
        (let* ((_g86258653_
                (lambda (_g86268650_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86268650_)))
               (_g86248755_
                (lambda (_g86268656_)
                  (if (gx#stx-pair? _g86268656_)
                      (let ((_e86298658_ (gx#stx-e _g86268656_)))
                        (let ((_hd86308661_ (##car _e86298658_))
                              (_tl86318663_ (##cdr _e86298658_)))
                          (if (gx#stx-pair/null? _tl86318663_)
                              (if (fx>= (gx#stx-length _tl86318663_) '0)
                                  (let ((_g11829_
                                         (gx#syntax-split-splice
                                          _tl86318663_
                                          '0)))
                                    (begin
                                      (let ((_g11830_ (values-count _g11829_)))
                                        (if (not (fx= _g11830_ 2))
                                            (error "Context expects 2 values"
                                                   _g11830_)))
                                      (let ((_target86328666_
                                             (values-ref _g11829_ 0))
                                            (_tl86348668_
                                             (values-ref _g11829_ 1)))
                                        (if (gx#stx-null? _tl86348668_)
                                            (letrec ((_loop86358671_
                                                      (lambda (_hd86338674_
                                                               _body86398676_
                                                               _hd86408678_)
                                                        (if (gx#stx-pair?
                                                             _hd86338674_)
                                                            (let ((_e86368681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd86338674_)))
                      (let ((_lp-hd86378684_ (##car _e86368681_))
                            (_lp-tl86388686_ (##cdr _e86368681_)))
                        (if (gx#stx-pair? _lp-hd86378684_)
                            (let ((_e86438689_ (gx#stx-e _lp-hd86378684_)))
                              (let ((_hd86448692_ (##car _e86438689_))
                                    (_tl86458694_ (##cdr _e86438689_)))
                                (if (gx#stx-pair? _tl86458694_)
                                    (let ((_e86468697_
                                           (gx#stx-e _tl86458694_)))
                                      (let ((_hd86478700_ (##car _e86468697_))
                                            (_tl86488702_ (##cdr _e86468697_)))
                                        (if (gx#stx-null? _tl86488702_)
                                            (_loop86358671_
                                             _lp-tl86388686_
                                             (cons _hd86478700_ _body86398676_)
                                             (cons _hd86448692_ _hd86408678_))
                                            (_g86258653_ _g86268656_))))
                                    (_g86258653_ _g86268656_))))
                            (_g86258653_ _g86268656_))))
                    (let ((_body86418705_ (reverse _body86398676_))
                          (_hd86428707_ (reverse _hd86408678_)))
                      ((lambda (_L8710_ _L8711_)
                         (let ((_args8730_ (gxc#generate-runtime-temporary__0))
                               (_arglen8731_
                                (gxc#generate-runtime-temporary__0))
                               (_name8732_
                                (let ((_$e8727_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8618_
                                        '#f)))
                                  (if _$e8727_
                                      _$e8727_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8730_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8730_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8730_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g87338736_ _g87348738_)
                                            (_generate18623_
                                             _args8730_
                                             _arglen8731_
                                             _g87338736_
                                             _g87348738_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g87408743_
                                                             _g87418745_)
                                                      (cons _g87408743_
                                                            _g87418745_))
                                                    '()
                                                    _L8711_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g87478750_
                                                             _g87488752_)
                                                      (cons _g87478750_
                                                            _g87488752_))
                                                    '()
                                                    _L8710_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body86418705_
                       _hd86428707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop86358671_
                                               _target86328666_
                                               '()
                                               '()))
                                            (_g86258653_ _g86268656_)))))
                                  (_g86258653_ _g86268656_))
                              (_g86258653_ _g86268656_))))
                      (_g86258653_ _g86268656_)))))
          (_g86248755_ _stx8618_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7681
      (lambda (_stx7683_ _compiled-body?7684_)
        (letrec ((_generate-simple7686_
                  (lambda (_hd8605_ _body8606_)
                    (_coalesce-let*7687_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8605_
                      _body8606_
                      _compiled-body?7684_))))
                 (_coalesce-let*7687_
                  (lambda (_code7989_)
                    (let* ((_g79948129_
                            (lambda (_g79958126_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g79958126_)))
                           (_g79938136_
                            (lambda (_g79958132_) ((lambda () _code7989_))))
                           (_g79928306_
                            (lambda (_g79958139_)
                              (if (gx#stx-pair? _g79958139_)
                                  (let ((_e80838141_ (gx#stx-e _g79958139_)))
                                    (let ((_hd80848144_ (##car _e80838141_))
                                          (_tl80858146_ (##cdr _e80838141_)))
                                      (if (gx#identifier? _hd80848144_)
                                          (if (gx#stx-eq? 'let _hd80848144_)
                                              (if (gx#stx-pair? _tl80858146_)
                                                  (let ((_e80868149_
                                                         (gx#stx-e
                                                          _tl80858146_)))
                                                    (let ((_hd80878152_
                                                           (##car _e80868149_))
                                                          (_tl80888154_
                                                           (##cdr _e80868149_)))
                                                      (if (gx#stx-pair?
                                                           _hd80878152_)
                                                          (let ((_e80898157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd80878152_)))
                    (let ((_hd80908160_ (##car _e80898157_))
                          (_tl80918162_ (##cdr _e80898157_)))
                      (if (gx#stx-pair? _hd80908160_)
                          (let ((_e80928165_ (gx#stx-e _hd80908160_)))
                            (let ((_hd80938168_ (##car _e80928165_))
                                  (_tl80948170_ (##cdr _e80928165_)))
                              (if (gx#stx-pair? _tl80948170_)
                                  (let ((_e80958173_ (gx#stx-e _tl80948170_)))
                                    (let ((_hd80968176_ (##car _e80958173_))
                                          (_tl80978178_ (##cdr _e80958173_)))
                                      (if (gx#stx-null? _tl80978178_)
                                          (if (gx#stx-null? _tl80918162_)
                                              (if (gx#stx-pair? _tl80888154_)
                                                  (let ((_e80988181_
                                                         (gx#stx-e
                                                          _tl80888154_)))
                                                    (let ((_hd80998184_
                                                           (##car _e80988181_))
                                                          (_tl81008186_
                                                           (##cdr _e80988181_)))
                                                      (if (gx#stx-pair?
                                                           _hd80998184_)
                                                          (let ((_e81018189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd80998184_)))
                    (let ((_hd81028192_ (##car _e81018189_))
                          (_tl81038194_ (##cdr _e81018189_)))
                      (if (gx#identifier? _hd81028192_)
                          (if (gx#stx-eq? 'let* _hd81028192_)
                              (if (gx#stx-pair? _tl81038194_)
                                  (let ((_e81048197_ (gx#stx-e _tl81038194_)))
                                    (let ((_hd81058200_ (##car _e81048197_))
                                          (_tl81068202_ (##cdr _e81048197_)))
                                      (if (gx#stx-pair/null? _hd81058200_)
                                          (if (fx>= (gx#stx-length
                                                     _hd81058200_)
                                                    '0)
                                              (let ((_g11831_
                                                     (gx#syntax-split-splice
                                                      _hd81058200_
                                                      '0)))
                                                (begin
                                                  (let ((_g11832_
                                                         (values-count
                                                          _g11831_)))
                                                    (if (not (fx= _g11832_ 2))
                                                        (error "Context expects 2 values"
                                                               _g11832_)))
                                                  (let ((_target81078205_
                                                         (values-ref
                                                          _g11831_
                                                          0))
                                                        (_tl81098207_
                                                         (values-ref
                                                          _g11831_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl81098207_)
                                                        (letrec ((_loop81108210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd81088213_ _bind81148215_)
                            (if (gx#stx-pair? _hd81088213_)
                                (let ((_e81118218_ (gx#stx-e _hd81088213_)))
                                  (let ((_lp-hd81128221_ (##car _e81118218_))
                                        (_lp-tl81138223_ (##cdr _e81118218_)))
                                    (_loop81108210_
                                     _lp-tl81138223_
                                     (cons _lp-hd81128221_ _bind81148215_))))
                                (let ((_bind81158226_
                                       (reverse _bind81148215_)))
                                  (if (gx#stx-pair/null? _tl81068202_)
                                      (if (fx>= (gx#stx-length _tl81068202_)
                                                '0)
                                          (let ((_g11833_
                                                 (gx#syntax-split-splice
                                                  _tl81068202_
                                                  '0)))
                                            (begin
                                              (let ((_g11834_
                                                     (values-count _g11833_)))
                                                (if (not (fx= _g11834_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11834_)))
                                              (let ((_target81168229_
                                                     (values-ref _g11833_ 0))
                                                    (_tl81188231_
                                                     (values-ref _g11833_ 1)))
                                                (if (gx#stx-null? _tl81188231_)
                                                    (letrec ((_loop81198234_
                                                              (lambda (_hd81178237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body81238239_)
                        (if (gx#stx-pair? _hd81178237_)
                            (let ((_e81208242_ (gx#stx-e _hd81178237_)))
                              (let ((_lp-hd81218245_ (##car _e81208242_))
                                    (_lp-tl81228247_ (##cdr _e81208242_)))
                                (_loop81198234_
                                 _lp-tl81228247_
                                 (cons _lp-hd81218245_ _body81238239_))))
                            (let ((_body81248250_ (reverse _body81238239_)))
                              (if (gx#stx-null? _tl81008186_)
                                  ((lambda (_L8253_ _L8254_ _L8255_ _L8256_)
                                     (cons 'let*
                                           (cons (cons (cons _L8256_
                                                             (cons _L8255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g82918294_ _g82928296_)
                           (cons _g82918294_ _g82928296_))
                         '()
                         _L8254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g82988301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g82998303_)
                     (cons _g82988301_ _g82998303_))
                   '()
                   _L8253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body81248250_
                                   _bind81158226_
                                   _hd80968176_
                                   _hd80938168_)
                                  (_g79938136_ _g79958139_)))))))
              (_loop81198234_ _target81168229_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79938136_
                                                     _g79958139_)))))
                                          (_g79938136_ _g79958139_))
                                      (_g79938136_ _g79958139_)))))))
                  (_loop81108210_ _target81078205_ '()))
                (_g79938136_ _g79958139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g79938136_ _g79958139_))
                                          (_g79938136_ _g79958139_))))
                                  (_g79938136_ _g79958139_))
                              (_g79938136_ _g79958139_))
                          (_g79938136_ _g79958139_))))
                  (_g79938136_ _g79958139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79938136_ _g79958139_))
                                              (_g79938136_ _g79958139_))
                                          (_g79938136_ _g79958139_))))
                                  (_g79938136_ _g79958139_))))
                          (_g79938136_ _g79958139_))))
                  (_g79938136_ _g79958139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79938136_ _g79958139_))
                                              (_g79938136_ _g79958139_))
                                          (_g79938136_ _g79958139_))))
                                  (_g79938136_ _g79958139_))))
                           (_g79918471_
                            (lambda (_g79958309_)
                              (if (gx#stx-pair? _g79958309_)
                                  (let ((_e80378311_ (gx#stx-e _g79958309_)))
                                    (let ((_hd80388314_ (##car _e80378311_))
                                          (_tl80398316_ (##cdr _e80378311_)))
                                      (if (gx#identifier? _hd80388314_)
                                          (if (gx#stx-eq? 'let _hd80388314_)
                                              (if (gx#stx-pair? _tl80398316_)
                                                  (let ((_e80408319_
                                                         (gx#stx-e
                                                          _tl80398316_)))
                                                    (let ((_hd80418322_
                                                           (##car _e80408319_))
                                                          (_tl80428324_
                                                           (##cdr _e80408319_)))
                                                      (if (gx#stx-pair?
                                                           _hd80418322_)
                                                          (let ((_e80438327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd80418322_)))
                    (let ((_hd80448330_ (##car _e80438327_))
                          (_tl80458332_ (##cdr _e80438327_)))
                      (if (gx#stx-pair? _hd80448330_)
                          (let ((_e80468335_ (gx#stx-e _hd80448330_)))
                            (let ((_hd80478338_ (##car _e80468335_))
                                  (_tl80488340_ (##cdr _e80468335_)))
                              (if (gx#stx-pair? _tl80488340_)
                                  (let ((_e80498343_ (gx#stx-e _tl80488340_)))
                                    (let ((_hd80508346_ (##car _e80498343_))
                                          (_tl80518348_ (##cdr _e80498343_)))
                                      (if (gx#stx-null? _tl80518348_)
                                          (if (gx#stx-null? _tl80458332_)
                                              (if (gx#stx-pair? _tl80428324_)
                                                  (let ((_e80528351_
                                                         (gx#stx-e
                                                          _tl80428324_)))
                                                    (let ((_hd80538354_
                                                           (##car _e80528351_))
                                                          (_tl80548356_
                                                           (##cdr _e80528351_)))
                                                      (if (gx#stx-pair?
                                                           _hd80538354_)
                                                          (let ((_e80558359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd80538354_)))
                    (let ((_hd80568362_ (##car _e80558359_))
                          (_tl80578364_ (##cdr _e80558359_)))
                      (if (gx#identifier? _hd80568362_)
                          (if (gx#stx-eq? 'let _hd80568362_)
                              (if (gx#stx-pair? _tl80578364_)
                                  (let ((_e80588367_ (gx#stx-e _tl80578364_)))
                                    (let ((_hd80598370_ (##car _e80588367_))
                                          (_tl80608372_ (##cdr _e80588367_)))
                                      (if (gx#stx-pair? _hd80598370_)
                                          (let ((_e80618375_
                                                 (gx#stx-e _hd80598370_)))
                                            (let ((_hd80628378_
                                                   (##car _e80618375_))
                                                  (_tl80638380_
                                                   (##cdr _e80618375_)))
                                              (if (gx#stx-pair? _hd80628378_)
                                                  (let ((_e80648383_
                                                         (gx#stx-e
                                                          _hd80628378_)))
                                                    (let ((_hd80658386_
                                                           (##car _e80648383_))
                                                          (_tl80668388_
                                                           (##cdr _e80648383_)))
                                                      (if (gx#stx-pair?
                                                           _tl80668388_)
                                                          (let ((_e80678391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl80668388_)))
                    (let ((_hd80688394_ (##car _e80678391_))
                          (_tl80698396_ (##cdr _e80678391_)))
                      (if (gx#stx-null? _tl80698396_)
                          (if (gx#stx-null? _tl80638380_)
                              (if (gx#stx-pair/null? _tl80608372_)
                                  (if (fx>= (gx#stx-length _tl80608372_) '0)
                                      (let ((_g11835_
                                             (gx#syntax-split-splice
                                              _tl80608372_
                                              '0)))
                                        (begin
                                          (let ((_g11836_
                                                 (values-count _g11835_)))
                                            (if (not (fx= _g11836_ 2))
                                                (error "Context expects 2 values"
                                                       _g11836_)))
                                          (let ((_target80708399_
                                                 (values-ref _g11835_ 0))
                                                (_tl80728401_
                                                 (values-ref _g11835_ 1)))
                                            (if (gx#stx-null? _tl80728401_)
                                                (letrec ((_loop80738404_
                                                          (lambda (_hd80718407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body80778409_)
                    (if (gx#stx-pair? _hd80718407_)
                        (let ((_e80748412_ (gx#stx-e _hd80718407_)))
                          (let ((_lp-hd80758415_ (##car _e80748412_))
                                (_lp-tl80768417_ (##cdr _e80748412_)))
                            (_loop80738404_
                             _lp-tl80768417_
                             (cons _lp-hd80758415_ _body80778409_))))
                        (let ((_body80788420_ (reverse _body80778409_)))
                          (if (gx#stx-null? _tl80548356_)
                              ((lambda (_L8423_
                                        _L8424_
                                        _L8425_
                                        _L8426_
                                        _L8427_)
                                 (cons 'let*
                                       (cons (cons (cons _L8427_
                                                         (cons _L8426_ '()))
                                                   (cons (cons _L8425_
                                                               (cons _L8424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g84638466_
                                                                _g84648468_)
                                                         (cons _g84638466_
                                                               _g84648468_))
                                                       '()
                                                       _L8423_)))))
                               _body80788420_
                               _hd80688394_
                               _hd80658386_
                               _hd80508346_
                               _hd80478338_)
                              (_g79928306_ _g79958309_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop80738404_
                                                   _target80708399_
                                                   '()))
                                                (_g79928306_ _g79958309_)))))
                                      (_g79928306_ _g79958309_))
                                  (_g79928306_ _g79958309_))
                              (_g79928306_ _g79958309_))
                          (_g79928306_ _g79958309_))))
                  (_g79928306_ _g79958309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79928306_ _g79958309_))))
                                          (_g79928306_ _g79958309_))))
                                  (_g79928306_ _g79958309_))
                              (_g79928306_ _g79958309_))
                          (_g79928306_ _g79958309_))))
                  (_g79928306_ _g79958309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79928306_ _g79958309_))
                                              (_g79928306_ _g79958309_))
                                          (_g79928306_ _g79958309_))))
                                  (_g79928306_ _g79958309_))))
                          (_g79928306_ _g79958309_))))
                  (_g79928306_ _g79958309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79928306_ _g79958309_))
                                              (_g79928306_ _g79958309_))
                                          (_g79928306_ _g79958309_))))
                                  (_g79928306_ _g79958309_))))
                           (_g79908602_
                            (lambda (_g79958474_)
                              (if (gx#stx-pair? _g79958474_)
                                  (let ((_e79998476_ (gx#stx-e _g79958474_)))
                                    (let ((_hd80008479_ (##car _e79998476_))
                                          (_tl80018481_ (##cdr _e79998476_)))
                                      (if (gx#identifier? _hd80008479_)
                                          (if (gx#stx-eq? 'let _hd80008479_)
                                              (if (gx#stx-pair? _tl80018481_)
                                                  (let ((_e80028484_
                                                         (gx#stx-e
                                                          _tl80018481_)))
                                                    (let ((_hd80038487_
                                                           (##car _e80028484_))
                                                          (_tl80048489_
                                                           (##cdr _e80028484_)))
                                                      (if (gx#stx-pair?
                                                           _hd80038487_)
                                                          (let ((_e80058492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd80038487_)))
                    (let ((_hd80068495_ (##car _e80058492_))
                          (_tl80078497_ (##cdr _e80058492_)))
                      (if (gx#stx-pair? _hd80068495_)
                          (let ((_e80088500_ (gx#stx-e _hd80068495_)))
                            (let ((_hd80098503_ (##car _e80088500_))
                                  (_tl80108505_ (##cdr _e80088500_)))
                              (if (gx#stx-pair? _tl80108505_)
                                  (let ((_e80118508_ (gx#stx-e _tl80108505_)))
                                    (let ((_hd80128511_ (##car _e80118508_))
                                          (_tl80138513_ (##cdr _e80118508_)))
                                      (if (gx#stx-null? _tl80138513_)
                                          (if (gx#stx-null? _tl80078497_)
                                              (if (gx#stx-pair? _tl80048489_)
                                                  (let ((_e80148516_
                                                         (gx#stx-e
                                                          _tl80048489_)))
                                                    (let ((_hd80158519_
                                                           (##car _e80148516_))
                                                          (_tl80168521_
                                                           (##cdr _e80148516_)))
                                                      (if (gx#stx-pair?
                                                           _hd80158519_)
                                                          (let ((_e80178524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd80158519_)))
                    (let ((_hd80188527_ (##car _e80178524_))
                          (_tl80198529_ (##cdr _e80178524_)))
                      (if (gx#identifier? _hd80188527_)
                          (if (gx#stx-eq? 'let _hd80188527_)
                              (if (gx#stx-pair? _tl80198529_)
                                  (let ((_e80208532_ (gx#stx-e _tl80198529_)))
                                    (let ((_hd80218535_ (##car _e80208532_))
                                          (_tl80228537_ (##cdr _e80208532_)))
                                      (if (gx#stx-null? _hd80218535_)
                                          (if (gx#stx-pair/null? _tl80228537_)
                                              (if (fx>= (gx#stx-length
                                                         _tl80228537_)
                                                        '0)
                                                  (let ((_g11837_
                                                         (gx#syntax-split-splice
                                                          _tl80228537_
                                                          '0)))
                                                    (begin
                                                      (let ((_g11838_
                                                             (values-count
                                                              _g11837_)))
                                                        (if (not (fx= _g11838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g11838_)))
              (let ((_target80238540_ (values-ref _g11837_ 0))
                    (_tl80258542_ (values-ref _g11837_ 1)))
                (if (gx#stx-null? _tl80258542_)
                    (letrec ((_loop80268545_
                              (lambda (_hd80248548_ _body80308550_)
                                (if (gx#stx-pair? _hd80248548_)
                                    (let ((_e80278553_
                                           (gx#stx-e _hd80248548_)))
                                      (let ((_lp-hd80288556_
                                             (##car _e80278553_))
                                            (_lp-tl80298558_
                                             (##cdr _e80278553_)))
                                        (_loop80268545_
                                         _lp-tl80298558_
                                         (cons _lp-hd80288556_
                                               _body80308550_))))
                                    (let ((_body80318561_
                                           (reverse _body80308550_)))
                                      (if (gx#stx-null? _tl80168521_)
                                          ((lambda (_L8564_ _L8565_ _L8566_)
                                             (cons 'let
                                                   (cons (cons (cons _L8566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8565_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g85948597_ _g85958599_)
                             (cons _g85948597_ _g85958599_))
                           '()
                           _L8564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body80318561_
                                           _hd80128511_
                                           _hd80098503_)
                                          (_g79918471_ _g79958474_)))))))
                      (_loop80268545_ _target80238540_ '()))
                    (_g79918471_ _g79958474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79918471_ _g79958474_))
                                              (_g79918471_ _g79958474_))
                                          (_g79918471_ _g79958474_))))
                                  (_g79918471_ _g79958474_))
                              (_g79918471_ _g79958474_))
                          (_g79918471_ _g79958474_))))
                  (_g79918471_ _g79958474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79918471_ _g79958474_))
                                              (_g79918471_ _g79958474_))
                                          (_g79918471_ _g79958474_))))
                                  (_g79918471_ _g79958474_))))
                          (_g79918471_ _g79958474_))))
                  (_g79918471_ _g79958474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79918471_ _g79958474_))
                                              (_g79918471_ _g79958474_))
                                          (_g79918471_ _g79958474_))))
                                  (_g79918471_ _g79958474_)))))
                      (_g79908602_ _code7989_))))
                 (_generate-values7688_
                  (lambda (_hd7802_ _body7803_)
                    (let _lp7805_ ((_rest7807_ _hd7802_)
                                   (_bind7808_ '())
                                   (_check7809_ '())
                                   (_post7810_ '()))
                      (let* ((_g78137824_
                              (lambda (_g78147821_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g78147821_)))
                             (_g78127838_
                              (lambda (_g78147827_)
                                ((lambda ()
                                   (let* ((_body7831_
                                           (if _compiled-body?7684_
                                               _body7803_
                                               (gxc#compile-e _body7803_)))
                                          (_body7833_
                                           (_generate-values-post7689_
                                            _post7810_
                                            _body7831_))
                                          (_body7835_
                                           (_generate-values-check7690_
                                            _check7809_
                                            _body7833_)))
                                     (cons 'let
                                           (cons (reverse _bind7808_)
                                                 (cons _body7835_ '()))))))))
                             (_g78117986_
                              (lambda (_g78147841_)
                                (if (gx#stx-pair? _g78147841_)
                                    (let ((_e78177843_ (gx#stx-e _g78147841_)))
                                      (let ((_hd78187846_ (##car _e78177843_))
                                            (_tl78197848_ (##cdr _e78177843_)))
                                        ((lambda (_L7851_ _L7852_)
                                           (let* ((_g78677892_
                                                   (lambda (_g78687889_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g78687889_)))
                                                  (_g78667936_
                                                   (lambda (_g78687895_)
                                                     (if (gx#stx-pair?
                                                          _g78687895_)
                                                         (let ((_e78827897_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g78687895_)))
                   (let ((_hd78837900_ (##car _e78827897_))
                         (_tl78847902_ (##cdr _e78827897_)))
                     (if (gx#stx-pair? _tl78847902_)
                         (let ((_e78857905_ (gx#stx-e _tl78847902_)))
                           (let ((_hd78867908_ (##car _e78857905_))
                                 (_tl78877910_ (##cdr _e78857905_)))
                             (if (gx#stx-null? _tl78877910_)
                                 ((lambda (_L7913_ _L7914_)
                                    (let* ((_vals7927_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7929_ (gxc#compile-e _L7913_))
                                           (_check-values7931_
                                            (gxc#generate-runtime-check-values
                                             _vals7927_
                                             _L7914_))
                                           (_refs7933_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7927_
                                             _L7914_)))
                                      (_lp7805_
                                       _L7851_
                                       (cons (cons _vals7927_
                                                   (cons _expr7929_ '()))
                                             _bind7808_)
                                       (cons _check-values7931_ _check7809_)
                                       (cons _refs7933_ _post7810_))))
                                  _hd78867908_
                                  _hd78837900_)
                                 (_g78677892_ _g78687895_))))
                         (_g78677892_ _g78687895_))))
                 (_g78677892_ _g78687895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78657983_
                                                   (lambda (_g78687939_)
                                                     (if (gx#stx-pair?
                                                          _g78687939_)
                                                         (let ((_e78717941_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g78687939_)))
                   (let ((_hd78727944_ (##car _e78717941_))
                         (_tl78737946_ (##cdr _e78717941_)))
                     (if (gx#stx-pair? _hd78727944_)
                         (let ((_e78747949_ (gx#stx-e _hd78727944_)))
                           (let ((_hd78757952_ (##car _e78747949_))
                                 (_tl78767954_ (##cdr _e78747949_)))
                             (if (gx#stx-null? _tl78767954_)
                                 (if (gx#stx-pair? _tl78737946_)
                                     (let ((_e78777957_
                                            (gx#stx-e _tl78737946_)))
                                       (let ((_hd78787960_ (##car _e78777957_))
                                             (_tl78797962_
                                              (##cdr _e78777957_)))
                                         (if (gx#stx-null? _tl78797962_)
                                             ((lambda (_L7965_ _L7966_)
                                                (let ((_eid7980_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7966_))
                                                      (_expr7981_
                                                       (gxc#compile-e
                                                        _L7965_)))
                                                  (_lp7805_
                                                   _L7851_
                                                   (cons (cons _eid7980_
                                                               (cons _expr7981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7808_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7809_
                                                   _post7810_)))
                                              _hd78787960_
                                              _hd78757952_)
                                             (_g78667936_ _g78687939_))))
                                     (_g78667936_ _g78687939_))
                                 (_g78667936_ _g78687939_))))
                         (_g78667936_ _g78687939_))))
                 (_g78667936_ _g78687939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g78657983_ _L7852_)))
                                         _tl78197848_
                                         _hd78187846_)))
                                    (_g78127838_ _g78147841_)))))
                        (_g78117986_ _rest7807_)))))
                 (_generate-values-post7689_
                  (lambda (_post7761_ _body7762_)
                    (let _lp7764_ ((_rest7766_ _post7761_)
                                   (_body7767_ _body7762_))
                      (let* ((_rest77687776_ _rest7766_)
                             (_E77717780_
                              (lambda ()
                                (error '"No clause matching" _rest77687776_)))
                             (_else77707784_ (lambda () _body7767_))
                             (_K77727790_
                              (lambda (_rest7787_ _bind7788_)
                                (_lp7764_
                                 _rest7787_
                                 (cons 'let
                                       (cons _bind7788_
                                             (cons _body7767_ '())))))))
                        (if (##pair? _rest77687776_)
                            (let ((_hd77737793_ (##car _rest77687776_))
                                  (_tl77747795_ (##cdr _rest77687776_)))
                              (let* ((_bind7798_ _hd77737793_)
                                     (_rest7800_ _tl77747795_))
                                (_K77727790_ _rest7800_ _bind7798_)))
                            (_else77707784_))))))
                 (_generate-values-check7690_
                  (lambda (_check7758_ _body7759_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7759_ '())
                                  (reverse _check7758_))))))
          (let* ((_g76927709_
                  (lambda (_g76937706_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g76937706_)))
                 (_g76917755_
                  (lambda (_g76937712_)
                    (if (gx#stx-pair? _g76937712_)
                        (let ((_e76967714_ (gx#stx-e _g76937712_)))
                          (let ((_hd76977717_ (##car _e76967714_))
                                (_tl76987719_ (##cdr _e76967714_)))
                            (if (gx#stx-pair? _tl76987719_)
                                (let ((_e76997722_ (gx#stx-e _tl76987719_)))
                                  (let ((_hd77007725_ (##car _e76997722_))
                                        (_tl77017727_ (##cdr _e76997722_)))
                                    (if (gx#stx-pair? _tl77017727_)
                                        (let ((_e77027730_
                                               (gx#stx-e _tl77017727_)))
                                          (let ((_hd77037733_
                                                 (##car _e77027730_))
                                                (_tl77047735_
                                                 (##cdr _e77027730_)))
                                            (if (gx#stx-null? _tl77047735_)
                                                ((lambda (_L7738_ _L7739_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7739_)
                                                       (_generate-simple7686_
                                                        _L7739_
                                                        _L7738_)
                                                       (_generate-values7688_
                                                        _L7739_
                                                        _L7738_)))
                                                 _hd77037733_
                                                 _hd77007725_)
                                                (_g76927709_ _g76937712_))))
                                        (_g76927709_ _g76937712_))))
                                (_g76927709_ _g76937712_))))
                        (_g76927709_ _g76937712_)))))
            (_g76917755_ _stx7683_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8611_)
          (let ((_compiled-body?8613_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7681
             _stx8611_
             _compiled-body?8613_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g11840_
          (let ((_g11839_ (length _g11840_)))
            (cond ((fx= _g11839_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g11840_))
                  ((fx= _g11839_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7681
                          _g11840_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g11840_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7582_ _hd7583_)
      (let _lp7585_ ((_rest7587_ _hd7583_) (_k7588_ '0) (_r7589_ '()))
        (let* ((_g75947610_
                (lambda (_g75957607_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75957607_)))
               (_g75937617_
                (lambda (_g75957613_) ((lambda () (reverse _r7589_)))))
               (_g75927633_
                (lambda (_g75957620_)
                  ((lambda (_L7622_)
                     (if (gx#identifier? _L7622_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7622_)
                                             (cons (cons 'values->list
                                                         (cons _vals7582_
                                                               (cons _k7588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7589_)
                         (_g75937617_ _g75957620_)))
                   _g75957620_)))
               (_g75917657_
                (lambda (_g75957636_)
                  (if (gx#stx-pair? _g75957636_)
                      (let ((_e76027638_ (gx#stx-e _g75957636_)))
                        (let ((_hd76037641_ (##car _e76027638_))
                              (_tl76047643_ (##cdr _e76027638_)))
                          ((lambda (_L7646_ _L7647_)
                             (_lp7585_
                              _L7646_
                              (fx+ _k7588_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7647_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7582_
                                                            (cons _k7588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7589_)))
                           _tl76047643_
                           _hd76037641_)))
                      (_g75927633_ _g75957636_))))
               (_g75907679_
                (lambda (_g75957660_)
                  (if (gx#stx-pair? _g75957660_)
                      (let ((_e75977662_ (gx#stx-e _g75957660_)))
                        (let ((_hd75987665_ (##car _e75977662_))
                              (_tl75997667_ (##cdr _e75977662_)))
                          (if (gx#stx-datum? _hd75987665_)
                              (if (equal? (gx#stx-e _hd75987665_) '#f)
                                  ((lambda (_L7670_)
                                     (_lp7585_
                                      _L7670_
                                      (fx+ _k7588_ '1)
                                      _r7589_))
                                   _tl75997667_)
                                  (_g75917657_ _g75957660_))
                              (_g75917657_ _g75957660_))))
                      (_g75917657_ _g75957660_)))))
          (_g75907679_ _rest7587_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda7260
      (lambda (_stx7262_ _compiled-body?7263_)
        (letrec ((_generate-simple7265_
                  (lambda (_hd7569_ _body7570_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7569_
                     _body7570_
                     _compiled-body?7263_)))
                 (_generate-values7266_
                  (lambda (_hd7346_ _body7347_)
                    (let _lp7349_ ((_rest7351_ _hd7346_)
                                   (_bind7352_ '())
                                   (_check7353_ '())
                                   (_post7354_ '()))
                      (let* ((_g73577368_
                              (lambda (_g73587365_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g73587365_)))
                             (_g73567382_
                              (lambda (_g73587371_)
                                ((lambda ()
                                   (let* ((_body7375_
                                           (if _compiled-body?7263_
                                               _body7347_
                                               (gxc#compile-e _body7347_)))
                                          (_body7377_
                                           (_generate-values-post7268_
                                            _post7354_
                                            _body7375_))
                                          (_body7379_
                                           (_generate-values-check7267_
                                            _check7353_
                                            _body7377_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7352_)
                                                 (cons _body7379_ '()))))))))
                             (_g73557566_
                              (lambda (_g73587385_)
                                (if (gx#stx-pair? _g73587385_)
                                    (let ((_e73617387_ (gx#stx-e _g73587385_)))
                                      (let ((_hd73627390_ (##car _e73617387_))
                                            (_tl73637392_ (##cdr _e73617387_)))
                                        ((lambda (_L7395_ _L7396_)
                                           (let* ((_g74117436_
                                                   (lambda (_g74127433_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g74127433_)))
                                                  (_g74107516_
                                                   (lambda (_g74127439_)
                                                     (if (gx#stx-pair?
                                                          _g74127439_)
                                                         (let ((_e74267441_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74127439_)))
                   (let ((_hd74277444_ (##car _e74267441_))
                         (_tl74287446_ (##cdr _e74267441_)))
                     (if (gx#stx-pair? _tl74287446_)
                         (let ((_e74297449_ (gx#stx-e _tl74287446_)))
                           (let ((_hd74307452_ (##car _e74297449_))
                                 (_tl74317454_ (##cdr _e74297449_)))
                             (if (gx#stx-null? _tl74317454_)
                                 ((lambda (_L7457_ _L7458_)
                                    (let* ((_vals7471_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7473_ (gxc#compile-e _L7457_))
                                           (_check-values7475_
                                            (gxc#generate-runtime-check-values
                                             _vals7471_
                                             _L7458_))
                                           (_refs7477_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7471_
                                             _L7458_)))
                                      (_lp7349_
                                       _L7395_
                                       (foldl1 cons
                                               (cons (cons _vals7471_
                                                           (cons _expr7473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7352_)
                                               (map (lambda (_e74797481_)
                                                      (let* ((_g74837492_
                                                              _e74797481_)
                                                             (_E74857496_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g74837492_)))
                     (_K74867501_
                      (lambda (_eid7499_)
                        (cons _eid7499_ (cons '#!void '())))))
                (if (##pair? _g74837492_)
                    (let ((_hd74877504_ (##car _g74837492_))
                          (_tl74887506_ (##cdr _g74837492_)))
                      (let ((_eid7509_ _hd74877504_))
                        (if (##pair? _tl74887506_)
                            (let ((_hd74897511_ (##car _tl74887506_))
                                  (_tl74907513_ (##cdr _tl74887506_)))
                              (if (##null? _tl74907513_)
                                  (_K74867501_ _eid7509_)
                                  (_E74857496_)))
                            (_E74857496_))))
                    (_E74857496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7477_))
                                       (cons _check-values7475_ _check7353_)
                                       (foldl1 cons _refs7477_ _post7354_))))
                                  _hd74307452_
                                  _hd74277444_)
                                 (_g74117436_ _g74127439_))))
                         (_g74117436_ _g74127439_))))
                 (_g74117436_ _g74127439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74097563_
                                                   (lambda (_g74127519_)
                                                     (if (gx#stx-pair?
                                                          _g74127519_)
                                                         (let ((_e74157521_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74127519_)))
                   (let ((_hd74167524_ (##car _e74157521_))
                         (_tl74177526_ (##cdr _e74157521_)))
                     (if (gx#stx-pair? _hd74167524_)
                         (let ((_e74187529_ (gx#stx-e _hd74167524_)))
                           (let ((_hd74197532_ (##car _e74187529_))
                                 (_tl74207534_ (##cdr _e74187529_)))
                             (if (gx#stx-null? _tl74207534_)
                                 (if (gx#stx-pair? _tl74177526_)
                                     (let ((_e74217537_
                                            (gx#stx-e _tl74177526_)))
                                       (let ((_hd74227540_ (##car _e74217537_))
                                             (_tl74237542_
                                              (##cdr _e74217537_)))
                                         (if (gx#stx-null? _tl74237542_)
                                             ((lambda (_L7545_ _L7546_)
                                                (let ((_eid7560_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7546_))
                                                      (_expr7561_
                                                       (gxc#compile-e
                                                        _L7545_)))
                                                  (_lp7349_
                                                   _L7395_
                                                   (cons (cons _eid7560_
                                                               (cons _expr7561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7352_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7353_
                                                   _post7354_)))
                                              _hd74227540_
                                              _hd74197532_)
                                             (_g74107516_ _g74127519_))))
                                     (_g74107516_ _g74127519_))
                                 (_g74107516_ _g74127519_))))
                         (_g74107516_ _g74127519_))))
                 (_g74107516_ _g74127519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g74097563_ _L7396_)))
                                         _tl73637392_
                                         _hd73627390_)))
                                    (_g73567382_ _g73587385_)))))
                        (_g73557566_ _rest7351_)))))
                 (_generate-values-check7267_
                  (lambda (_check7343_ _body7344_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7344_ '())
                                  (reverse _check7343_)))))
                 (_generate-values-post7268_
                  (lambda (_post7336_ _body7337_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7337_ '())
                                  (map (lambda (_g73387340_)
                                         (cons 'set! _g73387340_))
                                       (reverse _post7336_)))))))
          (let* ((_g72707287_
                  (lambda (_g72717284_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g72717284_)))
                 (_g72697333_
                  (lambda (_g72717290_)
                    (if (gx#stx-pair? _g72717290_)
                        (let ((_e72747292_ (gx#stx-e _g72717290_)))
                          (let ((_hd72757295_ (##car _e72747292_))
                                (_tl72767297_ (##cdr _e72747292_)))
                            (if (gx#stx-pair? _tl72767297_)
                                (let ((_e72777300_ (gx#stx-e _tl72767297_)))
                                  (let ((_hd72787303_ (##car _e72777300_))
                                        (_tl72797305_ (##cdr _e72777300_)))
                                    (if (gx#stx-pair? _tl72797305_)
                                        (let ((_e72807308_
                                               (gx#stx-e _tl72797305_)))
                                          (let ((_hd72817311_
                                                 (##car _e72807308_))
                                                (_tl72827313_
                                                 (##cdr _e72807308_)))
                                            (if (gx#stx-null? _tl72827313_)
                                                ((lambda (_L7316_ _L7317_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7317_)
                                                       (_generate-simple7265_
                                                        _L7317_
                                                        _L7316_)
                                                       (_generate-values7266_
                                                        _L7317_
                                                        _L7316_)))
                                                 _hd72817311_
                                                 _hd72787303_)
                                                (_g72707287_ _g72717290_))))
                                        (_g72707287_ _g72717290_))))
                                (_g72707287_ _g72717290_))))
                        (_g72707287_ _g72717290_)))))
            (_g72697333_ _stx7262_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7575_)
          (let ((_compiled-body?7577_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda7260
             _stx7575_
             _compiled-body?7577_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g11842_
          (let ((_g11841_ (length _g11842_)))
            (cond ((fx= _g11841_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g11842_))
                  ((fx= _g11841_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda7260
                          _g11842_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g11842_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx6844_)
      (letrec ((_generate-values6846_
                (lambda (_hd7089_ _body7090_)
                  (let _lp7092_ ((_rest7094_ _hd7089_) (_bind7095_ '()))
                    (let* ((_rest70967104_ _rest7094_)
                           (_E70997108_
                            (lambda ()
                              (error '"No clause matching" _rest70967104_)))
                           (_else70987115_
                            (lambda ()
                              (let ((_bind7112_ (reverse _bind7095_))
                                    (_body7113_ (gxc#compile-e _body7090_)))
                                (cons 'letrec*
                                      (cons _bind7112_
                                            (cons _body7113_ '()))))))
                           (_K71007249_
                            (lambda (_rest7118_ _hd-bind7119_)
                              (let* ((_g71227147_
                                      (lambda (_g71237144_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g71237144_)))
                                     (_g71217199_
                                      (lambda (_g71237150_)
                                        (if (gx#stx-pair? _g71237150_)
                                            (let ((_e71377152_
                                                   (gx#stx-e _g71237150_)))
                                              (let ((_hd71387155_
                                                     (##car _e71377152_))
                                                    (_tl71397157_
                                                     (##cdr _e71377152_)))
                                                (if (gx#stx-pair? _tl71397157_)
                                                    (let ((_e71407160_
                                                           (gx#stx-e
                                                            _tl71397157_)))
                                                      (let ((_hd71417163_
                                                             (##car _e71407160_))
                                                            (_tl71427165_
                                                             (##cdr _e71407160_)))
                                                        (if (gx#stx-null?
                                                             _tl71427165_)
                                                            ((lambda (_L7168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7169_)
                       (let* ((_vals7188_ (gxc#generate-runtime-temporary__0))
                              (_tmp7190_ (gxc#generate-runtime-temporary__0))
                              (_expr7192_ (gxc#compile-e _L7168_))
                              (_check-values7194_
                               (gxc#generate-runtime-check-values
                                _tmp7190_
                                _L7169_))
                              (_refs7196_
                               (gxc#generate-runtime-let-values-bind
                                _vals7188_
                                _L7169_)))
                         (_lp7092_
                          _rest7118_
                          (foldl1 cons
                                  (cons (cons _vals7188_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7192_ '()))
                              '())
                        (cons _check-values7194_ (cons _tmp7190_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7095_)
                                  _refs7196_))))
                     _hd71417163_
                     _hd71387155_)
                    (_g71227147_ _g71237150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71227147_
                                                     _g71237150_))))
                                            (_g71227147_ _g71237150_))))
                                     (_g71207246_
                                      (lambda (_g71237202_)
                                        (if (gx#stx-pair? _g71237202_)
                                            (let ((_e71267204_
                                                   (gx#stx-e _g71237202_)))
                                              (let ((_hd71277207_
                                                     (##car _e71267204_))
                                                    (_tl71287209_
                                                     (##cdr _e71267204_)))
                                                (if (gx#stx-pair? _hd71277207_)
                                                    (let ((_e71297212_
                                                           (gx#stx-e
                                                            _hd71277207_)))
                                                      (let ((_hd71307215_
                                                             (##car _e71297212_))
                                                            (_tl71317217_
                                                             (##cdr _e71297212_)))
                                                        (if (gx#stx-null?
                                                             _tl71317217_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl71287209_)
                        (let ((_e71327220_ (gx#stx-e _tl71287209_)))
                          (let ((_hd71337223_ (##car _e71327220_))
                                (_tl71347225_ (##cdr _e71327220_)))
                            (if (gx#stx-null? _tl71347225_)
                                ((lambda (_L7228_ _L7229_)
                                   (let ((_eid7243_
                                          (gxc#generate-runtime-binding-id*
                                           _L7229_))
                                         (_expr7244_ (gxc#compile-e _L7228_)))
                                     (_lp7092_
                                      _rest7118_
                                      (cons (cons _eid7243_
                                                  (cons _expr7244_ '()))
                                            _bind7095_))))
                                 _hd71337223_
                                 _hd71307215_)
                                (_g71217199_ _g71237202_))))
                        (_g71217199_ _g71237202_))
                    (_g71217199_ _g71237202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71217199_
                                                     _g71237202_))))
                                            (_g71217199_ _g71237202_)))))
                                (_g71207246_ _hd-bind7119_)))))
                      (if (##pair? _rest70967104_)
                          (let ((_hd71017252_ (##car _rest70967104_))
                                (_tl71027254_ (##cdr _rest70967104_)))
                            (let* ((_hd-bind7257_ _hd71017252_)
                                   (_rest7259_ _tl71027254_))
                              (_K71007249_ _rest7259_ _hd-bind7257_)))
                          (_else70987115_))))))
               (_generate-letrec?6847_
                (lambda (_hd6979_)
                  (let _lp6981_ ((_rest6983_ _hd6979_))
                    (let* ((_rest69846992_ _rest6983_)
                           (_E69876996_
                            (lambda ()
                              (error '"No clause matching" _rest69846992_)))
                           (_else69867000_ (lambda () '#t))
                           (_K69887077_
                            (lambda (_rest7003_ _hd-bind7004_)
                              (let* ((_g70067023_
                                      (lambda (_g70077020_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g70077020_)))
                                     (_g70057074_
                                      (lambda (_g70077026_)
                                        (if (gx#stx-pair? _g70077026_)
                                            (let ((_e70107028_
                                                   (gx#stx-e _g70077026_)))
                                              (let ((_hd70117031_
                                                     (##car _e70107028_))
                                                    (_tl70127033_
                                                     (##cdr _e70107028_)))
                                                (if (gx#stx-pair? _hd70117031_)
                                                    (let ((_e70137036_
                                                           (gx#stx-e
                                                            _hd70117031_)))
                                                      (let ((_hd70147039_
                                                             (##car _e70137036_))
                                                            (_tl70157041_
                                                             (##cdr _e70137036_)))
                                                        (if (gx#stx-null?
                                                             _tl70157041_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70127033_)
                        (let ((_e70167044_ (gx#stx-e _tl70127033_)))
                          (let ((_hd70177047_ (##car _e70167044_))
                                (_tl70187049_ (##cdr _e70167044_)))
                            (if (gx#stx-null? _tl70187049_)
                                ((lambda (_L7052_ _L7053_)
                                   (if (_is-lambda-expr?6848_ _L7052_)
                                       (_lp6981_ _rest7003_)
                                       '#f))
                                 _hd70177047_
                                 _hd70147039_)
                                (_g70067023_ _g70077026_))))
                        (_g70067023_ _g70077026_))
                    (_g70067023_ _g70077026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70067023_
                                                     _g70077026_))))
                                            (_g70067023_ _g70077026_)))))
                                (_g70057074_ _hd-bind7004_)))))
                      (if (##pair? _rest69846992_)
                          (let ((_hd69897080_ (##car _rest69846992_))
                                (_tl69907082_ (##cdr _rest69846992_)))
                            (let* ((_hd-bind7085_ _hd69897080_)
                                   (_rest7087_ _tl69907082_))
                              (_K69887077_ _rest7087_ _hd-bind7085_)))
                          (_else69867000_))))))
               (_is-lambda-expr?6848_
                (lambda (_expr6916_)
                  (let* ((_g69196933_
                          (lambda (_g69206930_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69206930_)))
                         (_g69186940_ (lambda (_g69206936_) ((lambda () '#f))))
                         (_g69176976_
                          (lambda (_g69206943_)
                            (if (gx#stx-pair? _g69206943_)
                                (let ((_e69236945_ (gx#stx-e _g69206943_)))
                                  (let ((_hd69246948_ (##car _e69236945_))
                                        (_tl69256950_ (##cdr _e69236945_)))
                                    (if (gx#identifier? _hd69246948_)
                                        (if (gx#stx-eq? '%#lambda _hd69246948_)
                                            (if (gx#stx-pair? _tl69256950_)
                                                (let ((_e69266953_
                                                       (gx#stx-e
                                                        _tl69256950_)))
                                                  (let ((_hd69276956_
                                                         (##car _e69266953_))
                                                        (_tl69286958_
                                                         (##cdr _e69266953_)))
                                                    ((lambda (_L6961_ _L6962_)
                                                       '#t)
                                                     _tl69286958_
                                                     _hd69276956_)))
                                                (_g69186940_ _g69206943_))
                                            (_g69186940_ _g69206943_))
                                        (_g69186940_ _g69206943_))))
                                (_g69186940_ _g69206943_)))))
                    (_g69176976_ _expr6916_)))))
        (let* ((_g68506867_
                (lambda (_g68516864_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g68516864_)))
               (_g68496913_
                (lambda (_g68516870_)
                  (if (gx#stx-pair? _g68516870_)
                      (let ((_e68546872_ (gx#stx-e _g68516870_)))
                        (let ((_hd68556875_ (##car _e68546872_))
                              (_tl68566877_ (##cdr _e68546872_)))
                          (if (gx#stx-pair? _tl68566877_)
                              (let ((_e68576880_ (gx#stx-e _tl68566877_)))
                                (let ((_hd68586883_ (##car _e68576880_))
                                      (_tl68596885_ (##cdr _e68576880_)))
                                  (if (gx#stx-pair? _tl68596885_)
                                      (let ((_e68606888_
                                             (gx#stx-e _tl68596885_)))
                                        (let ((_hd68616891_
                                               (##car _e68606888_))
                                              (_tl68626893_
                                               (##cdr _e68606888_)))
                                          (if (gx#stx-null? _tl68626893_)
                                              ((lambda (_L6896_ _L6897_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L6897_)
                                                     (if (_generate-letrec?6847_
                                                          _L6897_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L6897_
                                                          _L6896_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L6897_
                                                          _L6896_
                                                          '#f))
                                                     (_generate-values6846_
                                                      _L6897_
                                                      _L6896_)))
                                               _hd68616891_
                                               _hd68586883_)
                                              (_g68506867_ _g68516870_))))
                                      (_g68506867_ _g68516870_))))
                              (_g68506867_ _g68516870_))))
                      (_g68506867_ _g68516870_)))))
          (_g68496913_ _stx6844_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6737_)
      (let _lp6739_ ((_rest6741_ _hd6737_))
        (let* ((_g67456766_
                (lambda (_g67466763_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g67466763_)))
               (_g67446773_ (lambda (_g67466769_) ((lambda () '#f))))
               (_g67436780_
                (lambda (_g67466776_)
                  (if (gx#stx-null? _g67466776_)
                      ((lambda () '#t))
                      (_g67446773_ _g67466776_))))
               (_g67426841_
                (lambda (_g67466783_)
                  (if (gx#stx-pair? _g67466783_)
                      (let ((_e67506785_ (gx#stx-e _g67466783_)))
                        (let ((_hd67516788_ (##car _e67506785_))
                              (_tl67526790_ (##cdr _e67506785_)))
                          (if (gx#stx-pair? _hd67516788_)
                              (let ((_e67536793_ (gx#stx-e _hd67516788_)))
                                (let ((_hd67546796_ (##car _e67536793_))
                                      (_tl67556798_ (##cdr _e67536793_)))
                                  (if (gx#stx-pair? _hd67546796_)
                                      (let ((_e67566801_
                                             (gx#stx-e _hd67546796_)))
                                        (let ((_hd67576804_
                                               (##car _e67566801_))
                                              (_tl67586806_
                                               (##cdr _e67566801_)))
                                          (if (gx#stx-null? _tl67586806_)
                                              (if (gx#stx-pair? _tl67556798_)
                                                  (let ((_e67596809_
                                                         (gx#stx-e
                                                          _tl67556798_)))
                                                    (let ((_hd67606812_
                                                           (##car _e67596809_))
                                                          (_tl67616814_
                                                           (##cdr _e67596809_)))
                                                      (if (gx#stx-null?
                                                           _tl67616814_)
                                                          ((lambda (_L6817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6818_
                            _L6819_)
                     (_lp6739_ _L6817_))
                   _tl67526790_
                   _hd67606812_
                   _hd67576804_)
                  (_g67436780_ _g67466783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g67436780_ _g67466783_))
                                              (_g67436780_ _g67466783_))))
                                      (_g67436780_ _g67466783_))))
                              (_g67436780_ _g67466783_))))
                      (_g67436780_ _g67466783_)))))
          (_g67426841_ _rest6741_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6661_ _hd6662_ _body6663_ _compiled-body?6664_)
      (letrec ((_generate16666_
                (lambda (_bind6668_)
                  (let* ((_g66706687_
                          (lambda (_g66716684_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g66716684_)))
                         (_g66696734_
                          (lambda (_g66716690_)
                            (if (gx#stx-pair? _g66716690_)
                                (let ((_e66746692_ (gx#stx-e _g66716690_)))
                                  (let ((_hd66756695_ (##car _e66746692_))
                                        (_tl66766697_ (##cdr _e66746692_)))
                                    (if (gx#stx-pair? _hd66756695_)
                                        (let ((_e66776700_
                                               (gx#stx-e _hd66756695_)))
                                          (let ((_hd66786703_
                                                 (##car _e66776700_))
                                                (_tl66796705_
                                                 (##cdr _e66776700_)))
                                            (if (gx#stx-null? _tl66796705_)
                                                (if (gx#stx-pair? _tl66766697_)
                                                    (let ((_e66806708_
                                                           (gx#stx-e
                                                            _tl66766697_)))
                                                      (let ((_hd66816711_
                                                             (##car _e66806708_))
                                                            (_tl66826713_
                                                             (##cdr _e66806708_)))
                                                        (if (gx#stx-null?
                                                             _tl66826713_)
                                                            ((lambda (_L6716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6717_)
                       (cons (gxc#generate-runtime-binding-id* _L6717_)
                             (cons (gxc#compile-e _L6716_) '())))
                     _hd66816711_
                     _hd66786703_)
                    (_g66706687_ _g66716690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66706687_ _g66716690_))
                                                (_g66706687_ _g66716690_))))
                                        (_g66706687_ _g66716690_))))
                                (_g66706687_ _g66716690_)))))
                    (_g66696734_ _bind6668_)))))
        (cons _form6661_
              (cons (map _generate16666_ _hd6662_)
                    (cons (if _compiled-body?6664_
                              _body6663_
                              (gxc#compile-e _body6663_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6569_)
      (letrec ((_generate16571_
                (lambda (_datum6623_)
                  (if (let ((_$e6625_ (null? _datum6623_)))
                        (if _$e6625_
                            _$e6625_
                            (let ((_$e6628_ (interned-symbol? _datum6623_)))
                              (if _$e6628_
                                  _$e6628_
                                  (let ((_$e6631_
                                         (gx#self-quoting? _datum6623_)))
                                    (if _$e6631_
                                        _$e6631_
                                        (eof-object? _datum6623_)))))))
                      _datum6623_
                      (if (uninterned-symbol? _datum6623_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10690
                           _datum6623_
                           '#t)
                          (if (pair? _datum6623_)
                              (cons (_generate16571_ (car _datum6623_))
                                    (_generate16571_ (cdr _datum6623_)))
                              (if (box? _datum6623_)
                                  (box (_generate16571_ (unbox _datum6623_)))
                                  (if (vector? _datum6623_)
                                      (vector-map _generate16571_ _datum6623_)
                                      (if (let ((_$e6634_
                                                 (s8vector? _datum6623_)))
                                            (if _$e6634_
                                                _$e6634_
                                                (let ((_$e6637_
                                                       (u8vector?
                                                        _datum6623_)))
                                                  (if _$e6637_
                                                      _$e6637_
                                                      (let ((_$e6640_
                                                             (s16vector?
                                                              _datum6623_)))
                                                        (if _$e6640_
                                                            _$e6640_
                                                            (let ((_$e6643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6623_)))
                      (if _$e6643_
                          _$e6643_
                          (let ((_$e6646_ (s32vector? _datum6623_)))
                            (if _$e6646_
                                _$e6646_
                                (let ((_$e6649_ (u32vector? _datum6623_)))
                                  (if _$e6649_
                                      _$e6649_
                                      (let ((_$e6652_
                                             (s64vector? _datum6623_)))
                                        (if _$e6652_
                                            _$e6652_
                                            (let ((_$e6655_
                                                   (u64vector? _datum6623_)))
                                              (if _$e6655_
                                                  _$e6655_
                                                  (let ((_$e6658_
                                                         (f32vector?
                                                          _datum6623_)))
                                                    (if _$e6658_
                                                        _$e6658_
                                                        (f64vector?
                                                         _datum6623_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6623_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6569_))))))))))
        (let* ((_g65736586_
                (lambda (_g65746583_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g65746583_)))
               (_g65726620_
                (lambda (_g65746589_)
                  (if (gx#stx-pair? _g65746589_)
                      (let ((_e65766591_ (gx#stx-e _g65746589_)))
                        (let ((_hd65776594_ (##car _e65766591_))
                              (_tl65786596_ (##cdr _e65766591_)))
                          (if (gx#stx-pair? _tl65786596_)
                              (let ((_e65796599_ (gx#stx-e _tl65786596_)))
                                (let ((_hd65806602_ (##car _e65796599_))
                                      (_tl65816604_ (##cdr _e65796599_)))
                                  (if (gx#stx-null? _tl65816604_)
                                      ((lambda (_L6607_)
                                         (cons 'quote
                                               (cons (_generate16571_
                                                      (gx#stx-e _L6607_))
                                                     '())))
                                       _hd65806602_)
                                      (_g65736586_ _g65746589_))))
                              (_g65736586_ _g65746589_))))
                      (_g65736586_ _g65746589_)))))
          (_g65726620_ _stx6569_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6262_)
      (let* ((_g62646278_
              (lambda (_g62656275_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62656275_)))
             (_g62636566_
              (lambda (_g62656281_)
                (if (gx#stx-pair? _g62656281_)
                    (let ((_e62686283_ (gx#stx-e _g62656281_)))
                      (let ((_hd62696286_ (##car _e62686283_))
                            (_tl62706288_ (##cdr _e62686283_)))
                        (if (gx#stx-pair? _tl62706288_)
                            (let ((_e62716291_ (gx#stx-e _tl62706288_)))
                              (let ((_hd62726294_ (##car _e62716291_))
                                    (_tl62736296_ (##cdr _e62716291_)))
                                ((lambda (_L6299_ _L6300_)
                                   (let ((_rator6313_ (gxc#compile-e _L6300_))
                                         (_rands6314_
                                          (map gxc#compile-e _L6299_)))
                                     (let* ((_g63176369_
                                             (lambda (_g63186366_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g63186366_)))
                                            (_g63166376_
                                             (lambda (_g63186372_)
                                               ((lambda ()
                                                  (cons _rator6313_
                                                        _rands6314_)))))
                                            (_g63156563_
                                             (lambda (_g63186379_)
                                               (if (gx#stx-pair? _g63186379_)
                                                   (let ((_e63236381_
                                                          (gx#stx-e
                                                           _g63186379_)))
                                                     (let ((_hd63246384_
                                                            (##car _e63236381_))
                                                           (_tl63256386_
                                                            (##cdr _e63236381_)))
                                                       (if (gx#identifier?
                                                            _hd63246384_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd63246384_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl63256386_)
                           (let ((_e63266389_ (gx#stx-e _tl63256386_)))
                             (let ((_hd63276392_ (##car _e63266389_))
                                   (_tl63286394_ (##cdr _e63266389_)))
                               (if (gx#stx-pair? _hd63276392_)
                                   (let ((_e63296397_ (gx#stx-e _hd63276392_)))
                                     (let ((_hd63306400_ (##car _e63296397_))
                                           (_tl63316402_ (##cdr _e63296397_)))
                                       (if (gx#stx-pair? _hd63306400_)
                                           (let ((_e63326405_
                                                  (gx#stx-e _hd63306400_)))
                                             (let ((_hd63336408_
                                                    (##car _e63326405_))
                                                   (_tl63346410_
                                                    (##cdr _e63326405_)))
                                               (if (gx#stx-pair? _tl63346410_)
                                                   (let ((_e63356413_
                                                          (gx#stx-e
                                                           _tl63346410_)))
                                                     (let ((_hd63366416_
                                                            (##car _e63356413_))
                                                           (_tl63376418_
                                                            (##cdr _e63356413_)))
                                                       (if (gx#stx-pair?
                                                            _hd63366416_)
                                                           (let ((_e63386421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd63366416_)))
                     (let ((_hd63396424_ (##car _e63386421_))
                           (_tl63406426_ (##cdr _e63386421_)))
                       (if (gx#identifier? _hd63396424_)
                           (if (gx#stx-eq? 'lambda _hd63396424_)
                               (if (gx#stx-pair? _tl63406426_)
                                   (let ((_e63416429_ (gx#stx-e _tl63406426_)))
                                     (let ((_hd63426432_ (##car _e63416429_))
                                           (_tl63436434_ (##cdr _e63416429_)))
                                       (if (gx#stx-pair/null? _hd63426432_)
                                           (if (fx>= (gx#stx-length
                                                      _hd63426432_)
                                                     '0)
                                               (let ((_g11843_
                                                      (gx#syntax-split-splice
                                                       _hd63426432_
                                                       '0)))
                                                 (begin
                                                   (let ((_g11844_
                                                          (values-count
                                                           _g11843_)))
                                                     (if (not (fx= _g11844_ 2))
                                                         (error "Context expects 2 values"
                                                                _g11844_)))
                                                   (let ((_target63446437_
                                                          (values-ref
                                                           _g11843_
                                                           0))
                                                         (_tl63466439_
                                                          (values-ref
                                                           _g11843_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl63466439_)
                                                         (letrec ((_loop63476442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd63456445_ _arg63516447_)
                             (if (gx#stx-pair? _hd63456445_)
                                 (let ((_e63486450_ (gx#stx-e _hd63456445_)))
                                   (let ((_lp-hd63496453_ (##car _e63486450_))
                                         (_lp-tl63506455_ (##cdr _e63486450_)))
                                     (_loop63476442_
                                      _lp-tl63506455_
                                      (cons _lp-hd63496453_ _arg63516447_))))
                                 (let ((_arg63526458_ (reverse _arg63516447_)))
                                   (if (gx#stx-pair/null? _tl63436434_)
                                       (if (fx>= (gx#stx-length _tl63436434_)
                                                 '0)
                                           (let ((_g11845_
                                                  (gx#syntax-split-splice
                                                   _tl63436434_
                                                   '0)))
                                             (begin
                                               (let ((_g11846_
                                                      (values-count _g11845_)))
                                                 (if (not (fx= _g11846_ 2))
                                                     (error "Context expects 2 values"
                                                            _g11846_)))
                                               (let ((_target63536461_
                                                      (values-ref _g11845_ 0))
                                                     (_tl63556463_
                                                      (values-ref _g11845_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl63556463_)
                                                     (letrec ((_loop63566466_
                                                               (lambda (_hd63546469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body63606471_)
                         (if (gx#stx-pair? _hd63546469_)
                             (let ((_e63576474_ (gx#stx-e _hd63546469_)))
                               (let ((_lp-hd63586477_ (##car _e63576474_))
                                     (_lp-tl63596479_ (##cdr _e63576474_)))
                                 (_loop63566466_
                                  _lp-tl63596479_
                                  (cons _lp-hd63586477_ _body63606471_))))
                             (let ((_body63616482_ (reverse _body63606471_)))
                               (if (gx#stx-null? _tl63376418_)
                                   (if (gx#stx-null? _tl63316402_)
                                       (if (gx#stx-pair? _tl63286394_)
                                           (let ((_e63626485_
                                                  (gx#stx-e _tl63286394_)))
                                             (let ((_hd63636488_
                                                    (##car _e63626485_))
                                                   (_tl63646490_
                                                    (##cdr _e63626485_)))
                                               (if (gx#stx-null? _tl63646490_)
                                                   ((lambda (_L6493_
                                                             _L6494_
                                                             _L6495_
                                                             _L6496_)
                                                      (if (eq? _L6496_ _L6493_)
                                                          (if (fx= (length _rands6314_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g65326535_ _g65336537_)
                                               (cons _g65326535_ _g65336537_))
                                             '()
                                             _L6495_))))
                      (let* ((_id6540_ _L6496_)
                             (_args6549_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g65416544_ _g65426546_)
                                          (cons _g65416544_ _g65426546_))
                                        '()
                                        _L6495_)))
                             (_body6558_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g65506553_ _g65516555_)
                                          (cons _g65506553_ _g65516555_))
                                        '()
                                        _L6494_)))
                             (_init6560_ (map list _args6549_ _rands6314_)))
                        (cons 'let
                              (cons _id6540_ (cons _init6560_ _body6558_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6262_))
                  (_g63166376_ _g63186379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd63636488_
                                                    _body63616482_
                                                    _arg63526458_
                                                    _hd63336408_)
                                                   (_g63166376_ _g63186379_))))
                                           (_g63166376_ _g63186379_))
                                       (_g63166376_ _g63186379_))
                                   (_g63166376_ _g63186379_)))))))
               (_loop63566466_ _target63536461_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g63166376_
                                                      _g63186379_)))))
                                           (_g63166376_ _g63186379_))
                                       (_g63166376_ _g63186379_)))))))
                   (_loop63476442_ _target63446437_ '()))
                 (_g63166376_ _g63186379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63166376_ _g63186379_))
                                           (_g63166376_ _g63186379_))))
                                   (_g63166376_ _g63186379_))
                               (_g63166376_ _g63186379_))
                           (_g63166376_ _g63186379_))))
                   (_g63166376_ _g63186379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63166376_ _g63186379_))))
                                           (_g63166376_ _g63186379_))))
                                   (_g63166376_ _g63186379_))))
                           (_g63166376_ _g63186379_))
                       (_g63166376_ _g63186379_))
                   (_g63166376_ _g63186379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63166376_
                                                    _g63186379_)))))
                                       (_g63156563_ _rator6313_))))
                                 _tl62736296_
                                 _hd62726294_)))
                            (_g62646278_ _g62656281_))))
                    (_g62646278_ _g62656281_)))))
        (_g62636566_ _stx6262_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6224_)
      (let* ((_g62266236_
              (lambda (_g62276233_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62276233_)))
             (_g62256259_
              (lambda (_g62276239_)
                (if (gx#stx-pair? _g62276239_)
                    (let ((_e62296241_ (gx#stx-e _g62276239_)))
                      (let ((_hd62306244_ (##car _e62296241_))
                            (_tl62316246_ (##cdr _e62296241_)))
                        ((lambda (_L6249_)
                           (cons 'if (map gxc#compile-e _L6249_)))
                         _tl62316246_)))
                    (_g62266236_ _g62276239_)))))
        (_g62256259_ _stx6224_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6173_)
      (let* ((_g61756188_
              (lambda (_g61766185_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61766185_)))
             (_g61746221_
              (lambda (_g61766191_)
                (if (gx#stx-pair? _g61766191_)
                    (let ((_e61786193_ (gx#stx-e _g61766191_)))
                      (let ((_hd61796196_ (##car _e61786193_))
                            (_tl61806198_ (##cdr _e61786193_)))
                        (if (gx#stx-pair? _tl61806198_)
                            (let ((_e61816201_ (gx#stx-e _tl61806198_)))
                              (let ((_hd61826204_ (##car _e61816201_))
                                    (_tl61836206_ (##cdr _e61816201_)))
                                (if (gx#stx-null? _tl61836206_)
                                    ((lambda (_L6209_)
                                       (gxc#generate-runtime-binding-id
                                        _L6209_))
                                     _hd61826204_)
                                    (_g61756188_ _g61766191_))))
                            (_g61756188_ _g61766191_))))
                    (_g61756188_ _g61766191_)))))
        (_g61746221_ _stx6173_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6106_)
      (let* ((_g61086125_
              (lambda (_g61096122_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61096122_)))
             (_g61076170_
              (lambda (_g61096128_)
                (if (gx#stx-pair? _g61096128_)
                    (let ((_e61126130_ (gx#stx-e _g61096128_)))
                      (let ((_hd61136133_ (##car _e61126130_))
                            (_tl61146135_ (##cdr _e61126130_)))
                        (if (gx#stx-pair? _tl61146135_)
                            (let ((_e61156138_ (gx#stx-e _tl61146135_)))
                              (let ((_hd61166141_ (##car _e61156138_))
                                    (_tl61176143_ (##cdr _e61156138_)))
                                (if (gx#stx-pair? _tl61176143_)
                                    (let ((_e61186146_
                                           (gx#stx-e _tl61176143_)))
                                      (let ((_hd61196149_ (##car _e61186146_))
                                            (_tl61206151_ (##cdr _e61186146_)))
                                        (if (gx#stx-null? _tl61206151_)
                                            ((lambda (_L6154_ _L6155_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6155_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6154_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd61196149_
                                             _hd61166141_)
                                            (_g61086125_ _g61096128_))))
                                    (_g61086125_ _g61096128_))))
                            (_g61086125_ _g61096128_))))
                    (_g61086125_ _g61096128_)))))
        (_g61076170_ _stx6106_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6039_)
      (let* ((_g60416058_
              (lambda (_g60426055_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60426055_)))
             (_g60406103_
              (lambda (_g60426061_)
                (if (gx#stx-pair? _g60426061_)
                    (let ((_e60456063_ (gx#stx-e _g60426061_)))
                      (let ((_hd60466066_ (##car _e60456063_))
                            (_tl60476068_ (##cdr _e60456063_)))
                        (if (gx#stx-pair? _tl60476068_)
                            (let ((_e60486071_ (gx#stx-e _tl60476068_)))
                              (let ((_hd60496074_ (##car _e60486071_))
                                    (_tl60506076_ (##cdr _e60486071_)))
                                (if (gx#stx-pair? _tl60506076_)
                                    (let ((_e60516079_
                                           (gx#stx-e _tl60506076_)))
                                      (let ((_hd60526082_ (##car _e60516079_))
                                            (_tl60536084_ (##cdr _e60516079_)))
                                        (if (gx#stx-null? _tl60536084_)
                                            ((lambda (_L6087_ _L6088_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6087_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6088_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60526082_
                                             _hd60496074_)
                                            (_g60416058_ _g60426061_))))
                                    (_g60416058_ _g60426061_))))
                            (_g60416058_ _g60426061_))))
                    (_g60416058_ _g60426061_)))))
        (_g60406103_ _stx6039_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5972_)
      (let* ((_g59745991_
              (lambda (_g59755988_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59755988_)))
             (_g59736036_
              (lambda (_g59755994_)
                (if (gx#stx-pair? _g59755994_)
                    (let ((_e59785996_ (gx#stx-e _g59755994_)))
                      (let ((_hd59795999_ (##car _e59785996_))
                            (_tl59806001_ (##cdr _e59785996_)))
                        (if (gx#stx-pair? _tl59806001_)
                            (let ((_e59816004_ (gx#stx-e _tl59806001_)))
                              (let ((_hd59826007_ (##car _e59816004_))
                                    (_tl59836009_ (##cdr _e59816004_)))
                                (if (gx#stx-pair? _tl59836009_)
                                    (let ((_e59846012_
                                           (gx#stx-e _tl59836009_)))
                                      (let ((_hd59856015_ (##car _e59846012_))
                                            (_tl59866017_ (##cdr _e59846012_)))
                                        (if (gx#stx-null? _tl59866017_)
                                            ((lambda (_L6020_ _L6021_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6020_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6021_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd59856015_
                                             _hd59826007_)
                                            (_g59745991_ _g59755994_))))
                                    (_g59745991_ _g59755994_))))
                            (_g59745991_ _g59755994_))))
                    (_g59745991_ _g59755994_)))))
        (_g59736036_ _stx5972_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5889_)
      (let* ((_g58915912_
              (lambda (_g58925909_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58925909_)))
             (_g58905969_
              (lambda (_g58925915_)
                (if (gx#stx-pair? _g58925915_)
                    (let ((_e58965917_ (gx#stx-e _g58925915_)))
                      (let ((_hd58975920_ (##car _e58965917_))
                            (_tl58985922_ (##cdr _e58965917_)))
                        (if (gx#stx-pair? _tl58985922_)
                            (let ((_e58995925_ (gx#stx-e _tl58985922_)))
                              (let ((_hd59005928_ (##car _e58995925_))
                                    (_tl59015930_ (##cdr _e58995925_)))
                                (if (gx#stx-pair? _tl59015930_)
                                    (let ((_e59025933_
                                           (gx#stx-e _tl59015930_)))
                                      (let ((_hd59035936_ (##car _e59025933_))
                                            (_tl59045938_ (##cdr _e59025933_)))
                                        (if (gx#stx-pair? _tl59045938_)
                                            (let ((_e59055941_
                                                   (gx#stx-e _tl59045938_)))
                                              (let ((_hd59065944_
                                                     (##car _e59055941_))
                                                    (_tl59075946_
                                                     (##cdr _e59055941_)))
                                                (if (gx#stx-null? _tl59075946_)
                                                    ((lambda (_L5949_
                                                              _L5950_
                                                              _L5951_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5949_)
                           (cons (gxc#compile-e _L5950_)
                                 (cons (gxc#compile-e _L5951_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd59065944_
                                                     _hd59035936_
                                                     _hd59005928_)
                                                    (_g58915912_
                                                     _g58925915_))))
                                            (_g58915912_ _g58925915_))))
                                    (_g58915912_ _g58925915_))))
                            (_g58915912_ _g58925915_))))
                    (_g58915912_ _g58925915_)))))
        (_g58905969_ _stx5889_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5790_)
      (let* ((_g57925817_
              (lambda (_g57935814_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57935814_)))
             (_g57915886_
              (lambda (_g57935820_)
                (if (gx#stx-pair? _g57935820_)
                    (let ((_e57985822_ (gx#stx-e _g57935820_)))
                      (let ((_hd57995825_ (##car _e57985822_))
                            (_tl58005827_ (##cdr _e57985822_)))
                        (if (gx#stx-pair? _tl58005827_)
                            (let ((_e58015830_ (gx#stx-e _tl58005827_)))
                              (let ((_hd58025833_ (##car _e58015830_))
                                    (_tl58035835_ (##cdr _e58015830_)))
                                (if (gx#stx-pair? _tl58035835_)
                                    (let ((_e58045838_
                                           (gx#stx-e _tl58035835_)))
                                      (let ((_hd58055841_ (##car _e58045838_))
                                            (_tl58065843_ (##cdr _e58045838_)))
                                        (if (gx#stx-pair? _tl58065843_)
                                            (let ((_e58075846_
                                                   (gx#stx-e _tl58065843_)))
                                              (let ((_hd58085849_
                                                     (##car _e58075846_))
                                                    (_tl58095851_
                                                     (##cdr _e58075846_)))
                                                (if (gx#stx-pair? _tl58095851_)
                                                    (let ((_e58105854_
                                                           (gx#stx-e
                                                            _tl58095851_)))
                                                      (let ((_hd58115857_
                                                             (##car _e58105854_))
                                                            (_tl58125859_
                                                             (##cdr _e58105854_)))
                                                        (if (gx#stx-null?
                                                             _tl58125859_)
                                                            ((lambda (_L5862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5863_
                              _L5864_
                              _L5865_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L5863_)
                                   (cons (gxc#compile-e _L5862_)
                                         (cons (gxc#compile-e _L5864_)
                                               (cons (gxc#compile-e _L5865_)
                                                     (cons ''#f '())))))))
                     _hd58115857_
                     _hd58085849_
                     _hd58055841_
                     _hd58025833_)
                    (_g57925817_ _g57935820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57925817_
                                                     _g57935820_))))
                                            (_g57925817_ _g57935820_))))
                                    (_g57925817_ _g57935820_))))
                            (_g57925817_ _g57935820_))))
                    (_g57925817_ _g57935820_)))))
        (_g57915886_ _stx5790_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5707_)
      (let* ((_g57095730_
              (lambda (_g57105727_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57105727_)))
             (_g57085787_
              (lambda (_g57105733_)
                (if (gx#stx-pair? _g57105733_)
                    (let ((_e57145735_ (gx#stx-e _g57105733_)))
                      (let ((_hd57155738_ (##car _e57145735_))
                            (_tl57165740_ (##cdr _e57145735_)))
                        (if (gx#stx-pair? _tl57165740_)
                            (let ((_e57175743_ (gx#stx-e _tl57165740_)))
                              (let ((_hd57185746_ (##car _e57175743_))
                                    (_tl57195748_ (##cdr _e57175743_)))
                                (if (gx#stx-pair? _tl57195748_)
                                    (let ((_e57205751_
                                           (gx#stx-e _tl57195748_)))
                                      (let ((_hd57215754_ (##car _e57205751_))
                                            (_tl57225756_ (##cdr _e57205751_)))
                                        (if (gx#stx-pair? _tl57225756_)
                                            (let ((_e57235759_
                                                   (gx#stx-e _tl57225756_)))
                                              (let ((_hd57245762_
                                                     (##car _e57235759_))
                                                    (_tl57255764_
                                                     (##cdr _e57235759_)))
                                                (if (gx#stx-null? _tl57255764_)
                                                    ((lambda (_L5767_
                                                              _L5768_
                                                              _L5769_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5767_)
                           (cons (gxc#compile-e _L5768_)
                                 (cons (gxc#compile-e _L5769_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57245762_
                                                     _hd57215754_
                                                     _hd57185746_)
                                                    (_g57095730_
                                                     _g57105733_))))
                                            (_g57095730_ _g57105733_))))
                                    (_g57095730_ _g57105733_))))
                            (_g57095730_ _g57105733_))))
                    (_g57095730_ _g57105733_)))))
        (_g57085787_ _stx5707_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5608_)
      (let* ((_g56105635_
              (lambda (_g56115632_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56115632_)))
             (_g56095704_
              (lambda (_g56115638_)
                (if (gx#stx-pair? _g56115638_)
                    (let ((_e56165640_ (gx#stx-e _g56115638_)))
                      (let ((_hd56175643_ (##car _e56165640_))
                            (_tl56185645_ (##cdr _e56165640_)))
                        (if (gx#stx-pair? _tl56185645_)
                            (let ((_e56195648_ (gx#stx-e _tl56185645_)))
                              (let ((_hd56205651_ (##car _e56195648_))
                                    (_tl56215653_ (##cdr _e56195648_)))
                                (if (gx#stx-pair? _tl56215653_)
                                    (let ((_e56225656_
                                           (gx#stx-e _tl56215653_)))
                                      (let ((_hd56235659_ (##car _e56225656_))
                                            (_tl56245661_ (##cdr _e56225656_)))
                                        (if (gx#stx-pair? _tl56245661_)
                                            (let ((_e56255664_
                                                   (gx#stx-e _tl56245661_)))
                                              (let ((_hd56265667_
                                                     (##car _e56255664_))
                                                    (_tl56275669_
                                                     (##cdr _e56255664_)))
                                                (if (gx#stx-pair? _tl56275669_)
                                                    (let ((_e56285672_
                                                           (gx#stx-e
                                                            _tl56275669_)))
                                                      (let ((_hd56295675_
                                                             (##car _e56285672_))
                                                            (_tl56305677_
                                                             (##cdr _e56285672_)))
                                                        (if (gx#stx-null?
                                                             _tl56305677_)
                                                            ((lambda (_L5680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5681_
                              _L5682_
                              _L5683_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5681_)
                                   (cons (gxc#compile-e _L5680_)
                                         (cons (gxc#compile-e _L5682_)
                                               (cons (gxc#compile-e _L5683_)
                                                     (cons ''#f '())))))))
                     _hd56295675_
                     _hd56265667_
                     _hd56235659_
                     _hd56205651_)
                    (_g56105635_ _g56115638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56105635_
                                                     _g56115638_))))
                                            (_g56105635_ _g56115638_))))
                                    (_g56105635_ _g56115638_))))
                            (_g56105635_ _g56115638_))))
                    (_g56105635_ _g56115638_)))))
        (_g56095704_ _stx5608_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5525_)
      (let* ((_g55275548_
              (lambda (_g55285545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55285545_)))
             (_g55265605_
              (lambda (_g55285551_)
                (if (gx#stx-pair? _g55285551_)
                    (let ((_e55325553_ (gx#stx-e _g55285551_)))
                      (let ((_hd55335556_ (##car _e55325553_))
                            (_tl55345558_ (##cdr _e55325553_)))
                        (if (gx#stx-pair? _tl55345558_)
                            (let ((_e55355561_ (gx#stx-e _tl55345558_)))
                              (let ((_hd55365564_ (##car _e55355561_))
                                    (_tl55375566_ (##cdr _e55355561_)))
                                (if (gx#stx-pair? _tl55375566_)
                                    (let ((_e55385569_
                                           (gx#stx-e _tl55375566_)))
                                      (let ((_hd55395572_ (##car _e55385569_))
                                            (_tl55405574_ (##cdr _e55385569_)))
                                        (if (gx#stx-pair? _tl55405574_)
                                            (let ((_e55415577_
                                                   (gx#stx-e _tl55405574_)))
                                              (let ((_hd55425580_
                                                     (##car _e55415577_))
                                                    (_tl55435582_
                                                     (##cdr _e55415577_)))
                                                (if (gx#stx-null? _tl55435582_)
                                                    ((lambda (_L5585_
                                                              _L5586_
                                                              _L5587_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5585_)
                           (cons (gxc#compile-e _L5586_)
                                 (cons (gxc#compile-e _L5587_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd55425580_
                                                     _hd55395572_
                                                     _hd55365564_)
                                                    (_g55275548_
                                                     _g55285551_))))
                                            (_g55275548_ _g55285551_))))
                                    (_g55275548_ _g55285551_))))
                            (_g55275548_ _g55285551_))))
                    (_g55275548_ _g55285551_)))))
        (_g55265605_ _stx5525_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5426_)
      (let* ((_g54285453_
              (lambda (_g54295450_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54295450_)))
             (_g54275522_
              (lambda (_g54295456_)
                (if (gx#stx-pair? _g54295456_)
                    (let ((_e54345458_ (gx#stx-e _g54295456_)))
                      (let ((_hd54355461_ (##car _e54345458_))
                            (_tl54365463_ (##cdr _e54345458_)))
                        (if (gx#stx-pair? _tl54365463_)
                            (let ((_e54375466_ (gx#stx-e _tl54365463_)))
                              (let ((_hd54385469_ (##car _e54375466_))
                                    (_tl54395471_ (##cdr _e54375466_)))
                                (if (gx#stx-pair? _tl54395471_)
                                    (let ((_e54405474_
                                           (gx#stx-e _tl54395471_)))
                                      (let ((_hd54415477_ (##car _e54405474_))
                                            (_tl54425479_ (##cdr _e54405474_)))
                                        (if (gx#stx-pair? _tl54425479_)
                                            (let ((_e54435482_
                                                   (gx#stx-e _tl54425479_)))
                                              (let ((_hd54445485_
                                                     (##car _e54435482_))
                                                    (_tl54455487_
                                                     (##cdr _e54435482_)))
                                                (if (gx#stx-pair? _tl54455487_)
                                                    (let ((_e54465490_
                                                           (gx#stx-e
                                                            _tl54455487_)))
                                                      (let ((_hd54475493_
                                                             (##car _e54465490_))
                                                            (_tl54485495_
                                                             (##cdr _e54465490_)))
                                                        (if (gx#stx-null?
                                                             _tl54485495_)
                                                            ((lambda (_L5498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5499_
                              _L5500_
                              _L5501_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5499_)
                                   (cons (gxc#compile-e _L5498_)
                                         (cons (gxc#compile-e _L5500_)
                                               (cons (gxc#compile-e _L5501_)
                                                     (cons ''#f '())))))))
                     _hd54475493_
                     _hd54445485_
                     _hd54415477_
                     _hd54385469_)
                    (_g54285453_ _g54295456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g54285453_
                                                     _g54295456_))))
                                            (_g54285453_ _g54295456_))))
                                    (_g54285453_ _g54295456_))))
                            (_g54285453_ _g54295456_))))
                    (_g54285453_ _g54295456_)))))
        (_g54275522_ _stx5426_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5335_)
      (let* ((_g53375347_
              (lambda (_g53385344_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53385344_)))
             (_g53365423_
              (lambda (_g53385350_)
                (if (gx#stx-pair? _g53385350_)
                    (let ((_e53405352_ (gx#stx-e _g53385350_)))
                      (let ((_hd53415355_ (##car _e53405352_))
                            (_tl53425357_ (##cdr _e53405352_)))
                        ((lambda (_L5360_)
                           (let ((_ht5370_ (make-hash-table-eq)))
                             (let _lp5372_ ((_rest5374_ _L5360_)
                                            (_loads5375_ '()))
                               (letrec ((_K5377_ (lambda (_ctx5416_ _rest5417_)
                                                   (let ((_id5419_
                                                          (##structure-ref
                                                           _ctx5416_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht5370_
                                                          _id5419_
                                                          '#f)
                                                         (_lp5372_
                                                          _rest5417_
                                                          _loads5375_)
                                                         (let ((_rt5421_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id5419_)
                         '"__rt")))
                   (begin
                     (table-set! _ht5370_ _id5419_ _rt5421_)
                     (_lp5372_ _rest5417_ (cons _rt5421_ _loads5375_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest53785386_ _rest5374_)
                                        (_E53815390_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest53785386_)))
                                        (_else53805398_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g53935395_)
                                                        (list 'load-module
                                                              _g53935395_))
                                                      (reverse _loads5375_)))))
                                        (_K53825404_
                                         (lambda (_rest5401_ _in5402_)
                                           (if (##structure-instance-of?
                                                _in5402_
                                                'gx#module-context::t)
                                               (_K5377_ _in5402_ _rest5401_)
                                               (if (##structure-direct-instance-of?
                                                    _in5402_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in5402_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp5372_
                                                        _rest5401_
                                                        _loads5375_)
                                                       (_K5377_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in5402_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest5401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in5402_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in5402_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp5372_
                                                            _rest5401_
                                                            _loads5375_)
                                                           (_K5377_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in5402_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest5401_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx5335_
                _in5402_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest53785386_)
                                       (let ((_hd53835407_
                                              (##car _rest53785386_))
                                             (_tl53845409_
                                              (##cdr _rest53785386_)))
                                         (let* ((_in5412_ _hd53835407_)
                                                (_rest5414_ _tl53845409_))
                                           (_K53825404_ _rest5414_ _in5412_)))
                                       (_else53805398_)))))))
                         _tl53425357_)))
                    (_g53375347_ _g53385350_)))))
        (_g53365423_ _stx5335_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx5158_)
      (letrec ((_add-lift!5160_
                (lambda (_expr5333_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5333_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5161_
                (lambda (_stxq5328_)
                  (let ((_gid5330_
                         (gxc#generate-runtime-temporary__opt-lambda10634 '#t))
                        (_qid5331_
                         (gxc#generate-runtime-identifier _stxq5328_)))
                    (begin
                      (_add-lift!5160_
                       (cons 'define
                             (cons _gid5330_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5331_
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
                      _gid5330_))))
               (_generate-serialized5162_
                (lambda (_stxq5318_ _marks5319_)
                  (let* ((_mark-refs5321_
                          (map _generate-mark5163_ _marks5319_))
                         (_gid5323_
                          (gxc#generate-runtime-temporary__opt-lambda10634
                           '#t))
                         (_qid5325_
                          (gxc#generate-runtime-identifier _stxq5318_)))
                    (begin
                      (_add-lift!5160_
                       (cons 'define
                             (cons _gid5323_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5321_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5323_))))
               (_generate-mark5163_
                (lambda (_mark5304_)
                  (let ((_$e5306_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5304_
                          '#f)))
                    (if _$e5306_
                        (values _$e5306_)
                        (let* ((_gid5309_
                                (gxc#generate-runtime-temporary__opt-lambda10634
                                 '#t))
                               (_repr5311_ (_serialize-mark5164_ _mark5304_))
                               (_ctx5313_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5304_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5315_
                                (if (eq? _ctx5313_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5165_
                                                             _ctx5313_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5304_
                             _gid5309_)
                            (_add-lift!5160_
                             (cons 'define
                                   (cons _gid5309_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5311_ '()))
                   (cons _ctx-ref5315_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5309_))))))
               (_serialize-mark5164_
                (lambda (_mark5251_)
                  (letrec ((_quote-e5253_
                            (lambda (_sym5302_)
                              (if (interned-symbol? _sym5302_)
                                  _sym5302_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5302_)))))
                    (let* ((_mark52545263_ _mark5251_)
                           (_E52565267_
                            (lambda ()
                              (error '"No clause matching" _mark52545263_)))
                           (_K52575279_
                            (lambda (_trace5270_
                                     _phi5271_
                                     _ctx5272_
                                     _subst5273_)
                              (let ((_subs5275_
                                     (if _subst5273_
                                         (table->list _subst5273_)
                                         '())))
                                (cons _phi5271_
                                      (map (lambda (_pair5277_)
                                             (cons (_quote-e5253_
                                                    (car _pair5277_))
                                                   (_quote-e5253_
                                                    (cdr _pair5277_))))
                                           _subs5275_))))))
                      (if (##structure-instance-of?
                           _mark52545263_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e52585282_ (##vector-ref _mark52545263_ '1))
                                 (_subst5285_ _e52585282_)
                                 (_e52595287_ (##vector-ref _mark52545263_ '2))
                                 (_ctx5290_ _e52595287_)
                                 (_e52605292_ (##vector-ref _mark52545263_ '3))
                                 (_phi5295_ _e52605292_)
                                 (_e52615297_ (##vector-ref _mark52545263_ '4))
                                 (_trace5300_ _e52615297_))
                            (_K52575279_
                             _trace5300_
                             _phi5295_
                             _ctx5290_
                             _subst5285_))
                          (_E52565267_))))))
               (_context-ref5165_
                (lambda (_ctx5238_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5238_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5240_
                             (_context-ref-nested5167_ _ctx5238_))
                            (_ctx-origin5241_
                             (_context-ref-origin5166_ _ctx5238_))
                            (_origin5242_
                             (_context-ref-origin5166_
                              (gx#current-expander-context))))
                        (if (eq? _origin5242_ _ctx-origin5241_)
                            (let ((_ref5244_
                                   (_context-ref-nested5167_
                                    (gx#current-expander-context))))
                              (let _lp5246_ ((_ref5248_ (cdr _ref5244_))
                                             (_ctx-ref5249_
                                              (cdr _ctx-ref5240_)))
                                (if (if (pair? _ref5248_)
                                        (eq? (car _ref5248_)
                                             (car _ctx-ref5249_))
                                        '#f)
                                    (_lp5246_
                                     (cdr _ref5248_)
                                     (cdr _ctx-ref5249_))
                                    (cons '#f _ctx-ref5249_))))
                            _ctx-ref5240_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5238_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5166_
                (lambda (_ctx5230_)
                  (let _lp5232_ ((_ctx5234_ _ctx5230_))
                    (let ((_super5236_
                           (##structure-ref
                            _ctx5234_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5236_
                           'gx#module-context::t)
                          (_lp5232_ _super5236_)
                          _ctx5234_)))))
               (_context-ref-nested5167_
                (lambda (_ctx5221_)
                  (let _lp5223_ ((_ctx5225_ _ctx5221_) (_r5226_ '()))
                    (let ((_super5228_
                           (##structure-ref
                            _ctx5225_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5228_
                           'gx#module-context::t)
                          (_lp5223_
                           _super5228_
                           (cons (car (##structure-ref
                                       _ctx5225_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5226_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5225_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5226_)))))))
        (let* ((_g51695182_
                (lambda (_g51705179_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g51705179_)))
               (_g51685218_
                (lambda (_g51705185_)
                  (if (gx#stx-pair? _g51705185_)
                      (let ((_e51725187_ (gx#stx-e _g51705185_)))
                        (let ((_hd51735190_ (##car _e51725187_))
                              (_tl51745192_ (##cdr _e51725187_)))
                          (if (gx#stx-pair? _tl51745192_)
                              (let ((_e51755195_ (gx#stx-e _tl51745192_)))
                                (let ((_hd51765198_ (##car _e51755195_))
                                      (_tl51775200_ (##cdr _e51755195_)))
                                  (if (gx#stx-null? _tl51775200_)
                                      ((lambda (_L5203_)
                                         (if (gx#identifier? _L5203_)
                                             (let ((_marks5216_
                                                    (##direct-structure-ref
                                                     _L5203_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5216_)
                                                   (_generate-simple5161_
                                                    _L5203_)
                                                   (_generate-serialized5162_
                                                    _L5203_
                                                    _marks5216_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5203_)))
                                       _hd51765198_)
                                      (_g51695182_ _g51705185_))))
                              (_g51695182_ _g51705185_))))
                      (_g51695182_ _g51705185_)))))
          (_g51685218_ _stx5158_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5091_)
      (let* ((_g50935110_
              (lambda (_g50945107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g50945107_)))
             (_g50925155_
              (lambda (_g50945113_)
                (if (gx#stx-pair? _g50945113_)
                    (let ((_e50975115_ (gx#stx-e _g50945113_)))
                      (let ((_hd50985118_ (##car _e50975115_))
                            (_tl50995120_ (##cdr _e50975115_)))
                        (if (gx#stx-pair? _tl50995120_)
                            (let ((_e51005123_ (gx#stx-e _tl50995120_)))
                              (let ((_hd51015126_ (##car _e51005123_))
                                    (_tl51025128_ (##cdr _e51005123_)))
                                (if (gx#stx-pair? _tl51025128_)
                                    (let ((_e51035131_
                                           (gx#stx-e _tl51025128_)))
                                      (let ((_hd51045134_ (##car _e51035131_))
                                            (_tl51055136_ (##cdr _e51035131_)))
                                        (if (gx#stx-null? _tl51055136_)
                                            ((lambda (_L5139_ _L5140_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5140_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5139_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd51045134_
                                             _hd51015126_)
                                            (_g50935110_ _g50945113_))))
                                    (_g50935110_ _g50945113_))))
                            (_g50935110_ _g50945113_))))
                    (_g50935110_ _g50945113_)))))
        (_g50925155_ _stx5091_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5040_ _state5041_)
      (let* ((_g50435053_
              (lambda (_g50445050_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g50445050_)))
             (_g50425088_
              (lambda (_g50445056_)
                (if (gx#stx-pair? _g50445056_)
                    (let ((_e50465058_ (gx#stx-e _g50445056_)))
                      (let ((_hd50475061_ (##car _e50465058_))
                            (_tl50485063_ (##cdr _e50465058_)))
                        ((lambda (_L5066_)
                           (let* ((_c-body5080_
                                   (map (lambda (_g50755077_)
                                          (gxc#compile-e
                                           _g50755077_
                                           _state5041_))
                                        _L5066_))
                                  (_c-body5085_
                                   (filter (lambda (_$obj5082_)
                                             (not (eq? _$obj5082_ '#!void)))
                                           _c-body5080_)))
                             (cons '%#begin _c-body5085_)))
                         _tl50485063_)))
                    (_g50435053_ _g50445056_)))))
        (_g50425088_ _stx5040_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4948_ _state4949_)
      (let* ((_g49514961_
              (lambda (_g49524958_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49524958_)))
             (_g49505037_
              (lambda (_g49524964_)
                (if (gx#stx-pair? _g49524964_)
                    (let ((_e49544966_ (gx#stx-e _g49524964_)))
                      (let ((_hd49554969_ (##car _e49544966_))
                            (_tl49564971_ (##cdr _e49544966_)))
                        ((lambda (_L4974_)
                           (let* ((_phi4984_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block4986_
                                   (gxc#meta-state-begin-phi!
                                    _state4949_
                                    _phi4984_))
                                  (_compiled4989_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L4974_)
                                       _state4949_))
                                    gx#current-expander-phi
                                    _phi4984_)))
                             (let* ((_g49925002_
                                     (lambda (_g49934999_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49934999_)))
                                    (_g49915034_
                                     (lambda (_g49935005_)
                                       (if (gx#stx-pair? _g49935005_)
                                           (let ((_e49955007_
                                                  (gx#stx-e _g49935005_)))
                                             (let ((_hd49965010_
                                                    (##car _e49955007_))
                                                   (_tl49975012_
                                                    (##cdr _e49955007_)))
                                               (if (gx#identifier?
                                                    _hd49965010_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd49965010_)
                                                       ((lambda (_L5015_)
                                                          (let ((_c-body5032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5029_)
                                   (not (eq? _$obj5029_ '#!void)))
                                 _L5015_)))
                    (if _block4986_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block4986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5032_))
                        (if (null? _c-body5032_)
                            '#!void
                            (cons '%#begin-syntax _c-body5032_)))))
                _tl49975012_)
               (_g49925002_ _g49935005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g49925002_ _g49935005_))))
                                           (_g49925002_ _g49935005_)))))
                               (_g49915034_ _compiled4989_))))
                         _tl49564971_)))
                    (_g49514961_ _g49524964_)))))
        (_g49505037_ _stx4948_))))
  (define gxc#generate-meta-module%
    (lambda (_stx4879_ _state4880_)
      (begin
        (gxc#meta-state-end-phi! _state4880_)
        (let* ((_g48824896_
                (lambda (_g48834893_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g48834893_)))
               (_g48814945_
                (lambda (_g48834899_)
                  (if (gx#stx-pair? _g48834899_)
                      (let ((_e48864901_ (gx#stx-e _g48834899_)))
                        (let ((_hd48874904_ (##car _e48864901_))
                              (_tl48884906_ (##cdr _e48864901_)))
                          (if (gx#stx-pair? _tl48884906_)
                              (let ((_e48894909_ (gx#stx-e _tl48884906_)))
                                (let ((_hd48904912_ (##car _e48894909_))
                                      (_tl48914914_ (##cdr _e48894909_)))
                                  ((lambda (_L4917_ _L4918_)
                                     (let ((_key4931_
                                            (gx#core-identifier-key _L4918_)))
                                       (begin
                                         (if (interned-symbol? _key4931_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx4879_
                                              _L4918_
                                              _key4931_))
                                         (let* ((_ctx4933_
                                                 (gx#syntax-local-e__0
                                                  _L4918_))
                                                (_code4936_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx4933_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state4880_))
                                                  gx#current-expander-context
                                                  _ctx4933_))
                                                (_rt4938_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx4933_
                                                  '#f))
                                                (_loader4940_
                                                 (if _rt4938_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt4938_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid4942_
                                                 (gx#stx-e _L4918_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state4880_)
                                             (cons '%#module
                                                   (cons _modid4942_
                                                         (cons _code4936_
                                                               _loader4940_))))))))
                                   _tl48914914_
                                   _hd48904912_)))
                              (_g48824896_ _g48834899_))))
                      (_g48824896_ _g48834899_)))))
          (_g48814945_ _stx4879_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4869_ _context-chain4870_)
      (let _lp4872_ ((_ctx4874_ _ctx4869_) (_path4875_ '()))
        (let ((_super4877_
               (##structure-ref _ctx4874_ '3 gx#phi-context::t '#f)))
          (if (memq _super4877_ _context-chain4870_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx4874_
                           '7
                           gx#module-context::t
                           '#f))
                     _path4875_)
              (if (##structure-instance-of? _super4877_ 'gx#module-context::t)
                  (_lp4872_
                   _super4877_
                   (cons (car (##structure-ref
                               _ctx4874_
                               '7
                               gx#module-context::t
                               '#f))
                         _path4875_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx4874_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path4875_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp4864_ ((_ctx4866_ (gx#current-expander-context)) (_r4867_ '()))
        (if (##structure-instance-of? _ctx4866_ 'gx#module-context::t)
            (_lp4864_
             (##structure-ref _ctx4866_ '3 gx#phi-context::t '#f)
             (cons _ctx4866_ _r4867_))
            _r4867_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4633_ _state4634_)
      (letrec* ((_context-chain4636_ (gxc#current-context-chain))
                (_make-import-spec4637_
                 (lambda (_in4800_)
                   (let* ((_in48014813_ _in4800_)
                          (_E48034817_
                           (lambda ()
                             (error '"No clause matching" _in48014813_)))
                          (_K48044827_
                           (lambda (_phi4820_
                                    _name4821_
                                    _src-name4822_
                                    _src-phi4823_
                                    _src-key4824_
                                    _src-ctx4825_)
                             (cons _phi4820_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name4821_)
                                         (cons _src-phi4823_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name4822_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in48014813_
                          (##type-id gx#module-import::t))
                         (let ((_e48054830_ (##vector-ref _in48014813_ '1)))
                           (if (##structure-direct-instance-of?
                                _e48054830_
                                (##type-id gx#module-export::t))
                               (let* ((_e48084833_
                                       (##vector-ref _e48054830_ '1))
                                      (_src-ctx4836_ _e48084833_)
                                      (_e48094838_
                                       (##vector-ref _e48054830_ '2))
                                      (_src-key4841_ _e48094838_)
                                      (_e48104843_
                                       (##vector-ref _e48054830_ '3))
                                      (_src-phi4846_ _e48104843_)
                                      (_e48114848_
                                       (##vector-ref _e48054830_ '4))
                                      (_src-name4851_ _e48114848_)
                                      (_e48064853_
                                       (##vector-ref _in48014813_ '2))
                                      (_name4856_ _e48064853_)
                                      (_e48074858_
                                       (##vector-ref _in48014813_ '3))
                                      (_phi4861_ _e48074858_))
                                 (_K48044827_
                                  _phi4861_
                                  _name4856_
                                  _src-name4851_
                                  _src-phi4846_
                                  _src-key4841_
                                  _src-ctx4836_))
                               (_E48034817_)))
                         (_E48034817_)))))
                (_make-import-path4638_
                 (lambda (_ctx4798_)
                   (gxc#generate-meta-import-path
                    _ctx4798_
                    _context-chain4636_)))
                (_make-import-spec-in4639_
                 (lambda (_ctx4795_ _in4796_)
                   (cons 'spec:
                         (cons (_make-import-path4638_ _ctx4795_)
                               (reverse _in4796_))))))
        (begin
          (gxc#meta-state-end-phi! _state4634_)
          (let* ((_g46414651_
                  (lambda (_g46424648_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g46424648_)))
                 (_g46404792_
                  (lambda (_g46424654_)
                    (if (gx#stx-pair? _g46424654_)
                        (let ((_e46444656_ (gx#stx-e _g46424654_)))
                          (let ((_hd46454659_ (##car _e46444656_))
                                (_tl46464661_ (##cdr _e46444656_)))
                            ((lambda (_L4664_)
                               (let _lp4675_ ((_rest4677_ _L4664_)
                                              (_current-src4678_ '#f)
                                              (_current-in4679_ '())
                                              (_r4680_ '()))
                                 (let* ((_rest46814689_ _rest4677_)
                                        (_E46844693_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest46814689_)))
                                        (_else46834699_
                                         (lambda ()
                                           (let ((_r4697_ (if _current-src4678_
                                                              (cons (_make-import-spec-in4639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4678_
                             _current-in4679_)
                            _r4680_)
                      _r4680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4697_)))))
                                        (_K46854780_
                                         (lambda (_rest4702_ _in4703_)
                                           (if (##structure-direct-instance-of?
                                                _in4703_
                                                'gx#module-import::t)
                                               (let* ((_in47044711_ _in4703_)
                                                      (_E47064715_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in47044711_)))
                                                      (_K47074720_
                                                       (lambda (_src-ctx4718_)
                                                         (if (eq? _current-src4678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4718_)
                     (_lp4675_
                      _rest4702_
                      _current-src4678_
                      (cons (_make-import-spec4637_ _in4703_) _current-in4679_)
                      _r4680_)
                     (if _current-src4678_
                         (_lp4675_
                          _rest4702_
                          _src-ctx4718_
                          (cons (_make-import-spec4637_ _in4703_) '())
                          (cons (_make-import-spec-in4639_
                                 _current-src4678_
                                 _current-in4679_)
                                _r4680_))
                         (_lp4675_
                          _rest4702_
                          _src-ctx4718_
                          (cons (_make-import-spec4637_ _in4703_) '())
                          _r4680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in47044711_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e47084723_
                                                            (##vector-ref
                                                             _in47044711_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e47084723_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e47094726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e47084723_ '1))
                          (_src-ctx4729_ _e47094726_))
                     (_K47074720_ _src-ctx4729_))
                   (_E47064715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E47064715_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4703_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4731_
                                                           (##direct-structure-ref
                                                            _in4703_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4733_
                                                           (##direct-structure-ref
                                                            _in4703_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in4773_
                                                           (let* ((_g47344743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4638_ _src4733_))
                          (_E47374747_
                           (lambda ()
                             (error '"No clause matching" _g47344743_)))
                          (_try-match47364758_
                           (lambda ()
                             (let* ((_K47384753_
                                     (lambda (_path4751_)
                                       (cons 'in: _path4751_)))
                                    (_path4756_ _g47344743_))
                               (_K47384753_ _path4756_))))
                          (_K47394763_ (lambda (_path4761_) _path4761_)))
                     (if (##pair? _g47344743_)
                         (let ((_hd47404766_ (##car _g47344743_))
                               (_tl47414768_ (##cdr _g47344743_)))
                           (let ((_path4771_ _hd47404766_))
                             (if (##null? _tl47414768_)
                                 (_K47394763_ _path4771_)
                                 (_try-match47364758_))))
                         (_try-match47364758_))))
                  (_r4775_ (if _current-src4678_
                               (cons (_make-import-spec-in4639_
                                      _current-src4678_
                                      _current-in4679_)
                                     _r4680_)
                               _r4680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4675_
                                                      _rest4702_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4731_)
                                                                _src-in4773_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4731_ (cons _src-in4773_ '()))))
                    _r4775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4703_
                                                        'gx#module-context::t)
                                                       (let ((_r4778_ (if _current-src4678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4639_
                                         _current-src4678_
                                         _current-in4679_)
                                        _r4680_)
                                  _r4680_)))
                 (_lp4675_
                  _rest4702_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4638_ _in4703_))
                        _r4778_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest46814689_)
                                       (let ((_hd46864783_
                                              (##car _rest46814689_))
                                             (_tl46874785_
                                              (##cdr _rest46814689_)))
                                         (let* ((_in4788_ _hd46864783_)
                                                (_rest4790_ _tl46874785_))
                                           (_K46854780_ _rest4790_ _in4788_)))
                                       (_else46834699_)))))
                             _tl46464661_)))
                        (_g46414651_ _g46424654_)))))
            (_g46404792_ _stx4633_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4443_ _state4444_)
      (letrec* ((_context-chain4446_ (gxc#current-context-chain))
                (_make-import-path4447_
                 (lambda (_ctx4631_)
                   (gxc#generate-meta-import-path
                    _ctx4631_
                    _context-chain4446_))))
        (let* ((_g44494459_
                (lambda (_g44504456_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44504456_)))
               (_g44484628_
                (lambda (_g44504462_)
                  (if (gx#stx-pair? _g44504462_)
                      (let ((_e44524464_ (gx#stx-e _g44504462_)))
                        (let ((_hd44534467_ (##car _e44524464_))
                              (_tl44544469_ (##cdr _e44524464_)))
                          ((lambda (_L4472_)
                             (let _lp4483_ ((_rest4485_ _L4472_) (_r4486_ '()))
                               (let* ((_rest44874495_ _rest4485_)
                                      (_E44904499_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest44874495_)))
                                      (_else44894503_
                                       (lambda ()
                                         (cons '%#export (reverse _r4486_))))
                                      (_K44914616_
                                       (lambda (_rest4506_ _out4507_)
                                         (let* ((_out45084521_ _out4507_)
                                                (_E45114525_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out45084521_)))
                                                (_try-match45104588_
                                                 (lambda ()
                                                   (let ((_K45124575_
                                                          (lambda (_phi4529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4530_)
                    (let* ((_out4570_
                            (if _src4530_
                                (cons 'import:
                                      (cons (let* ((_g45314540_
                                                    (_make-import-path4447_
                                                     _src4530_))
                                                   (_E45344544_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g45314540_)))
                                                   (_try-match45334555_
                                                    (lambda ()
                                                      (let* ((_K45354550_
                                                              (lambda (_path4548_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4548_)))
                     (_path4553_ _g45314540_))
                (_K45354550_ _path4553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K45364560_
                                                    (lambda (_path4558_)
                                                      _path4558_)))
                                              (if (##pair? _g45314540_)
                                                  (let ((_hd45374563_
                                                         (##car _g45314540_))
                                                        (_tl45384565_
                                                         (##cdr _g45314540_)))
                                                    (let ((_path4568_
                                                           _hd45374563_))
                                                      (if (##null? _tl45384565_)
                                                          (_K45364560_
                                                           _path4568_)
                                                          (_try-match45334555_))))
                                                  (_try-match45334555_)))
                                            '()))
                                '#t))
                           (_out4572_
                            (if (fxzero? _phi4529_)
                                _out4570_
                                (cons 'phi:
                                      (cons _phi4529_ (cons _out4570_ '()))))))
                      (_lp4483_ _rest4506_ (cons _out4572_ _r4486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out45084521_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e45134578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out45084521_ '1))
                        (_src4581_ _e45134578_)
                        (_e45144583_ (##vector-ref _out45084521_ '2))
                        (_phi4586_ _e45144583_))
                   (_K45124575_ _phi4586_ _src4581_))
                 (_E45114525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K45154595_
                                                 (lambda (_name4591_
                                                          _phi4592_
                                                          _key4593_)
                                                   (_lp4483_
                                                    _rest4506_
                                                    (cons (cons 'spec:
                                                                (cons _phi4592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4593_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4591_)
                                          '()))))
                  _r4486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out45084521_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e45164598_
                                                       (##vector-ref
                                                        _out45084521_
                                                        '1))
                                                      (_e45174601_
                                                       (##vector-ref
                                                        _out45084521_
                                                        '2))
                                                      (_key4604_ _e45174601_)
                                                      (_e45184606_
                                                       (##vector-ref
                                                        _out45084521_
                                                        '3))
                                                      (_phi4609_ _e45184606_)
                                                      (_e45194611_
                                                       (##vector-ref
                                                        _out45084521_
                                                        '4))
                                                      (_name4614_ _e45194611_))
                                                 (_K45154595_
                                                  _name4614_
                                                  _phi4609_
                                                  _key4604_))
                                               (_try-match45104588_))))))
                                 (if (##pair? _rest44874495_)
                                     (let ((_hd44924619_
                                            (##car _rest44874495_))
                                           (_tl44934621_
                                            (##cdr _rest44874495_)))
                                       (let* ((_out4624_ _hd44924619_)
                                              (_rest4626_ _tl44934621_))
                                         (_K44914616_ _rest4626_ _out4624_)))
                                     (_else44894503_)))))
                           _tl44544469_)))
                      (_g44494459_ _g44504462_)))))
          (_g44484628_ _stx4443_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4404_ _state4405_)
      (begin
        (gxc#meta-state-end-phi! _state4405_)
        (let* ((_g44074417_
                (lambda (_g44084414_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44084414_)))
               (_g44064440_
                (lambda (_g44084420_)
                  (if (gx#stx-pair? _g44084420_)
                      (let ((_e44104422_ (gx#stx-e _g44084420_)))
                        (let ((_hd44114425_ (##car _e44104422_))
                              (_tl44124427_ (##cdr _e44104422_)))
                          ((lambda (_L4430_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4430_)))
                           _tl44124427_)))
                      (_g44074417_ _g44084420_)))))
          (_g44064440_ _stx4404_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4275_ _state4276_)
      (letrec ((_generate14278_
                (lambda (_id4399_ _eid4400_)
                  (let ((_eid4402_ (gx#stx-e _eid4400_)))
                    (begin
                      (if (interned-symbol? _eid4402_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4275_
                           _eid4402_))
                      (cons (gxc#generate-runtime-identifier _id4399_)
                            (cons _eid4402_ '())))))))
        (let* ((_g42804308_
                (lambda (_g42814305_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g42814305_)))
               (_g42794396_
                (lambda (_g42814311_)
                  (if (gx#stx-pair? _g42814311_)
                      (let ((_e42844313_ (gx#stx-e _g42814311_)))
                        (let ((_hd42854316_ (##car _e42844313_))
                              (_tl42864318_ (##cdr _e42844313_)))
                          (if (gx#stx-pair/null? _tl42864318_)
                              (if (fx>= (gx#stx-length _tl42864318_) '0)
                                  (let ((_g11847_
                                         (gx#syntax-split-splice
                                          _tl42864318_
                                          '0)))
                                    (begin
                                      (let ((_g11848_ (values-count _g11847_)))
                                        (if (not (fx= _g11848_ 2))
                                            (error "Context expects 2 values"
                                                   _g11848_)))
                                      (let ((_target42874321_
                                             (values-ref _g11847_ 0))
                                            (_tl42894323_
                                             (values-ref _g11847_ 1)))
                                        (if (gx#stx-null? _tl42894323_)
                                            (letrec ((_loop42904326_
                                                      (lambda (_hd42884329_
                                                               _eid42944331_
                                                               _id42954333_)
                                                        (if (gx#stx-pair?
                                                             _hd42884329_)
                                                            (let ((_e42914336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd42884329_)))
                      (let ((_lp-hd42924339_ (##car _e42914336_))
                            (_lp-tl42934341_ (##cdr _e42914336_)))
                        (if (gx#stx-pair? _lp-hd42924339_)
                            (let ((_e42984344_ (gx#stx-e _lp-hd42924339_)))
                              (let ((_hd42994347_ (##car _e42984344_))
                                    (_tl43004349_ (##cdr _e42984344_)))
                                (if (gx#stx-pair? _tl43004349_)
                                    (let ((_e43014352_
                                           (gx#stx-e _tl43004349_)))
                                      (let ((_hd43024355_ (##car _e43014352_))
                                            (_tl43034357_ (##cdr _e43014352_)))
                                        (if (gx#stx-null? _tl43034357_)
                                            (_loop42904326_
                                             _lp-tl42934341_
                                             (cons _hd43024355_ _eid42944331_)
                                             (cons _hd42994347_ _id42954333_))
                                            (_g42804308_ _g42814311_))))
                                    (_g42804308_ _g42814311_))))
                            (_g42804308_ _g42814311_))))
                    (let ((_eid42964360_ (reverse _eid42944331_))
                          (_id42974362_ (reverse _id42954333_)))
                      ((lambda (_L4365_ _L4366_)
                         (cons '%#extern
                               (map _generate14278_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g43814384_ _g43824386_)
                                                (cons _g43814384_ _g43824386_))
                                              '()
                                              _L4366_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g43884391_ _g43894393_)
                                                (cons _g43884391_ _g43894393_))
                                              '()
                                              _L4365_)))))
                       _eid42964360_
                       _id42974362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop42904326_
                                               _target42874321_
                                               '()
                                               '()))
                                            (_g42804308_ _g42814311_)))))
                                  (_g42804308_ _g42814311_))
                              (_g42804308_ _g42814311_))))
                      (_g42804308_ _g42814311_)))))
          (_g42794396_ _stx4275_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4070_ _state4071_)
      (letrec ((_generate14073_
                (lambda (_id4270_)
                  (let ((_eid4272_ (gxc#generate-runtime-binding-id _id4270_))
                        (_ident4273_
                         (gxc#generate-runtime-identifier _id4270_)))
                    (cons '%#define-runtime
                          (cons _ident4273_ (cons _eid4272_ '()))))))
               (_generate*4074_
                (lambda (_all4238_)
                  (let* ((_all42394247_ _all4238_)
                         (_E42424251_
                          (lambda ()
                            (error '"No clause matching" _all42394247_)))
                         (_else42414255_ (lambda () (cons '%#begin _all4238_)))
                         (_K42434260_ (lambda (_one4258_) _one4258_)))
                    (if (##pair? _all42394247_)
                        (let ((_hd42444263_ (##car _all42394247_))
                              (_tl42454265_ (##cdr _all42394247_)))
                          (let ((_one4268_ _hd42444263_))
                            (if (##null? _tl42454265_)
                                (_K42434260_ _one4268_)
                                (_else42414255_))))
                        (_else42414255_))))))
        (let* ((_g40764093_
                (lambda (_g40774090_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40774090_)))
               (_g40754235_
                (lambda (_g40774096_)
                  (if (gx#stx-pair? _g40774096_)
                      (let ((_e40804098_ (gx#stx-e _g40774096_)))
                        (let ((_hd40814101_ (##car _e40804098_))
                              (_tl40824103_ (##cdr _e40804098_)))
                          (if (gx#stx-pair? _tl40824103_)
                              (let ((_e40834106_ (gx#stx-e _tl40824103_)))
                                (let ((_hd40844109_ (##car _e40834106_))
                                      (_tl40854111_ (##cdr _e40834106_)))
                                  (if (gx#stx-pair? _tl40854111_)
                                      (let ((_e40864114_
                                             (gx#stx-e _tl40854111_)))
                                        (let ((_hd40874117_
                                               (##car _e40864114_))
                                              (_tl40884119_
                                               (##cdr _e40864114_)))
                                          (if (gx#stx-null? _tl40884119_)
                                              ((lambda (_L4122_ _L4123_)
                                                 (let _lp4139_ ((_rest4141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4123_)
                        (_r4142_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g41474163_
                                                           (lambda (_g41484160_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g41484160_)))
                                                          (_g41464170_
                                                           (lambda (_g41484166_)
                                                             ((lambda ()
                                                                (_generate*4074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4142_))))))
                  (_g41454186_
                   (lambda (_g41484173_)
                     ((lambda (_L4175_)
                        (if (gx#identifier? _L4175_)
                            (_generate*4074_
                             (foldl1 cons
                                     (cons (_generate14073_ _L4175_) '())
                                     _r4142_))
                            (_g41464170_ _g41484173_)))
                      _g41484173_)))
                  (_g41444210_
                   (lambda (_g41484189_)
                     (if (gx#stx-pair? _g41484189_)
                         (let ((_e41554191_ (gx#stx-e _g41484189_)))
                           (let ((_hd41564194_ (##car _e41554191_))
                                 (_tl41574196_ (##cdr _e41554191_)))
                             ((lambda (_L4199_ _L4200_)
                                (_lp4139_
                                 _L4199_
                                 (cons (_generate14073_ _L4200_) _r4142_)))
                              _tl41574196_
                              _hd41564194_)))
                         (_g41454186_ _g41484189_))))
                  (_g41434232_
                   (lambda (_g41484213_)
                     (if (gx#stx-pair? _g41484213_)
                         (let ((_e41504215_ (gx#stx-e _g41484213_)))
                           (let ((_hd41514218_ (##car _e41504215_))
                                 (_tl41524220_ (##cdr _e41504215_)))
                             (if (gx#stx-datum? _hd41514218_)
                                 (if (equal? (gx#stx-e _hd41514218_) '#f)
                                     ((lambda (_L4223_)
                                        (_lp4139_ _L4223_ _r4142_))
                                      _tl41524220_)
                                     (_g41444210_ _g41484213_))
                                 (_g41444210_ _g41484213_))))
                         (_g41444210_ _g41484213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g41434232_
                                                      _rest4141_))))
                                               _hd40874117_
                                               _hd40844109_)
                                              (_g40764093_ _g40774096_))))
                                      (_g40764093_ _g40774096_))))
                              (_g40764093_ _g40774096_))))
                      (_g40764093_ _g40774096_)))))
          (_g40754235_ _stx4070_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3967_ _state3968_)
      (let* ((_g39703987_
              (lambda (_g39713984_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39713984_)))
             (_g39694067_
              (lambda (_g39713990_)
                (if (gx#stx-pair? _g39713990_)
                    (let ((_e39743992_ (gx#stx-e _g39713990_)))
                      (let ((_hd39753995_ (##car _e39743992_))
                            (_tl39763997_ (##cdr _e39743992_)))
                        (if (gx#stx-pair? _tl39763997_)
                            (let ((_e39774000_ (gx#stx-e _tl39763997_)))
                              (let ((_hd39784003_ (##car _e39774000_))
                                    (_tl39794005_ (##cdr _e39774000_)))
                                (if (gx#stx-pair? _tl39794005_)
                                    (let ((_e39804008_
                                           (gx#stx-e _tl39794005_)))
                                      (let ((_hd39814011_ (##car _e39804008_))
                                            (_tl39824013_ (##cdr _e39804008_)))
                                        (if (gx#stx-null? _tl39824013_)
                                            ((lambda (_L4016_ _L4017_)
                                               (let* ((_eid4032_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4017_))
                                                      (_phi4034_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4036_
                                                       (gxc#meta-state-begin-phi!
                                                        _state3968_
                                                        _phi4034_)))
                                                 (begin
                                                   (let* ((_g40394046_
                                                           (lambda (_g40404043_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g40404043_)))
                                                          (_g40384064_
                                                           (lambda (_g40404049_)
                                                             ((lambda (_L4051_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state3968_
                           _phi4034_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4051_ (cons _L4016_ '()))))))
                      _g40404049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g40384064_ _eid4032_))
                                                   (if _block4036_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4017_)
                                             (cons _eid4032_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4017_)
                           (cons _eid4032_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd39814011_
                                             _hd39784003_)
                                            (_g39703987_ _g39713990_))))
                                    (_g39703987_ _g39713990_))))
                            (_g39703987_ _g39713990_))))
                    (_g39703987_ _g39713990_)))))
        (_g39694067_ _stx3967_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3899_ _state3900_)
      (let* ((_g39023919_
              (lambda (_g39033916_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39033916_)))
             (_g39013964_
              (lambda (_g39033922_)
                (if (gx#stx-pair? _g39033922_)
                    (let ((_e39063924_ (gx#stx-e _g39033922_)))
                      (let ((_hd39073927_ (##car _e39063924_))
                            (_tl39083929_ (##cdr _e39063924_)))
                        (if (gx#stx-pair? _tl39083929_)
                            (let ((_e39093932_ (gx#stx-e _tl39083929_)))
                              (let ((_hd39103935_ (##car _e39093932_))
                                    (_tl39113937_ (##cdr _e39093932_)))
                                (if (gx#stx-pair? _tl39113937_)
                                    (let ((_e39123940_
                                           (gx#stx-e _tl39113937_)))
                                      (let ((_hd39133943_ (##car _e39123940_))
                                            (_tl39143945_ (##cdr _e39123940_)))
                                        (if (gx#stx-null? _tl39143945_)
                                            ((lambda (_L3948_ _L3949_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L3949_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L3948_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd39133943_
                                             _hd39103935_)
                                            (_g39023919_ _g39033922_))))
                                    (_g39023919_ _g39033922_))))
                            (_g39023919_ _g39033922_))))
                    (_g39023919_ _g39033922_)))))
        (_g39013964_ _stx3899_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3896_ _state3897_)
      (begin
        (gxc#meta-state-add-phi!
         _state3897_
         (gx#current-expander-phi)
         _stx3896_)
        (gxc#generate-meta-define-values% _stx3896_ _state3897_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3893_ _state3894_)
      (begin
        (gxc#meta-state-add-phi!
         _state3894_
         (gx#current-expander-phi)
         _stx3893_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3890_
      (apply make-struct-instance gxc#meta-state::t _$args3890_)))
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
    (lambda (_self3887_ _ctx3888_)
      (if (##fx< '4 (##vector-length _self3887_))
          (begin
            (##vector-set!
             _self3887_
             '1
             (symbol->string
              (##structure-ref _ctx3888_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self3887_ '2 '1)
            (##vector-set! _self3887_ '3 (make-hash-table-eq))
            (##vector-set! _self3887_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self3887_))))
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
    (lambda _$args3884_
      (apply make-struct-instance gxc#meta-state-block::t _$args3884_)))
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
    (lambda (_state3843_ _phi3844_)
      (let* ((_state38453853_ _state3843_)
             (_E38473857_
              (lambda () (error '"No clause matching" _state38453853_)))
             (_K38483866_
              (lambda (_open3860_ _n3861_ _src3862_)
                (if (table-ref _open3860_ _phi3844_ '#f)
                    '#f
                    (let ((_block-ref3864_
                           (string-append
                            _src3862_
                            '"__"
                            (number->string _n3861_))))
                      (begin
                        (##structure-set!
                         _state3843_
                         (fx+ _n3861_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3860_
                         _phi3844_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3844_
                          _n3861_
                          '()))
                        _block-ref3864_))))))
        (if (##structure-instance-of?
             _state38453853_
             (##type-id gxc#meta-state::t))
            (let* ((_e38493869_ (##vector-ref _state38453853_ '1))
                   (_src3872_ _e38493869_)
                   (_e38503874_ (##vector-ref _state38453853_ '2))
                   (_n3877_ _e38503874_)
                   (_e38513879_ (##vector-ref _state38453853_ '3))
                   (_open3882_ _e38513879_))
              (_K38483866_ _open3882_ _n3877_ _src3872_))
            (_E38473857_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3837_ _phi3838_ _stx3839_)
      (let ((_block3841_
             (table-ref
              (##structure-ref _state3837_ '3 gxc#meta-state::t '#f)
              _phi3838_
              '#f)))
        (##structure-set!
         _block3841_
         (cons _stx3839_
               (##structure-ref _block3841_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3832_)
      (begin
        (##structure-set!
         _state3832_
         (hash-fold
          (lambda (_g11849_ _block3834_ _r3835_) (cons _block3834_ _r3835_))
          (##structure-ref _state3832_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3832_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3832_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3784_)
      (begin
        (gxc#meta-state-end-phi! _state3784_)
        (foldl1 (lambda (_block3786_ _r3787_)
                  (let* ((_block37883797_ _block3786_)
                         (_E37903801_
                          (lambda ()
                            (error '"No clause matching" _block37883797_)))
                         (_K37913809_
                          (lambda (_code3804_ _n3805_ _phi3806_ _ctx3807_)
                            (if (null? _code3804_)
                                _r3787_
                                (cons (cons _ctx3807_
                                            (cons _phi3806_
                                                  (cons _n3805_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3804_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3787_)))))
                    (if (##structure-instance-of?
                         _block37883797_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e37923812_ (##vector-ref _block37883797_ '1))
                               (_ctx3815_ _e37923812_)
                               (_e37933817_ (##vector-ref _block37883797_ '2))
                               (_phi3820_ _e37933817_)
                               (_e37943822_ (##vector-ref _block37883797_ '3))
                               (_n3825_ _e37943822_)
                               (_e37953827_ (##vector-ref _block37883797_ '4))
                               (_code3830_ _e37953827_))
                          (_K37913809_ _code3830_ _n3825_ _phi3820_ _ctx3815_))
                        (_E37903801_))))
                '()
                (##structure-ref _state3784_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3780_)
      (let ((_ht3782_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3780_ _ht3782_)
          _ht3782_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3723_ _ht3724_)
      (let* ((_g37263739_
              (lambda (_g37273736_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37273736_)))
             (_g37253777_
              (lambda (_g37273742_)
                (if (gx#stx-pair? _g37273742_)
                    (let ((_e37293744_ (gx#stx-e _g37273742_)))
                      (let ((_hd37303747_ (##car _e37293744_))
                            (_tl37313749_ (##cdr _e37293744_)))
                        (if (gx#stx-pair? _tl37313749_)
                            (let ((_e37323752_ (gx#stx-e _tl37313749_)))
                              (let ((_hd37333755_ (##car _e37323752_))
                                    (_tl37343757_ (##cdr _e37323752_)))
                                (if (gx#stx-null? _tl37343757_)
                                    ((lambda (_L3760_)
                                       (let* ((_bind3772_
                                               (gx#resolve-identifier__0
                                                _L3760_))
                                              (_eid3774_
                                               (if _bind3772_
                                                   (##structure-ref
                                                    _bind3772_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3760_))))
                                         (table-set!
                                          _ht3724_
                                          _eid3774_
                                          _eid3774_)))
                                     _hd37333755_)
                                    (_g37263739_ _g37273742_))))
                            (_g37263739_ _g37273742_))))
                    (_g37263739_ _g37273742_)))))
        (_g37253777_ _stx3723_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3650_ _ht3651_)
      (let* ((_g36533670_
              (lambda (_g36543667_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36543667_)))
             (_g36523720_
              (lambda (_g36543673_)
                (if (gx#stx-pair? _g36543673_)
                    (let ((_e36573675_ (gx#stx-e _g36543673_)))
                      (let ((_hd36583678_ (##car _e36573675_))
                            (_tl36593680_ (##cdr _e36573675_)))
                        (if (gx#stx-pair? _tl36593680_)
                            (let ((_e36603683_ (gx#stx-e _tl36593680_)))
                              (let ((_hd36613686_ (##car _e36603683_))
                                    (_tl36623688_ (##cdr _e36603683_)))
                                (if (gx#stx-pair? _tl36623688_)
                                    (let ((_e36633691_
                                           (gx#stx-e _tl36623688_)))
                                      (let ((_hd36643694_ (##car _e36633691_))
                                            (_tl36653696_ (##cdr _e36633691_)))
                                        (if (gx#stx-null? _tl36653696_)
                                            ((lambda (_L3699_ _L3700_)
                                               (let* ((_bind3715_
                                                       (gx#resolve-identifier__0
                                                        _L3700_))
                                                      (_eid3717_
                                                       (if _bind3715_
                                                           (##structure-ref
                                                            _bind3715_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3700_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3651_
                                                    _eid3717_
                                                    _eid3717_)
                                                   (gxc#compile-e
                                                    _L3699_
                                                    _ht3651_))))
                                             _hd36643694_
                                             _hd36613686_)
                                            (_g36533670_ _g36543673_))))
                                    (_g36533670_ _g36543673_))))
                            (_g36533670_ _g36543673_))))
                    (_g36533670_ _g36543673_)))))
        (_g36523720_ _stx3650_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3612_)
      (let* ((_g36143624_
              (lambda (_g36153621_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36153621_)))
             (_g36133647_
              (lambda (_g36153627_)
                (if (gx#stx-pair? _g36153627_)
                    (let ((_e36173629_ (gx#stx-e _g36153627_)))
                      (let ((_hd36183632_ (##car _e36173629_))
                            (_tl36193634_ (##cdr _e36173629_)))
                        ((lambda (_L3637_) (ormap1 gxc#compile-e _L3637_))
                         _tl36193634_)))
                    (_g36143624_ _g36153627_)))))
        (_g36133647_ _stx3612_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3574_)
      (let* ((_g35763586_
              (lambda (_g35773583_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35773583_)))
             (_g35753609_
              (lambda (_g35773589_)
                (if (gx#stx-pair? _g35773589_)
                    (let ((_e35793591_ (gx#stx-e _g35773589_)))
                      (let ((_hd35803594_ (##car _e35793591_))
                            (_tl35813596_ (##cdr _e35793591_)))
                        ((lambda (_L3599_) (gxc#compile-e (last _L3599_)))
                         _tl35813596_)))
                    (_g35763586_ _g35773589_)))))
        (_g35753609_ _stx3574_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3507_)
      (let* ((_g35093526_
              (lambda (_g35103523_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35103523_)))
             (_g35083571_
              (lambda (_g35103529_)
                (if (gx#stx-pair? _g35103529_)
                    (let ((_e35133531_ (gx#stx-e _g35103529_)))
                      (let ((_hd35143534_ (##car _e35133531_))
                            (_tl35153536_ (##cdr _e35133531_)))
                        (if (gx#stx-pair? _tl35153536_)
                            (let ((_e35163539_ (gx#stx-e _tl35153536_)))
                              (let ((_hd35173542_ (##car _e35163539_))
                                    (_tl35183544_ (##cdr _e35163539_)))
                                (if (gx#stx-pair? _tl35183544_)
                                    (let ((_e35193547_
                                           (gx#stx-e _tl35183544_)))
                                      (let ((_hd35203550_ (##car _e35193547_))
                                            (_tl35213552_ (##cdr _e35193547_)))
                                        (if (gx#stx-null? _tl35213552_)
                                            ((lambda (_L3555_ _L3556_)
                                               (gxc#compile-e _L3555_))
                                             _hd35203550_
                                             _hd35173542_)
                                            (_g35093526_ _g35103529_))))
                                    (_g35093526_ _g35103529_))))
                            (_g35093526_ _g35103529_))))
                    (_g35093526_ _g35103529_)))))
        (_g35083571_ _stx3507_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3440_)
      (let* ((_g34423459_
              (lambda (_g34433456_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g34433456_)))
             (_g34413504_
              (lambda (_g34433462_)
                (if (gx#stx-pair? _g34433462_)
                    (let ((_e34463464_ (gx#stx-e _g34433462_)))
                      (let ((_hd34473467_ (##car _e34463464_))
                            (_tl34483469_ (##cdr _e34463464_)))
                        (if (gx#stx-pair? _tl34483469_)
                            (let ((_e34493472_ (gx#stx-e _tl34483469_)))
                              (let ((_hd34503475_ (##car _e34493472_))
                                    (_tl34513477_ (##cdr _e34493472_)))
                                (if (gx#stx-pair? _tl34513477_)
                                    (let ((_e34523480_
                                           (gx#stx-e _tl34513477_)))
                                      (let ((_hd34533483_ (##car _e34523480_))
                                            (_tl34543485_ (##cdr _e34523480_)))
                                        (if (gx#stx-null? _tl34543485_)
                                            ((lambda (_L3488_ _L3489_)
                                               (gxc#compile-e _L3488_))
                                             _hd34533483_
                                             _hd34503475_)
                                            (_g34423459_ _g34433462_))))
                                    (_g34423459_ _g34433462_))))
                            (_g34423459_ _g34433462_))))
                    (_g34423459_ _g34433462_)))))
        (_g34413504_ _stx3440_)))))
