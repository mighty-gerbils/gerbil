(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10411_ . _args10412_)
      (let ((_g1041410424_
             (lambda (_g1041510421_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1041510421_))))
        (let ((_g1041310452_
               (lambda (_g1041510427_)
                 (if (gx#stx-pair? _g1041510427_)
                     (let ((_e1041710429_ (gx#stx-e _g1041510427_)))
                       (let ((_hd1041810432_ (##car _e1041710429_))
                             (_tl1041910434_ (##cdr _e1041710429_)))
                         ((lambda (_L10437_)
                            (let ((_$e10447_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10437_)
                                    '#f)))
                              (if _$e10447_
                                  ((lambda (_method10450_)
                                     (apply _method10450_
                                            _stx10411_
                                            _args10412_))
                                   _$e10447_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10411_
                                   _L10437_))))
                          _hd1041810432_)))
                     (_g1041410424_ _g1041510427_)))))
          (_g1041310452_ _stx10411_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10408_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10408_ '%#lambda void)
           (table-set! _tbl10408_ '%#case-lambda void)
           (table-set! _tbl10408_ '%#let-values void)
           (table-set! _tbl10408_ '%#letrec-values void)
           (table-set! _tbl10408_ '%#letrec*-values void)
           (table-set! _tbl10408_ '%#quote void)
           (table-set! _tbl10408_ '%#quote-syntax void)
           (table-set! _tbl10408_ '%#call void)
           (table-set! _tbl10408_ '%#if void)
           (table-set! _tbl10408_ '%#ref void)
           (table-set! _tbl10408_ '%#set! void)
           (table-set! _tbl10408_ '%#struct-instance? void)
           (table-set! _tbl10408_ '%#struct-direct-instance? void)
           (table-set! _tbl10408_ '%#struct-ref void)
           (table-set! _tbl10408_ '%#struct-set! void)
           (table-set! _tbl10408_ '%#struct-direct-ref void)
           (table-set! _tbl10408_ '%#struct-direct-set! void)
           _tbl10408_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10404_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10404_ '%#begin void)
           (table-set! _tbl10404_ '%#begin-syntax void)
           (table-set! _tbl10404_ '%#begin-foreign void)
           (table-set! _tbl10404_ '%#module void)
           (table-set! _tbl10404_ '%#import void)
           (table-set! _tbl10404_ '%#export void)
           (table-set! _tbl10404_ '%#provide void)
           (table-set! _tbl10404_ '%#extern void)
           (table-set! _tbl10404_ '%#define-values void)
           (table-set! _tbl10404_ '%#define-syntax void)
           (table-set! _tbl10404_ '%#define-alias void)
           (table-set! _tbl10404_ '%#declare void)
           _tbl10404_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10400_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10400_ (force gxc#&void-special-form))
           (hash-copy! _tbl10400_ (force gxc#&void-expression))
           _tbl10400_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl10396_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10396_ '%#lambda false)
           (table-set! _tbl10396_ '%#case-lambda false)
           (table-set! _tbl10396_ '%#let-values false)
           (table-set! _tbl10396_ '%#letrec-values false)
           (table-set! _tbl10396_ '%#letrec*-values false)
           (table-set! _tbl10396_ '%#quote false)
           (table-set! _tbl10396_ '%#quote-syntax false)
           (table-set! _tbl10396_ '%#call false)
           (table-set! _tbl10396_ '%#if false)
           (table-set! _tbl10396_ '%#ref false)
           (table-set! _tbl10396_ '%#set! false)
           (table-set! _tbl10396_ '%#struct-instance? false)
           (table-set! _tbl10396_ '%#struct-direct-instance? false)
           (table-set! _tbl10396_ '%#struct-ref false)
           (table-set! _tbl10396_ '%#struct-set! false)
           (table-set! _tbl10396_ '%#struct-direct-ref false)
           (table-set! _tbl10396_ '%#struct-direct-set! false)
           _tbl10396_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10392_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10392_ '%#begin false)
           (table-set! _tbl10392_ '%#begin-syntax false)
           (table-set! _tbl10392_ '%#begin-foreign false)
           (table-set! _tbl10392_ '%#module false)
           (table-set! _tbl10392_ '%#import false)
           (table-set! _tbl10392_ '%#export false)
           (table-set! _tbl10392_ '%#provide false)
           (table-set! _tbl10392_ '%#extern false)
           (table-set! _tbl10392_ '%#define-values false)
           (table-set! _tbl10392_ '%#define-syntax false)
           (table-set! _tbl10392_ '%#define-alias false)
           (table-set! _tbl10392_ '%#declare false)
           _tbl10392_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10388_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10388_ (force gxc#&false-special-form))
           (hash-copy! _tbl10388_ (force gxc#&false-expression))
           _tbl10388_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10384_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10384_ (force gxc#&void-expression))
           (hash-copy! _tbl10384_ (force gxc#&void-special-form))
           (table-set! _tbl10384_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10384_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10384_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10384_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10384_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10384_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10377_ . _args10379_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10377_ _args10379_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10374_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10374_ (force gxc#&void))
           (table-set! _tbl10374_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10374_ '%#module gxc#lift-modules-module%)
           _tbl10374_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10367_ . _args10369_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10367_ _args10369_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10364_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10364_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10364_ '%#begin-syntax false)
           (table-set! _tbl10364_ '%#begin-foreign true)
           (table-set! _tbl10364_ '%#module false)
           (table-set! _tbl10364_ '%#import false)
           (table-set! _tbl10364_ '%#export false)
           (table-set! _tbl10364_ '%#provide false)
           (table-set! _tbl10364_ '%#extern false)
           (table-set! _tbl10364_ '%#define-values true)
           (table-set! _tbl10364_ '%#define-syntax false)
           (table-set! _tbl10364_ '%#define-alias false)
           (table-set! _tbl10364_ '%#declare false)
           (table-set! _tbl10364_ '%#lambda true)
           (table-set! _tbl10364_ '%#case-lambda true)
           (table-set! _tbl10364_ '%#let-values true)
           (table-set! _tbl10364_ '%#letrec-values true)
           (table-set! _tbl10364_ '%#letrec*-values true)
           (table-set! _tbl10364_ '%#quote true)
           (table-set! _tbl10364_ '%#call true)
           (table-set! _tbl10364_ '%#if true)
           (table-set! _tbl10364_ '%#ref true)
           (table-set! _tbl10364_ '%#set! true)
           (table-set! _tbl10364_ '%#struct-instance? true)
           (table-set! _tbl10364_ '%#struct-direct-instance? true)
           (table-set! _tbl10364_ '%#struct-ref true)
           (table-set! _tbl10364_ '%#struct-set! true)
           (table-set! _tbl10364_ '%#struct-direct-ref true)
           (table-set! _tbl10364_ '%#struct-direct-set! true)
           _tbl10364_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10357_ . _args10359_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10357_ _args10359_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl10354_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10354_ (force gxc#&false))
           (table-set! _tbl10354_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set! _tbl10354_ '%#lambda values)
           (table-set! _tbl10354_ '%#case-lambda values)
           (table-set!
            _tbl10354_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10354_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10354_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl10354_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx10347_ . _args10349_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10347_ _args10349_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10344_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10344_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10344_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10344_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10344_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10344_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10344_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           _tbl10344_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10340_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10340_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10340_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10340_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10340_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10333_ . _args10335_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10333_ _args10335_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10330_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10330_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10330_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10330_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10330_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10330_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10330_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10330_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10330_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10330_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10330_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10330_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10330_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10330_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10330_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10330_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10330_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10330_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10330_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10330_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10330_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10330_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           _tbl10330_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10323_ . _args10325_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10323_ _args10325_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10320_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10320_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10320_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10320_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10320_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10313_ . _args10315_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10313_ _args10315_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10310_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10310_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10310_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10310_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10310_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10310_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10310_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10310_ '%#quote void)
           (table-set! _tbl10310_ '%#quote-syntax void)
           (table-set! _tbl10310_ '%#call gxc#collect-operands)
           (table-set! _tbl10310_ '%#if gxc#collect-operands)
           (table-set! _tbl10310_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10310_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10310_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10310_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10310_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10310_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10310_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10310_ '%#struct-direct-set! gxc#collect-operands)
           _tbl10310_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10303_ . _args10305_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10303_ _args10305_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10300_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10300_ (force gxc#&void-expression))
           (table-set! _tbl10300_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10300_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10300_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10300_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10300_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10300_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10300_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10300_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10300_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10300_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10300_ '%#begin-foreign void)
           (table-set! _tbl10300_ '%#declare void)
           _tbl10300_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10293_ . _args10295_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10293_ _args10295_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10290_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10290_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10290_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10290_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10290_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10290_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10290_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10290_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10290_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10290_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10290_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10290_ '%#declare void)
           _tbl10290_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10283_ . _args10285_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10283_ _args10285_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10240_ . _args10241_)
      (let ((_g1024310253_
             (lambda (_g1024410250_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1024410250_))))
        (let ((_g1024210280_
               (lambda (_g1024410256_)
                 (if (gx#stx-pair? _g1024410256_)
                     (let ((_e1024610258_ (gx#stx-e _g1024410256_)))
                       (let ((_hd1024710261_ (##car _e1024610258_))
                             (_tl1024810263_ (##cdr _e1024610258_)))
                         ((lambda (_L10266_)
                            (for-each
                             (lambda (_g1027510277_)
                               (apply gxc#compile-e _g1027510277_ _args10241_))
                             (gx#stx-e _L10266_)))
                          _tl1024810263_)))
                     (_g1024310253_ _g1024410256_)))))
          (_g1024210280_ _stx10240_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10196_ . _args10197_)
      (let ((_g1019910209_
             (lambda (_g1020010206_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1020010206_))))
        (let ((_g1019810237_
               (lambda (_g1020010212_)
                 (if (gx#stx-pair? _g1020010212_)
                     (let ((_e1020210214_ (gx#stx-e _g1020010212_)))
                       (let ((_hd1020310217_ (##car _e1020210214_))
                             (_tl1020410219_ (##cdr _e1020210214_)))
                         ((lambda (_L10222_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1023210234_)
                                  (apply gxc#compile-e
                                         _g1023210234_
                                         _args10197_))
                                (gx#stx-e _L10222_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl1020410219_)))
                     (_g1019910209_ _g1020010212_)))))
          (_g1019810237_ _stx10196_)))))
  (define gxc#collect-module%
    (lambda (_stx10138_ . _args10139_)
      (let ((_g1014110155_
             (lambda (_g1014210152_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1014210152_))))
        (let ((_g1014010193_
               (lambda (_g1014210158_)
                 (if (gx#stx-pair? _g1014210158_)
                     (let ((_e1014510160_ (gx#stx-e _g1014210158_)))
                       (let ((_hd1014610163_ (##car _e1014510160_))
                             (_tl1014710165_ (##cdr _e1014510160_)))
                         (if (gx#stx-pair? _tl1014710165_)
                             (let ((_e1014810168_ (gx#stx-e _tl1014710165_)))
                               (let ((_hd1014910171_ (##car _e1014810168_))
                                     (_tl1015010173_ (##cdr _e1014810168_)))
                                 ((lambda (_L10176_ _L10177_)
                                    (let ((_ctx10190_
                                           (gx#syntax-local-e__0 _L10177_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx10190_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args10139_))
                                       gx#current-expander-context
                                       _ctx10190_)))
                                  _tl1015010173_
                                  _hd1014910171_)))
                             (_g1014110155_ _g1014210158_))))
                     (_g1014110155_ _g1014210158_)))))
          (_g1014010193_ _stx10138_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10070_ . _args10071_)
      (let ((_g1007310090_
             (lambda (_g1007410087_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1007410087_))))
        (let ((_g1007210135_
               (lambda (_g1007410093_)
                 (if (gx#stx-pair? _g1007410093_)
                     (let ((_e1007710095_ (gx#stx-e _g1007410093_)))
                       (let ((_hd1007810098_ (##car _e1007710095_))
                             (_tl1007910100_ (##cdr _e1007710095_)))
                         (if (gx#stx-pair? _tl1007910100_)
                             (let ((_e1008010103_ (gx#stx-e _tl1007910100_)))
                               (let ((_hd1008110106_ (##car _e1008010103_))
                                     (_tl1008210108_ (##cdr _e1008010103_)))
                                 (if (gx#stx-pair? _tl1008210108_)
                                     (let ((_e1008310111_
                                            (gx#stx-e _tl1008210108_)))
                                       (let ((_hd1008410114_
                                              (##car _e1008310111_))
                                             (_tl1008510116_
                                              (##cdr _e1008310111_)))
                                         (if (gx#stx-null? _tl1008510116_)
                                             ((lambda (_L10119_ _L10120_)
                                                (apply gxc#compile-e
                                                       _L10119_
                                                       _args10071_))
                                              _hd1008410114_
                                              _hd1008110106_)
                                             (_g1007310090_ _g1007410093_))))
                                     (_g1007310090_ _g1007410093_))))
                             (_g1007310090_ _g1007410093_))))
                     (_g1007310090_ _g1007410093_)))))
          (_g1007210135_ _stx10070_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9952_ . _args9953_)
      (let ((_g99559983_
             (lambda (_g99569980_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99569980_))))
        (let ((_g995410067_
               (lambda (_g99569986_)
                 (if (gx#stx-pair? _g99569986_)
                     (let ((_e99599988_ (gx#stx-e _g99569986_)))
                       (let ((_hd99609991_ (##car _e99599988_))
                             (_tl99619993_ (##cdr _e99599988_)))
                         (if (gx#stx-pair/null? _tl99619993_)
                             (if (fx>= (gx#stx-length _tl99619993_) '0)
                                 (let ((_g10454_
                                        (gx#syntax-split-splice
                                         _tl99619993_
                                         '0)))
                                   (begin
                                     (let ((_g10455_ (values-count _g10454_)))
                                       (if (not (fx= _g10455_ 2))
                                           (error "Context expects 2 values"
                                                  _g10455_)))
                                     (let ((_target99629996_
                                            (values-ref _g10454_ 0))
                                           (_tl99649998_
                                            (values-ref _g10454_ 1)))
                                       (if (gx#stx-null? _tl99649998_)
                                           (letrec ((_loop996510001_
                                                     (lambda (_hd996310004_
                                                              _body996910006_
                                                              _hd997010008_)
                                                       (if (gx#stx-pair?
                                                            _hd996310004_)
                                                           (let ((_e996610011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd996310004_)))
                     (let ((_lp-hd996710014_ (##car _e996610011_))
                           (_lp-tl996810016_ (##cdr _e996610011_)))
                       (if (gx#stx-pair? _lp-hd996710014_)
                           (let ((_e997310019_ (gx#stx-e _lp-hd996710014_)))
                             (let ((_hd997410022_ (##car _e997310019_))
                                   (_tl997510024_ (##cdr _e997310019_)))
                               (if (gx#stx-pair? _tl997510024_)
                                   (let ((_e997610027_
                                          (gx#stx-e _tl997510024_)))
                                     (let ((_hd997710030_ (##car _e997610027_))
                                           (_tl997810032_
                                            (##cdr _e997610027_)))
                                       (if (gx#stx-null? _tl997810032_)
                                           (_loop996510001_
                                            _lp-tl996810016_
                                            (cons _hd997710030_
                                                  _body996910006_)
                                            (cons _hd997410022_ _hd997010008_))
                                           (_g99559983_ _g99569986_))))
                                   (_g99559983_ _g99569986_))))
                           (_g99559983_ _g99569986_))))
                   (let ((_body997110035_ (reverse _body996910006_))
                         (_hd997210037_ (reverse _hd997010008_)))
                     ((lambda (_L10040_ _L10041_)
                        (for-each
                         (lambda (_g1005510057_)
                           (apply gxc#compile-e _g1005510057_ _args9953_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1005910062_ _g1006010064_)
                                     (cons _g1005910062_ _g1006010064_))
                                   '()
                                   _L10040_))))
                      _body997110035_
                      _hd997210037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop996510001_
                                              _target99629996_
                                              '()
                                              '()))
                                           (_g99559983_ _g99569986_)))))
                                 (_g99559983_ _g99569986_))
                             (_g99559983_ _g99569986_))))
                     (_g99559983_ _g99569986_)))))
          (_g995410067_ _stx9952_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9805_ . _args9806_)
      (let ((_g98089843_
             (lambda (_g98099840_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98099840_))))
        (let ((_g98079949_
               (lambda (_g98099846_)
                 (if (gx#stx-pair? _g98099846_)
                     (let ((_e98139848_ (gx#stx-e _g98099846_)))
                       (let ((_hd98149851_ (##car _e98139848_))
                             (_tl98159853_ (##cdr _e98139848_)))
                         (if (gx#stx-pair? _tl98159853_)
                             (let ((_e98169856_ (gx#stx-e _tl98159853_)))
                               (let ((_hd98179859_ (##car _e98169856_))
                                     (_tl98189861_ (##cdr _e98169856_)))
                                 (if (gx#stx-pair/null? _hd98179859_)
                                     (if (fx>= (gx#stx-length _hd98179859_) '0)
                                         (let ((_g10456_
                                                (gx#syntax-split-splice
                                                 _hd98179859_
                                                 '0)))
                                           (begin
                                             (let ((_g10457_
                                                    (values-count _g10456_)))
                                               (if (not (fx= _g10457_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10457_)))
                                             (let ((_target98199864_
                                                    (values-ref _g10456_ 0))
                                                   (_tl98219866_
                                                    (values-ref _g10456_ 1)))
                                               (if (gx#stx-null? _tl98219866_)
                                                   (letrec ((_loop98229869_
                                                             (lambda (_hd98209872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr98269874_
                              _hd98279876_)
                       (if (gx#stx-pair? _hd98209872_)
                           (let ((_e98239879_ (gx#stx-e _hd98209872_)))
                             (let ((_lp-hd98249882_ (##car _e98239879_))
                                   (_lp-tl98259884_ (##cdr _e98239879_)))
                               (if (gx#stx-pair? _lp-hd98249882_)
                                   (let ((_e98309887_
                                          (gx#stx-e _lp-hd98249882_)))
                                     (let ((_hd98319890_ (##car _e98309887_))
                                           (_tl98329892_ (##cdr _e98309887_)))
                                       (if (gx#stx-pair? _tl98329892_)
                                           (let ((_e98339895_
                                                  (gx#stx-e _tl98329892_)))
                                             (let ((_hd98349898_
                                                    (##car _e98339895_))
                                                   (_tl98359900_
                                                    (##cdr _e98339895_)))
                                               (if (gx#stx-null? _tl98359900_)
                                                   (_loop98229869_
                                                    _lp-tl98259884_
                                                    (cons _hd98349898_
                                                          _expr98269874_)
                                                    (cons _hd98319890_
                                                          _hd98279876_))
                                                   (_g98089843_ _g98099846_))))
                                           (_g98089843_ _g98099846_))))
                                   (_g98089843_ _g98099846_))))
                           (let ((_expr98289903_ (reverse _expr98269874_))
                                 (_hd98299905_ (reverse _hd98279876_)))
                             (if (gx#stx-pair? _tl98189861_)
                                 (let ((_e98369908_ (gx#stx-e _tl98189861_)))
                                   (let ((_hd98379911_ (##car _e98369908_))
                                         (_tl98389913_ (##cdr _e98369908_)))
                                     (if (gx#stx-null? _tl98389913_)
                                         ((lambda (_L9916_ _L9917_ _L9918_)
                                            (for-each
                                             (lambda (_g99379939_)
                                               (apply gxc#compile-e
                                                      _g99379939_
                                                      _args9806_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g99419944_
                                                                _g99429946_)
                                                         (cons _g99419944_
                                                               _g99429946_))
                                                       (cons _L9916_ '())
                                                       _L9917_))))
                                          _hd98379911_
                                          _expr98289903_
                                          _hd98299905_)
                                         (_g98089843_ _g98099846_))))
                                 (_g98089843_ _g98099846_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop98229869_
                                                      _target98199864_
                                                      '()
                                                      '()))
                                                   (_g98089843_
                                                    _g98099846_)))))
                                         (_g98089843_ _g98099846_))
                                     (_g98089843_ _g98099846_))))
                             (_g98089843_ _g98099846_))))
                     (_g98089843_ _g98099846_)))))
          (_g98079949_ _stx9805_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9737_ . _args9738_)
      (let ((_g97409757_
             (lambda (_g97419754_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97419754_))))
        (let ((_g97399802_
               (lambda (_g97419760_)
                 (if (gx#stx-pair? _g97419760_)
                     (let ((_e97449762_ (gx#stx-e _g97419760_)))
                       (let ((_hd97459765_ (##car _e97449762_))
                             (_tl97469767_ (##cdr _e97449762_)))
                         (if (gx#stx-pair? _tl97469767_)
                             (let ((_e97479770_ (gx#stx-e _tl97469767_)))
                               (let ((_hd97489773_ (##car _e97479770_))
                                     (_tl97499775_ (##cdr _e97479770_)))
                                 (if (gx#stx-pair? _tl97499775_)
                                     (let ((_e97509778_
                                            (gx#stx-e _tl97499775_)))
                                       (let ((_hd97519781_ (##car _e97509778_))
                                             (_tl97529783_
                                              (##cdr _e97509778_)))
                                         (if (gx#stx-null? _tl97529783_)
                                             ((lambda (_L9786_ _L9787_)
                                                (apply gxc#compile-e
                                                       _L9786_
                                                       _args9738_))
                                              _hd97519781_
                                              _hd97489773_)
                                             (_g97409757_ _g97419760_))))
                                     (_g97409757_ _g97419760_))))
                             (_g97409757_ _g97419760_))))
                     (_g97409757_ _g97419760_)))))
          (_g97399802_ _stx9737_)))))
  (define gxc#collect-operands
    (lambda (_stx9650_ . _args9651_)
      (let ((_g96539672_
             (lambda (_g96549669_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96549669_))))
        (let ((_g96529734_
               (lambda (_g96549675_)
                 (if (gx#stx-pair? _g96549675_)
                     (let ((_e96569677_ (gx#stx-e _g96549675_)))
                       (let ((_hd96579680_ (##car _e96569677_))
                             (_tl96589682_ (##cdr _e96569677_)))
                         (if (gx#stx-pair/null? _tl96589682_)
                             (if (fx>= (gx#stx-length _tl96589682_) '0)
                                 (let ((_g10458_
                                        (gx#syntax-split-splice
                                         _tl96589682_
                                         '0)))
                                   (begin
                                     (let ((_g10459_ (values-count _g10458_)))
                                       (if (not (fx= _g10459_ 2))
                                           (error "Context expects 2 values"
                                                  _g10459_)))
                                     (let ((_target96599685_
                                            (values-ref _g10458_ 0))
                                           (_tl96619687_
                                            (values-ref _g10458_ 1)))
                                       (if (gx#stx-null? _tl96619687_)
                                           (letrec ((_loop96629690_
                                                     (lambda (_hd96609693_
                                                              _rands96669695_)
                                                       (if (gx#stx-pair?
                                                            _hd96609693_)
                                                           (let ((_e96639698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd96609693_)))
                     (let ((_lp-hd96649701_ (##car _e96639698_))
                           (_lp-tl96659703_ (##cdr _e96639698_)))
                       (_loop96629690_
                        _lp-tl96659703_
                        (cons _lp-hd96649701_ _rands96669695_))))
                   (let ((_rands96679706_ (reverse _rands96669695_)))
                     ((lambda (_L9709_)
                        (for-each
                         (lambda (_g97229724_)
                           (apply gxc#compile-e _g97229724_ _args9651_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g97269729_ _g97279731_)
                                     (cons _g97269729_ _g97279731_))
                                   '()
                                   _L9709_))))
                      _rands96679706_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop96629690_
                                              _target96599685_
                                              '()))
                                           (_g96539672_ _g96549675_)))))
                                 (_g96539672_ _g96549675_))
                             (_g96539672_ _g96549675_))))
                     (_g96539672_ _g96549675_)))))
          (_g96529734_ _stx9650_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9581_)
      (let ((_g95839600_
             (lambda (_g95849597_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95849597_))))
        (let ((_g95829647_
               (lambda (_g95849603_)
                 (if (gx#stx-pair? _g95849603_)
                     (let ((_e95879605_ (gx#stx-e _g95849603_)))
                       (let ((_hd95889608_ (##car _e95879605_))
                             (_tl95899610_ (##cdr _e95879605_)))
                         (if (gx#stx-pair? _tl95899610_)
                             (let ((_e95909613_ (gx#stx-e _tl95899610_)))
                               (let ((_hd95919616_ (##car _e95909613_))
                                     (_tl95929618_ (##cdr _e95909613_)))
                                 (if (gx#stx-pair? _tl95929618_)
                                     (let ((_e95939621_
                                            (gx#stx-e _tl95929618_)))
                                       (let ((_hd95949624_ (##car _e95939621_))
                                             (_tl95959626_
                                              (##cdr _e95939621_)))
                                         (if (gx#stx-null? _tl95959626_)
                                             ((lambda (_L9629_ _L9630_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9645_)
                                                   (if (gx#identifier?
                                                        _bind9645_)
                                                       (gxc#add-module-binding!
                                                        _bind9645_
                                                        '#f)
                                                       '#!void))
                                                 _L9630_))
                                              _hd95949624_
                                              _hd95919616_)
                                             (_g95839600_ _g95849603_))))
                                     (_g95839600_ _g95849603_))))
                             (_g95839600_ _g95849603_))))
                     (_g95839600_ _g95849603_)))))
          (_g95829647_ _stx9581_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9514_)
      (let ((_g95169533_
             (lambda (_g95179530_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95179530_))))
        (let ((_g95159578_
               (lambda (_g95179536_)
                 (if (gx#stx-pair? _g95179536_)
                     (let ((_e95209538_ (gx#stx-e _g95179536_)))
                       (let ((_hd95219541_ (##car _e95209538_))
                             (_tl95229543_ (##cdr _e95209538_)))
                         (if (gx#stx-pair? _tl95229543_)
                             (let ((_e95239546_ (gx#stx-e _tl95229543_)))
                               (let ((_hd95249549_ (##car _e95239546_))
                                     (_tl95259551_ (##cdr _e95239546_)))
                                 (if (gx#stx-pair? _tl95259551_)
                                     (let ((_e95269554_
                                            (gx#stx-e _tl95259551_)))
                                       (let ((_hd95279557_ (##car _e95269554_))
                                             (_tl95289559_
                                              (##cdr _e95269554_)))
                                         (if (gx#stx-null? _tl95289559_)
                                             ((lambda (_L9562_ _L9563_)
                                                (gxc#add-module-binding!
                                                 _L9563_
                                                 '#t))
                                              _hd95279557_
                                              _hd95249549_)
                                             (_g95169533_ _g95179536_))))
                                     (_g95169533_ _g95179536_))))
                             (_g95169533_ _g95179536_))))
                     (_g95169533_ _g95179536_)))))
          (_g95159578_ _stx9514_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9456_ _modules9457_)
      (let ((_g94599473_
             (lambda (_g94609470_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94609470_))))
        (let ((_g94589511_
               (lambda (_g94609476_)
                 (if (gx#stx-pair? _g94609476_)
                     (let ((_e94639478_ (gx#stx-e _g94609476_)))
                       (let ((_hd94649481_ (##car _e94639478_))
                             (_tl94659483_ (##cdr _e94639478_)))
                         (if (gx#stx-pair? _tl94659483_)
                             (let ((_e94669486_ (gx#stx-e _tl94659483_)))
                               (let ((_hd94679489_ (##car _e94669486_))
                                     (_tl94689491_ (##cdr _e94669486_)))
                                 ((lambda (_L9494_ _L9495_)
                                    (let ((_ctx9508_
                                           (gx#syntax-local-e__0 _L9495_)))
                                      (begin
                                        (set-box!
                                         _modules9457_
                                         (cons _ctx9508_
                                               (unbox _modules9457_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9508_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9457_))
                                         gx#current-expander-context
                                         _ctx9508_))))
                                  _tl94689491_
                                  _hd94679489_)))
                             (_g94599473_ _g94609476_))))
                     (_g94599473_ _g94609476_)))))
          (_g94589511_ _stx9456_)))))
  (define gxc#add-module-binding!
    (lambda (_id9450_ _syntax?9451_)
      (let ((_eid9453_
             (##structure-ref
              (gx#resolve-identifier__0 _id9450_)
              '1
              gx#binding::t
              '#f))
            (_ht9454_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9453_)
            '#!void
            (table-set!
             _ht9454_
             _eid9453_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9453_)
              _syntax?9451_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9431_)
      (let ((_bind9433_ (gx#resolve-identifier__0 _id9431_)))
        (if _bind9433_
            (let ((_eid9435_ (##structure-ref _bind9433_ '1 gx#binding::t '#f))
                  (_ht9436_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9435_)
                  _eid9435_
                  (let ((_$e9438_ (table-ref _ht9436_ _eid9435_ '#f)))
                    (if _$e9438_
                        (values _$e9438_)
                        (if (##structure-instance-of?
                             _bind9433_
                             'gx#local-binding::t)
                            (let ((_gid9441_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9435_)))
                              (begin
                                (table-set! _ht9436_ _eid9435_ _gid9441_)
                                _gid9441_))
                            (if (##structure-instance-of?
                                 _bind9433_
                                 'gx#module-binding::t)
                                (let ((_gid9448_
                                       (let ((_$e9443_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9433_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9443_
                                             ((lambda (_ns9446_)
                                                (make-symbol
                                                 _ns9446_
                                                 '"#"
                                                 _eid9435_))
                                              _$e9443_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9435_)))))
                                  (begin
                                    (table-set! _ht9436_ _eid9435_ _gid9448_)
                                    _gid9448_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9431_
                                 _eid9435_
                                 _bind9433_)))))))
            (if (interned-symbol? (gx#stx-e _id9431_))
                (gx#stx-e _id9431_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9431_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9429_)
      (if (gx#identifier? _id9429_)
          (gxc#generate-runtime-binding-id _id9429_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9407
      (lambda (_sym9409_ _quote?9410_)
        (let ((_ht9412_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9414_ (table-ref _ht9412_ _sym9409_ '#f)))
            (if _$e9414_
                (values _$e9414_)
                (let ((_g9417_ (if _quote?9410_
                                   (make-symbol
                                    '"__"
                                    _sym9409_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9409_ '"_"))))
                  (begin (table-set! _ht9412_ _sym9409_ _g9417_) _g9417_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9422_)
          (let ((_quote?9424_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9407
             _sym9422_
             _quote?9424_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10461_
          (let ((_g10460_ (length _g10461_)))
            (cond ((fx= _g10460_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10461_))
                  ((fx= _g10460_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9407
                          _g10461_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g10461_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9406_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9406_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9368_)
      (if (interned-symbol? _key9368_)
          _key9368_
          (if (uninterned-symbol? _key9368_)
              (gxc#generate-runtime-gensym-reference__0 _key9368_)
              (let ((_key93699376_ _key9368_))
                (let ((_E93719380_
                       (lambda ()
                         (error '"No clause matching" _key93699376_))))
                  (let ((_K93729394_
                         (lambda (_mark9383_ _eid9384_)
                           (let ((_$e9386_
                                  (##structure-ref
                                   _mark9383_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9386_
                                 ((lambda (_ht9389_)
                                    (let ((_$e9391_
                                           (table-ref _ht9389_ _eid9384_ '#f)))
                                      (if _$e9391_
                                          (values _$e9391_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9384_))))
                                  _$e9386_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9384_))))))
                    (if (##pair? _key93699376_)
                        (let ((_hd93739397_ (##car _key93699376_))
                              (_tl93749399_ (##cdr _key93699376_)))
                          (let ((_eid9402_ _hd93739397_))
                            (let ((_mark9404_ _tl93749399_))
                              (_K93729394_ _mark9404_ _eid9402_))))
                        (_E93719380_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9353
      (lambda (_top9355_)
        (if _top9355_
            (let ((_ns9357_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9358_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9358_)
                  (make-symbol
                   _ns9357_
                   '"["
                   (number->string _phi9358_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9357_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9364_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9353 _top9364_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10463_
          (let ((_g10462_ (length _g10463_)))
            (cond ((fx= _g10462_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10463_))
                  ((fx= _g10462_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9353
                          _g10463_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g10463_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9352_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9272_)
      (let ((_g92749284_
             (lambda (_g92759281_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92759281_))))
        (let ((_g92739349_
               (lambda (_g92759287_)
                 (if (gx#stx-pair? _g92759287_)
                     (let ((_e92779289_ (gx#stx-e _g92759287_)))
                       (let ((_hd92789292_ (##car _e92779289_))
                             (_tl92799294_ (##cdr _e92779289_)))
                         ((lambda (_L9297_)
                            (let ((_body9307_
                                   (gx#stx-map1 gxc#compile-e _L9297_)))
                              (let ((_body9346_
                                     (filter (lambda (_stx9309_)
                                               (let ((_g93129321_
                                                      (lambda (_g93139318_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g93139318_))))
                                                 (let ((_g93119328_
                                                        (lambda (_g93139324_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g93109343_
                                                          (lambda (_g93139331_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g93139331_)
                        (let ((_e93149333_ (gx#stx-e _g93139331_)))
                          (let ((_hd93159336_ (##car _e93149333_))
                                (_tl93169338_ (##cdr _e93149333_)))
                            (if (gx#identifier? _hd93159336_)
                                (if (gx#stx-eq? 'begin _hd93159336_)
                                    (if (gx#stx-null? _tl93169338_)
                                        ((lambda () '#f))
                                        (_g93119328_ _g93139331_))
                                    (_g93119328_ _g93139331_))
                                (_g93119328_ _g93139331_))))
                        (_g93119328_ _g93139331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93109343_
                                                      _stx9309_)))))
                                             _body9307_)))
                                (let ()
                                  (if (fx= (length _body9346_) '1)
                                      (car _body9346_)
                                      (cons 'begin _body9346_))))))
                          _tl92799294_)))
                     (_g92749284_ _g92759287_)))))
          (_g92739349_ _stx9272_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9234_)
      (let ((_g92369246_
             (lambda (_g92379243_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92379243_))))
        (let ((_g92359269_
               (lambda (_g92379249_)
                 (if (gx#stx-pair? _g92379249_)
                     (let ((_e92399251_ (gx#stx-e _g92379249_)))
                       (let ((_hd92409254_ (##car _e92399251_))
                             (_tl92419256_ (##cdr _e92399251_)))
                         ((lambda (_L9259_)
                            (cons 'begin (gx#syntax->datum _L9259_)))
                          _tl92419256_)))
                     (_g92369246_ _g92379249_)))))
          (_g92359269_ _stx9234_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9196_)
      (let ((_g91989208_
             (lambda (_g91999205_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91999205_))))
        (let ((_g91979231_
               (lambda (_g91999211_)
                 (if (gx#stx-pair? _g91999211_)
                     (let ((_e92019213_ (gx#stx-e _g91999211_)))
                       (let ((_hd92029216_ (##car _e92019213_))
                             (_tl92039218_ (##cdr _e92019213_)))
                         ((lambda (_L9221_)
                            (cons 'declare (map gx#syntax->datum _L9221_)))
                          _tl92039218_)))
                     (_g91989208_ _g91999211_)))))
          (_g91979231_ _stx9196_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8952_)
      (let ((_g89548971_
             (lambda (_g89558968_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89558968_))))
        (let ((_g89539193_
               (lambda (_g89558974_)
                 (if (gx#stx-pair? _g89558974_)
                     (let ((_e89588976_ (gx#stx-e _g89558974_)))
                       (let ((_hd89598979_ (##car _e89588976_))
                             (_tl89608981_ (##cdr _e89588976_)))
                         (if (gx#stx-pair? _tl89608981_)
                             (let ((_e89618984_ (gx#stx-e _tl89608981_)))
                               (let ((_hd89628987_ (##car _e89618984_))
                                     (_tl89638989_ (##cdr _e89618984_)))
                                 (if (gx#stx-pair? _tl89638989_)
                                     (let ((_e89648992_
                                            (gx#stx-e _tl89638989_)))
                                       (let ((_hd89658995_ (##car _e89648992_))
                                             (_tl89668997_
                                              (##cdr _e89648992_)))
                                         (if (gx#stx-null? _tl89668997_)
                                             ((lambda (_L9000_ _L9001_)
                                                (let ((_g90189031_
                                                       (lambda (_g90199028_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g90199028_))))
                                                  (let ((_g90179145_
                                                         (lambda (_g90199034_)
                                                           ((lambda ()
                                                              (let ((_tmp9038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9353
                              '#t)))
                        (let ((_body9142_
                               ((letrec ((_lp9040_
                                          (lambda (_rest9042_ _k9043_ _r9044_)
                                            (let ((_g90499065_
                                                   (lambda (_g90509062_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g90509062_))))
                                              (let ((_g90489072_
                                                     (lambda (_g90509068_)
                                                       ((lambda ()
                                                          (reverse _r9044_))))))
                                                (let ((_g90479093_
                                                       (lambda (_g90509075_)
                                                         ((lambda (_L9077_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9077_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L9077_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp9038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k9043_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r9044_)
                        (_g90489072_ _g90509075_)))
                  _g90509075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g90469117_
                                                         (lambda (_g90509096_)
                                                           (if (gx#stx-pair?
                                                                _g90509096_)
                                                               (let ((_e90579098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g90509096_)))
                         (let ((_hd90589101_ (##car _e90579098_))
                               (_tl90599103_ (##cdr _e90579098_)))
                           ((lambda (_L9106_ _L9107_)
                              (_lp9040_
                               _L9106_
                               (fx+ _k9043_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L9107_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp9038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k9043_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r9044_)))
                            _tl90599103_
                            _hd90589101_)))
                       (_g90479093_ _g90509096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g90459139_
                                                           (lambda (_g90509120_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90509120_)
                         (let ((_e90529122_ (gx#stx-e _g90509120_)))
                           (let ((_hd90539125_ (##car _e90529122_))
                                 (_tl90549127_ (##cdr _e90529122_)))
                             (if (gx#stx-datum? _hd90539125_)
                                 (if (equal? (gx#stx-e _hd90539125_) '#f)
                                     ((lambda (_L9130_)
                                        (_lp9040_
                                         _L9130_
                                         (fx+ _k9043_ '1)
                                         _r9044_))
                                      _tl90549127_)
                                     (_g90469117_ _g90509120_))
                                 (_g90469117_ _g90509120_))))
                         (_g90469117_ _g90509120_)))))
              (_g90459139_ _rest9042_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp9040_)
                                _L9001_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp9038_
                                                    (cons (gxc#compile-e
                                                           _L9000_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp9038_
                                               _L9001_)
                                              _body9142_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g90169175_
                                                           (lambda (_g90199148_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90199148_)
                         (let ((_e90249150_ (gx#stx-e _g90199148_)))
                           (let ((_hd90259153_ (##car _e90249150_))
                                 (_tl90269155_ (##cdr _e90249150_)))
                             (if (gx#stx-null? _tl90269155_)
                                 ((lambda (_L9158_)
                                    (let ((_eid9167_
                                           (gxc#generate-runtime-binding-id
                                            _L9158_)))
                                      (begin
                                        (let ((_lambda-expr91689170_
                                               (gxc#apply-find-lambda-expression
                                                _L9000_)))
                                          (if _lambda-expr91689170_
                                              (let ((_lambda-expr9173_
                                                     _lambda-expr91689170_))
                                                (table-set!
                                                 (gxc#current-compile-runtime-names)
                                                 _lambda-expr9173_
                                                 _eid9167_))
                                              '#f))
                                        (cons 'define
                                              (cons _eid9167_
                                                    (cons (gxc#compile-e
                                                           _L9000_)
                                                          '()))))))
                                  _hd90259153_)
                                 (_g90179145_ _g90199148_))))
                         (_g90179145_ _g90199148_)))))
              (let ((_g90159190_
                     (lambda (_g90199178_)
                       (if (gx#stx-pair? _g90199178_)
                           (let ((_e90209180_ (gx#stx-e _g90199178_)))
                             (let ((_hd90219183_ (##car _e90209180_))
                                   (_tl90229185_ (##cdr _e90209180_)))
                               (if (gx#stx-datum? _hd90219183_)
                                   (if (equal? (gx#stx-e _hd90219183_) '#f)
                                       (if (gx#stx-null? _tl90229185_)
                                           ((lambda ()
                                              (gxc#compile-e _L9000_)))
                                           (_g90169175_ _g90199178_))
                                       (_g90169175_ _g90199178_))
                                   (_g90169175_ _g90199178_))))
                           (_g90169175_ _g90199178_)))))
                (_g90159190_ _L9001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd89658995_
                                              _hd89628987_)
                                             (_g89548971_ _g89558974_))))
                                     (_g89548971_ _g89558974_))))
                             (_g89548971_ _g89558974_))))
                     (_g89548971_ _g89558974_)))))
          (_g89539193_ _stx8952_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8940_ _hd8941_)
      (let ((_len8943_ (gx#stx-length _hd8941_)))
        (let ((_cmp8945_ (if (gx#stx-list? _hd8941_) 'fx= 'fx>=)))
          (let ((_errmsg8947_
                 (string-append
                  (if (gx#stx-list? _hd8941_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8943_)
                  '" values")))
            (let ((_count8949_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8941_)) (fx= _len8943_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8949_
                                            (cons (cons 'values-count
                                                        (cons _vals8940_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8949_ (cons _len8943_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8949_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8873_)
      (let ((_g88758892_
             (lambda (_g88768889_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88768889_))))
        (let ((_g88748937_
               (lambda (_g88768895_)
                 (if (gx#stx-pair? _g88768895_)
                     (let ((_e88798897_ (gx#stx-e _g88768895_)))
                       (let ((_hd88808900_ (##car _e88798897_))
                             (_tl88818902_ (##cdr _e88798897_)))
                         (if (gx#stx-pair? _tl88818902_)
                             (let ((_e88828905_ (gx#stx-e _tl88818902_)))
                               (let ((_hd88838908_ (##car _e88828905_))
                                     (_tl88848910_ (##cdr _e88828905_)))
                                 (if (gx#stx-pair? _tl88848910_)
                                     (let ((_e88858913_
                                            (gx#stx-e _tl88848910_)))
                                       (let ((_hd88868916_ (##car _e88858913_))
                                             (_tl88878918_
                                              (##cdr _e88858913_)))
                                         (if (gx#stx-null? _tl88878918_)
                                             ((lambda (_L8921_ _L8922_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8922_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8921_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd88868916_
                                              _hd88838908_)
                                             (_g88758892_ _g88768895_))))
                                     (_g88758892_ _g88768895_))))
                             (_g88758892_ _g88768895_))))
                     (_g88758892_ _g88768895_)))))
          (_g88748937_ _stx8873_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8871_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8871_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7404_)
      (let ((_runtime-identifier=?7406_
             (lambda (_id-stx8862_ _sym8863_)
               (let ((_bind88648866_ (gx#resolve-identifier__0 _id-stx8862_)))
                 (if _bind88648866_
                     (let ((_bind8869_ _bind88648866_))
                       (eq? (##structure-ref _bind8869_ '1 gx#binding::t '#f)
                            _sym8863_))
                     '#f)))))
        (let ((_dispatch-case?7407_
               (lambda (_hd8092_ _body8093_)
                 (let ((_form8095_ (cons _hd8092_ (cons _body8093_ '()))))
                   (let ((_g81008257_
                          (lambda (_g81018254_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g81018254_))))
                     (let ((_g80998264_
                            (lambda (_g81018260_) ((lambda () '#f)))))
                       (let ((_g80988405_
                              (lambda (_g81018267_)
                                (if (gx#stx-pair? _g81018267_)
                                    (let ((_e82178269_ (gx#stx-e _g81018267_)))
                                      (let ((_hd82188272_ (##car _e82178269_))
                                            (_tl82198274_ (##cdr _e82178269_)))
                                        (if (gx#stx-pair? _tl82198274_)
                                            (let ((_e82208277_
                                                   (gx#stx-e _tl82198274_)))
                                              (let ((_hd82218280_
                                                     (##car _e82208277_))
                                                    (_tl82228282_
                                                     (##cdr _e82208277_)))
                                                (if (gx#stx-pair? _hd82218280_)
                                                    (let ((_e82238285_
                                                           (gx#stx-e
                                                            _hd82218280_)))
                                                      (let ((_hd82248288_
                                                             (##car _e82238285_))
                                                            (_tl82258290_
                                                             (##cdr _e82238285_)))
                                                        (if (gx#identifier?
                                                             _hd82248288_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd82248288_)
                        (if (gx#stx-pair? _tl82258290_)
                            (let ((_e82268293_ (gx#stx-e _tl82258290_)))
                              (let ((_hd82278296_ (##car _e82268293_))
                                    (_tl82288298_ (##cdr _e82268293_)))
                                (if (gx#stx-pair? _hd82278296_)
                                    (let ((_e82298301_
                                           (gx#stx-e _hd82278296_)))
                                      (let ((_hd82308304_ (##car _e82298301_))
                                            (_tl82318306_ (##cdr _e82298301_)))
                                        (if (gx#identifier? _hd82308304_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd82308304_)
                                                (if (gx#stx-pair? _tl82318306_)
                                                    (let ((_e82328309_
                                                           (gx#stx-e
                                                            _tl82318306_)))
                                                      (let ((_hd82338312_
                                                             (##car _e82328309_))
                                                            (_tl82348314_
                                                             (##cdr _e82328309_)))
                                                        (if (gx#stx-null?
                                                             _tl82348314_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl82288298_)
                        (let ((_e82358317_ (gx#stx-e _tl82288298_)))
                          (let ((_hd82368320_ (##car _e82358317_))
                                (_tl82378322_ (##cdr _e82358317_)))
                            (if (gx#stx-pair? _hd82368320_)
                                (let ((_e82388325_ (gx#stx-e _hd82368320_)))
                                  (let ((_hd82398328_ (##car _e82388325_))
                                        (_tl82408330_ (##cdr _e82388325_)))
                                    (if (gx#identifier? _hd82398328_)
                                        (if (gx#stx-eq? '%#ref _hd82398328_)
                                            (if (gx#stx-pair? _tl82408330_)
                                                (let ((_e82418333_
                                                       (gx#stx-e
                                                        _tl82408330_)))
                                                  (let ((_hd82428336_
                                                         (##car _e82418333_))
                                                        (_tl82438338_
                                                         (##cdr _e82418333_)))
                                                    (if (gx#stx-null?
                                                         _tl82438338_)
                                                        (if (gx#stx-pair?
                                                             _tl82378322_)
                                                            (let ((_e82448341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl82378322_)))
                      (let ((_hd82458344_ (##car _e82448341_))
                            (_tl82468346_ (##cdr _e82448341_)))
                        (if (gx#stx-pair? _hd82458344_)
                            (let ((_e82478349_ (gx#stx-e _hd82458344_)))
                              (let ((_hd82488352_ (##car _e82478349_))
                                    (_tl82498354_ (##cdr _e82478349_)))
                                (if (gx#identifier? _hd82488352_)
                                    (if (gx#stx-eq? '%#ref _hd82488352_)
                                        (if (gx#stx-pair? _tl82498354_)
                                            (let ((_e82508357_
                                                   (gx#stx-e _tl82498354_)))
                                              (let ((_hd82518360_
                                                     (##car _e82508357_))
                                                    (_tl82528362_
                                                     (##cdr _e82508357_)))
                                                (if (gx#stx-null? _tl82528362_)
                                                    (if (gx#stx-null?
                                                         _tl82468346_)
                                                        (if (gx#stx-null?
                                                             _tl82228282_)
                                                            ((lambda (_L8365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8366_
                              _L8367_
                              _L8368_)
                       (if (if (gx#identifier? _L8368_)
                               (if (_runtime-identifier=?7406_ _L8367_ 'apply)
                                   (if (gx#free-identifier=? _L8368_ _L8365_)
                                       (not (gx#free-identifier=?
                                             _L8366_
                                             _L8368_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g80998264_ _g81018267_)))
                     _hd82518360_
                     _hd82428336_
                     _hd82338312_
                     _hd82188272_)
                    (_g80998264_ _g81018267_))
                (_g80998264_ _g81018267_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80998264_
                                                     _g81018267_))))
                                            (_g80998264_ _g81018267_))
                                        (_g80998264_ _g81018267_))
                                    (_g80998264_ _g81018267_))))
                            (_g80998264_ _g81018267_))))
                    (_g80998264_ _g81018267_))
                (_g80998264_ _g81018267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80998264_ _g81018267_))
                                            (_g80998264_ _g81018267_))
                                        (_g80998264_ _g81018267_))))
                                (_g80998264_ _g81018267_))))
                        (_g80998264_ _g81018267_))
                    (_g80998264_ _g81018267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80998264_ _g81018267_))
                                                (_g80998264_ _g81018267_))
                                            (_g80998264_ _g81018267_))))
                                    (_g80998264_ _g81018267_))))
                            (_g80998264_ _g81018267_))
                        (_g80998264_ _g81018267_))
                    (_g80998264_ _g81018267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80998264_
                                                     _g81018267_))))
                                            (_g80998264_ _g81018267_))))
                                    (_g80998264_ _g81018267_)))))
                         (let ((_g80978665_
                                (lambda (_g81018408_)
                                  (if (gx#stx-pair? _g81018408_)
                                      (let ((_e81538410_
                                             (gx#stx-e _g81018408_)))
                                        (let ((_hd81548413_
                                               (##car _e81538410_))
                                              (_tl81558415_
                                               (##cdr _e81538410_)))
                                          (if (gx#stx-pair/null? _hd81548413_)
                                              (if (fx>= (gx#stx-length
                                                         _hd81548413_)
                                                        '0)
                                                  (let ((_g10472_
                                                         (gx#syntax-split-splice
                                                          _hd81548413_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10473_
                                                             (values-count
                                                              _g10472_)))
                                                        (if (not (fx= _g10473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10473_)))
              (let ((_target81568418_ (values-ref _g10472_ 0))
                    (_tl81588420_ (values-ref _g10472_ 1)))
                (letrec ((_loop81598423_
                          (lambda (_hd81578426_ _arg81638428_)
                            (if (gx#stx-pair? _hd81578426_)
                                (let ((_e81608431_ (gx#stx-e _hd81578426_)))
                                  (let ((_lp-hd81618434_ (##car _e81608431_))
                                        (_lp-tl81628436_ (##cdr _e81608431_)))
                                    (_loop81598423_
                                     _lp-tl81628436_
                                     (cons _lp-hd81618434_ _arg81638428_))))
                                (let ((_arg81648439_ (reverse _arg81638428_)))
                                  (if (gx#stx-pair? _tl81558415_)
                                      (let ((_e81658442_
                                             (gx#stx-e _tl81558415_)))
                                        (let ((_hd81668445_
                                               (##car _e81658442_))
                                              (_tl81678447_
                                               (##cdr _e81658442_)))
                                          (if (gx#stx-pair? _hd81668445_)
                                              (let ((_e81688450_
                                                     (gx#stx-e _hd81668445_)))
                                                (let ((_hd81698453_
                                                       (##car _e81688450_))
                                                      (_tl81708455_
                                                       (##cdr _e81688450_)))
                                                  (if (gx#identifier?
                                                       _hd81698453_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd81698453_)
                                                          (if (gx#stx-pair?
                                                               _tl81708455_)
                                                              (let ((_e81718458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl81708455_)))
                        (let ((_hd81728461_ (##car _e81718458_))
                              (_tl81738463_ (##cdr _e81718458_)))
                          (if (gx#stx-pair? _hd81728461_)
                              (let ((_e81748466_ (gx#stx-e _hd81728461_)))
                                (let ((_hd81758469_ (##car _e81748466_))
                                      (_tl81768471_ (##cdr _e81748466_)))
                                  (if (gx#identifier? _hd81758469_)
                                      (if (gx#stx-eq? '%#ref _hd81758469_)
                                          (if (gx#stx-pair? _tl81768471_)
                                              (let ((_e81778474_
                                                     (gx#stx-e _tl81768471_)))
                                                (let ((_hd81788477_
                                                       (##car _e81778474_))
                                                      (_tl81798479_
                                                       (##cdr _e81778474_)))
                                                  (if (gx#stx-null?
                                                       _tl81798479_)
                                                      (if (gx#stx-pair?
                                                           _tl81738463_)
                                                          (let ((_e81808482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl81738463_)))
                    (let ((_hd81818485_ (##car _e81808482_))
                          (_tl81828487_ (##cdr _e81808482_)))
                      (if (gx#stx-pair? _hd81818485_)
                          (let ((_e81838490_ (gx#stx-e _hd81818485_)))
                            (let ((_hd81848493_ (##car _e81838490_))
                                  (_tl81858495_ (##cdr _e81838490_)))
                              (if (gx#identifier? _hd81848493_)
                                  (if (gx#stx-eq? '%#ref _hd81848493_)
                                      (if (gx#stx-pair? _tl81858495_)
                                          (let ((_e81868498_
                                                 (gx#stx-e _tl81858495_)))
                                            (let ((_hd81878501_
                                                   (##car _e81868498_))
                                                  (_tl81888503_
                                                   (##cdr _e81868498_)))
                                              (if (gx#stx-null? _tl81888503_)
                                                  (if (gx#stx-pair/null?
                                                       _tl81828487_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81828487_)
                        '1)
                  (let ((_g10474_ (gx#syntax-split-splice _tl81828487_ '1)))
                    (begin
                      (let ((_g10475_ (values-count _g10474_)))
                        (if (not (fx= _g10475_ 2))
                            (error "Context expects 2 values" _g10475_)))
                      (let ((_target81898506_ (values-ref _g10474_ 0))
                            (_tl81918508_ (values-ref _g10474_ 1)))
                        (if (gx#stx-pair? _tl81918508_)
                            (let ((_e81988511_ (gx#stx-e _tl81918508_)))
                              (let ((_hd81998514_ (##car _e81988511_))
                                    (_tl82008516_ (##cdr _e81988511_)))
                                (if (gx#stx-pair? _hd81998514_)
                                    (let ((_e82018519_
                                           (gx#stx-e _hd81998514_)))
                                      (let ((_hd82028522_ (##car _e82018519_))
                                            (_tl82038524_ (##cdr _e82018519_)))
                                        (if (gx#identifier? _hd82028522_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd82028522_)
                                                (if (gx#stx-pair? _tl82038524_)
                                                    (let ((_e82048527_
                                                           (gx#stx-e
                                                            _tl82038524_)))
                                                      (let ((_hd82058530_
                                                             (##car _e82048527_))
                                                            (_tl82068532_
                                                             (##cdr _e82048527_)))
                                                        (if (gx#stx-null?
                                                             _tl82068532_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl82008516_)
                        (letrec ((_loop81928535_
                                  (lambda (_hd81908538_ _xarg81968540_)
                                    (if (gx#stx-pair? _hd81908538_)
                                        (let ((_e81938543_
                                               (gx#stx-e _hd81908538_)))
                                          (let ((_lp-hd81948546_
                                                 (##car _e81938543_))
                                                (_lp-tl81958548_
                                                 (##cdr _e81938543_)))
                                            (if (gx#stx-pair? _lp-hd81948546_)
                                                (let ((_e82078551_
                                                       (gx#stx-e
                                                        _lp-hd81948546_)))
                                                  (let ((_hd82088554_
                                                         (##car _e82078551_))
                                                        (_tl82098556_
                                                         (##cdr _e82078551_)))
                                                    (if (gx#identifier?
                                                         _hd82088554_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd82088554_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl82098556_)
                        (let ((_e82108559_ (gx#stx-e _tl82098556_)))
                          (let ((_hd82118562_ (##car _e82108559_))
                                (_tl82128564_ (##cdr _e82108559_)))
                            (if (gx#stx-null? _tl82128564_)
                                (_loop81928535_
                                 _lp-tl81958548_
                                 (cons _hd82118562_ _xarg81968540_))
                                (_g80988405_ _g81018408_))))
                        (_g80988405_ _g81018408_))
                    (_g80988405_ _g81018408_))
                (_g80988405_ _g81018408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80988405_ _g81018408_))))
                                        (let ((_xarg81978567_
                                               (reverse _xarg81968540_)))
                                          (if (gx#stx-null? _tl81678447_)
                                              ((lambda (_L8570_
                                                        _L8571_
                                                        _L8572_
                                                        _L8573_
                                                        _L8574_
                                                        _L8575_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g86188621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g86198623_)
                              (cons _g86188621_ _g86198623_))
                            '()
                            _L8575_)))
                 (if (gx#identifier? _L8574_)
                     (if (_runtime-identifier=?7406_ _L8573_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g86258628_
                                                             _g86268630_)
                                                      (cons _g86258628_
                                                            _g86268630_))
                                                    '()
                                                    _L8575_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g86328635_
                                                             _g86338637_)
                                                      (cons _g86328635_
                                                            _g86338637_))
                                                    '()
                                                    _L8571_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g86398642_
                                                            _g86408644_)
                                                     (cons _g86398642_
                                                           _g86408644_))
                                                   '()
                                                   _L8575_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g86468649_
                                                            _g86478651_)
                                                     (cons _g86468649_
                                                           _g86478651_))
                                                   '()
                                                   _L8571_)))
                                 (if (gx#free-identifier=? _L8574_ _L8570_)
                                     (not (find (lambda (_g86538655_)
                                                  (gx#free-identifier=?
                                                   _g86538655_
                                                   _L8572_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g86578660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g86588662_)
                    (cons _g86578660_ _g86588662_))
                  (cons _L8574_ '())
                  _L8575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g80988405_
                                                      _g81018408_)))
                                               _hd82058530_
                                               _xarg81978567_
                                               _hd81878501_
                                               _hd81788477_
                                               _tl81588420_
                                               _arg81648439_)
                                              (_g80988405_ _g81018408_)))))))
                          (_loop81928535_ _target81898506_ '()))
                        (_g80988405_ _g81018408_))
                    (_g80988405_ _g81018408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80988405_ _g81018408_))
                                                (_g80988405_ _g81018408_))
                                            (_g80988405_ _g81018408_))))
                                    (_g80988405_ _g81018408_))))
                            (_g80988405_ _g81018408_)))))
                  (_g80988405_ _g81018408_))
              (_g80988405_ _g81018408_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g80988405_ _g81018408_))))
                                          (_g80988405_ _g81018408_))
                                      (_g80988405_ _g81018408_))
                                  (_g80988405_ _g81018408_))))
                          (_g80988405_ _g81018408_))))
                  (_g80988405_ _g81018408_))
              (_g80988405_ _g81018408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g80988405_ _g81018408_))
                                          (_g80988405_ _g81018408_))
                                      (_g80988405_ _g81018408_))))
                              (_g80988405_ _g81018408_))))
                      (_g80988405_ _g81018408_))
                  (_g80988405_ _g81018408_))
              (_g80988405_ _g81018408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g80988405_ _g81018408_))))
                                      (_g80988405_ _g81018408_)))))))
                  (_loop81598423_ _target81568418_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g80988405_ _g81018408_))
                                              (_g80988405_ _g81018408_))))
                                      (_g80988405_ _g81018408_)))))
                           (let ((_g80968859_
                                  (lambda (_g81018668_)
                                    (if (gx#stx-pair? _g81018668_)
                                        (let ((_e81058670_
                                               (gx#stx-e _g81018668_)))
                                          (let ((_hd81068673_
                                                 (##car _e81058670_))
                                                (_tl81078675_
                                                 (##cdr _e81058670_)))
                                            (if (gx#stx-pair/null?
                                                 _hd81068673_)
                                                (if (fx>= (gx#stx-length
                                                           _hd81068673_)
                                                          '0)
                                                    (let ((_g10476_
                                                           (gx#syntax-split-splice
                                                            _hd81068673_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10477_
                                                               (values-count
                                                                _g10476_)))
                                                          (if (not (fx= _g10477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10477_)))
                (let ((_target81088678_ (values-ref _g10476_ 0))
                      (_tl81108680_ (values-ref _g10476_ 1)))
                  (if (gx#stx-null? _tl81108680_)
                      (letrec ((_loop81118683_
                                (lambda (_hd81098686_ _arg81158688_)
                                  (if (gx#stx-pair? _hd81098686_)
                                      (let ((_e81128691_
                                             (gx#stx-e _hd81098686_)))
                                        (let ((_lp-hd81138694_
                                               (##car _e81128691_))
                                              (_lp-tl81148696_
                                               (##cdr _e81128691_)))
                                          (_loop81118683_
                                           _lp-tl81148696_
                                           (cons _lp-hd81138694_
                                                 _arg81158688_))))
                                      (let ((_arg81168699_
                                             (reverse _arg81158688_)))
                                        (if (gx#stx-pair? _tl81078675_)
                                            (let ((_e81178702_
                                                   (gx#stx-e _tl81078675_)))
                                              (let ((_hd81188705_
                                                     (##car _e81178702_))
                                                    (_tl81198707_
                                                     (##cdr _e81178702_)))
                                                (if (gx#stx-pair? _hd81188705_)
                                                    (let ((_e81208710_
                                                           (gx#stx-e
                                                            _hd81188705_)))
                                                      (let ((_hd81218713_
                                                             (##car _e81208710_))
                                                            (_tl81228715_
                                                             (##cdr _e81208710_)))
                                                        (if (gx#identifier?
                                                             _hd81218713_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd81218713_)
                        (if (gx#stx-pair? _tl81228715_)
                            (let ((_e81238718_ (gx#stx-e _tl81228715_)))
                              (let ((_hd81248721_ (##car _e81238718_))
                                    (_tl81258723_ (##cdr _e81238718_)))
                                (if (gx#stx-pair? _hd81248721_)
                                    (let ((_e81268726_
                                           (gx#stx-e _hd81248721_)))
                                      (let ((_hd81278729_ (##car _e81268726_))
                                            (_tl81288731_ (##cdr _e81268726_)))
                                        (if (gx#identifier? _hd81278729_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd81278729_)
                                                (if (gx#stx-pair? _tl81288731_)
                                                    (let ((_e81298734_
                                                           (gx#stx-e
                                                            _tl81288731_)))
                                                      (let ((_hd81308737_
                                                             (##car _e81298734_))
                                                            (_tl81318739_
                                                             (##cdr _e81298734_)))
                                                        (if (gx#stx-null?
                                                             _tl81318739_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81258723_)
                        (if (fx>= (gx#stx-length _tl81258723_) '0)
                            (let ((_g10478_
                                   (gx#syntax-split-splice _tl81258723_ '0)))
                              (begin
                                (let ((_g10479_ (values-count _g10478_)))
                                  (if (not (fx= _g10479_ 2))
                                      (error "Context expects 2 values"
                                             _g10479_)))
                                (let ((_target81328742_
                                       (values-ref _g10478_ 0))
                                      (_tl81348744_ (values-ref _g10478_ 1)))
                                  (if (gx#stx-null? _tl81348744_)
                                      (letrec ((_loop81358747_
                                                (lambda (_hd81338750_
                                                         _xarg81398752_)
                                                  (if (gx#stx-pair?
                                                       _hd81338750_)
                                                      (let ((_e81368755_
                                                             (gx#stx-e
                                                              _hd81338750_)))
                                                        (let ((_lp-hd81378758_
                                                               (##car _e81368755_))
                                                              (_lp-tl81388760_
                                                               (##cdr _e81368755_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd81378758_)
                                                              (let ((_e81418763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd81378758_)))
                        (let ((_hd81428766_ (##car _e81418763_))
                              (_tl81438768_ (##cdr _e81418763_)))
                          (if (gx#identifier? _hd81428766_)
                              (if (gx#stx-eq? '%#ref _hd81428766_)
                                  (if (gx#stx-pair? _tl81438768_)
                                      (let ((_e81448771_
                                             (gx#stx-e _tl81438768_)))
                                        (let ((_hd81458774_
                                               (##car _e81448771_))
                                              (_tl81468776_
                                               (##cdr _e81448771_)))
                                          (if (gx#stx-null? _tl81468776_)
                                              (_loop81358747_
                                               _lp-tl81388760_
                                               (cons _hd81458774_
                                                     _xarg81398752_))
                                              (_g80978665_ _g81018668_))))
                                      (_g80978665_ _g81018668_))
                                  (_g80978665_ _g81018668_))
                              (_g80978665_ _g81018668_))))
                      (_g80978665_ _g81018668_))))
              (let ((_xarg81408779_ (reverse _xarg81398752_)))
                (if (gx#stx-null? _tl81198707_)
                    ((lambda (_L8782_ _L8783_ _L8784_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g88128815_ _g88138817_)
                                            (cons _g88128815_ _g88138817_))
                                          '()
                                          _L8784_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g88198822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g88208824_)
                    (cons _g88198822_ _g88208824_))
                  '()
                  _L8784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g88268829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g88278831_)
                    (cons _g88268829_ _g88278831_))
                  '()
                  _L8782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g88338836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g88348838_)
                   (cons _g88338836_ _g88348838_))
                 '()
                 _L8784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g88408843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g88418845_)
                   (cons _g88408843_ _g88418845_))
                 '()
                 _L8782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g88478849_)
                                                    (gx#free-identifier=?
                                                     _g88478849_
                                                     _L8783_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g88518854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g88528856_)
                      (cons _g88518854_ _g88528856_))
                    '()
                    _L8784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g80978665_ _g81018668_)))
                     _xarg81408779_
                     _hd81308737_
                     _arg81168699_)
                    (_g80978665_ _g81018668_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop81358747_ _target81328742_ '()))
                                      (_g80978665_ _g81018668_)))))
                            (_g80978665_ _g81018668_))
                        (_g80978665_ _g81018668_))
                    (_g80978665_ _g81018668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80978665_ _g81018668_))
                                                (_g80978665_ _g81018668_))
                                            (_g80978665_ _g81018668_))))
                                    (_g80978665_ _g81018668_))))
                            (_g80978665_ _g81018668_))
                        (_g80978665_ _g81018668_))
                    (_g80978665_ _g81018668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80978665_
                                                     _g81018668_))))
                                            (_g80978665_ _g81018668_)))))))
                        (_loop81118683_ _target81088678_ '()))
                      (_g80978665_ _g81018668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80978665_ _g81018668_))
                                                (_g80978665_ _g81018668_))))
                                        (_g80978665_ _g81018668_)))))
                             (_g80968859_ _form8095_))))))))))
          (let ((_dispatch-case-e7408_
                 (lambda (_hd7556_ _body7557_)
                   (let ((_form7559_ (cons _hd7556_ (cons _body7557_ '()))))
                     (let ((_g75637687_
                            (lambda (_g75647684_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g75647684_))))
                       (let ((_g75627805_
                              (lambda (_g75647690_)
                                (if (gx#stx-pair? _g75647690_)
                                    (let ((_e76537692_ (gx#stx-e _g75647690_)))
                                      (let ((_hd76547695_ (##car _e76537692_))
                                            (_tl76557697_ (##cdr _e76537692_)))
                                        (if (gx#stx-pair? _tl76557697_)
                                            (let ((_e76567700_
                                                   (gx#stx-e _tl76557697_)))
                                              (let ((_hd76577703_
                                                     (##car _e76567700_))
                                                    (_tl76587705_
                                                     (##cdr _e76567700_)))
                                                (if (gx#stx-pair? _hd76577703_)
                                                    (let ((_e76597708_
                                                           (gx#stx-e
                                                            _hd76577703_)))
                                                      (let ((_hd76607711_
                                                             (##car _e76597708_))
                                                            (_tl76617713_
                                                             (##cdr _e76597708_)))
                                                        (if (gx#identifier?
                                                             _hd76607711_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd76607711_)
                        (if (gx#stx-pair? _tl76617713_)
                            (let ((_e76627716_ (gx#stx-e _tl76617713_)))
                              (let ((_hd76637719_ (##car _e76627716_))
                                    (_tl76647721_ (##cdr _e76627716_)))
                                (if (gx#stx-pair? _hd76637719_)
                                    (let ((_e76657724_
                                           (gx#stx-e _hd76637719_)))
                                      (let ((_hd76667727_ (##car _e76657724_))
                                            (_tl76677729_ (##cdr _e76657724_)))
                                        (if (gx#identifier? _hd76667727_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd76667727_)
                                                (if (gx#stx-pair? _tl76677729_)
                                                    (let ((_e76687732_
                                                           (gx#stx-e
                                                            _tl76677729_)))
                                                      (let ((_hd76697735_
                                                             (##car _e76687732_))
                                                            (_tl76707737_
                                                             (##cdr _e76687732_)))
                                                        (if (gx#stx-null?
                                                             _tl76707737_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76647721_)
                        (let ((_e76717740_ (gx#stx-e _tl76647721_)))
                          (let ((_hd76727743_ (##car _e76717740_))
                                (_tl76737745_ (##cdr _e76717740_)))
                            (if (gx#stx-pair? _hd76727743_)
                                (let ((_e76747748_ (gx#stx-e _hd76727743_)))
                                  (let ((_hd76757751_ (##car _e76747748_))
                                        (_tl76767753_ (##cdr _e76747748_)))
                                    (if (gx#identifier? _hd76757751_)
                                        (if (gx#stx-eq? '%#ref _hd76757751_)
                                            (if (gx#stx-pair? _tl76767753_)
                                                (let ((_e76777756_
                                                       (gx#stx-e
                                                        _tl76767753_)))
                                                  (let ((_hd76787759_
                                                         (##car _e76777756_))
                                                        (_tl76797761_
                                                         (##cdr _e76777756_)))
                                                    (if (gx#stx-null?
                                                         _tl76797761_)
                                                        (if (gx#stx-pair?
                                                             _tl76737745_)
                                                            (let ((_e76807764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl76737745_)))
                      (let ((_hd76817767_ (##car _e76807764_))
                            (_tl76827769_ (##cdr _e76807764_)))
                        (if (gx#stx-null? _tl76827769_)
                            (if (gx#stx-null? _tl76587705_)
                                ((lambda (_L7772_ _L7773_ _L7774_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7772_ '()))))
                                 _hd76787759_
                                 _hd76697735_
                                 _hd76547695_)
                                (_g75637687_ _g75647690_))
                            (_g75637687_ _g75647690_))))
                    (_g75637687_ _g75647690_))
                (_g75637687_ _g75647690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g75637687_ _g75647690_))
                                            (_g75637687_ _g75647690_))
                                        (_g75637687_ _g75647690_))))
                                (_g75637687_ _g75647690_))))
                        (_g75637687_ _g75647690_))
                    (_g75637687_ _g75647690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75637687_ _g75647690_))
                                                (_g75637687_ _g75647690_))
                                            (_g75637687_ _g75647690_))))
                                    (_g75637687_ _g75647690_))))
                            (_g75637687_ _g75647690_))
                        (_g75637687_ _g75647690_))
                    (_g75637687_ _g75647690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75637687_
                                                     _g75647690_))))
                                            (_g75637687_ _g75647690_))))
                                    (_g75637687_ _g75647690_)))))
                         (let ((_g75617941_
                                (lambda (_g75647808_)
                                  (if (gx#stx-pair? _g75647808_)
                                      (let ((_e76147810_
                                             (gx#stx-e _g75647808_)))
                                        (let ((_hd76157813_
                                               (##car _e76147810_))
                                              (_tl76167815_
                                               (##cdr _e76147810_)))
                                          (if (gx#stx-pair/null? _hd76157813_)
                                              (if (fx>= (gx#stx-length
                                                         _hd76157813_)
                                                        '0)
                                                  (let ((_g10466_
                                                         (gx#syntax-split-splice
                                                          _hd76157813_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10467_
                                                             (values-count
                                                              _g10466_)))
                                                        (if (not (fx= _g10467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10467_)))
              (let ((_target76177818_ (values-ref _g10466_ 0))
                    (_tl76197820_ (values-ref _g10466_ 1)))
                (letrec ((_loop76207823_
                          (lambda (_hd76187826_ _arg76247828_)
                            (if (gx#stx-pair? _hd76187826_)
                                (let ((_e76217831_ (gx#stx-e _hd76187826_)))
                                  (let ((_lp-hd76227834_ (##car _e76217831_))
                                        (_lp-tl76237836_ (##cdr _e76217831_)))
                                    (_loop76207823_
                                     _lp-tl76237836_
                                     (cons _lp-hd76227834_ _arg76247828_))))
                                (let ((_arg76257839_ (reverse _arg76247828_)))
                                  (if (gx#stx-pair? _tl76167815_)
                                      (let ((_e76267842_
                                             (gx#stx-e _tl76167815_)))
                                        (let ((_hd76277845_
                                               (##car _e76267842_))
                                              (_tl76287847_
                                               (##cdr _e76267842_)))
                                          (if (gx#stx-pair? _hd76277845_)
                                              (let ((_e76297850_
                                                     (gx#stx-e _hd76277845_)))
                                                (let ((_hd76307853_
                                                       (##car _e76297850_))
                                                      (_tl76317855_
                                                       (##cdr _e76297850_)))
                                                  (if (gx#identifier?
                                                       _hd76307853_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd76307853_)
                                                          (if (gx#stx-pair?
                                                               _tl76317855_)
                                                              (let ((_e76327858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl76317855_)))
                        (let ((_hd76337861_ (##car _e76327858_))
                              (_tl76347863_ (##cdr _e76327858_)))
                          (if (gx#stx-pair? _hd76337861_)
                              (let ((_e76357866_ (gx#stx-e _hd76337861_)))
                                (let ((_hd76367869_ (##car _e76357866_))
                                      (_tl76377871_ (##cdr _e76357866_)))
                                  (if (gx#identifier? _hd76367869_)
                                      (if (gx#stx-eq? '%#ref _hd76367869_)
                                          (if (gx#stx-pair? _tl76377871_)
                                              (let ((_e76387874_
                                                     (gx#stx-e _tl76377871_)))
                                                (let ((_hd76397877_
                                                       (##car _e76387874_))
                                                      (_tl76407879_
                                                       (##cdr _e76387874_)))
                                                  (if (gx#stx-null?
                                                       _tl76407879_)
                                                      (if (gx#stx-pair?
                                                           _tl76347863_)
                                                          (let ((_e76417882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl76347863_)))
                    (let ((_hd76427885_ (##car _e76417882_))
                          (_tl76437887_ (##cdr _e76417882_)))
                      (if (gx#stx-pair? _hd76427885_)
                          (let ((_e76447890_ (gx#stx-e _hd76427885_)))
                            (let ((_hd76457893_ (##car _e76447890_))
                                  (_tl76467895_ (##cdr _e76447890_)))
                              (if (gx#identifier? _hd76457893_)
                                  (if (gx#stx-eq? '%#ref _hd76457893_)
                                      (if (gx#stx-pair? _tl76467895_)
                                          (let ((_e76477898_
                                                 (gx#stx-e _tl76467895_)))
                                            (let ((_hd76487901_
                                                   (##car _e76477898_))
                                                  (_tl76497903_
                                                   (##cdr _e76477898_)))
                                              (if (gx#stx-null? _tl76497903_)
                                                  (if (gx#stx-null?
                                                       _tl76287847_)
                                                      ((lambda (_L7906_
                                                                _L7907_
                                                                _L7908_
                                                                _L7909_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7906_ '()))))
               _hd76487901_
               _hd76397877_
               _tl76197820_
               _arg76257839_)
              (_g75627805_ _g75647808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75627805_ _g75647808_))))
                                          (_g75627805_ _g75647808_))
                                      (_g75627805_ _g75647808_))
                                  (_g75627805_ _g75647808_))))
                          (_g75627805_ _g75647808_))))
                  (_g75627805_ _g75647808_))
              (_g75627805_ _g75647808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g75627805_ _g75647808_))
                                          (_g75627805_ _g75647808_))
                                      (_g75627805_ _g75647808_))))
                              (_g75627805_ _g75647808_))))
                      (_g75627805_ _g75647808_))
                  (_g75627805_ _g75647808_))
              (_g75627805_ _g75647808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g75627805_ _g75647808_))))
                                      (_g75627805_ _g75647808_)))))))
                  (_loop76207823_ _target76177818_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75627805_ _g75647808_))
                                              (_g75627805_ _g75647808_))))
                                      (_g75627805_ _g75647808_)))))
                           (let ((_g75608089_
                                  (lambda (_g75647944_)
                                    (if (gx#stx-pair? _g75647944_)
                                        (let ((_e75687946_
                                               (gx#stx-e _g75647944_)))
                                          (let ((_hd75697949_
                                                 (##car _e75687946_))
                                                (_tl75707951_
                                                 (##cdr _e75687946_)))
                                            (if (gx#stx-pair/null?
                                                 _hd75697949_)
                                                (if (fx>= (gx#stx-length
                                                           _hd75697949_)
                                                          '0)
                                                    (let ((_g10468_
                                                           (gx#syntax-split-splice
                                                            _hd75697949_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10469_
                                                               (values-count
                                                                _g10468_)))
                                                          (if (not (fx= _g10469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10469_)))
                (let ((_target75717954_ (values-ref _g10468_ 0))
                      (_tl75737956_ (values-ref _g10468_ 1)))
                  (if (gx#stx-null? _tl75737956_)
                      (letrec ((_loop75747959_
                                (lambda (_hd75727962_ _arg75787964_)
                                  (if (gx#stx-pair? _hd75727962_)
                                      (let ((_e75757967_
                                             (gx#stx-e _hd75727962_)))
                                        (let ((_lp-hd75767970_
                                               (##car _e75757967_))
                                              (_lp-tl75777972_
                                               (##cdr _e75757967_)))
                                          (_loop75747959_
                                           _lp-tl75777972_
                                           (cons _lp-hd75767970_
                                                 _arg75787964_))))
                                      (let ((_arg75797975_
                                             (reverse _arg75787964_)))
                                        (if (gx#stx-pair? _tl75707951_)
                                            (let ((_e75807978_
                                                   (gx#stx-e _tl75707951_)))
                                              (let ((_hd75817981_
                                                     (##car _e75807978_))
                                                    (_tl75827983_
                                                     (##cdr _e75807978_)))
                                                (if (gx#stx-pair? _hd75817981_)
                                                    (let ((_e75837986_
                                                           (gx#stx-e
                                                            _hd75817981_)))
                                                      (let ((_hd75847989_
                                                             (##car _e75837986_))
                                                            (_tl75857991_
                                                             (##cdr _e75837986_)))
                                                        (if (gx#identifier?
                                                             _hd75847989_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd75847989_)
                        (if (gx#stx-pair? _tl75857991_)
                            (let ((_e75867994_ (gx#stx-e _tl75857991_)))
                              (let ((_hd75877997_ (##car _e75867994_))
                                    (_tl75887999_ (##cdr _e75867994_)))
                                (if (gx#stx-pair? _hd75877997_)
                                    (let ((_e75898002_
                                           (gx#stx-e _hd75877997_)))
                                      (let ((_hd75908005_ (##car _e75898002_))
                                            (_tl75918007_ (##cdr _e75898002_)))
                                        (if (gx#identifier? _hd75908005_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd75908005_)
                                                (if (gx#stx-pair? _tl75918007_)
                                                    (let ((_e75928010_
                                                           (gx#stx-e
                                                            _tl75918007_)))
                                                      (let ((_hd75938013_
                                                             (##car _e75928010_))
                                                            (_tl75948015_
                                                             (##cdr _e75928010_)))
                                                        (if (gx#stx-null?
                                                             _tl75948015_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75887999_)
                        (if (fx>= (gx#stx-length _tl75887999_) '0)
                            (let ((_g10470_
                                   (gx#syntax-split-splice _tl75887999_ '0)))
                              (begin
                                (let ((_g10471_ (values-count _g10470_)))
                                  (if (not (fx= _g10471_ 2))
                                      (error "Context expects 2 values"
                                             _g10471_)))
                                (let ((_target75958018_
                                       (values-ref _g10470_ 0))
                                      (_tl75978020_ (values-ref _g10470_ 1)))
                                  (if (gx#stx-null? _tl75978020_)
                                      (letrec ((_loop75988023_
                                                (lambda (_hd75968026_
                                                         _xarg76028028_)
                                                  (if (gx#stx-pair?
                                                       _hd75968026_)
                                                      (let ((_e75998031_
                                                             (gx#stx-e
                                                              _hd75968026_)))
                                                        (let ((_lp-hd76008034_
                                                               (##car _e75998031_))
                                                              (_lp-tl76018036_
                                                               (##cdr _e75998031_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd76008034_)
                                                              (let ((_e76048039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd76008034_)))
                        (let ((_hd76058042_ (##car _e76048039_))
                              (_tl76068044_ (##cdr _e76048039_)))
                          (if (gx#identifier? _hd76058042_)
                              (if (gx#stx-eq? '%#ref _hd76058042_)
                                  (if (gx#stx-pair? _tl76068044_)
                                      (let ((_e76078047_
                                             (gx#stx-e _tl76068044_)))
                                        (let ((_hd76088050_
                                               (##car _e76078047_))
                                              (_tl76098052_
                                               (##cdr _e76078047_)))
                                          (if (gx#stx-null? _tl76098052_)
                                              (_loop75988023_
                                               _lp-tl76018036_
                                               (cons _hd76088050_
                                                     _xarg76028028_))
                                              (_g75617941_ _g75647944_))))
                                      (_g75617941_ _g75647944_))
                                  (_g75617941_ _g75647944_))
                              (_g75617941_ _g75647944_))))
                      (_g75617941_ _g75647944_))))
              (let ((_xarg76038055_ (reverse _xarg76028028_)))
                (if (gx#stx-null? _tl75827983_)
                    ((lambda (_L8058_ _L8059_ _L8060_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L8059_ '()))))
                     _xarg76038055_
                     _hd75938013_
                     _arg75797975_)
                    (_g75617941_ _g75647944_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop75988023_ _target75958018_ '()))
                                      (_g75617941_ _g75647944_)))))
                            (_g75617941_ _g75647944_))
                        (_g75617941_ _g75647944_))
                    (_g75617941_ _g75647944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75617941_ _g75647944_))
                                                (_g75617941_ _g75647944_))
                                            (_g75617941_ _g75647944_))))
                                    (_g75617941_ _g75647944_))))
                            (_g75617941_ _g75647944_))
                        (_g75617941_ _g75647944_))
                    (_g75617941_ _g75647944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75617941_
                                                     _g75647944_))))
                                            (_g75617941_ _g75647944_)))))))
                        (_loop75747959_ _target75717954_ '()))
                      (_g75617941_ _g75647944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75617941_ _g75647944_))
                                                (_g75617941_ _g75647944_))))
                                        (_g75617941_ _g75647944_)))))
                             (_g75608089_ _form7559_)))))))))
            (let ((_generate17409_
                   (lambda (_args7544_ _arglen7545_ _hd7546_ _body7547_)
                     (let ((_len7549_ (gx#stx-length _hd7546_)))
                       (let ((_condition7551_
                              (if (gx#stx-list? _hd7546_)
                                  (cons 'fx=
                                        (cons _arglen7545_
                                              (cons _len7549_ '())))
                                  (if (> _len7549_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7545_
                                                  (cons _len7549_ '())))
                                      '#t))))
                         (let ((_dispatch7553_
                                (if (_dispatch-case?7407_ _hd7546_ _body7547_)
                                    (_dispatch-case-e7408_ _hd7546_ _body7547_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7546_)
                                                (cons (gxc#compile-e
                                                       _body7547_)
                                                      '()))))))
                           (let ()
                             (cons _condition7551_
                                   (cons (cons 'apply
                                               (cons _dispatch7553_
                                                     (cons _args7544_ '())))
                                         '())))))))))
              (let ((_g74117439_
                     (lambda (_g74127436_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g74127436_))))
                (let ((_g74107541_
                       (lambda (_g74127442_)
                         (if (gx#stx-pair? _g74127442_)
                             (let ((_e74157444_ (gx#stx-e _g74127442_)))
                               (let ((_hd74167447_ (##car _e74157444_))
                                     (_tl74177449_ (##cdr _e74157444_)))
                                 (if (gx#stx-pair/null? _tl74177449_)
                                     (if (fx>= (gx#stx-length _tl74177449_) '0)
                                         (let ((_g10464_
                                                (gx#syntax-split-splice
                                                 _tl74177449_
                                                 '0)))
                                           (begin
                                             (let ((_g10465_
                                                    (values-count _g10464_)))
                                               (if (not (fx= _g10465_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10465_)))
                                             (let ((_target74187452_
                                                    (values-ref _g10464_ 0))
                                                   (_tl74207454_
                                                    (values-ref _g10464_ 1)))
                                               (if (gx#stx-null? _tl74207454_)
                                                   (letrec ((_loop74217457_
                                                             (lambda (_hd74197460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body74257462_
                              _hd74267464_)
                       (if (gx#stx-pair? _hd74197460_)
                           (let ((_e74227467_ (gx#stx-e _hd74197460_)))
                             (let ((_lp-hd74237470_ (##car _e74227467_))
                                   (_lp-tl74247472_ (##cdr _e74227467_)))
                               (if (gx#stx-pair? _lp-hd74237470_)
                                   (let ((_e74297475_
                                          (gx#stx-e _lp-hd74237470_)))
                                     (let ((_hd74307478_ (##car _e74297475_))
                                           (_tl74317480_ (##cdr _e74297475_)))
                                       (if (gx#stx-pair? _tl74317480_)
                                           (let ((_e74327483_
                                                  (gx#stx-e _tl74317480_)))
                                             (let ((_hd74337486_
                                                    (##car _e74327483_))
                                                   (_tl74347488_
                                                    (##cdr _e74327483_)))
                                               (if (gx#stx-null? _tl74347488_)
                                                   (_loop74217457_
                                                    _lp-tl74247472_
                                                    (cons _hd74337486_
                                                          _body74257462_)
                                                    (cons _hd74307478_
                                                          _hd74267464_))
                                                   (_g74117439_ _g74127442_))))
                                           (_g74117439_ _g74127442_))))
                                   (_g74117439_ _g74127442_))))
                           (let ((_body74277491_ (reverse _body74257462_))
                                 (_hd74287493_ (reverse _hd74267464_)))
                             ((lambda (_L7496_ _L7497_)
                                (let ((_args7516_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7517_
                                       (gxc#generate-runtime-temporary__0))
                                      (_name7518_
                                       (let ((_$e7513_
                                              (table-ref
                                               (gxc#current-compile-runtime-names)
                                               _stx7404_
                                               '#f)))
                                         (if _$e7513_
                                             _$e7513_
                                             ''case-lambda-dispatch))))
                                  (cons 'lambda
                                        (cons _args7516_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7516_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons '##raise-wrong-number-of-arguments-exception
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _name7518_ (cons _args7516_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g75197522_
                                                          _g75207524_)
                                                   (_generate17409_
                                                    _args7516_
                                                    _arglen7517_
                                                    _g75197522_
                                                    _g75207524_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g75267529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g75277531_)
                     (cons _g75267529_ _g75277531_))
                   '()
                   _L7497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g75337536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g75347538_)
                     (cons _g75337536_ _g75347538_))
                   '()
                   _L7496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body74277491_
                              _hd74287493_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop74217457_
                                                      _target74187452_
                                                      '()
                                                      '()))
                                                   (_g74117439_
                                                    _g74127442_)))))
                                         (_g74117439_ _g74127442_))
                                     (_g74117439_ _g74127442_))))
                             (_g74117439_ _g74127442_)))))
                  (_g74107541_ _stx7404_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7084
      (lambda (_stx7086_ _compiled-body?7087_)
        (let ((_generate-simple7089_
               (lambda (_hd7391_ _body7392_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7391_
                  _body7392_
                  _compiled-body?7087_))))
          (let ((_generate-values-post7091_
                 (lambda (_post7163_ _body7164_)
                   ((letrec ((_lp7166_
                              (lambda (_rest7168_ _body7169_)
                                (let ((_rest71707178_ _rest7168_))
                                  (let ((_E71737182_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest71707178_))))
                                    (let ((_else71727186_
                                           (lambda () _body7169_)))
                                      (let ((_K71747192_
                                             (lambda (_rest7189_ _bind7190_)
                                               (_lp7166_
                                                _rest7189_
                                                (cons 'let
                                                      (cons _bind7190_
                                                            (cons _body7169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest71707178_)
                                            (let ((_hd71757195_
                                                   (##car _rest71707178_))
                                                  (_tl71767197_
                                                   (##cdr _rest71707178_)))
                                              (let ((_bind7200_ _hd71757195_))
                                                (let ((_rest7202_
                                                       _tl71767197_))
                                                  (_K71747192_
                                                   _rest7202_
                                                   _bind7200_))))
                                            (_else71727186_)))))))))
                      _lp7166_)
                    _post7163_
                    _body7164_))))
            (let ((_generate-values-check7092_
                   (lambda (_check7160_ _body7161_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body7161_ '())
                                   (reverse _check7160_))))))
              (let ((_generate-values7090_
                     (lambda (_hd7204_ _body7205_)
                       ((letrec ((_lp7207_
                                  (lambda (_rest7209_
                                           _bind7210_
                                           _check7211_
                                           _post7212_)
                                    (let ((_g72157226_
                                           (lambda (_g72167223_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g72167223_))))
                                      (let ((_g72147240_
                                             (lambda (_g72167229_)
                                               ((lambda ()
                                                  (let ((_body7233_
                                                         (if _compiled-body?7087_
                                                             _body7205_
                                                             (gxc#compile-e
                                                              _body7205_))))
                                                    (let ((_body7235_
                                                           (_generate-values-post7091_
                                                            _post7212_
                                                            _body7233_)))
                                                      (let ((_body7237_
                                                             (_generate-values-check7092_
                                                              _check7211_
                                                              _body7235_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind7210_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body7237_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g72137388_
                                               (lambda (_g72167243_)
                                                 (if (gx#stx-pair? _g72167243_)
                                                     (let ((_e72197245_
                                                            (gx#stx-e
                                                             _g72167243_)))
                                                       (let ((_hd72207248_
                                                              (##car _e72197245_))
                                                             (_tl72217250_
                                                              (##cdr _e72197245_)))
                                                         ((lambda (_L7253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7254_)
                    (let ((_g72697294_
                           (lambda (_g72707291_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g72707291_))))
                      (let ((_g72687338_
                             (lambda (_g72707297_)
                               (if (gx#stx-pair? _g72707297_)
                                   (let ((_e72847299_ (gx#stx-e _g72707297_)))
                                     (let ((_hd72857302_ (##car _e72847299_))
                                           (_tl72867304_ (##cdr _e72847299_)))
                                       (if (gx#stx-pair? _tl72867304_)
                                           (let ((_e72877307_
                                                  (gx#stx-e _tl72867304_)))
                                             (let ((_hd72887310_
                                                    (##car _e72877307_))
                                                   (_tl72897312_
                                                    (##cdr _e72877307_)))
                                               (if (gx#stx-null? _tl72897312_)
                                                   ((lambda (_L7315_ _L7316_)
                                                      (let ((_vals7329_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7331_
                                                               (gxc#compile-e
                                                                _L7315_)))
                                                          (let ((_check-values7333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7329_
                          _L7316_)))
                    (let ((_refs7335_
                           (gxc#generate-runtime-let-values-bind
                            _vals7329_
                            _L7316_)))
                      (let ()
                        (_lp7207_
                         _L7253_
                         (cons (cons _vals7329_ (cons _expr7331_ '()))
                               _bind7210_)
                         (cons _check-values7333_ _check7211_)
                         (cons _refs7335_ _post7212_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd72887310_
                                                    _hd72857302_)
                                                   (_g72697294_ _g72707297_))))
                                           (_g72697294_ _g72707297_))))
                                   (_g72697294_ _g72707297_)))))
                        (let ((_g72677385_
                               (lambda (_g72707341_)
                                 (if (gx#stx-pair? _g72707341_)
                                     (let ((_e72737343_
                                            (gx#stx-e _g72707341_)))
                                       (let ((_hd72747346_ (##car _e72737343_))
                                             (_tl72757348_
                                              (##cdr _e72737343_)))
                                         (if (gx#stx-pair? _hd72747346_)
                                             (let ((_e72767351_
                                                    (gx#stx-e _hd72747346_)))
                                               (let ((_hd72777354_
                                                      (##car _e72767351_))
                                                     (_tl72787356_
                                                      (##cdr _e72767351_)))
                                                 (if (gx#stx-null?
                                                      _tl72787356_)
                                                     (if (gx#stx-pair?
                                                          _tl72757348_)
                                                         (let ((_e72797359_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72757348_)))
                   (let ((_hd72807362_ (##car _e72797359_))
                         (_tl72817364_ (##cdr _e72797359_)))
                     (if (gx#stx-null? _tl72817364_)
                         ((lambda (_L7367_ _L7368_)
                            (let ((_eid7382_
                                   (gxc#generate-runtime-binding-id* _L7368_))
                                  (_expr7383_ (gxc#compile-e _L7367_)))
                              (_lp7207_
                               _L7253_
                               (cons (cons _eid7382_ (cons _expr7383_ '()))
                                     _bind7210_)
                               _check7211_
                               _post7212_)))
                          _hd72807362_
                          _hd72777354_)
                         (_g72687338_ _g72707341_))))
                 (_g72687338_ _g72707341_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g72687338_
                                                      _g72707341_))))
                                             (_g72687338_ _g72707341_))))
                                     (_g72687338_ _g72707341_)))))
                          (_g72677385_ _L7254_)))))
                  _tl72217250_
                  _hd72207248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g72147240_
                                                      _g72167243_)))))
                                          (_g72137388_ _rest7209_)))))))
                          _lp7207_)
                        _hd7204_
                        '()
                        '()
                        '()))))
                (let ((_g70947111_
                       (lambda (_g70957108_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g70957108_))))
                  (let ((_g70937157_
                         (lambda (_g70957114_)
                           (if (gx#stx-pair? _g70957114_)
                               (let ((_e70987116_ (gx#stx-e _g70957114_)))
                                 (let ((_hd70997119_ (##car _e70987116_))
                                       (_tl71007121_ (##cdr _e70987116_)))
                                   (if (gx#stx-pair? _tl71007121_)
                                       (let ((_e71017124_
                                              (gx#stx-e _tl71007121_)))
                                         (let ((_hd71027127_
                                                (##car _e71017124_))
                                               (_tl71037129_
                                                (##cdr _e71017124_)))
                                           (if (gx#stx-pair? _tl71037129_)
                                               (let ((_e71047132_
                                                      (gx#stx-e _tl71037129_)))
                                                 (let ((_hd71057135_
                                                        (##car _e71047132_))
                                                       (_tl71067137_
                                                        (##cdr _e71047132_)))
                                                   (if (gx#stx-null?
                                                        _tl71067137_)
                                                       ((lambda (_L7140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7141_)
                  (if (gxc#generate-runtime-simple-let? _L7141_)
                      (_generate-simple7089_ _L7141_ _L7140_)
                      (_generate-values7090_ _L7141_ _L7140_)))
                _hd71057135_
                _hd71027127_)
               (_g70947111_ _g70957114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g70947111_ _g70957114_))))
                                       (_g70947111_ _g70957114_))))
                               (_g70947111_ _g70957114_)))))
                    (_g70937157_ _stx7086_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7397_)
          (let ((_compiled-body?7399_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7084
             _stx7397_
             _compiled-body?7399_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10481_
          (let ((_g10480_ (length _g10481_)))
            (cond ((fx= _g10480_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10481_))
                  ((fx= _g10480_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7084
                          _g10481_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g10481_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6985_ _hd6986_)
      ((letrec ((_lp6988_
                 (lambda (_rest6990_ _k6991_ _r6992_)
                   (let ((_g69977013_
                          (lambda (_g69987010_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69987010_))))
                     (let ((_g69967020_
                            (lambda (_g69987016_)
                              ((lambda () (reverse _r6992_))))))
                       (let ((_g69957036_
                              (lambda (_g69987023_)
                                ((lambda (_L7025_)
                                   (if (gx#identifier? _L7025_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L7025_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6985_ (cons _k6991_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6992_)
                                       (_g69967020_ _g69987023_)))
                                 _g69987023_))))
                         (let ((_g69947060_
                                (lambda (_g69987039_)
                                  (if (gx#stx-pair? _g69987039_)
                                      (let ((_e70057041_
                                             (gx#stx-e _g69987039_)))
                                        (let ((_hd70067044_
                                               (##car _e70057041_))
                                              (_tl70077046_
                                               (##cdr _e70057041_)))
                                          ((lambda (_L7049_ _L7050_)
                                             (_lp6988_
                                              _L7049_
                                              (fx+ _k6991_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L7050_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6985_ (cons _k6991_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6992_)))
                                           _tl70077046_
                                           _hd70067044_)))
                                      (_g69957036_ _g69987039_)))))
                           (let ((_g69937082_
                                  (lambda (_g69987063_)
                                    (if (gx#stx-pair? _g69987063_)
                                        (let ((_e70007065_
                                               (gx#stx-e _g69987063_)))
                                          (let ((_hd70017068_
                                                 (##car _e70007065_))
                                                (_tl70027070_
                                                 (##cdr _e70007065_)))
                                            (if (gx#stx-datum? _hd70017068_)
                                                (if (equal? (gx#stx-e
                                                             _hd70017068_)
                                                            '#f)
                                                    ((lambda (_L7073_)
                                                       (_lp6988_
                                                        _L7073_
                                                        (fx+ _k6991_ '1)
                                                        _r6992_))
                                                     _tl70027070_)
                                                    (_g69947060_ _g69987063_))
                                                (_g69947060_ _g69987063_))))
                                        (_g69947060_ _g69987063_)))))
                             (_g69937082_ _rest6990_)))))))))
         _lp6988_)
       _hd6986_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6663
      (lambda (_stx6665_ _compiled-body?6666_)
        (let ((_generate-simple6668_
               (lambda (_hd6972_ _body6973_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6972_
                  _body6973_
                  _compiled-body?6666_))))
          (let ((_generate-values-check6670_
                 (lambda (_check6746_ _body6747_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6747_ '())
                                 (reverse _check6746_))))))
            (let ((_generate-values-post6671_
                   (lambda (_post6739_ _body6740_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6740_ '())
                                   (map (lambda (_g67416743_)
                                          (cons 'set! _g67416743_))
                                        (reverse _post6739_)))))))
              (let ((_generate-values6669_
                     (lambda (_hd6749_ _body6750_)
                       ((letrec ((_lp6752_
                                  (lambda (_rest6754_
                                           _bind6755_
                                           _check6756_
                                           _post6757_)
                                    (let ((_g67606771_
                                           (lambda (_g67616768_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g67616768_))))
                                      (let ((_g67596785_
                                             (lambda (_g67616774_)
                                               ((lambda ()
                                                  (let ((_body6778_
                                                         (if _compiled-body?6666_
                                                             _body6750_
                                                             (gxc#compile-e
                                                              _body6750_))))
                                                    (let ((_body6780_
                                                           (_generate-values-post6671_
                                                            _post6757_
                                                            _body6778_)))
                                                      (let ((_body6782_
                                                             (_generate-values-check6670_
                                                              _check6756_
                                                              _body6780_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6755_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6782_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g67586969_
                                               (lambda (_g67616788_)
                                                 (if (gx#stx-pair? _g67616788_)
                                                     (let ((_e67646790_
                                                            (gx#stx-e
                                                             _g67616788_)))
                                                       (let ((_hd67656793_
                                                              (##car _e67646790_))
                                                             (_tl67666795_
                                                              (##cdr _e67646790_)))
                                                         ((lambda (_L6798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6799_)
                    (let ((_g68146839_
                           (lambda (_g68156836_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g68156836_))))
                      (let ((_g68136919_
                             (lambda (_g68156842_)
                               (if (gx#stx-pair? _g68156842_)
                                   (let ((_e68296844_ (gx#stx-e _g68156842_)))
                                     (let ((_hd68306847_ (##car _e68296844_))
                                           (_tl68316849_ (##cdr _e68296844_)))
                                       (if (gx#stx-pair? _tl68316849_)
                                           (let ((_e68326852_
                                                  (gx#stx-e _tl68316849_)))
                                             (let ((_hd68336855_
                                                    (##car _e68326852_))
                                                   (_tl68346857_
                                                    (##cdr _e68326852_)))
                                               (if (gx#stx-null? _tl68346857_)
                                                   ((lambda (_L6860_ _L6861_)
                                                      (let ((_vals6874_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6876_
                                                               (gxc#compile-e
                                                                _L6860_)))
                                                          (let ((_check-values6878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6874_
                          _L6861_)))
                    (let ((_refs6880_
                           (gxc#generate-runtime-let-values-bind
                            _vals6874_
                            _L6861_)))
                      (let ()
                        (_lp6752_
                         _L6798_
                         (foldl1 cons
                                 (cons (cons _vals6874_ (cons _expr6876_ '()))
                                       _bind6755_)
                                 (map (lambda (_e68826884_)
                                        (let ((_g68866895_ _e68826884_))
                                          (let ((_E68886899_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g68866895_))))
                                            (let ((_K68896904_
                                                   (lambda (_eid6902_)
                                                     (cons _eid6902_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g68866895_)
                                                  (let ((_hd68906907_
                                                         (##car _g68866895_))
                                                        (_tl68916909_
                                                         (##cdr _g68866895_)))
                                                    (let ((_eid6912_
                                                           _hd68906907_))
                                                      (if (##pair? _tl68916909_)
                                                          (let ((_hd68926914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl68916909_))
                        (_tl68936916_ (##cdr _tl68916909_)))
                    (if (##null? _tl68936916_)
                        (_K68896904_ _eid6912_)
                        (_E68886899_)))
                  (_E68886899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E68886899_))))))
                                      _refs6880_))
                         (cons _check-values6878_ _check6756_)
                         (foldl1 cons _refs6880_ _post6757_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd68336855_
                                                    _hd68306847_)
                                                   (_g68146839_ _g68156842_))))
                                           (_g68146839_ _g68156842_))))
                                   (_g68146839_ _g68156842_)))))
                        (let ((_g68126966_
                               (lambda (_g68156922_)
                                 (if (gx#stx-pair? _g68156922_)
                                     (let ((_e68186924_
                                            (gx#stx-e _g68156922_)))
                                       (let ((_hd68196927_ (##car _e68186924_))
                                             (_tl68206929_
                                              (##cdr _e68186924_)))
                                         (if (gx#stx-pair? _hd68196927_)
                                             (let ((_e68216932_
                                                    (gx#stx-e _hd68196927_)))
                                               (let ((_hd68226935_
                                                      (##car _e68216932_))
                                                     (_tl68236937_
                                                      (##cdr _e68216932_)))
                                                 (if (gx#stx-null?
                                                      _tl68236937_)
                                                     (if (gx#stx-pair?
                                                          _tl68206929_)
                                                         (let ((_e68246940_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl68206929_)))
                   (let ((_hd68256943_ (##car _e68246940_))
                         (_tl68266945_ (##cdr _e68246940_)))
                     (if (gx#stx-null? _tl68266945_)
                         ((lambda (_L6948_ _L6949_)
                            (let ((_eid6963_
                                   (gxc#generate-runtime-binding-id* _L6949_))
                                  (_expr6964_ (gxc#compile-e _L6948_)))
                              (_lp6752_
                               _L6798_
                               (cons (cons _eid6963_ (cons _expr6964_ '()))
                                     _bind6755_)
                               _check6756_
                               _post6757_)))
                          _hd68256943_
                          _hd68226935_)
                         (_g68136919_ _g68156922_))))
                 (_g68136919_ _g68156922_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g68136919_
                                                      _g68156922_))))
                                             (_g68136919_ _g68156922_))))
                                     (_g68136919_ _g68156922_)))))
                          (_g68126966_ _L6799_)))))
                  _tl67666795_
                  _hd67656793_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g67596785_
                                                      _g67616788_)))))
                                          (_g67586969_ _rest6754_)))))))
                          _lp6752_)
                        _hd6749_
                        '()
                        '()
                        '()))))
                (let ((_g66736690_
                       (lambda (_g66746687_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g66746687_))))
                  (let ((_g66726736_
                         (lambda (_g66746693_)
                           (if (gx#stx-pair? _g66746693_)
                               (let ((_e66776695_ (gx#stx-e _g66746693_)))
                                 (let ((_hd66786698_ (##car _e66776695_))
                                       (_tl66796700_ (##cdr _e66776695_)))
                                   (if (gx#stx-pair? _tl66796700_)
                                       (let ((_e66806703_
                                              (gx#stx-e _tl66796700_)))
                                         (let ((_hd66816706_
                                                (##car _e66806703_))
                                               (_tl66826708_
                                                (##cdr _e66806703_)))
                                           (if (gx#stx-pair? _tl66826708_)
                                               (let ((_e66836711_
                                                      (gx#stx-e _tl66826708_)))
                                                 (let ((_hd66846714_
                                                        (##car _e66836711_))
                                                       (_tl66856716_
                                                        (##cdr _e66836711_)))
                                                   (if (gx#stx-null?
                                                        _tl66856716_)
                                                       ((lambda (_L6719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6720_)
                  (if (gxc#generate-runtime-simple-let? _L6720_)
                      (_generate-simple6668_ _L6720_ _L6719_)
                      (_generate-values6669_ _L6720_ _L6719_)))
                _hd66846714_
                _hd66816706_)
               (_g66736690_ _g66746693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66736690_ _g66746693_))))
                                       (_g66736690_ _g66746693_))))
                               (_g66736690_ _g66746693_)))))
                    (_g66726736_ _stx6665_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6978_)
          (let ((_compiled-body?6980_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6663
             _stx6978_
             _compiled-body?6980_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10483_
          (let ((_g10482_ (length _g10483_)))
            (cond ((fx= _g10482_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10483_))
                  ((fx= _g10482_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6663
                          _g10483_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g10483_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5784_)
      (let ((_collect-closures5787_
             (lambda (_forms6605_)
               (map (lambda (_e66066608_)
                      (let ((_g66106619_ _e66066608_))
                        (let ((_E66126623_
                               (lambda ()
                                 (error '"No clause matching" _g66106619_))))
                          (let ((_K66136628_
                                 (lambda (_expr6626_)
                                   (gxc#collect-expression-refs _expr6626_))))
                            (if (##pair? _g66106619_)
                                (let ((_hd66146631_ (##car _g66106619_))
                                      (_tl66156633_ (##cdr _g66106619_)))
                                  (if (##pair? _tl66156633_)
                                      (let ((_hd66166636_ (##car _tl66156633_))
                                            (_tl66176638_
                                             (##cdr _tl66156633_)))
                                        (let ((_expr6641_ _hd66166636_))
                                          (if (##null? _tl66176638_)
                                              (_K66136628_ _expr6641_)
                                              (_E66126623_))))
                                      (_E66126623_)))
                                (_E66126623_))))))
                    _forms6605_))))
        (let ((_collect-bindings5788_
               (lambda (_forms6529_)
                 (map (lambda (_e65306532_)
                        (let ((_g65346543_ _e65306532_))
                          (let ((_E65366547_
                                 (lambda ()
                                   (error '"No clause matching" _g65346543_))))
                            (let ((_K65376590_
                                   (lambda (_bind6550_)
                                     ((letrec ((_lp6552_
                                                (lambda (_rest6554_ _r6555_)
                                                  (let ((_rest65566564_
                                                         _rest6554_))
                                                    (let ((_E65596568_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest65566564_))))
              (let ((_else65586572_
                     (lambda ()
                       (if (gx#identifier? _rest6554_)
                           (cons _rest6554_ _r6555_)
                           _r6555_))))
                (let ((_K65606578_
                       (lambda (_rest6575_ _id6576_)
                         (if (gx#identifier? _id6576_)
                             (_lp6552_
                              _rest6575_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6576_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6555_))
                             (_lp6552_ _rest6575_ _r6555_)))))
                  (if (##pair? _rest65566564_)
                      (let ((_hd65616581_ (##car _rest65566564_))
                            (_tl65626583_ (##cdr _rest65566564_)))
                        (let ((_id6586_ _hd65616581_))
                          (let ((_rest6588_ _tl65626583_))
                            (_K65606578_ _rest6588_ _id6586_))))
                      (_else65586572_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6552_)
                                      _bind6550_
                                      '()))))
                              (if (##pair? _g65346543_)
                                  (let ((_hd65386593_ (##car _g65346543_))
                                        (_tl65396595_ (##cdr _g65346543_)))
                                    (let ((_bind6598_ _hd65386593_))
                                      (if (##pair? _tl65396595_)
                                          (let ((_hd65406600_
                                                 (##car _tl65396595_))
                                                (_tl65416602_
                                                 (##cdr _tl65396595_)))
                                            (if (##null? _tl65416602_)
                                                (_K65376590_ _bind6598_)
                                                (_E65366547_)))
                                          (_E65366547_))))
                                  (_E65366547_))))))
                      _forms6529_))))
          (let ((_closure-reference?5792_
                 (lambda (_closure6081_ _bindings6082_)
                   (ormap1 (lambda (_g60836085_)
                             (table-ref _closure6081_ _g60836085_ '#f))
                           _bindings6082_))))
            (let ((_is-effect-expr?5794_
                   (lambda (_expr5992_)
                     (let ((_g59946004_
                            (lambda (_g59956001_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g59956001_))))
                       (let ((_g59936027_
                              (lambda (_g59956007_)
                                (if (gx#stx-pair? _g59956007_)
                                    (let ((_e59976009_ (gx#stx-e _g59956007_)))
                                      (let ((_hd59986012_ (##car _e59976009_))
                                            (_tl59996014_ (##cdr _e59976009_)))
                                        ((lambda (_L6017_)
                                           (not (memq (gx#stx-e _L6017_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd59986012_)))
                                    (_g59946004_ _g59956007_)))))
                         (_g59936027_ _expr5992_))))))
              (let ((_is-lambda-expr?5795_
                     (lambda (_expr5954_)
                       (let ((_g59565966_
                              (lambda (_g59575963_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g59575963_))))
                         (let ((_g59555989_
                                (lambda (_g59575969_)
                                  (if (gx#stx-pair? _g59575969_)
                                      (let ((_e59595971_
                                             (gx#stx-e _g59575969_)))
                                        (let ((_hd59605974_
                                               (##car _e59595971_))
                                              (_tl59615976_
                                               (##cdr _e59595971_)))
                                          ((lambda (_L5979_)
                                             (memq (gx#stx-e _L5979_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd59605974_)))
                                      (_g59565966_ _g59575969_)))))
                           (_g59555989_ _expr5954_))))))
                (let ((_lift-rec5791_
                       (lambda (_forms6088_)
                         ((letrec ((_lp6090_
                                    (lambda (_rest6092_
                                             _pre6093_
                                             _bind6094_
                                             _init6095_)
                                      (let ((_rest60966104_ _rest6092_))
                                        (let ((_E60996108_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest60966104_))))
                                          (let ((_else60986112_
                                                 (lambda ()
                                                   (values (reverse _pre6093_)
                                                           (reverse _bind6094_)
                                                           (reverse _init6095_)))))
                                            (let ((_K61006303_
                                                   (lambda (_rest6115_
                                                            _bind-hd6116_)
                                                     (let ((_g61206155_
                                                            (lambda (_g61216152_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g61216152_))))
                                                       (let ((_g61196212_
                                                              (lambda (_g61216158_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g61216158_)
                            (let ((_e61456160_ (gx#stx-e _g61216158_)))
                              (let ((_hd61466163_ (##car _e61456160_))
                                    (_tl61476165_ (##cdr _e61456160_)))
                                (if (gx#stx-pair? _tl61476165_)
                                    (let ((_e61486168_
                                           (gx#stx-e _tl61476165_)))
                                      (let ((_hd61496171_ (##car _e61486168_))
                                            (_tl61506173_ (##cdr _e61486168_)))
                                        (if (gx#stx-null? _tl61506173_)
                                            ((lambda (_L6176_ _L6177_)
                                               (let ((_vals6196_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr6198_
                                                        (gxc#compile-e
                                                         _L6176_)))
                                                   (let ((_check-values6200_
                                                          (gxc#generate-runtime-check-values
                                                           _vals6196_
                                                           _L6177_)))
                                                     (let ((_refs6202_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals6196_
                                                             _L6177_)))
                                                       (let ()
                                                         (_lp6090_
                                                          _rest6115_
                                                          (foldl1 (lambda (_ref6205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r6206_)
                            (cons (cons (car _ref6205_) (cons '#!void '()))
                                  _r6206_))
                          _pre6093_
                          _refs6202_)
                  _bind6094_
                  (cons (cons 'let
                              (cons (cons (cons _vals6196_
                                                (cons _expr6198_ '()))
                                          '())
                                    (cons _check-values6200_
                                          (cons (map (lambda (_g62076209_)
                                                       (cons 'set!
                                                             _g62076209_))
                                                     _refs6202_)
                                                '()))))
                        _init6095_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd61496171_
                                             _hd61466163_)
                                            (_g61206155_ _g61216158_))))
                                    (_g61206155_ _g61216158_))))
                            (_g61206155_ _g61216158_)))))
                 (let ((_g61186258_
                        (lambda (_g61216215_)
                          (if (gx#stx-pair? _g61216215_)
                              (let ((_e61346217_ (gx#stx-e _g61216215_)))
                                (let ((_hd61356220_ (##car _e61346217_))
                                      (_tl61366222_ (##cdr _e61346217_)))
                                  (if (gx#stx-pair? _hd61356220_)
                                      (let ((_e61376225_
                                             (gx#stx-e _hd61356220_)))
                                        (let ((_hd61386228_
                                               (##car _e61376225_))
                                              (_tl61396230_
                                               (##cdr _e61376225_)))
                                          (if (gx#stx-null? _tl61396230_)
                                              (if (gx#stx-pair? _tl61366222_)
                                                  (let ((_e61406233_
                                                         (gx#stx-e
                                                          _tl61366222_)))
                                                    (let ((_hd61416236_
                                                           (##car _e61406233_))
                                                          (_tl61426238_
                                                           (##cdr _e61406233_)))
                                                      (if (gx#stx-null?
                                                           _tl61426238_)
                                                          ((lambda (_L6241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6242_)
                     (let ((_eid6256_
                            (gxc#generate-runtime-binding-id _L6242_)))
                       (if (_is-lambda-expr?5795_ _L6241_)
                           (_lp6090_
                            _rest6115_
                            _pre6093_
                            (cons (cons _eid6256_
                                        (cons (gxc#compile-e _L6241_) '()))
                                  _bind6094_)
                            _init6095_)
                           (_lp6090_
                            _rest6115_
                            (cons (cons _eid6256_ (cons '#!void '()))
                                  _pre6093_)
                            _bind6094_
                            (cons (cons 'set!
                                        (cons _eid6256_
                                              (cons (gxc#compile-e _L6241_)
                                                    '())))
                                  _init6095_)))))
                   _hd61416236_
                   _hd61386228_)
                  (_g61196212_ _g61216215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g61196212_ _g61216215_))
                                              (_g61196212_ _g61216215_))))
                                      (_g61196212_ _g61216215_))))
                              (_g61196212_ _g61216215_)))))
                   (let ((_g61176300_
                          (lambda (_g61216261_)
                            (if (gx#stx-pair? _g61216261_)
                                (let ((_e61236263_ (gx#stx-e _g61216261_)))
                                  (let ((_hd61246266_ (##car _e61236263_))
                                        (_tl61256268_ (##cdr _e61236263_)))
                                    (if (gx#stx-pair? _hd61246266_)
                                        (let ((_e61266271_
                                               (gx#stx-e _hd61246266_)))
                                          (let ((_hd61276274_
                                                 (##car _e61266271_))
                                                (_tl61286276_
                                                 (##cdr _e61266271_)))
                                            (if (gx#stx-datum? _hd61276274_)
                                                (if (equal? (gx#stx-e
                                                             _hd61276274_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl61286276_)
                                                        (if (gx#stx-pair?
                                                             _tl61256268_)
                                                            (let ((_e61296279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl61256268_)))
                      (let ((_hd61306282_ (##car _e61296279_))
                            (_tl61316284_ (##cdr _e61296279_)))
                        (if (gx#stx-null? _tl61316284_)
                            ((lambda (_L6287_)
                               (_lp6090_
                                _rest6115_
                                _pre6093_
                                _bind6094_
                                (cons (gxc#compile-e _L6287_) _init6095_)))
                             _hd61306282_)
                            (_g61186258_ _g61216261_))))
                    (_g61186258_ _g61216261_))
                (_g61186258_ _g61216261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61186258_ _g61216261_))
                                                (_g61186258_ _g61216261_))))
                                        (_g61186258_ _g61216261_))))
                                (_g61186258_ _g61216261_)))))
                     (_g61176300_ _bind-hd6116_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest60966104_)
                                                  (let ((_hd61016306_
                                                         (##car _rest60966104_))
                                                        (_tl61026308_
                                                         (##cdr _rest60966104_)))
                                                    (let ((_bind-hd6311_
                                                           _hd61016306_))
                                                      (let ((_rest6313_
                                                             _tl61026308_))
                                                        (_K61006303_
                                                         _rest6313_
                                                         _bind-hd6311_))))
                                                  (_else60986112_)))))))))
                            _lp6090_)
                          _forms6088_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5793_
                         (lambda (_hd-bind6030_)
                           (let ((_g60326045_
                                  (lambda (_g60336042_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g60336042_))))
                             (let ((_g60316078_
                                    (lambda (_g60336048_)
                                      (if (gx#stx-pair? _g60336048_)
                                          (let ((_e60356050_
                                                 (gx#stx-e _g60336048_)))
                                            (let ((_hd60366053_
                                                   (##car _e60356050_))
                                                  (_tl60376055_
                                                   (##cdr _e60356050_)))
                                              (if (gx#stx-pair? _tl60376055_)
                                                  (let ((_e60386058_
                                                         (gx#stx-e
                                                          _tl60376055_)))
                                                    (let ((_hd60396061_
                                                           (##car _e60386058_))
                                                          (_tl60406063_
                                                           (##cdr _e60386058_)))
                                                      (if (gx#stx-null?
                                                           _tl60406063_)
                                                          ((lambda (_L6066_)
                                                             (_is-effect-expr?5794_
                                                              _L6066_))
                                                           _hd60396061_)
                                                          (_g60326045_
                                                           _g60336048_))))
                                                  (_g60326045_ _g60336048_))))
                                          (_g60326045_ _g60336048_)))))
                               (_g60316078_ _hd-bind6030_))))))
                    (let ((_lift-pre5789_
                           (lambda (_hd6422_ _bindings6423_ _closures6424_)
                             ((letrec ((_lp6426_
                                        (lambda (_rest-forms6428_
                                                 _rest-bindings6429_
                                                 _rest-closures6430_
                                                 _post-forms6431_
                                                 _post-bindings6432_
                                                 _post-closures6433_
                                                 _pre-forms6434_
                                                 _lifted?6435_)
                                          (let ((_rest-forms64366452_
                                                 _rest-forms6428_)
                                                (_rest-bindings64376454_
                                                 _rest-bindings6429_)
                                                (_rest-closures64386456_
                                                 _rest-closures6430_))
                                            (let ((_E64416460_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms64366452_
                                                            _rest-bindings64376454_
                                                            _rest-closures64386456_))))
                                              (let ((_else64406464_
                                                     (lambda ()
                                                       (if _lifted?6435_
                                                           (_lp6426_
                                                            (reverse _post-forms6431_)
                                                            (reverse _post-bindings6432_)
                                                            (reverse _post-closures6433_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6434_
                                                            '#f)
                                                           (values (reverse _pre-forms6434_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6431_)
                           (reverse _post-bindings6432_)
                           (reverse _post-closures6433_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K64426517_
                                                       (lambda (_rest-forms6467_
                                                                _form6468_)
                                                         (let ((_K64436505_
                                                                (lambda (_rest-bindings6470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6471_)
                          (let ((_K64446493_
                                 (lambda (_rest-closures6473_ _closure6474_)
                                   (if (let ((_$e6476_
                                              (_closure-reference?5792_
                                               _closure6474_
                                               _bindings6471_)))
                                         (if _$e6476_
                                             _$e6476_
                                             (let ((_$e6483_
                                                    (ormap1 (lambda (_g64786480_)
                                                              (_closure-reference?5792_
                                                               _closure6474_
                                                               _g64786480_))
                                                            _rest-bindings6470_)))
                                               (if _$e6483_
                                                   _$e6483_
                                                   (let ((_$e6490_
                                                          (ormap1 (lambda (_g64856487_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5792_
                             _closure6474_
                             _g64856487_))
                          _post-bindings6432_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6490_
                                                         _$e6490_
                                                         (if (_is-effect-bind?5793_
                                                              _form6468_)
                                                             (find _is-effect-bind?5793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6431_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6426_
                                        _rest-forms6467_
                                        _rest-bindings6470_
                                        _rest-closures6473_
                                        (cons _form6468_ _post-forms6431_)
                                        (cons _bindings6471_
                                              _post-bindings6432_)
                                        (cons _closure6474_
                                              _post-closures6433_)
                                        _pre-forms6434_
                                        _lifted?6435_)
                                       (_lp6426_
                                        _rest-forms6467_
                                        _rest-bindings6470_
                                        _rest-closures6473_
                                        _post-forms6431_
                                        _post-bindings6432_
                                        _post-closures6433_
                                        (cons _form6468_ _pre-forms6434_)
                                        '#t)))))
                            (if (##pair? _rest-closures64386456_)
                                (let ((_hd64456496_
                                       (##car _rest-closures64386456_))
                                      (_tl64466498_
                                       (##cdr _rest-closures64386456_)))
                                  (let ((_closure6501_ _hd64456496_))
                                    (let ((_rest-closures6503_ _tl64466498_))
                                      (_K64446493_
                                       _rest-closures6503_
                                       _closure6501_))))
                                (_else64406464_))))))
                   (if (##pair? _rest-bindings64376454_)
                       (let ((_hd64476508_ (##car _rest-bindings64376454_))
                             (_tl64486510_ (##cdr _rest-bindings64376454_)))
                         (let ((_bindings6513_ _hd64476508_))
                           (let ((_rest-bindings6515_ _tl64486510_))
                             (_K64436505_
                              _rest-bindings6515_
                              _bindings6513_))))
                       (_else64406464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms64366452_)
                                                      (let ((_hd64496520_
                                                             (##car _rest-forms64366452_))
                                                            (_tl64506522_
                                                             (##cdr _rest-forms64366452_)))
                                                        (let ((_form6525_
                                                               _hd64496520_))
                                                          (let ((_rest-forms6527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl64506522_))
                    (_K64426517_ _rest-forms6527_ _form6525_))))
              (_else64406464_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6426_)
                              _hd6422_
                              _bindings6423_
                              _closures6424_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5790_
                             (lambda (_hd6315_ _bindings6316_ _closures6317_)
                               ((letrec ((_lp6319_
                                          (lambda (_rest-forms6321_
                                                   _rest-bindings6322_
                                                   _rest-closures6323_
                                                   _pre-forms6324_
                                                   _pre-bindings6325_
                                                   _pre-closures6326_
                                                   _post-forms6327_
                                                   _lifted?6328_)
                                            (let ((_rest-forms63296345_
                                                   _rest-forms6321_)
                                                  (_rest-bindings63306347_
                                                   _rest-bindings6322_)
                                                  (_rest-closures63316349_
                                                   _rest-closures6323_))
                                              (let ((_E63346353_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms63296345_
                                                              _rest-bindings63306347_
                                                              _rest-closures63316349_))))
                                                (let ((_else63336357_
                                                       (lambda ()
                                                         (if _lifted?6328_
                                                             (_lp6319_
                                                              (reverse _pre-forms6324_)
                                                              (reverse _pre-bindings6325_)
                                                              (reverse _pre-closures6326_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6327_
                                                              '#f)
                                                             (values _post-forms6327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6324_
                             _pre-bindings6325_
                             _pre-closures6326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K63356410_
                                                         (lambda (_rest-forms6360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6361_)
                   (let ((_K63366398_
                          (lambda (_rest-bindings6363_ _bindings6364_)
                            (let ((_K63376386_
                                   (lambda (_rest-closures6366_ _closure6367_)
                                     (if (let ((_$e6369_
                                                (_closure-reference?5792_
                                                 _closure6367_
                                                 _bindings6364_)))
                                           (if _$e6369_
                                               _$e6369_
                                               (let ((_$e6376_
                                                      (ormap1 (lambda (_g63716373_)
                                                                (_closure-reference?5792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g63716373_
                         _bindings6364_))
                      _rest-closures6366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6376_
                                                     _$e6376_
                                                     (let ((_$e6383_
                                                            (ormap1 (lambda (_g63786380_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5792_
                               _g63786380_
                               _bindings6364_))
                            _pre-closures6326_)))
               (if _$e6383_
                   _$e6383_
                   (if (_is-effect-bind?5793_ _form6361_)
                       (find _is-effect-bind?5793_ _pre-forms6324_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6319_
                                          _rest-forms6360_
                                          _rest-bindings6363_
                                          _rest-closures6366_
                                          (cons _form6361_ _pre-forms6324_)
                                          (cons _bindings6364_
                                                _pre-bindings6325_)
                                          (cons _closure6367_
                                                _pre-closures6326_)
                                          _post-forms6327_
                                          _lifted?6328_)
                                         (_lp6319_
                                          _rest-forms6360_
                                          _rest-bindings6363_
                                          _rest-closures6366_
                                          _pre-forms6324_
                                          _pre-bindings6325_
                                          _pre-closures6326_
                                          (cons _form6361_ _post-forms6327_)
                                          '#t)))))
                              (if (##pair? _rest-closures63316349_)
                                  (let ((_hd63386389_
                                         (##car _rest-closures63316349_))
                                        (_tl63396391_
                                         (##cdr _rest-closures63316349_)))
                                    (let ((_closure6394_ _hd63386389_))
                                      (let ((_rest-closures6396_ _tl63396391_))
                                        (_K63376386_
                                         _rest-closures6396_
                                         _closure6394_))))
                                  (_else63336357_))))))
                     (if (##pair? _rest-bindings63306347_)
                         (let ((_hd63406401_ (##car _rest-bindings63306347_))
                               (_tl63416403_ (##cdr _rest-bindings63306347_)))
                           (let ((_bindings6406_ _hd63406401_))
                             (let ((_rest-bindings6408_ _tl63416403_))
                               (_K63366398_
                                _rest-bindings6408_
                                _bindings6406_))))
                         (_else63336357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms63296345_)
                                                        (let ((_hd63426413_
                                                               (##car _rest-forms63296345_))
                                                              (_tl63436415_
                                                               (##cdr _rest-forms63296345_)))
                                                          (let ((_form6418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd63426413_))
                    (let ((_rest-forms6420_ _tl63436415_))
                      (_K63356410_ _rest-forms6420_ _form6418_))))
                (_else63336357_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6319_)
                                (reverse _hd6315_)
                                (reverse _bindings6316_)
                                (reverse _closures6317_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5786_
                               (lambda (_forms6643_)
                                 (let ((_closures6645_
                                        (_collect-closures5787_ _forms6643_)))
                                   (let ((_bindings6647_
                                          (_collect-bindings5788_
                                           _forms6643_)))
                                     (let ((_g10486_
                                            (_lift-pre5789_
                                             _forms6643_
                                             _bindings6647_
                                             _closures6645_)))
                                       (begin
                                         (let ((_g10487_
                                                (values-count _g10486_)))
                                           (if (not (fx= _g10487_ 4))
                                               (error "Context expects 4 values"
                                                      _g10487_)))
                                         (let ((_pre-bind6649_
                                                (values-ref _g10486_ 0))
                                               (_forms6650_
                                                (values-ref _g10486_ 1))
                                               (_bindings6651_
                                                (values-ref _g10486_ 2))
                                               (_closures6652_
                                                (values-ref _g10486_ 3)))
                                           (let ((_g10488_
                                                  (_lift-post5790_
                                                   _forms6650_
                                                   _bindings6651_
                                                   _closures6652_)))
                                             (begin
                                               (let ((_g10489_
                                                      (values-count _g10488_)))
                                                 (if (not (fx= _g10489_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10489_)))
                                               (let ((_post-bind6654_
                                                      (values-ref _g10488_ 0))
                                                     (_forms6655_
                                                      (values-ref _g10488_ 1))
                                                     (_bindings6656_
                                                      (values-ref _g10488_ 2))
                                                     (_closures6657_
                                                      (values-ref _g10488_ 3)))
                                                 (let ((_g10490_
                                                        (_lift-rec5791_
                                                         _forms6655_)))
                                                   (begin
                                                     (let ((_g10491_
                                                            (values-count
                                                             _g10490_)))
                                                       (if (not (fx= _g10491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6659_
                                                            (values-ref
                                                             _g10490_
                                                             0))
                                                           (_rec-bind6660_
                                                            (values-ref
                                                             _g10490_
                                                             1))
                                                           (_rec-init6661_
                                                            (values-ref
                                                             _g10490_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6659_
                         _rec-bind6660_
                         _rec-init6661_
                         _post-bind6654_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5796_
                                    (lambda (_hd5883_ _body5884_)
                                      (let ((_hd58855893_ _hd5883_))
                                        (let ((_E58885897_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd58855893_))))
                                          (let ((_else58875901_
                                                 (lambda () _body5884_)))
                                            (let ((_K58895942_
                                                   (lambda (_rest5904_
                                                            _bind5905_)
                                                     (let ((_bind59065915_
                                                            _bind5905_))
                                                       (let ((_E59085919_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind59065915_))))
                 (let ((_K59095925_
                        (lambda (_expr5922_ _hd5923_)
                          (if (gx#stx-ormap gx#identifier? _hd5923_)
                              (gxc#generate-runtime-let-values%__opt-lambda7084
                               (cons '%#let-values
                                     (cons (cons _bind5905_ '())
                                           (cons (_generate-let*5796_
                                                  _rest5904_
                                                  _body5884_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5922_)
                                          (cons (_generate-let*5796_
                                                 _rest5904_
                                                 _body5884_)
                                                '())))))))
                   (if (##pair? _bind59065915_)
                       (let ((_hd59105928_ (##car _bind59065915_))
                             (_tl59115930_ (##cdr _bind59065915_)))
                         (let ((_hd5933_ _hd59105928_))
                           (if (##pair? _tl59115930_)
                               (let ((_hd59125935_ (##car _tl59115930_))
                                     (_tl59135937_ (##cdr _tl59115930_)))
                                 (let ((_expr5940_ _hd59125935_))
                                   (if (##null? _tl59135937_)
                                       (_K59095925_ _expr5940_ _hd5933_)
                                       (_E59085919_))))
                               (_E59085919_))))
                       (_E59085919_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd58855893_)
                                                  (let ((_hd58905945_
                                                         (##car _hd58855893_))
                                                        (_tl58915947_
                                                         (##cdr _hd58855893_)))
                                                    (let ((_bind5950_
                                                           _hd58905945_))
                                                      (let ((_rest5952_
                                                             _tl58915947_))
                                                        (_K58895942_
                                                         _rest5952_
                                                         _bind5950_))))
                                                  (_else58875901_)))))))))
                            (let ((_g57985815_
                                   (lambda (_g57995812_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g57995812_))))
                              (let ((_g57975880_
                                     (lambda (_g57995818_)
                                       (if (gx#stx-pair? _g57995818_)
                                           (let ((_e58025820_
                                                  (gx#stx-e _g57995818_)))
                                             (let ((_hd58035823_
                                                    (##car _e58025820_))
                                                   (_tl58045825_
                                                    (##cdr _e58025820_)))
                                               (if (gx#stx-pair? _tl58045825_)
                                                   (let ((_e58055828_
                                                          (gx#stx-e
                                                           _tl58045825_)))
                                                     (let ((_hd58065831_
                                                            (##car _e58055828_))
                                                           (_tl58075833_
                                                            (##cdr _e58055828_)))
                                                       (if (gx#stx-pair?
                                                            _tl58075833_)
                                                           (let ((_e58085836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl58075833_)))
                     (let ((_hd58095839_ (##car _e58085836_))
                           (_tl58105841_ (##cdr _e58085836_)))
                       (if (gx#stx-null? _tl58105841_)
                           ((lambda (_L5844_ _L5845_)
                              (let ((_g10484_ (_linearize5786_ _L5845_)))
                                (begin
                                  (let ((_g10485_ (values-count _g10484_)))
                                    (if (not (fx= _g10485_ 5))
                                        (error "Context expects 5 values"
                                               _g10485_)))
                                  (let ((_pre5861_ (values-ref _g10484_ 0))
                                        (_rec-pre5862_ (values-ref _g10484_ 1))
                                        (_rec-bind5863_
                                         (values-ref _g10484_ 2))
                                        (_rec-init5864_
                                         (values-ref _g10484_ 3))
                                        (_post5865_ (values-ref _g10484_ 4)))
                                    (let ((_body5867_ (gxc#compile-e _L5844_)))
                                      (let ((_body5869_
                                             (if (null? _post5865_)
                                                 _body5867_
                                                 (_generate-let*5796_
                                                  _post5865_
                                                  _body5867_))))
                                        (let ((_body5871_
                                               (if (null? _rec-init5864_)
                                                   _body5869_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5869_ '())
                         _rec-init5864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5873_
                                                 (if (null? _rec-bind5863_)
                                                     _body5871_
                                                     (cons 'letrec
                                                           (cons _rec-bind5863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5871_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5875_
                                                   (if (null? _rec-pre5862_)
                                                       _body5873_
                                                       (cons 'let
                                                             (cons _rec-pre5862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5873_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5877_
                                                     (if (null? _pre5861_)
                                                         _body5875_
                                                         (_generate-let*5796_
                                                          _pre5861_
                                                          _body5875_))))
                                                (let () _body5877_)))))))))))
                            _hd58095839_
                            _hd58065831_)
                           (_g57985815_ _g57995818_))))
                   (_g57985815_ _g57995818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g57985815_ _g57995818_))))
                                           (_g57985815_ _g57995818_)))))
                                (_g57975880_ _stx5784_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5677_)
      ((letrec ((_lp5679_
                 (lambda (_rest5681_)
                   (let ((_g56855706_
                          (lambda (_g56865703_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g56865703_))))
                     (let ((_g56845713_
                            (lambda (_g56865709_) ((lambda () '#f)))))
                       (let ((_g56835720_
                              (lambda (_g56865716_)
                                (if (gx#stx-null? _g56865716_)
                                    ((lambda () '#t))
                                    (_g56845713_ _g56865716_)))))
                         (let ((_g56825781_
                                (lambda (_g56865723_)
                                  (if (gx#stx-pair? _g56865723_)
                                      (let ((_e56905725_
                                             (gx#stx-e _g56865723_)))
                                        (let ((_hd56915728_
                                               (##car _e56905725_))
                                              (_tl56925730_
                                               (##cdr _e56905725_)))
                                          (if (gx#stx-pair? _hd56915728_)
                                              (let ((_e56935733_
                                                     (gx#stx-e _hd56915728_)))
                                                (let ((_hd56945736_
                                                       (##car _e56935733_))
                                                      (_tl56955738_
                                                       (##cdr _e56935733_)))
                                                  (if (gx#stx-pair?
                                                       _hd56945736_)
                                                      (let ((_e56965741_
                                                             (gx#stx-e
                                                              _hd56945736_)))
                                                        (let ((_hd56975744_
                                                               (##car _e56965741_))
                                                              (_tl56985746_
                                                               (##cdr _e56965741_)))
                                                          (if (gx#stx-null?
                                                               _tl56985746_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl56955738_)
                          (let ((_e56995749_ (gx#stx-e _tl56955738_)))
                            (let ((_hd57005752_ (##car _e56995749_))
                                  (_tl57015754_ (##cdr _e56995749_)))
                              (if (gx#stx-null? _tl57015754_)
                                  ((lambda (_L5757_ _L5758_ _L5759_)
                                     (_lp5679_ _L5757_))
                                   _tl56925730_
                                   _hd57005752_
                                   _hd56975744_)
                                  (_g56835720_ _g56865723_))))
                          (_g56835720_ _g56865723_))
                      (_g56835720_ _g56865723_))))
              (_g56835720_ _g56865723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g56835720_ _g56865723_))))
                                      (_g56835720_ _g56865723_)))))
                           (_g56825781_ _rest5681_))))))))
         _lp5679_)
       _hd5677_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5601_ _hd5602_ _body5603_ _compiled-body?5604_)
      (let ((_generate15606_
             (lambda (_bind5608_)
               (let ((_g56105627_
                      (lambda (_g56115624_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g56115624_))))
                 (let ((_g56095674_
                        (lambda (_g56115630_)
                          (if (gx#stx-pair? _g56115630_)
                              (let ((_e56145632_ (gx#stx-e _g56115630_)))
                                (let ((_hd56155635_ (##car _e56145632_))
                                      (_tl56165637_ (##cdr _e56145632_)))
                                  (if (gx#stx-pair? _hd56155635_)
                                      (let ((_e56175640_
                                             (gx#stx-e _hd56155635_)))
                                        (let ((_hd56185643_
                                               (##car _e56175640_))
                                              (_tl56195645_
                                               (##cdr _e56175640_)))
                                          (if (gx#stx-null? _tl56195645_)
                                              (if (gx#stx-pair? _tl56165637_)
                                                  (let ((_e56205648_
                                                         (gx#stx-e
                                                          _tl56165637_)))
                                                    (let ((_hd56215651_
                                                           (##car _e56205648_))
                                                          (_tl56225653_
                                                           (##cdr _e56205648_)))
                                                      (if (gx#stx-null?
                                                           _tl56225653_)
                                                          ((lambda (_L5656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5657_)
                     (cons (gxc#generate-runtime-binding-id* _L5657_)
                           (cons (gxc#compile-e _L5656_) '())))
                   _hd56215651_
                   _hd56185643_)
                  (_g56105627_ _g56115630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g56105627_ _g56115630_))
                                              (_g56105627_ _g56115630_))))
                                      (_g56105627_ _g56115630_))))
                              (_g56105627_ _g56115630_)))))
                   (_g56095674_ _bind5608_))))))
        (cons _form5601_
              (cons (map _generate15606_ _hd5602_)
                    (cons (if _compiled-body?5604_
                              _body5603_
                              (gxc#compile-e _body5603_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5512_)
      (letrec ((_generate15514_
                (lambda (_datum5566_)
                  (if (let ((_$e5568_ (null? _datum5566_)))
                        (if _$e5568_
                            _$e5568_
                            (let ((_$e5571_ (interned-symbol? _datum5566_)))
                              (if _$e5571_
                                  _$e5571_
                                  (gx#self-quoting? _datum5566_)))))
                      _datum5566_
                      (if (uninterned-symbol? _datum5566_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9407
                           _datum5566_
                           '#t)
                          (if (pair? _datum5566_)
                              (cons (_generate15514_ (car _datum5566_))
                                    (_generate15514_ (cdr _datum5566_)))
                              (if (box? _datum5566_)
                                  (box (_generate15514_ (unbox _datum5566_)))
                                  (if (vector? _datum5566_)
                                      (vector-map _generate15514_ _datum5566_)
                                      (if (let ((_$e5574_
                                                 (s8vector? _datum5566_)))
                                            (if _$e5574_
                                                _$e5574_
                                                (let ((_$e5577_
                                                       (u8vector?
                                                        _datum5566_)))
                                                  (if _$e5577_
                                                      _$e5577_
                                                      (let ((_$e5580_
                                                             (s16vector?
                                                              _datum5566_)))
                                                        (if _$e5580_
                                                            _$e5580_
                                                            (let ((_$e5583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5566_)))
                      (if _$e5583_
                          _$e5583_
                          (let ((_$e5586_ (s32vector? _datum5566_)))
                            (if _$e5586_
                                _$e5586_
                                (let ((_$e5589_ (u32vector? _datum5566_)))
                                  (if _$e5589_
                                      _$e5589_
                                      (let ((_$e5592_
                                             (s64vector? _datum5566_)))
                                        (if _$e5592_
                                            _$e5592_
                                            (let ((_$e5595_
                                                   (u64vector? _datum5566_)))
                                              (if _$e5595_
                                                  _$e5595_
                                                  (let ((_$e5598_
                                                         (f32vector?
                                                          _datum5566_)))
                                                    (if _$e5598_
                                                        _$e5598_
                                                        (f64vector?
                                                         _datum5566_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5566_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5512_))))))))))
        (let ((_g55165529_
               (lambda (_g55175526_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g55175526_))))
          (let ((_g55155563_
                 (lambda (_g55175532_)
                   (if (gx#stx-pair? _g55175532_)
                       (let ((_e55195534_ (gx#stx-e _g55175532_)))
                         (let ((_hd55205537_ (##car _e55195534_))
                               (_tl55215539_ (##cdr _e55195534_)))
                           (if (gx#stx-pair? _tl55215539_)
                               (let ((_e55225542_ (gx#stx-e _tl55215539_)))
                                 (let ((_hd55235545_ (##car _e55225542_))
                                       (_tl55245547_ (##cdr _e55225542_)))
                                   (if (gx#stx-null? _tl55245547_)
                                       ((lambda (_L5550_)
                                          (cons 'quote
                                                (cons (_generate15514_
                                                       (gx#stx-e _L5550_))
                                                      '())))
                                        _hd55235545_)
                                       (_g55165529_ _g55175532_))))
                               (_g55165529_ _g55175532_))))
                       (_g55165529_ _g55175532_)))))
            (_g55155563_ _stx5512_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5474_)
      (let ((_g54765486_
             (lambda (_g54775483_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54775483_))))
        (let ((_g54755509_
               (lambda (_g54775489_)
                 (if (gx#stx-pair? _g54775489_)
                     (let ((_e54795491_ (gx#stx-e _g54775489_)))
                       (let ((_hd54805494_ (##car _e54795491_))
                             (_tl54815496_ (##cdr _e54795491_)))
                         ((lambda (_L5499_) (map gxc#compile-e _L5499_))
                          _tl54815496_)))
                     (_g54765486_ _g54775489_)))))
          (_g54755509_ _stx5474_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5436_)
      (let ((_g54385448_
             (lambda (_g54395445_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54395445_))))
        (let ((_g54375471_
               (lambda (_g54395451_)
                 (if (gx#stx-pair? _g54395451_)
                     (let ((_e54415453_ (gx#stx-e _g54395451_)))
                       (let ((_hd54425456_ (##car _e54415453_))
                             (_tl54435458_ (##cdr _e54415453_)))
                         ((lambda (_L5461_)
                            (cons 'if (map gxc#compile-e _L5461_)))
                          _tl54435458_)))
                     (_g54385448_ _g54395451_)))))
          (_g54375471_ _stx5436_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5385_)
      (let ((_g53875400_
             (lambda (_g53885397_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53885397_))))
        (let ((_g53865433_
               (lambda (_g53885403_)
                 (if (gx#stx-pair? _g53885403_)
                     (let ((_e53905405_ (gx#stx-e _g53885403_)))
                       (let ((_hd53915408_ (##car _e53905405_))
                             (_tl53925410_ (##cdr _e53905405_)))
                         (if (gx#stx-pair? _tl53925410_)
                             (let ((_e53935413_ (gx#stx-e _tl53925410_)))
                               (let ((_hd53945416_ (##car _e53935413_))
                                     (_tl53955418_ (##cdr _e53935413_)))
                                 (if (gx#stx-null? _tl53955418_)
                                     ((lambda (_L5421_)
                                        (gxc#generate-runtime-binding-id
                                         _L5421_))
                                      _hd53945416_)
                                     (_g53875400_ _g53885403_))))
                             (_g53875400_ _g53885403_))))
                     (_g53875400_ _g53885403_)))))
          (_g53865433_ _stx5385_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5318_)
      (let ((_g53205337_
             (lambda (_g53215334_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53215334_))))
        (let ((_g53195382_
               (lambda (_g53215340_)
                 (if (gx#stx-pair? _g53215340_)
                     (let ((_e53245342_ (gx#stx-e _g53215340_)))
                       (let ((_hd53255345_ (##car _e53245342_))
                             (_tl53265347_ (##cdr _e53245342_)))
                         (if (gx#stx-pair? _tl53265347_)
                             (let ((_e53275350_ (gx#stx-e _tl53265347_)))
                               (let ((_hd53285353_ (##car _e53275350_))
                                     (_tl53295355_ (##cdr _e53275350_)))
                                 (if (gx#stx-pair? _tl53295355_)
                                     (let ((_e53305358_
                                            (gx#stx-e _tl53295355_)))
                                       (let ((_hd53315361_ (##car _e53305358_))
                                             (_tl53325363_
                                              (##cdr _e53305358_)))
                                         (if (gx#stx-null? _tl53325363_)
                                             ((lambda (_L5366_ _L5367_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5367_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5366_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd53315361_
                                              _hd53285353_)
                                             (_g53205337_ _g53215340_))))
                                     (_g53205337_ _g53215340_))))
                             (_g53205337_ _g53215340_))))
                     (_g53205337_ _g53215340_)))))
          (_g53195382_ _stx5318_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5251_)
      (let ((_g52535270_
             (lambda (_g52545267_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52545267_))))
        (let ((_g52525315_
               (lambda (_g52545273_)
                 (if (gx#stx-pair? _g52545273_)
                     (let ((_e52575275_ (gx#stx-e _g52545273_)))
                       (let ((_hd52585278_ (##car _e52575275_))
                             (_tl52595280_ (##cdr _e52575275_)))
                         (if (gx#stx-pair? _tl52595280_)
                             (let ((_e52605283_ (gx#stx-e _tl52595280_)))
                               (let ((_hd52615286_ (##car _e52605283_))
                                     (_tl52625288_ (##cdr _e52605283_)))
                                 (if (gx#stx-pair? _tl52625288_)
                                     (let ((_e52635291_
                                            (gx#stx-e _tl52625288_)))
                                       (let ((_hd52645294_ (##car _e52635291_))
                                             (_tl52655296_
                                              (##cdr _e52635291_)))
                                         (if (gx#stx-null? _tl52655296_)
                                             ((lambda (_L5299_ _L5300_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5299_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5300_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd52645294_
                                              _hd52615286_)
                                             (_g52535270_ _g52545273_))))
                                     (_g52535270_ _g52545273_))))
                             (_g52535270_ _g52545273_))))
                     (_g52535270_ _g52545273_)))))
          (_g52525315_ _stx5251_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5184_)
      (let ((_g51865203_
             (lambda (_g51875200_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51875200_))))
        (let ((_g51855248_
               (lambda (_g51875206_)
                 (if (gx#stx-pair? _g51875206_)
                     (let ((_e51905208_ (gx#stx-e _g51875206_)))
                       (let ((_hd51915211_ (##car _e51905208_))
                             (_tl51925213_ (##cdr _e51905208_)))
                         (if (gx#stx-pair? _tl51925213_)
                             (let ((_e51935216_ (gx#stx-e _tl51925213_)))
                               (let ((_hd51945219_ (##car _e51935216_))
                                     (_tl51955221_ (##cdr _e51935216_)))
                                 (if (gx#stx-pair? _tl51955221_)
                                     (let ((_e51965224_
                                            (gx#stx-e _tl51955221_)))
                                       (let ((_hd51975227_ (##car _e51965224_))
                                             (_tl51985229_
                                              (##cdr _e51965224_)))
                                         (if (gx#stx-null? _tl51985229_)
                                             ((lambda (_L5232_ _L5233_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5232_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5233_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd51975227_
                                              _hd51945219_)
                                             (_g51865203_ _g51875206_))))
                                     (_g51865203_ _g51875206_))))
                             (_g51865203_ _g51875206_))))
                     (_g51865203_ _g51875206_)))))
          (_g51855248_ _stx5184_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5101_)
      (let ((_g51035124_
             (lambda (_g51045121_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51045121_))))
        (let ((_g51025181_
               (lambda (_g51045127_)
                 (if (gx#stx-pair? _g51045127_)
                     (let ((_e51085129_ (gx#stx-e _g51045127_)))
                       (let ((_hd51095132_ (##car _e51085129_))
                             (_tl51105134_ (##cdr _e51085129_)))
                         (if (gx#stx-pair? _tl51105134_)
                             (let ((_e51115137_ (gx#stx-e _tl51105134_)))
                               (let ((_hd51125140_ (##car _e51115137_))
                                     (_tl51135142_ (##cdr _e51115137_)))
                                 (if (gx#stx-pair? _tl51135142_)
                                     (let ((_e51145145_
                                            (gx#stx-e _tl51135142_)))
                                       (let ((_hd51155148_ (##car _e51145145_))
                                             (_tl51165150_
                                              (##cdr _e51145145_)))
                                         (if (gx#stx-pair? _tl51165150_)
                                             (let ((_e51175153_
                                                    (gx#stx-e _tl51165150_)))
                                               (let ((_hd51185156_
                                                      (##car _e51175153_))
                                                     (_tl51195158_
                                                      (##cdr _e51175153_)))
                                                 (if (gx#stx-null?
                                                      _tl51195158_)
                                                     ((lambda (_L5161_
                                                               _L5162_
                                                               _L5163_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5161_)
                            (cons (gxc#compile-e _L5162_)
                                  (cons (gxc#compile-e _L5163_)
                                        (cons ''#f '()))))))
              _hd51185156_
              _hd51155148_
              _hd51125140_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51035124_
                                                      _g51045127_))))
                                             (_g51035124_ _g51045127_))))
                                     (_g51035124_ _g51045127_))))
                             (_g51035124_ _g51045127_))))
                     (_g51035124_ _g51045127_)))))
          (_g51025181_ _stx5101_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5002_)
      (let ((_g50045029_
             (lambda (_g50055026_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50055026_))))
        (let ((_g50035098_
               (lambda (_g50055032_)
                 (if (gx#stx-pair? _g50055032_)
                     (let ((_e50105034_ (gx#stx-e _g50055032_)))
                       (let ((_hd50115037_ (##car _e50105034_))
                             (_tl50125039_ (##cdr _e50105034_)))
                         (if (gx#stx-pair? _tl50125039_)
                             (let ((_e50135042_ (gx#stx-e _tl50125039_)))
                               (let ((_hd50145045_ (##car _e50135042_))
                                     (_tl50155047_ (##cdr _e50135042_)))
                                 (if (gx#stx-pair? _tl50155047_)
                                     (let ((_e50165050_
                                            (gx#stx-e _tl50155047_)))
                                       (let ((_hd50175053_ (##car _e50165050_))
                                             (_tl50185055_
                                              (##cdr _e50165050_)))
                                         (if (gx#stx-pair? _tl50185055_)
                                             (let ((_e50195058_
                                                    (gx#stx-e _tl50185055_)))
                                               (let ((_hd50205061_
                                                      (##car _e50195058_))
                                                     (_tl50215063_
                                                      (##cdr _e50195058_)))
                                                 (if (gx#stx-pair?
                                                      _tl50215063_)
                                                     (let ((_e50225066_
                                                            (gx#stx-e
                                                             _tl50215063_)))
                                                       (let ((_hd50235069_
                                                              (##car _e50225066_))
                                                             (_tl50245071_
                                                              (##cdr _e50225066_)))
                                                         (if (gx#stx-null?
                                                              _tl50245071_)
                                                             ((lambda (_L5074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5075_
                               _L5076_
                               _L5077_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L5075_)
                                    (cons (gxc#compile-e _L5074_)
                                          (cons (gxc#compile-e _L5076_)
                                                (cons (gxc#compile-e _L5077_)
                                                      (cons ''#f '())))))))
                      _hd50235069_
                      _hd50205061_
                      _hd50175053_
                      _hd50145045_)
                     (_g50045029_ _g50055032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50045029_
                                                      _g50055032_))))
                                             (_g50045029_ _g50055032_))))
                                     (_g50045029_ _g50055032_))))
                             (_g50045029_ _g50055032_))))
                     (_g50045029_ _g50055032_)))))
          (_g50035098_ _stx5002_)))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx4919_)
      (let ((_g49214942_
             (lambda (_g49224939_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49224939_))))
        (let ((_g49204999_
               (lambda (_g49224945_)
                 (if (gx#stx-pair? _g49224945_)
                     (let ((_e49264947_ (gx#stx-e _g49224945_)))
                       (let ((_hd49274950_ (##car _e49264947_))
                             (_tl49284952_ (##cdr _e49264947_)))
                         (if (gx#stx-pair? _tl49284952_)
                             (let ((_e49294955_ (gx#stx-e _tl49284952_)))
                               (let ((_hd49304958_ (##car _e49294955_))
                                     (_tl49314960_ (##cdr _e49294955_)))
                                 (if (gx#stx-pair? _tl49314960_)
                                     (let ((_e49324963_
                                            (gx#stx-e _tl49314960_)))
                                       (let ((_hd49334966_ (##car _e49324963_))
                                             (_tl49344968_
                                              (##cdr _e49324963_)))
                                         (if (gx#stx-pair? _tl49344968_)
                                             (let ((_e49354971_
                                                    (gx#stx-e _tl49344968_)))
                                               (let ((_hd49364974_
                                                      (##car _e49354971_))
                                                     (_tl49374976_
                                                      (##cdr _e49354971_)))
                                                 (if (gx#stx-null?
                                                      _tl49374976_)
                                                     ((lambda (_L4979_
                                                               _L4980_
                                                               _L4981_)
                                                        (cons '##direct-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4979_)
                            (cons (gxc#compile-e _L4980_)
                                  (cons (gxc#compile-e _L4981_)
                                        (cons ''#f '()))))))
              _hd49364974_
              _hd49334966_
              _hd49304958_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49214942_
                                                      _g49224945_))))
                                             (_g49214942_ _g49224945_))))
                                     (_g49214942_ _g49224945_))))
                             (_g49214942_ _g49224945_))))
                     (_g49214942_ _g49224945_)))))
          (_g49204999_ _stx4919_)))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx4820_)
      (let ((_g48224847_
             (lambda (_g48234844_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48234844_))))
        (let ((_g48214916_
               (lambda (_g48234850_)
                 (if (gx#stx-pair? _g48234850_)
                     (let ((_e48284852_ (gx#stx-e _g48234850_)))
                       (let ((_hd48294855_ (##car _e48284852_))
                             (_tl48304857_ (##cdr _e48284852_)))
                         (if (gx#stx-pair? _tl48304857_)
                             (let ((_e48314860_ (gx#stx-e _tl48304857_)))
                               (let ((_hd48324863_ (##car _e48314860_))
                                     (_tl48334865_ (##cdr _e48314860_)))
                                 (if (gx#stx-pair? _tl48334865_)
                                     (let ((_e48344868_
                                            (gx#stx-e _tl48334865_)))
                                       (let ((_hd48354871_ (##car _e48344868_))
                                             (_tl48364873_
                                              (##cdr _e48344868_)))
                                         (if (gx#stx-pair? _tl48364873_)
                                             (let ((_e48374876_
                                                    (gx#stx-e _tl48364873_)))
                                               (let ((_hd48384879_
                                                      (##car _e48374876_))
                                                     (_tl48394881_
                                                      (##cdr _e48374876_)))
                                                 (if (gx#stx-pair?
                                                      _tl48394881_)
                                                     (let ((_e48404884_
                                                            (gx#stx-e
                                                             _tl48394881_)))
                                                       (let ((_hd48414887_
                                                              (##car _e48404884_))
                                                             (_tl48424889_
                                                              (##cdr _e48404884_)))
                                                         (if (gx#stx-null?
                                                              _tl48424889_)
                                                             ((lambda (_L4892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4893_
                               _L4894_
                               _L4895_)
                        (cons '##direct-structure-set!
                              (cons (gxc#compile-e _L4893_)
                                    (cons (gxc#compile-e _L4892_)
                                          (cons (gxc#compile-e _L4894_)
                                                (cons (gxc#compile-e _L4895_)
                                                      (cons ''#f '())))))))
                      _hd48414887_
                      _hd48384879_
                      _hd48354871_
                      _hd48324863_)
                     (_g48224847_ _g48234850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48224847_
                                                      _g48234850_))))
                                             (_g48224847_ _g48234850_))))
                                     (_g48224847_ _g48234850_))))
                             (_g48224847_ _g48234850_))))
                     (_g48224847_ _g48234850_)))))
          (_g48214916_ _stx4820_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4729_)
      (let ((_g47314741_
             (lambda (_g47324738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47324738_))))
        (let ((_g47304817_
               (lambda (_g47324744_)
                 (if (gx#stx-pair? _g47324744_)
                     (let ((_e47344746_ (gx#stx-e _g47324744_)))
                       (let ((_hd47354749_ (##car _e47344746_))
                             (_tl47364751_ (##cdr _e47344746_)))
                         ((lambda (_L4754_)
                            (let ((_ht4764_ (make-hash-table-eq)))
                              ((letrec ((_lp4766_
                                         (lambda (_rest4768_ _loads4769_)
                                           (let ((_K4771_ (lambda (_ctx4810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4811_)
                    (let ((_id4813_
                           (##structure-ref
                            _ctx4810_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4764_ _id4813_ '#f)
                          (_lp4766_ _rest4811_ _loads4769_)
                          (let ((_rt4815_
                                 (string-append
                                  (symbol->string _id4813_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4764_ _id4813_ _rt4815_)
                              (_lp4766_
                               _rest4811_
                               (cons _rt4815_ _loads4769_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest47724780_ _rest4768_))
                                               (let ((_E47754784_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest47724780_))))
                                                 (let ((_else47744792_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g47874789_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g47874789_))
                             (reverse _loads4769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K47764798_
                                                          (lambda (_rest4795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4796_)
                    (if (##structure-instance-of?
                         _in4796_
                         'gx#module-context::t)
                        (_K4771_ _in4796_ _rest4795_)
                        (if (##structure-direct-instance-of?
                             _in4796_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##direct-structure-ref
                                  _in4796_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4766_ _rest4795_ _loads4769_)
                                (_K4771_ (##direct-structure-ref
                                          (##direct-structure-ref
                                           _in4796_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4795_))
                            (if (##structure-direct-instance-of?
                                 _in4796_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##direct-structure-ref
                                      _in4796_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4766_ _rest4795_ _loads4769_)
                                    (_K4771_ (##direct-structure-ref
                                              _in4796_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4795_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4729_
                                 _in4796_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest47724780_)
                                                         (let ((_hd47774801_
                                                                (##car _rest47724780_))
                                                               (_tl47784803_
                                                                (##cdr _rest47724780_)))
                                                           (let ((_in4806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd47774801_))
                     (let ((_rest4808_ _tl47784803_))
                       (_K47764798_ _rest4808_ _in4806_))))
                 (_else47744792_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4766_)
                               _L4754_
                               '())))
                          _tl47364751_)))
                     (_g47314741_ _g47324744_)))))
          (_g47304817_ _stx4729_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4670_)
      (let ((_generate-quote4672_
             (lambda (_q4727_)
               (if (gx#identifier? _q4727_)
                   (gxc#generate-runtime-identifier _q4727_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4670_
                    _q4727_)))))
        (let ((_g46744687_
               (lambda (_g46754684_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46754684_))))
          (let ((_g46734724_
                 (lambda (_g46754690_)
                   (if (gx#stx-pair? _g46754690_)
                       (let ((_e46774692_ (gx#stx-e _g46754690_)))
                         (let ((_hd46784695_ (##car _e46774692_))
                               (_tl46794697_ (##cdr _e46774692_)))
                           (if (gx#stx-pair? _tl46794697_)
                               (let ((_e46804700_ (gx#stx-e _tl46794697_)))
                                 (let ((_hd46814703_ (##car _e46804700_))
                                       (_tl46824705_ (##cdr _e46804700_)))
                                   (if (gx#stx-null? _tl46824705_)
                                       ((lambda (_L4708_)
                                          (let ((_gid4721_
                                                 (gxc#generate-runtime-temporary__opt-lambda9353
                                                  '#t))
                                                (_quote-e4722_
                                                 (_generate-quote4672_
                                                  _L4708_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4722_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4721_)))
                                        _hd46814703_)
                                       (_g46744687_ _g46754690_))))
                               (_g46744687_ _g46754690_))))
                       (_g46744687_ _g46754690_)))))
            (_g46734724_ _stx4670_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4603_)
      (let ((_g46054622_
             (lambda (_g46064619_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46064619_))))
        (let ((_g46044667_
               (lambda (_g46064625_)
                 (if (gx#stx-pair? _g46064625_)
                     (let ((_e46094627_ (gx#stx-e _g46064625_)))
                       (let ((_hd46104630_ (##car _e46094627_))
                             (_tl46114632_ (##cdr _e46094627_)))
                         (if (gx#stx-pair? _tl46114632_)
                             (let ((_e46124635_ (gx#stx-e _tl46114632_)))
                               (let ((_hd46134638_ (##car _e46124635_))
                                     (_tl46144640_ (##cdr _e46124635_)))
                                 (if (gx#stx-pair? _tl46144640_)
                                     (let ((_e46154643_
                                            (gx#stx-e _tl46144640_)))
                                       (let ((_hd46164646_ (##car _e46154643_))
                                             (_tl46174648_
                                              (##cdr _e46154643_)))
                                         (if (gx#stx-null? _tl46174648_)
                                             ((lambda (_L4651_ _L4652_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4652_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4651_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd46164646_
                                              _hd46134638_)
                                             (_g46054622_ _g46064625_))))
                                     (_g46054622_ _g46064625_))))
                             (_g46054622_ _g46064625_))))
                     (_g46054622_ _g46064625_)))))
          (_g46044667_ _stx4603_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4552_ _state4553_)
      (let ((_g45554565_
             (lambda (_g45564562_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45564562_))))
        (let ((_g45544600_
               (lambda (_g45564568_)
                 (if (gx#stx-pair? _g45564568_)
                     (let ((_e45584570_ (gx#stx-e _g45564568_)))
                       (let ((_hd45594573_ (##car _e45584570_))
                             (_tl45604575_ (##cdr _e45584570_)))
                         ((lambda (_L4578_)
                            (let ((_c-body4592_
                                   (map (lambda (_g45874589_)
                                          (gxc#compile-e
                                           _g45874589_
                                           _state4553_))
                                        _L4578_)))
                              (let ((_c-body4597_
                                     (filter (lambda (_$obj4594_)
                                               (not (eq? _$obj4594_ '#!void)))
                                             _c-body4592_)))
                                (let () (cons '%#begin _c-body4597_)))))
                          _tl45604575_)))
                     (_g45554565_ _g45564568_)))))
          (_g45544600_ _stx4552_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4460_ _state4461_)
      (let ((_g44634473_
             (lambda (_g44644470_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44644470_))))
        (let ((_g44624549_
               (lambda (_g44644476_)
                 (if (gx#stx-pair? _g44644476_)
                     (let ((_e44664478_ (gx#stx-e _g44644476_)))
                       (let ((_hd44674481_ (##car _e44664478_))
                             (_tl44684483_ (##cdr _e44664478_)))
                         ((lambda (_L4486_)
                            (let ((_phi4496_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4498_
                                     (gxc#meta-state-begin-phi!
                                      _state4461_
                                      _phi4496_)))
                                (let ((_compiled4501_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4486_)
                                           _state4461_))
                                        gx#current-expander-phi
                                        _phi4496_)))
                                  (let ()
                                    (let ((_g45044514_
                                           (lambda (_g45054511_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g45054511_))))
                                      (let ((_g45034546_
                                             (lambda (_g45054517_)
                                               (if (gx#stx-pair? _g45054517_)
                                                   (let ((_e45074519_
                                                          (gx#stx-e
                                                           _g45054517_)))
                                                     (let ((_hd45084522_
                                                            (##car _e45074519_))
                                                           (_tl45094524_
                                                            (##cdr _e45074519_)))
                                                       (if (gx#identifier?
                                                            _hd45084522_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd45084522_)
                                                               ((lambda (_L4527_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4544_
                                 (filter (lambda (_$obj4541_)
                                           (not (eq? _$obj4541_ '#!void)))
                                         _L4527_)))
                            (if _block4498_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4498_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4544_))
                                (if (null? _c-body4544_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4544_)))))
                        _tl45094524_)
                       (_g45044514_ _g45054517_))
                   (_g45044514_ _g45054517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45044514_
                                                    _g45054517_)))))
                                        (_g45034546_ _compiled4501_))))))))
                          _tl44684483_)))
                     (_g44634473_ _g44644476_)))))
          (_g44624549_ _stx4460_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4391_ _state4392_)
      (begin
        (gxc#meta-state-end-phi! _state4392_)
        (let ((_g43944408_
               (lambda (_g43954405_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43954405_))))
          (let ((_g43934457_
                 (lambda (_g43954411_)
                   (if (gx#stx-pair? _g43954411_)
                       (let ((_e43984413_ (gx#stx-e _g43954411_)))
                         (let ((_hd43994416_ (##car _e43984413_))
                               (_tl44004418_ (##cdr _e43984413_)))
                           (if (gx#stx-pair? _tl44004418_)
                               (let ((_e44014421_ (gx#stx-e _tl44004418_)))
                                 (let ((_hd44024424_ (##car _e44014421_))
                                       (_tl44034426_ (##cdr _e44014421_)))
                                   ((lambda (_L4429_ _L4430_)
                                      (let ((_key4443_
                                             (gx#core-identifier-key _L4430_)))
                                        (begin
                                          (if (interned-symbol? _key4443_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4391_
                                               _L4430_
                                               _key4443_))
                                          (let ((_ctx4445_
                                                 (gx#syntax-local-e__0
                                                  _L4430_)))
                                            (let ((_code4448_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4445_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4392_))
                                                    gx#current-expander-context
                                                    _ctx4445_)))
                                              (let ((_rt4450_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4445_
                                                      '#f)))
                                                (let ((_loader4452_
                                                       (if _rt4450_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4450_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4454_
                                                         (gx#stx-e _L4430_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4392_)
                                                        (cons '%#module
                                                              (cons _modid4454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4448_ _loader4452_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl44034426_
                                    _hd44024424_)))
                               (_g43944408_ _g43954411_))))
                       (_g43944408_ _g43954411_)))))
            (_g43934457_ _stx4391_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4381_ _context-chain4382_)
      ((letrec ((_lp4384_
                 (lambda (_ctx4386_ _path4387_)
                   (let ((_super4389_
                          (##structure-ref
                           _ctx4386_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4389_ _context-chain4382_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4386_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4387_)
                         (if (##structure-instance-of?
                              _super4389_
                              'gx#module-context::t)
                             (_lp4384_
                              _super4389_
                              (cons (car (##structure-ref
                                          _ctx4386_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4387_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4386_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4387_)))))))
         _lp4384_)
       _ctx4381_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4376_
                 (lambda (_ctx4378_ _r4379_)
                   (if (##structure-instance-of?
                        _ctx4378_
                        'gx#module-context::t)
                       (_lp4376_
                        (##structure-ref _ctx4378_ '3 gx#phi-context::t '#f)
                        (cons _ctx4378_ _r4379_))
                       _r4379_))))
         _lp4376_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4145_ _state4146_)
      (let ((_context-chain4148_ (gxc#current-context-chain)))
        (let ((_make-import-spec4149_
               (lambda (_in4312_)
                 (let ((_in43134325_ _in4312_))
                   (let ((_E43154329_
                          (lambda ()
                            (error '"No clause matching" _in43134325_))))
                     (let ((_K43164339_
                            (lambda (_phi4332_
                                     _name4333_
                                     _src-name4334_
                                     _src-phi4335_
                                     _src-key4336_
                                     _src-ctx4337_)
                              (cons _phi4332_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4333_)
                                          (cons _src-phi4335_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4334_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in43134325_
                            (##type-id gx#module-import::t))
                           (let ((_e43174342_ (##vector-ref _in43134325_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e43174342_
                                  (##type-id gx#module-export::t))
                                 (let ((_e43204345_
                                        (##vector-ref _e43174342_ '1)))
                                   (let ((_src-ctx4348_ _e43204345_))
                                     (let ((_e43214350_
                                            (##vector-ref _e43174342_ '2)))
                                       (let ((_src-key4353_ _e43214350_))
                                         (let ((_e43224355_
                                                (##vector-ref _e43174342_ '3)))
                                           (let ((_src-phi4358_ _e43224355_))
                                             (let ((_e43234360_
                                                    (##vector-ref
                                                     _e43174342_
                                                     '4)))
                                               (let ((_src-name4363_
                                                      _e43234360_))
                                                 (let ((_e43184365_
                                                        (##vector-ref
                                                         _in43134325_
                                                         '2)))
                                                   (let ((_name4368_
                                                          _e43184365_))
                                                     (let ((_e43194370_
                                                            (##vector-ref
                                                             _in43134325_
                                                             '3)))
                                                       (let ((_phi4373_
                                                              _e43194370_))
                                                         (_K43164339_
                                                          _phi4373_
                                                          _name4368_
                                                          _src-name4363_
                                                          _src-phi4358_
                                                          _src-key4353_
                                                          _src-ctx4348_)))))))))))))
                                 (_E43154329_)))
                           (_E43154329_))))))))
          (let ((_make-import-path4150_
                 (lambda (_ctx4310_)
                   (gxc#generate-meta-import-path
                    _ctx4310_
                    _context-chain4148_))))
            (let ((_make-import-spec-in4151_
                   (lambda (_ctx4307_ _in4308_)
                     (cons 'spec:
                           (cons (_make-import-path4150_ _ctx4307_)
                                 (reverse _in4308_))))))
              (begin
                (gxc#meta-state-end-phi! _state4146_)
                (let ((_g41534163_
                       (lambda (_g41544160_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g41544160_))))
                  (let ((_g41524304_
                         (lambda (_g41544166_)
                           (if (gx#stx-pair? _g41544166_)
                               (let ((_e41564168_ (gx#stx-e _g41544166_)))
                                 (let ((_hd41574171_ (##car _e41564168_))
                                       (_tl41584173_ (##cdr _e41564168_)))
                                   ((lambda (_L4176_)
                                      ((letrec ((_lp4187_
                                                 (lambda (_rest4189_
                                                          _current-src4190_
                                                          _current-in4191_
                                                          _r4192_)
                                                   (let ((_rest41934201_
                                                          _rest4189_))
                                                     (let ((_E41964205_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest41934201_))))
               (let ((_else41954211_
                      (lambda ()
                        (let ((_r4209_ (if _current-src4190_
                                           (cons (_make-import-spec-in4151_
                                                  _current-src4190_
                                                  _current-in4191_)
                                                 _r4192_)
                                           _r4192_)))
                          (cons '%#import (reverse _r4209_))))))
                 (let ((_K41974292_
                        (lambda (_rest4214_ _in4215_)
                          (if (##structure-direct-instance-of?
                               _in4215_
                               'gx#module-import::t)
                              (let ((_in42164223_ _in4215_))
                                (let ((_E42184227_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in42164223_))))
                                  (let ((_K42194232_
                                         (lambda (_src-ctx4230_)
                                           (if (eq? _current-src4190_
                                                    _src-ctx4230_)
                                               (_lp4187_
                                                _rest4214_
                                                _current-src4190_
                                                (cons (_make-import-spec4149_
                                                       _in4215_)
                                                      _current-in4191_)
                                                _r4192_)
                                               (if _current-src4190_
                                                   (_lp4187_
                                                    _rest4214_
                                                    _src-ctx4230_
                                                    (cons (_make-import-spec4149_
                                                           _in4215_)
                                                          '())
                                                    (cons (_make-import-spec-in4151_
                                                           _current-src4190_
                                                           _current-in4191_)
                                                          _r4192_))
                                                   (_lp4187_
                                                    _rest4214_
                                                    _src-ctx4230_
                                                    (cons (_make-import-spec4149_
                                                           _in4215_)
                                                          '())
                                                    _r4192_))))))
                                    (if (##structure-direct-instance-of?
                                         _in42164223_
                                         (##type-id gx#module-import::t))
                                        (let ((_e42204235_
                                               (##vector-ref _in42164223_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e42204235_
                                               (##type-id gx#module-export::t))
                                              (let ((_e42214238_
                                                     (##vector-ref
                                                      _e42204235_
                                                      '1)))
                                                (let ((_src-ctx4241_
                                                       _e42214238_))
                                                  (_K42194232_ _src-ctx4241_)))
                                              (_E42184227_)))
                                        (_E42184227_)))))
                              (if (##structure-direct-instance-of?
                                   _in4215_
                                   'gx#import-set::t)
                                  (let ((_phi4243_
                                         (##direct-structure-ref
                                          _in4215_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4245_
                                           (##direct-structure-ref
                                            _in4215_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4285_
                                             (let ((_g42464255_
                                                    (_make-import-path4150_
                                                     _src4245_)))
                                               (let ((_E42494259_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g42464255_))))
                                                 (let ((_try-match42484270_
                                                        (lambda ()
                                                          (let ((_K42504265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4263_) (cons 'in: _path4263_))))
                    (let ((_path4268_ _g42464255_))
                      (_K42504265_ _path4268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K42514275_
                                                          (lambda (_path4273_)
                                                            _path4273_)))
                                                     (if (##pair? _g42464255_)
                                                         (let ((_hd42524278_
                                                                (##car _g42464255_))
                                                               (_tl42534280_
                                                                (##cdr _g42464255_)))
                                                           (let ((_path4283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd42524278_))
                     (if (##null? _tl42534280_)
                         (_K42514275_ _path4283_)
                         (_try-match42484270_))))
                 (_try-match42484270_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4287_ (if _current-src4190_
                                                           (cons (_make-import-spec-in4151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4190_
                          _current-in4191_)
                         _r4192_)
                   _r4192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4187_
                                             _rest4214_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4243_)
                                                       _src-in4285_
                                                       (cons 'phi:
                                                             (cons _phi4243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4285_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4287_)))))))
                                  (if (##structure-instance-of?
                                       _in4215_
                                       'gx#module-context::t)
                                      (let ((_r4290_ (if _current-src4190_
                                                         (cons (_make-import-spec-in4151_
                                                                _current-src4190_
                                                                _current-in4191_)
                                                               _r4192_)
                                                         _r4192_)))
                                        (_lp4187_
                                         _rest4214_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4150_
                                                      _in4215_))
                                               _r4290_)))
                                      '#!void))))))
                   (if (##pair? _rest41934201_)
                       (let ((_hd41984295_ (##car _rest41934201_))
                             (_tl41994297_ (##cdr _rest41934201_)))
                         (let ((_in4300_ _hd41984295_))
                           (let ((_rest4302_ _tl41994297_))
                             (_K41974292_ _rest4302_ _in4300_))))
                       (_else41954211_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4187_)
                                       _L4176_
                                       '#f
                                       '()
                                       '()))
                                    _tl41584173_)))
                               (_g41534163_ _g41544166_)))))
                    (_g41524304_ _stx4145_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3955_ _state3956_)
      (let ((_context-chain3958_ (gxc#current-context-chain)))
        (let ((_make-import-path3959_
               (lambda (_ctx4143_)
                 (gxc#generate-meta-import-path
                  _ctx4143_
                  _context-chain3958_))))
          (let ((_g39613971_
                 (lambda (_g39623968_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g39623968_))))
            (let ((_g39604140_
                   (lambda (_g39623974_)
                     (if (gx#stx-pair? _g39623974_)
                         (let ((_e39643976_ (gx#stx-e _g39623974_)))
                           (let ((_hd39653979_ (##car _e39643976_))
                                 (_tl39663981_ (##cdr _e39643976_)))
                             ((lambda (_L3984_)
                                ((letrec ((_lp3995_
                                           (lambda (_rest3997_ _r3998_)
                                             (let ((_rest39994007_ _rest3997_))
                                               (let ((_E40024011_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest39994007_))))
                                                 (let ((_else40014015_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3998_)))))
                                                   (let ((_K40034128_
                                                          (lambda (_rest4018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out4019_)
                    (let ((_out40204033_ _out4019_))
                      (let ((_E40234037_
                             (lambda ()
                               (error '"No clause matching" _out40204033_))))
                        (let ((_try-match40224100_
                               (lambda ()
                                 (let ((_K40244087_
                                        (lambda (_phi4041_ _src4042_)
                                          (let ((_out4082_
                                                 (if _src4042_
                                                     (cons 'import:
                                                           (cons (let ((_g40434052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3959_ _src4042_)))
                           (let ((_E40464056_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g40434052_))))
                             (let ((_try-match40454067_
                                    (lambda ()
                                      (let ((_K40474062_
                                             (lambda (_path4060_)
                                               (cons 'in: _path4060_))))
                                        (let ((_path4065_ _g40434052_))
                                          (_K40474062_ _path4065_))))))
                               (let ((_K40484072_
                                      (lambda (_path4070_) _path4070_)))
                                 (if (##pair? _g40434052_)
                                     (let ((_hd40494075_ (##car _g40434052_))
                                           (_tl40504077_ (##cdr _g40434052_)))
                                       (let ((_path4080_ _hd40494075_))
                                         (if (##null? _tl40504077_)
                                             (_K40484072_ _path4080_)
                                             (_try-match40454067_))))
                                     (_try-match40454067_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out4084_
                                                   (if (fxzero? _phi4041_)
                                                       _out4082_
                                                       (cons 'phi:
                                                             (cons _phi4041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out4082_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3995_
                                                 _rest4018_
                                                 (cons _out4084_
                                                       _r3998_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out40204033_
                                        (##type-id gx#export-set::t))
                                       (let ((_e40254090_
                                              (##vector-ref _out40204033_ '1)))
                                         (let ((_src4093_ _e40254090_))
                                           (let ((_e40264095_
                                                  (##vector-ref
                                                   _out40204033_
                                                   '2)))
                                             (let ((_phi4098_ _e40264095_))
                                               (_K40244087_
                                                _phi4098_
                                                _src4093_)))))
                                       (_E40234037_))))))
                          (let ((_K40274107_
                                 (lambda (_name4103_ _phi4104_ _key4105_)
                                   (_lp3995_
                                    _rest4018_
                                    (cons (cons 'spec:
                                                (cons _phi4104_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4105_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name4103_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3998_)))))
                            (if (##structure-direct-instance-of?
                                 _out40204033_
                                 (##type-id gx#module-export::t))
                                (let ((_e40284110_
                                       (##vector-ref _out40204033_ '1)))
                                  (let ((_e40294113_
                                         (##vector-ref _out40204033_ '2)))
                                    (let ((_key4116_ _e40294113_))
                                      (let ((_e40304118_
                                             (##vector-ref _out40204033_ '3)))
                                        (let ((_phi4121_ _e40304118_))
                                          (let ((_e40314123_
                                                 (##vector-ref
                                                  _out40204033_
                                                  '4)))
                                            (let ((_name4126_ _e40314123_))
                                              (_K40274107_
                                               _name4126_
                                               _phi4121_
                                               _key4116_))))))))
                                (_try-match40224100_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest39994007_)
                                                         (let ((_hd40044131_
                                                                (##car _rest39994007_))
                                                               (_tl40054133_
                                                                (##cdr _rest39994007_)))
                                                           (let ((_out4136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd40044131_))
                     (let ((_rest4138_ _tl40054133_))
                       (_K40034128_ _rest4138_ _out4136_))))
                 (_else40014015_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3995_)
                                 _L3984_
                                 '()))
                              _tl39663981_)))
                         (_g39613971_ _g39623974_)))))
              (_g39604140_ _stx3955_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3916_ _state3917_)
      (begin
        (gxc#meta-state-end-phi! _state3917_)
        (let ((_g39193929_
               (lambda (_g39203926_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g39203926_))))
          (let ((_g39183952_
                 (lambda (_g39203932_)
                   (if (gx#stx-pair? _g39203932_)
                       (let ((_e39223934_ (gx#stx-e _g39203932_)))
                         (let ((_hd39233937_ (##car _e39223934_))
                               (_tl39243939_ (##cdr _e39223934_)))
                           ((lambda (_L3942_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3942_)))
                            _tl39243939_)))
                       (_g39193929_ _g39203932_)))))
            (_g39183952_ _stx3916_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3787_ _state3788_)
      (let ((_generate13790_
             (lambda (_id3911_ _eid3912_)
               (let ((_eid3914_ (gx#stx-e _eid3912_)))
                 (begin
                   (if (interned-symbol? _eid3914_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3787_
                        _eid3914_))
                   (cons (gxc#generate-runtime-identifier _id3911_)
                         (cons _eid3914_ '())))))))
        (let ((_g37923820_
               (lambda (_g37933817_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37933817_))))
          (let ((_g37913908_
                 (lambda (_g37933823_)
                   (if (gx#stx-pair? _g37933823_)
                       (let ((_e37963825_ (gx#stx-e _g37933823_)))
                         (let ((_hd37973828_ (##car _e37963825_))
                               (_tl37983830_ (##cdr _e37963825_)))
                           (if (gx#stx-pair/null? _tl37983830_)
                               (if (fx>= (gx#stx-length _tl37983830_) '0)
                                   (let ((_g10492_
                                          (gx#syntax-split-splice
                                           _tl37983830_
                                           '0)))
                                     (begin
                                       (let ((_g10493_
                                              (values-count _g10492_)))
                                         (if (not (fx= _g10493_ 2))
                                             (error "Context expects 2 values"
                                                    _g10493_)))
                                       (let ((_target37993833_
                                              (values-ref _g10492_ 0))
                                             (_tl38013835_
                                              (values-ref _g10492_ 1)))
                                         (if (gx#stx-null? _tl38013835_)
                                             (letrec ((_loop38023838_
                                                       (lambda (_hd38003841_
                                                                _eid38063843_
                                                                _id38073845_)
                                                         (if (gx#stx-pair?
                                                              _hd38003841_)
                                                             (let ((_e38033848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd38003841_)))
                       (let ((_lp-hd38043851_ (##car _e38033848_))
                             (_lp-tl38053853_ (##cdr _e38033848_)))
                         (if (gx#stx-pair? _lp-hd38043851_)
                             (let ((_e38103856_ (gx#stx-e _lp-hd38043851_)))
                               (let ((_hd38113859_ (##car _e38103856_))
                                     (_tl38123861_ (##cdr _e38103856_)))
                                 (if (gx#stx-pair? _tl38123861_)
                                     (let ((_e38133864_
                                            (gx#stx-e _tl38123861_)))
                                       (let ((_hd38143867_ (##car _e38133864_))
                                             (_tl38153869_
                                              (##cdr _e38133864_)))
                                         (if (gx#stx-null? _tl38153869_)
                                             (_loop38023838_
                                              _lp-tl38053853_
                                              (cons _hd38143867_ _eid38063843_)
                                              (cons _hd38113859_ _id38073845_))
                                             (_g37923820_ _g37933823_))))
                                     (_g37923820_ _g37933823_))))
                             (_g37923820_ _g37933823_))))
                     (let ((_eid38083872_ (reverse _eid38063843_))
                           (_id38093874_ (reverse _id38073845_)))
                       ((lambda (_L3877_ _L3878_)
                          (cons '%#extern
                                (map _generate13790_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g38933896_
                                                        _g38943898_)
                                                 (cons _g38933896_
                                                       _g38943898_))
                                               '()
                                               _L3878_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g39003903_
                                                        _g39013905_)
                                                 (cons _g39003903_
                                                       _g39013905_))
                                               '()
                                               _L3877_)))))
                        _eid38083872_
                        _id38093874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop38023838_
                                                _target37993833_
                                                '()
                                                '()))
                                             (_g37923820_ _g37933823_)))))
                                   (_g37923820_ _g37933823_))
                               (_g37923820_ _g37933823_))))
                       (_g37923820_ _g37933823_)))))
            (_g37913908_ _stx3787_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3582_ _state3583_)
      (let ((_generate13585_
             (lambda (_id3782_)
               (let ((_eid3784_ (gxc#generate-runtime-binding-id _id3782_))
                     (_ident3785_ (gxc#generate-runtime-identifier _id3782_)))
                 (cons '%#define-runtime
                       (cons _ident3785_ (cons _eid3784_ '())))))))
        (let ((_generate*3586_
               (lambda (_all3750_)
                 (let ((_all37513759_ _all3750_))
                   (let ((_E37543763_
                          (lambda ()
                            (error '"No clause matching" _all37513759_))))
                     (let ((_else37533767_
                            (lambda () (cons '%#begin _all3750_))))
                       (let ((_K37553772_ (lambda (_one3770_) _one3770_)))
                         (if (##pair? _all37513759_)
                             (let ((_hd37563775_ (##car _all37513759_))
                                   (_tl37573777_ (##cdr _all37513759_)))
                               (let ((_one3780_ _hd37563775_))
                                 (if (##null? _tl37573777_)
                                     (_K37553772_ _one3780_)
                                     (_else37533767_))))
                             (_else37533767_)))))))))
          (let ((_g35883605_
                 (lambda (_g35893602_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g35893602_))))
            (let ((_g35873747_
                   (lambda (_g35893608_)
                     (if (gx#stx-pair? _g35893608_)
                         (let ((_e35923610_ (gx#stx-e _g35893608_)))
                           (let ((_hd35933613_ (##car _e35923610_))
                                 (_tl35943615_ (##cdr _e35923610_)))
                             (if (gx#stx-pair? _tl35943615_)
                                 (let ((_e35953618_ (gx#stx-e _tl35943615_)))
                                   (let ((_hd35963621_ (##car _e35953618_))
                                         (_tl35973623_ (##cdr _e35953618_)))
                                     (if (gx#stx-pair? _tl35973623_)
                                         (let ((_e35983626_
                                                (gx#stx-e _tl35973623_)))
                                           (let ((_hd35993629_
                                                  (##car _e35983626_))
                                                 (_tl36003631_
                                                  (##cdr _e35983626_)))
                                             (if (gx#stx-null? _tl36003631_)
                                                 ((lambda (_L3634_ _L3635_)
                                                    ((letrec ((_lp3651_
                                                               (lambda (_rest3653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3654_)
                         (let ((_g36593675_
                                (lambda (_g36603672_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g36603672_))))
                           (let ((_g36583682_
                                  (lambda (_g36603678_)
                                    ((lambda ()
                                       (_generate*3586_ (reverse _r3654_)))))))
                             (let ((_g36573698_
                                    (lambda (_g36603685_)
                                      ((lambda (_L3687_)
                                         (if (gx#identifier? _L3687_)
                                             (_generate*3586_
                                              (foldl1 cons
                                                      (cons (_generate13585_
                                                             _L3687_)
                                                            '())
                                                      _r3654_))
                                             (_g36583682_ _g36603685_)))
                                       _g36603685_))))
                               (let ((_g36563722_
                                      (lambda (_g36603701_)
                                        (if (gx#stx-pair? _g36603701_)
                                            (let ((_e36673703_
                                                   (gx#stx-e _g36603701_)))
                                              (let ((_hd36683706_
                                                     (##car _e36673703_))
                                                    (_tl36693708_
                                                     (##cdr _e36673703_)))
                                                ((lambda (_L3711_ _L3712_)
                                                   (_lp3651_
                                                    _L3711_
                                                    (cons (_generate13585_
                                                           _L3712_)
                                                          _r3654_)))
                                                 _tl36693708_
                                                 _hd36683706_)))
                                            (_g36573698_ _g36603701_)))))
                                 (let ((_g36553744_
                                        (lambda (_g36603725_)
                                          (if (gx#stx-pair? _g36603725_)
                                              (let ((_e36623727_
                                                     (gx#stx-e _g36603725_)))
                                                (let ((_hd36633730_
                                                       (##car _e36623727_))
                                                      (_tl36643732_
                                                       (##cdr _e36623727_)))
                                                  (if (gx#stx-datum?
                                                       _hd36633730_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd36633730_)
                          '#f)
                  ((lambda (_L3735_) (_lp3651_ _L3735_ _r3654_)) _tl36643732_)
                  (_g36563722_ _g36603725_))
              (_g36563722_ _g36603725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g36563722_ _g36603725_)))))
                                   (_g36553744_ _rest3653_)))))))))
               _lp3651_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3635_
                                                     '()))
                                                  _hd35993629_
                                                  _hd35963621_)
                                                 (_g35883605_ _g35893608_))))
                                         (_g35883605_ _g35893608_))))
                                 (_g35883605_ _g35893608_))))
                         (_g35883605_ _g35893608_)))))
              (_g35873747_ _stx3582_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3479_ _state3480_)
      (let ((_g34823499_
             (lambda (_g34833496_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34833496_))))
        (let ((_g34813579_
               (lambda (_g34833502_)
                 (if (gx#stx-pair? _g34833502_)
                     (let ((_e34863504_ (gx#stx-e _g34833502_)))
                       (let ((_hd34873507_ (##car _e34863504_))
                             (_tl34883509_ (##cdr _e34863504_)))
                         (if (gx#stx-pair? _tl34883509_)
                             (let ((_e34893512_ (gx#stx-e _tl34883509_)))
                               (let ((_hd34903515_ (##car _e34893512_))
                                     (_tl34913517_ (##cdr _e34893512_)))
                                 (if (gx#stx-pair? _tl34913517_)
                                     (let ((_e34923520_
                                            (gx#stx-e _tl34913517_)))
                                       (let ((_hd34933523_ (##car _e34923520_))
                                             (_tl34943525_
                                              (##cdr _e34923520_)))
                                         (if (gx#stx-null? _tl34943525_)
                                             ((lambda (_L3528_ _L3529_)
                                                (let ((_eid3544_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3529_)))
                                                  (let ((_phi3546_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3548_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3480_
                                                            _phi3546_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g35513558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g35523555_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g35523555_))))
                    (let ((_g35503576_
                           (lambda (_g35523561_)
                             ((lambda (_L3563_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3480_
                                   _phi3546_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3563_ (cons _L3528_ '()))))))
                              _g35523561_))))
                      (_g35503576_ _eid3544_)))
                  (if _block3548_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3548_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3529_)
                                                    (cons _eid3544_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3529_)
                                  (cons _eid3544_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34933523_
                                              _hd34903515_)
                                             (_g34823499_ _g34833502_))))
                                     (_g34823499_ _g34833502_))))
                             (_g34823499_ _g34833502_))))
                     (_g34823499_ _g34833502_)))))
          (_g34813579_ _stx3479_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3411_ _state3412_)
      (let ((_g34143431_
             (lambda (_g34153428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34153428_))))
        (let ((_g34133476_
               (lambda (_g34153434_)
                 (if (gx#stx-pair? _g34153434_)
                     (let ((_e34183436_ (gx#stx-e _g34153434_)))
                       (let ((_hd34193439_ (##car _e34183436_))
                             (_tl34203441_ (##cdr _e34183436_)))
                         (if (gx#stx-pair? _tl34203441_)
                             (let ((_e34213444_ (gx#stx-e _tl34203441_)))
                               (let ((_hd34223447_ (##car _e34213444_))
                                     (_tl34233449_ (##cdr _e34213444_)))
                                 (if (gx#stx-pair? _tl34233449_)
                                     (let ((_e34243452_
                                            (gx#stx-e _tl34233449_)))
                                       (let ((_hd34253455_ (##car _e34243452_))
                                             (_tl34263457_
                                              (##cdr _e34243452_)))
                                         (if (gx#stx-null? _tl34263457_)
                                             ((lambda (_L3460_ _L3461_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3461_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3460_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34253455_
                                              _hd34223447_)
                                             (_g34143431_ _g34153434_))))
                                     (_g34143431_ _g34153434_))))
                             (_g34143431_ _g34153434_))))
                     (_g34143431_ _g34153434_)))))
          (_g34133476_ _stx3411_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3408_ _state3409_)
      (begin
        (gxc#meta-state-add-phi!
         _state3409_
         (gx#current-expander-phi)
         _stx3408_)
        (gxc#generate-meta-define-values% _stx3408_ _state3409_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3405_ _state3406_)
      (begin
        (gxc#meta-state-add-phi!
         _state3406_
         (gx#current-expander-phi)
         _stx3405_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3402_
      (apply make-struct-instance gxc#meta-state::t _$args3402_)))
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
    (lambda (_self3399_ _ctx3400_)
      (struct-instance-init!
       _self3399_
       (symbol->string
        (##structure-ref _ctx3400_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3396_
      (apply make-struct-instance gxc#meta-state-block::t _$args3396_)))
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
    (lambda (_state3355_ _phi3356_)
      (let ((_state33573365_ _state3355_))
        (let ((_E33593369_
               (lambda () (error '"No clause matching" _state33573365_))))
          (let ((_K33603378_
                 (lambda (_open3372_ _n3373_ _src3374_)
                   (if (table-ref _open3372_ _phi3356_ '#f)
                       '#f
                       (let ((_block-ref3376_
                              (string-append
                               _src3374_
                               '"__"
                               (number->string _n3373_))))
                         (begin
                           (##structure-set!
                            _state3355_
                            (fx+ _n3373_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3372_
                            _phi3356_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3356_
                             _n3373_
                             '()))
                           _block-ref3376_))))))
            (if (##structure-instance-of?
                 _state33573365_
                 (##type-id gxc#meta-state::t))
                (let ((_e33613381_ (##vector-ref _state33573365_ '1)))
                  (let ((_src3384_ _e33613381_))
                    (let ((_e33623386_ (##vector-ref _state33573365_ '2)))
                      (let ((_n3389_ _e33623386_))
                        (let ((_e33633391_ (##vector-ref _state33573365_ '3)))
                          (let ((_open3394_ _e33633391_))
                            (_K33603378_ _open3394_ _n3389_ _src3384_)))))))
                (_E33593369_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3349_ _phi3350_ _stx3351_)
      (let ((_block3353_
             (table-ref
              (##structure-ref _state3349_ '3 gxc#meta-state::t '#f)
              _phi3350_
              '#f)))
        (##structure-set!
         _block3353_
         (cons _stx3351_
               (##structure-ref _block3353_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3344_)
      (begin
        (##structure-set!
         _state3344_
         (hash-fold
          (lambda (_g10494_ _block3346_ _r3347_) (cons _block3346_ _r3347_))
          (##structure-ref _state3344_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3344_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3344_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3296_)
      (begin
        (gxc#meta-state-end-phi! _state3296_)
        (foldl1 (lambda (_block3298_ _r3299_)
                  (let ((_block33003309_ _block3298_))
                    (let ((_E33023313_
                           (lambda ()
                             (error '"No clause matching" _block33003309_))))
                      (let ((_K33033321_
                             (lambda (_code3316_ _n3317_ _phi3318_ _ctx3319_)
                               (if (null? _code3316_)
                                   _r3299_
                                   (cons (cons _ctx3319_
                                               (cons _phi3318_
                                                     (cons _n3317_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3316_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3299_)))))
                        (if (##structure-instance-of?
                             _block33003309_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e33043324_
                                   (##vector-ref _block33003309_ '1)))
                              (let ((_ctx3327_ _e33043324_))
                                (let ((_e33053329_
                                       (##vector-ref _block33003309_ '2)))
                                  (let ((_phi3332_ _e33053329_))
                                    (let ((_e33063334_
                                           (##vector-ref _block33003309_ '3)))
                                      (let ((_n3337_ _e33063334_))
                                        (let ((_e33073339_
                                               (##vector-ref
                                                _block33003309_
                                                '4)))
                                          (let ((_code3342_ _e33073339_))
                                            (_K33033321_
                                             _code3342_
                                             _n3337_
                                             _phi3332_
                                             _ctx3327_)))))))))
                            (_E33023313_))))))
                '()
                (##structure-ref _state3296_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3292_)
      (let ((_ht3294_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3292_ _ht3294_)
          _ht3294_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3235_ _ht3236_)
      (let ((_g32383251_
             (lambda (_g32393248_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32393248_))))
        (let ((_g32373289_
               (lambda (_g32393254_)
                 (if (gx#stx-pair? _g32393254_)
                     (let ((_e32413256_ (gx#stx-e _g32393254_)))
                       (let ((_hd32423259_ (##car _e32413256_))
                             (_tl32433261_ (##cdr _e32413256_)))
                         (if (gx#stx-pair? _tl32433261_)
                             (let ((_e32443264_ (gx#stx-e _tl32433261_)))
                               (let ((_hd32453267_ (##car _e32443264_))
                                     (_tl32463269_ (##cdr _e32443264_)))
                                 (if (gx#stx-null? _tl32463269_)
                                     ((lambda (_L3272_)
                                        (let ((_bind3284_
                                               (gx#resolve-identifier__0
                                                _L3272_)))
                                          (let ((_eid3286_
                                                 (if _bind3284_
                                                     (##structure-ref
                                                      _bind3284_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3272_))))
                                            (let ()
                                              (table-set!
                                               _ht3236_
                                               _eid3286_
                                               _eid3286_)))))
                                      _hd32453267_)
                                     (_g32383251_ _g32393254_))))
                             (_g32383251_ _g32393254_))))
                     (_g32383251_ _g32393254_)))))
          (_g32373289_ _stx3235_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3162_ _ht3163_)
      (let ((_g31653182_
             (lambda (_g31663179_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31663179_))))
        (let ((_g31643232_
               (lambda (_g31663185_)
                 (if (gx#stx-pair? _g31663185_)
                     (let ((_e31693187_ (gx#stx-e _g31663185_)))
                       (let ((_hd31703190_ (##car _e31693187_))
                             (_tl31713192_ (##cdr _e31693187_)))
                         (if (gx#stx-pair? _tl31713192_)
                             (let ((_e31723195_ (gx#stx-e _tl31713192_)))
                               (let ((_hd31733198_ (##car _e31723195_))
                                     (_tl31743200_ (##cdr _e31723195_)))
                                 (if (gx#stx-pair? _tl31743200_)
                                     (let ((_e31753203_
                                            (gx#stx-e _tl31743200_)))
                                       (let ((_hd31763206_ (##car _e31753203_))
                                             (_tl31773208_
                                              (##cdr _e31753203_)))
                                         (if (gx#stx-null? _tl31773208_)
                                             ((lambda (_L3211_ _L3212_)
                                                (let ((_bind3227_
                                                       (gx#resolve-identifier__0
                                                        _L3212_)))
                                                  (let ((_eid3229_
                                                         (if _bind3227_
                                                             (##structure-ref
                                                              _bind3227_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3212_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3163_
                                                         _eid3229_
                                                         _eid3229_)
                                                        (gxc#compile-e
                                                         _L3211_
                                                         _ht3163_))))))
                                              _hd31763206_
                                              _hd31733198_)
                                             (_g31653182_ _g31663185_))))
                                     (_g31653182_ _g31663185_))))
                             (_g31653182_ _g31663185_))))
                     (_g31653182_ _g31663185_)))))
          (_g31643232_ _stx3162_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3124_)
      (let ((_g31263136_
             (lambda (_g31273133_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31273133_))))
        (let ((_g31253159_
               (lambda (_g31273139_)
                 (if (gx#stx-pair? _g31273139_)
                     (let ((_e31293141_ (gx#stx-e _g31273139_)))
                       (let ((_hd31303144_ (##car _e31293141_))
                             (_tl31313146_ (##cdr _e31293141_)))
                         ((lambda (_L3149_) (ormap1 gxc#compile-e _L3149_))
                          _tl31313146_)))
                     (_g31263136_ _g31273139_)))))
          (_g31253159_ _stx3124_)))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3086_)
      (let ((_g30883098_
             (lambda (_g30893095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30893095_))))
        (let ((_g30873121_
               (lambda (_g30893101_)
                 (if (gx#stx-pair? _g30893101_)
                     (let ((_e30913103_ (gx#stx-e _g30893101_)))
                       (let ((_hd30923106_ (##car _e30913103_))
                             (_tl30933108_ (##cdr _e30913103_)))
                         ((lambda (_L3111_) (gxc#compile-e (last _L3111_)))
                          _tl30933108_)))
                     (_g30883098_ _g30893101_)))))
          (_g30873121_ _stx3086_)))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3019_)
      (let ((_g30213038_
             (lambda (_g30223035_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30223035_))))
        (let ((_g30203083_
               (lambda (_g30223041_)
                 (if (gx#stx-pair? _g30223041_)
                     (let ((_e30253043_ (gx#stx-e _g30223041_)))
                       (let ((_hd30263046_ (##car _e30253043_))
                             (_tl30273048_ (##cdr _e30253043_)))
                         (if (gx#stx-pair? _tl30273048_)
                             (let ((_e30283051_ (gx#stx-e _tl30273048_)))
                               (let ((_hd30293054_ (##car _e30283051_))
                                     (_tl30303056_ (##cdr _e30283051_)))
                                 (if (gx#stx-pair? _tl30303056_)
                                     (let ((_e30313059_
                                            (gx#stx-e _tl30303056_)))
                                       (let ((_hd30323062_ (##car _e30313059_))
                                             (_tl30333064_
                                              (##cdr _e30313059_)))
                                         (if (gx#stx-null? _tl30333064_)
                                             ((lambda (_L3067_ _L3068_)
                                                (gxc#compile-e _L3067_))
                                              _hd30323062_
                                              _hd30293054_)
                                             (_g30213038_ _g30223041_))))
                                     (_g30213038_ _g30223041_))))
                             (_g30213038_ _g30223041_))))
                     (_g30213038_ _g30223041_)))))
          (_g30203083_ _stx3019_))))))
