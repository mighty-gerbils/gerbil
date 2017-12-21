(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx11120_ . _args11121_)
      (let* ((_g1112311133_
              (lambda (_g1112411130_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1112411130_)))
             (_g1112211161_
              (lambda (_g1112411136_)
                (if (gx#stx-pair? _g1112411136_)
                    (let ((_e1112611138_ (gx#stx-e _g1112411136_)))
                      (let ((_hd1112711141_ (##car _e1112611138_))
                            (_tl1112811143_ (##cdr _e1112611138_)))
                        ((lambda (_L11146_)
                           (let ((_$e11156_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L11146_)
                                   '#f)))
                             (if _$e11156_
                                 ((lambda (_method11159_)
                                    (apply _method11159_
                                           _stx11120_
                                           _args11121_))
                                  _$e11156_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx11120_
                                  _L11146_))))
                         _hd1112711141_)))
                    (_g1112311133_ _g1112411136_)))))
        (_g1112211161_ _stx11120_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl11117_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11117_ '%#lambda void)
           (table-set! _tbl11117_ '%#case-lambda void)
           (table-set! _tbl11117_ '%#let-values void)
           (table-set! _tbl11117_ '%#letrec-values void)
           (table-set! _tbl11117_ '%#letrec*-values void)
           (table-set! _tbl11117_ '%#quote void)
           (table-set! _tbl11117_ '%#quote-syntax void)
           (table-set! _tbl11117_ '%#call void)
           (table-set! _tbl11117_ '%#if void)
           (table-set! _tbl11117_ '%#ref void)
           (table-set! _tbl11117_ '%#set! void)
           (table-set! _tbl11117_ '%#struct-instance? void)
           (table-set! _tbl11117_ '%#struct-direct-instance? void)
           (table-set! _tbl11117_ '%#struct-ref void)
           (table-set! _tbl11117_ '%#struct-set! void)
           (table-set! _tbl11117_ '%#struct-direct-ref void)
           (table-set! _tbl11117_ '%#struct-direct-set! void)
           (table-set! _tbl11117_ '%#struct-unchecked-ref void)
           (table-set! _tbl11117_ '%#struct-unchecked-set! void)
           _tbl11117_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11113_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11113_ '%#begin void)
           (table-set! _tbl11113_ '%#begin-syntax void)
           (table-set! _tbl11113_ '%#begin-foreign void)
           (table-set! _tbl11113_ '%#module void)
           (table-set! _tbl11113_ '%#import void)
           (table-set! _tbl11113_ '%#export void)
           (table-set! _tbl11113_ '%#provide void)
           (table-set! _tbl11113_ '%#extern void)
           (table-set! _tbl11113_ '%#define-values void)
           (table-set! _tbl11113_ '%#define-syntax void)
           (table-set! _tbl11113_ '%#define-alias void)
           (table-set! _tbl11113_ '%#declare void)
           _tbl11113_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11109_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11109_ (force gxc#&void-special-form))
           (hash-copy! _tbl11109_ (force gxc#&void-expression))
           _tbl11109_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11105_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11105_ '%#lambda false)
           (table-set! _tbl11105_ '%#case-lambda false)
           (table-set! _tbl11105_ '%#let-values false)
           (table-set! _tbl11105_ '%#letrec-values false)
           (table-set! _tbl11105_ '%#letrec*-values false)
           (table-set! _tbl11105_ '%#quote false)
           (table-set! _tbl11105_ '%#quote-syntax false)
           (table-set! _tbl11105_ '%#call false)
           (table-set! _tbl11105_ '%#if false)
           (table-set! _tbl11105_ '%#ref false)
           (table-set! _tbl11105_ '%#set! false)
           (table-set! _tbl11105_ '%#struct-instance? false)
           (table-set! _tbl11105_ '%#struct-direct-instance? false)
           (table-set! _tbl11105_ '%#struct-ref false)
           (table-set! _tbl11105_ '%#struct-set! false)
           (table-set! _tbl11105_ '%#struct-direct-ref false)
           (table-set! _tbl11105_ '%#struct-direct-set! false)
           (table-set! _tbl11105_ '%#struct-unchecked-ref false)
           (table-set! _tbl11105_ '%#struct-unchecked-set! false)
           _tbl11105_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11101_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11101_ '%#begin false)
           (table-set! _tbl11101_ '%#begin-syntax false)
           (table-set! _tbl11101_ '%#begin-foreign false)
           (table-set! _tbl11101_ '%#module false)
           (table-set! _tbl11101_ '%#import false)
           (table-set! _tbl11101_ '%#export false)
           (table-set! _tbl11101_ '%#provide false)
           (table-set! _tbl11101_ '%#extern false)
           (table-set! _tbl11101_ '%#define-values false)
           (table-set! _tbl11101_ '%#define-syntax false)
           (table-set! _tbl11101_ '%#define-alias false)
           (table-set! _tbl11101_ '%#declare false)
           _tbl11101_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl11097_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11097_ (force gxc#&false-special-form))
           (hash-copy! _tbl11097_ (force gxc#&false-expression))
           _tbl11097_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl11093_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11093_ (force gxc#&void-expression))
           (hash-copy! _tbl11093_ (force gxc#&void-special-form))
           (table-set! _tbl11093_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11093_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11093_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11093_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11093_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11093_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11086_ . _args11088_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11086_ _args11088_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11083_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11083_ (force gxc#&void))
           (table-set! _tbl11083_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11083_ '%#module gxc#lift-modules-module%)
           _tbl11083_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11076_ . _args11078_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11076_ _args11078_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11073_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11073_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11073_ '%#begin-syntax false)
           (table-set! _tbl11073_ '%#begin-foreign true)
           (table-set! _tbl11073_ '%#module false)
           (table-set! _tbl11073_ '%#import false)
           (table-set! _tbl11073_ '%#export false)
           (table-set! _tbl11073_ '%#provide false)
           (table-set! _tbl11073_ '%#extern false)
           (table-set! _tbl11073_ '%#define-values true)
           (table-set! _tbl11073_ '%#define-syntax false)
           (table-set! _tbl11073_ '%#define-alias false)
           (table-set! _tbl11073_ '%#declare false)
           (table-set! _tbl11073_ '%#lambda true)
           (table-set! _tbl11073_ '%#case-lambda true)
           (table-set! _tbl11073_ '%#let-values true)
           (table-set! _tbl11073_ '%#letrec-values true)
           (table-set! _tbl11073_ '%#letrec*-values true)
           (table-set! _tbl11073_ '%#quote true)
           (table-set! _tbl11073_ '%#call true)
           (table-set! _tbl11073_ '%#if true)
           (table-set! _tbl11073_ '%#ref true)
           (table-set! _tbl11073_ '%#set! true)
           (table-set! _tbl11073_ '%#struct-instance? true)
           (table-set! _tbl11073_ '%#struct-direct-instance? true)
           (table-set! _tbl11073_ '%#struct-ref true)
           (table-set! _tbl11073_ '%#struct-set! true)
           (table-set! _tbl11073_ '%#struct-direct-ref true)
           (table-set! _tbl11073_ '%#struct-direct-set! true)
           (table-set! _tbl11073_ '%#struct-unchecked-ref true)
           (table-set! _tbl11073_ '%#struct-unchecked-set! true)
           _tbl11073_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11066_ . _args11068_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11066_ _args11068_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11063_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11063_ (force gxc#&false))
           (table-set! _tbl11063_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set! _tbl11063_ '%#lambda values)
           (table-set! _tbl11063_ '%#case-lambda values)
           (table-set!
            _tbl11063_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11063_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11063_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11063_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11056_ . _args11058_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11056_ _args11058_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11053_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11053_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11053_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11053_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11053_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11053_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11053_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11053_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11053_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11053_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11049_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11049_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11049_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11049_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11049_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11042_ . _args11044_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11042_ _args11044_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11039_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11039_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11039_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11039_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11039_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11039_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11039_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11039_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11039_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11039_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11039_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11039_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl11039_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11039_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11039_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11039_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11039_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11039_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11039_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11039_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11039_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11039_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11039_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11039_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11039_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11032_ . _args11034_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11032_ _args11034_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11029_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11029_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11029_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl11029_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11029_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11022_ . _args11024_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11022_ _args11024_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11019_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11019_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11019_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11019_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11019_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11019_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11019_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11019_ '%#quote void)
           (table-set! _tbl11019_ '%#quote-syntax void)
           (table-set! _tbl11019_ '%#call gxc#collect-operands)
           (table-set! _tbl11019_ '%#if gxc#collect-operands)
           (table-set! _tbl11019_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11019_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11019_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11019_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11019_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11019_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11019_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11019_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11019_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11019_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11019_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11012_ . _args11014_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11012_ _args11014_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11009_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11009_ (force gxc#&void-expression))
           (table-set! _tbl11009_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11009_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11009_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11009_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11009_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11009_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11009_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11009_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11009_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11009_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11009_ '%#begin-foreign void)
           (table-set! _tbl11009_ '%#declare void)
           _tbl11009_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11002_ . _args11004_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11002_ _args11004_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10999_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10999_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10999_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10999_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10999_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10999_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10999_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10999_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10999_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10999_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10999_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10999_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10999_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10999_ '%#declare void)
           _tbl10999_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10992_ . _args10994_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10992_ _args10994_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10949_ . _args10950_)
      (let* ((_g1095210962_
              (lambda (_g1095310959_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1095310959_)))
             (_g1095110989_
              (lambda (_g1095310965_)
                (if (gx#stx-pair? _g1095310965_)
                    (let ((_e1095510967_ (gx#stx-e _g1095310965_)))
                      (let ((_hd1095610970_ (##car _e1095510967_))
                            (_tl1095710972_ (##cdr _e1095510967_)))
                        ((lambda (_L10975_)
                           (for-each
                            (lambda (_g1098410986_)
                              (apply gxc#compile-e _g1098410986_ _args10950_))
                            (gx#stx-e _L10975_)))
                         _tl1095710972_)))
                    (_g1095210962_ _g1095310965_)))))
        (_g1095110989_ _stx10949_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10905_ . _args10906_)
      (let* ((_g1090810918_
              (lambda (_g1090910915_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1090910915_)))
             (_g1090710946_
              (lambda (_g1090910921_)
                (if (gx#stx-pair? _g1090910921_)
                    (let ((_e1091110923_ (gx#stx-e _g1090910921_)))
                      (let ((_hd1091210926_ (##car _e1091110923_))
                            (_tl1091310928_ (##cdr _e1091110923_)))
                        ((lambda (_L10931_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1094110943_)
                                 (apply gxc#compile-e
                                        _g1094110943_
                                        _args10906_))
                               (gx#stx-e _L10931_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1091310928_)))
                    (_g1090810918_ _g1090910921_)))))
        (_g1090710946_ _stx10905_))))
  (define gxc#collect-module%
    (lambda (_stx10847_ . _args10848_)
      (let* ((_g1085010864_
              (lambda (_g1085110861_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1085110861_)))
             (_g1084910902_
              (lambda (_g1085110867_)
                (if (gx#stx-pair? _g1085110867_)
                    (let ((_e1085410869_ (gx#stx-e _g1085110867_)))
                      (let ((_hd1085510872_ (##car _e1085410869_))
                            (_tl1085610874_ (##cdr _e1085410869_)))
                        (if (gx#stx-pair? _tl1085610874_)
                            (let ((_e1085710877_ (gx#stx-e _tl1085610874_)))
                              (let ((_hd1085810880_ (##car _e1085710877_))
                                    (_tl1085910882_ (##cdr _e1085710877_)))
                                ((lambda (_L10885_ _L10886_)
                                   (let ((_ctx10899_
                                          (gx#syntax-local-e__0 _L10886_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx10899_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args10848_))
                                      gx#current-expander-context
                                      _ctx10899_)))
                                 _tl1085910882_
                                 _hd1085810880_)))
                            (_g1085010864_ _g1085110867_))))
                    (_g1085010864_ _g1085110867_)))))
        (_g1084910902_ _stx10847_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10779_ . _args10780_)
      (let* ((_g1078210799_
              (lambda (_g1078310796_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1078310796_)))
             (_g1078110844_
              (lambda (_g1078310802_)
                (if (gx#stx-pair? _g1078310802_)
                    (let ((_e1078610804_ (gx#stx-e _g1078310802_)))
                      (let ((_hd1078710807_ (##car _e1078610804_))
                            (_tl1078810809_ (##cdr _e1078610804_)))
                        (if (gx#stx-pair? _tl1078810809_)
                            (let ((_e1078910812_ (gx#stx-e _tl1078810809_)))
                              (let ((_hd1079010815_ (##car _e1078910812_))
                                    (_tl1079110817_ (##cdr _e1078910812_)))
                                (if (gx#stx-pair? _tl1079110817_)
                                    (let ((_e1079210820_
                                           (gx#stx-e _tl1079110817_)))
                                      (let ((_hd1079310823_
                                             (##car _e1079210820_))
                                            (_tl1079410825_
                                             (##cdr _e1079210820_)))
                                        (if (gx#stx-null? _tl1079410825_)
                                            ((lambda (_L10828_ _L10829_)
                                               (apply gxc#compile-e
                                                      _L10828_
                                                      _args10780_))
                                             _hd1079310823_
                                             _hd1079010815_)
                                            (_g1078210799_ _g1078310802_))))
                                    (_g1078210799_ _g1078310802_))))
                            (_g1078210799_ _g1078310802_))))
                    (_g1078210799_ _g1078310802_)))))
        (_g1078110844_ _stx10779_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10661_ . _args10662_)
      (let* ((_g1066410692_
              (lambda (_g1066510689_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1066510689_)))
             (_g1066310776_
              (lambda (_g1066510695_)
                (if (gx#stx-pair? _g1066510695_)
                    (let ((_e1066810697_ (gx#stx-e _g1066510695_)))
                      (let ((_hd1066910700_ (##car _e1066810697_))
                            (_tl1067010702_ (##cdr _e1066810697_)))
                        (if (gx#stx-pair/null? _tl1067010702_)
                            (if (fx>= (gx#stx-length _tl1067010702_) '0)
                                (let ((_g11163_
                                       (gx#syntax-split-splice
                                        _tl1067010702_
                                        '0)))
                                  (begin
                                    (let ((_g11164_ (values-count _g11163_)))
                                      (if (not (fx= _g11164_ 2))
                                          (error "Context expects 2 values"
                                                 _g11164_)))
                                    (let ((_target1067110705_
                                           (values-ref _g11163_ 0))
                                          (_tl1067310707_
                                           (values-ref _g11163_ 1)))
                                      (if (gx#stx-null? _tl1067310707_)
                                          (letrec ((_loop1067410710_
                                                    (lambda (_hd1067210713_
                                                             _body1067810715_
                                                             _hd1067910717_)
                                                      (if (gx#stx-pair?
                                                           _hd1067210713_)
                                                          (let ((_e1067510720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1067210713_)))
                    (let ((_lp-hd1067610723_ (##car _e1067510720_))
                          (_lp-tl1067710725_ (##cdr _e1067510720_)))
                      (if (gx#stx-pair? _lp-hd1067610723_)
                          (let ((_e1068210728_ (gx#stx-e _lp-hd1067610723_)))
                            (let ((_hd1068310731_ (##car _e1068210728_))
                                  (_tl1068410733_ (##cdr _e1068210728_)))
                              (if (gx#stx-pair? _tl1068410733_)
                                  (let ((_e1068510736_
                                         (gx#stx-e _tl1068410733_)))
                                    (let ((_hd1068610739_
                                           (##car _e1068510736_))
                                          (_tl1068710741_
                                           (##cdr _e1068510736_)))
                                      (if (gx#stx-null? _tl1068710741_)
                                          (_loop1067410710_
                                           _lp-tl1067710725_
                                           (cons _hd1068610739_
                                                 _body1067810715_)
                                           (cons _hd1068310731_
                                                 _hd1067910717_))
                                          (_g1066410692_ _g1066510695_))))
                                  (_g1066410692_ _g1066510695_))))
                          (_g1066410692_ _g1066510695_))))
                  (let ((_body1068010744_ (reverse _body1067810715_))
                        (_hd1068110746_ (reverse _hd1067910717_)))
                    ((lambda (_L10749_ _L10750_)
                       (for-each
                        (lambda (_g1076410766_)
                          (apply gxc#compile-e _g1076410766_ _args10662_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1076810771_ _g1076910773_)
                                    (cons _g1076810771_ _g1076910773_))
                                  '()
                                  _L10749_))))
                     _body1068010744_
                     _hd1068110746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1067410710_
                                             _target1067110705_
                                             '()
                                             '()))
                                          (_g1066410692_ _g1066510695_)))))
                                (_g1066410692_ _g1066510695_))
                            (_g1066410692_ _g1066510695_))))
                    (_g1066410692_ _g1066510695_)))))
        (_g1066310776_ _stx10661_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx10514_ . _args10515_)
      (let* ((_g1051710552_
              (lambda (_g1051810549_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1051810549_)))
             (_g1051610658_
              (lambda (_g1051810555_)
                (if (gx#stx-pair? _g1051810555_)
                    (let ((_e1052210557_ (gx#stx-e _g1051810555_)))
                      (let ((_hd1052310560_ (##car _e1052210557_))
                            (_tl1052410562_ (##cdr _e1052210557_)))
                        (if (gx#stx-pair? _tl1052410562_)
                            (let ((_e1052510565_ (gx#stx-e _tl1052410562_)))
                              (let ((_hd1052610568_ (##car _e1052510565_))
                                    (_tl1052710570_ (##cdr _e1052510565_)))
                                (if (gx#stx-pair/null? _hd1052610568_)
                                    (if (fx>= (gx#stx-length _hd1052610568_)
                                              '0)
                                        (let ((_g11165_
                                               (gx#syntax-split-splice
                                                _hd1052610568_
                                                '0)))
                                          (begin
                                            (let ((_g11166_
                                                   (values-count _g11165_)))
                                              (if (not (fx= _g11166_ 2))
                                                  (error "Context expects 2 values"
                                                         _g11166_)))
                                            (let ((_target1052810573_
                                                   (values-ref _g11165_ 0))
                                                  (_tl1053010575_
                                                   (values-ref _g11165_ 1)))
                                              (if (gx#stx-null? _tl1053010575_)
                                                  (letrec ((_loop1053110578_
                                                            (lambda (_hd1052910581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1053510583_
                             _hd1053610585_)
                      (if (gx#stx-pair? _hd1052910581_)
                          (let ((_e1053210588_ (gx#stx-e _hd1052910581_)))
                            (let ((_lp-hd1053310591_ (##car _e1053210588_))
                                  (_lp-tl1053410593_ (##cdr _e1053210588_)))
                              (if (gx#stx-pair? _lp-hd1053310591_)
                                  (let ((_e1053910596_
                                         (gx#stx-e _lp-hd1053310591_)))
                                    (let ((_hd1054010599_
                                           (##car _e1053910596_))
                                          (_tl1054110601_
                                           (##cdr _e1053910596_)))
                                      (if (gx#stx-pair? _tl1054110601_)
                                          (let ((_e1054210604_
                                                 (gx#stx-e _tl1054110601_)))
                                            (let ((_hd1054310607_
                                                   (##car _e1054210604_))
                                                  (_tl1054410609_
                                                   (##cdr _e1054210604_)))
                                              (if (gx#stx-null? _tl1054410609_)
                                                  (_loop1053110578_
                                                   _lp-tl1053410593_
                                                   (cons _hd1054310607_
                                                         _expr1053510583_)
                                                   (cons _hd1054010599_
                                                         _hd1053610585_))
                                                  (_g1051710552_
                                                   _g1051810555_))))
                                          (_g1051710552_ _g1051810555_))))
                                  (_g1051710552_ _g1051810555_))))
                          (let ((_expr1053710612_ (reverse _expr1053510583_))
                                (_hd1053810614_ (reverse _hd1053610585_)))
                            (if (gx#stx-pair? _tl1052710570_)
                                (let ((_e1054510617_
                                       (gx#stx-e _tl1052710570_)))
                                  (let ((_hd1054610620_ (##car _e1054510617_))
                                        (_tl1054710622_ (##cdr _e1054510617_)))
                                    (if (gx#stx-null? _tl1054710622_)
                                        ((lambda (_L10625_ _L10626_ _L10627_)
                                           (for-each
                                            (lambda (_g1064610648_)
                                              (apply gxc#compile-e
                                                     _g1064610648_
                                                     _args10515_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1065010653_
                                                               _g1065110655_)
                                                        (cons _g1065010653_
                                                              _g1065110655_))
                                                      (cons _L10625_ '())
                                                      _L10626_))))
                                         _hd1054610620_
                                         _expr1053710612_
                                         _hd1053810614_)
                                        (_g1051710552_ _g1051810555_))))
                                (_g1051710552_ _g1051810555_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1053110578_
                                                     _target1052810573_
                                                     '()
                                                     '()))
                                                  (_g1051710552_
                                                   _g1051810555_)))))
                                        (_g1051710552_ _g1051810555_))
                                    (_g1051710552_ _g1051810555_))))
                            (_g1051710552_ _g1051810555_))))
                    (_g1051710552_ _g1051810555_)))))
        (_g1051610658_ _stx10514_))))
  (define gxc#collect-body-setq%
    (lambda (_stx10446_ . _args10447_)
      (let* ((_g1044910466_
              (lambda (_g1045010463_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1045010463_)))
             (_g1044810511_
              (lambda (_g1045010469_)
                (if (gx#stx-pair? _g1045010469_)
                    (let ((_e1045310471_ (gx#stx-e _g1045010469_)))
                      (let ((_hd1045410474_ (##car _e1045310471_))
                            (_tl1045510476_ (##cdr _e1045310471_)))
                        (if (gx#stx-pair? _tl1045510476_)
                            (let ((_e1045610479_ (gx#stx-e _tl1045510476_)))
                              (let ((_hd1045710482_ (##car _e1045610479_))
                                    (_tl1045810484_ (##cdr _e1045610479_)))
                                (if (gx#stx-pair? _tl1045810484_)
                                    (let ((_e1045910487_
                                           (gx#stx-e _tl1045810484_)))
                                      (let ((_hd1046010490_
                                             (##car _e1045910487_))
                                            (_tl1046110492_
                                             (##cdr _e1045910487_)))
                                        (if (gx#stx-null? _tl1046110492_)
                                            ((lambda (_L10495_ _L10496_)
                                               (apply gxc#compile-e
                                                      _L10495_
                                                      _args10447_))
                                             _hd1046010490_
                                             _hd1045710482_)
                                            (_g1044910466_ _g1045010469_))))
                                    (_g1044910466_ _g1045010469_))))
                            (_g1044910466_ _g1045010469_))))
                    (_g1044910466_ _g1045010469_)))))
        (_g1044810511_ _stx10446_))))
  (define gxc#collect-operands
    (lambda (_stx10359_ . _args10360_)
      (let* ((_g1036210381_
              (lambda (_g1036310378_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1036310378_)))
             (_g1036110443_
              (lambda (_g1036310384_)
                (if (gx#stx-pair? _g1036310384_)
                    (let ((_e1036510386_ (gx#stx-e _g1036310384_)))
                      (let ((_hd1036610389_ (##car _e1036510386_))
                            (_tl1036710391_ (##cdr _e1036510386_)))
                        (if (gx#stx-pair/null? _tl1036710391_)
                            (if (fx>= (gx#stx-length _tl1036710391_) '0)
                                (let ((_g11167_
                                       (gx#syntax-split-splice
                                        _tl1036710391_
                                        '0)))
                                  (begin
                                    (let ((_g11168_ (values-count _g11167_)))
                                      (if (not (fx= _g11168_ 2))
                                          (error "Context expects 2 values"
                                                 _g11168_)))
                                    (let ((_target1036810394_
                                           (values-ref _g11167_ 0))
                                          (_tl1037010396_
                                           (values-ref _g11167_ 1)))
                                      (if (gx#stx-null? _tl1037010396_)
                                          (letrec ((_loop1037110399_
                                                    (lambda (_hd1036910402_
                                                             _rands1037510404_)
                                                      (if (gx#stx-pair?
                                                           _hd1036910402_)
                                                          (let ((_e1037210407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1036910402_)))
                    (let ((_lp-hd1037310410_ (##car _e1037210407_))
                          (_lp-tl1037410412_ (##cdr _e1037210407_)))
                      (_loop1037110399_
                       _lp-tl1037410412_
                       (cons _lp-hd1037310410_ _rands1037510404_))))
                  (let ((_rands1037610415_ (reverse _rands1037510404_)))
                    ((lambda (_L10418_)
                       (for-each
                        (lambda (_g1043110433_)
                          (apply gxc#compile-e _g1043110433_ _args10360_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1043510438_ _g1043610440_)
                                    (cons _g1043510438_ _g1043610440_))
                                  '()
                                  _L10418_))))
                     _rands1037610415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1037110399_
                                             _target1036810394_
                                             '()))
                                          (_g1036210381_ _g1036310384_)))))
                                (_g1036210381_ _g1036310384_))
                            (_g1036210381_ _g1036310384_))))
                    (_g1036210381_ _g1036310384_)))))
        (_g1036110443_ _stx10359_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx10290_)
      (let* ((_g1029210309_
              (lambda (_g1029310306_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1029310306_)))
             (_g1029110356_
              (lambda (_g1029310312_)
                (if (gx#stx-pair? _g1029310312_)
                    (let ((_e1029610314_ (gx#stx-e _g1029310312_)))
                      (let ((_hd1029710317_ (##car _e1029610314_))
                            (_tl1029810319_ (##cdr _e1029610314_)))
                        (if (gx#stx-pair? _tl1029810319_)
                            (let ((_e1029910322_ (gx#stx-e _tl1029810319_)))
                              (let ((_hd1030010325_ (##car _e1029910322_))
                                    (_tl1030110327_ (##cdr _e1029910322_)))
                                (if (gx#stx-pair? _tl1030110327_)
                                    (let ((_e1030210330_
                                           (gx#stx-e _tl1030110327_)))
                                      (let ((_hd1030310333_
                                             (##car _e1030210330_))
                                            (_tl1030410335_
                                             (##cdr _e1030210330_)))
                                        (if (gx#stx-null? _tl1030410335_)
                                            ((lambda (_L10338_ _L10339_)
                                               (gx#stx-for-each1
                                                (lambda (_bind10354_)
                                                  (if (gx#identifier?
                                                       _bind10354_)
                                                      (gxc#add-module-binding!
                                                       _bind10354_
                                                       '#f)
                                                      '#!void))
                                                _L10339_))
                                             _hd1030310333_
                                             _hd1030010325_)
                                            (_g1029210309_ _g1029310312_))))
                                    (_g1029210309_ _g1029310312_))))
                            (_g1029210309_ _g1029310312_))))
                    (_g1029210309_ _g1029310312_)))))
        (_g1029110356_ _stx10290_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx10223_)
      (let* ((_g1022510242_
              (lambda (_g1022610239_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1022610239_)))
             (_g1022410287_
              (lambda (_g1022610245_)
                (if (gx#stx-pair? _g1022610245_)
                    (let ((_e1022910247_ (gx#stx-e _g1022610245_)))
                      (let ((_hd1023010250_ (##car _e1022910247_))
                            (_tl1023110252_ (##cdr _e1022910247_)))
                        (if (gx#stx-pair? _tl1023110252_)
                            (let ((_e1023210255_ (gx#stx-e _tl1023110252_)))
                              (let ((_hd1023310258_ (##car _e1023210255_))
                                    (_tl1023410260_ (##cdr _e1023210255_)))
                                (if (gx#stx-pair? _tl1023410260_)
                                    (let ((_e1023510263_
                                           (gx#stx-e _tl1023410260_)))
                                      (let ((_hd1023610266_
                                             (##car _e1023510263_))
                                            (_tl1023710268_
                                             (##cdr _e1023510263_)))
                                        (if (gx#stx-null? _tl1023710268_)
                                            ((lambda (_L10271_ _L10272_)
                                               (gxc#add-module-binding!
                                                _L10272_
                                                '#t))
                                             _hd1023610266_
                                             _hd1023310258_)
                                            (_g1022510242_ _g1022610245_))))
                                    (_g1022510242_ _g1022610245_))))
                            (_g1022510242_ _g1022610245_))))
                    (_g1022510242_ _g1022610245_)))))
        (_g1022410287_ _stx10223_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10165_ _modules10166_)
      (let* ((_g1016810182_
              (lambda (_g1016910179_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1016910179_)))
             (_g1016710220_
              (lambda (_g1016910185_)
                (if (gx#stx-pair? _g1016910185_)
                    (let ((_e1017210187_ (gx#stx-e _g1016910185_)))
                      (let ((_hd1017310190_ (##car _e1017210187_))
                            (_tl1017410192_ (##cdr _e1017210187_)))
                        (if (gx#stx-pair? _tl1017410192_)
                            (let ((_e1017510195_ (gx#stx-e _tl1017410192_)))
                              (let ((_hd1017610198_ (##car _e1017510195_))
                                    (_tl1017710200_ (##cdr _e1017510195_)))
                                ((lambda (_L10203_ _L10204_)
                                   (let ((_ctx10217_
                                          (gx#syntax-local-e__0 _L10204_)))
                                     (begin
                                       (set-box!
                                        _modules10166_
                                        (cons _ctx10217_
                                              (unbox _modules10166_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx10217_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10166_))
                                        gx#current-expander-context
                                        _ctx10217_))))
                                 _tl1017710200_
                                 _hd1017610198_)))
                            (_g1016810182_ _g1016910185_))))
                    (_g1016810182_ _g1016910185_)))))
        (_g1016710220_ _stx10165_))))
  (define gxc#add-module-binding!
    (lambda (_id10159_ _syntax?10160_)
      (let ((_eid10162_
             (##structure-ref
              (gx#resolve-identifier__0 _id10159_)
              '1
              gx#binding::t
              '#f))
            (_ht10163_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10162_)
            '#!void
            (table-set!
             _ht10163_
             _eid10162_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10162_)
              _syntax?10160_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10140_)
      (let ((_bind10142_ (gx#resolve-identifier__0 _id10140_)))
        (if _bind10142_
            (let ((_eid10144_
                   (##structure-ref _bind10142_ '1 gx#binding::t '#f))
                  (_ht10145_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10144_)
                  _eid10144_
                  (let ((_$e10147_ (table-ref _ht10145_ _eid10144_ '#f)))
                    (if _$e10147_
                        (values _$e10147_)
                        (if (##structure-instance-of?
                             _bind10142_
                             'gx#local-binding::t)
                            (let ((_gid10150_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10144_)))
                              (begin
                                (table-set! _ht10145_ _eid10144_ _gid10150_)
                                _gid10150_))
                            (if (##structure-instance-of?
                                 _bind10142_
                                 'gx#module-binding::t)
                                (let ((_gid10157_
                                       (let ((_$e10152_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10142_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10152_
                                             ((lambda (_ns10155_)
                                                (make-symbol
                                                 _ns10155_
                                                 '"#"
                                                 _eid10144_))
                                              _$e10152_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10144_)))))
                                  (begin
                                    (table-set!
                                     _ht10145_
                                     _eid10144_
                                     _gid10157_)
                                    _gid10157_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10140_
                                 _eid10144_
                                 _bind10142_)))))))
            (if (interned-symbol? (gx#stx-e _id10140_))
                (gx#stx-e _id10140_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10140_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10138_)
      (if (gx#identifier? _id10138_)
          (gxc#generate-runtime-binding-id _id10138_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10116
      (lambda (_sym10118_ _quote?10119_)
        (let* ((_ht10121_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10123_ (table-ref _ht10121_ _sym10118_ '#f)))
          (if _$e10123_
              (values _$e10123_)
              (let ((_g10126_
                     (if _quote?10119_
                         (make-symbol
                          '"__"
                          _sym10118_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10118_ '"_"))))
                (begin
                  (table-set! _ht10121_ _sym10118_ _g10126_)
                  _g10126_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10131_)
          (let ((_quote?10133_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10116
             _sym10131_
             _quote?10133_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g11170_
          (let ((_g11169_ (length _g11170_)))
            (cond ((fx= _g11169_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g11170_))
                  ((fx= _g11169_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10116
                          _g11170_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g11170_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10115_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10115_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10075_)
      (if (interned-symbol? _key10075_)
          _key10075_
          (if (uninterned-symbol? _key10075_)
              (gxc#generate-runtime-gensym-reference__0 _key10075_)
              (let* ((_key1007610083_ _key10075_)
                     (_E1007810087_
                      (lambda ()
                        (error '"No clause matching" _key1007610083_)))
                     (_K1007910103_
                      (lambda (_mark10090_ _eid10091_)
                        (let ((_$e10093_
                               (##structure-ref
                                _mark10090_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10093_
                              ((lambda (_ht10096_)
                                 (let ((_$e10098_
                                        (table-ref _ht10096_ _eid10091_ '#f)))
                                   (if _$e10098_
                                       ((lambda (_id10101_)
                                          (if (interned-symbol? _id10101_)
                                              _id10101_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10101_)))
                                        _$e10098_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10091_))))
                               _$e10093_)
                              (gxc#generate-runtime-identifier-key
                               _eid10091_))))))
                (if (##pair? _key1007610083_)
                    (let ((_hd1008010106_ (##car _key1007610083_))
                          (_tl1008110108_ (##cdr _key1007610083_)))
                      (let* ((_eid10111_ _hd1008010106_)
                             (_mark10113_ _tl1008110108_))
                        (_K1007910103_ _mark10113_ _eid10111_)))
                    (_E1007810087_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10060
      (lambda (_top10062_)
        (if _top10062_
            (let ((_ns10064_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10065_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10065_)
                  (make-symbol
                   _ns10064_
                   '"["
                   (number->string _phi10065_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10064_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10071_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10060 _top10071_))))
      (define gxc#generate-runtime-temporary
        (lambda _g11172_
          (let ((_g11171_ (length _g11172_)))
            (cond ((fx= _g11171_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g11172_))
                  ((fx= _g11171_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10060
                          _g11172_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g11172_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10059_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9979_)
      (let* ((_g99819991_
              (lambda (_g99829988_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g99829988_)))
             (_g998010056_
              (lambda (_g99829994_)
                (if (gx#stx-pair? _g99829994_)
                    (let ((_e99849996_ (gx#stx-e _g99829994_)))
                      (let ((_hd99859999_ (##car _e99849996_))
                            (_tl998610001_ (##cdr _e99849996_)))
                        ((lambda (_L10004_)
                           (let* ((_body10014_
                                   (gx#stx-map1 gxc#compile-e _L10004_))
                                  (_body10053_
                                   (filter (lambda (_stx10016_)
                                             (let* ((_g1001910028_
                                                     (lambda (_g1002010025_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1002010025_)))
                                                    (_g1001810035_
                                                     (lambda (_g1002010031_)
                                                       ((lambda () '#t))))
                                                    (_g1001710050_
                                                     (lambda (_g1002010038_)
                                                       (if (gx#stx-pair?
                                                            _g1002010038_)
                                                           (let ((_e1002110040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1002010038_)))
                     (let ((_hd1002210043_ (##car _e1002110040_))
                           (_tl1002310045_ (##cdr _e1002110040_)))
                       (if (gx#identifier? _hd1002210043_)
                           (if (gx#stx-eq? 'begin _hd1002210043_)
                               (if (gx#stx-null? _tl1002310045_)
                                   ((lambda () '#f))
                                   (_g1001810035_ _g1002010038_))
                               (_g1001810035_ _g1002010038_))
                           (_g1001810035_ _g1002010038_))))
                   (_g1001810035_ _g1002010038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1001710050_ _stx10016_)))
                                           _body10014_)))
                             (if (fx= (length _body10053_) '1)
                                 (car _body10053_)
                                 (cons 'begin _body10053_))))
                         _tl998610001_)))
                    (_g99819991_ _g99829994_)))))
        (_g998010056_ _stx9979_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9941_)
      (let* ((_g99439953_
              (lambda (_g99449950_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g99449950_)))
             (_g99429976_
              (lambda (_g99449956_)
                (if (gx#stx-pair? _g99449956_)
                    (let ((_e99469958_ (gx#stx-e _g99449956_)))
                      (let ((_hd99479961_ (##car _e99469958_))
                            (_tl99489963_ (##cdr _e99469958_)))
                        ((lambda (_L9966_)
                           (cons 'begin (gx#syntax->datum _L9966_)))
                         _tl99489963_)))
                    (_g99439953_ _g99449956_)))))
        (_g99429976_ _stx9941_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9903_)
      (let* ((_g99059915_
              (lambda (_g99069912_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g99069912_)))
             (_g99049938_
              (lambda (_g99069918_)
                (if (gx#stx-pair? _g99069918_)
                    (let ((_e99089920_ (gx#stx-e _g99069918_)))
                      (let ((_hd99099923_ (##car _e99089920_))
                            (_tl99109925_ (##cdr _e99089920_)))
                        ((lambda (_L9928_)
                           (cons 'declare (map gx#syntax->datum _L9928_)))
                         _tl99109925_)))
                    (_g99059915_ _g99069918_)))))
        (_g99049938_ _stx9903_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9659_)
      (let* ((_g96619678_
              (lambda (_g96629675_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g96629675_)))
             (_g96609900_
              (lambda (_g96629681_)
                (if (gx#stx-pair? _g96629681_)
                    (let ((_e96659683_ (gx#stx-e _g96629681_)))
                      (let ((_hd96669686_ (##car _e96659683_))
                            (_tl96679688_ (##cdr _e96659683_)))
                        (if (gx#stx-pair? _tl96679688_)
                            (let ((_e96689691_ (gx#stx-e _tl96679688_)))
                              (let ((_hd96699694_ (##car _e96689691_))
                                    (_tl96709696_ (##cdr _e96689691_)))
                                (if (gx#stx-pair? _tl96709696_)
                                    (let ((_e96719699_
                                           (gx#stx-e _tl96709696_)))
                                      (let ((_hd96729702_ (##car _e96719699_))
                                            (_tl96739704_ (##cdr _e96719699_)))
                                        (if (gx#stx-null? _tl96739704_)
                                            ((lambda (_L9707_ _L9708_)
                                               (let* ((_g97259738_
                                                       (lambda (_g97269735_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g97269735_)))
                                                      (_g97249852_
                                                       (lambda (_g97269741_)
                                                         ((lambda ()
                                                            (let* ((_tmp9745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10060
                             '#t))
                           (_body9849_
                            (let _lp9747_ ((_rest9749_ _L9708_)
                                           (_k9750_ '0)
                                           (_r9751_ '()))
                              (let* ((_g97569772_
                                      (lambda (_g97579769_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g97579769_)))
                                     (_g97559779_
                                      (lambda (_g97579775_)
                                        ((lambda () (reverse _r9751_)))))
                                     (_g97549800_
                                      (lambda (_g97579782_)
                                        ((lambda (_L9784_)
                                           (if (gx#identifier? _L9784_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L9784_)
                                 (cons (cons 'values->list
                                             (cons _tmp9745_
                                                   (cons _k9750_ '())))
                                       '())))
                     '())
               _r9751_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g97559779_ _g97579782_)))
                                         _g97579782_)))
                                     (_g97539824_
                                      (lambda (_g97579803_)
                                        (if (gx#stx-pair? _g97579803_)
                                            (let ((_e97649805_
                                                   (gx#stx-e _g97579803_)))
                                              (let ((_hd97659808_
                                                     (##car _e97649805_))
                                                    (_tl97669810_
                                                     (##cdr _e97649805_)))
                                                ((lambda (_L9813_ _L9814_)
                                                   (_lp9747_
                                                    _L9813_
                                                    (fx+ _k9750_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9814_)
                              (cons (cons 'values-ref
                                          (cons _tmp9745_ (cons _k9750_ '())))
                                    '())))
                  _r9751_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl97669810_
                                                 _hd97659808_)))
                                            (_g97549800_ _g97579803_))))
                                     (_g97529846_
                                      (lambda (_g97579827_)
                                        (if (gx#stx-pair? _g97579827_)
                                            (let ((_e97599829_
                                                   (gx#stx-e _g97579827_)))
                                              (let ((_hd97609832_
                                                     (##car _e97599829_))
                                                    (_tl97619834_
                                                     (##cdr _e97599829_)))
                                                (if (gx#stx-datum?
                                                     _hd97609832_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd97609832_)
                        '#f)
                ((lambda (_L9837_) (_lp9747_ _L9837_ (fx+ _k9750_ '1) _r9751_))
                 _tl97619834_)
                (_g97539824_ _g97579827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g97539824_
                                                     _g97579827_))))
                                            (_g97539824_ _g97579827_)))))
                                (_g97529846_ _rest9749_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp9745_
                                              (cons (gxc#compile-e _L9707_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp9745_
                                         _L9708_)
                                        _body9849_))))))))
              (_g97239882_
               (lambda (_g97269855_)
                 (if (gx#stx-pair? _g97269855_)
                     (let ((_e97319857_ (gx#stx-e _g97269855_)))
                       (let ((_hd97329860_ (##car _e97319857_))
                             (_tl97339862_ (##cdr _e97319857_)))
                         (if (gx#stx-null? _tl97339862_)
                             ((lambda (_L9865_)
                                (let ((_eid9874_
                                       (gxc#generate-runtime-binding-id
                                        _L9865_)))
                                  (begin
                                    (let ((_lambda-expr98759877_
                                           (gxc#apply-find-lambda-expression
                                            _L9707_)))
                                      (if _lambda-expr98759877_
                                          (let ((_lambda-expr9880_
                                                 _lambda-expr98759877_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr9880_
                                             _eid9874_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid9874_
                                                (cons (gxc#compile-e _L9707_)
                                                      '()))))))
                              _hd97329860_)
                             (_g97249852_ _g97269855_))))
                     (_g97249852_ _g97269855_))))
              (_g97229897_
               (lambda (_g97269885_)
                 (if (gx#stx-pair? _g97269885_)
                     (let ((_e97279887_ (gx#stx-e _g97269885_)))
                       (let ((_hd97289890_ (##car _e97279887_))
                             (_tl97299892_ (##cdr _e97279887_)))
                         (if (gx#stx-datum? _hd97289890_)
                             (if (equal? (gx#stx-e _hd97289890_) '#f)
                                 (if (gx#stx-null? _tl97299892_)
                                     ((lambda () (gxc#compile-e _L9707_)))
                                     (_g97239882_ _g97269885_))
                                 (_g97239882_ _g97269885_))
                             (_g97239882_ _g97269885_))))
                     (_g97239882_ _g97269885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g97229897_ _L9708_)))
                                             _hd96729702_
                                             _hd96699694_)
                                            (_g96619678_ _g96629681_))))
                                    (_g96619678_ _g96629681_))))
                            (_g96619678_ _g96629681_))))
                    (_g96619678_ _g96629681_)))))
        (_g96609900_ _stx9659_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9647_ _hd9648_)
      (let* ((_len9650_ (gx#stx-length _hd9648_))
             (_cmp9652_ (if (gx#stx-list? _hd9648_) 'fx= 'fx>=))
             (_errmsg9654_
              (string-append
               (if (gx#stx-list? _hd9648_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len9650_)
               '" values"))
             (_count9656_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd9648_)) (fx= _len9650_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count9656_
                                    (cons (cons 'values-count
                                                (cons _vals9647_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp9652_
                                                            (cons _count9656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len9650_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg9654_
                                                            (cons _count9656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9580_)
      (let* ((_g95829599_
              (lambda (_g95839596_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g95839596_)))
             (_g95819644_
              (lambda (_g95839602_)
                (if (gx#stx-pair? _g95839602_)
                    (let ((_e95869604_ (gx#stx-e _g95839602_)))
                      (let ((_hd95879607_ (##car _e95869604_))
                            (_tl95889609_ (##cdr _e95869604_)))
                        (if (gx#stx-pair? _tl95889609_)
                            (let ((_e95899612_ (gx#stx-e _tl95889609_)))
                              (let ((_hd95909615_ (##car _e95899612_))
                                    (_tl95919617_ (##cdr _e95899612_)))
                                (if (gx#stx-pair? _tl95919617_)
                                    (let ((_e95929620_
                                           (gx#stx-e _tl95919617_)))
                                      (let ((_hd95939623_ (##car _e95929620_))
                                            (_tl95949625_ (##cdr _e95929620_)))
                                        (if (gx#stx-null? _tl95949625_)
                                            ((lambda (_L9628_ _L9629_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L9629_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9628_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd95939623_
                                             _hd95909615_)
                                            (_g95829599_ _g95839602_))))
                                    (_g95829599_ _g95839602_))))
                            (_g95829599_ _g95839602_))))
                    (_g95829599_ _g95839602_)))))
        (_g95819644_ _stx9580_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9578_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9578_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8111_)
      (letrec ((_runtime-identifier=?8113_
                (lambda (_id-stx9569_ _sym9570_)
                  (let ((_bind95719573_
                         (gx#resolve-identifier__0 _id-stx9569_)))
                    (if _bind95719573_
                        (let ((_bind9576_ _bind95719573_))
                          (eq? (##structure-ref
                                _bind9576_
                                '1
                                gx#binding::t
                                '#f)
                               _sym9570_))
                        '#f))))
               (_dispatch-case?8114_
                (lambda (_hd8799_ _body8800_)
                  (let* ((_form8802_ (cons _hd8799_ (cons _body8800_ '())))
                         (_g88078964_
                          (lambda (_g88088961_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g88088961_)))
                         (_g88068971_ (lambda (_g88088967_) ((lambda () '#f))))
                         (_g88059112_
                          (lambda (_g88088974_)
                            (if (gx#stx-pair? _g88088974_)
                                (let ((_e89248976_ (gx#stx-e _g88088974_)))
                                  (let ((_hd89258979_ (##car _e89248976_))
                                        (_tl89268981_ (##cdr _e89248976_)))
                                    (if (gx#stx-pair? _tl89268981_)
                                        (let ((_e89278984_
                                               (gx#stx-e _tl89268981_)))
                                          (let ((_hd89288987_
                                                 (##car _e89278984_))
                                                (_tl89298989_
                                                 (##cdr _e89278984_)))
                                            (if (gx#stx-pair? _hd89288987_)
                                                (let ((_e89308992_
                                                       (gx#stx-e
                                                        _hd89288987_)))
                                                  (let ((_hd89318995_
                                                         (##car _e89308992_))
                                                        (_tl89328997_
                                                         (##cdr _e89308992_)))
                                                    (if (gx#identifier?
                                                         _hd89318995_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd89318995_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl89328997_)
                        (let ((_e89339000_ (gx#stx-e _tl89328997_)))
                          (let ((_hd89349003_ (##car _e89339000_))
                                (_tl89359005_ (##cdr _e89339000_)))
                            (if (gx#stx-pair? _hd89349003_)
                                (let ((_e89369008_ (gx#stx-e _hd89349003_)))
                                  (let ((_hd89379011_ (##car _e89369008_))
                                        (_tl89389013_ (##cdr _e89369008_)))
                                    (if (gx#identifier? _hd89379011_)
                                        (if (gx#stx-eq? '%#ref _hd89379011_)
                                            (if (gx#stx-pair? _tl89389013_)
                                                (let ((_e89399016_
                                                       (gx#stx-e
                                                        _tl89389013_)))
                                                  (let ((_hd89409019_
                                                         (##car _e89399016_))
                                                        (_tl89419021_
                                                         (##cdr _e89399016_)))
                                                    (if (gx#stx-null?
                                                         _tl89419021_)
                                                        (if (gx#stx-pair?
                                                             _tl89359005_)
                                                            (let ((_e89429024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl89359005_)))
                      (let ((_hd89439027_ (##car _e89429024_))
                            (_tl89449029_ (##cdr _e89429024_)))
                        (if (gx#stx-pair? _hd89439027_)
                            (let ((_e89459032_ (gx#stx-e _hd89439027_)))
                              (let ((_hd89469035_ (##car _e89459032_))
                                    (_tl89479037_ (##cdr _e89459032_)))
                                (if (gx#identifier? _hd89469035_)
                                    (if (gx#stx-eq? '%#ref _hd89469035_)
                                        (if (gx#stx-pair? _tl89479037_)
                                            (let ((_e89489040_
                                                   (gx#stx-e _tl89479037_)))
                                              (let ((_hd89499043_
                                                     (##car _e89489040_))
                                                    (_tl89509045_
                                                     (##cdr _e89489040_)))
                                                (if (gx#stx-null? _tl89509045_)
                                                    (if (gx#stx-pair?
                                                         _tl89449029_)
                                                        (let ((_e89519048_
                                                               (gx#stx-e
                                                                _tl89449029_)))
                                                          (let ((_hd89529051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e89519048_))
                        (_tl89539053_ (##cdr _e89519048_)))
                    (if (gx#stx-pair? _hd89529051_)
                        (let ((_e89549056_ (gx#stx-e _hd89529051_)))
                          (let ((_hd89559059_ (##car _e89549056_))
                                (_tl89569061_ (##cdr _e89549056_)))
                            (if (gx#identifier? _hd89559059_)
                                (if (gx#stx-eq? '%#ref _hd89559059_)
                                    (if (gx#stx-pair? _tl89569061_)
                                        (let ((_e89579064_
                                               (gx#stx-e _tl89569061_)))
                                          (let ((_hd89589067_
                                                 (##car _e89579064_))
                                                (_tl89599069_
                                                 (##cdr _e89579064_)))
                                            (if (gx#stx-null? _tl89599069_)
                                                (if (gx#stx-null? _tl89539053_)
                                                    (if (gx#stx-null?
                                                         _tl89298989_)
                                                        ((lambda (_L9072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9073_
                          _L9074_
                          _L9075_)
                   (if (if (gx#identifier? _L9075_)
                           (if (_runtime-identifier=?8113_ _L9074_ 'apply)
                               (if (gx#free-identifier=? _L9075_ _L9072_)
                                   (not (gx#free-identifier=? _L9073_ _L9075_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g88068971_ _g88088974_)))
                 _hd89589067_
                 _hd89499043_
                 _hd89409019_
                 _hd89258979_)
                (_g88068971_ _g88088974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88068971_ _g88088974_))
                                                (_g88068971_ _g88088974_))))
                                        (_g88068971_ _g88088974_))
                                    (_g88068971_ _g88088974_))
                                (_g88068971_ _g88088974_))))
                        (_g88068971_ _g88088974_))))
                (_g88068971_ _g88088974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88068971_
                                                     _g88088974_))))
                                            (_g88068971_ _g88088974_))
                                        (_g88068971_ _g88088974_))
                                    (_g88068971_ _g88088974_))))
                            (_g88068971_ _g88088974_))))
                    (_g88068971_ _g88088974_))
                (_g88068971_ _g88088974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g88068971_ _g88088974_))
                                            (_g88068971_ _g88088974_))
                                        (_g88068971_ _g88088974_))))
                                (_g88068971_ _g88088974_))))
                        (_g88068971_ _g88088974_))
                    (_g88068971_ _g88088974_))
                (_g88068971_ _g88088974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g88068971_ _g88088974_))))
                                        (_g88068971_ _g88088974_))))
                                (_g88068971_ _g88088974_))))
                         (_g88049372_
                          (lambda (_g88089115_)
                            (if (gx#stx-pair? _g88089115_)
                                (let ((_e88609117_ (gx#stx-e _g88089115_)))
                                  (let ((_hd88619120_ (##car _e88609117_))
                                        (_tl88629122_ (##cdr _e88609117_)))
                                    (if (gx#stx-pair/null? _hd88619120_)
                                        (if (fx>= (gx#stx-length _hd88619120_)
                                                  '0)
                                            (let ((_g11173_
                                                   (gx#syntax-split-splice
                                                    _hd88619120_
                                                    '0)))
                                              (begin
                                                (let ((_g11174_
                                                       (values-count
                                                        _g11173_)))
                                                  (if (not (fx= _g11174_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11174_)))
                                                (let ((_target88639125_
                                                       (values-ref _g11173_ 0))
                                                      (_tl88659127_
                                                       (values-ref
                                                        _g11173_
                                                        1)))
                                                  (letrec ((_loop88669130_
                                                            (lambda (_hd88649133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg88709135_)
                      (if (gx#stx-pair? _hd88649133_)
                          (let ((_e88679138_ (gx#stx-e _hd88649133_)))
                            (let ((_lp-hd88689141_ (##car _e88679138_))
                                  (_lp-tl88699143_ (##cdr _e88679138_)))
                              (_loop88669130_
                               _lp-tl88699143_
                               (cons _lp-hd88689141_ _arg88709135_))))
                          (let ((_arg88719146_ (reverse _arg88709135_)))
                            (if (gx#stx-pair? _tl88629122_)
                                (let ((_e88729149_ (gx#stx-e _tl88629122_)))
                                  (let ((_hd88739152_ (##car _e88729149_))
                                        (_tl88749154_ (##cdr _e88729149_)))
                                    (if (gx#stx-pair? _hd88739152_)
                                        (let ((_e88759157_
                                               (gx#stx-e _hd88739152_)))
                                          (let ((_hd88769160_
                                                 (##car _e88759157_))
                                                (_tl88779162_
                                                 (##cdr _e88759157_)))
                                            (if (gx#identifier? _hd88769160_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd88769160_)
                                                    (if (gx#stx-pair?
                                                         _tl88779162_)
                                                        (let ((_e88789165_
                                                               (gx#stx-e
                                                                _tl88779162_)))
                                                          (let ((_hd88799168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e88789165_))
                        (_tl88809170_ (##cdr _e88789165_)))
                    (if (gx#stx-pair? _hd88799168_)
                        (let ((_e88819173_ (gx#stx-e _hd88799168_)))
                          (let ((_hd88829176_ (##car _e88819173_))
                                (_tl88839178_ (##cdr _e88819173_)))
                            (if (gx#identifier? _hd88829176_)
                                (if (gx#stx-eq? '%#ref _hd88829176_)
                                    (if (gx#stx-pair? _tl88839178_)
                                        (let ((_e88849181_
                                               (gx#stx-e _tl88839178_)))
                                          (let ((_hd88859184_
                                                 (##car _e88849181_))
                                                (_tl88869186_
                                                 (##cdr _e88849181_)))
                                            (if (gx#stx-null? _tl88869186_)
                                                (if (gx#stx-pair? _tl88809170_)
                                                    (let ((_e88879189_
                                                           (gx#stx-e
                                                            _tl88809170_)))
                                                      (let ((_hd88889192_
                                                             (##car _e88879189_))
                                                            (_tl88899194_
                                                             (##cdr _e88879189_)))
                                                        (if (gx#stx-pair?
                                                             _hd88889192_)
                                                            (let ((_e88909197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd88889192_)))
                      (let ((_hd88919200_ (##car _e88909197_))
                            (_tl88929202_ (##cdr _e88909197_)))
                        (if (gx#identifier? _hd88919200_)
                            (if (gx#stx-eq? '%#ref _hd88919200_)
                                (if (gx#stx-pair? _tl88929202_)
                                    (let ((_e88939205_
                                           (gx#stx-e _tl88929202_)))
                                      (let ((_hd88949208_ (##car _e88939205_))
                                            (_tl88959210_ (##cdr _e88939205_)))
                                        (if (gx#stx-null? _tl88959210_)
                                            (if (gx#stx-pair/null?
                                                 _tl88899194_)
                                                (if (fx>= (gx#stx-length
                                                           _tl88899194_)
                                                          '1)
                                                    (let ((_g11175_
                                                           (gx#syntax-split-splice
                                                            _tl88899194_
                                                            '1)))
                                                      (begin
                                                        (let ((_g11176_
                                                               (values-count
                                                                _g11175_)))
                                                          (if (not (fx= _g11176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g11176_)))
                (let ((_target88969213_ (values-ref _g11175_ 0))
                      (_tl88989215_ (values-ref _g11175_ 1)))
                  (if (gx#stx-pair? _tl88989215_)
                      (let ((_e89059218_ (gx#stx-e _tl88989215_)))
                        (let ((_hd89069221_ (##car _e89059218_))
                              (_tl89079223_ (##cdr _e89059218_)))
                          (if (gx#stx-pair? _hd89069221_)
                              (let ((_e89089226_ (gx#stx-e _hd89069221_)))
                                (let ((_hd89099229_ (##car _e89089226_))
                                      (_tl89109231_ (##cdr _e89089226_)))
                                  (if (gx#identifier? _hd89099229_)
                                      (if (gx#stx-eq? '%#ref _hd89099229_)
                                          (if (gx#stx-pair? _tl89109231_)
                                              (let ((_e89119234_
                                                     (gx#stx-e _tl89109231_)))
                                                (let ((_hd89129237_
                                                       (##car _e89119234_))
                                                      (_tl89139239_
                                                       (##cdr _e89119234_)))
                                                  (if (gx#stx-null?
                                                       _tl89139239_)
                                                      (if (gx#stx-null?
                                                           _tl89079223_)
                                                          (letrec ((_loop88999242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd88979245_ _xarg89039247_)
                              (if (gx#stx-pair? _hd88979245_)
                                  (let ((_e89009250_ (gx#stx-e _hd88979245_)))
                                    (let ((_lp-hd89019253_ (##car _e89009250_))
                                          (_lp-tl89029255_
                                           (##cdr _e89009250_)))
                                      (if (gx#stx-pair? _lp-hd89019253_)
                                          (let ((_e89149258_
                                                 (gx#stx-e _lp-hd89019253_)))
                                            (let ((_hd89159261_
                                                   (##car _e89149258_))
                                                  (_tl89169263_
                                                   (##cdr _e89149258_)))
                                              (if (gx#identifier? _hd89159261_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd89159261_)
                                                      (if (gx#stx-pair?
                                                           _tl89169263_)
                                                          (let ((_e89179266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl89169263_)))
                    (let ((_hd89189269_ (##car _e89179266_))
                          (_tl89199271_ (##cdr _e89179266_)))
                      (if (gx#stx-null? _tl89199271_)
                          (_loop88999242_
                           _lp-tl89029255_
                           (cons _hd89189269_ _xarg89039247_))
                          (_g88059112_ _g88089115_))))
                  (_g88059112_ _g88089115_))
              (_g88059112_ _g88089115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88059112_ _g88089115_))))
                                          (_g88059112_ _g88089115_))))
                                  (let ((_xarg89049274_
                                         (reverse _xarg89039247_)))
                                    (if (gx#stx-null? _tl88749154_)
                                        ((lambda (_L9277_
                                                  _L9278_
                                                  _L9279_
                                                  _L9280_
                                                  _L9281_
                                                  _L9282_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g93259328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g93269330_)
                        (cons _g93259328_ _g93269330_))
                      '()
                      _L9282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier? _L9281_)
                                                       (if (_runtime-identifier=?8113_
                                                            _L9280_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g93329335_ _g93339337_)
                                                (cons _g93329335_ _g93339337_))
                                              '()
                                              _L9282_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g93399342_ _g93409344_)
                                                (cons _g93399342_ _g93409344_))
                                              '()
                                              _L9278_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g93469349_ _g93479351_)
                                               (cons _g93469349_ _g93479351_))
                                             '()
                                             _L9282_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g93539356_ _g93549358_)
                                               (cons _g93539356_ _g93549358_))
                                             '()
                                             _L9278_)))
                           (if (gx#free-identifier=? _L9281_ _L9277_)
                               (not (find (lambda (_g93609362_)
                                            (gx#free-identifier=?
                                             _g93609362_
                                             _L9279_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g93649367_
                                                             _g93659369_)
                                                      (cons _g93649367_
                                                            _g93659369_))
                                                    (cons _L9281_ '())
                                                    _L9282_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g88059112_ _g88089115_)))
                                         _hd89129237_
                                         _xarg89049274_
                                         _hd88949208_
                                         _hd88859184_
                                         _tl88659127_
                                         _arg88719146_)
                                        (_g88059112_ _g88089115_)))))))
                    (_loop88999242_ _target88969213_ '()))
                  (_g88059112_ _g88089115_))
              (_g88059112_ _g88089115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g88059112_ _g88089115_))
                                          (_g88059112_ _g88089115_))
                                      (_g88059112_ _g88089115_))))
                              (_g88059112_ _g88089115_))))
                      (_g88059112_ _g88089115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88059112_ _g88089115_))
                                                (_g88059112_ _g88089115_))
                                            (_g88059112_ _g88089115_))))
                                    (_g88059112_ _g88089115_))
                                (_g88059112_ _g88089115_))
                            (_g88059112_ _g88089115_))))
                    (_g88059112_ _g88089115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88059112_ _g88089115_))
                                                (_g88059112_ _g88089115_))))
                                        (_g88059112_ _g88089115_))
                                    (_g88059112_ _g88089115_))
                                (_g88059112_ _g88089115_))))
                        (_g88059112_ _g88089115_))))
                (_g88059112_ _g88089115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88059112_ _g88089115_))
                                                (_g88059112_ _g88089115_))))
                                        (_g88059112_ _g88089115_))))
                                (_g88059112_ _g88089115_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop88669130_
                                                     _target88639125_
                                                     '())))))
                                            (_g88059112_ _g88089115_))
                                        (_g88059112_ _g88089115_))))
                                (_g88059112_ _g88089115_))))
                         (_g88039566_
                          (lambda (_g88089375_)
                            (if (gx#stx-pair? _g88089375_)
                                (let ((_e88129377_ (gx#stx-e _g88089375_)))
                                  (let ((_hd88139380_ (##car _e88129377_))
                                        (_tl88149382_ (##cdr _e88129377_)))
                                    (if (gx#stx-pair/null? _hd88139380_)
                                        (if (fx>= (gx#stx-length _hd88139380_)
                                                  '0)
                                            (let ((_g11177_
                                                   (gx#syntax-split-splice
                                                    _hd88139380_
                                                    '0)))
                                              (begin
                                                (let ((_g11178_
                                                       (values-count
                                                        _g11177_)))
                                                  (if (not (fx= _g11178_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11178_)))
                                                (let ((_target88159385_
                                                       (values-ref _g11177_ 0))
                                                      (_tl88179387_
                                                       (values-ref
                                                        _g11177_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl88179387_)
                                                      (letrec ((_loop88189390_
                                                                (lambda (_hd88169393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg88229395_)
                          (if (gx#stx-pair? _hd88169393_)
                              (let ((_e88199398_ (gx#stx-e _hd88169393_)))
                                (let ((_lp-hd88209401_ (##car _e88199398_))
                                      (_lp-tl88219403_ (##cdr _e88199398_)))
                                  (_loop88189390_
                                   _lp-tl88219403_
                                   (cons _lp-hd88209401_ _arg88229395_))))
                              (let ((_arg88239406_ (reverse _arg88229395_)))
                                (if (gx#stx-pair? _tl88149382_)
                                    (let ((_e88249409_
                                           (gx#stx-e _tl88149382_)))
                                      (let ((_hd88259412_ (##car _e88249409_))
                                            (_tl88269414_ (##cdr _e88249409_)))
                                        (if (gx#stx-pair? _hd88259412_)
                                            (let ((_e88279417_
                                                   (gx#stx-e _hd88259412_)))
                                              (let ((_hd88289420_
                                                     (##car _e88279417_))
                                                    (_tl88299422_
                                                     (##cdr _e88279417_)))
                                                (if (gx#identifier?
                                                     _hd88289420_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd88289420_)
                                                        (if (gx#stx-pair?
                                                             _tl88299422_)
                                                            (let ((_e88309425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl88299422_)))
                      (let ((_hd88319428_ (##car _e88309425_))
                            (_tl88329430_ (##cdr _e88309425_)))
                        (if (gx#stx-pair? _hd88319428_)
                            (let ((_e88339433_ (gx#stx-e _hd88319428_)))
                              (let ((_hd88349436_ (##car _e88339433_))
                                    (_tl88359438_ (##cdr _e88339433_)))
                                (if (gx#identifier? _hd88349436_)
                                    (if (gx#stx-eq? '%#ref _hd88349436_)
                                        (if (gx#stx-pair? _tl88359438_)
                                            (let ((_e88369441_
                                                   (gx#stx-e _tl88359438_)))
                                              (let ((_hd88379444_
                                                     (##car _e88369441_))
                                                    (_tl88389446_
                                                     (##cdr _e88369441_)))
                                                (if (gx#stx-null? _tl88389446_)
                                                    (if (gx#stx-pair/null?
                                                         _tl88329430_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl88329430_)
                          '0)
                    (let ((_g11179_ (gx#syntax-split-splice _tl88329430_ '0)))
                      (begin
                        (let ((_g11180_ (values-count _g11179_)))
                          (if (not (fx= _g11180_ 2))
                              (error "Context expects 2 values" _g11180_)))
                        (let ((_target88399449_ (values-ref _g11179_ 0))
                              (_tl88419451_ (values-ref _g11179_ 1)))
                          (if (gx#stx-null? _tl88419451_)
                              (letrec ((_loop88429454_
                                        (lambda (_hd88409457_ _xarg88469459_)
                                          (if (gx#stx-pair? _hd88409457_)
                                              (let ((_e88439462_
                                                     (gx#stx-e _hd88409457_)))
                                                (let ((_lp-hd88449465_
                                                       (##car _e88439462_))
                                                      (_lp-tl88459467_
                                                       (##cdr _e88439462_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd88449465_)
                                                      (let ((_e88489470_
                                                             (gx#stx-e
                                                              _lp-hd88449465_)))
                                                        (let ((_hd88499473_
                                                               (##car _e88489470_))
                                                              (_tl88509475_
                                                               (##cdr _e88489470_)))
                                                          (if (gx#identifier?
                                                               _hd88499473_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd88499473_)
                          (if (gx#stx-pair? _tl88509475_)
                              (let ((_e88519478_ (gx#stx-e _tl88509475_)))
                                (let ((_hd88529481_ (##car _e88519478_))
                                      (_tl88539483_ (##cdr _e88519478_)))
                                  (if (gx#stx-null? _tl88539483_)
                                      (_loop88429454_
                                       _lp-tl88459467_
                                       (cons _hd88529481_ _xarg88469459_))
                                      (_g88049372_ _g88089375_))))
                              (_g88049372_ _g88089375_))
                          (_g88049372_ _g88089375_))
                      (_g88049372_ _g88089375_))))
              (_g88049372_ _g88089375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg88479486_
                                                     (reverse _xarg88469459_)))
                                                (if (gx#stx-null? _tl88269414_)
                                                    ((lambda (_L9489_
                                                              _L9490_
                                                              _L9491_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g95199522_ _g95209524_)
                                    (cons _g95199522_ _g95209524_))
                                  '()
                                  _L9491_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g95269529_
                                                           _g95279531_)
                                                    (cons _g95269529_
                                                          _g95279531_))
                                                  '()
                                                  _L9491_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g95339536_
                                                           _g95349538_)
                                                    (cons _g95339536_
                                                          _g95349538_))
                                                  '()
                                                  _L9489_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g95409543_
                                                          _g95419545_)
                                                   (cons _g95409543_
                                                         _g95419545_))
                                                 '()
                                                 _L9491_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g95479550_
                                                          _g95489552_)
                                                   (cons _g95479550_
                                                         _g95489552_))
                                                 '()
                                                 _L9489_)))
                               (not (find (lambda (_g95549556_)
                                            (gx#free-identifier=?
                                             _g95549556_
                                             _L9490_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g95589561_
                                                             _g95599563_)
                                                      (cons _g95589561_
                                                            _g95599563_))
                                                    '()
                                                    _L9491_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g88049372_ _g88089375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg88479486_
                                                     _hd88379444_
                                                     _arg88239406_)
                                                    (_g88049372_
                                                     _g88089375_)))))))
                                (_loop88429454_ _target88399449_ '()))
                              (_g88049372_ _g88089375_)))))
                    (_g88049372_ _g88089375_))
                (_g88049372_ _g88089375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88049372_
                                                     _g88089375_))))
                                            (_g88049372_ _g88089375_))
                                        (_g88049372_ _g88089375_))
                                    (_g88049372_ _g88089375_))))
                            (_g88049372_ _g88089375_))))
                    (_g88049372_ _g88089375_))
                (_g88049372_ _g88089375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88049372_
                                                     _g88089375_))))
                                            (_g88049372_ _g88089375_))))
                                    (_g88049372_ _g88089375_)))))))
                (_loop88189390_ _target88159385_ '()))
              (_g88049372_ _g88089375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g88049372_ _g88089375_))
                                        (_g88049372_ _g88089375_))))
                                (_g88049372_ _g88089375_)))))
                    (_g88039566_ _form8802_))))
               (_dispatch-case-e8115_
                (lambda (_hd8263_ _body8264_)
                  (let* ((_form8266_ (cons _hd8263_ (cons _body8264_ '())))
                         (_g82708394_
                          (lambda (_g82718391_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g82718391_)))
                         (_g82698512_
                          (lambda (_g82718397_)
                            (if (gx#stx-pair? _g82718397_)
                                (let ((_e83608399_ (gx#stx-e _g82718397_)))
                                  (let ((_hd83618402_ (##car _e83608399_))
                                        (_tl83628404_ (##cdr _e83608399_)))
                                    (if (gx#stx-pair? _tl83628404_)
                                        (let ((_e83638407_
                                               (gx#stx-e _tl83628404_)))
                                          (let ((_hd83648410_
                                                 (##car _e83638407_))
                                                (_tl83658412_
                                                 (##cdr _e83638407_)))
                                            (if (gx#stx-pair? _hd83648410_)
                                                (let ((_e83668415_
                                                       (gx#stx-e
                                                        _hd83648410_)))
                                                  (let ((_hd83678418_
                                                         (##car _e83668415_))
                                                        (_tl83688420_
                                                         (##cdr _e83668415_)))
                                                    (if (gx#identifier?
                                                         _hd83678418_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd83678418_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83688420_)
                        (let ((_e83698423_ (gx#stx-e _tl83688420_)))
                          (let ((_hd83708426_ (##car _e83698423_))
                                (_tl83718428_ (##cdr _e83698423_)))
                            (if (gx#stx-pair? _hd83708426_)
                                (let ((_e83728431_ (gx#stx-e _hd83708426_)))
                                  (let ((_hd83738434_ (##car _e83728431_))
                                        (_tl83748436_ (##cdr _e83728431_)))
                                    (if (gx#identifier? _hd83738434_)
                                        (if (gx#stx-eq? '%#ref _hd83738434_)
                                            (if (gx#stx-pair? _tl83748436_)
                                                (let ((_e83758439_
                                                       (gx#stx-e
                                                        _tl83748436_)))
                                                  (let ((_hd83768442_
                                                         (##car _e83758439_))
                                                        (_tl83778444_
                                                         (##cdr _e83758439_)))
                                                    (if (gx#stx-null?
                                                         _tl83778444_)
                                                        (if (gx#stx-pair?
                                                             _tl83718428_)
                                                            (let ((_e83788447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl83718428_)))
                      (let ((_hd83798450_ (##car _e83788447_))
                            (_tl83808452_ (##cdr _e83788447_)))
                        (if (gx#stx-pair? _hd83798450_)
                            (let ((_e83818455_ (gx#stx-e _hd83798450_)))
                              (let ((_hd83828458_ (##car _e83818455_))
                                    (_tl83838460_ (##cdr _e83818455_)))
                                (if (gx#identifier? _hd83828458_)
                                    (if (gx#stx-eq? '%#ref _hd83828458_)
                                        (if (gx#stx-pair? _tl83838460_)
                                            (let ((_e83848463_
                                                   (gx#stx-e _tl83838460_)))
                                              (let ((_hd83858466_
                                                     (##car _e83848463_))
                                                    (_tl83868468_
                                                     (##cdr _e83848463_)))
                                                (if (gx#stx-null? _tl83868468_)
                                                    (if (gx#stx-pair?
                                                         _tl83808452_)
                                                        (let ((_e83878471_
                                                               (gx#stx-e
                                                                _tl83808452_)))
                                                          (let ((_hd83888474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83878471_))
                        (_tl83898476_ (##cdr _e83878471_)))
                    (if (gx#stx-null? _tl83898476_)
                        (if (gx#stx-null? _tl83658412_)
                            ((lambda (_L8479_ _L8480_ _L8481_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8479_ '()))))
                             _hd83858466_
                             _hd83768442_
                             _hd83618402_)
                            (_g82708394_ _g82718397_))
                        (_g82708394_ _g82718397_))))
                (_g82708394_ _g82718397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82708394_
                                                     _g82718397_))))
                                            (_g82708394_ _g82718397_))
                                        (_g82708394_ _g82718397_))
                                    (_g82708394_ _g82718397_))))
                            (_g82708394_ _g82718397_))))
                    (_g82708394_ _g82718397_))
                (_g82708394_ _g82718397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82708394_ _g82718397_))
                                            (_g82708394_ _g82718397_))
                                        (_g82708394_ _g82718397_))))
                                (_g82708394_ _g82718397_))))
                        (_g82708394_ _g82718397_))
                    (_g82708394_ _g82718397_))
                (_g82708394_ _g82718397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82708394_ _g82718397_))))
                                        (_g82708394_ _g82718397_))))
                                (_g82708394_ _g82718397_))))
                         (_g82688648_
                          (lambda (_g82718515_)
                            (if (gx#stx-pair? _g82718515_)
                                (let ((_e83218517_ (gx#stx-e _g82718515_)))
                                  (let ((_hd83228520_ (##car _e83218517_))
                                        (_tl83238522_ (##cdr _e83218517_)))
                                    (if (gx#stx-pair/null? _hd83228520_)
                                        (if (fx>= (gx#stx-length _hd83228520_)
                                                  '0)
                                            (let ((_g11181_
                                                   (gx#syntax-split-splice
                                                    _hd83228520_
                                                    '0)))
                                              (begin
                                                (let ((_g11182_
                                                       (values-count
                                                        _g11181_)))
                                                  (if (not (fx= _g11182_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11182_)))
                                                (let ((_target83248525_
                                                       (values-ref _g11181_ 0))
                                                      (_tl83268527_
                                                       (values-ref
                                                        _g11181_
                                                        1)))
                                                  (letrec ((_loop83278530_
                                                            (lambda (_hd83258533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg83318535_)
                      (if (gx#stx-pair? _hd83258533_)
                          (let ((_e83288538_ (gx#stx-e _hd83258533_)))
                            (let ((_lp-hd83298541_ (##car _e83288538_))
                                  (_lp-tl83308543_ (##cdr _e83288538_)))
                              (_loop83278530_
                               _lp-tl83308543_
                               (cons _lp-hd83298541_ _arg83318535_))))
                          (let ((_arg83328546_ (reverse _arg83318535_)))
                            (if (gx#stx-pair? _tl83238522_)
                                (let ((_e83338549_ (gx#stx-e _tl83238522_)))
                                  (let ((_hd83348552_ (##car _e83338549_))
                                        (_tl83358554_ (##cdr _e83338549_)))
                                    (if (gx#stx-pair? _hd83348552_)
                                        (let ((_e83368557_
                                               (gx#stx-e _hd83348552_)))
                                          (let ((_hd83378560_
                                                 (##car _e83368557_))
                                                (_tl83388562_
                                                 (##cdr _e83368557_)))
                                            (if (gx#identifier? _hd83378560_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd83378560_)
                                                    (if (gx#stx-pair?
                                                         _tl83388562_)
                                                        (let ((_e83398565_
                                                               (gx#stx-e
                                                                _tl83388562_)))
                                                          (let ((_hd83408568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83398565_))
                        (_tl83418570_ (##cdr _e83398565_)))
                    (if (gx#stx-pair? _hd83408568_)
                        (let ((_e83428573_ (gx#stx-e _hd83408568_)))
                          (let ((_hd83438576_ (##car _e83428573_))
                                (_tl83448578_ (##cdr _e83428573_)))
                            (if (gx#identifier? _hd83438576_)
                                (if (gx#stx-eq? '%#ref _hd83438576_)
                                    (if (gx#stx-pair? _tl83448578_)
                                        (let ((_e83458581_
                                               (gx#stx-e _tl83448578_)))
                                          (let ((_hd83468584_
                                                 (##car _e83458581_))
                                                (_tl83478586_
                                                 (##cdr _e83458581_)))
                                            (if (gx#stx-null? _tl83478586_)
                                                (if (gx#stx-pair? _tl83418570_)
                                                    (let ((_e83488589_
                                                           (gx#stx-e
                                                            _tl83418570_)))
                                                      (let ((_hd83498592_
                                                             (##car _e83488589_))
                                                            (_tl83508594_
                                                             (##cdr _e83488589_)))
                                                        (if (gx#stx-pair?
                                                             _hd83498592_)
                                                            (let ((_e83518597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd83498592_)))
                      (let ((_hd83528600_ (##car _e83518597_))
                            (_tl83538602_ (##cdr _e83518597_)))
                        (if (gx#identifier? _hd83528600_)
                            (if (gx#stx-eq? '%#ref _hd83528600_)
                                (if (gx#stx-pair? _tl83538602_)
                                    (let ((_e83548605_
                                           (gx#stx-e _tl83538602_)))
                                      (let ((_hd83558608_ (##car _e83548605_))
                                            (_tl83568610_ (##cdr _e83548605_)))
                                        (if (gx#stx-null? _tl83568610_)
                                            (if (gx#stx-null? _tl83358554_)
                                                ((lambda (_L8613_
                                                          _L8614_
                                                          _L8615_
                                                          _L8616_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L8613_ '()))))
                                                 _hd83558608_
                                                 _hd83468584_
                                                 _tl83268527_
                                                 _arg83328546_)
                                                (_g82698512_ _g82718515_))
                                            (_g82698512_ _g82718515_))))
                                    (_g82698512_ _g82718515_))
                                (_g82698512_ _g82718515_))
                            (_g82698512_ _g82718515_))))
                    (_g82698512_ _g82718515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82698512_ _g82718515_))
                                                (_g82698512_ _g82718515_))))
                                        (_g82698512_ _g82718515_))
                                    (_g82698512_ _g82718515_))
                                (_g82698512_ _g82718515_))))
                        (_g82698512_ _g82718515_))))
                (_g82698512_ _g82718515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82698512_ _g82718515_))
                                                (_g82698512_ _g82718515_))))
                                        (_g82698512_ _g82718515_))))
                                (_g82698512_ _g82718515_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop83278530_
                                                     _target83248525_
                                                     '())))))
                                            (_g82698512_ _g82718515_))
                                        (_g82698512_ _g82718515_))))
                                (_g82698512_ _g82718515_))))
                         (_g82678796_
                          (lambda (_g82718651_)
                            (if (gx#stx-pair? _g82718651_)
                                (let ((_e82758653_ (gx#stx-e _g82718651_)))
                                  (let ((_hd82768656_ (##car _e82758653_))
                                        (_tl82778658_ (##cdr _e82758653_)))
                                    (if (gx#stx-pair/null? _hd82768656_)
                                        (if (fx>= (gx#stx-length _hd82768656_)
                                                  '0)
                                            (let ((_g11183_
                                                   (gx#syntax-split-splice
                                                    _hd82768656_
                                                    '0)))
                                              (begin
                                                (let ((_g11184_
                                                       (values-count
                                                        _g11183_)))
                                                  (if (not (fx= _g11184_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11184_)))
                                                (let ((_target82788661_
                                                       (values-ref _g11183_ 0))
                                                      (_tl82808663_
                                                       (values-ref
                                                        _g11183_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl82808663_)
                                                      (letrec ((_loop82818666_
                                                                (lambda (_hd82798669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg82858671_)
                          (if (gx#stx-pair? _hd82798669_)
                              (let ((_e82828674_ (gx#stx-e _hd82798669_)))
                                (let ((_lp-hd82838677_ (##car _e82828674_))
                                      (_lp-tl82848679_ (##cdr _e82828674_)))
                                  (_loop82818666_
                                   _lp-tl82848679_
                                   (cons _lp-hd82838677_ _arg82858671_))))
                              (let ((_arg82868682_ (reverse _arg82858671_)))
                                (if (gx#stx-pair? _tl82778658_)
                                    (let ((_e82878685_
                                           (gx#stx-e _tl82778658_)))
                                      (let ((_hd82888688_ (##car _e82878685_))
                                            (_tl82898690_ (##cdr _e82878685_)))
                                        (if (gx#stx-pair? _hd82888688_)
                                            (let ((_e82908693_
                                                   (gx#stx-e _hd82888688_)))
                                              (let ((_hd82918696_
                                                     (##car _e82908693_))
                                                    (_tl82928698_
                                                     (##cdr _e82908693_)))
                                                (if (gx#identifier?
                                                     _hd82918696_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd82918696_)
                                                        (if (gx#stx-pair?
                                                             _tl82928698_)
                                                            (let ((_e82938701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl82928698_)))
                      (let ((_hd82948704_ (##car _e82938701_))
                            (_tl82958706_ (##cdr _e82938701_)))
                        (if (gx#stx-pair? _hd82948704_)
                            (let ((_e82968709_ (gx#stx-e _hd82948704_)))
                              (let ((_hd82978712_ (##car _e82968709_))
                                    (_tl82988714_ (##cdr _e82968709_)))
                                (if (gx#identifier? _hd82978712_)
                                    (if (gx#stx-eq? '%#ref _hd82978712_)
                                        (if (gx#stx-pair? _tl82988714_)
                                            (let ((_e82998717_
                                                   (gx#stx-e _tl82988714_)))
                                              (let ((_hd83008720_
                                                     (##car _e82998717_))
                                                    (_tl83018722_
                                                     (##cdr _e82998717_)))
                                                (if (gx#stx-null? _tl83018722_)
                                                    (if (gx#stx-pair/null?
                                                         _tl82958706_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl82958706_)
                          '0)
                    (let ((_g11185_ (gx#syntax-split-splice _tl82958706_ '0)))
                      (begin
                        (let ((_g11186_ (values-count _g11185_)))
                          (if (not (fx= _g11186_ 2))
                              (error "Context expects 2 values" _g11186_)))
                        (let ((_target83028725_ (values-ref _g11185_ 0))
                              (_tl83048727_ (values-ref _g11185_ 1)))
                          (if (gx#stx-null? _tl83048727_)
                              (letrec ((_loop83058730_
                                        (lambda (_hd83038733_ _xarg83098735_)
                                          (if (gx#stx-pair? _hd83038733_)
                                              (let ((_e83068738_
                                                     (gx#stx-e _hd83038733_)))
                                                (let ((_lp-hd83078741_
                                                       (##car _e83068738_))
                                                      (_lp-tl83088743_
                                                       (##cdr _e83068738_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd83078741_)
                                                      (let ((_e83118746_
                                                             (gx#stx-e
                                                              _lp-hd83078741_)))
                                                        (let ((_hd83128749_
                                                               (##car _e83118746_))
                                                              (_tl83138751_
                                                               (##cdr _e83118746_)))
                                                          (if (gx#identifier?
                                                               _hd83128749_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd83128749_)
                          (if (gx#stx-pair? _tl83138751_)
                              (let ((_e83148754_ (gx#stx-e _tl83138751_)))
                                (let ((_hd83158757_ (##car _e83148754_))
                                      (_tl83168759_ (##cdr _e83148754_)))
                                  (if (gx#stx-null? _tl83168759_)
                                      (_loop83058730_
                                       _lp-tl83088743_
                                       (cons _hd83158757_ _xarg83098735_))
                                      (_g82688648_ _g82718651_))))
                              (_g82688648_ _g82718651_))
                          (_g82688648_ _g82718651_))
                      (_g82688648_ _g82718651_))))
              (_g82688648_ _g82718651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg83108762_
                                                     (reverse _xarg83098735_)))
                                                (if (gx#stx-null? _tl82898690_)
                                                    ((lambda (_L8765_
                                                              _L8766_
                                                              _L8767_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L8766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg83108762_
                                                     _hd83008720_
                                                     _arg82868682_)
                                                    (_g82688648_
                                                     _g82718651_)))))))
                                (_loop83058730_ _target83028725_ '()))
                              (_g82688648_ _g82718651_)))))
                    (_g82688648_ _g82718651_))
                (_g82688648_ _g82718651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82688648_
                                                     _g82718651_))))
                                            (_g82688648_ _g82718651_))
                                        (_g82688648_ _g82718651_))
                                    (_g82688648_ _g82718651_))))
                            (_g82688648_ _g82718651_))))
                    (_g82688648_ _g82718651_))
                (_g82688648_ _g82718651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82688648_
                                                     _g82718651_))))
                                            (_g82688648_ _g82718651_))))
                                    (_g82688648_ _g82718651_)))))))
                (_loop82818666_ _target82788661_ '()))
              (_g82688648_ _g82718651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g82688648_ _g82718651_))
                                        (_g82688648_ _g82718651_))))
                                (_g82688648_ _g82718651_)))))
                    (_g82678796_ _form8266_))))
               (_generate18116_
                (lambda (_args8251_ _arglen8252_ _hd8253_ _body8254_)
                  (let* ((_len8256_ (gx#stx-length _hd8253_))
                         (_condition8258_
                          (if (gx#stx-list? _hd8253_)
                              (cons 'fx=
                                    (cons _arglen8252_ (cons _len8256_ '())))
                              (if (> _len8256_ '0)
                                  (cons 'fx>=
                                        (cons _arglen8252_
                                              (cons _len8256_ '())))
                                  '#t)))
                         (_dispatch8260_
                          (if (_dispatch-case?8114_ _hd8253_ _body8254_)
                              (_dispatch-case-e8115_ _hd8253_ _body8254_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd8253_)
                                          (cons (gxc#compile-e _body8254_)
                                                '()))))))
                    (cons _condition8258_
                          (cons (cons 'apply
                                      (cons _dispatch8260_
                                            (cons _args8251_ '())))
                                '()))))))
        (let* ((_g81188146_
                (lambda (_g81198143_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g81198143_)))
               (_g81178248_
                (lambda (_g81198149_)
                  (if (gx#stx-pair? _g81198149_)
                      (let ((_e81228151_ (gx#stx-e _g81198149_)))
                        (let ((_hd81238154_ (##car _e81228151_))
                              (_tl81248156_ (##cdr _e81228151_)))
                          (if (gx#stx-pair/null? _tl81248156_)
                              (if (fx>= (gx#stx-length _tl81248156_) '0)
                                  (let ((_g11187_
                                         (gx#syntax-split-splice
                                          _tl81248156_
                                          '0)))
                                    (begin
                                      (let ((_g11188_ (values-count _g11187_)))
                                        (if (not (fx= _g11188_ 2))
                                            (error "Context expects 2 values"
                                                   _g11188_)))
                                      (let ((_target81258159_
                                             (values-ref _g11187_ 0))
                                            (_tl81278161_
                                             (values-ref _g11187_ 1)))
                                        (if (gx#stx-null? _tl81278161_)
                                            (letrec ((_loop81288164_
                                                      (lambda (_hd81268167_
                                                               _body81328169_
                                                               _hd81338171_)
                                                        (if (gx#stx-pair?
                                                             _hd81268167_)
                                                            (let ((_e81298174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd81268167_)))
                      (let ((_lp-hd81308177_ (##car _e81298174_))
                            (_lp-tl81318179_ (##cdr _e81298174_)))
                        (if (gx#stx-pair? _lp-hd81308177_)
                            (let ((_e81368182_ (gx#stx-e _lp-hd81308177_)))
                              (let ((_hd81378185_ (##car _e81368182_))
                                    (_tl81388187_ (##cdr _e81368182_)))
                                (if (gx#stx-pair? _tl81388187_)
                                    (let ((_e81398190_
                                           (gx#stx-e _tl81388187_)))
                                      (let ((_hd81408193_ (##car _e81398190_))
                                            (_tl81418195_ (##cdr _e81398190_)))
                                        (if (gx#stx-null? _tl81418195_)
                                            (_loop81288164_
                                             _lp-tl81318179_
                                             (cons _hd81408193_ _body81328169_)
                                             (cons _hd81378185_ _hd81338171_))
                                            (_g81188146_ _g81198149_))))
                                    (_g81188146_ _g81198149_))))
                            (_g81188146_ _g81198149_))))
                    (let ((_body81348198_ (reverse _body81328169_))
                          (_hd81358200_ (reverse _hd81338171_)))
                      ((lambda (_L8203_ _L8204_)
                         (let ((_args8223_ (gxc#generate-runtime-temporary__0))
                               (_arglen8224_
                                (gxc#generate-runtime-temporary__0))
                               (_name8225_
                                (let ((_$e8220_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8111_
                                        '#f)))
                                  (if _$e8220_
                                      _$e8220_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8223_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8223_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8223_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g82268229_ _g82278231_)
                                            (_generate18116_
                                             _args8223_
                                             _arglen8224_
                                             _g82268229_
                                             _g82278231_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g82338236_
                                                             _g82348238_)
                                                      (cons _g82338236_
                                                            _g82348238_))
                                                    '()
                                                    _L8204_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g82408243_
                                                             _g82418245_)
                                                      (cons _g82408243_
                                                            _g82418245_))
                                                    '()
                                                    _L8203_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body81348198_
                       _hd81358200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop81288164_
                                               _target81258159_
                                               '()
                                               '()))
                                            (_g81188146_ _g81198149_)))))
                                  (_g81188146_ _g81198149_))
                              (_g81188146_ _g81198149_))))
                      (_g81188146_ _g81198149_)))))
          (_g81178248_ _stx8111_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7174
      (lambda (_stx7176_ _compiled-body?7177_)
        (letrec ((_generate-simple7179_
                  (lambda (_hd8098_ _body8099_)
                    (_coalesce-let*7180_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8098_
                      _body8099_
                      _compiled-body?7177_))))
                 (_coalesce-let*7180_
                  (lambda (_code7482_)
                    (let* ((_g74877622_
                            (lambda (_g74887619_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g74887619_)))
                           (_g74867629_
                            (lambda (_g74887625_) ((lambda () _code7482_))))
                           (_g74857799_
                            (lambda (_g74887632_)
                              (if (gx#stx-pair? _g74887632_)
                                  (let ((_e75767634_ (gx#stx-e _g74887632_)))
                                    (let ((_hd75777637_ (##car _e75767634_))
                                          (_tl75787639_ (##cdr _e75767634_)))
                                      (if (gx#identifier? _hd75777637_)
                                          (if (gx#stx-eq? 'let _hd75777637_)
                                              (if (gx#stx-pair? _tl75787639_)
                                                  (let ((_e75797642_
                                                         (gx#stx-e
                                                          _tl75787639_)))
                                                    (let ((_hd75807645_
                                                           (##car _e75797642_))
                                                          (_tl75817647_
                                                           (##cdr _e75797642_)))
                                                      (if (gx#stx-pair?
                                                           _hd75807645_)
                                                          (let ((_e75827650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75807645_)))
                    (let ((_hd75837653_ (##car _e75827650_))
                          (_tl75847655_ (##cdr _e75827650_)))
                      (if (gx#stx-pair? _hd75837653_)
                          (let ((_e75857658_ (gx#stx-e _hd75837653_)))
                            (let ((_hd75867661_ (##car _e75857658_))
                                  (_tl75877663_ (##cdr _e75857658_)))
                              (if (gx#stx-pair? _tl75877663_)
                                  (let ((_e75887666_ (gx#stx-e _tl75877663_)))
                                    (let ((_hd75897669_ (##car _e75887666_))
                                          (_tl75907671_ (##cdr _e75887666_)))
                                      (if (gx#stx-null? _tl75907671_)
                                          (if (gx#stx-null? _tl75847655_)
                                              (if (gx#stx-pair? _tl75817647_)
                                                  (let ((_e75917674_
                                                         (gx#stx-e
                                                          _tl75817647_)))
                                                    (let ((_hd75927677_
                                                           (##car _e75917674_))
                                                          (_tl75937679_
                                                           (##cdr _e75917674_)))
                                                      (if (gx#stx-pair?
                                                           _hd75927677_)
                                                          (let ((_e75947682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75927677_)))
                    (let ((_hd75957685_ (##car _e75947682_))
                          (_tl75967687_ (##cdr _e75947682_)))
                      (if (gx#identifier? _hd75957685_)
                          (if (gx#stx-eq? 'let* _hd75957685_)
                              (if (gx#stx-pair? _tl75967687_)
                                  (let ((_e75977690_ (gx#stx-e _tl75967687_)))
                                    (let ((_hd75987693_ (##car _e75977690_))
                                          (_tl75997695_ (##cdr _e75977690_)))
                                      (if (gx#stx-pair/null? _hd75987693_)
                                          (if (fx>= (gx#stx-length
                                                     _hd75987693_)
                                                    '0)
                                              (let ((_g11189_
                                                     (gx#syntax-split-splice
                                                      _hd75987693_
                                                      '0)))
                                                (begin
                                                  (let ((_g11190_
                                                         (values-count
                                                          _g11189_)))
                                                    (if (not (fx= _g11190_ 2))
                                                        (error "Context expects 2 values"
                                                               _g11190_)))
                                                  (let ((_target76007698_
                                                         (values-ref
                                                          _g11189_
                                                          0))
                                                        (_tl76027700_
                                                         (values-ref
                                                          _g11189_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl76027700_)
                                                        (letrec ((_loop76037703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd76017706_ _bind76077708_)
                            (if (gx#stx-pair? _hd76017706_)
                                (let ((_e76047711_ (gx#stx-e _hd76017706_)))
                                  (let ((_lp-hd76057714_ (##car _e76047711_))
                                        (_lp-tl76067716_ (##cdr _e76047711_)))
                                    (_loop76037703_
                                     _lp-tl76067716_
                                     (cons _lp-hd76057714_ _bind76077708_))))
                                (let ((_bind76087719_
                                       (reverse _bind76077708_)))
                                  (if (gx#stx-pair/null? _tl75997695_)
                                      (if (fx>= (gx#stx-length _tl75997695_)
                                                '0)
                                          (let ((_g11191_
                                                 (gx#syntax-split-splice
                                                  _tl75997695_
                                                  '0)))
                                            (begin
                                              (let ((_g11192_
                                                     (values-count _g11191_)))
                                                (if (not (fx= _g11192_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11192_)))
                                              (let ((_target76097722_
                                                     (values-ref _g11191_ 0))
                                                    (_tl76117724_
                                                     (values-ref _g11191_ 1)))
                                                (if (gx#stx-null? _tl76117724_)
                                                    (letrec ((_loop76127727_
                                                              (lambda (_hd76107730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body76167732_)
                        (if (gx#stx-pair? _hd76107730_)
                            (let ((_e76137735_ (gx#stx-e _hd76107730_)))
                              (let ((_lp-hd76147738_ (##car _e76137735_))
                                    (_lp-tl76157740_ (##cdr _e76137735_)))
                                (_loop76127727_
                                 _lp-tl76157740_
                                 (cons _lp-hd76147738_ _body76167732_))))
                            (let ((_body76177743_ (reverse _body76167732_)))
                              (if (gx#stx-null? _tl75937679_)
                                  ((lambda (_L7746_ _L7747_ _L7748_ _L7749_)
                                     (cons 'let*
                                           (cons (cons (cons _L7749_
                                                             (cons _L7748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g77847787_ _g77857789_)
                           (cons _g77847787_ _g77857789_))
                         '()
                         _L7747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77917794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77927796_)
                     (cons _g77917794_ _g77927796_))
                   '()
                   _L7746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body76177743_
                                   _bind76087719_
                                   _hd75897669_
                                   _hd75867661_)
                                  (_g74867629_ _g74887632_)))))))
              (_loop76127727_ _target76097722_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74867629_
                                                     _g74887632_)))))
                                          (_g74867629_ _g74887632_))
                                      (_g74867629_ _g74887632_)))))))
                  (_loop76037703_ _target76007698_ '()))
                (_g74867629_ _g74887632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g74867629_ _g74887632_))
                                          (_g74867629_ _g74887632_))))
                                  (_g74867629_ _g74887632_))
                              (_g74867629_ _g74887632_))
                          (_g74867629_ _g74887632_))))
                  (_g74867629_ _g74887632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74867629_ _g74887632_))
                                              (_g74867629_ _g74887632_))
                                          (_g74867629_ _g74887632_))))
                                  (_g74867629_ _g74887632_))))
                          (_g74867629_ _g74887632_))))
                  (_g74867629_ _g74887632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74867629_ _g74887632_))
                                              (_g74867629_ _g74887632_))
                                          (_g74867629_ _g74887632_))))
                                  (_g74867629_ _g74887632_))))
                           (_g74847964_
                            (lambda (_g74887802_)
                              (if (gx#stx-pair? _g74887802_)
                                  (let ((_e75307804_ (gx#stx-e _g74887802_)))
                                    (let ((_hd75317807_ (##car _e75307804_))
                                          (_tl75327809_ (##cdr _e75307804_)))
                                      (if (gx#identifier? _hd75317807_)
                                          (if (gx#stx-eq? 'let _hd75317807_)
                                              (if (gx#stx-pair? _tl75327809_)
                                                  (let ((_e75337812_
                                                         (gx#stx-e
                                                          _tl75327809_)))
                                                    (let ((_hd75347815_
                                                           (##car _e75337812_))
                                                          (_tl75357817_
                                                           (##cdr _e75337812_)))
                                                      (if (gx#stx-pair?
                                                           _hd75347815_)
                                                          (let ((_e75367820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75347815_)))
                    (let ((_hd75377823_ (##car _e75367820_))
                          (_tl75387825_ (##cdr _e75367820_)))
                      (if (gx#stx-pair? _hd75377823_)
                          (let ((_e75397828_ (gx#stx-e _hd75377823_)))
                            (let ((_hd75407831_ (##car _e75397828_))
                                  (_tl75417833_ (##cdr _e75397828_)))
                              (if (gx#stx-pair? _tl75417833_)
                                  (let ((_e75427836_ (gx#stx-e _tl75417833_)))
                                    (let ((_hd75437839_ (##car _e75427836_))
                                          (_tl75447841_ (##cdr _e75427836_)))
                                      (if (gx#stx-null? _tl75447841_)
                                          (if (gx#stx-null? _tl75387825_)
                                              (if (gx#stx-pair? _tl75357817_)
                                                  (let ((_e75457844_
                                                         (gx#stx-e
                                                          _tl75357817_)))
                                                    (let ((_hd75467847_
                                                           (##car _e75457844_))
                                                          (_tl75477849_
                                                           (##cdr _e75457844_)))
                                                      (if (gx#stx-pair?
                                                           _hd75467847_)
                                                          (let ((_e75487852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75467847_)))
                    (let ((_hd75497855_ (##car _e75487852_))
                          (_tl75507857_ (##cdr _e75487852_)))
                      (if (gx#identifier? _hd75497855_)
                          (if (gx#stx-eq? 'let _hd75497855_)
                              (if (gx#stx-pair? _tl75507857_)
                                  (let ((_e75517860_ (gx#stx-e _tl75507857_)))
                                    (let ((_hd75527863_ (##car _e75517860_))
                                          (_tl75537865_ (##cdr _e75517860_)))
                                      (if (gx#stx-pair? _hd75527863_)
                                          (let ((_e75547868_
                                                 (gx#stx-e _hd75527863_)))
                                            (let ((_hd75557871_
                                                   (##car _e75547868_))
                                                  (_tl75567873_
                                                   (##cdr _e75547868_)))
                                              (if (gx#stx-pair? _hd75557871_)
                                                  (let ((_e75577876_
                                                         (gx#stx-e
                                                          _hd75557871_)))
                                                    (let ((_hd75587879_
                                                           (##car _e75577876_))
                                                          (_tl75597881_
                                                           (##cdr _e75577876_)))
                                                      (if (gx#stx-pair?
                                                           _tl75597881_)
                                                          (let ((_e75607884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl75597881_)))
                    (let ((_hd75617887_ (##car _e75607884_))
                          (_tl75627889_ (##cdr _e75607884_)))
                      (if (gx#stx-null? _tl75627889_)
                          (if (gx#stx-null? _tl75567873_)
                              (if (gx#stx-pair/null? _tl75537865_)
                                  (if (fx>= (gx#stx-length _tl75537865_) '0)
                                      (let ((_g11193_
                                             (gx#syntax-split-splice
                                              _tl75537865_
                                              '0)))
                                        (begin
                                          (let ((_g11194_
                                                 (values-count _g11193_)))
                                            (if (not (fx= _g11194_ 2))
                                                (error "Context expects 2 values"
                                                       _g11194_)))
                                          (let ((_target75637892_
                                                 (values-ref _g11193_ 0))
                                                (_tl75657894_
                                                 (values-ref _g11193_ 1)))
                                            (if (gx#stx-null? _tl75657894_)
                                                (letrec ((_loop75667897_
                                                          (lambda (_hd75647900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body75707902_)
                    (if (gx#stx-pair? _hd75647900_)
                        (let ((_e75677905_ (gx#stx-e _hd75647900_)))
                          (let ((_lp-hd75687908_ (##car _e75677905_))
                                (_lp-tl75697910_ (##cdr _e75677905_)))
                            (_loop75667897_
                             _lp-tl75697910_
                             (cons _lp-hd75687908_ _body75707902_))))
                        (let ((_body75717913_ (reverse _body75707902_)))
                          (if (gx#stx-null? _tl75477849_)
                              ((lambda (_L7916_
                                        _L7917_
                                        _L7918_
                                        _L7919_
                                        _L7920_)
                                 (cons 'let*
                                       (cons (cons (cons _L7920_
                                                         (cons _L7919_ '()))
                                                   (cons (cons _L7918_
                                                               (cons _L7917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g79567959_
                                                                _g79577961_)
                                                         (cons _g79567959_
                                                               _g79577961_))
                                                       '()
                                                       _L7916_)))))
                               _body75717913_
                               _hd75617887_
                               _hd75587879_
                               _hd75437839_
                               _hd75407831_)
                              (_g74857799_ _g74887802_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop75667897_
                                                   _target75637892_
                                                   '()))
                                                (_g74857799_ _g74887802_)))))
                                      (_g74857799_ _g74887802_))
                                  (_g74857799_ _g74887802_))
                              (_g74857799_ _g74887802_))
                          (_g74857799_ _g74887802_))))
                  (_g74857799_ _g74887802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74857799_ _g74887802_))))
                                          (_g74857799_ _g74887802_))))
                                  (_g74857799_ _g74887802_))
                              (_g74857799_ _g74887802_))
                          (_g74857799_ _g74887802_))))
                  (_g74857799_ _g74887802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74857799_ _g74887802_))
                                              (_g74857799_ _g74887802_))
                                          (_g74857799_ _g74887802_))))
                                  (_g74857799_ _g74887802_))))
                          (_g74857799_ _g74887802_))))
                  (_g74857799_ _g74887802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74857799_ _g74887802_))
                                              (_g74857799_ _g74887802_))
                                          (_g74857799_ _g74887802_))))
                                  (_g74857799_ _g74887802_))))
                           (_g74838095_
                            (lambda (_g74887967_)
                              (if (gx#stx-pair? _g74887967_)
                                  (let ((_e74927969_ (gx#stx-e _g74887967_)))
                                    (let ((_hd74937972_ (##car _e74927969_))
                                          (_tl74947974_ (##cdr _e74927969_)))
                                      (if (gx#identifier? _hd74937972_)
                                          (if (gx#stx-eq? 'let _hd74937972_)
                                              (if (gx#stx-pair? _tl74947974_)
                                                  (let ((_e74957977_
                                                         (gx#stx-e
                                                          _tl74947974_)))
                                                    (let ((_hd74967980_
                                                           (##car _e74957977_))
                                                          (_tl74977982_
                                                           (##cdr _e74957977_)))
                                                      (if (gx#stx-pair?
                                                           _hd74967980_)
                                                          (let ((_e74987985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd74967980_)))
                    (let ((_hd74997988_ (##car _e74987985_))
                          (_tl75007990_ (##cdr _e74987985_)))
                      (if (gx#stx-pair? _hd74997988_)
                          (let ((_e75017993_ (gx#stx-e _hd74997988_)))
                            (let ((_hd75027996_ (##car _e75017993_))
                                  (_tl75037998_ (##cdr _e75017993_)))
                              (if (gx#stx-pair? _tl75037998_)
                                  (let ((_e75048001_ (gx#stx-e _tl75037998_)))
                                    (let ((_hd75058004_ (##car _e75048001_))
                                          (_tl75068006_ (##cdr _e75048001_)))
                                      (if (gx#stx-null? _tl75068006_)
                                          (if (gx#stx-null? _tl75007990_)
                                              (if (gx#stx-pair? _tl74977982_)
                                                  (let ((_e75078009_
                                                         (gx#stx-e
                                                          _tl74977982_)))
                                                    (let ((_hd75088012_
                                                           (##car _e75078009_))
                                                          (_tl75098014_
                                                           (##cdr _e75078009_)))
                                                      (if (gx#stx-pair?
                                                           _hd75088012_)
                                                          (let ((_e75108017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75088012_)))
                    (let ((_hd75118020_ (##car _e75108017_))
                          (_tl75128022_ (##cdr _e75108017_)))
                      (if (gx#identifier? _hd75118020_)
                          (if (gx#stx-eq? 'let _hd75118020_)
                              (if (gx#stx-pair? _tl75128022_)
                                  (let ((_e75138025_ (gx#stx-e _tl75128022_)))
                                    (let ((_hd75148028_ (##car _e75138025_))
                                          (_tl75158030_ (##cdr _e75138025_)))
                                      (if (gx#stx-null? _hd75148028_)
                                          (if (gx#stx-pair/null? _tl75158030_)
                                              (if (fx>= (gx#stx-length
                                                         _tl75158030_)
                                                        '0)
                                                  (let ((_g11195_
                                                         (gx#syntax-split-splice
                                                          _tl75158030_
                                                          '0)))
                                                    (begin
                                                      (let ((_g11196_
                                                             (values-count
                                                              _g11195_)))
                                                        (if (not (fx= _g11196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g11196_)))
              (let ((_target75168033_ (values-ref _g11195_ 0))
                    (_tl75188035_ (values-ref _g11195_ 1)))
                (if (gx#stx-null? _tl75188035_)
                    (letrec ((_loop75198038_
                              (lambda (_hd75178041_ _body75238043_)
                                (if (gx#stx-pair? _hd75178041_)
                                    (let ((_e75208046_
                                           (gx#stx-e _hd75178041_)))
                                      (let ((_lp-hd75218049_
                                             (##car _e75208046_))
                                            (_lp-tl75228051_
                                             (##cdr _e75208046_)))
                                        (_loop75198038_
                                         _lp-tl75228051_
                                         (cons _lp-hd75218049_
                                               _body75238043_))))
                                    (let ((_body75248054_
                                           (reverse _body75238043_)))
                                      (if (gx#stx-null? _tl75098014_)
                                          ((lambda (_L8057_ _L8058_ _L8059_)
                                             (cons 'let
                                                   (cons (cons (cons _L8059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8058_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g80878090_ _g80888092_)
                             (cons _g80878090_ _g80888092_))
                           '()
                           _L8057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body75248054_
                                           _hd75058004_
                                           _hd75027996_)
                                          (_g74847964_ _g74887967_)))))))
                      (_loop75198038_ _target75168033_ '()))
                    (_g74847964_ _g74887967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74847964_ _g74887967_))
                                              (_g74847964_ _g74887967_))
                                          (_g74847964_ _g74887967_))))
                                  (_g74847964_ _g74887967_))
                              (_g74847964_ _g74887967_))
                          (_g74847964_ _g74887967_))))
                  (_g74847964_ _g74887967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74847964_ _g74887967_))
                                              (_g74847964_ _g74887967_))
                                          (_g74847964_ _g74887967_))))
                                  (_g74847964_ _g74887967_))))
                          (_g74847964_ _g74887967_))))
                  (_g74847964_ _g74887967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74847964_ _g74887967_))
                                              (_g74847964_ _g74887967_))
                                          (_g74847964_ _g74887967_))))
                                  (_g74847964_ _g74887967_)))))
                      (_g74838095_ _code7482_))))
                 (_generate-values7181_
                  (lambda (_hd7295_ _body7296_)
                    (let _lp7298_ ((_rest7300_ _hd7295_)
                                   (_bind7301_ '())
                                   (_check7302_ '())
                                   (_post7303_ '()))
                      (let* ((_g73067317_
                              (lambda (_g73077314_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g73077314_)))
                             (_g73057331_
                              (lambda (_g73077320_)
                                ((lambda ()
                                   (let* ((_body7324_
                                           (if _compiled-body?7177_
                                               _body7296_
                                               (gxc#compile-e _body7296_)))
                                          (_body7326_
                                           (_generate-values-post7182_
                                            _post7303_
                                            _body7324_))
                                          (_body7328_
                                           (_generate-values-check7183_
                                            _check7302_
                                            _body7326_)))
                                     (cons 'let
                                           (cons (reverse _bind7301_)
                                                 (cons _body7328_ '()))))))))
                             (_g73047479_
                              (lambda (_g73077334_)
                                (if (gx#stx-pair? _g73077334_)
                                    (let ((_e73107336_ (gx#stx-e _g73077334_)))
                                      (let ((_hd73117339_ (##car _e73107336_))
                                            (_tl73127341_ (##cdr _e73107336_)))
                                        ((lambda (_L7344_ _L7345_)
                                           (let* ((_g73607385_
                                                   (lambda (_g73617382_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g73617382_)))
                                                  (_g73597429_
                                                   (lambda (_g73617388_)
                                                     (if (gx#stx-pair?
                                                          _g73617388_)
                                                         (let ((_e73757390_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g73617388_)))
                   (let ((_hd73767393_ (##car _e73757390_))
                         (_tl73777395_ (##cdr _e73757390_)))
                     (if (gx#stx-pair? _tl73777395_)
                         (let ((_e73787398_ (gx#stx-e _tl73777395_)))
                           (let ((_hd73797401_ (##car _e73787398_))
                                 (_tl73807403_ (##cdr _e73787398_)))
                             (if (gx#stx-null? _tl73807403_)
                                 ((lambda (_L7406_ _L7407_)
                                    (let* ((_vals7420_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7422_ (gxc#compile-e _L7406_))
                                           (_check-values7424_
                                            (gxc#generate-runtime-check-values
                                             _vals7420_
                                             _L7407_))
                                           (_refs7426_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7420_
                                             _L7407_)))
                                      (_lp7298_
                                       _L7344_
                                       (cons (cons _vals7420_
                                                   (cons _expr7422_ '()))
                                             _bind7301_)
                                       (cons _check-values7424_ _check7302_)
                                       (cons _refs7426_ _post7303_))))
                                  _hd73797401_
                                  _hd73767393_)
                                 (_g73607385_ _g73617388_))))
                         (_g73607385_ _g73617388_))))
                 (_g73607385_ _g73617388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73587476_
                                                   (lambda (_g73617432_)
                                                     (if (gx#stx-pair?
                                                          _g73617432_)
                                                         (let ((_e73647434_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g73617432_)))
                   (let ((_hd73657437_ (##car _e73647434_))
                         (_tl73667439_ (##cdr _e73647434_)))
                     (if (gx#stx-pair? _hd73657437_)
                         (let ((_e73677442_ (gx#stx-e _hd73657437_)))
                           (let ((_hd73687445_ (##car _e73677442_))
                                 (_tl73697447_ (##cdr _e73677442_)))
                             (if (gx#stx-null? _tl73697447_)
                                 (if (gx#stx-pair? _tl73667439_)
                                     (let ((_e73707450_
                                            (gx#stx-e _tl73667439_)))
                                       (let ((_hd73717453_ (##car _e73707450_))
                                             (_tl73727455_
                                              (##cdr _e73707450_)))
                                         (if (gx#stx-null? _tl73727455_)
                                             ((lambda (_L7458_ _L7459_)
                                                (let ((_eid7473_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7459_))
                                                      (_expr7474_
                                                       (gxc#compile-e
                                                        _L7458_)))
                                                  (_lp7298_
                                                   _L7344_
                                                   (cons (cons _eid7473_
                                                               (cons _expr7474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7301_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7302_
                                                   _post7303_)))
                                              _hd73717453_
                                              _hd73687445_)
                                             (_g73597429_ _g73617432_))))
                                     (_g73597429_ _g73617432_))
                                 (_g73597429_ _g73617432_))))
                         (_g73597429_ _g73617432_))))
                 (_g73597429_ _g73617432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g73587476_ _L7345_)))
                                         _tl73127341_
                                         _hd73117339_)))
                                    (_g73057331_ _g73077334_)))))
                        (_g73047479_ _rest7300_)))))
                 (_generate-values-post7182_
                  (lambda (_post7254_ _body7255_)
                    (let _lp7257_ ((_rest7259_ _post7254_)
                                   (_body7260_ _body7255_))
                      (let* ((_rest72617269_ _rest7259_)
                             (_E72647273_
                              (lambda ()
                                (error '"No clause matching" _rest72617269_)))
                             (_else72637277_ (lambda () _body7260_))
                             (_K72657283_
                              (lambda (_rest7280_ _bind7281_)
                                (_lp7257_
                                 _rest7280_
                                 (cons 'let
                                       (cons _bind7281_
                                             (cons _body7260_ '())))))))
                        (if (##pair? _rest72617269_)
                            (let ((_hd72667286_ (##car _rest72617269_))
                                  (_tl72677288_ (##cdr _rest72617269_)))
                              (let* ((_bind7291_ _hd72667286_)
                                     (_rest7293_ _tl72677288_))
                                (_K72657283_ _rest7293_ _bind7291_)))
                            (_else72637277_))))))
                 (_generate-values-check7183_
                  (lambda (_check7251_ _body7252_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7252_ '())
                                  (reverse _check7251_))))))
          (let* ((_g71857202_
                  (lambda (_g71867199_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g71867199_)))
                 (_g71847248_
                  (lambda (_g71867205_)
                    (if (gx#stx-pair? _g71867205_)
                        (let ((_e71897207_ (gx#stx-e _g71867205_)))
                          (let ((_hd71907210_ (##car _e71897207_))
                                (_tl71917212_ (##cdr _e71897207_)))
                            (if (gx#stx-pair? _tl71917212_)
                                (let ((_e71927215_ (gx#stx-e _tl71917212_)))
                                  (let ((_hd71937218_ (##car _e71927215_))
                                        (_tl71947220_ (##cdr _e71927215_)))
                                    (if (gx#stx-pair? _tl71947220_)
                                        (let ((_e71957223_
                                               (gx#stx-e _tl71947220_)))
                                          (let ((_hd71967226_
                                                 (##car _e71957223_))
                                                (_tl71977228_
                                                 (##cdr _e71957223_)))
                                            (if (gx#stx-null? _tl71977228_)
                                                ((lambda (_L7231_ _L7232_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7232_)
                                                       (_generate-simple7179_
                                                        _L7232_
                                                        _L7231_)
                                                       (_generate-values7181_
                                                        _L7232_
                                                        _L7231_)))
                                                 _hd71967226_
                                                 _hd71937218_)
                                                (_g71857202_ _g71867205_))))
                                        (_g71857202_ _g71867205_))))
                                (_g71857202_ _g71867205_))))
                        (_g71857202_ _g71867205_)))))
            (_g71847248_ _stx7176_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8104_)
          (let ((_compiled-body?8106_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7174
             _stx8104_
             _compiled-body?8106_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g11198_
          (let ((_g11197_ (length _g11198_)))
            (cond ((fx= _g11197_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g11198_))
                  ((fx= _g11197_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7174
                          _g11198_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g11198_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7075_ _hd7076_)
      (let _lp7078_ ((_rest7080_ _hd7076_) (_k7081_ '0) (_r7082_ '()))
        (let* ((_g70877103_
                (lambda (_g70887100_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70887100_)))
               (_g70867110_
                (lambda (_g70887106_) ((lambda () (reverse _r7082_)))))
               (_g70857126_
                (lambda (_g70887113_)
                  ((lambda (_L7115_)
                     (if (gx#identifier? _L7115_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7115_)
                                             (cons (cons 'values->list
                                                         (cons _vals7075_
                                                               (cons _k7081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7082_)
                         (_g70867110_ _g70887113_)))
                   _g70887113_)))
               (_g70847150_
                (lambda (_g70887129_)
                  (if (gx#stx-pair? _g70887129_)
                      (let ((_e70957131_ (gx#stx-e _g70887129_)))
                        (let ((_hd70967134_ (##car _e70957131_))
                              (_tl70977136_ (##cdr _e70957131_)))
                          ((lambda (_L7139_ _L7140_)
                             (_lp7078_
                              _L7139_
                              (fx+ _k7081_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7140_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7075_
                                                            (cons _k7081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7082_)))
                           _tl70977136_
                           _hd70967134_)))
                      (_g70857126_ _g70887129_))))
               (_g70837172_
                (lambda (_g70887153_)
                  (if (gx#stx-pair? _g70887153_)
                      (let ((_e70907155_ (gx#stx-e _g70887153_)))
                        (let ((_hd70917158_ (##car _e70907155_))
                              (_tl70927160_ (##cdr _e70907155_)))
                          (if (gx#stx-datum? _hd70917158_)
                              (if (equal? (gx#stx-e _hd70917158_) '#f)
                                  ((lambda (_L7163_)
                                     (_lp7078_
                                      _L7163_
                                      (fx+ _k7081_ '1)
                                      _r7082_))
                                   _tl70927160_)
                                  (_g70847150_ _g70887153_))
                              (_g70847150_ _g70887153_))))
                      (_g70847150_ _g70887153_)))))
          (_g70837172_ _rest7080_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6753
      (lambda (_stx6755_ _compiled-body?6756_)
        (letrec ((_generate-simple6758_
                  (lambda (_hd7062_ _body7063_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7062_
                     _body7063_
                     _compiled-body?6756_)))
                 (_generate-values6759_
                  (lambda (_hd6839_ _body6840_)
                    (let _lp6842_ ((_rest6844_ _hd6839_)
                                   (_bind6845_ '())
                                   (_check6846_ '())
                                   (_post6847_ '()))
                      (let* ((_g68506861_
                              (lambda (_g68516858_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g68516858_)))
                             (_g68496875_
                              (lambda (_g68516864_)
                                ((lambda ()
                                   (let* ((_body6868_
                                           (if _compiled-body?6756_
                                               _body6840_
                                               (gxc#compile-e _body6840_)))
                                          (_body6870_
                                           (_generate-values-post6761_
                                            _post6847_
                                            _body6868_))
                                          (_body6872_
                                           (_generate-values-check6760_
                                            _check6846_
                                            _body6870_)))
                                     (cons 'letrec
                                           (cons (reverse _bind6845_)
                                                 (cons _body6872_ '()))))))))
                             (_g68487059_
                              (lambda (_g68516878_)
                                (if (gx#stx-pair? _g68516878_)
                                    (let ((_e68546880_ (gx#stx-e _g68516878_)))
                                      (let ((_hd68556883_ (##car _e68546880_))
                                            (_tl68566885_ (##cdr _e68546880_)))
                                        ((lambda (_L6888_ _L6889_)
                                           (let* ((_g69046929_
                                                   (lambda (_g69056926_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g69056926_)))
                                                  (_g69037009_
                                                   (lambda (_g69056932_)
                                                     (if (gx#stx-pair?
                                                          _g69056932_)
                                                         (let ((_e69196934_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69056932_)))
                   (let ((_hd69206937_ (##car _e69196934_))
                         (_tl69216939_ (##cdr _e69196934_)))
                     (if (gx#stx-pair? _tl69216939_)
                         (let ((_e69226942_ (gx#stx-e _tl69216939_)))
                           (let ((_hd69236945_ (##car _e69226942_))
                                 (_tl69246947_ (##cdr _e69226942_)))
                             (if (gx#stx-null? _tl69246947_)
                                 ((lambda (_L6950_ _L6951_)
                                    (let* ((_vals6964_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr6966_ (gxc#compile-e _L6950_))
                                           (_check-values6968_
                                            (gxc#generate-runtime-check-values
                                             _vals6964_
                                             _L6951_))
                                           (_refs6970_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals6964_
                                             _L6951_)))
                                      (_lp6842_
                                       _L6888_
                                       (foldl1 cons
                                               (cons (cons _vals6964_
                                                           (cons _expr6966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6845_)
                                               (map (lambda (_e69726974_)
                                                      (let* ((_g69766985_
                                                              _e69726974_)
                                                             (_E69786989_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g69766985_)))
                     (_K69796994_
                      (lambda (_eid6992_)
                        (cons _eid6992_ (cons '#!void '())))))
                (if (##pair? _g69766985_)
                    (let ((_hd69806997_ (##car _g69766985_))
                          (_tl69816999_ (##cdr _g69766985_)))
                      (let ((_eid7002_ _hd69806997_))
                        (if (##pair? _tl69816999_)
                            (let ((_hd69827004_ (##car _tl69816999_))
                                  (_tl69837006_ (##cdr _tl69816999_)))
                              (if (##null? _tl69837006_)
                                  (_K69796994_ _eid7002_)
                                  (_E69786989_)))
                            (_E69786989_))))
                    (_E69786989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs6970_))
                                       (cons _check-values6968_ _check6846_)
                                       (foldl1 cons _refs6970_ _post6847_))))
                                  _hd69236945_
                                  _hd69206937_)
                                 (_g69046929_ _g69056932_))))
                         (_g69046929_ _g69056932_))))
                 (_g69046929_ _g69056932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69027056_
                                                   (lambda (_g69057012_)
                                                     (if (gx#stx-pair?
                                                          _g69057012_)
                                                         (let ((_e69087014_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69057012_)))
                   (let ((_hd69097017_ (##car _e69087014_))
                         (_tl69107019_ (##cdr _e69087014_)))
                     (if (gx#stx-pair? _hd69097017_)
                         (let ((_e69117022_ (gx#stx-e _hd69097017_)))
                           (let ((_hd69127025_ (##car _e69117022_))
                                 (_tl69137027_ (##cdr _e69117022_)))
                             (if (gx#stx-null? _tl69137027_)
                                 (if (gx#stx-pair? _tl69107019_)
                                     (let ((_e69147030_
                                            (gx#stx-e _tl69107019_)))
                                       (let ((_hd69157033_ (##car _e69147030_))
                                             (_tl69167035_
                                              (##cdr _e69147030_)))
                                         (if (gx#stx-null? _tl69167035_)
                                             ((lambda (_L7038_ _L7039_)
                                                (let ((_eid7053_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7039_))
                                                      (_expr7054_
                                                       (gxc#compile-e
                                                        _L7038_)))
                                                  (_lp6842_
                                                   _L6888_
                                                   (cons (cons _eid7053_
                                                               (cons _expr7054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind6845_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check6846_
                                                   _post6847_)))
                                              _hd69157033_
                                              _hd69127025_)
                                             (_g69037009_ _g69057012_))))
                                     (_g69037009_ _g69057012_))
                                 (_g69037009_ _g69057012_))))
                         (_g69037009_ _g69057012_))))
                 (_g69037009_ _g69057012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g69027056_ _L6889_)))
                                         _tl68566885_
                                         _hd68556883_)))
                                    (_g68496875_ _g68516878_)))))
                        (_g68487059_ _rest6844_)))))
                 (_generate-values-check6760_
                  (lambda (_check6836_ _body6837_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6837_ '())
                                  (reverse _check6836_)))))
                 (_generate-values-post6761_
                  (lambda (_post6829_ _body6830_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6830_ '())
                                  (map (lambda (_g68316833_)
                                         (cons 'set! _g68316833_))
                                       (reverse _post6829_)))))))
          (let* ((_g67636780_
                  (lambda (_g67646777_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g67646777_)))
                 (_g67626826_
                  (lambda (_g67646783_)
                    (if (gx#stx-pair? _g67646783_)
                        (let ((_e67676785_ (gx#stx-e _g67646783_)))
                          (let ((_hd67686788_ (##car _e67676785_))
                                (_tl67696790_ (##cdr _e67676785_)))
                            (if (gx#stx-pair? _tl67696790_)
                                (let ((_e67706793_ (gx#stx-e _tl67696790_)))
                                  (let ((_hd67716796_ (##car _e67706793_))
                                        (_tl67726798_ (##cdr _e67706793_)))
                                    (if (gx#stx-pair? _tl67726798_)
                                        (let ((_e67736801_
                                               (gx#stx-e _tl67726798_)))
                                          (let ((_hd67746804_
                                                 (##car _e67736801_))
                                                (_tl67756806_
                                                 (##cdr _e67736801_)))
                                            (if (gx#stx-null? _tl67756806_)
                                                ((lambda (_L6809_ _L6810_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L6810_)
                                                       (_generate-simple6758_
                                                        _L6810_
                                                        _L6809_)
                                                       (_generate-values6759_
                                                        _L6810_
                                                        _L6809_)))
                                                 _hd67746804_
                                                 _hd67716796_)
                                                (_g67636780_ _g67646783_))))
                                        (_g67636780_ _g67646783_))))
                                (_g67636780_ _g67646783_))))
                        (_g67636780_ _g67646783_)))))
            (_g67626826_ _stx6755_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7068_)
          (let ((_compiled-body?7070_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6753
             _stx7068_
             _compiled-body?7070_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g11200_
          (let ((_g11199_ (length _g11200_)))
            (cond ((fx= _g11199_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g11200_))
                  ((fx= _g11199_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6753
                          _g11200_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g11200_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx6337_)
      (letrec ((_generate-values6339_
                (lambda (_hd6582_ _body6583_)
                  (let _lp6585_ ((_rest6587_ _hd6582_) (_bind6588_ '()))
                    (let* ((_rest65896597_ _rest6587_)
                           (_E65926601_
                            (lambda ()
                              (error '"No clause matching" _rest65896597_)))
                           (_else65916608_
                            (lambda ()
                              (let ((_bind6605_ (reverse _bind6588_))
                                    (_body6606_ (gxc#compile-e _body6583_)))
                                (cons 'letrec*
                                      (cons _bind6605_
                                            (cons _body6606_ '()))))))
                           (_K65936742_
                            (lambda (_rest6611_ _hd-bind6612_)
                              (let* ((_g66156640_
                                      (lambda (_g66166637_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g66166637_)))
                                     (_g66146692_
                                      (lambda (_g66166643_)
                                        (if (gx#stx-pair? _g66166643_)
                                            (let ((_e66306645_
                                                   (gx#stx-e _g66166643_)))
                                              (let ((_hd66316648_
                                                     (##car _e66306645_))
                                                    (_tl66326650_
                                                     (##cdr _e66306645_)))
                                                (if (gx#stx-pair? _tl66326650_)
                                                    (let ((_e66336653_
                                                           (gx#stx-e
                                                            _tl66326650_)))
                                                      (let ((_hd66346656_
                                                             (##car _e66336653_))
                                                            (_tl66356658_
                                                             (##cdr _e66336653_)))
                                                        (if (gx#stx-null?
                                                             _tl66356658_)
                                                            ((lambda (_L6661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6662_)
                       (let* ((_vals6681_ (gxc#generate-runtime-temporary__0))
                              (_tmp6683_ (gxc#generate-runtime-temporary__0))
                              (_expr6685_ (gxc#compile-e _L6661_))
                              (_check-values6687_
                               (gxc#generate-runtime-check-values
                                _tmp6683_
                                _L6662_))
                              (_refs6689_
                               (gxc#generate-runtime-let-values-bind
                                _vals6681_
                                _L6662_)))
                         (_lp6585_
                          _rest6611_
                          (foldl1 cons
                                  (cons (cons _vals6681_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp6683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr6685_ '()))
                              '())
                        (cons _check-values6687_ (cons _tmp6683_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind6588_)
                                  _refs6689_))))
                     _hd66346656_
                     _hd66316648_)
                    (_g66156640_ _g66166643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66156640_
                                                     _g66166643_))))
                                            (_g66156640_ _g66166643_))))
                                     (_g66136739_
                                      (lambda (_g66166695_)
                                        (if (gx#stx-pair? _g66166695_)
                                            (let ((_e66196697_
                                                   (gx#stx-e _g66166695_)))
                                              (let ((_hd66206700_
                                                     (##car _e66196697_))
                                                    (_tl66216702_
                                                     (##cdr _e66196697_)))
                                                (if (gx#stx-pair? _hd66206700_)
                                                    (let ((_e66226705_
                                                           (gx#stx-e
                                                            _hd66206700_)))
                                                      (let ((_hd66236708_
                                                             (##car _e66226705_))
                                                            (_tl66246710_
                                                             (##cdr _e66226705_)))
                                                        (if (gx#stx-null?
                                                             _tl66246710_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66216702_)
                        (let ((_e66256713_ (gx#stx-e _tl66216702_)))
                          (let ((_hd66266716_ (##car _e66256713_))
                                (_tl66276718_ (##cdr _e66256713_)))
                            (if (gx#stx-null? _tl66276718_)
                                ((lambda (_L6721_ _L6722_)
                                   (let ((_eid6736_
                                          (gxc#generate-runtime-binding-id*
                                           _L6722_))
                                         (_expr6737_ (gxc#compile-e _L6721_)))
                                     (_lp6585_
                                      _rest6611_
                                      (cons (cons _eid6736_
                                                  (cons _expr6737_ '()))
                                            _bind6588_))))
                                 _hd66266716_
                                 _hd66236708_)
                                (_g66146692_ _g66166695_))))
                        (_g66146692_ _g66166695_))
                    (_g66146692_ _g66166695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66146692_
                                                     _g66166695_))))
                                            (_g66146692_ _g66166695_)))))
                                (_g66136739_ _hd-bind6612_)))))
                      (if (##pair? _rest65896597_)
                          (let ((_hd65946745_ (##car _rest65896597_))
                                (_tl65956747_ (##cdr _rest65896597_)))
                            (let* ((_hd-bind6750_ _hd65946745_)
                                   (_rest6752_ _tl65956747_))
                              (_K65936742_ _rest6752_ _hd-bind6750_)))
                          (_else65916608_))))))
               (_generate-letrec?6340_
                (lambda (_hd6472_)
                  (let _lp6474_ ((_rest6476_ _hd6472_))
                    (let* ((_rest64776485_ _rest6476_)
                           (_E64806489_
                            (lambda ()
                              (error '"No clause matching" _rest64776485_)))
                           (_else64796493_ (lambda () '#t))
                           (_K64816570_
                            (lambda (_rest6496_ _hd-bind6497_)
                              (let* ((_g64996516_
                                      (lambda (_g65006513_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g65006513_)))
                                     (_g64986567_
                                      (lambda (_g65006519_)
                                        (if (gx#stx-pair? _g65006519_)
                                            (let ((_e65036521_
                                                   (gx#stx-e _g65006519_)))
                                              (let ((_hd65046524_
                                                     (##car _e65036521_))
                                                    (_tl65056526_
                                                     (##cdr _e65036521_)))
                                                (if (gx#stx-pair? _hd65046524_)
                                                    (let ((_e65066529_
                                                           (gx#stx-e
                                                            _hd65046524_)))
                                                      (let ((_hd65076532_
                                                             (##car _e65066529_))
                                                            (_tl65086534_
                                                             (##cdr _e65066529_)))
                                                        (if (gx#stx-null?
                                                             _tl65086534_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65056526_)
                        (let ((_e65096537_ (gx#stx-e _tl65056526_)))
                          (let ((_hd65106540_ (##car _e65096537_))
                                (_tl65116542_ (##cdr _e65096537_)))
                            (if (gx#stx-null? _tl65116542_)
                                ((lambda (_L6545_ _L6546_)
                                   (if (_is-lambda-expr?6341_ _L6545_)
                                       (_lp6474_ _rest6496_)
                                       '#f))
                                 _hd65106540_
                                 _hd65076532_)
                                (_g64996516_ _g65006519_))))
                        (_g64996516_ _g65006519_))
                    (_g64996516_ _g65006519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64996516_
                                                     _g65006519_))))
                                            (_g64996516_ _g65006519_)))))
                                (_g64986567_ _hd-bind6497_)))))
                      (if (##pair? _rest64776485_)
                          (let ((_hd64826573_ (##car _rest64776485_))
                                (_tl64836575_ (##cdr _rest64776485_)))
                            (let* ((_hd-bind6578_ _hd64826573_)
                                   (_rest6580_ _tl64836575_))
                              (_K64816570_ _rest6580_ _hd-bind6578_)))
                          (_else64796493_))))))
               (_is-lambda-expr?6341_
                (lambda (_expr6409_)
                  (let* ((_g64126426_
                          (lambda (_g64136423_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g64136423_)))
                         (_g64116433_ (lambda (_g64136429_) ((lambda () '#f))))
                         (_g64106469_
                          (lambda (_g64136436_)
                            (if (gx#stx-pair? _g64136436_)
                                (let ((_e64166438_ (gx#stx-e _g64136436_)))
                                  (let ((_hd64176441_ (##car _e64166438_))
                                        (_tl64186443_ (##cdr _e64166438_)))
                                    (if (gx#identifier? _hd64176441_)
                                        (if (gx#stx-eq? '%#lambda _hd64176441_)
                                            (if (gx#stx-pair? _tl64186443_)
                                                (let ((_e64196446_
                                                       (gx#stx-e
                                                        _tl64186443_)))
                                                  (let ((_hd64206449_
                                                         (##car _e64196446_))
                                                        (_tl64216451_
                                                         (##cdr _e64196446_)))
                                                    ((lambda (_L6454_ _L6455_)
                                                       '#t)
                                                     _tl64216451_
                                                     _hd64206449_)))
                                                (_g64116433_ _g64136436_))
                                            (_g64116433_ _g64136436_))
                                        (_g64116433_ _g64136436_))))
                                (_g64116433_ _g64136436_)))))
                    (_g64106469_ _expr6409_)))))
        (let* ((_g63436360_
                (lambda (_g63446357_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63446357_)))
               (_g63426406_
                (lambda (_g63446363_)
                  (if (gx#stx-pair? _g63446363_)
                      (let ((_e63476365_ (gx#stx-e _g63446363_)))
                        (let ((_hd63486368_ (##car _e63476365_))
                              (_tl63496370_ (##cdr _e63476365_)))
                          (if (gx#stx-pair? _tl63496370_)
                              (let ((_e63506373_ (gx#stx-e _tl63496370_)))
                                (let ((_hd63516376_ (##car _e63506373_))
                                      (_tl63526378_ (##cdr _e63506373_)))
                                  (if (gx#stx-pair? _tl63526378_)
                                      (let ((_e63536381_
                                             (gx#stx-e _tl63526378_)))
                                        (let ((_hd63546384_
                                               (##car _e63536381_))
                                              (_tl63556386_
                                               (##cdr _e63536381_)))
                                          (if (gx#stx-null? _tl63556386_)
                                              ((lambda (_L6389_ _L6390_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L6390_)
                                                     (if (_generate-letrec?6340_
                                                          _L6390_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L6390_
                                                          _L6389_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L6390_
                                                          _L6389_
                                                          '#f))
                                                     (_generate-values6339_
                                                      _L6390_
                                                      _L6389_)))
                                               _hd63546384_
                                               _hd63516376_)
                                              (_g63436360_ _g63446363_))))
                                      (_g63436360_ _g63446363_))))
                              (_g63436360_ _g63446363_))))
                      (_g63436360_ _g63446363_)))))
          (_g63426406_ _stx6337_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6230_)
      (let _lp6232_ ((_rest6234_ _hd6230_))
        (let* ((_g62386259_
                (lambda (_g62396256_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g62396256_)))
               (_g62376266_ (lambda (_g62396262_) ((lambda () '#f))))
               (_g62366273_
                (lambda (_g62396269_)
                  (if (gx#stx-null? _g62396269_)
                      ((lambda () '#t))
                      (_g62376266_ _g62396269_))))
               (_g62356334_
                (lambda (_g62396276_)
                  (if (gx#stx-pair? _g62396276_)
                      (let ((_e62436278_ (gx#stx-e _g62396276_)))
                        (let ((_hd62446281_ (##car _e62436278_))
                              (_tl62456283_ (##cdr _e62436278_)))
                          (if (gx#stx-pair? _hd62446281_)
                              (let ((_e62466286_ (gx#stx-e _hd62446281_)))
                                (let ((_hd62476289_ (##car _e62466286_))
                                      (_tl62486291_ (##cdr _e62466286_)))
                                  (if (gx#stx-pair? _hd62476289_)
                                      (let ((_e62496294_
                                             (gx#stx-e _hd62476289_)))
                                        (let ((_hd62506297_
                                               (##car _e62496294_))
                                              (_tl62516299_
                                               (##cdr _e62496294_)))
                                          (if (gx#stx-null? _tl62516299_)
                                              (if (gx#stx-pair? _tl62486291_)
                                                  (let ((_e62526302_
                                                         (gx#stx-e
                                                          _tl62486291_)))
                                                    (let ((_hd62536305_
                                                           (##car _e62526302_))
                                                          (_tl62546307_
                                                           (##cdr _e62526302_)))
                                                      (if (gx#stx-null?
                                                           _tl62546307_)
                                                          ((lambda (_L6310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6311_
                            _L6312_)
                     (_lp6232_ _L6310_))
                   _tl62456283_
                   _hd62536305_
                   _hd62506297_)
                  (_g62366273_ _g62396276_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g62366273_ _g62396276_))
                                              (_g62366273_ _g62396276_))))
                                      (_g62366273_ _g62396276_))))
                              (_g62366273_ _g62396276_))))
                      (_g62366273_ _g62396276_)))))
          (_g62356334_ _rest6234_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6154_ _hd6155_ _body6156_ _compiled-body?6157_)
      (letrec ((_generate16159_
                (lambda (_bind6161_)
                  (let* ((_g61636180_
                          (lambda (_g61646177_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g61646177_)))
                         (_g61626227_
                          (lambda (_g61646183_)
                            (if (gx#stx-pair? _g61646183_)
                                (let ((_e61676185_ (gx#stx-e _g61646183_)))
                                  (let ((_hd61686188_ (##car _e61676185_))
                                        (_tl61696190_ (##cdr _e61676185_)))
                                    (if (gx#stx-pair? _hd61686188_)
                                        (let ((_e61706193_
                                               (gx#stx-e _hd61686188_)))
                                          (let ((_hd61716196_
                                                 (##car _e61706193_))
                                                (_tl61726198_
                                                 (##cdr _e61706193_)))
                                            (if (gx#stx-null? _tl61726198_)
                                                (if (gx#stx-pair? _tl61696190_)
                                                    (let ((_e61736201_
                                                           (gx#stx-e
                                                            _tl61696190_)))
                                                      (let ((_hd61746204_
                                                             (##car _e61736201_))
                                                            (_tl61756206_
                                                             (##cdr _e61736201_)))
                                                        (if (gx#stx-null?
                                                             _tl61756206_)
                                                            ((lambda (_L6209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6210_)
                       (cons (gxc#generate-runtime-binding-id* _L6210_)
                             (cons (gxc#compile-e _L6209_) '())))
                     _hd61746204_
                     _hd61716196_)
                    (_g61636180_ _g61646183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61636180_ _g61646183_))
                                                (_g61636180_ _g61646183_))))
                                        (_g61636180_ _g61646183_))))
                                (_g61636180_ _g61646183_)))))
                    (_g61626227_ _bind6161_)))))
        (cons _form6154_
              (cons (map _generate16159_ _hd6155_)
                    (cons (if _compiled-body?6157_
                              _body6156_
                              (gxc#compile-e _body6156_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6062_)
      (letrec ((_generate16064_
                (lambda (_datum6116_)
                  (if (let ((_$e6118_ (null? _datum6116_)))
                        (if _$e6118_
                            _$e6118_
                            (let ((_$e6121_ (interned-symbol? _datum6116_)))
                              (if _$e6121_
                                  _$e6121_
                                  (let ((_$e6124_
                                         (gx#self-quoting? _datum6116_)))
                                    (if _$e6124_
                                        _$e6124_
                                        (eof-object? _datum6116_)))))))
                      _datum6116_
                      (if (uninterned-symbol? _datum6116_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10116
                           _datum6116_
                           '#t)
                          (if (pair? _datum6116_)
                              (cons (_generate16064_ (car _datum6116_))
                                    (_generate16064_ (cdr _datum6116_)))
                              (if (box? _datum6116_)
                                  (box (_generate16064_ (unbox _datum6116_)))
                                  (if (vector? _datum6116_)
                                      (vector-map _generate16064_ _datum6116_)
                                      (if (let ((_$e6127_
                                                 (s8vector? _datum6116_)))
                                            (if _$e6127_
                                                _$e6127_
                                                (let ((_$e6130_
                                                       (u8vector?
                                                        _datum6116_)))
                                                  (if _$e6130_
                                                      _$e6130_
                                                      (let ((_$e6133_
                                                             (s16vector?
                                                              _datum6116_)))
                                                        (if _$e6133_
                                                            _$e6133_
                                                            (let ((_$e6136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6116_)))
                      (if _$e6136_
                          _$e6136_
                          (let ((_$e6139_ (s32vector? _datum6116_)))
                            (if _$e6139_
                                _$e6139_
                                (let ((_$e6142_ (u32vector? _datum6116_)))
                                  (if _$e6142_
                                      _$e6142_
                                      (let ((_$e6145_
                                             (s64vector? _datum6116_)))
                                        (if _$e6145_
                                            _$e6145_
                                            (let ((_$e6148_
                                                   (u64vector? _datum6116_)))
                                              (if _$e6148_
                                                  _$e6148_
                                                  (let ((_$e6151_
                                                         (f32vector?
                                                          _datum6116_)))
                                                    (if _$e6151_
                                                        _$e6151_
                                                        (f64vector?
                                                         _datum6116_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6116_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6062_))))))))))
        (let* ((_g60666079_
                (lambda (_g60676076_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g60676076_)))
               (_g60656113_
                (lambda (_g60676082_)
                  (if (gx#stx-pair? _g60676082_)
                      (let ((_e60696084_ (gx#stx-e _g60676082_)))
                        (let ((_hd60706087_ (##car _e60696084_))
                              (_tl60716089_ (##cdr _e60696084_)))
                          (if (gx#stx-pair? _tl60716089_)
                              (let ((_e60726092_ (gx#stx-e _tl60716089_)))
                                (let ((_hd60736095_ (##car _e60726092_))
                                      (_tl60746097_ (##cdr _e60726092_)))
                                  (if (gx#stx-null? _tl60746097_)
                                      ((lambda (_L6100_)
                                         (cons 'quote
                                               (cons (_generate16064_
                                                      (gx#stx-e _L6100_))
                                                     '())))
                                       _hd60736095_)
                                      (_g60666079_ _g60676082_))))
                              (_g60666079_ _g60676082_))))
                      (_g60666079_ _g60676082_)))))
          (_g60656113_ _stx6062_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5755_)
      (let* ((_g57575771_
              (lambda (_g57585768_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57585768_)))
             (_g57566059_
              (lambda (_g57585774_)
                (if (gx#stx-pair? _g57585774_)
                    (let ((_e57615776_ (gx#stx-e _g57585774_)))
                      (let ((_hd57625779_ (##car _e57615776_))
                            (_tl57635781_ (##cdr _e57615776_)))
                        (if (gx#stx-pair? _tl57635781_)
                            (let ((_e57645784_ (gx#stx-e _tl57635781_)))
                              (let ((_hd57655787_ (##car _e57645784_))
                                    (_tl57665789_ (##cdr _e57645784_)))
                                ((lambda (_L5792_ _L5793_)
                                   (let ((_rator5806_ (gxc#compile-e _L5793_))
                                         (_rands5807_
                                          (map gxc#compile-e _L5792_)))
                                     (let* ((_g58105862_
                                             (lambda (_g58115859_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g58115859_)))
                                            (_g58095869_
                                             (lambda (_g58115865_)
                                               ((lambda ()
                                                  (cons _rator5806_
                                                        _rands5807_)))))
                                            (_g58086056_
                                             (lambda (_g58115872_)
                                               (if (gx#stx-pair? _g58115872_)
                                                   (let ((_e58165874_
                                                          (gx#stx-e
                                                           _g58115872_)))
                                                     (let ((_hd58175877_
                                                            (##car _e58165874_))
                                                           (_tl58185879_
                                                            (##cdr _e58165874_)))
                                                       (if (gx#identifier?
                                                            _hd58175877_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd58175877_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl58185879_)
                           (let ((_e58195882_ (gx#stx-e _tl58185879_)))
                             (let ((_hd58205885_ (##car _e58195882_))
                                   (_tl58215887_ (##cdr _e58195882_)))
                               (if (gx#stx-pair? _hd58205885_)
                                   (let ((_e58225890_ (gx#stx-e _hd58205885_)))
                                     (let ((_hd58235893_ (##car _e58225890_))
                                           (_tl58245895_ (##cdr _e58225890_)))
                                       (if (gx#stx-pair? _hd58235893_)
                                           (let ((_e58255898_
                                                  (gx#stx-e _hd58235893_)))
                                             (let ((_hd58265901_
                                                    (##car _e58255898_))
                                                   (_tl58275903_
                                                    (##cdr _e58255898_)))
                                               (if (gx#stx-pair? _tl58275903_)
                                                   (let ((_e58285906_
                                                          (gx#stx-e
                                                           _tl58275903_)))
                                                     (let ((_hd58295909_
                                                            (##car _e58285906_))
                                                           (_tl58305911_
                                                            (##cdr _e58285906_)))
                                                       (if (gx#stx-pair?
                                                            _hd58295909_)
                                                           (let ((_e58315914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd58295909_)))
                     (let ((_hd58325917_ (##car _e58315914_))
                           (_tl58335919_ (##cdr _e58315914_)))
                       (if (gx#identifier? _hd58325917_)
                           (if (gx#stx-eq? 'lambda _hd58325917_)
                               (if (gx#stx-pair? _tl58335919_)
                                   (let ((_e58345922_ (gx#stx-e _tl58335919_)))
                                     (let ((_hd58355925_ (##car _e58345922_))
                                           (_tl58365927_ (##cdr _e58345922_)))
                                       (if (gx#stx-pair/null? _hd58355925_)
                                           (if (fx>= (gx#stx-length
                                                      _hd58355925_)
                                                     '0)
                                               (let ((_g11201_
                                                      (gx#syntax-split-splice
                                                       _hd58355925_
                                                       '0)))
                                                 (begin
                                                   (let ((_g11202_
                                                          (values-count
                                                           _g11201_)))
                                                     (if (not (fx= _g11202_ 2))
                                                         (error "Context expects 2 values"
                                                                _g11202_)))
                                                   (let ((_target58375930_
                                                          (values-ref
                                                           _g11201_
                                                           0))
                                                         (_tl58395932_
                                                          (values-ref
                                                           _g11201_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl58395932_)
                                                         (letrec ((_loop58405935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd58385938_ _arg58445940_)
                             (if (gx#stx-pair? _hd58385938_)
                                 (let ((_e58415943_ (gx#stx-e _hd58385938_)))
                                   (let ((_lp-hd58425946_ (##car _e58415943_))
                                         (_lp-tl58435948_ (##cdr _e58415943_)))
                                     (_loop58405935_
                                      _lp-tl58435948_
                                      (cons _lp-hd58425946_ _arg58445940_))))
                                 (let ((_arg58455951_ (reverse _arg58445940_)))
                                   (if (gx#stx-pair/null? _tl58365927_)
                                       (if (fx>= (gx#stx-length _tl58365927_)
                                                 '0)
                                           (let ((_g11203_
                                                  (gx#syntax-split-splice
                                                   _tl58365927_
                                                   '0)))
                                             (begin
                                               (let ((_g11204_
                                                      (values-count _g11203_)))
                                                 (if (not (fx= _g11204_ 2))
                                                     (error "Context expects 2 values"
                                                            _g11204_)))
                                               (let ((_target58465954_
                                                      (values-ref _g11203_ 0))
                                                     (_tl58485956_
                                                      (values-ref _g11203_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl58485956_)
                                                     (letrec ((_loop58495959_
                                                               (lambda (_hd58475962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body58535964_)
                         (if (gx#stx-pair? _hd58475962_)
                             (let ((_e58505967_ (gx#stx-e _hd58475962_)))
                               (let ((_lp-hd58515970_ (##car _e58505967_))
                                     (_lp-tl58525972_ (##cdr _e58505967_)))
                                 (_loop58495959_
                                  _lp-tl58525972_
                                  (cons _lp-hd58515970_ _body58535964_))))
                             (let ((_body58545975_ (reverse _body58535964_)))
                               (if (gx#stx-null? _tl58305911_)
                                   (if (gx#stx-null? _tl58245895_)
                                       (if (gx#stx-pair? _tl58215887_)
                                           (let ((_e58555978_
                                                  (gx#stx-e _tl58215887_)))
                                             (let ((_hd58565981_
                                                    (##car _e58555978_))
                                                   (_tl58575983_
                                                    (##cdr _e58555978_)))
                                               (if (gx#stx-null? _tl58575983_)
                                                   ((lambda (_L5986_
                                                             _L5987_
                                                             _L5988_
                                                             _L5989_)
                                                      (if (eq? _L5989_ _L5986_)
                                                          (if (fx= (length _rands5807_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g60256028_ _g60266030_)
                                               (cons _g60256028_ _g60266030_))
                                             '()
                                             _L5988_))))
                      (let* ((_id6033_ _L5989_)
                             (_args6042_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g60346037_ _g60356039_)
                                          (cons _g60346037_ _g60356039_))
                                        '()
                                        _L5988_)))
                             (_body6051_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g60436046_ _g60446048_)
                                          (cons _g60436046_ _g60446048_))
                                        '()
                                        _L5987_)))
                             (_init6053_ (map list _args6042_ _rands5807_)))
                        (cons 'let
                              (cons _id6033_ (cons _init6053_ _body6051_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx5755_))
                  (_g58095869_ _g58115872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd58565981_
                                                    _body58545975_
                                                    _arg58455951_
                                                    _hd58265901_)
                                                   (_g58095869_ _g58115872_))))
                                           (_g58095869_ _g58115872_))
                                       (_g58095869_ _g58115872_))
                                   (_g58095869_ _g58115872_)))))))
               (_loop58495959_ _target58465954_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58095869_
                                                      _g58115872_)))))
                                           (_g58095869_ _g58115872_))
                                       (_g58095869_ _g58115872_)))))))
                   (_loop58405935_ _target58375930_ '()))
                 (_g58095869_ _g58115872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g58095869_ _g58115872_))
                                           (_g58095869_ _g58115872_))))
                                   (_g58095869_ _g58115872_))
                               (_g58095869_ _g58115872_))
                           (_g58095869_ _g58115872_))))
                   (_g58095869_ _g58115872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g58095869_ _g58115872_))))
                                           (_g58095869_ _g58115872_))))
                                   (_g58095869_ _g58115872_))))
                           (_g58095869_ _g58115872_))
                       (_g58095869_ _g58115872_))
                   (_g58095869_ _g58115872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g58095869_
                                                    _g58115872_)))))
                                       (_g58086056_ _rator5806_))))
                                 _tl57665789_
                                 _hd57655787_)))
                            (_g57575771_ _g57585774_))))
                    (_g57575771_ _g57585774_)))))
        (_g57566059_ _stx5755_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5717_)
      (let* ((_g57195729_
              (lambda (_g57205726_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57205726_)))
             (_g57185752_
              (lambda (_g57205732_)
                (if (gx#stx-pair? _g57205732_)
                    (let ((_e57225734_ (gx#stx-e _g57205732_)))
                      (let ((_hd57235737_ (##car _e57225734_))
                            (_tl57245739_ (##cdr _e57225734_)))
                        ((lambda (_L5742_)
                           (cons 'if (map gxc#compile-e _L5742_)))
                         _tl57245739_)))
                    (_g57195729_ _g57205732_)))))
        (_g57185752_ _stx5717_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5666_)
      (let* ((_g56685681_
              (lambda (_g56695678_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56695678_)))
             (_g56675714_
              (lambda (_g56695684_)
                (if (gx#stx-pair? _g56695684_)
                    (let ((_e56715686_ (gx#stx-e _g56695684_)))
                      (let ((_hd56725689_ (##car _e56715686_))
                            (_tl56735691_ (##cdr _e56715686_)))
                        (if (gx#stx-pair? _tl56735691_)
                            (let ((_e56745694_ (gx#stx-e _tl56735691_)))
                              (let ((_hd56755697_ (##car _e56745694_))
                                    (_tl56765699_ (##cdr _e56745694_)))
                                (if (gx#stx-null? _tl56765699_)
                                    ((lambda (_L5702_)
                                       (gxc#generate-runtime-binding-id
                                        _L5702_))
                                     _hd56755697_)
                                    (_g56685681_ _g56695684_))))
                            (_g56685681_ _g56695684_))))
                    (_g56685681_ _g56695684_)))))
        (_g56675714_ _stx5666_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5599_)
      (let* ((_g56015618_
              (lambda (_g56025615_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56025615_)))
             (_g56005663_
              (lambda (_g56025621_)
                (if (gx#stx-pair? _g56025621_)
                    (let ((_e56055623_ (gx#stx-e _g56025621_)))
                      (let ((_hd56065626_ (##car _e56055623_))
                            (_tl56075628_ (##cdr _e56055623_)))
                        (if (gx#stx-pair? _tl56075628_)
                            (let ((_e56085631_ (gx#stx-e _tl56075628_)))
                              (let ((_hd56095634_ (##car _e56085631_))
                                    (_tl56105636_ (##cdr _e56085631_)))
                                (if (gx#stx-pair? _tl56105636_)
                                    (let ((_e56115639_
                                           (gx#stx-e _tl56105636_)))
                                      (let ((_hd56125642_ (##car _e56115639_))
                                            (_tl56135644_ (##cdr _e56115639_)))
                                        (if (gx#stx-null? _tl56135644_)
                                            ((lambda (_L5647_ _L5648_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L5648_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5647_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56125642_
                                             _hd56095634_)
                                            (_g56015618_ _g56025621_))))
                                    (_g56015618_ _g56025621_))))
                            (_g56015618_ _g56025621_))))
                    (_g56015618_ _g56025621_)))))
        (_g56005663_ _stx5599_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5532_)
      (let* ((_g55345551_
              (lambda (_g55355548_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55355548_)))
             (_g55335596_
              (lambda (_g55355554_)
                (if (gx#stx-pair? _g55355554_)
                    (let ((_e55385556_ (gx#stx-e _g55355554_)))
                      (let ((_hd55395559_ (##car _e55385556_))
                            (_tl55405561_ (##cdr _e55385556_)))
                        (if (gx#stx-pair? _tl55405561_)
                            (let ((_e55415564_ (gx#stx-e _tl55405561_)))
                              (let ((_hd55425567_ (##car _e55415564_))
                                    (_tl55435569_ (##cdr _e55415564_)))
                                (if (gx#stx-pair? _tl55435569_)
                                    (let ((_e55445572_
                                           (gx#stx-e _tl55435569_)))
                                      (let ((_hd55455575_ (##car _e55445572_))
                                            (_tl55465577_ (##cdr _e55445572_)))
                                        (if (gx#stx-null? _tl55465577_)
                                            ((lambda (_L5580_ _L5581_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5580_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5581_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd55455575_
                                             _hd55425567_)
                                            (_g55345551_ _g55355554_))))
                                    (_g55345551_ _g55355554_))))
                            (_g55345551_ _g55355554_))))
                    (_g55345551_ _g55355554_)))))
        (_g55335596_ _stx5532_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5465_)
      (let* ((_g54675484_
              (lambda (_g54685481_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54685481_)))
             (_g54665529_
              (lambda (_g54685487_)
                (if (gx#stx-pair? _g54685487_)
                    (let ((_e54715489_ (gx#stx-e _g54685487_)))
                      (let ((_hd54725492_ (##car _e54715489_))
                            (_tl54735494_ (##cdr _e54715489_)))
                        (if (gx#stx-pair? _tl54735494_)
                            (let ((_e54745497_ (gx#stx-e _tl54735494_)))
                              (let ((_hd54755500_ (##car _e54745497_))
                                    (_tl54765502_ (##cdr _e54745497_)))
                                (if (gx#stx-pair? _tl54765502_)
                                    (let ((_e54775505_
                                           (gx#stx-e _tl54765502_)))
                                      (let ((_hd54785508_ (##car _e54775505_))
                                            (_tl54795510_ (##cdr _e54775505_)))
                                        (if (gx#stx-null? _tl54795510_)
                                            ((lambda (_L5513_ _L5514_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5513_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5514_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd54785508_
                                             _hd54755500_)
                                            (_g54675484_ _g54685487_))))
                                    (_g54675484_ _g54685487_))))
                            (_g54675484_ _g54685487_))))
                    (_g54675484_ _g54685487_)))))
        (_g54665529_ _stx5465_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5382_)
      (let* ((_g53845405_
              (lambda (_g53855402_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53855402_)))
             (_g53835462_
              (lambda (_g53855408_)
                (if (gx#stx-pair? _g53855408_)
                    (let ((_e53895410_ (gx#stx-e _g53855408_)))
                      (let ((_hd53905413_ (##car _e53895410_))
                            (_tl53915415_ (##cdr _e53895410_)))
                        (if (gx#stx-pair? _tl53915415_)
                            (let ((_e53925418_ (gx#stx-e _tl53915415_)))
                              (let ((_hd53935421_ (##car _e53925418_))
                                    (_tl53945423_ (##cdr _e53925418_)))
                                (if (gx#stx-pair? _tl53945423_)
                                    (let ((_e53955426_
                                           (gx#stx-e _tl53945423_)))
                                      (let ((_hd53965429_ (##car _e53955426_))
                                            (_tl53975431_ (##cdr _e53955426_)))
                                        (if (gx#stx-pair? _tl53975431_)
                                            (let ((_e53985434_
                                                   (gx#stx-e _tl53975431_)))
                                              (let ((_hd53995437_
                                                     (##car _e53985434_))
                                                    (_tl54005439_
                                                     (##cdr _e53985434_)))
                                                (if (gx#stx-null? _tl54005439_)
                                                    ((lambda (_L5442_
                                                              _L5443_
                                                              _L5444_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5442_)
                           (cons (gxc#compile-e _L5443_)
                                 (cons (gxc#compile-e _L5444_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd53995437_
                                                     _hd53965429_
                                                     _hd53935421_)
                                                    (_g53845405_
                                                     _g53855408_))))
                                            (_g53845405_ _g53855408_))))
                                    (_g53845405_ _g53855408_))))
                            (_g53845405_ _g53855408_))))
                    (_g53845405_ _g53855408_)))))
        (_g53835462_ _stx5382_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5283_)
      (let* ((_g52855310_
              (lambda (_g52865307_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52865307_)))
             (_g52845379_
              (lambda (_g52865313_)
                (if (gx#stx-pair? _g52865313_)
                    (let ((_e52915315_ (gx#stx-e _g52865313_)))
                      (let ((_hd52925318_ (##car _e52915315_))
                            (_tl52935320_ (##cdr _e52915315_)))
                        (if (gx#stx-pair? _tl52935320_)
                            (let ((_e52945323_ (gx#stx-e _tl52935320_)))
                              (let ((_hd52955326_ (##car _e52945323_))
                                    (_tl52965328_ (##cdr _e52945323_)))
                                (if (gx#stx-pair? _tl52965328_)
                                    (let ((_e52975331_
                                           (gx#stx-e _tl52965328_)))
                                      (let ((_hd52985334_ (##car _e52975331_))
                                            (_tl52995336_ (##cdr _e52975331_)))
                                        (if (gx#stx-pair? _tl52995336_)
                                            (let ((_e53005339_
                                                   (gx#stx-e _tl52995336_)))
                                              (let ((_hd53015342_
                                                     (##car _e53005339_))
                                                    (_tl53025344_
                                                     (##cdr _e53005339_)))
                                                (if (gx#stx-pair? _tl53025344_)
                                                    (let ((_e53035347_
                                                           (gx#stx-e
                                                            _tl53025344_)))
                                                      (let ((_hd53045350_
                                                             (##car _e53035347_))
                                                            (_tl53055352_
                                                             (##cdr _e53035347_)))
                                                        (if (gx#stx-null?
                                                             _tl53055352_)
                                                            ((lambda (_L5355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5356_
                              _L5357_
                              _L5358_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L5356_)
                                   (cons (gxc#compile-e _L5355_)
                                         (cons (gxc#compile-e _L5357_)
                                               (cons (gxc#compile-e _L5358_)
                                                     (cons ''#f '())))))))
                     _hd53045350_
                     _hd53015342_
                     _hd52985334_
                     _hd52955326_)
                    (_g52855310_ _g52865313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g52855310_
                                                     _g52865313_))))
                                            (_g52855310_ _g52865313_))))
                                    (_g52855310_ _g52865313_))))
                            (_g52855310_ _g52865313_))))
                    (_g52855310_ _g52865313_)))))
        (_g52845379_ _stx5283_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5200_)
      (let* ((_g52025223_
              (lambda (_g52035220_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52035220_)))
             (_g52015280_
              (lambda (_g52035226_)
                (if (gx#stx-pair? _g52035226_)
                    (let ((_e52075228_ (gx#stx-e _g52035226_)))
                      (let ((_hd52085231_ (##car _e52075228_))
                            (_tl52095233_ (##cdr _e52075228_)))
                        (if (gx#stx-pair? _tl52095233_)
                            (let ((_e52105236_ (gx#stx-e _tl52095233_)))
                              (let ((_hd52115239_ (##car _e52105236_))
                                    (_tl52125241_ (##cdr _e52105236_)))
                                (if (gx#stx-pair? _tl52125241_)
                                    (let ((_e52135244_
                                           (gx#stx-e _tl52125241_)))
                                      (let ((_hd52145247_ (##car _e52135244_))
                                            (_tl52155249_ (##cdr _e52135244_)))
                                        (if (gx#stx-pair? _tl52155249_)
                                            (let ((_e52165252_
                                                   (gx#stx-e _tl52155249_)))
                                              (let ((_hd52175255_
                                                     (##car _e52165252_))
                                                    (_tl52185257_
                                                     (##cdr _e52165252_)))
                                                (if (gx#stx-null? _tl52185257_)
                                                    ((lambda (_L5260_
                                                              _L5261_
                                                              _L5262_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5260_)
                           (cons (gxc#compile-e _L5261_)
                                 (cons (gxc#compile-e _L5262_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd52175255_
                                                     _hd52145247_
                                                     _hd52115239_)
                                                    (_g52025223_
                                                     _g52035226_))))
                                            (_g52025223_ _g52035226_))))
                                    (_g52025223_ _g52035226_))))
                            (_g52025223_ _g52035226_))))
                    (_g52025223_ _g52035226_)))))
        (_g52015280_ _stx5200_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5101_)
      (let* ((_g51035128_
              (lambda (_g51045125_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51045125_)))
             (_g51025197_
              (lambda (_g51045131_)
                (if (gx#stx-pair? _g51045131_)
                    (let ((_e51095133_ (gx#stx-e _g51045131_)))
                      (let ((_hd51105136_ (##car _e51095133_))
                            (_tl51115138_ (##cdr _e51095133_)))
                        (if (gx#stx-pair? _tl51115138_)
                            (let ((_e51125141_ (gx#stx-e _tl51115138_)))
                              (let ((_hd51135144_ (##car _e51125141_))
                                    (_tl51145146_ (##cdr _e51125141_)))
                                (if (gx#stx-pair? _tl51145146_)
                                    (let ((_e51155149_
                                           (gx#stx-e _tl51145146_)))
                                      (let ((_hd51165152_ (##car _e51155149_))
                                            (_tl51175154_ (##cdr _e51155149_)))
                                        (if (gx#stx-pair? _tl51175154_)
                                            (let ((_e51185157_
                                                   (gx#stx-e _tl51175154_)))
                                              (let ((_hd51195160_
                                                     (##car _e51185157_))
                                                    (_tl51205162_
                                                     (##cdr _e51185157_)))
                                                (if (gx#stx-pair? _tl51205162_)
                                                    (let ((_e51215165_
                                                           (gx#stx-e
                                                            _tl51205162_)))
                                                      (let ((_hd51225168_
                                                             (##car _e51215165_))
                                                            (_tl51235170_
                                                             (##cdr _e51215165_)))
                                                        (if (gx#stx-null?
                                                             _tl51235170_)
                                                            ((lambda (_L5173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5174_
                              _L5175_
                              _L5176_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5174_)
                                   (cons (gxc#compile-e _L5173_)
                                         (cons (gxc#compile-e _L5175_)
                                               (cons (gxc#compile-e _L5176_)
                                                     (cons ''#f '())))))))
                     _hd51225168_
                     _hd51195160_
                     _hd51165152_
                     _hd51135144_)
                    (_g51035128_ _g51045131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g51035128_
                                                     _g51045131_))))
                                            (_g51035128_ _g51045131_))))
                                    (_g51035128_ _g51045131_))))
                            (_g51035128_ _g51045131_))))
                    (_g51035128_ _g51045131_)))))
        (_g51025197_ _stx5101_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5018_)
      (let* ((_g50205041_
              (lambda (_g50215038_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g50215038_)))
             (_g50195098_
              (lambda (_g50215044_)
                (if (gx#stx-pair? _g50215044_)
                    (let ((_e50255046_ (gx#stx-e _g50215044_)))
                      (let ((_hd50265049_ (##car _e50255046_))
                            (_tl50275051_ (##cdr _e50255046_)))
                        (if (gx#stx-pair? _tl50275051_)
                            (let ((_e50285054_ (gx#stx-e _tl50275051_)))
                              (let ((_hd50295057_ (##car _e50285054_))
                                    (_tl50305059_ (##cdr _e50285054_)))
                                (if (gx#stx-pair? _tl50305059_)
                                    (let ((_e50315062_
                                           (gx#stx-e _tl50305059_)))
                                      (let ((_hd50325065_ (##car _e50315062_))
                                            (_tl50335067_ (##cdr _e50315062_)))
                                        (if (gx#stx-pair? _tl50335067_)
                                            (let ((_e50345070_
                                                   (gx#stx-e _tl50335067_)))
                                              (let ((_hd50355073_
                                                     (##car _e50345070_))
                                                    (_tl50365075_
                                                     (##cdr _e50345070_)))
                                                (if (gx#stx-null? _tl50365075_)
                                                    ((lambda (_L5078_
                                                              _L5079_
                                                              _L5080_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5078_)
                           (cons (gxc#compile-e _L5079_)
                                 (cons (gxc#compile-e _L5080_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd50355073_
                                                     _hd50325065_
                                                     _hd50295057_)
                                                    (_g50205041_
                                                     _g50215044_))))
                                            (_g50205041_ _g50215044_))))
                                    (_g50205041_ _g50215044_))))
                            (_g50205041_ _g50215044_))))
                    (_g50205041_ _g50215044_)))))
        (_g50195098_ _stx5018_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx4919_)
      (let* ((_g49214946_
              (lambda (_g49224943_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49224943_)))
             (_g49205015_
              (lambda (_g49224949_)
                (if (gx#stx-pair? _g49224949_)
                    (let ((_e49274951_ (gx#stx-e _g49224949_)))
                      (let ((_hd49284954_ (##car _e49274951_))
                            (_tl49294956_ (##cdr _e49274951_)))
                        (if (gx#stx-pair? _tl49294956_)
                            (let ((_e49304959_ (gx#stx-e _tl49294956_)))
                              (let ((_hd49314962_ (##car _e49304959_))
                                    (_tl49324964_ (##cdr _e49304959_)))
                                (if (gx#stx-pair? _tl49324964_)
                                    (let ((_e49334967_
                                           (gx#stx-e _tl49324964_)))
                                      (let ((_hd49344970_ (##car _e49334967_))
                                            (_tl49354972_ (##cdr _e49334967_)))
                                        (if (gx#stx-pair? _tl49354972_)
                                            (let ((_e49364975_
                                                   (gx#stx-e _tl49354972_)))
                                              (let ((_hd49374978_
                                                     (##car _e49364975_))
                                                    (_tl49384980_
                                                     (##cdr _e49364975_)))
                                                (if (gx#stx-pair? _tl49384980_)
                                                    (let ((_e49394983_
                                                           (gx#stx-e
                                                            _tl49384980_)))
                                                      (let ((_hd49404986_
                                                             (##car _e49394983_))
                                                            (_tl49414988_
                                                             (##cdr _e49394983_)))
                                                        (if (gx#stx-null?
                                                             _tl49414988_)
                                                            ((lambda (_L4991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4992_
                              _L4993_
                              _L4994_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L4992_)
                                   (cons (gxc#compile-e _L4991_)
                                         (cons (gxc#compile-e _L4993_)
                                               (cons (gxc#compile-e _L4994_)
                                                     (cons ''#f '())))))))
                     _hd49404986_
                     _hd49374978_
                     _hd49344970_
                     _hd49314962_)
                    (_g49214946_ _g49224949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g49214946_
                                                     _g49224949_))))
                                            (_g49214946_ _g49224949_))))
                                    (_g49214946_ _g49224949_))))
                            (_g49214946_ _g49224949_))))
                    (_g49214946_ _g49224949_)))))
        (_g49205015_ _stx4919_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4828_)
      (let* ((_g48304840_
              (lambda (_g48314837_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48314837_)))
             (_g48294916_
              (lambda (_g48314843_)
                (if (gx#stx-pair? _g48314843_)
                    (let ((_e48334845_ (gx#stx-e _g48314843_)))
                      (let ((_hd48344848_ (##car _e48334845_))
                            (_tl48354850_ (##cdr _e48334845_)))
                        ((lambda (_L4853_)
                           (let ((_ht4863_ (make-hash-table-eq)))
                             (let _lp4865_ ((_rest4867_ _L4853_)
                                            (_loads4868_ '()))
                               (letrec ((_K4870_ (lambda (_ctx4909_ _rest4910_)
                                                   (let ((_id4912_
                                                          (##structure-ref
                                                           _ctx4909_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht4863_
                                                          _id4912_
                                                          '#f)
                                                         (_lp4865_
                                                          _rest4910_
                                                          _loads4868_)
                                                         (let ((_rt4914_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id4912_)
                         '"__rt")))
                   (begin
                     (table-set! _ht4863_ _id4912_ _rt4914_)
                     (_lp4865_ _rest4910_ (cons _rt4914_ _loads4868_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest48714879_ _rest4867_)
                                        (_E48744883_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest48714879_)))
                                        (_else48734891_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g48864888_)
                                                        (list 'load-module
                                                              _g48864888_))
                                                      (reverse _loads4868_)))))
                                        (_K48754897_
                                         (lambda (_rest4894_ _in4895_)
                                           (if (##structure-instance-of?
                                                _in4895_
                                                'gx#module-context::t)
                                               (_K4870_ _in4895_ _rest4894_)
                                               (if (##structure-direct-instance-of?
                                                    _in4895_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in4895_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp4865_
                                                        _rest4894_
                                                        _loads4868_)
                                                       (_K4870_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in4895_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest4894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in4895_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in4895_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp4865_
                                                            _rest4894_
                                                            _loads4868_)
                                                           (_K4870_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in4895_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest4894_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx4828_
                _in4895_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest48714879_)
                                       (let ((_hd48764900_
                                              (##car _rest48714879_))
                                             (_tl48774902_
                                              (##cdr _rest48714879_)))
                                         (let* ((_in4905_ _hd48764900_)
                                                (_rest4907_ _tl48774902_))
                                           (_K48754897_ _rest4907_ _in4905_)))
                                       (_else48734891_)))))))
                         _tl48354850_)))
                    (_g48304840_ _g48314843_)))))
        (_g48294916_ _stx4828_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4671_)
      (letrec ((_add-lift!4673_
                (lambda (_expr4826_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr4826_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple4674_
                (lambda (_stxq4821_)
                  (let ((_gid4823_
                         (gxc#generate-runtime-temporary__opt-lambda10060 '#t))
                        (_qid4824_
                         (gxc#generate-runtime-identifier _stxq4821_)))
                    (begin
                      (_add-lift!4673_
                       (cons 'define
                             (cons _gid4823_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid4824_
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
                      _gid4823_))))
               (_generate-serialized4675_
                (lambda (_stxq4811_ _marks4812_)
                  (let* ((_mark-refs4814_
                          (map _generate-mark4676_ _marks4812_))
                         (_gid4816_
                          (gxc#generate-runtime-temporary__opt-lambda10060
                           '#t))
                         (_qid4818_
                          (gxc#generate-runtime-identifier _stxq4811_)))
                    (begin
                      (_add-lift!4673_
                       (cons 'define
                             (cons _gid4816_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid4818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs4814_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid4816_))))
               (_generate-mark4676_
                (lambda (_mark4797_)
                  (let ((_$e4799_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark4797_
                          '#f)))
                    (if _$e4799_
                        (values _$e4799_)
                        (let* ((_gid4802_
                                (gxc#generate-runtime-temporary__opt-lambda10060
                                 '#t))
                               (_repr4804_ (_serialize-mark4677_ _mark4797_))
                               (_ctx4806_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark4797_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref4808_
                                (if (eq? _ctx4806_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref4678_
                                                             _ctx4806_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark4797_
                             _gid4802_)
                            (_add-lift!4673_
                             (cons 'define
                                   (cons _gid4802_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr4804_ '()))
                   (cons _ctx-ref4808_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid4802_))))))
               (_serialize-mark4677_
                (lambda (_mark4744_)
                  (letrec ((_quote-e4746_
                            (lambda (_sym4795_)
                              (if (interned-symbol? _sym4795_)
                                  _sym4795_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym4795_)))))
                    (let* ((_mark47474756_ _mark4744_)
                           (_E47494760_
                            (lambda ()
                              (error '"No clause matching" _mark47474756_)))
                           (_K47504772_
                            (lambda (_trace4763_
                                     _phi4764_
                                     _ctx4765_
                                     _subst4766_)
                              (let ((_subs4768_
                                     (if _subst4766_
                                         (table->list _subst4766_)
                                         '())))
                                (cons _phi4764_
                                      (map (lambda (_pair4770_)
                                             (cons (_quote-e4746_
                                                    (car _pair4770_))
                                                   (_quote-e4746_
                                                    (cdr _pair4770_))))
                                           _subs4768_))))))
                      (if (##structure-instance-of?
                           _mark47474756_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e47514775_ (##vector-ref _mark47474756_ '1))
                                 (_subst4778_ _e47514775_)
                                 (_e47524780_ (##vector-ref _mark47474756_ '2))
                                 (_ctx4783_ _e47524780_)
                                 (_e47534785_ (##vector-ref _mark47474756_ '3))
                                 (_phi4788_ _e47534785_)
                                 (_e47544790_ (##vector-ref _mark47474756_ '4))
                                 (_trace4793_ _e47544790_))
                            (_K47504772_
                             _trace4793_
                             _phi4788_
                             _ctx4783_
                             _subst4778_))
                          (_E47494760_))))))
               (_context-ref4678_
                (lambda (_ctx4742_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx4742_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (_context-ref-nested4679_ _ctx4742_)
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx4742_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-nested4679_
                (lambda (_ctx4733_)
                  (let _lp4735_ ((_ctx4737_ _ctx4733_) (_r4738_ '()))
                    (let ((_super4740_
                           (##structure-ref
                            _ctx4737_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super4740_
                           'gx#module-context::t)
                          (_lp4735_
                           _super4740_
                           (cons (car (##structure-ref
                                       _ctx4737_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r4738_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx4737_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r4738_)))))))
        (let* ((_g46814694_
                (lambda (_g46824691_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46824691_)))
               (_g46804730_
                (lambda (_g46824697_)
                  (if (gx#stx-pair? _g46824697_)
                      (let ((_e46844699_ (gx#stx-e _g46824697_)))
                        (let ((_hd46854702_ (##car _e46844699_))
                              (_tl46864704_ (##cdr _e46844699_)))
                          (if (gx#stx-pair? _tl46864704_)
                              (let ((_e46874707_ (gx#stx-e _tl46864704_)))
                                (let ((_hd46884710_ (##car _e46874707_))
                                      (_tl46894712_ (##cdr _e46874707_)))
                                  (if (gx#stx-null? _tl46894712_)
                                      ((lambda (_L4715_)
                                         (if (gx#identifier? _L4715_)
                                             (let ((_marks4728_
                                                    (##direct-structure-ref
                                                     _L4715_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks4728_)
                                                   (_generate-simple4674_
                                                    _L4715_)
                                                   (_generate-serialized4675_
                                                    _L4715_
                                                    _marks4728_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L4715_)))
                                       _hd46884710_)
                                      (_g46814694_ _g46824697_))))
                              (_g46814694_ _g46824697_))))
                      (_g46814694_ _g46824697_)))))
          (_g46804730_ _stx4671_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4604_)
      (let* ((_g46064623_
              (lambda (_g46074620_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g46074620_)))
             (_g46054668_
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
                                            (_tl46184649_ (##cdr _e46164644_)))
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
        (_g46054668_ _stx4604_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4553_ _state4554_)
      (let* ((_g45564566_
              (lambda (_g45574563_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45574563_)))
             (_g45554601_
              (lambda (_g45574569_)
                (if (gx#stx-pair? _g45574569_)
                    (let ((_e45594571_ (gx#stx-e _g45574569_)))
                      (let ((_hd45604574_ (##car _e45594571_))
                            (_tl45614576_ (##cdr _e45594571_)))
                        ((lambda (_L4579_)
                           (let* ((_c-body4593_
                                   (map (lambda (_g45884590_)
                                          (gxc#compile-e
                                           _g45884590_
                                           _state4554_))
                                        _L4579_))
                                  (_c-body4598_
                                   (filter (lambda (_$obj4595_)
                                             (not (eq? _$obj4595_ '#!void)))
                                           _c-body4593_)))
                             (cons '%#begin _c-body4598_)))
                         _tl45614576_)))
                    (_g45564566_ _g45574569_)))))
        (_g45554601_ _stx4553_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4461_ _state4462_)
      (let* ((_g44644474_
              (lambda (_g44654471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44654471_)))
             (_g44634550_
              (lambda (_g44654477_)
                (if (gx#stx-pair? _g44654477_)
                    (let ((_e44674479_ (gx#stx-e _g44654477_)))
                      (let ((_hd44684482_ (##car _e44674479_))
                            (_tl44694484_ (##cdr _e44674479_)))
                        ((lambda (_L4487_)
                           (let* ((_phi4497_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block4499_
                                   (gxc#meta-state-begin-phi!
                                    _state4462_
                                    _phi4497_))
                                  (_compiled4502_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L4487_)
                                       _state4462_))
                                    gx#current-expander-phi
                                    _phi4497_)))
                             (let* ((_g45054515_
                                     (lambda (_g45064512_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g45064512_)))
                                    (_g45044547_
                                     (lambda (_g45064518_)
                                       (if (gx#stx-pair? _g45064518_)
                                           (let ((_e45084520_
                                                  (gx#stx-e _g45064518_)))
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
                                                          (let ((_c-body4545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj4542_)
                                   (not (eq? _$obj4542_ '#!void)))
                                 _L4528_)))
                    (if _block4499_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block4499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body4545_))
                        (if (null? _c-body4545_)
                            '#!void
                            (cons '%#begin-syntax _c-body4545_)))))
                _tl45104525_)
               (_g45054515_ _g45064518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45054515_ _g45064518_))))
                                           (_g45054515_ _g45064518_)))))
                               (_g45044547_ _compiled4502_))))
                         _tl44694484_)))
                    (_g44644474_ _g44654477_)))))
        (_g44634550_ _stx4461_))))
  (define gxc#generate-meta-module%
    (lambda (_stx4392_ _state4393_)
      (begin
        (gxc#meta-state-end-phi! _state4393_)
        (let* ((_g43954409_
                (lambda (_g43964406_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43964406_)))
               (_g43944458_
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
                                         (let* ((_ctx4446_
                                                 (gx#syntax-local-e__0
                                                  _L4431_))
                                                (_code4449_
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
                                                  _ctx4446_))
                                                (_rt4451_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx4446_
                                                  '#f))
                                                (_loader4453_
                                                 (if _rt4451_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt4451_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid4455_
                                                 (gx#stx-e _L4431_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state4393_)
                                             (cons '%#module
                                                   (cons _modid4455_
                                                         (cons _code4449_
                                                               _loader4453_))))))))
                                   _tl44044427_
                                   _hd44034425_)))
                              (_g43954409_ _g43964412_))))
                      (_g43954409_ _g43964412_)))))
          (_g43944458_ _stx4392_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4382_ _context-chain4383_)
      (let _lp4385_ ((_ctx4387_ _ctx4382_) (_path4388_ '()))
        (let ((_super4390_
               (##structure-ref _ctx4387_ '3 gx#phi-context::t '#f)))
          (if (memq _super4390_ _context-chain4383_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx4387_
                           '7
                           gx#module-context::t
                           '#f))
                     _path4388_)
              (if (##structure-instance-of? _super4390_ 'gx#module-context::t)
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
  (define gxc#current-context-chain
    (lambda ()
      (let _lp4377_ ((_ctx4379_ (gx#current-expander-context)) (_r4380_ '()))
        (if (##structure-instance-of? _ctx4379_ 'gx#module-context::t)
            (_lp4377_
             (##structure-ref _ctx4379_ '3 gx#phi-context::t '#f)
             (cons _ctx4379_ _r4380_))
            _r4380_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4146_ _state4147_)
      (letrec* ((_context-chain4149_ (gxc#current-context-chain))
                (_make-import-spec4150_
                 (lambda (_in4313_)
                   (let* ((_in43144326_ _in4313_)
                          (_E43164330_
                           (lambda ()
                             (error '"No clause matching" _in43144326_)))
                          (_K43174340_
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
                               (let* ((_e43214346_
                                       (##vector-ref _e43184343_ '1))
                                      (_src-ctx4349_ _e43214346_)
                                      (_e43224351_
                                       (##vector-ref _e43184343_ '2))
                                      (_src-key4354_ _e43224351_)
                                      (_e43234356_
                                       (##vector-ref _e43184343_ '3))
                                      (_src-phi4359_ _e43234356_)
                                      (_e43244361_
                                       (##vector-ref _e43184343_ '4))
                                      (_src-name4364_ _e43244361_)
                                      (_e43194366_
                                       (##vector-ref _in43144326_ '2))
                                      (_name4369_ _e43194366_)
                                      (_e43204371_
                                       (##vector-ref _in43144326_ '3))
                                      (_phi4374_ _e43204371_))
                                 (_K43174340_
                                  _phi4374_
                                  _name4369_
                                  _src-name4364_
                                  _src-phi4359_
                                  _src-key4354_
                                  _src-ctx4349_))
                               (_E43164330_)))
                         (_E43164330_)))))
                (_make-import-path4151_
                 (lambda (_ctx4311_)
                   (gxc#generate-meta-import-path
                    _ctx4311_
                    _context-chain4149_)))
                (_make-import-spec-in4152_
                 (lambda (_ctx4308_ _in4309_)
                   (cons 'spec:
                         (cons (_make-import-path4151_ _ctx4308_)
                               (reverse _in4309_))))))
        (begin
          (gxc#meta-state-end-phi! _state4147_)
          (let* ((_g41544164_
                  (lambda (_g41554161_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g41554161_)))
                 (_g41534305_
                  (lambda (_g41554167_)
                    (if (gx#stx-pair? _g41554167_)
                        (let ((_e41574169_ (gx#stx-e _g41554167_)))
                          (let ((_hd41584172_ (##car _e41574169_))
                                (_tl41594174_ (##cdr _e41574169_)))
                            ((lambda (_L4177_)
                               (let _lp4188_ ((_rest4190_ _L4177_)
                                              (_current-src4191_ '#f)
                                              (_current-in4192_ '())
                                              (_r4193_ '()))
                                 (let* ((_rest41944202_ _rest4190_)
                                        (_E41974206_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest41944202_)))
                                        (_else41964212_
                                         (lambda ()
                                           (let ((_r4210_ (if _current-src4191_
                                                              (cons (_make-import-spec-in4152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4191_
                             _current-in4192_)
                            _r4193_)
                      _r4193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4210_)))))
                                        (_K41984293_
                                         (lambda (_rest4215_ _in4216_)
                                           (if (##structure-direct-instance-of?
                                                _in4216_
                                                'gx#module-import::t)
                                               (let* ((_in42174224_ _in4216_)
                                                      (_E42194228_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in42174224_)))
                                                      (_K42204233_
                                                       (lambda (_src-ctx4231_)
                                                         (if (eq? _current-src4191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4231_)
                     (_lp4188_
                      _rest4215_
                      _current-src4191_
                      (cons (_make-import-spec4150_ _in4216_) _current-in4192_)
                      _r4193_)
                     (if _current-src4191_
                         (_lp4188_
                          _rest4215_
                          _src-ctx4231_
                          (cons (_make-import-spec4150_ _in4216_) '())
                          (cons (_make-import-spec-in4152_
                                 _current-src4191_
                                 _current-in4192_)
                                _r4193_))
                         (_lp4188_
                          _rest4215_
                          _src-ctx4231_
                          (cons (_make-import-spec4150_ _in4216_) '())
                          _r4193_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in42174224_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e42214236_
                                                            (##vector-ref
                                                             _in42174224_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e42214236_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e42224239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e42214236_ '1))
                          (_src-ctx4242_ _e42224239_))
                     (_K42204233_ _src-ctx4242_))
                   (_E42194228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E42194228_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4216_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4244_
                                                           (##direct-structure-ref
                                                            _in4216_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4246_
                                                           (##direct-structure-ref
                                                            _in4216_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in4286_
                                                           (let* ((_g42474256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4151_ _src4246_))
                          (_E42504260_
                           (lambda ()
                             (error '"No clause matching" _g42474256_)))
                          (_try-match42494271_
                           (lambda ()
                             (let* ((_K42514266_
                                     (lambda (_path4264_)
                                       (cons 'in: _path4264_)))
                                    (_path4269_ _g42474256_))
                               (_K42514266_ _path4269_))))
                          (_K42524276_ (lambda (_path4274_) _path4274_)))
                     (if (##pair? _g42474256_)
                         (let ((_hd42534279_ (##car _g42474256_))
                               (_tl42544281_ (##cdr _g42474256_)))
                           (let ((_path4284_ _hd42534279_))
                             (if (##null? _tl42544281_)
                                 (_K42524276_ _path4284_)
                                 (_try-match42494271_))))
                         (_try-match42494271_))))
                  (_r4288_ (if _current-src4191_
                               (cons (_make-import-spec-in4152_
                                      _current-src4191_
                                      _current-in4192_)
                                     _r4193_)
                               _r4193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4188_
                                                      _rest4215_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4244_)
                                                                _src-in4286_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4244_ (cons _src-in4286_ '()))))
                    _r4288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4216_
                                                        'gx#module-context::t)
                                                       (let ((_r4291_ (if _current-src4191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4152_
                                         _current-src4191_
                                         _current-in4192_)
                                        _r4193_)
                                  _r4193_)))
                 (_lp4188_
                  _rest4215_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4151_ _in4216_))
                        _r4291_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest41944202_)
                                       (let ((_hd41994296_
                                              (##car _rest41944202_))
                                             (_tl42004298_
                                              (##cdr _rest41944202_)))
                                         (let* ((_in4301_ _hd41994296_)
                                                (_rest4303_ _tl42004298_))
                                           (_K41984293_ _rest4303_ _in4301_)))
                                       (_else41964212_)))))
                             _tl41594174_)))
                        (_g41544164_ _g41554167_)))))
            (_g41534305_ _stx4146_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3956_ _state3957_)
      (letrec* ((_context-chain3959_ (gxc#current-context-chain))
                (_make-import-path3960_
                 (lambda (_ctx4144_)
                   (gxc#generate-meta-import-path
                    _ctx4144_
                    _context-chain3959_))))
        (let* ((_g39623972_
                (lambda (_g39633969_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39633969_)))
               (_g39614141_
                (lambda (_g39633975_)
                  (if (gx#stx-pair? _g39633975_)
                      (let ((_e39653977_ (gx#stx-e _g39633975_)))
                        (let ((_hd39663980_ (##car _e39653977_))
                              (_tl39673982_ (##cdr _e39653977_)))
                          ((lambda (_L3985_)
                             (let _lp3996_ ((_rest3998_ _L3985_) (_r3999_ '()))
                               (let* ((_rest40004008_ _rest3998_)
                                      (_E40034012_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest40004008_)))
                                      (_else40024016_
                                       (lambda ()
                                         (cons '%#export (reverse _r3999_))))
                                      (_K40044129_
                                       (lambda (_rest4019_ _out4020_)
                                         (let* ((_out40214034_ _out4020_)
                                                (_E40244038_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out40214034_)))
                                                (_try-match40234101_
                                                 (lambda ()
                                                   (let ((_K40254088_
                                                          (lambda (_phi4042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4043_)
                    (let* ((_out4083_
                            (if _src4043_
                                (cons 'import:
                                      (cons (let* ((_g40444053_
                                                    (_make-import-path3960_
                                                     _src4043_))
                                                   (_E40474057_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g40444053_)))
                                                   (_try-match40464068_
                                                    (lambda ()
                                                      (let* ((_K40484063_
                                                              (lambda (_path4061_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4061_)))
                     (_path4066_ _g40444053_))
                (_K40484063_ _path4066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K40494073_
                                                    (lambda (_path4071_)
                                                      _path4071_)))
                                              (if (##pair? _g40444053_)
                                                  (let ((_hd40504076_
                                                         (##car _g40444053_))
                                                        (_tl40514078_
                                                         (##cdr _g40444053_)))
                                                    (let ((_path4081_
                                                           _hd40504076_))
                                                      (if (##null? _tl40514078_)
                                                          (_K40494073_
                                                           _path4081_)
                                                          (_try-match40464068_))))
                                                  (_try-match40464068_)))
                                            '()))
                                '#t))
                           (_out4085_
                            (if (fxzero? _phi4042_)
                                _out4083_
                                (cons 'phi:
                                      (cons _phi4042_ (cons _out4083_ '()))))))
                      (_lp3996_ _rest4019_ (cons _out4085_ _r3999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out40214034_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e40264091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out40214034_ '1))
                        (_src4094_ _e40264091_)
                        (_e40274096_ (##vector-ref _out40214034_ '2))
                        (_phi4099_ _e40274096_))
                   (_K40254088_ _phi4099_ _src4094_))
                 (_E40244038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K40284108_
                                                 (lambda (_name4104_
                                                          _phi4105_
                                                          _key4106_)
                                                   (_lp3996_
                                                    _rest4019_
                                                    (cons (cons 'spec:
                                                                (cons _phi4105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4106_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4104_)
                                          '()))))
                  _r3999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out40214034_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e40294111_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '1))
                                                      (_e40304114_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '2))
                                                      (_key4117_ _e40304114_)
                                                      (_e40314119_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '3))
                                                      (_phi4122_ _e40314119_)
                                                      (_e40324124_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '4))
                                                      (_name4127_ _e40324124_))
                                                 (_K40284108_
                                                  _name4127_
                                                  _phi4122_
                                                  _key4117_))
                                               (_try-match40234101_))))))
                                 (if (##pair? _rest40004008_)
                                     (let ((_hd40054132_
                                            (##car _rest40004008_))
                                           (_tl40064134_
                                            (##cdr _rest40004008_)))
                                       (let* ((_out4137_ _hd40054132_)
                                              (_rest4139_ _tl40064134_))
                                         (_K40044129_ _rest4139_ _out4137_)))
                                     (_else40024016_)))))
                           _tl39673982_)))
                      (_g39623972_ _g39633975_)))))
          (_g39614141_ _stx3956_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3917_ _state3918_)
      (begin
        (gxc#meta-state-end-phi! _state3918_)
        (let* ((_g39203930_
                (lambda (_g39213927_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39213927_)))
               (_g39193953_
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
          (_g39193953_ _stx3917_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3788_ _state3789_)
      (letrec ((_generate13791_
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
        (let* ((_g37933821_
                (lambda (_g37943818_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g37943818_)))
               (_g37923909_
                (lambda (_g37943824_)
                  (if (gx#stx-pair? _g37943824_)
                      (let ((_e37973826_ (gx#stx-e _g37943824_)))
                        (let ((_hd37983829_ (##car _e37973826_))
                              (_tl37993831_ (##cdr _e37973826_)))
                          (if (gx#stx-pair/null? _tl37993831_)
                              (if (fx>= (gx#stx-length _tl37993831_) '0)
                                  (let ((_g11205_
                                         (gx#syntax-split-splice
                                          _tl37993831_
                                          '0)))
                                    (begin
                                      (let ((_g11206_ (values-count _g11205_)))
                                        (if (not (fx= _g11206_ 2))
                                            (error "Context expects 2 values"
                                                   _g11206_)))
                                      (let ((_target38003834_
                                             (values-ref _g11205_ 0))
                                            (_tl38023836_
                                             (values-ref _g11205_ 1)))
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
                                            (_tl38163870_ (##cdr _e38143865_)))
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
                                      (foldr1 (lambda (_g38943897_ _g38953899_)
                                                (cons _g38943897_ _g38953899_))
                                              '()
                                              _L3879_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g39013904_ _g39023906_)
                                                (cons _g39013904_ _g39023906_))
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
          (_g37923909_ _stx3788_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3583_ _state3584_)
      (letrec ((_generate13586_
                (lambda (_id3783_)
                  (let ((_eid3785_ (gxc#generate-runtime-binding-id _id3783_))
                        (_ident3786_
                         (gxc#generate-runtime-identifier _id3783_)))
                    (cons '%#define-runtime
                          (cons _ident3786_ (cons _eid3785_ '()))))))
               (_generate*3587_
                (lambda (_all3751_)
                  (let* ((_all37523760_ _all3751_)
                         (_E37553764_
                          (lambda ()
                            (error '"No clause matching" _all37523760_)))
                         (_else37543768_ (lambda () (cons '%#begin _all3751_)))
                         (_K37563773_ (lambda (_one3771_) _one3771_)))
                    (if (##pair? _all37523760_)
                        (let ((_hd37573776_ (##car _all37523760_))
                              (_tl37583778_ (##cdr _all37523760_)))
                          (let ((_one3781_ _hd37573776_))
                            (if (##null? _tl37583778_)
                                (_K37563773_ _one3781_)
                                (_else37543768_))))
                        (_else37543768_))))))
        (let* ((_g35893606_
                (lambda (_g35903603_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g35903603_)))
               (_g35883748_
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
                                                 (let _lp3652_ ((_rest3654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L3636_)
                        (_r3655_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g36603676_
                                                           (lambda (_g36613673_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g36613673_)))
                                                          (_g36593683_
                                                           (lambda (_g36613679_)
                                                             ((lambda ()
                                                                (_generate*3587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r3655_))))))
                  (_g36583699_
                   (lambda (_g36613686_)
                     ((lambda (_L3688_)
                        (if (gx#identifier? _L3688_)
                            (_generate*3587_
                             (foldl1 cons
                                     (cons (_generate13586_ _L3688_) '())
                                     _r3655_))
                            (_g36593683_ _g36613686_)))
                      _g36613686_)))
                  (_g36573723_
                   (lambda (_g36613702_)
                     (if (gx#stx-pair? _g36613702_)
                         (let ((_e36683704_ (gx#stx-e _g36613702_)))
                           (let ((_hd36693707_ (##car _e36683704_))
                                 (_tl36703709_ (##cdr _e36683704_)))
                             ((lambda (_L3712_ _L3713_)
                                (_lp3652_
                                 _L3712_
                                 (cons (_generate13586_ _L3713_) _r3655_)))
                              _tl36703709_
                              _hd36693707_)))
                         (_g36583699_ _g36613702_))))
                  (_g36563745_
                   (lambda (_g36613726_)
                     (if (gx#stx-pair? _g36613726_)
                         (let ((_e36633728_ (gx#stx-e _g36613726_)))
                           (let ((_hd36643731_ (##car _e36633728_))
                                 (_tl36653733_ (##cdr _e36633728_)))
                             (if (gx#stx-datum? _hd36643731_)
                                 (if (equal? (gx#stx-e _hd36643731_) '#f)
                                     ((lambda (_L3736_)
                                        (_lp3652_ _L3736_ _r3655_))
                                      _tl36653733_)
                                     (_g36573723_ _g36613726_))
                                 (_g36573723_ _g36613726_))))
                         (_g36573723_ _g36613726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g36563745_
                                                      _rest3654_))))
                                               _hd36003630_
                                               _hd35973622_)
                                              (_g35893606_ _g35903609_))))
                                      (_g35893606_ _g35903609_))))
                              (_g35893606_ _g35903609_))))
                      (_g35893606_ _g35903609_)))))
          (_g35883748_ _stx3583_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3480_ _state3481_)
      (let* ((_g34833500_
              (lambda (_g34843497_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g34843497_)))
             (_g34823580_
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
                                            (_tl34953526_ (##cdr _e34933521_)))
                                        (if (gx#stx-null? _tl34953526_)
                                            ((lambda (_L3529_ _L3530_)
                                               (let* ((_eid3545_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3530_))
                                                      (_phi3547_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block3549_
                                                       (gxc#meta-state-begin-phi!
                                                        _state3481_
                                                        _phi3547_)))
                                                 (begin
                                                   (let* ((_g35523559_
                                                           (lambda (_g35533556_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g35533556_)))
                                                          (_g35513577_
                                                           (lambda (_g35533562_)
                                                             ((lambda (_L3564_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state3481_
                           _phi3547_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L3564_ (cons _L3529_ '()))))))
                      _g35533562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g35513577_ _eid3545_))
                                                   (if _block3549_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block3549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L3530_)
                                             (cons _eid3545_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L3530_)
                           (cons _eid3545_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34943524_
                                             _hd34913516_)
                                            (_g34833500_ _g34843503_))))
                                    (_g34833500_ _g34843503_))))
                            (_g34833500_ _g34843503_))))
                    (_g34833500_ _g34843503_)))))
        (_g34823580_ _stx3480_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3412_ _state3413_)
      (let* ((_g34153432_
              (lambda (_g34163429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g34163429_)))
             (_g34143477_
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
                                            (_tl34273458_ (##cdr _e34253453_)))
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
        (_g34143477_ _stx3412_))))
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
      (let* ((_state33583366_ _state3356_)
             (_E33603370_
              (lambda () (error '"No clause matching" _state33583366_)))
             (_K33613379_
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
            (let* ((_e33623382_ (##vector-ref _state33583366_ '1))
                   (_src3385_ _e33623382_)
                   (_e33633387_ (##vector-ref _state33583366_ '2))
                   (_n3390_ _e33633387_)
                   (_e33643392_ (##vector-ref _state33583366_ '3))
                   (_open3395_ _e33643392_))
              (_K33613379_ _open3395_ _n3390_ _src3385_))
            (_E33603370_)))))
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
          (lambda (_g11207_ _block3347_ _r3348_) (cons _block3347_ _r3348_))
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
                  (let* ((_block33013310_ _block3299_)
                         (_E33033314_
                          (lambda ()
                            (error '"No clause matching" _block33013310_)))
                         (_K33043322_
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
                        (let* ((_e33053325_ (##vector-ref _block33013310_ '1))
                               (_ctx3328_ _e33053325_)
                               (_e33063330_ (##vector-ref _block33013310_ '2))
                               (_phi3333_ _e33063330_)
                               (_e33073335_ (##vector-ref _block33013310_ '3))
                               (_n3338_ _e33073335_)
                               (_e33083340_ (##vector-ref _block33013310_ '4))
                               (_code3343_ _e33083340_))
                          (_K33043322_ _code3343_ _n3338_ _phi3333_ _ctx3328_))
                        (_E33033314_))))
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
      (let* ((_g32393252_
              (lambda (_g32403249_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g32403249_)))
             (_g32383290_
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
                                       (let* ((_bind3285_
                                               (gx#resolve-identifier__0
                                                _L3273_))
                                              (_eid3287_
                                               (if _bind3285_
                                                   (##structure-ref
                                                    _bind3285_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3273_))))
                                         (table-set!
                                          _ht3237_
                                          _eid3287_
                                          _eid3287_)))
                                     _hd32463268_)
                                    (_g32393252_ _g32403255_))))
                            (_g32393252_ _g32403255_))))
                    (_g32393252_ _g32403255_)))))
        (_g32383290_ _stx3236_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3163_ _ht3164_)
      (let* ((_g31663183_
              (lambda (_g31673180_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g31673180_)))
             (_g31653233_
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
                                            (_tl31783209_ (##cdr _e31763204_)))
                                        (if (gx#stx-null? _tl31783209_)
                                            ((lambda (_L3212_ _L3213_)
                                               (let* ((_bind3228_
                                                       (gx#resolve-identifier__0
                                                        _L3213_))
                                                      (_eid3230_
                                                       (if _bind3228_
                                                           (##structure-ref
                                                            _bind3228_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3213_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3164_
                                                    _eid3230_
                                                    _eid3230_)
                                                   (gxc#compile-e
                                                    _L3212_
                                                    _ht3164_))))
                                             _hd31773207_
                                             _hd31743199_)
                                            (_g31663183_ _g31673186_))))
                                    (_g31663183_ _g31673186_))))
                            (_g31663183_ _g31673186_))))
                    (_g31663183_ _g31673186_)))))
        (_g31653233_ _stx3163_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3125_)
      (let* ((_g31273137_
              (lambda (_g31283134_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g31283134_)))
             (_g31263160_
              (lambda (_g31283140_)
                (if (gx#stx-pair? _g31283140_)
                    (let ((_e31303142_ (gx#stx-e _g31283140_)))
                      (let ((_hd31313145_ (##car _e31303142_))
                            (_tl31323147_ (##cdr _e31303142_)))
                        ((lambda (_L3150_) (ormap1 gxc#compile-e _L3150_))
                         _tl31323147_)))
                    (_g31273137_ _g31283140_)))))
        (_g31263160_ _stx3125_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3087_)
      (let* ((_g30893099_
              (lambda (_g30903096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g30903096_)))
             (_g30883122_
              (lambda (_g30903102_)
                (if (gx#stx-pair? _g30903102_)
                    (let ((_e30923104_ (gx#stx-e _g30903102_)))
                      (let ((_hd30933107_ (##car _e30923104_))
                            (_tl30943109_ (##cdr _e30923104_)))
                        ((lambda (_L3112_) (gxc#compile-e (last _L3112_)))
                         _tl30943109_)))
                    (_g30893099_ _g30903102_)))))
        (_g30883122_ _stx3087_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3020_)
      (let* ((_g30223039_
              (lambda (_g30233036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g30233036_)))
             (_g30213084_
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
                                            (_tl30343065_ (##cdr _e30323060_)))
                                        (if (gx#stx-null? _tl30343065_)
                                            ((lambda (_L3068_ _L3069_)
                                               (gxc#compile-e _L3068_))
                                             _hd30333063_
                                             _hd30303055_)
                                            (_g30223039_ _g30233042_))))
                                    (_g30223039_ _g30233042_))))
                            (_g30223039_ _g30233042_))))
                    (_g30223039_ _g30233042_)))))
        (_g30213084_ _stx3020_)))))
