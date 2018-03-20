(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx13299_ . _args13300_)
      (let* ((_g1330213312_
              (lambda (_g1330313309_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1330313309_)))
             (_g1330113340_
              (lambda (_g1330313315_)
                (if (gx#stx-pair? _g1330313315_)
                    (let ((_e1330513317_ (gx#stx-e _g1330313315_)))
                      (let ((_hd1330613320_ (##car _e1330513317_))
                            (_tl1330713322_ (##cdr _e1330513317_)))
                        ((lambda (_L13325_)
                           (let ((_$e13335_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L13325_)
                                   '#f)))
                             (if _$e13335_
                                 ((lambda (_method13338_)
                                    (apply _method13338_
                                           _stx13299_
                                           _args13300_))
                                  _$e13335_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx13299_
                                  _L13325_))))
                         _hd1330613320_)))
                    (_g1330213312_ _g1330313315_)))))
        (_g1330113340_ _stx13299_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl13296_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13296_ '%#begin-annotation void)
           (table-set! _tbl13296_ '%#lambda void)
           (table-set! _tbl13296_ '%#case-lambda void)
           (table-set! _tbl13296_ '%#let-values void)
           (table-set! _tbl13296_ '%#letrec-values void)
           (table-set! _tbl13296_ '%#letrec*-values void)
           (table-set! _tbl13296_ '%#quote void)
           (table-set! _tbl13296_ '%#quote-syntax void)
           (table-set! _tbl13296_ '%#call void)
           (table-set! _tbl13296_ '%#if void)
           (table-set! _tbl13296_ '%#ref void)
           (table-set! _tbl13296_ '%#set! void)
           (table-set! _tbl13296_ '%#struct-instance? void)
           (table-set! _tbl13296_ '%#struct-direct-instance? void)
           (table-set! _tbl13296_ '%#struct-ref void)
           (table-set! _tbl13296_ '%#struct-set! void)
           (table-set! _tbl13296_ '%#struct-direct-ref void)
           (table-set! _tbl13296_ '%#struct-direct-set! void)
           (table-set! _tbl13296_ '%#struct-unchecked-ref void)
           (table-set! _tbl13296_ '%#struct-unchecked-set! void)
           _tbl13296_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl13292_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13292_ '%#begin void)
           (table-set! _tbl13292_ '%#begin-syntax void)
           (table-set! _tbl13292_ '%#begin-foreign void)
           (table-set! _tbl13292_ '%#module void)
           (table-set! _tbl13292_ '%#import void)
           (table-set! _tbl13292_ '%#export void)
           (table-set! _tbl13292_ '%#provide void)
           (table-set! _tbl13292_ '%#extern void)
           (table-set! _tbl13292_ '%#define-values void)
           (table-set! _tbl13292_ '%#define-syntax void)
           (table-set! _tbl13292_ '%#define-alias void)
           (table-set! _tbl13292_ '%#declare void)
           _tbl13292_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl13288_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13288_ (force gxc#&void-special-form))
           (hash-copy! _tbl13288_ (force gxc#&void-expression))
           _tbl13288_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl13284_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13284_ '%#begin-annotation false)
           (table-set! _tbl13284_ '%#lambda false)
           (table-set! _tbl13284_ '%#case-lambda false)
           (table-set! _tbl13284_ '%#let-values false)
           (table-set! _tbl13284_ '%#letrec-values false)
           (table-set! _tbl13284_ '%#letrec*-values false)
           (table-set! _tbl13284_ '%#quote false)
           (table-set! _tbl13284_ '%#quote-syntax false)
           (table-set! _tbl13284_ '%#call false)
           (table-set! _tbl13284_ '%#if false)
           (table-set! _tbl13284_ '%#ref false)
           (table-set! _tbl13284_ '%#set! false)
           (table-set! _tbl13284_ '%#struct-instance? false)
           (table-set! _tbl13284_ '%#struct-direct-instance? false)
           (table-set! _tbl13284_ '%#struct-ref false)
           (table-set! _tbl13284_ '%#struct-set! false)
           (table-set! _tbl13284_ '%#struct-direct-ref false)
           (table-set! _tbl13284_ '%#struct-direct-set! false)
           (table-set! _tbl13284_ '%#struct-unchecked-ref false)
           (table-set! _tbl13284_ '%#struct-unchecked-set! false)
           _tbl13284_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl13280_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13280_ '%#begin false)
           (table-set! _tbl13280_ '%#begin-syntax false)
           (table-set! _tbl13280_ '%#begin-foreign false)
           (table-set! _tbl13280_ '%#module false)
           (table-set! _tbl13280_ '%#import false)
           (table-set! _tbl13280_ '%#export false)
           (table-set! _tbl13280_ '%#provide false)
           (table-set! _tbl13280_ '%#extern false)
           (table-set! _tbl13280_ '%#define-values false)
           (table-set! _tbl13280_ '%#define-syntax false)
           (table-set! _tbl13280_ '%#define-alias false)
           (table-set! _tbl13280_ '%#declare false)
           _tbl13280_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl13276_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13276_ (force gxc#&false-special-form))
           (hash-copy! _tbl13276_ (force gxc#&false-expression))
           _tbl13276_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl13272_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13272_ (force gxc#&void-expression))
           (hash-copy! _tbl13272_ (force gxc#&void-special-form))
           (table-set! _tbl13272_ '%#begin gxc#collect-begin%)
           (table-set! _tbl13272_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl13272_ '%#module gxc#collect-module%)
           (table-set!
            _tbl13272_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl13272_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl13272_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx13265_ . _args13267_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13265_ _args13267_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl13262_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13262_ (force gxc#&void))
           (table-set! _tbl13262_ '%#begin gxc#collect-begin%)
           (table-set! _tbl13262_ '%#module gxc#lift-modules-module%)
           _tbl13262_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx13255_ . _args13257_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13255_ _args13257_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl13252_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13252_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl13252_ '%#begin-syntax false)
           (table-set! _tbl13252_ '%#begin-foreign true)
           (table-set! _tbl13252_ '%#begin-annotation true)
           (table-set! _tbl13252_ '%#module false)
           (table-set! _tbl13252_ '%#import false)
           (table-set! _tbl13252_ '%#export false)
           (table-set! _tbl13252_ '%#provide false)
           (table-set! _tbl13252_ '%#extern false)
           (table-set! _tbl13252_ '%#define-values true)
           (table-set! _tbl13252_ '%#define-syntax false)
           (table-set! _tbl13252_ '%#define-alias false)
           (table-set! _tbl13252_ '%#declare false)
           (table-set! _tbl13252_ '%#lambda true)
           (table-set! _tbl13252_ '%#case-lambda true)
           (table-set! _tbl13252_ '%#let-values true)
           (table-set! _tbl13252_ '%#letrec-values true)
           (table-set! _tbl13252_ '%#letrec*-values true)
           (table-set! _tbl13252_ '%#quote true)
           (table-set! _tbl13252_ '%#call true)
           (table-set! _tbl13252_ '%#if true)
           (table-set! _tbl13252_ '%#ref true)
           (table-set! _tbl13252_ '%#set! true)
           (table-set! _tbl13252_ '%#struct-instance? true)
           (table-set! _tbl13252_ '%#struct-direct-instance? true)
           (table-set! _tbl13252_ '%#struct-ref true)
           (table-set! _tbl13252_ '%#struct-set! true)
           (table-set! _tbl13252_ '%#struct-direct-ref true)
           (table-set! _tbl13252_ '%#struct-direct-set! true)
           (table-set! _tbl13252_ '%#struct-unchecked-ref true)
           (table-set! _tbl13252_ '%#struct-unchecked-set! true)
           _tbl13252_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx13245_ . _args13247_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13245_ _args13247_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl13242_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13242_ (force gxc#&false))
           (table-set! _tbl13242_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl13242_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl13242_ '%#lambda values)
           (table-set! _tbl13242_ '%#case-lambda values)
           (table-set!
            _tbl13242_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl13242_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl13242_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl13242_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx13235_ . _args13237_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13235_ _args13237_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl13232_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13232_ (force gxc#&false-expression))
           (table-set! _tbl13232_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl13232_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl13232_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl13232_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl13232_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl13232_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl13232_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl13232_ '%#quote gxc#count-values-single%)
           (table-set! _tbl13232_ '%#call gxc#count-values-call%)
           (table-set! _tbl13232_ '%#if gxc#count-values-if%)
           _tbl13232_)))))
  (define gxc#apply-count-values
    (lambda (_stx13225_ . _args13227_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13225_ _args13227_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl13222_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13222_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl13222_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl13222_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl13222_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl13218_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13218_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl13218_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl13218_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl13218_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx13211_ . _args13213_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13211_ _args13213_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl13208_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13208_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl13208_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl13208_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl13208_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl13208_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl13208_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl13208_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl13208_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl13208_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl13208_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl13208_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl13208_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl13208_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl13208_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl13208_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl13208_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl13208_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl13208_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl13208_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl13208_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl13208_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl13208_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl13208_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl13208_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl13208_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl13208_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx13201_ . _args13203_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13201_ _args13203_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl13198_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13198_ (force gxc#&generate-runtime))
           (table-set!
            _tbl13198_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl13198_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx13191_ . _args13193_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13191_ _args13193_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl13188_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13188_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl13188_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl13188_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl13188_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl13188_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl13188_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl13188_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl13188_ '%#quote void)
           (table-set! _tbl13188_ '%#quote-syntax void)
           (table-set! _tbl13188_ '%#call gxc#collect-operands)
           (table-set! _tbl13188_ '%#if gxc#collect-operands)
           (table-set! _tbl13188_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl13188_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl13188_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl13188_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl13188_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl13188_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl13188_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl13188_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl13188_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl13188_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl13188_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx13181_ . _args13183_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13181_ _args13183_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl13178_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13178_ (force gxc#&void-expression))
           (table-set! _tbl13178_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl13178_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl13178_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl13178_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl13178_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl13178_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl13178_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl13178_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl13178_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl13178_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl13178_ '%#begin-foreign void)
           (table-set! _tbl13178_ '%#declare void)
           _tbl13178_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx13171_ . _args13173_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13171_ _args13173_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl13168_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13168_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl13168_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl13168_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl13168_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl13168_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl13168_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl13168_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl13168_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl13168_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl13168_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl13168_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl13168_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl13168_ '%#declare void)
           _tbl13168_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx13161_ . _args13163_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13161_ _args13163_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx13118_ . _args13119_)
      (let* ((_g1312113131_
              (lambda (_g1312213128_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1312213128_)))
             (_g1312013158_
              (lambda (_g1312213134_)
                (if (gx#stx-pair? _g1312213134_)
                    (let ((_e1312413136_ (gx#stx-e _g1312213134_)))
                      (let ((_hd1312513139_ (##car _e1312413136_))
                            (_tl1312613141_ (##cdr _e1312413136_)))
                        ((lambda (_L13144_)
                           (for-each
                            (lambda (_g1315313155_)
                              (apply gxc#compile-e _g1315313155_ _args13119_))
                            (gx#stx-e _L13144_)))
                         _tl1312613141_)))
                    (_g1312113131_ _g1312213134_)))))
        (_g1312013158_ _stx13118_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx13114_ . _args13115_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx13114_ _args13115_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx13056_ . _args13057_)
      (let* ((_g1305913073_
              (lambda (_g1306013070_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1306013070_)))
             (_g1305813111_
              (lambda (_g1306013076_)
                (if (gx#stx-pair? _g1306013076_)
                    (let ((_e1306313078_ (gx#stx-e _g1306013076_)))
                      (let ((_hd1306413081_ (##car _e1306313078_))
                            (_tl1306513083_ (##cdr _e1306313078_)))
                        (if (gx#stx-pair? _tl1306513083_)
                            (let ((_e1306613086_ (gx#stx-e _tl1306513083_)))
                              (let ((_hd1306713089_ (##car _e1306613086_))
                                    (_tl1306813091_ (##cdr _e1306613086_)))
                                ((lambda (_L13094_ _L13095_)
                                   (let ((_ctx13108_
                                          (gx#syntax-local-e__0 _L13095_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx13108_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args13057_))
                                      gx#current-expander-context
                                      _ctx13108_)))
                                 _tl1306813091_
                                 _hd1306713089_)))
                            (_g1305913073_ _g1306013076_))))
                    (_g1305913073_ _g1306013076_)))))
        (_g1305813111_ _stx13056_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12988_ . _args12989_)
      (let* ((_g1299113008_
              (lambda (_g1299213005_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1299213005_)))
             (_g1299013053_
              (lambda (_g1299213011_)
                (if (gx#stx-pair? _g1299213011_)
                    (let ((_e1299513013_ (gx#stx-e _g1299213011_)))
                      (let ((_hd1299613016_ (##car _e1299513013_))
                            (_tl1299713018_ (##cdr _e1299513013_)))
                        (if (gx#stx-pair? _tl1299713018_)
                            (let ((_e1299813021_ (gx#stx-e _tl1299713018_)))
                              (let ((_hd1299913024_ (##car _e1299813021_))
                                    (_tl1300013026_ (##cdr _e1299813021_)))
                                (if (gx#stx-pair? _tl1300013026_)
                                    (let ((_e1300113029_
                                           (gx#stx-e _tl1300013026_)))
                                      (let ((_hd1300213032_
                                             (##car _e1300113029_))
                                            (_tl1300313034_
                                             (##cdr _e1300113029_)))
                                        (if (gx#stx-null? _tl1300313034_)
                                            ((lambda (_L13037_ _L13038_)
                                               (apply gxc#compile-e
                                                      _L13037_
                                                      _args12989_))
                                             _hd1300213032_
                                             _hd1299913024_)
                                            (_g1299113008_ _g1299213011_))))
                                    (_g1299113008_ _g1299213011_))))
                            (_g1299113008_ _g1299213011_))))
                    (_g1299113008_ _g1299213011_)))))
        (_g1299013053_ _stx12988_))))
  (define gxc#collect-define-values%
    (lambda (_stx12920_ . _args12921_)
      (let* ((_g1292312940_
              (lambda (_g1292412937_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1292412937_)))
             (_g1292212985_
              (lambda (_g1292412943_)
                (if (gx#stx-pair? _g1292412943_)
                    (let ((_e1292712945_ (gx#stx-e _g1292412943_)))
                      (let ((_hd1292812948_ (##car _e1292712945_))
                            (_tl1292912950_ (##cdr _e1292712945_)))
                        (if (gx#stx-pair? _tl1292912950_)
                            (let ((_e1293012953_ (gx#stx-e _tl1292912950_)))
                              (let ((_hd1293112956_ (##car _e1293012953_))
                                    (_tl1293212958_ (##cdr _e1293012953_)))
                                (if (gx#stx-pair? _tl1293212958_)
                                    (let ((_e1293312961_
                                           (gx#stx-e _tl1293212958_)))
                                      (let ((_hd1293412964_
                                             (##car _e1293312961_))
                                            (_tl1293512966_
                                             (##cdr _e1293312961_)))
                                        (if (gx#stx-null? _tl1293512966_)
                                            ((lambda (_L12969_ _L12970_)
                                               (apply gxc#compile-e
                                                      _L12969_
                                                      _args12921_))
                                             _hd1293412964_
                                             _hd1293112956_)
                                            (_g1292312940_ _g1292412943_))))
                                    (_g1292312940_ _g1292412943_))))
                            (_g1292312940_ _g1292412943_))))
                    (_g1292312940_ _g1292412943_)))))
        (_g1292212985_ _stx12920_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx12851_ . _args12852_)
      (let* ((_g1285412871_
              (lambda (_g1285512868_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1285512868_)))
             (_g1285312917_
              (lambda (_g1285512874_)
                (if (gx#stx-pair? _g1285512874_)
                    (let ((_e1285812876_ (gx#stx-e _g1285512874_)))
                      (let ((_hd1285912879_ (##car _e1285812876_))
                            (_tl1286012881_ (##cdr _e1285812876_)))
                        (if (gx#stx-pair? _tl1286012881_)
                            (let ((_e1286112884_ (gx#stx-e _tl1286012881_)))
                              (let ((_hd1286212887_ (##car _e1286112884_))
                                    (_tl1286312889_ (##cdr _e1286112884_)))
                                (if (gx#stx-pair? _tl1286312889_)
                                    (let ((_e1286412892_
                                           (gx#stx-e _tl1286312889_)))
                                      (let ((_hd1286512895_
                                             (##car _e1286412892_))
                                            (_tl1286612897_
                                             (##cdr _e1286412892_)))
                                        (if (gx#stx-null? _tl1286612897_)
                                            ((lambda (_L12900_ _L12901_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L12900_
                                                         _args12852_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1286512895_
                                             _hd1286212887_)
                                            (_g1285412871_ _g1285512874_))))
                                    (_g1285412871_ _g1285512874_))))
                            (_g1285412871_ _g1285512874_))))
                    (_g1285412871_ _g1285512874_)))))
        (_g1285312917_ _stx12851_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12783_ . _args12784_)
      (let* ((_g1278612803_
              (lambda (_g1278712800_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1278712800_)))
             (_g1278512848_
              (lambda (_g1278712806_)
                (if (gx#stx-pair? _g1278712806_)
                    (let ((_e1279012808_ (gx#stx-e _g1278712806_)))
                      (let ((_hd1279112811_ (##car _e1279012808_))
                            (_tl1279212813_ (##cdr _e1279012808_)))
                        (if (gx#stx-pair? _tl1279212813_)
                            (let ((_e1279312816_ (gx#stx-e _tl1279212813_)))
                              (let ((_hd1279412819_ (##car _e1279312816_))
                                    (_tl1279512821_ (##cdr _e1279312816_)))
                                (if (gx#stx-pair? _tl1279512821_)
                                    (let ((_e1279612824_
                                           (gx#stx-e _tl1279512821_)))
                                      (let ((_hd1279712827_
                                             (##car _e1279612824_))
                                            (_tl1279812829_
                                             (##cdr _e1279612824_)))
                                        (if (gx#stx-null? _tl1279812829_)
                                            ((lambda (_L12832_ _L12833_)
                                               (apply gxc#compile-e
                                                      _L12832_
                                                      _args12784_))
                                             _hd1279712827_
                                             _hd1279412819_)
                                            (_g1278612803_ _g1278712806_))))
                                    (_g1278612803_ _g1278712806_))))
                            (_g1278612803_ _g1278712806_))))
                    (_g1278612803_ _g1278712806_)))))
        (_g1278512848_ _stx12783_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12665_ . _args12666_)
      (let* ((_g1266812696_
              (lambda (_g1266912693_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1266912693_)))
             (_g1266712780_
              (lambda (_g1266912699_)
                (if (gx#stx-pair? _g1266912699_)
                    (let ((_e1267212701_ (gx#stx-e _g1266912699_)))
                      (let ((_hd1267312704_ (##car _e1267212701_))
                            (_tl1267412706_ (##cdr _e1267212701_)))
                        (if (gx#stx-pair/null? _tl1267412706_)
                            (let ((_g14631_
                                   (gx#syntax-split-splice _tl1267412706_ '0)))
                              (begin
                                (let ((_g14632_
                                       (if (##values? _g14631_)
                                           (##vector-length _g14631_)
                                           1)))
                                  (if (not (##fx= _g14632_ 2))
                                      (error "Context expects 2 values"
                                             _g14632_)))
                                (let ((_target1267512709_
                                       (##vector-ref _g14631_ 0))
                                      (_tl1267712711_
                                       (##vector-ref _g14631_ 1)))
                                  (if (gx#stx-null? _tl1267712711_)
                                      (letrec ((_loop1267812714_
                                                (lambda (_hd1267612717_
                                                         _body1268212719_
                                                         _hd1268312721_)
                                                  (if (gx#stx-pair?
                                                       _hd1267612717_)
                                                      (let ((_e1267912724_
                                                             (gx#stx-e
                                                              _hd1267612717_)))
                                                        (let ((_lp-hd1268012727_
                                                               (##car _e1267912724_))
                                                              (_lp-tl1268112729_
                                                               (##cdr _e1267912724_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1268012727_)
                                                              (let ((_e1268612732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1268012727_)))
                        (let ((_hd1268712735_ (##car _e1268612732_))
                              (_tl1268812737_ (##cdr _e1268612732_)))
                          (if (gx#stx-pair? _tl1268812737_)
                              (let ((_e1268912740_ (gx#stx-e _tl1268812737_)))
                                (let ((_hd1269012743_ (##car _e1268912740_))
                                      (_tl1269112745_ (##cdr _e1268912740_)))
                                  (if (gx#stx-null? _tl1269112745_)
                                      (_loop1267812714_
                                       _lp-tl1268112729_
                                       (cons _hd1269012743_ _body1268212719_)
                                       (cons _hd1268712735_ _hd1268312721_))
                                      (_g1266812696_ _g1266912699_))))
                              (_g1266812696_ _g1266912699_))))
                      (_g1266812696_ _g1266912699_))))
              (let ((_body1268412748_ (reverse _body1268212719_))
                    (_hd1268512750_ (reverse _hd1268312721_)))
                ((lambda (_L12753_ _L12754_)
                   (for-each
                    (lambda (_g1276812770_)
                      (apply gxc#compile-e _g1276812770_ _args12666_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1277212775_ _g1277312777_)
                                (cons _g1277212775_ _g1277312777_))
                              '()
                              _L12753_))))
                 _body1268412748_
                 _hd1268512750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1267812714_
                                         _target1267512709_
                                         '()
                                         '()))
                                      (_g1266812696_ _g1266912699_)))))
                            (_g1266812696_ _g1266912699_))))
                    (_g1266812696_ _g1266912699_)))))
        (_g1266712780_ _stx12665_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12518_ . _args12519_)
      (let* ((_g1252112556_
              (lambda (_g1252212553_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1252212553_)))
             (_g1252012662_
              (lambda (_g1252212559_)
                (if (gx#stx-pair? _g1252212559_)
                    (let ((_e1252612561_ (gx#stx-e _g1252212559_)))
                      (let ((_hd1252712564_ (##car _e1252612561_))
                            (_tl1252812566_ (##cdr _e1252612561_)))
                        (if (gx#stx-pair? _tl1252812566_)
                            (let ((_e1252912569_ (gx#stx-e _tl1252812566_)))
                              (let ((_hd1253012572_ (##car _e1252912569_))
                                    (_tl1253112574_ (##cdr _e1252912569_)))
                                (if (gx#stx-pair/null? _hd1253012572_)
                                    (let ((_g14633_
                                           (gx#syntax-split-splice
                                            _hd1253012572_
                                            '0)))
                                      (begin
                                        (let ((_g14634_
                                               (if (##values? _g14633_)
                                                   (##vector-length _g14633_)
                                                   1)))
                                          (if (not (##fx= _g14634_ 2))
                                              (error "Context expects 2 values"
                                                     _g14634_)))
                                        (let ((_target1253212577_
                                               (##vector-ref _g14633_ 0))
                                              (_tl1253412579_
                                               (##vector-ref _g14633_ 1)))
                                          (if (gx#stx-null? _tl1253412579_)
                                              (letrec ((_loop1253512582_
                                                        (lambda (_hd1253312585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1253912587_
                         _hd1254012589_)
                  (if (gx#stx-pair? _hd1253312585_)
                      (let ((_e1253612592_ (gx#stx-e _hd1253312585_)))
                        (let ((_lp-hd1253712595_ (##car _e1253612592_))
                              (_lp-tl1253812597_ (##cdr _e1253612592_)))
                          (if (gx#stx-pair? _lp-hd1253712595_)
                              (let ((_e1254312600_
                                     (gx#stx-e _lp-hd1253712595_)))
                                (let ((_hd1254412603_ (##car _e1254312600_))
                                      (_tl1254512605_ (##cdr _e1254312600_)))
                                  (if (gx#stx-pair? _tl1254512605_)
                                      (let ((_e1254612608_
                                             (gx#stx-e _tl1254512605_)))
                                        (let ((_hd1254712611_
                                               (##car _e1254612608_))
                                              (_tl1254812613_
                                               (##cdr _e1254612608_)))
                                          (if (gx#stx-null? _tl1254812613_)
                                              (_loop1253512582_
                                               _lp-tl1253812597_
                                               (cons _hd1254712611_
                                                     _expr1253912587_)
                                               (cons _hd1254412603_
                                                     _hd1254012589_))
                                              (_g1252112556_ _g1252212559_))))
                                      (_g1252112556_ _g1252212559_))))
                              (_g1252112556_ _g1252212559_))))
                      (let ((_expr1254112616_ (reverse _expr1253912587_))
                            (_hd1254212618_ (reverse _hd1254012589_)))
                        (if (gx#stx-pair? _tl1253112574_)
                            (let ((_e1254912621_ (gx#stx-e _tl1253112574_)))
                              (let ((_hd1255012624_ (##car _e1254912621_))
                                    (_tl1255112626_ (##cdr _e1254912621_)))
                                (if (gx#stx-null? _tl1255112626_)
                                    ((lambda (_L12629_ _L12630_ _L12631_)
                                       (for-each
                                        (lambda (_g1265012652_)
                                          (apply gxc#compile-e
                                                 _g1265012652_
                                                 _args12519_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1265412657_
                                                           _g1265512659_)
                                                    (cons _g1265412657_
                                                          _g1265512659_))
                                                  (cons _L12629_ '())
                                                  _L12630_))))
                                     _hd1255012624_
                                     _expr1254112616_
                                     _hd1254212618_)
                                    (_g1252112556_ _g1252212559_))))
                            (_g1252112556_ _g1252212559_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1253512582_
                                                 _target1253212577_
                                                 '()
                                                 '()))
                                              (_g1252112556_ _g1252212559_)))))
                                    (_g1252112556_ _g1252212559_))))
                            (_g1252112556_ _g1252212559_))))
                    (_g1252112556_ _g1252212559_)))))
        (_g1252012662_ _stx12518_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12450_ . _args12451_)
      (let* ((_g1245312470_
              (lambda (_g1245412467_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1245412467_)))
             (_g1245212515_
              (lambda (_g1245412473_)
                (if (gx#stx-pair? _g1245412473_)
                    (let ((_e1245712475_ (gx#stx-e _g1245412473_)))
                      (let ((_hd1245812478_ (##car _e1245712475_))
                            (_tl1245912480_ (##cdr _e1245712475_)))
                        (if (gx#stx-pair? _tl1245912480_)
                            (let ((_e1246012483_ (gx#stx-e _tl1245912480_)))
                              (let ((_hd1246112486_ (##car _e1246012483_))
                                    (_tl1246212488_ (##cdr _e1246012483_)))
                                (if (gx#stx-pair? _tl1246212488_)
                                    (let ((_e1246312491_
                                           (gx#stx-e _tl1246212488_)))
                                      (let ((_hd1246412494_
                                             (##car _e1246312491_))
                                            (_tl1246512496_
                                             (##cdr _e1246312491_)))
                                        (if (gx#stx-null? _tl1246512496_)
                                            ((lambda (_L12499_ _L12500_)
                                               (apply gxc#compile-e
                                                      _L12499_
                                                      _args12451_))
                                             _hd1246412494_
                                             _hd1246112486_)
                                            (_g1245312470_ _g1245412473_))))
                                    (_g1245312470_ _g1245412473_))))
                            (_g1245312470_ _g1245412473_))))
                    (_g1245312470_ _g1245412473_)))))
        (_g1245212515_ _stx12450_))))
  (define gxc#collect-operands
    (lambda (_stx12363_ . _args12364_)
      (let* ((_g1236612385_
              (lambda (_g1236712382_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1236712382_)))
             (_g1236512447_
              (lambda (_g1236712388_)
                (if (gx#stx-pair? _g1236712388_)
                    (let ((_e1236912390_ (gx#stx-e _g1236712388_)))
                      (let ((_hd1237012393_ (##car _e1236912390_))
                            (_tl1237112395_ (##cdr _e1236912390_)))
                        (if (gx#stx-pair/null? _tl1237112395_)
                            (let ((_g14635_
                                   (gx#syntax-split-splice _tl1237112395_ '0)))
                              (begin
                                (let ((_g14636_
                                       (if (##values? _g14635_)
                                           (##vector-length _g14635_)
                                           1)))
                                  (if (not (##fx= _g14636_ 2))
                                      (error "Context expects 2 values"
                                             _g14636_)))
                                (let ((_target1237212398_
                                       (##vector-ref _g14635_ 0))
                                      (_tl1237412400_
                                       (##vector-ref _g14635_ 1)))
                                  (if (gx#stx-null? _tl1237412400_)
                                      (letrec ((_loop1237512403_
                                                (lambda (_hd1237312406_
                                                         _rands1237912408_)
                                                  (if (gx#stx-pair?
                                                       _hd1237312406_)
                                                      (let ((_e1237612411_
                                                             (gx#stx-e
                                                              _hd1237312406_)))
                                                        (let ((_lp-hd1237712414_
                                                               (##car _e1237612411_))
                                                              (_lp-tl1237812416_
                                                               (##cdr _e1237612411_)))
                                                          (_loop1237512403_
                                                           _lp-tl1237812416_
                                                           (cons _lp-hd1237712414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1237912408_))))
              (let ((_rands1238012419_ (reverse _rands1237912408_)))
                ((lambda (_L12422_)
                   (for-each
                    (lambda (_g1243512437_)
                      (apply gxc#compile-e _g1243512437_ _args12364_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1243912442_ _g1244012444_)
                                (cons _g1243912442_ _g1244012444_))
                              '()
                              _L12422_))))
                 _rands1238012419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1237512403_
                                         _target1237212398_
                                         '()))
                                      (_g1236612385_ _g1236712388_)))))
                            (_g1236612385_ _g1236712388_))))
                    (_g1236612385_ _g1236712388_)))))
        (_g1236512447_ _stx12363_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx12294_)
      (let* ((_g1229612313_
              (lambda (_g1229712310_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1229712310_)))
             (_g1229512360_
              (lambda (_g1229712316_)
                (if (gx#stx-pair? _g1229712316_)
                    (let ((_e1230012318_ (gx#stx-e _g1229712316_)))
                      (let ((_hd1230112321_ (##car _e1230012318_))
                            (_tl1230212323_ (##cdr _e1230012318_)))
                        (if (gx#stx-pair? _tl1230212323_)
                            (let ((_e1230312326_ (gx#stx-e _tl1230212323_)))
                              (let ((_hd1230412329_ (##car _e1230312326_))
                                    (_tl1230512331_ (##cdr _e1230312326_)))
                                (if (gx#stx-pair? _tl1230512331_)
                                    (let ((_e1230612334_
                                           (gx#stx-e _tl1230512331_)))
                                      (let ((_hd1230712337_
                                             (##car _e1230612334_))
                                            (_tl1230812339_
                                             (##cdr _e1230612334_)))
                                        (if (gx#stx-null? _tl1230812339_)
                                            ((lambda (_L12342_ _L12343_)
                                               (gx#stx-for-each1
                                                (lambda (_bind12358_)
                                                  (if (gx#identifier?
                                                       _bind12358_)
                                                      (gxc#add-module-binding!
                                                       _bind12358_
                                                       '#f)
                                                      '#!void))
                                                _L12343_))
                                             _hd1230712337_
                                             _hd1230412329_)
                                            (_g1229612313_ _g1229712316_))))
                                    (_g1229612313_ _g1229712316_))))
                            (_g1229612313_ _g1229712316_))))
                    (_g1229612313_ _g1229712316_)))))
        (_g1229512360_ _stx12294_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx12227_)
      (let* ((_g1222912246_
              (lambda (_g1223012243_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1223012243_)))
             (_g1222812291_
              (lambda (_g1223012249_)
                (if (gx#stx-pair? _g1223012249_)
                    (let ((_e1223312251_ (gx#stx-e _g1223012249_)))
                      (let ((_hd1223412254_ (##car _e1223312251_))
                            (_tl1223512256_ (##cdr _e1223312251_)))
                        (if (gx#stx-pair? _tl1223512256_)
                            (let ((_e1223612259_ (gx#stx-e _tl1223512256_)))
                              (let ((_hd1223712262_ (##car _e1223612259_))
                                    (_tl1223812264_ (##cdr _e1223612259_)))
                                (if (gx#stx-pair? _tl1223812264_)
                                    (let ((_e1223912267_
                                           (gx#stx-e _tl1223812264_)))
                                      (let ((_hd1224012270_
                                             (##car _e1223912267_))
                                            (_tl1224112272_
                                             (##cdr _e1223912267_)))
                                        (if (gx#stx-null? _tl1224112272_)
                                            ((lambda (_L12275_ _L12276_)
                                               (gxc#add-module-binding!
                                                _L12276_
                                                '#t))
                                             _hd1224012270_
                                             _hd1223712262_)
                                            (_g1222912246_ _g1223012249_))))
                                    (_g1222912246_ _g1223012249_))))
                            (_g1222912246_ _g1223012249_))))
                    (_g1222912246_ _g1223012249_)))))
        (_g1222812291_ _stx12227_))))
  (define gxc#lift-modules-module%
    (lambda (_stx12169_ _modules12170_)
      (let* ((_g1217212186_
              (lambda (_g1217312183_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1217312183_)))
             (_g1217112224_
              (lambda (_g1217312189_)
                (if (gx#stx-pair? _g1217312189_)
                    (let ((_e1217612191_ (gx#stx-e _g1217312189_)))
                      (let ((_hd1217712194_ (##car _e1217612191_))
                            (_tl1217812196_ (##cdr _e1217612191_)))
                        (if (gx#stx-pair? _tl1217812196_)
                            (let ((_e1217912199_ (gx#stx-e _tl1217812196_)))
                              (let ((_hd1218012202_ (##car _e1217912199_))
                                    (_tl1218112204_ (##cdr _e1217912199_)))
                                ((lambda (_L12207_ _L12208_)
                                   (let ((_ctx12221_
                                          (gx#syntax-local-e__0 _L12208_)))
                                     (begin
                                       (set-box!
                                        _modules12170_
                                        (cons _ctx12221_
                                              (unbox _modules12170_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx12221_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules12170_))
                                        gx#current-expander-context
                                        _ctx12221_))))
                                 _tl1218112204_
                                 _hd1218012202_)))
                            (_g1217212186_ _g1217312189_))))
                    (_g1217212186_ _g1217312189_)))))
        (_g1217112224_ _stx12169_))))
  (define gxc#add-module-binding!
    (lambda (_id12163_ _syntax?12164_)
      (let ((_eid12166_
             (##structure-ref
              (gx#resolve-identifier__0 _id12163_)
              '1
              gx#binding::t
              '#f))
            (_ht12167_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid12166_)
            '#!void
            (table-set!
             _ht12167_
             _eid12166_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid12166_)
              _syntax?12164_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id112156_ _id212157_)
      (letrec ((_symbol-e12159_
                (lambda (_id12161_)
                  (if (symbol? _id12161_)
                      _id12161_
                      (gxc#generate-runtime-binding-id _id12161_)))))
        (eq? (_symbol-e12159_ _id112156_) (_symbol-e12159_ _id212157_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id12134_)
      (let ((_$e12136_
             (if (##structure-direct-instance-of?
                  _id12134_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id12134_)
                 '#f)))
        (if _$e12136_
            ((lambda (_bind12139_)
               (let ((_eid12141_
                      (##structure-ref _bind12139_ '1 gx#binding::t '#f))
                     (_ht12142_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid12141_)
                     _eid12141_
                     (let ((_$e12144_ (table-ref _ht12142_ _eid12141_ '#f)))
                       (if _$e12144_
                           (values _$e12144_)
                           (if (##structure-instance-of?
                                _bind12139_
                                'gx#local-binding::t)
                               (let ((_gid12147_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid12141_)))
                                 (begin
                                   (table-set! _ht12142_ _eid12141_ _gid12147_)
                                   _gid12147_))
                               (if (##structure-instance-of?
                                    _bind12139_
                                    'gx#module-binding::t)
                                   (let ((_gid12154_
                                          (let ((_$e12149_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind12139_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e12149_
                                                ((lambda (_ns12152_)
                                                   (make-symbol
                                                    _ns12152_
                                                    '"#"
                                                    _eid12141_))
                                                 _$e12149_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid12141_)))))
                                     (begin
                                       (table-set!
                                        _ht12142_
                                        _eid12141_
                                        _gid12154_)
                                       _gid12154_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id12134_
                                    _eid12141_
                                    _bind12139_))))))))
             _$e12136_)
            (if (interned-symbol? (gx#stx-e _id12134_))
                (gx#stx-e _id12134_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id12134_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id12132_)
      (if (gx#identifier? _id12132_)
          (gxc#generate-runtime-binding-id _id12132_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym12112_ _quote?12113_)
        (let* ((_ht12115_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e12117_ (table-ref _ht12115_ _sym12112_ '#f)))
          (if _$e12117_
              (values _$e12117_)
              (let ((_g12120_
                     (if _quote?12113_
                         (make-symbol
                          '"__"
                          _sym12112_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym12112_ '"_"))))
                (begin
                  (table-set! _ht12115_ _sym12112_ _g12120_)
                  _g12120_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym12125_)
          (let ((_quote?12127_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym12125_
             _quote?12127_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g14638_
          (let ((_g14637_ (length _g14638_)))
            (cond ((##fx= _g14637_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g14638_))
                  ((##fx= _g14637_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g14638_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g14638_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id12109_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id12109_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key12069_)
      (if (interned-symbol? _key12069_)
          _key12069_
          (if (uninterned-symbol? _key12069_)
              (gxc#generate-runtime-gensym-reference__0 _key12069_)
              (let* ((_key1207012077_ _key12069_)
                     (_E1207212081_
                      (lambda ()
                        (error '"No clause matching" _key1207012077_)))
                     (_K1207312097_
                      (lambda (_mark12084_ _eid12085_)
                        (let ((_$e12087_
                               (##structure-ref
                                _mark12084_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e12087_
                              ((lambda (_ht12090_)
                                 (let ((_$e12092_
                                        (table-ref _ht12090_ _eid12085_ '#f)))
                                   (if _$e12092_
                                       ((lambda (_id12095_)
                                          (if (interned-symbol? _id12095_)
                                              _id12095_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id12095_)))
                                        _$e12092_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid12085_))))
                               _$e12087_)
                              (gxc#generate-runtime-identifier-key
                               _eid12085_))))))
                (if (##pair? _key1207012077_)
                    (let ((_hd1207412100_ (##car _key1207012077_))
                          (_tl1207512102_ (##cdr _key1207012077_)))
                      (let* ((_eid12105_ _hd1207412100_)
                             (_mark12107_ _tl1207512102_))
                        (_K1207312097_ _mark12107_ _eid12105_)))
                    (_E1207212081_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top12056_)
        (if _top12056_
            (let ((_ns12058_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi12059_ (gx#current-expander-phi)))
              (if (fxpositive? _phi12059_)
                  (make-symbol
                   _ns12058_
                   '"["
                   (number->string _phi12059_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns12058_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top12065_ '#f))
            (gxc#generate-runtime-temporary__% _top12065_))))
      (define gxc#generate-runtime-temporary
        (lambda _g14640_
          (let ((_g14639_ (length _g14640_)))
            (cond ((##fx= _g14639_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g14640_))
                  ((##fx= _g14639_ 1)
                   (apply gxc#generate-runtime-temporary__% _g14640_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g14640_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx12053_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11973_)
      (let* ((_g1197511985_
              (lambda (_g1197611982_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1197611982_)))
             (_g1197412050_
              (lambda (_g1197611988_)
                (if (gx#stx-pair? _g1197611988_)
                    (let ((_e1197811990_ (gx#stx-e _g1197611988_)))
                      (let ((_hd1197911993_ (##car _e1197811990_))
                            (_tl1198011995_ (##cdr _e1197811990_)))
                        ((lambda (_L11998_)
                           (let* ((_body12008_
                                   (gx#stx-map1 gxc#compile-e _L11998_))
                                  (_body12047_
                                   (filter (lambda (_stx12010_)
                                             (let* ((___stx1343913440_
                                                     _stx12010_)
                                                    (_g1201312022_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1343913440_))))
                                               (let ((___kont1344113442_
                                                      (lambda () '#f))
                                                     (___kont1344313444_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1343913440_)
                                                     (let ((_e1201512034_
                                                            (gx#stx-e
                                                             ___stx1343913440_)))
                                                       (let ((_tl1201712039_
                                                              (##cdr _e1201512034_))
                                                             (_hd1201612037_
                                                              (##car _e1201512034_)))
                                                         (if (gx#identifier?
                                                              _hd1201612037_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1201612037_)
                         (if (gx#stx-null? _tl1201712039_)
                             (___kont1344113442_)
                             (___kont1344313444_))
                         (___kont1344313444_))
                     (___kont1344313444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1344313444_)))))
                                           _body12008_)))
                             (if (fx= (length _body12047_) '1)
                                 (car _body12047_)
                                 (cons 'begin _body12047_))))
                         _tl1198011995_)))
                    (_g1197511985_ _g1197611988_)))))
        (_g1197412050_ _stx11973_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11935_)
      (let* ((_g1193711947_
              (lambda (_g1193811944_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1193811944_)))
             (_g1193611970_
              (lambda (_g1193811950_)
                (if (gx#stx-pair? _g1193811950_)
                    (let ((_e1194011952_ (gx#stx-e _g1193811950_)))
                      (let ((_hd1194111955_ (##car _e1194011952_))
                            (_tl1194211957_ (##cdr _e1194011952_)))
                        ((lambda (_L11960_)
                           (cons 'begin (gx#syntax->datum _L11960_)))
                         _tl1194211957_)))
                    (_g1193711947_ _g1193811950_)))))
        (_g1193611970_ _stx11935_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11812_)
      (let* ((___stx1345913460_ _stx11812_)
             (_g1181511843_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1345913460_))))
        (let ((___kont1346113462_
               (lambda (_L11917_ _L11918_) (gxc#compile-e _L11917_)))
              (___kont1346313464_
               (lambda (_L11872_ _L11873_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L11873_))
                             (cons (gxc#compile-e _L11872_) '()))))))
          (let ((___match1348413485_
                 (lambda (_e1181911893_
                          _hd1182011896_
                          _tl1182111898_
                          _e1182211901_
                          _hd1182311904_
                          _tl1182411906_
                          _e1182511909_
                          _hd1182611912_
                          _tl1182711914_)
                   (let ((_L11917_ _hd1182611912_) (_L11918_ _hd1182311904_))
                     (if (gx#identifier? _L11918_)
                         (___kont1346113462_ _L11917_ _L11918_)
                         (___kont1346313464_
                          _hd1182611912_
                          _hd1182311904_))))))
            (if (gx#stx-pair? ___stx1345913460_)
                (let ((_e1181911893_ (gx#stx-e ___stx1345913460_)))
                  (let ((_tl1182111898_ (##cdr _e1181911893_))
                        (_hd1182011896_ (##car _e1181911893_)))
                    (if (gx#stx-pair? _tl1182111898_)
                        (let ((_e1182211901_ (gx#stx-e _tl1182111898_)))
                          (let ((_tl1182411906_ (##cdr _e1182211901_))
                                (_hd1182311904_ (##car _e1182211901_)))
                            (if (gx#stx-pair? _tl1182411906_)
                                (let ((_e1182511909_
                                       (gx#stx-e _tl1182411906_)))
                                  (let ((_tl1182711914_ (##cdr _e1182511909_))
                                        (_hd1182611912_ (##car _e1182511909_)))
                                    (if (gx#stx-null? _tl1182711914_)
                                        (___match1348413485_
                                         _e1181911893_
                                         _hd1182011896_
                                         _tl1182111898_
                                         _e1182211901_
                                         _hd1182311904_
                                         _tl1182411906_
                                         _e1182511909_
                                         _hd1182611912_
                                         _tl1182711914_)
                                        (_g1181511843_))))
                                (_g1181511843_))))
                        (_g1181511843_))))
                (_g1181511843_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11774_)
      (let* ((_g1177611786_
              (lambda (_g1177711783_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1177711783_)))
             (_g1177511809_
              (lambda (_g1177711789_)
                (if (gx#stx-pair? _g1177711789_)
                    (let ((_e1177911791_ (gx#stx-e _g1177711789_)))
                      (let ((_hd1178011794_ (##car _e1177911791_))
                            (_tl1178111796_ (##cdr _e1177911791_)))
                        ((lambda (_L11799_)
                           (cons 'declare (map gx#syntax->datum _L11799_)))
                         _tl1178111796_)))
                    (_g1177611786_ _g1177711789_)))))
        (_g1177511809_ _stx11774_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11521_)
      (let* ((_g1152311540_
              (lambda (_g1152411537_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1152411537_)))
             (_g1152211771_
              (lambda (_g1152411543_)
                (if (gx#stx-pair? _g1152411543_)
                    (let ((_e1152711545_ (gx#stx-e _g1152411543_)))
                      (let ((_hd1152811548_ (##car _e1152711545_))
                            (_tl1152911550_ (##cdr _e1152711545_)))
                        (if (gx#stx-pair? _tl1152911550_)
                            (let ((_e1153011553_ (gx#stx-e _tl1152911550_)))
                              (let ((_hd1153111556_ (##car _e1153011553_))
                                    (_tl1153211558_ (##cdr _e1153011553_)))
                                (if (gx#stx-pair? _tl1153211558_)
                                    (let ((_e1153311561_
                                           (gx#stx-e _tl1153211558_)))
                                      (let ((_hd1153411564_
                                             (##car _e1153311561_))
                                            (_tl1153511566_
                                             (##cdr _e1153311561_)))
                                        (if (gx#stx-null? _tl1153511566_)
                                            ((lambda (_L11569_ _L11570_)
                                               (let* ((___stx1353713538_
                                                       _L11570_)
                                                      (_g1158711601_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1353713538_))))
                                                 (let ((___kont1353913540_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L11569_)))
                                                       (___kont1354113542_
                                                        (lambda (_L11733_)
                                                          (let ((_eid11742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L11733_)))
                    (begin
                      (let ((_lambda-expr1174311745_
                             (gxc#apply-find-lambda-expression _L11569_)))
                        (if _lambda-expr1174311745_
                            (let ((_lambda-expr11748_ _lambda-expr1174311745_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr11748_
                               _eid11742_))
                            '#f))
                      (cons 'define
                            (cons _eid11742_
                                  (cons (gxc#compile-e _L11569_) '())))))))
               (___kont1354313544_
                (lambda ()
                  (let* ((_tmp11608_ (gxc#generate-runtime-temporary__% '#t))
                         (_body11717_
                          (let _lp11610_ ((_rest11612_ _L11570_)
                                          (_k11613_ '0)
                                          (_r11614_ '()))
                            (let* ((___stx1350713508_ _rest11612_)
                                   (_g1161911636_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1350713508_))))
                              (let ((___kont1350913510_
                                     (lambda (_L11704_)
                                       (_lp11610_
                                        _L11704_
                                        (fx+ _k11613_ '1)
                                        _r11614_)))
                                    (___kont1351113512_
                                     (lambda (_L11677_ _L11678_)
                                       (_lp11610_
                                        _L11677_
                                        (fx+ _k11613_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L11678_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp11608_
                         _k11613_
                         _L11677_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r11614_))))
                                    (___kont1351313514_
                                     (lambda (_L11648_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11648_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp11608_
                                _k11613_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r11614_)))
                                    (___kont1351513516_
                                     (lambda () (reverse _r11614_))))
                                (let ((_g1161711664_
                                       (lambda ()
                                         (let ((_L11648_ ___stx1350713508_))
                                           (if (gx#identifier? _L11648_)
                                               (___kont1351313514_ _L11648_)
                                               (___kont1351513516_))))))
                                  (if (gx#stx-pair? ___stx1350713508_)
                                      (let ((_e1162211693_
                                             (gx#stx-e ___stx1350713508_)))
                                        (let ((_tl1162411698_
                                               (##cdr _e1162211693_))
                                              (_hd1162311696_
                                               (##car _e1162211693_)))
                                          (if (gx#stx-datum? _hd1162311696_)
                                              (let ((_e1162511701_
                                                     (gx#stx-e
                                                      _hd1162311696_)))
                                                (if (equal? _e1162511701_ '#f)
                                                    (___kont1350913510_
                                                     _tl1162411698_)
                                                    (___kont1351113512_
                                                     _tl1162411698_
                                                     _hd1162311696_)))
                                              (___kont1351113512_
                                               _tl1162411698_
                                               _hd1162311696_))))
                                      (_g1161711664_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp11608_
                                            (cons (gxc#compile-e _L11569_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp11608_
                                       _L11570_
                                       _L11569_)
                                      _body11717_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1353713538_)
                                                       (let ((_e1158911755_
                                                              (gx#stx-e
                                                               ___stx1353713538_)))
                                                         (let ((_tl1159111760_
                                                                (##cdr _e1158911755_))
                                                               (_hd1159011758_
                                                                (##car _e1158911755_)))
                                                           (if (gx#stx-datum?
                                                                _hd1159011758_)
                                                               (let ((_e1159211763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1159011758_)))
                         (if (equal? _e1159211763_ '#f)
                             (if (gx#stx-null? _tl1159111760_)
                                 (___kont1353913540_)
                                 (___kont1354313544_))
                             (if (gx#stx-null? _tl1159111760_)
                                 (___kont1354113542_ _hd1159011758_)
                                 (___kont1354313544_))))
                       (if (gx#stx-null? _tl1159111760_)
                           (___kont1354113542_ _hd1159011758_)
                           (___kont1354313544_)))))
               (___kont1354313544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1153411564_
                                             _hd1153111556_)
                                            (_g1152311540_ _g1152411543_))))
                                    (_g1152311540_ _g1152411543_))))
                            (_g1152311540_ _g1152411543_))))
                    (_g1152311540_ _g1152411543_)))))
        (_g1152211771_ _stx11521_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11497_ _hd11498_ _expr11499_)
      (let ((_$e11501_ (gxc#apply-count-values _expr11499_)))
        (if _$e11501_
            ((lambda (_count11504_)
               (let ((_len11506_ (gx#stx-length _hd11498_))
                     (_cmp11507_ (if (gx#stx-list? _hd11498_) fx= fx>=)))
                 (if (if (fx= _len11506_ '0)
                         '#t
                         (_cmp11507_ _count11504_ _len11506_))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11499_
                      _hd11498_))))
             _$e11501_)
            (let* ((_len11512_ (gx#stx-length _hd11498_))
                   (_cmp11514_ (if (gx#stx-list? _hd11498_) '##fx= '##fx>=))
                   (_errmsg11516_
                    (string-append
                     (if (gx#stx-list? _hd11498_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11512_)
                     '" values"))
                   (_count11518_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11498_)) (fx= _len11512_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11518_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11497_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11518_ (cons _len11512_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11518_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11495_)
      (cons 'if
            (cons (cons '##values? (cons _var11495_ '()))
                  (cons (cons '##vector-length (cons _var11495_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11491_ _i11492_ _rest11493_)
      (if (if (fx= _i11492_ '0) (not (gx#stx-pair? _rest11493_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11491_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11491_ (cons '0 '())))
                            (cons _var11491_ '()))))
          (cons '##vector-ref (cons _var11491_ (cons _i11492_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11488_ _i11489_)
      (if (fx= _i11489_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11488_ '()))
                      (cons (cons '##vector->list (cons _var11488_ '()))
                            (cons (cons 'list (cons _var11488_ '())) '()))))
          (if (fx= _i11489_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11488_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11488_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11488_ '()))
                          (cons _i11489_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11421_)
      (let* ((_g1142311440_
              (lambda (_g1142411437_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1142411437_)))
             (_g1142211485_
              (lambda (_g1142411443_)
                (if (gx#stx-pair? _g1142411443_)
                    (let ((_e1142711445_ (gx#stx-e _g1142411443_)))
                      (let ((_hd1142811448_ (##car _e1142711445_))
                            (_tl1142911450_ (##cdr _e1142711445_)))
                        (if (gx#stx-pair? _tl1142911450_)
                            (let ((_e1143011453_ (gx#stx-e _tl1142911450_)))
                              (let ((_hd1143111456_ (##car _e1143011453_))
                                    (_tl1143211458_ (##cdr _e1143011453_)))
                                (if (gx#stx-pair? _tl1143211458_)
                                    (let ((_e1143311461_
                                           (gx#stx-e _tl1143211458_)))
                                      (let ((_hd1143411464_
                                             (##car _e1143311461_))
                                            (_tl1143511466_
                                             (##cdr _e1143311461_)))
                                        (if (gx#stx-null? _tl1143511466_)
                                            ((lambda (_L11469_ _L11470_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11470_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11469_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1143411464_
                                             _hd1143111456_)
                                            (_g1142311440_ _g1142411443_))))
                                    (_g1142311440_ _g1142411443_))))
                            (_g1142311440_ _g1142411443_))))
                    (_g1142311440_ _g1142411443_)))))
        (_g1142211485_ _stx11421_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11419_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11419_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9962_)
      (letrec ((_dispatch-case?9964_
                (lambda (_hd10649_ _body10650_)
                  (let* ((_form10652_ (cons _hd10649_ (cons _body10650_ '())))
                         (___stx1356913570_ _form10652_)
                         (_g1065710814_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1356913570_))))
                    (let ((___kont1357113572_
                           (lambda (_L11339_ _L11340_ _L11341_) '#t))
                          (___kont1357713578_
                           (lambda (_L11127_
                                    _L11128_
                                    _L11129_
                                    _L11130_
                                    _L11131_
                                    _L11132_)
                             '#t))
                          (___kont1358313584_
                           (lambda (_L10922_ _L10923_ _L10924_ _L10925_) '#t))
                          (___kont1358513586_ (lambda () '#f)))
                      (let* ((___match1371013711_
                              (lambda (_e1077410826_
                                       _hd1077510829_
                                       _tl1077610831_
                                       _e1077710834_
                                       _hd1077810837_
                                       _tl1077910839_
                                       _e1078010842_
                                       _hd1078110845_
                                       _tl1078210847_
                                       _e1078310850_
                                       _hd1078410853_
                                       _tl1078510855_
                                       _e1078610858_
                                       _hd1078710861_
                                       _tl1078810863_
                                       _e1078910866_
                                       _hd1079010869_
                                       _tl1079110871_
                                       _e1079210874_
                                       _hd1079310877_
                                       _tl1079410879_
                                       _e1079510882_
                                       _hd1079610885_
                                       _tl1079710887_
                                       _e1079810890_
                                       _hd1079910893_
                                       _tl1080010895_
                                       _e1080110898_
                                       _hd1080210901_
                                       _tl1080310903_
                                       _e1080410906_
                                       _hd1080510909_
                                       _tl1080610911_
                                       _e1080710914_
                                       _hd1080810917_
                                       _tl1080910919_)
                                (let ((_L10922_ _hd1080810917_)
                                      (_L10923_ _hd1079910893_)
                                      (_L10924_ _hd1079010869_)
                                      (_L10925_ _hd1077510829_))
                                  (if (if (gx#identifier? _L10925_)
                                          (if (gxc#runtime-identifier=?
                                               _L10924_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L10925_
                                                   _L10922_)
                                                  (not (gx#free-identifier=?
                                                        _L10923_
                                                        _L10925_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1358313584_
                                       _L10922_
                                       _L10923_
                                       _L10924_
                                       _L10925_)
                                      (___kont1358513586_)))))
                             (___match1368213683_
                              (lambda (_e1077410826_
                                       _hd1077510829_
                                       _tl1077610831_
                                       _e1077710834_
                                       _hd1077810837_
                                       _tl1077910839_
                                       _e1078010842_
                                       _hd1078110845_
                                       _tl1078210847_
                                       _e1078310850_
                                       _hd1078410853_
                                       _tl1078510855_
                                       _e1078610858_
                                       _hd1078710861_
                                       _tl1078810863_
                                       _e1078910866_
                                       _hd1079010869_
                                       _tl1079110871_
                                       _e1079210874_
                                       _hd1079310877_
                                       _tl1079410879_
                                       _e1079510882_
                                       _hd1079610885_
                                       _tl1079710887_
                                       _e1079810890_
                                       _hd1079910893_
                                       _tl1080010895_)
                                (if (gx#stx-pair? _tl1079410879_)
                                    (let ((_e1080110898_
                                           (gx#stx-e _tl1079410879_)))
                                      (let ((_tl1080310903_
                                             (##cdr _e1080110898_))
                                            (_hd1080210901_
                                             (##car _e1080110898_)))
                                        (if (gx#stx-pair? _hd1080210901_)
                                            (let ((_e1080410906_
                                                   (gx#stx-e _hd1080210901_)))
                                              (let ((_tl1080610911_
                                                     (##cdr _e1080410906_))
                                                    (_hd1080510909_
                                                     (##car _e1080410906_)))
                                                (if (gx#identifier?
                                                     _hd1080510909_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1080510909_)
                                                        (if (gx#stx-pair?
                                                             _tl1080610911_)
                                                            (let ((_e1080710914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1080610911_)))
                      (let ((_tl1080910919_ (##cdr _e1080710914_))
                            (_hd1080810917_ (##car _e1080710914_)))
                        (if (gx#stx-null? _tl1080910919_)
                            (if (gx#stx-null? _tl1080310903_)
                                (if (gx#stx-null? _tl1077910839_)
                                    (___match1371013711_
                                     _e1077410826_
                                     _hd1077510829_
                                     _tl1077610831_
                                     _e1077710834_
                                     _hd1077810837_
                                     _tl1077910839_
                                     _e1078010842_
                                     _hd1078110845_
                                     _tl1078210847_
                                     _e1078310850_
                                     _hd1078410853_
                                     _tl1078510855_
                                     _e1078610858_
                                     _hd1078710861_
                                     _tl1078810863_
                                     _e1078910866_
                                     _hd1079010869_
                                     _tl1079110871_
                                     _e1079210874_
                                     _hd1079310877_
                                     _tl1079410879_
                                     _e1079510882_
                                     _hd1079610885_
                                     _tl1079710887_
                                     _e1079810890_
                                     _hd1079910893_
                                     _tl1080010895_
                                     _e1080110898_
                                     _hd1080210901_
                                     _tl1080310903_
                                     _e1080410906_
                                     _hd1080510909_
                                     _tl1080610911_
                                     _e1080710914_
                                     _hd1080810917_
                                     _tl1080910919_)
                                    (___kont1358513586_))
                                (___kont1358513586_))
                            (___kont1358513586_))))
                    (___kont1358513586_))
                (___kont1358513586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1358513586_))))
                                            (___kont1358513586_))))
                                    (___kont1358513586_))))
                             (___match1361213613_
                              (lambda (_e1071010967_
                                       _hd1071110970_
                                       _tl1071210972_
                                       ___splice1357913580_
                                       _target1071310975_
                                       _tl1071510977_)
                                (letrec ((_loop1071610980_
                                          (lambda (_hd1071410983_
                                                   _arg1072010985_)
                                            (if (gx#stx-pair? _hd1071410983_)
                                                (let ((_e1071710988_
                                                       (gx#stx-e
                                                        _hd1071410983_)))
                                                  (let ((_lp-tl1071910993_
                                                         (##cdr _e1071710988_))
                                                        (_lp-hd1071810991_
                                                         (##car _e1071710988_)))
                                                    (_loop1071610980_
                                                     _lp-tl1071910993_
                                                     (cons _lp-hd1071810991_
                                                           _arg1072010985_))))
                                                (let ((_arg1072110996_
                                                       (reverse _arg1072010985_)))
                                                  (if (gx#stx-pair?
                                                       _tl1071210972_)
                                                      (let ((_e1072210999_
                                                             (gx#stx-e
                                                              _tl1071210972_)))
                                                        (let ((_tl1072411004_
                                                               (##cdr _e1072210999_))
                                                              (_hd1072311002_
                                                               (##car _e1072210999_)))
                                                          (if (gx#stx-pair?
                                                               _hd1072311002_)
                                                              (let ((_e1072511007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1072311002_)))
                        (let ((_tl1072711012_ (##cdr _e1072511007_))
                              (_hd1072611010_ (##car _e1072511007_)))
                          (if (gx#identifier? _hd1072611010_)
                              (if (gx#stx-eq? '%#call _hd1072611010_)
                                  (if (gx#stx-pair? _tl1072711012_)
                                      (let ((_e1072811015_
                                             (gx#stx-e _tl1072711012_)))
                                        (let ((_tl1073011020_
                                               (##cdr _e1072811015_))
                                              (_hd1072911018_
                                               (##car _e1072811015_)))
                                          (if (gx#stx-pair? _hd1072911018_)
                                              (let ((_e1073111023_
                                                     (gx#stx-e
                                                      _hd1072911018_)))
                                                (let ((_tl1073311028_
                                                       (##cdr _e1073111023_))
                                                      (_hd1073211026_
                                                       (##car _e1073111023_)))
                                                  (if (gx#identifier?
                                                       _hd1073211026_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1073211026_)
                                                          (if (gx#stx-pair?
                                                               _tl1073311028_)
                                                              (let ((_e1073411031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1073311028_)))
                        (let ((_tl1073611036_ (##cdr _e1073411031_))
                              (_hd1073511034_ (##car _e1073411031_)))
                          (if (gx#stx-null? _tl1073611036_)
                              (if (gx#stx-pair? _tl1073011020_)
                                  (let ((_e1073711039_
                                         (gx#stx-e _tl1073011020_)))
                                    (let ((_tl1073911044_
                                           (##cdr _e1073711039_))
                                          (_hd1073811042_
                                           (##car _e1073711039_)))
                                      (if (gx#stx-pair? _hd1073811042_)
                                          (let ((_e1074011047_
                                                 (gx#stx-e _hd1073811042_)))
                                            (let ((_tl1074211052_
                                                   (##cdr _e1074011047_))
                                                  (_hd1074111050_
                                                   (##car _e1074011047_)))
                                              (if (gx#identifier?
                                                   _hd1074111050_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1074111050_)
                                                      (if (gx#stx-pair?
                                                           _tl1074211052_)
                                                          (let ((_e1074311055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1074211052_)))
                    (let ((_tl1074511060_ (##cdr _e1074311055_))
                          (_hd1074411058_ (##car _e1074311055_)))
                      (if (gx#stx-null? _tl1074511060_)
                          (if (gx#stx-pair/null? _tl1073911044_)
                              (if (fx>= (gx#stx-length _tl1073911044_) '1)
                                  (let ((___splice1358113582_
                                         (gx#syntax-split-splice
                                          _tl1073911044_
                                          '1)))
                                    (let ((_tl1074811065_
                                           (##vector-ref
                                            ___splice1358113582_
                                            '1))
                                          (_target1074611063_
                                           (##vector-ref
                                            ___splice1358113582_
                                            '0)))
                                      (if (gx#stx-pair? _tl1074811065_)
                                          (let ((_e1075511068_
                                                 (gx#stx-e _tl1074811065_)))
                                            (let ((_tl1075711073_
                                                   (##cdr _e1075511068_))
                                                  (_hd1075611071_
                                                   (##car _e1075511068_)))
                                              (if (gx#stx-pair? _hd1075611071_)
                                                  (let ((_e1075811076_
                                                         (gx#stx-e
                                                          _hd1075611071_)))
                                                    (let ((_tl1076011081_
                                                           (##cdr _e1075811076_))
                                                          (_hd1075911079_
                                                           (##car _e1075811076_)))
                                                      (if (gx#identifier?
                                                           _hd1075911079_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1075911079_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1076011081_)
                          (let ((_e1076111084_ (gx#stx-e _tl1076011081_)))
                            (let ((_tl1076311089_ (##cdr _e1076111084_))
                                  (_hd1076211087_ (##car _e1076111084_)))
                              (if (gx#stx-null? _tl1076311089_)
                                  (if (gx#stx-null? _tl1075711073_)
                                      (letrec ((_loop1074911092_
                                                (lambda (_hd1074711095_
                                                         _xarg1075311097_)
                                                  (if (gx#stx-pair?
                                                       _hd1074711095_)
                                                      (let ((_e1075011100_
                                                             (gx#stx-e
                                                              _hd1074711095_)))
                                                        (let ((_lp-tl1075211105_
                                                               (##cdr _e1075011100_))
                                                              (_lp-hd1075111103_
                                                               (##car _e1075011100_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1075111103_)
                                                              (let ((_e1076411108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1075111103_)))
                        (let ((_tl1076611113_ (##cdr _e1076411108_))
                              (_hd1076511111_ (##car _e1076411108_)))
                          (if (gx#identifier? _hd1076511111_)
                              (if (gx#stx-eq? '%#ref _hd1076511111_)
                                  (if (gx#stx-pair? _tl1076611113_)
                                      (let ((_e1076711116_
                                             (gx#stx-e _tl1076611113_)))
                                        (let ((_tl1076911121_
                                               (##cdr _e1076711116_))
                                              (_hd1076811119_
                                               (##car _e1076711116_)))
                                          (if (gx#stx-null? _tl1076911121_)
                                              (_loop1074911092_
                                               _lp-tl1075211105_
                                               (cons _hd1076811119_
                                                     _xarg1075311097_))
                                              (___match1368213683_
                                               _e1071010967_
                                               _hd1071110970_
                                               _tl1071210972_
                                               _e1072210999_
                                               _hd1072311002_
                                               _tl1072411004_
                                               _e1072511007_
                                               _hd1072611010_
                                               _tl1072711012_
                                               _e1072811015_
                                               _hd1072911018_
                                               _tl1073011020_
                                               _e1073111023_
                                               _hd1073211026_
                                               _tl1073311028_
                                               _e1073411031_
                                               _hd1073511034_
                                               _tl1073611036_
                                               _e1073711039_
                                               _hd1073811042_
                                               _tl1073911044_
                                               _e1074011047_
                                               _hd1074111050_
                                               _tl1074211052_
                                               _e1074311055_
                                               _hd1074411058_
                                               _tl1074511060_))))
                                      (___match1368213683_
                                       _e1071010967_
                                       _hd1071110970_
                                       _tl1071210972_
                                       _e1072210999_
                                       _hd1072311002_
                                       _tl1072411004_
                                       _e1072511007_
                                       _hd1072611010_
                                       _tl1072711012_
                                       _e1072811015_
                                       _hd1072911018_
                                       _tl1073011020_
                                       _e1073111023_
                                       _hd1073211026_
                                       _tl1073311028_
                                       _e1073411031_
                                       _hd1073511034_
                                       _tl1073611036_
                                       _e1073711039_
                                       _hd1073811042_
                                       _tl1073911044_
                                       _e1074011047_
                                       _hd1074111050_
                                       _tl1074211052_
                                       _e1074311055_
                                       _hd1074411058_
                                       _tl1074511060_))
                                  (___match1368213683_
                                   _e1071010967_
                                   _hd1071110970_
                                   _tl1071210972_
                                   _e1072210999_
                                   _hd1072311002_
                                   _tl1072411004_
                                   _e1072511007_
                                   _hd1072611010_
                                   _tl1072711012_
                                   _e1072811015_
                                   _hd1072911018_
                                   _tl1073011020_
                                   _e1073111023_
                                   _hd1073211026_
                                   _tl1073311028_
                                   _e1073411031_
                                   _hd1073511034_
                                   _tl1073611036_
                                   _e1073711039_
                                   _hd1073811042_
                                   _tl1073911044_
                                   _e1074011047_
                                   _hd1074111050_
                                   _tl1074211052_
                                   _e1074311055_
                                   _hd1074411058_
                                   _tl1074511060_))
                              (___match1368213683_
                               _e1071010967_
                               _hd1071110970_
                               _tl1071210972_
                               _e1072210999_
                               _hd1072311002_
                               _tl1072411004_
                               _e1072511007_
                               _hd1072611010_
                               _tl1072711012_
                               _e1072811015_
                               _hd1072911018_
                               _tl1073011020_
                               _e1073111023_
                               _hd1073211026_
                               _tl1073311028_
                               _e1073411031_
                               _hd1073511034_
                               _tl1073611036_
                               _e1073711039_
                               _hd1073811042_
                               _tl1073911044_
                               _e1074011047_
                               _hd1074111050_
                               _tl1074211052_
                               _e1074311055_
                               _hd1074411058_
                               _tl1074511060_))))
                      (___match1368213683_
                       _e1071010967_
                       _hd1071110970_
                       _tl1071210972_
                       _e1072210999_
                       _hd1072311002_
                       _tl1072411004_
                       _e1072511007_
                       _hd1072611010_
                       _tl1072711012_
                       _e1072811015_
                       _hd1072911018_
                       _tl1073011020_
                       _e1073111023_
                       _hd1073211026_
                       _tl1073311028_
                       _e1073411031_
                       _hd1073511034_
                       _tl1073611036_
                       _e1073711039_
                       _hd1073811042_
                       _tl1073911044_
                       _e1074011047_
                       _hd1074111050_
                       _tl1074211052_
                       _e1074311055_
                       _hd1074411058_
                       _tl1074511060_))))
              (let ((_xarg1075411124_ (reverse _xarg1075311097_)))
                (if (gx#stx-null? _tl1072411004_)
                    (let ((_L11127_ _hd1076211087_)
                          (_L11128_ _xarg1075411124_)
                          (_L11129_ _hd1074411058_)
                          (_L11130_ _hd1073511034_)
                          (_L11131_ _tl1071510977_)
                          (_L11132_ _arg1072110996_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1117511178_ _g1117611180_)
                                           (cons _g1117511178_ _g1117611180_))
                                         '()
                                         _L11132_)))
                              (if (gx#identifier? _L11131_)
                                  (if (gxc#runtime-identifier=?
                                       _L11130_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1118211185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1118311187_)
                           (cons _g1118211185_ _g1118311187_))
                         '()
                         _L11132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1118911192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1119011194_)
                           (cons _g1118911192_ _g1119011194_))
                         '()
                         _L11128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1119611199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1119711201_)
                           (cons _g1119611199_ _g1119711201_))
                         '()
                         _L11132_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1120311206_ _g1120411208_)
                           (cons _g1120311206_ _g1120411208_))
                         '()
                         _L11128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L11131_
                                                   _L11127_)
                                                  (not (find (lambda (_g1121011212_)
                                                               (gx#free-identifier=?
                                                                _g1121011212_
                                                                _L11129_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1121411217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1121511219_)
                                 (cons _g1121411217_ _g1121511219_))
                               (cons _L11131_ '())
                               _L11132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1357713578_
                           _L11127_
                           _L11128_
                           _L11129_
                           _L11130_
                           _L11131_
                           _L11132_)
                          (___match1368213683_
                           _e1071010967_
                           _hd1071110970_
                           _tl1071210972_
                           _e1072210999_
                           _hd1072311002_
                           _tl1072411004_
                           _e1072511007_
                           _hd1072611010_
                           _tl1072711012_
                           _e1072811015_
                           _hd1072911018_
                           _tl1073011020_
                           _e1073111023_
                           _hd1073211026_
                           _tl1073311028_
                           _e1073411031_
                           _hd1073511034_
                           _tl1073611036_
                           _e1073711039_
                           _hd1073811042_
                           _tl1073911044_
                           _e1074011047_
                           _hd1074111050_
                           _tl1074211052_
                           _e1074311055_
                           _hd1074411058_
                           _tl1074511060_)))
                    (___match1368213683_
                     _e1071010967_
                     _hd1071110970_
                     _tl1071210972_
                     _e1072210999_
                     _hd1072311002_
                     _tl1072411004_
                     _e1072511007_
                     _hd1072611010_
                     _tl1072711012_
                     _e1072811015_
                     _hd1072911018_
                     _tl1073011020_
                     _e1073111023_
                     _hd1073211026_
                     _tl1073311028_
                     _e1073411031_
                     _hd1073511034_
                     _tl1073611036_
                     _e1073711039_
                     _hd1073811042_
                     _tl1073911044_
                     _e1074011047_
                     _hd1074111050_
                     _tl1074211052_
                     _e1074311055_
                     _hd1074411058_
                     _tl1074511060_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1074911092_
                                         _target1074611063_
                                         '()))
                                      (___match1368213683_
                                       _e1071010967_
                                       _hd1071110970_
                                       _tl1071210972_
                                       _e1072210999_
                                       _hd1072311002_
                                       _tl1072411004_
                                       _e1072511007_
                                       _hd1072611010_
                                       _tl1072711012_
                                       _e1072811015_
                                       _hd1072911018_
                                       _tl1073011020_
                                       _e1073111023_
                                       _hd1073211026_
                                       _tl1073311028_
                                       _e1073411031_
                                       _hd1073511034_
                                       _tl1073611036_
                                       _e1073711039_
                                       _hd1073811042_
                                       _tl1073911044_
                                       _e1074011047_
                                       _hd1074111050_
                                       _tl1074211052_
                                       _e1074311055_
                                       _hd1074411058_
                                       _tl1074511060_))
                                  (___match1368213683_
                                   _e1071010967_
                                   _hd1071110970_
                                   _tl1071210972_
                                   _e1072210999_
                                   _hd1072311002_
                                   _tl1072411004_
                                   _e1072511007_
                                   _hd1072611010_
                                   _tl1072711012_
                                   _e1072811015_
                                   _hd1072911018_
                                   _tl1073011020_
                                   _e1073111023_
                                   _hd1073211026_
                                   _tl1073311028_
                                   _e1073411031_
                                   _hd1073511034_
                                   _tl1073611036_
                                   _e1073711039_
                                   _hd1073811042_
                                   _tl1073911044_
                                   _e1074011047_
                                   _hd1074111050_
                                   _tl1074211052_
                                   _e1074311055_
                                   _hd1074411058_
                                   _tl1074511060_))))
                          (___match1368213683_
                           _e1071010967_
                           _hd1071110970_
                           _tl1071210972_
                           _e1072210999_
                           _hd1072311002_
                           _tl1072411004_
                           _e1072511007_
                           _hd1072611010_
                           _tl1072711012_
                           _e1072811015_
                           _hd1072911018_
                           _tl1073011020_
                           _e1073111023_
                           _hd1073211026_
                           _tl1073311028_
                           _e1073411031_
                           _hd1073511034_
                           _tl1073611036_
                           _e1073711039_
                           _hd1073811042_
                           _tl1073911044_
                           _e1074011047_
                           _hd1074111050_
                           _tl1074211052_
                           _e1074311055_
                           _hd1074411058_
                           _tl1074511060_))
                      (___match1368213683_
                       _e1071010967_
                       _hd1071110970_
                       _tl1071210972_
                       _e1072210999_
                       _hd1072311002_
                       _tl1072411004_
                       _e1072511007_
                       _hd1072611010_
                       _tl1072711012_
                       _e1072811015_
                       _hd1072911018_
                       _tl1073011020_
                       _e1073111023_
                       _hd1073211026_
                       _tl1073311028_
                       _e1073411031_
                       _hd1073511034_
                       _tl1073611036_
                       _e1073711039_
                       _hd1073811042_
                       _tl1073911044_
                       _e1074011047_
                       _hd1074111050_
                       _tl1074211052_
                       _e1074311055_
                       _hd1074411058_
                       _tl1074511060_))
                  (___match1368213683_
                   _e1071010967_
                   _hd1071110970_
                   _tl1071210972_
                   _e1072210999_
                   _hd1072311002_
                   _tl1072411004_
                   _e1072511007_
                   _hd1072611010_
                   _tl1072711012_
                   _e1072811015_
                   _hd1072911018_
                   _tl1073011020_
                   _e1073111023_
                   _hd1073211026_
                   _tl1073311028_
                   _e1073411031_
                   _hd1073511034_
                   _tl1073611036_
                   _e1073711039_
                   _hd1073811042_
                   _tl1073911044_
                   _e1074011047_
                   _hd1074111050_
                   _tl1074211052_
                   _e1074311055_
                   _hd1074411058_
                   _tl1074511060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1368213683_
                                                   _e1071010967_
                                                   _hd1071110970_
                                                   _tl1071210972_
                                                   _e1072210999_
                                                   _hd1072311002_
                                                   _tl1072411004_
                                                   _e1072511007_
                                                   _hd1072611010_
                                                   _tl1072711012_
                                                   _e1072811015_
                                                   _hd1072911018_
                                                   _tl1073011020_
                                                   _e1073111023_
                                                   _hd1073211026_
                                                   _tl1073311028_
                                                   _e1073411031_
                                                   _hd1073511034_
                                                   _tl1073611036_
                                                   _e1073711039_
                                                   _hd1073811042_
                                                   _tl1073911044_
                                                   _e1074011047_
                                                   _hd1074111050_
                                                   _tl1074211052_
                                                   _e1074311055_
                                                   _hd1074411058_
                                                   _tl1074511060_))))
                                          (___match1368213683_
                                           _e1071010967_
                                           _hd1071110970_
                                           _tl1071210972_
                                           _e1072210999_
                                           _hd1072311002_
                                           _tl1072411004_
                                           _e1072511007_
                                           _hd1072611010_
                                           _tl1072711012_
                                           _e1072811015_
                                           _hd1072911018_
                                           _tl1073011020_
                                           _e1073111023_
                                           _hd1073211026_
                                           _tl1073311028_
                                           _e1073411031_
                                           _hd1073511034_
                                           _tl1073611036_
                                           _e1073711039_
                                           _hd1073811042_
                                           _tl1073911044_
                                           _e1074011047_
                                           _hd1074111050_
                                           _tl1074211052_
                                           _e1074311055_
                                           _hd1074411058_
                                           _tl1074511060_))))
                                  (___match1368213683_
                                   _e1071010967_
                                   _hd1071110970_
                                   _tl1071210972_
                                   _e1072210999_
                                   _hd1072311002_
                                   _tl1072411004_
                                   _e1072511007_
                                   _hd1072611010_
                                   _tl1072711012_
                                   _e1072811015_
                                   _hd1072911018_
                                   _tl1073011020_
                                   _e1073111023_
                                   _hd1073211026_
                                   _tl1073311028_
                                   _e1073411031_
                                   _hd1073511034_
                                   _tl1073611036_
                                   _e1073711039_
                                   _hd1073811042_
                                   _tl1073911044_
                                   _e1074011047_
                                   _hd1074111050_
                                   _tl1074211052_
                                   _e1074311055_
                                   _hd1074411058_
                                   _tl1074511060_))
                              (___match1368213683_
                               _e1071010967_
                               _hd1071110970_
                               _tl1071210972_
                               _e1072210999_
                               _hd1072311002_
                               _tl1072411004_
                               _e1072511007_
                               _hd1072611010_
                               _tl1072711012_
                               _e1072811015_
                               _hd1072911018_
                               _tl1073011020_
                               _e1073111023_
                               _hd1073211026_
                               _tl1073311028_
                               _e1073411031_
                               _hd1073511034_
                               _tl1073611036_
                               _e1073711039_
                               _hd1073811042_
                               _tl1073911044_
                               _e1074011047_
                               _hd1074111050_
                               _tl1074211052_
                               _e1074311055_
                               _hd1074411058_
                               _tl1074511060_))
                          (___kont1358513586_))))
                  (___kont1358513586_))
              (___kont1358513586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1358513586_))))
                                          (___kont1358513586_))))
                                  (___kont1358513586_))
                              (___kont1358513586_))))
                      (___kont1358513586_))
                  (___kont1358513586_))
              (___kont1358513586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1358513586_))))
                                      (___kont1358513586_))
                                  (___kont1358513586_))
                              (___kont1358513586_))))
                      (___kont1358513586_))))
              (___kont1358513586_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1071610980_ _target1071310975_ '()))))
                             (___match1360013601_
                              (lambda (_e1066211227_
                                       _hd1066311230_
                                       _tl1066411232_
                                       ___splice1357313574_
                                       _target1066511235_
                                       _tl1066711237_)
                                (letrec ((_loop1066811240_
                                          (lambda (_hd1066611243_
                                                   _arg1067211245_)
                                            (if (gx#stx-pair? _hd1066611243_)
                                                (let ((_e1066911248_
                                                       (gx#stx-e
                                                        _hd1066611243_)))
                                                  (let ((_lp-tl1067111253_
                                                         (##cdr _e1066911248_))
                                                        (_lp-hd1067011251_
                                                         (##car _e1066911248_)))
                                                    (_loop1066811240_
                                                     _lp-tl1067111253_
                                                     (cons _lp-hd1067011251_
                                                           _arg1067211245_))))
                                                (let ((_arg1067311256_
                                                       (reverse _arg1067211245_)))
                                                  (if (gx#stx-pair?
                                                       _tl1066411232_)
                                                      (let ((_e1067411259_
                                                             (gx#stx-e
                                                              _tl1066411232_)))
                                                        (let ((_tl1067611264_
                                                               (##cdr _e1067411259_))
                                                              (_hd1067511262_
                                                               (##car _e1067411259_)))
                                                          (if (gx#stx-pair?
                                                               _hd1067511262_)
                                                              (let ((_e1067711267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1067511262_)))
                        (let ((_tl1067911272_ (##cdr _e1067711267_))
                              (_hd1067811270_ (##car _e1067711267_)))
                          (if (gx#identifier? _hd1067811270_)
                              (if (gx#stx-eq? '%#call _hd1067811270_)
                                  (if (gx#stx-pair? _tl1067911272_)
                                      (let ((_e1068011275_
                                             (gx#stx-e _tl1067911272_)))
                                        (let ((_tl1068211280_
                                               (##cdr _e1068011275_))
                                              (_hd1068111278_
                                               (##car _e1068011275_)))
                                          (if (gx#stx-pair? _hd1068111278_)
                                              (let ((_e1068311283_
                                                     (gx#stx-e
                                                      _hd1068111278_)))
                                                (let ((_tl1068511288_
                                                       (##cdr _e1068311283_))
                                                      (_hd1068411286_
                                                       (##car _e1068311283_)))
                                                  (if (gx#identifier?
                                                       _hd1068411286_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1068411286_)
                                                          (if (gx#stx-pair?
                                                               _tl1068511288_)
                                                              (let ((_e1068611291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1068511288_)))
                        (let ((_tl1068811296_ (##cdr _e1068611291_))
                              (_hd1068711294_ (##car _e1068611291_)))
                          (if (gx#stx-null? _tl1068811296_)
                              (if (gx#stx-pair/null? _tl1068211280_)
                                  (let ((___splice1357513576_
                                         (gx#syntax-split-splice
                                          _tl1068211280_
                                          '0)))
                                    (let ((_tl1069111301_
                                           (##vector-ref
                                            ___splice1357513576_
                                            '1))
                                          (_target1068911299_
                                           (##vector-ref
                                            ___splice1357513576_
                                            '0)))
                                      (if (gx#stx-null? _tl1069111301_)
                                          (letrec ((_loop1069211304_
                                                    (lambda (_hd1069011307_
                                                             _xarg1069611309_)
                                                      (if (gx#stx-pair?
                                                           _hd1069011307_)
                                                          (let ((_e1069311312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1069011307_)))
                    (let ((_lp-tl1069511317_ (##cdr _e1069311312_))
                          (_lp-hd1069411315_ (##car _e1069311312_)))
                      (if (gx#stx-pair? _lp-hd1069411315_)
                          (let ((_e1069811320_ (gx#stx-e _lp-hd1069411315_)))
                            (let ((_tl1070011325_ (##cdr _e1069811320_))
                                  (_hd1069911323_ (##car _e1069811320_)))
                              (if (gx#identifier? _hd1069911323_)
                                  (if (gx#stx-eq? '%#ref _hd1069911323_)
                                      (if (gx#stx-pair? _tl1070011325_)
                                          (let ((_e1070111328_
                                                 (gx#stx-e _tl1070011325_)))
                                            (let ((_tl1070311333_
                                                   (##cdr _e1070111328_))
                                                  (_hd1070211331_
                                                   (##car _e1070111328_)))
                                              (if (gx#stx-null? _tl1070311333_)
                                                  (_loop1069211304_
                                                   _lp-tl1069511317_
                                                   (cons _hd1070211331_
                                                         _xarg1069611309_))
                                                  (___match1361213613_
                                                   _e1066211227_
                                                   _hd1066311230_
                                                   _tl1066411232_
                                                   ___splice1357313574_
                                                   _target1066511235_
                                                   _tl1066711237_))))
                                          (___match1361213613_
                                           _e1066211227_
                                           _hd1066311230_
                                           _tl1066411232_
                                           ___splice1357313574_
                                           _target1066511235_
                                           _tl1066711237_))
                                      (___match1361213613_
                                       _e1066211227_
                                       _hd1066311230_
                                       _tl1066411232_
                                       ___splice1357313574_
                                       _target1066511235_
                                       _tl1066711237_))
                                  (___match1361213613_
                                   _e1066211227_
                                   _hd1066311230_
                                   _tl1066411232_
                                   ___splice1357313574_
                                   _target1066511235_
                                   _tl1066711237_))))
                          (___match1361213613_
                           _e1066211227_
                           _hd1066311230_
                           _tl1066411232_
                           ___splice1357313574_
                           _target1066511235_
                           _tl1066711237_))))
                  (let ((_xarg1069711336_ (reverse _xarg1069611309_)))
                    (if (gx#stx-null? _tl1067611264_)
                        (let ((_L11339_ _xarg1069711336_)
                              (_L11340_ _hd1068711294_)
                              (_L11341_ _arg1067311256_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1136911372_
                                                      _g1137011374_)
                                               (cons _g1136911372_
                                                     _g1137011374_))
                                             '()
                                             _L11341_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1137611379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1137711381_)
                       (cons _g1137611379_ _g1137711381_))
                     '()
                     _L11341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1138311386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1138411388_)
                       (cons _g1138311386_ _g1138411388_))
                     '()
                     _L11339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1139011393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1139111395_)
                       (cons _g1139011393_ _g1139111395_))
                     '()
                     _L11341_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1139711400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1139811402_)
                       (cons _g1139711400_ _g1139811402_))
                     '()
                     _L11339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1140411406_)
                                                       (gx#free-identifier=?
                                                        _g1140411406_
                                                        _L11340_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1140811411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1140911413_)
                         (cons _g1140811411_ _g1140911413_))
                       '()
                       _L11341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1357113572_ _L11339_ _L11340_ _L11341_)
                              (___match1361213613_
                               _e1066211227_
                               _hd1066311230_
                               _tl1066411232_
                               ___splice1357313574_
                               _target1066511235_
                               _tl1066711237_)))
                        (___match1361213613_
                         _e1066211227_
                         _hd1066311230_
                         _tl1066411232_
                         ___splice1357313574_
                         _target1066511235_
                         _tl1066711237_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1069211304_
                                             _target1068911299_
                                             '()))
                                          (___match1361213613_
                                           _e1066211227_
                                           _hd1066311230_
                                           _tl1066411232_
                                           ___splice1357313574_
                                           _target1066511235_
                                           _tl1066711237_))))
                                  (___match1361213613_
                                   _e1066211227_
                                   _hd1066311230_
                                   _tl1066411232_
                                   ___splice1357313574_
                                   _target1066511235_
                                   _tl1066711237_))
                              (___match1361213613_
                               _e1066211227_
                               _hd1066311230_
                               _tl1066411232_
                               ___splice1357313574_
                               _target1066511235_
                               _tl1066711237_))))
                      (___match1361213613_
                       _e1066211227_
                       _hd1066311230_
                       _tl1066411232_
                       ___splice1357313574_
                       _target1066511235_
                       _tl1066711237_))
                  (___match1361213613_
                   _e1066211227_
                   _hd1066311230_
                   _tl1066411232_
                   ___splice1357313574_
                   _target1066511235_
                   _tl1066711237_))
              (___match1361213613_
               _e1066211227_
               _hd1066311230_
               _tl1066411232_
               ___splice1357313574_
               _target1066511235_
               _tl1066711237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1361213613_
                                               _e1066211227_
                                               _hd1066311230_
                                               _tl1066411232_
                                               ___splice1357313574_
                                               _target1066511235_
                                               _tl1066711237_))))
                                      (___match1361213613_
                                       _e1066211227_
                                       _hd1066311230_
                                       _tl1066411232_
                                       ___splice1357313574_
                                       _target1066511235_
                                       _tl1066711237_))
                                  (___match1361213613_
                                   _e1066211227_
                                   _hd1066311230_
                                   _tl1066411232_
                                   ___splice1357313574_
                                   _target1066511235_
                                   _tl1066711237_))
                              (___match1361213613_
                               _e1066211227_
                               _hd1066311230_
                               _tl1066411232_
                               ___splice1357313574_
                               _target1066511235_
                               _tl1066711237_))))
                      (___match1361213613_
                       _e1066211227_
                       _hd1066311230_
                       _tl1066411232_
                       ___splice1357313574_
                       _target1066511235_
                       _tl1066711237_))))
              (___match1361213613_
               _e1066211227_
               _hd1066311230_
               _tl1066411232_
               ___splice1357313574_
               _target1066511235_
               _tl1066711237_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1066811240_ _target1066511235_ '())))))
                        (if (gx#stx-pair? ___stx1356913570_)
                            (let ((_e1066211227_ (gx#stx-e ___stx1356913570_)))
                              (let ((_tl1066411232_ (##cdr _e1066211227_))
                                    (_hd1066311230_ (##car _e1066211227_)))
                                (if (gx#stx-pair/null? _hd1066311230_)
                                    (let ((___splice1357313574_
                                           (gx#syntax-split-splice
                                            _hd1066311230_
                                            '0)))
                                      (let ((_tl1066711237_
                                             (##vector-ref
                                              ___splice1357313574_
                                              '1))
                                            (_target1066511235_
                                             (##vector-ref
                                              ___splice1357313574_
                                              '0)))
                                        (if (gx#stx-null? _tl1066711237_)
                                            (___match1360013601_
                                             _e1066211227_
                                             _hd1066311230_
                                             _tl1066411232_
                                             ___splice1357313574_
                                             _target1066511235_
                                             _tl1066711237_)
                                            (___match1361213613_
                                             _e1066211227_
                                             _hd1066311230_
                                             _tl1066411232_
                                             ___splice1357313574_
                                             _target1066511235_
                                             _tl1066711237_))))
                                    (if (gx#stx-pair? _tl1066411232_)
                                        (let ((_e1077710834_
                                               (gx#stx-e _tl1066411232_)))
                                          (let ((_tl1077910839_
                                                 (##cdr _e1077710834_))
                                                (_hd1077810837_
                                                 (##car _e1077710834_)))
                                            (if (gx#stx-pair? _hd1077810837_)
                                                (let ((_e1078010842_
                                                       (gx#stx-e
                                                        _hd1077810837_)))
                                                  (let ((_tl1078210847_
                                                         (##cdr _e1078010842_))
                                                        (_hd1078110845_
                                                         (##car _e1078010842_)))
                                                    (if (gx#identifier?
                                                         _hd1078110845_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1078110845_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1078210847_)
                        (let ((_e1078310850_ (gx#stx-e _tl1078210847_)))
                          (let ((_tl1078510855_ (##cdr _e1078310850_))
                                (_hd1078410853_ (##car _e1078310850_)))
                            (if (gx#stx-pair? _hd1078410853_)
                                (let ((_e1078610858_
                                       (gx#stx-e _hd1078410853_)))
                                  (let ((_tl1078810863_ (##cdr _e1078610858_))
                                        (_hd1078710861_ (##car _e1078610858_)))
                                    (if (gx#identifier? _hd1078710861_)
                                        (if (gx#stx-eq? '%#ref _hd1078710861_)
                                            (if (gx#stx-pair? _tl1078810863_)
                                                (let ((_e1078910866_
                                                       (gx#stx-e
                                                        _tl1078810863_)))
                                                  (let ((_tl1079110871_
                                                         (##cdr _e1078910866_))
                                                        (_hd1079010869_
                                                         (##car _e1078910866_)))
                                                    (if (gx#stx-null?
                                                         _tl1079110871_)
                                                        (if (gx#stx-pair?
                                                             _tl1078510855_)
                                                            (let ((_e1079210874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1078510855_)))
                      (let ((_tl1079410879_ (##cdr _e1079210874_))
                            (_hd1079310877_ (##car _e1079210874_)))
                        (if (gx#stx-pair? _hd1079310877_)
                            (let ((_e1079510882_ (gx#stx-e _hd1079310877_)))
                              (let ((_tl1079710887_ (##cdr _e1079510882_))
                                    (_hd1079610885_ (##car _e1079510882_)))
                                (if (gx#identifier? _hd1079610885_)
                                    (if (gx#stx-eq? '%#ref _hd1079610885_)
                                        (if (gx#stx-pair? _tl1079710887_)
                                            (let ((_e1079810890_
                                                   (gx#stx-e _tl1079710887_)))
                                              (let ((_tl1080010895_
                                                     (##cdr _e1079810890_))
                                                    (_hd1079910893_
                                                     (##car _e1079810890_)))
                                                (if (gx#stx-null?
                                                     _tl1080010895_)
                                                    (if (gx#stx-pair?
                                                         _tl1079410879_)
                                                        (let ((_e1080110898_
                                                               (gx#stx-e
                                                                _tl1079410879_)))
                                                          (let ((_tl1080310903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1080110898_))
                        (_hd1080210901_ (##car _e1080110898_)))
                    (if (gx#stx-pair? _hd1080210901_)
                        (let ((_e1080410906_ (gx#stx-e _hd1080210901_)))
                          (let ((_tl1080610911_ (##cdr _e1080410906_))
                                (_hd1080510909_ (##car _e1080410906_)))
                            (if (gx#identifier? _hd1080510909_)
                                (if (gx#stx-eq? '%#ref _hd1080510909_)
                                    (if (gx#stx-pair? _tl1080610911_)
                                        (let ((_e1080710914_
                                               (gx#stx-e _tl1080610911_)))
                                          (let ((_tl1080910919_
                                                 (##cdr _e1080710914_))
                                                (_hd1080810917_
                                                 (##car _e1080710914_)))
                                            (if (gx#stx-null? _tl1080910919_)
                                                (if (gx#stx-null?
                                                     _tl1080310903_)
                                                    (if (gx#stx-null?
                                                         _tl1077910839_)
                                                        (___match1371013711_
                                                         _e1066211227_
                                                         _hd1066311230_
                                                         _tl1066411232_
                                                         _e1077710834_
                                                         _hd1077810837_
                                                         _tl1077910839_
                                                         _e1078010842_
                                                         _hd1078110845_
                                                         _tl1078210847_
                                                         _e1078310850_
                                                         _hd1078410853_
                                                         _tl1078510855_
                                                         _e1078610858_
                                                         _hd1078710861_
                                                         _tl1078810863_
                                                         _e1078910866_
                                                         _hd1079010869_
                                                         _tl1079110871_
                                                         _e1079210874_
                                                         _hd1079310877_
                                                         _tl1079410879_
                                                         _e1079510882_
                                                         _hd1079610885_
                                                         _tl1079710887_
                                                         _e1079810890_
                                                         _hd1079910893_
                                                         _tl1080010895_
                                                         _e1080110898_
                                                         _hd1080210901_
                                                         _tl1080310903_
                                                         _e1080410906_
                                                         _hd1080510909_
                                                         _tl1080610911_
                                                         _e1080710914_
                                                         _hd1080810917_
                                                         _tl1080910919_)
                                                        (___kont1358513586_))
                                                    (___kont1358513586_))
                                                (___kont1358513586_))))
                                        (___kont1358513586_))
                                    (___kont1358513586_))
                                (___kont1358513586_))))
                        (___kont1358513586_))))
                (___kont1358513586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1358513586_))))
                                            (___kont1358513586_))
                                        (___kont1358513586_))
                                    (___kont1358513586_))))
                            (___kont1358513586_))))
                    (___kont1358513586_))
                (___kont1358513586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1358513586_))
                                            (___kont1358513586_))
                                        (___kont1358513586_))))
                                (___kont1358513586_))))
                        (___kont1358513586_))
                    (___kont1358513586_))
                (___kont1358513586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1358513586_))))
                                        (___kont1358513586_)))))
                            (___kont1358513586_)))))))
               (_dispatch-case-e9965_
                (lambda (_hd10113_ _body10114_)
                  (let* ((_form10116_ (cons _hd10113_ (cons _body10114_ '())))
                         (___stx1371313714_ _form10116_)
                         (_g1012010244_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1371313714_))))
                    (let ((___kont1371513716_
                           (lambda (_L10615_ _L10616_ _L10617_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10616_ '())))))
                          (___kont1372113722_
                           (lambda (_L10463_ _L10464_ _L10465_ _L10466_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10463_ '())))))
                          (___kont1372513726_
                           (lambda (_L10329_ _L10330_ _L10331_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10329_ '()))))))
                      (let* ((___match1382213823_
                              (lambda (_e1021010249_
                                       _hd1021110252_
                                       _tl1021210254_
                                       _e1021310257_
                                       _hd1021410260_
                                       _tl1021510262_
                                       _e1021610265_
                                       _hd1021710268_
                                       _tl1021810270_
                                       _e1021910273_
                                       _hd1022010276_
                                       _tl1022110278_
                                       _e1022210281_
                                       _hd1022310284_
                                       _tl1022410286_
                                       _e1022510289_
                                       _hd1022610292_
                                       _tl1022710294_
                                       _e1022810297_
                                       _hd1022910300_
                                       _tl1023010302_
                                       _e1023110305_
                                       _hd1023210308_
                                       _tl1023310310_
                                       _e1023410313_
                                       _hd1023510316_
                                       _tl1023610318_)
                                (if (gx#stx-pair? _tl1023010302_)
                                    (let ((_e1023710321_
                                           (gx#stx-e _tl1023010302_)))
                                      (let ((_tl1023910326_
                                             (##cdr _e1023710321_))
                                            (_hd1023810324_
                                             (##car _e1023710321_)))
                                        (if (gx#stx-null? _tl1023910326_)
                                            (if (gx#stx-null? _tl1021510262_)
                                                (___kont1372513726_
                                                 _hd1023510316_
                                                 _hd1022610292_
                                                 _hd1021110252_)
                                                (_g1012010244_))
                                            (_g1012010244_))))
                                    (_g1012010244_))))
                             (___match1375213753_
                              (lambda (_e1017110367_
                                       _hd1017210370_
                                       _tl1017310372_
                                       ___splice1372313724_
                                       _target1017410375_
                                       _tl1017610377_)
                                (letrec ((_loop1017710380_
                                          (lambda (_hd1017510383_
                                                   _arg1018110385_)
                                            (if (gx#stx-pair? _hd1017510383_)
                                                (let ((_e1017810388_
                                                       (gx#stx-e
                                                        _hd1017510383_)))
                                                  (let ((_lp-tl1018010393_
                                                         (##cdr _e1017810388_))
                                                        (_lp-hd1017910391_
                                                         (##car _e1017810388_)))
                                                    (_loop1017710380_
                                                     _lp-tl1018010393_
                                                     (cons _lp-hd1017910391_
                                                           _arg1018110385_))))
                                                (let ((_arg1018210396_
                                                       (reverse _arg1018110385_)))
                                                  (if (gx#stx-pair?
                                                       _tl1017310372_)
                                                      (let ((_e1018310399_
                                                             (gx#stx-e
                                                              _tl1017310372_)))
                                                        (let ((_tl1018510404_
                                                               (##cdr _e1018310399_))
                                                              (_hd1018410402_
                                                               (##car _e1018310399_)))
                                                          (if (gx#stx-pair?
                                                               _hd1018410402_)
                                                              (let ((_e1018610407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1018410402_)))
                        (let ((_tl1018810412_ (##cdr _e1018610407_))
                              (_hd1018710410_ (##car _e1018610407_)))
                          (if (gx#identifier? _hd1018710410_)
                              (if (gx#stx-eq? '%#call _hd1018710410_)
                                  (if (gx#stx-pair? _tl1018810412_)
                                      (let ((_e1018910415_
                                             (gx#stx-e _tl1018810412_)))
                                        (let ((_tl1019110420_
                                               (##cdr _e1018910415_))
                                              (_hd1019010418_
                                               (##car _e1018910415_)))
                                          (if (gx#stx-pair? _hd1019010418_)
                                              (let ((_e1019210423_
                                                     (gx#stx-e
                                                      _hd1019010418_)))
                                                (let ((_tl1019410428_
                                                       (##cdr _e1019210423_))
                                                      (_hd1019310426_
                                                       (##car _e1019210423_)))
                                                  (if (gx#identifier?
                                                       _hd1019310426_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1019310426_)
                                                          (if (gx#stx-pair?
                                                               _tl1019410428_)
                                                              (let ((_e1019510431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1019410428_)))
                        (let ((_tl1019710436_ (##cdr _e1019510431_))
                              (_hd1019610434_ (##car _e1019510431_)))
                          (if (gx#stx-null? _tl1019710436_)
                              (if (gx#stx-pair? _tl1019110420_)
                                  (let ((_e1019810439_
                                         (gx#stx-e _tl1019110420_)))
                                    (let ((_tl1020010444_
                                           (##cdr _e1019810439_))
                                          (_hd1019910442_
                                           (##car _e1019810439_)))
                                      (if (gx#stx-pair? _hd1019910442_)
                                          (let ((_e1020110447_
                                                 (gx#stx-e _hd1019910442_)))
                                            (let ((_tl1020310452_
                                                   (##cdr _e1020110447_))
                                                  (_hd1020210450_
                                                   (##car _e1020110447_)))
                                              (if (gx#identifier?
                                                   _hd1020210450_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1020210450_)
                                                      (if (gx#stx-pair?
                                                           _tl1020310452_)
                                                          (let ((_e1020410455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1020310452_)))
                    (let ((_tl1020610460_ (##cdr _e1020410455_))
                          (_hd1020510458_ (##car _e1020410455_)))
                      (if (gx#stx-null? _tl1020610460_)
                          (if (gx#stx-null? _tl1018510404_)
                              (___kont1372113722_
                               _hd1020510458_
                               _hd1019610434_
                               _tl1017610377_
                               _arg1018210396_)
                              (___match1382213823_
                               _e1017110367_
                               _hd1017210370_
                               _tl1017310372_
                               _e1018310399_
                               _hd1018410402_
                               _tl1018510404_
                               _e1018610407_
                               _hd1018710410_
                               _tl1018810412_
                               _e1018910415_
                               _hd1019010418_
                               _tl1019110420_
                               _e1019210423_
                               _hd1019310426_
                               _tl1019410428_
                               _e1019510431_
                               _hd1019610434_
                               _tl1019710436_
                               _e1019810439_
                               _hd1019910442_
                               _tl1020010444_
                               _e1020110447_
                               _hd1020210450_
                               _tl1020310452_
                               _e1020410455_
                               _hd1020510458_
                               _tl1020610460_))
                          (_g1012010244_))))
                  (_g1012010244_))
              (_g1012010244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1012010244_))))
                                          (_g1012010244_))))
                                  (_g1012010244_))
                              (_g1012010244_))))
                      (_g1012010244_))
                  (_g1012010244_))
              (_g1012010244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1012010244_))))
                                      (_g1012010244_))
                                  (_g1012010244_))
                              (_g1012010244_))))
                      (_g1012010244_))))
              (_g1012010244_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1017710380_ _target1017410375_ '()))))
                             (___match1374013741_
                              (lambda (_e1012510503_
                                       _hd1012610506_
                                       _tl1012710508_
                                       ___splice1371713718_
                                       _target1012810511_
                                       _tl1013010513_)
                                (letrec ((_loop1013110516_
                                          (lambda (_hd1012910519_
                                                   _arg1013510521_)
                                            (if (gx#stx-pair? _hd1012910519_)
                                                (let ((_e1013210524_
                                                       (gx#stx-e
                                                        _hd1012910519_)))
                                                  (let ((_lp-tl1013410529_
                                                         (##cdr _e1013210524_))
                                                        (_lp-hd1013310527_
                                                         (##car _e1013210524_)))
                                                    (_loop1013110516_
                                                     _lp-tl1013410529_
                                                     (cons _lp-hd1013310527_
                                                           _arg1013510521_))))
                                                (let ((_arg1013610532_
                                                       (reverse _arg1013510521_)))
                                                  (if (gx#stx-pair?
                                                       _tl1012710508_)
                                                      (let ((_e1013710535_
                                                             (gx#stx-e
                                                              _tl1012710508_)))
                                                        (let ((_tl1013910540_
                                                               (##cdr _e1013710535_))
                                                              (_hd1013810538_
                                                               (##car _e1013710535_)))
                                                          (if (gx#stx-pair?
                                                               _hd1013810538_)
                                                              (let ((_e1014010543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1013810538_)))
                        (let ((_tl1014210548_ (##cdr _e1014010543_))
                              (_hd1014110546_ (##car _e1014010543_)))
                          (if (gx#identifier? _hd1014110546_)
                              (if (gx#stx-eq? '%#call _hd1014110546_)
                                  (if (gx#stx-pair? _tl1014210548_)
                                      (let ((_e1014310551_
                                             (gx#stx-e _tl1014210548_)))
                                        (let ((_tl1014510556_
                                               (##cdr _e1014310551_))
                                              (_hd1014410554_
                                               (##car _e1014310551_)))
                                          (if (gx#stx-pair? _hd1014410554_)
                                              (let ((_e1014610559_
                                                     (gx#stx-e
                                                      _hd1014410554_)))
                                                (let ((_tl1014810564_
                                                       (##cdr _e1014610559_))
                                                      (_hd1014710562_
                                                       (##car _e1014610559_)))
                                                  (if (gx#identifier?
                                                       _hd1014710562_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1014710562_)
                                                          (if (gx#stx-pair?
                                                               _tl1014810564_)
                                                              (let ((_e1014910567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1014810564_)))
                        (let ((_tl1015110572_ (##cdr _e1014910567_))
                              (_hd1015010570_ (##car _e1014910567_)))
                          (if (gx#stx-null? _tl1015110572_)
                              (if (gx#stx-pair/null? _tl1014510556_)
                                  (let ((___splice1371913720_
                                         (gx#syntax-split-splice
                                          _tl1014510556_
                                          '0)))
                                    (let ((_tl1015410577_
                                           (##vector-ref
                                            ___splice1371913720_
                                            '1))
                                          (_target1015210575_
                                           (##vector-ref
                                            ___splice1371913720_
                                            '0)))
                                      (if (gx#stx-null? _tl1015410577_)
                                          (letrec ((_loop1015510580_
                                                    (lambda (_hd1015310583_
                                                             _xarg1015910585_)
                                                      (if (gx#stx-pair?
                                                           _hd1015310583_)
                                                          (let ((_e1015610588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1015310583_)))
                    (let ((_lp-tl1015810593_ (##cdr _e1015610588_))
                          (_lp-hd1015710591_ (##car _e1015610588_)))
                      (if (gx#stx-pair? _lp-hd1015710591_)
                          (let ((_e1016110596_ (gx#stx-e _lp-hd1015710591_)))
                            (let ((_tl1016310601_ (##cdr _e1016110596_))
                                  (_hd1016210599_ (##car _e1016110596_)))
                              (if (gx#identifier? _hd1016210599_)
                                  (if (gx#stx-eq? '%#ref _hd1016210599_)
                                      (if (gx#stx-pair? _tl1016310601_)
                                          (let ((_e1016410604_
                                                 (gx#stx-e _tl1016310601_)))
                                            (let ((_tl1016610609_
                                                   (##cdr _e1016410604_))
                                                  (_hd1016510607_
                                                   (##car _e1016410604_)))
                                              (if (gx#stx-null? _tl1016610609_)
                                                  (_loop1015510580_
                                                   _lp-tl1015810593_
                                                   (cons _hd1016510607_
                                                         _xarg1015910585_))
                                                  (___match1375213753_
                                                   _e1012510503_
                                                   _hd1012610506_
                                                   _tl1012710508_
                                                   ___splice1371713718_
                                                   _target1012810511_
                                                   _tl1013010513_))))
                                          (___match1375213753_
                                           _e1012510503_
                                           _hd1012610506_
                                           _tl1012710508_
                                           ___splice1371713718_
                                           _target1012810511_
                                           _tl1013010513_))
                                      (___match1375213753_
                                       _e1012510503_
                                       _hd1012610506_
                                       _tl1012710508_
                                       ___splice1371713718_
                                       _target1012810511_
                                       _tl1013010513_))
                                  (___match1375213753_
                                   _e1012510503_
                                   _hd1012610506_
                                   _tl1012710508_
                                   ___splice1371713718_
                                   _target1012810511_
                                   _tl1013010513_))))
                          (___match1375213753_
                           _e1012510503_
                           _hd1012610506_
                           _tl1012710508_
                           ___splice1371713718_
                           _target1012810511_
                           _tl1013010513_))))
                  (let ((_xarg1016010612_ (reverse _xarg1015910585_)))
                    (if (gx#stx-null? _tl1013910540_)
                        (___kont1371513716_
                         _xarg1016010612_
                         _hd1015010570_
                         _arg1013610532_)
                        (___match1375213753_
                         _e1012510503_
                         _hd1012610506_
                         _tl1012710508_
                         ___splice1371713718_
                         _target1012810511_
                         _tl1013010513_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1015510580_
                                             _target1015210575_
                                             '()))
                                          (___match1375213753_
                                           _e1012510503_
                                           _hd1012610506_
                                           _tl1012710508_
                                           ___splice1371713718_
                                           _target1012810511_
                                           _tl1013010513_))))
                                  (___match1375213753_
                                   _e1012510503_
                                   _hd1012610506_
                                   _tl1012710508_
                                   ___splice1371713718_
                                   _target1012810511_
                                   _tl1013010513_))
                              (___match1375213753_
                               _e1012510503_
                               _hd1012610506_
                               _tl1012710508_
                               ___splice1371713718_
                               _target1012810511_
                               _tl1013010513_))))
                      (___match1375213753_
                       _e1012510503_
                       _hd1012610506_
                       _tl1012710508_
                       ___splice1371713718_
                       _target1012810511_
                       _tl1013010513_))
                  (___match1375213753_
                   _e1012510503_
                   _hd1012610506_
                   _tl1012710508_
                   ___splice1371713718_
                   _target1012810511_
                   _tl1013010513_))
              (___match1375213753_
               _e1012510503_
               _hd1012610506_
               _tl1012710508_
               ___splice1371713718_
               _target1012810511_
               _tl1013010513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1375213753_
                                               _e1012510503_
                                               _hd1012610506_
                                               _tl1012710508_
                                               ___splice1371713718_
                                               _target1012810511_
                                               _tl1013010513_))))
                                      (___match1375213753_
                                       _e1012510503_
                                       _hd1012610506_
                                       _tl1012710508_
                                       ___splice1371713718_
                                       _target1012810511_
                                       _tl1013010513_))
                                  (___match1375213753_
                                   _e1012510503_
                                   _hd1012610506_
                                   _tl1012710508_
                                   ___splice1371713718_
                                   _target1012810511_
                                   _tl1013010513_))
                              (___match1375213753_
                               _e1012510503_
                               _hd1012610506_
                               _tl1012710508_
                               ___splice1371713718_
                               _target1012810511_
                               _tl1013010513_))))
                      (___match1375213753_
                       _e1012510503_
                       _hd1012610506_
                       _tl1012710508_
                       ___splice1371713718_
                       _target1012810511_
                       _tl1013010513_))))
              (___match1375213753_
               _e1012510503_
               _hd1012610506_
               _tl1012710508_
               ___splice1371713718_
               _target1012810511_
               _tl1013010513_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1013110516_ _target1012810511_ '())))))
                        (if (gx#stx-pair? ___stx1371313714_)
                            (let ((_e1012510503_ (gx#stx-e ___stx1371313714_)))
                              (let ((_tl1012710508_ (##cdr _e1012510503_))
                                    (_hd1012610506_ (##car _e1012510503_)))
                                (if (gx#stx-pair/null? _hd1012610506_)
                                    (let ((___splice1371713718_
                                           (gx#syntax-split-splice
                                            _hd1012610506_
                                            '0)))
                                      (let ((_tl1013010513_
                                             (##vector-ref
                                              ___splice1371713718_
                                              '1))
                                            (_target1012810511_
                                             (##vector-ref
                                              ___splice1371713718_
                                              '0)))
                                        (if (gx#stx-null? _tl1013010513_)
                                            (___match1374013741_
                                             _e1012510503_
                                             _hd1012610506_
                                             _tl1012710508_
                                             ___splice1371713718_
                                             _target1012810511_
                                             _tl1013010513_)
                                            (___match1375213753_
                                             _e1012510503_
                                             _hd1012610506_
                                             _tl1012710508_
                                             ___splice1371713718_
                                             _target1012810511_
                                             _tl1013010513_))))
                                    (if (gx#stx-pair? _tl1012710508_)
                                        (let ((_e1021310257_
                                               (gx#stx-e _tl1012710508_)))
                                          (let ((_tl1021510262_
                                                 (##cdr _e1021310257_))
                                                (_hd1021410260_
                                                 (##car _e1021310257_)))
                                            (if (gx#stx-pair? _hd1021410260_)
                                                (let ((_e1021610265_
                                                       (gx#stx-e
                                                        _hd1021410260_)))
                                                  (let ((_tl1021810270_
                                                         (##cdr _e1021610265_))
                                                        (_hd1021710268_
                                                         (##car _e1021610265_)))
                                                    (if (gx#identifier?
                                                         _hd1021710268_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1021710268_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1021810270_)
                        (let ((_e1021910273_ (gx#stx-e _tl1021810270_)))
                          (let ((_tl1022110278_ (##cdr _e1021910273_))
                                (_hd1022010276_ (##car _e1021910273_)))
                            (if (gx#stx-pair? _hd1022010276_)
                                (let ((_e1022210281_
                                       (gx#stx-e _hd1022010276_)))
                                  (let ((_tl1022410286_ (##cdr _e1022210281_))
                                        (_hd1022310284_ (##car _e1022210281_)))
                                    (if (gx#identifier? _hd1022310284_)
                                        (if (gx#stx-eq? '%#ref _hd1022310284_)
                                            (if (gx#stx-pair? _tl1022410286_)
                                                (let ((_e1022510289_
                                                       (gx#stx-e
                                                        _tl1022410286_)))
                                                  (let ((_tl1022710294_
                                                         (##cdr _e1022510289_))
                                                        (_hd1022610292_
                                                         (##car _e1022510289_)))
                                                    (if (gx#stx-null?
                                                         _tl1022710294_)
                                                        (if (gx#stx-pair?
                                                             _tl1022110278_)
                                                            (let ((_e1022810297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1022110278_)))
                      (let ((_tl1023010302_ (##cdr _e1022810297_))
                            (_hd1022910300_ (##car _e1022810297_)))
                        (if (gx#stx-pair? _hd1022910300_)
                            (let ((_e1023110305_ (gx#stx-e _hd1022910300_)))
                              (let ((_tl1023310310_ (##cdr _e1023110305_))
                                    (_hd1023210308_ (##car _e1023110305_)))
                                (if (gx#identifier? _hd1023210308_)
                                    (if (gx#stx-eq? '%#ref _hd1023210308_)
                                        (if (gx#stx-pair? _tl1023310310_)
                                            (let ((_e1023410313_
                                                   (gx#stx-e _tl1023310310_)))
                                              (let ((_tl1023610318_
                                                     (##cdr _e1023410313_))
                                                    (_hd1023510316_
                                                     (##car _e1023410313_)))
                                                (if (gx#stx-null?
                                                     _tl1023610318_)
                                                    (if (gx#stx-pair?
                                                         _tl1023010302_)
                                                        (let ((_e1023710321_
                                                               (gx#stx-e
                                                                _tl1023010302_)))
                                                          (let ((_tl1023910326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1023710321_))
                        (_hd1023810324_ (##car _e1023710321_)))
                    (if (gx#stx-null? _tl1023910326_)
                        (if (gx#stx-null? _tl1021510262_)
                            (___kont1372513726_
                             _hd1023510316_
                             _hd1022610292_
                             _hd1012610506_)
                            (_g1012010244_))
                        (_g1012010244_))))
                (_g1012010244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1012010244_))))
                                            (_g1012010244_))
                                        (_g1012010244_))
                                    (_g1012010244_))))
                            (_g1012010244_))))
                    (_g1012010244_))
                (_g1012010244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1012010244_))
                                            (_g1012010244_))
                                        (_g1012010244_))))
                                (_g1012010244_))))
                        (_g1012010244_))
                    (_g1012010244_))
                (_g1012010244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1012010244_))))
                                        (_g1012010244_)))))
                            (_g1012010244_)))))))
               (_generate19966_
                (lambda (_args10101_ _arglen10102_ _hd10103_ _body10104_)
                  (let* ((_len10106_ (gx#stx-length _hd10103_))
                         (_condition10108_
                          (if (gx#stx-list? _hd10103_)
                              (cons '##fx=
                                    (cons _arglen10102_ (cons _len10106_ '())))
                              (if (> _len10106_ '0)
                                  (cons '##fx>=
                                        (cons _arglen10102_
                                              (cons _len10106_ '())))
                                  '#t)))
                         (_dispatch10110_
                          (if (_dispatch-case?9964_ _hd10103_ _body10104_)
                              (_dispatch-case-e9965_ _hd10103_ _body10104_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd10103_)
                                          (cons (gxc#compile-e _body10104_)
                                                '()))))))
                    (cons _condition10108_
                          (cons (cons 'apply
                                      (cons _dispatch10110_
                                            (cons _args10101_ '())))
                                '()))))))
        (let* ((_g99689996_
                (lambda (_g99699993_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g99699993_)))
               (_g996710098_
                (lambda (_g99699999_)
                  (if (gx#stx-pair? _g99699999_)
                      (let ((_e997210001_ (gx#stx-e _g99699999_)))
                        (let ((_hd997310004_ (##car _e997210001_))
                              (_tl997410006_ (##cdr _e997210001_)))
                          (if (gx#stx-pair/null? _tl997410006_)
                              (let ((_g14641_
                                     (gx#syntax-split-splice
                                      _tl997410006_
                                      '0)))
                                (begin
                                  (let ((_g14642_
                                         (if (##values? _g14641_)
                                             (##vector-length _g14641_)
                                             1)))
                                    (if (not (##fx= _g14642_ 2))
                                        (error "Context expects 2 values"
                                               _g14642_)))
                                  (let ((_target997510009_
                                         (##vector-ref _g14641_ 0))
                                        (_tl997710011_
                                         (##vector-ref _g14641_ 1)))
                                    (if (gx#stx-null? _tl997710011_)
                                        (letrec ((_loop997810014_
                                                  (lambda (_hd997610017_
                                                           _body998210019_
                                                           _hd998310021_)
                                                    (if (gx#stx-pair?
                                                         _hd997610017_)
                                                        (let ((_e997910024_
                                                               (gx#stx-e
                                                                _hd997610017_)))
                                                          (let ((_lp-hd998010027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e997910024_))
                        (_lp-tl998110029_ (##cdr _e997910024_)))
                    (if (gx#stx-pair? _lp-hd998010027_)
                        (let ((_e998610032_ (gx#stx-e _lp-hd998010027_)))
                          (let ((_hd998710035_ (##car _e998610032_))
                                (_tl998810037_ (##cdr _e998610032_)))
                            (if (gx#stx-pair? _tl998810037_)
                                (let ((_e998910040_ (gx#stx-e _tl998810037_)))
                                  (let ((_hd999010043_ (##car _e998910040_))
                                        (_tl999110045_ (##cdr _e998910040_)))
                                    (if (gx#stx-null? _tl999110045_)
                                        (_loop997810014_
                                         _lp-tl998110029_
                                         (cons _hd999010043_ _body998210019_)
                                         (cons _hd998710035_ _hd998310021_))
                                        (_g99689996_ _g99699999_))))
                                (_g99689996_ _g99699999_))))
                        (_g99689996_ _g99699999_))))
                (let ((_body998410048_ (reverse _body998210019_))
                      (_hd998510050_ (reverse _hd998310021_)))
                  ((lambda (_L10053_ _L10054_)
                     (let ((_args10073_ (gxc#generate-runtime-temporary__0))
                           (_arglen10074_ (gxc#generate-runtime-temporary__0))
                           (_name10075_
                            (let ((_$e10070_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx9962_
                                    '#f)))
                              (if _$e10070_
                                  _$e10070_
                                  ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args10073_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen10074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args10073_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name10075_
                                                               (cons _args10073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g1007610079_ _g1007710081_)
                                        (_generate19966_
                                         _args10073_
                                         _arglen10074_
                                         _g1007610079_
                                         _g1007710081_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1008310086_
                                                         _g1008410088_)
                                                  (cons _g1008310086_
                                                        _g1008410088_))
                                                '()
                                                _L10054_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1009010093_
                                                         _g1009110095_)
                                                  (cons _g1009010093_
                                                        _g1009110095_))
                                                '()
                                                _L10053_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body998410048_
                   _hd998510050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop997810014_
                                           _target997510009_
                                           '()
                                           '()))
                                        (_g99689996_ _g99699999_)))))
                              (_g99689996_ _g99699999_))))
                      (_g99689996_ _g99699999_)))))
          (_g996710098_ _stx9962_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx9027_ _compiled-body?9028_)
        (letrec ((_generate-simple9030_
                  (lambda (_hd9949_ _body9950_)
                    (_coalesce-let*9031_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9949_
                      _body9950_
                      _compiled-body?9028_))))
                 (_coalesce-let*9031_
                  (lambda (_code9333_)
                    (let* ((___stx1383513836_ _code9333_)
                           (_g93389473_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1383513836_))))
                      (let ((___kont1383713838_
                             (lambda (_L9908_ _L9909_ _L9910_)
                               (cons 'let
                                     (cons (cons (cons _L9910_
                                                       (cons _L9909_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g99389941_
                                                              _g99399943_)
                                                       (cons _g99389941_
                                                             _g99399943_))
                                                     '()
                                                     _L9908_))))))
                            (___kont1384113842_
                             (lambda (_L9767_ _L9768_ _L9769_ _L9770_ _L9771_)
                               (cons 'let*
                                     (cons (cons (cons _L9771_
                                                       (cons _L9770_ '()))
                                                 (cons (cons _L9769_
                                                             (cons _L9768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g98079810_
                                                              _g98089812_)
                                                       (cons _g98079810_
                                                             _g98089812_))
                                                     '()
                                                     _L9767_))))))
                            (___kont1384513846_
                             (lambda (_L9597_ _L9598_ _L9599_ _L9600_)
                               (cons 'let*
                                     (cons (cons (cons _L9600_
                                                       (cons _L9599_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g96359638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g96369640_)
                     (cons _g96359638_ _g96369640_))
                   '()
                   _L9598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g96429645_
                                                              _g96439647_)
                                                       (cons _g96429645_
                                                             _g96439647_))
                                                     '()
                                                     _L9597_))))))
                            (___kont1385113852_ (lambda () _code9333_)))
                        (let* ((___match1408014081_
                                (lambda (_e94279485_
                                         _hd94289488_
                                         _tl94299490_
                                         _e94309493_
                                         _hd94319496_
                                         _tl94329498_
                                         _e94339501_
                                         _hd94349504_
                                         _tl94359506_
                                         _e94369509_
                                         _hd94379512_
                                         _tl94389514_
                                         _e94399517_
                                         _hd94409520_
                                         _tl94419522_
                                         _e94429525_
                                         _hd94439528_
                                         _tl94449530_
                                         _e94459533_
                                         _hd94469536_
                                         _tl94479538_
                                         _e94489541_
                                         _hd94499544_
                                         _tl94509546_
                                         ___splice1384713848_
                                         _target94519549_
                                         _tl94539551_)
                                  (letrec ((_loop94549554_
                                            (lambda (_hd94529557_
                                                     _bind94589559_)
                                              (if (gx#stx-pair? _hd94529557_)
                                                  (let ((_e94559562_
                                                         (gx#stx-e
                                                          _hd94529557_)))
                                                    (let ((_lp-tl94579567_
                                                           (##cdr _e94559562_))
                                                          (_lp-hd94569565_
                                                           (##car _e94559562_)))
                                                      (_loop94549554_
                                                       _lp-tl94579567_
                                                       (cons _lp-hd94569565_
                                                             _bind94589559_))))
                                                  (let ((_bind94599570_
                                                         (reverse _bind94589559_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl94509546_)
                                                        (let ((___splice1384913850_
                                                               (gx#syntax-split-splice
                                                                _tl94509546_
                                                                '0)))
                                                          (let ((_tl94629575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1384913850_ '1))
                        (_target94609573_
                         (##vector-ref ___splice1384913850_ '0)))
                    (if (gx#stx-null? _tl94629575_)
                        (letrec ((_loop94639578_
                                  (lambda (_hd94619581_ _body94679583_)
                                    (if (gx#stx-pair? _hd94619581_)
                                        (let ((_e94649586_
                                               (gx#stx-e _hd94619581_)))
                                          (let ((_lp-tl94669591_
                                                 (##cdr _e94649586_))
                                                (_lp-hd94659589_
                                                 (##car _e94649586_)))
                                            (_loop94639578_
                                             _lp-tl94669591_
                                             (cons _lp-hd94659589_
                                                   _body94679583_))))
                                        (let ((_body94689594_
                                               (reverse _body94679583_)))
                                          (if (gx#stx-null? _tl94449530_)
                                              (___kont1384513846_
                                               _body94689594_
                                               _bind94599570_
                                               _hd94409520_
                                               _hd94379512_)
                                              (___kont1385113852_)))))))
                          (_loop94639578_ _target94609573_ '()))
                        (___kont1385113852_))))
                (___kont1385113852_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop94549554_ _target94519549_ '()))))
                               (___match1401214013_
                                (lambda (_e93819655_
                                         _hd93829658_
                                         _tl93839660_
                                         _e93849663_
                                         _hd93859666_
                                         _tl93869668_
                                         _e93879671_
                                         _hd93889674_
                                         _tl93899676_
                                         _e93909679_
                                         _hd93919682_
                                         _tl93929684_
                                         _e93939687_
                                         _hd93949690_
                                         _tl93959692_
                                         _e93969695_
                                         _hd93979698_
                                         _tl93989700_
                                         _e93999703_
                                         _hd94009706_
                                         _tl94019708_
                                         _e94029711_
                                         _hd94039714_
                                         _tl94049716_
                                         _e94059719_
                                         _hd94069722_
                                         _tl94079724_
                                         _e94089727_
                                         _hd94099730_
                                         _tl94109732_
                                         _e94119735_
                                         _hd94129738_
                                         _tl94139740_
                                         ___splice1384313844_
                                         _target94149743_
                                         _tl94169745_)
                                  (letrec ((_loop94179748_
                                            (lambda (_hd94159751_
                                                     _body94219753_)
                                              (if (gx#stx-pair? _hd94159751_)
                                                  (let ((_e94189756_
                                                         (gx#stx-e
                                                          _hd94159751_)))
                                                    (let ((_lp-tl94209761_
                                                           (##cdr _e94189756_))
                                                          (_lp-hd94199759_
                                                           (##car _e94189756_)))
                                                      (_loop94179748_
                                                       _lp-tl94209761_
                                                       (cons _lp-hd94199759_
                                                             _body94219753_))))
                                                  (let ((_body94229764_
                                                         (reverse _body94219753_)))
                                                    (if (gx#stx-null?
                                                         _tl93989700_)
                                                        (___kont1384113842_
                                                         _body94229764_
                                                         _hd94129738_
                                                         _hd94099730_
                                                         _hd93949690_
                                                         _hd93919682_)
                                                        (___kont1385113852_)))))))
                                    (_loop94179748_ _target94149743_ '()))))
                               (___match1392213923_
                                (lambda (_e93439820_
                                         _hd93449823_
                                         _tl93459825_
                                         _e93469828_
                                         _hd93479831_
                                         _tl93489833_
                                         _e93499836_
                                         _hd93509839_
                                         _tl93519841_
                                         _e93529844_
                                         _hd93539847_
                                         _tl93549849_
                                         _e93559852_
                                         _hd93569855_
                                         _tl93579857_
                                         _e93589860_
                                         _hd93599863_
                                         _tl93609865_
                                         _e93619868_
                                         _hd93629871_
                                         _tl93639873_
                                         _e93649876_
                                         _hd93659879_
                                         _tl93669881_
                                         ___splice1383913840_
                                         _target93679884_
                                         _tl93699886_)
                                  (letrec ((_loop93709889_
                                            (lambda (_hd93689892_
                                                     _body93749894_)
                                              (if (gx#stx-pair? _hd93689892_)
                                                  (let ((_e93719897_
                                                         (gx#stx-e
                                                          _hd93689892_)))
                                                    (let ((_lp-tl93739902_
                                                           (##cdr _e93719897_))
                                                          (_lp-hd93729900_
                                                           (##car _e93719897_)))
                                                      (_loop93709889_
                                                       _lp-tl93739902_
                                                       (cons _lp-hd93729900_
                                                             _body93749894_))))
                                                  (let ((_body93759905_
                                                         (reverse _body93749894_)))
                                                    (if (gx#stx-null?
                                                         _tl93609865_)
                                                        (___kont1383713838_
                                                         _body93759905_
                                                         _hd93569855_
                                                         _hd93539847_)
                                                        (___kont1385113852_)))))))
                                    (_loop93709889_ _target93679884_ '())))))
                          (if (gx#stx-pair? ___stx1383513836_)
                              (let ((_e93439820_ (gx#stx-e ___stx1383513836_)))
                                (let ((_tl93459825_ (##cdr _e93439820_))
                                      (_hd93449823_ (##car _e93439820_)))
                                  (if (gx#identifier? _hd93449823_)
                                      (if (gx#stx-eq? 'let _hd93449823_)
                                          (if (gx#stx-pair? _tl93459825_)
                                              (let ((_e93469828_
                                                     (gx#stx-e _tl93459825_)))
                                                (let ((_tl93489833_
                                                       (##cdr _e93469828_))
                                                      (_hd93479831_
                                                       (##car _e93469828_)))
                                                  (if (gx#stx-pair?
                                                       _hd93479831_)
                                                      (let ((_e93499836_
                                                             (gx#stx-e
                                                              _hd93479831_)))
                                                        (let ((_tl93519841_
                                                               (##cdr _e93499836_))
                                                              (_hd93509839_
                                                               (##car _e93499836_)))
                                                          (if (gx#stx-pair?
                                                               _hd93509839_)
                                                              (let ((_e93529844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd93509839_)))
                        (let ((_tl93549849_ (##cdr _e93529844_))
                              (_hd93539847_ (##car _e93529844_)))
                          (if (gx#stx-pair? _tl93549849_)
                              (let ((_e93559852_ (gx#stx-e _tl93549849_)))
                                (let ((_tl93579857_ (##cdr _e93559852_))
                                      (_hd93569855_ (##car _e93559852_)))
                                  (if (gx#stx-null? _tl93579857_)
                                      (if (gx#stx-null? _tl93519841_)
                                          (if (gx#stx-pair? _tl93489833_)
                                              (let ((_e93589860_
                                                     (gx#stx-e _tl93489833_)))
                                                (let ((_tl93609865_
                                                       (##cdr _e93589860_))
                                                      (_hd93599863_
                                                       (##car _e93589860_)))
                                                  (if (gx#stx-pair?
                                                       _hd93599863_)
                                                      (let ((_e93619868_
                                                             (gx#stx-e
                                                              _hd93599863_)))
                                                        (let ((_tl93639873_
                                                               (##cdr _e93619868_))
                                                              (_hd93629871_
                                                               (##car _e93619868_)))
                                                          (if (gx#identifier?
                                                               _hd93629871_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd93629871_)
                          (if (gx#stx-pair? _tl93639873_)
                              (let ((_e93649876_ (gx#stx-e _tl93639873_)))
                                (let ((_tl93669881_ (##cdr _e93649876_))
                                      (_hd93659879_ (##car _e93649876_)))
                                  (if (gx#stx-null? _hd93659879_)
                                      (if (gx#stx-pair/null? _tl93669881_)
                                          (let ((___splice1383913840_
                                                 (gx#syntax-split-splice
                                                  _tl93669881_
                                                  '0)))
                                            (let ((_tl93699886_
                                                   (##vector-ref
                                                    ___splice1383913840_
                                                    '1))
                                                  (_target93679884_
                                                   (##vector-ref
                                                    ___splice1383913840_
                                                    '0)))
                                              (if (gx#stx-null? _tl93699886_)
                                                  (___match1392213923_
                                                   _e93439820_
                                                   _hd93449823_
                                                   _tl93459825_
                                                   _e93469828_
                                                   _hd93479831_
                                                   _tl93489833_
                                                   _e93499836_
                                                   _hd93509839_
                                                   _tl93519841_
                                                   _e93529844_
                                                   _hd93539847_
                                                   _tl93549849_
                                                   _e93559852_
                                                   _hd93569855_
                                                   _tl93579857_
                                                   _e93589860_
                                                   _hd93599863_
                                                   _tl93609865_
                                                   _e93619868_
                                                   _hd93629871_
                                                   _tl93639873_
                                                   _e93649876_
                                                   _hd93659879_
                                                   _tl93669881_
                                                   ___splice1383913840_
                                                   _target93679884_
                                                   _tl93699886_)
                                                  (___kont1385113852_))))
                                          (___kont1385113852_))
                                      (if (gx#stx-pair? _hd93659879_)
                                          (let ((_e94059719_
                                                 (gx#stx-e _hd93659879_)))
                                            (let ((_tl94079724_
                                                   (##cdr _e94059719_))
                                                  (_hd94069722_
                                                   (##car _e94059719_)))
                                              (if (gx#stx-pair? _hd94069722_)
                                                  (let ((_e94089727_
                                                         (gx#stx-e
                                                          _hd94069722_)))
                                                    (let ((_tl94109732_
                                                           (##cdr _e94089727_))
                                                          (_hd94099730_
                                                           (##car _e94089727_)))
                                                      (if (gx#stx-pair?
                                                           _tl94109732_)
                                                          (let ((_e94119735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl94109732_)))
                    (let ((_tl94139740_ (##cdr _e94119735_))
                          (_hd94129738_ (##car _e94119735_)))
                      (if (gx#stx-null? _tl94139740_)
                          (if (gx#stx-null? _tl94079724_)
                              (if (gx#stx-pair/null? _tl93669881_)
                                  (let ((___splice1384313844_
                                         (gx#syntax-split-splice
                                          _tl93669881_
                                          '0)))
                                    (let ((_tl94169745_
                                           (##vector-ref
                                            ___splice1384313844_
                                            '1))
                                          (_target94149743_
                                           (##vector-ref
                                            ___splice1384313844_
                                            '0)))
                                      (if (gx#stx-null? _tl94169745_)
                                          (___match1401214013_
                                           _e93439820_
                                           _hd93449823_
                                           _tl93459825_
                                           _e93469828_
                                           _hd93479831_
                                           _tl93489833_
                                           _e93499836_
                                           _hd93509839_
                                           _tl93519841_
                                           _e93529844_
                                           _hd93539847_
                                           _tl93549849_
                                           _e93559852_
                                           _hd93569855_
                                           _tl93579857_
                                           _e93589860_
                                           _hd93599863_
                                           _tl93609865_
                                           _e93619868_
                                           _hd93629871_
                                           _tl93639873_
                                           _e93649876_
                                           _hd93659879_
                                           _tl93669881_
                                           _e94059719_
                                           _hd94069722_
                                           _tl94079724_
                                           _e94089727_
                                           _hd94099730_
                                           _tl94109732_
                                           _e94119735_
                                           _hd94129738_
                                           _tl94139740_
                                           ___splice1384313844_
                                           _target94149743_
                                           _tl94169745_)
                                          (___kont1385113852_))))
                                  (___kont1385113852_))
                              (___kont1385113852_))
                          (___kont1385113852_))))
                  (___kont1385113852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1385113852_))))
                                          (___kont1385113852_)))))
                              (___kont1385113852_))
                          (if (gx#stx-eq? 'let* _hd93629871_)
                              (if (gx#stx-pair? _tl93639873_)
                                  (let ((_e94489541_ (gx#stx-e _tl93639873_)))
                                    (let ((_tl94509546_ (##cdr _e94489541_))
                                          (_hd94499544_ (##car _e94489541_)))
                                      (if (gx#stx-pair/null? _hd94499544_)
                                          (let ((___splice1384713848_
                                                 (gx#syntax-split-splice
                                                  _hd94499544_
                                                  '0)))
                                            (let ((_tl94539551_
                                                   (##vector-ref
                                                    ___splice1384713848_
                                                    '1))
                                                  (_target94519549_
                                                   (##vector-ref
                                                    ___splice1384713848_
                                                    '0)))
                                              (if (gx#stx-null? _tl94539551_)
                                                  (___match1408014081_
                                                   _e93439820_
                                                   _hd93449823_
                                                   _tl93459825_
                                                   _e93469828_
                                                   _hd93479831_
                                                   _tl93489833_
                                                   _e93499836_
                                                   _hd93509839_
                                                   _tl93519841_
                                                   _e93529844_
                                                   _hd93539847_
                                                   _tl93549849_
                                                   _e93559852_
                                                   _hd93569855_
                                                   _tl93579857_
                                                   _e93589860_
                                                   _hd93599863_
                                                   _tl93609865_
                                                   _e93619868_
                                                   _hd93629871_
                                                   _tl93639873_
                                                   _e94489541_
                                                   _hd94499544_
                                                   _tl94509546_
                                                   ___splice1384713848_
                                                   _target94519549_
                                                   _tl94539551_)
                                                  (___kont1385113852_))))
                                          (___kont1385113852_))))
                                  (___kont1385113852_))
                              (___kont1385113852_)))
                      (___kont1385113852_))))
              (___kont1385113852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1385113852_))
                                          (___kont1385113852_))
                                      (___kont1385113852_))))
                              (___kont1385113852_))))
                      (___kont1385113852_))))
              (___kont1385113852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1385113852_))
                                          (___kont1385113852_))
                                      (___kont1385113852_))))
                              (___kont1385113852_)))))))
                 (_generate-values9032_
                  (lambda (_hd9146_ _body9147_)
                    (let _lp9149_ ((_rest9151_ _hd9146_)
                                   (_bind9152_ '())
                                   (_check9153_ '())
                                   (_post9154_ '()))
                      (let* ((___stx1412714128_ _rest9151_)
                             (_g91579168_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1412714128_))))
                        (let ((___kont1412914130_
                               (lambda (_L9195_ _L9196_)
                                 (let* ((___stx1408314084_ _L9196_)
                                        (_g92119236_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1408314084_))))
                                   (let ((___kont1408514086_
                                          (lambda (_L9309_ _L9310_)
                                            (let ((_eid9324_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9310_))
                                                  (_expr9325_
                                                   (gxc#compile-e _L9309_)))
                                              (_lp9149_
                                               _L9195_
                                               (cons (cons _eid9324_
                                                           (cons _expr9325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind9152_)
                                               _check9153_
                                               _post9154_))))
                                         (___kont1408714088_
                                          (lambda (_L9257_ _L9258_)
                                            (let* ((_vals9271_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values9273_
                                                    (gxc#generate-runtime-check-values
                                                     _vals9271_
                                                     _L9258_
                                                     _L9257_))
                                                   (_refs9275_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals9271_
                                                     _L9258_))
                                                   (_expr9277_
                                                    (gxc#compile-e _L9257_)))
                                              (_lp9149_
                                               _L9195_
                                               (cons (cons _vals9271_
                                                           (cons _expr9277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind9152_)
                                               (cons _check-values9273_
                                                     _check9153_)
                                               (cons _refs9275_
                                                     _post9154_))))))
                                     (if (gx#stx-pair? ___stx1408314084_)
                                         (let ((_e92159285_
                                                (gx#stx-e ___stx1408314084_)))
                                           (let ((_tl92179290_
                                                  (##cdr _e92159285_))
                                                 (_hd92169288_
                                                  (##car _e92159285_)))
                                             (if (gx#stx-pair? _hd92169288_)
                                                 (let ((_e92189293_
                                                        (gx#stx-e
                                                         _hd92169288_)))
                                                   (let ((_tl92209298_
                                                          (##cdr _e92189293_))
                                                         (_hd92199296_
                                                          (##car _e92189293_)))
                                                     (if (gx#stx-null?
                                                          _tl92209298_)
                                                         (if (gx#stx-pair?
                                                              _tl92179290_)
                                                             (let ((_e92219301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl92179290_)))
                       (let ((_tl92239306_ (##cdr _e92219301_))
                             (_hd92229304_ (##car _e92219301_)))
                         (if (gx#stx-null? _tl92239306_)
                             (___kont1408514086_ _hd92229304_ _hd92199296_)
                             (_g92119236_))))
                     (_g92119236_))
                 (if (gx#stx-pair? _tl92179290_)
                     (let ((_e92299249_ (gx#stx-e _tl92179290_)))
                       (let ((_tl92319254_ (##cdr _e92299249_))
                             (_hd92309252_ (##car _e92299249_)))
                         (if (gx#stx-null? _tl92319254_)
                             (___kont1408714088_ _hd92309252_ _hd92169288_)
                             (_g92119236_))))
                     (_g92119236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl92179290_)
                                                     (let ((_e92299249_
                                                            (gx#stx-e
                                                             _tl92179290_)))
                                                       (let ((_tl92319254_
                                                              (##cdr _e92299249_))
                                                             (_hd92309252_
                                                              (##car _e92299249_)))
                                                         (if (gx#stx-null?
                                                              _tl92319254_)
                                                             (___kont1408714088_
                                                              _hd92309252_
                                                              _hd92169288_)
                                                             (_g92119236_))))
                                                     (_g92119236_)))))
                                         (_g92119236_))))))
                              (___kont1413114132_
                               (lambda ()
                                 (let* ((_body9175_
                                         (if _compiled-body?9028_
                                             _body9147_
                                             (gxc#compile-e _body9147_)))
                                        (_body9177_
                                         (_generate-values-post9033_
                                          _post9154_
                                          _body9175_))
                                        (_body9179_
                                         (_generate-values-check9034_
                                          _check9153_
                                          _body9177_)))
                                   (cons 'let
                                         (cons (reverse _bind9152_)
                                               (cons _body9179_ '())))))))
                          (if (gx#stx-pair? ___stx1412714128_)
                              (let ((_e91619187_ (gx#stx-e ___stx1412714128_)))
                                (let ((_tl91639192_ (##cdr _e91619187_))
                                      (_hd91629190_ (##car _e91619187_)))
                                  (___kont1412914130_
                                   _tl91639192_
                                   _hd91629190_)))
                              (___kont1413114132_)))))))
                 (_generate-values-post9033_
                  (lambda (_post9105_ _body9106_)
                    (let _lp9108_ ((_rest9110_ _post9105_)
                                   (_body9111_ _body9106_))
                      (let* ((_rest91129120_ _rest9110_)
                             (_else91149128_ (lambda () _body9111_))
                             (_K91169134_
                              (lambda (_rest9131_ _bind9132_)
                                (_lp9108_
                                 _rest9131_
                                 (cons 'let
                                       (cons _bind9132_
                                             (cons _body9111_ '())))))))
                        (if (##pair? _rest91129120_)
                            (let ((_hd91179137_ (##car _rest91129120_))
                                  (_tl91189139_ (##cdr _rest91129120_)))
                              (let* ((_bind9142_ _hd91179137_)
                                     (_rest9144_ _tl91189139_))
                                (_K91169134_ _rest9144_ _bind9142_)))
                            (_else91149128_))))))
                 (_generate-values-check9034_
                  (lambda (_check9102_ _body9103_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9103_ '())
                                  (reverse _check9102_))))))
          (let* ((_g90369053_
                  (lambda (_g90379050_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g90379050_)))
                 (_g90359099_
                  (lambda (_g90379056_)
                    (if (gx#stx-pair? _g90379056_)
                        (let ((_e90409058_ (gx#stx-e _g90379056_)))
                          (let ((_hd90419061_ (##car _e90409058_))
                                (_tl90429063_ (##cdr _e90409058_)))
                            (if (gx#stx-pair? _tl90429063_)
                                (let ((_e90439066_ (gx#stx-e _tl90429063_)))
                                  (let ((_hd90449069_ (##car _e90439066_))
                                        (_tl90459071_ (##cdr _e90439066_)))
                                    (if (gx#stx-pair? _tl90459071_)
                                        (let ((_e90469074_
                                               (gx#stx-e _tl90459071_)))
                                          (let ((_hd90479077_
                                                 (##car _e90469074_))
                                                (_tl90489079_
                                                 (##cdr _e90469074_)))
                                            (if (gx#stx-null? _tl90489079_)
                                                ((lambda (_L9082_ _L9083_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L9083_)
                                                       (_generate-simple9030_
                                                        _L9083_
                                                        _L9082_)
                                                       (_generate-values9032_
                                                        _L9083_
                                                        _L9082_)))
                                                 _hd90479077_
                                                 _hd90449069_)
                                                (_g90369053_ _g90379056_))))
                                        (_g90369053_ _g90379056_))))
                                (_g90369053_ _g90379056_))))
                        (_g90369053_ _g90379056_)))))
            (_g90359099_ _stx9027_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9955_)
          (let ((_compiled-body?9957_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9955_
             _compiled-body?9957_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g14644_
          (let ((_g14643_ (length _g14644_)))
            (cond ((##fx= _g14643_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g14644_))
                  ((##fx= _g14643_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g14644_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g14644_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8921_ _hd8922_)
      (let _lp8924_ ((_rest8926_ _hd8922_) (_k8927_ '0) (_r8928_ '()))
        (let* ((___stx1414114142_ _rest8926_)
               (_g89338950_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1414114142_))))
          (let ((___kont1414314144_
                 (lambda (_L9013_)
                   (_lp8924_ _L9013_ (fx+ _k8927_ '1) _r8928_)))
                (___kont1414514146_
                 (lambda (_L8986_ _L8987_)
                   (_lp8924_
                    _L8986_
                    (fx+ _k8927_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L8987_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals8921_
                                       _k8927_
                                       _L8986_)
                                      '()))
                          _r8928_))))
                (___kont1414714148_
                 (lambda (_L8962_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L8962_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals8921_
                                              _k8927_)
                                             '()))
                                 '())
                           _r8928_)))
                (___kont1414914150_ (lambda () (reverse _r8928_))))
            (let ((_g89318973_
                   (lambda ()
                     (let ((_L8962_ ___stx1414114142_))
                       (if (gx#identifier? _L8962_)
                           (___kont1414714148_ _L8962_)
                           (___kont1414914150_))))))
              (if (gx#stx-pair? ___stx1414114142_)
                  (let ((_e89369002_ (gx#stx-e ___stx1414114142_)))
                    (let ((_tl89389007_ (##cdr _e89369002_))
                          (_hd89379005_ (##car _e89369002_)))
                      (if (gx#stx-datum? _hd89379005_)
                          (let ((_e89399010_ (gx#stx-e _hd89379005_)))
                            (if (equal? _e89399010_ '#f)
                                (___kont1414314144_ _tl89389007_)
                                (___kont1414514146_
                                 _tl89389007_
                                 _hd89379005_)))
                          (___kont1414514146_ _tl89389007_ _hd89379005_))))
                  (_g89318973_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8603_ _compiled-body?8604_)
        (letrec ((_generate-simple8606_
                  (lambda (_hd8908_ _body8909_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8908_
                     _body8909_
                     _compiled-body?8604_)))
                 (_generate-values8607_
                  (lambda (_hd8687_ _body8688_)
                    (let _lp8690_ ((_rest8692_ _hd8687_)
                                   (_bind8693_ '())
                                   (_check8694_ '())
                                   (_post8695_ '()))
                      (let* ((___stx1421514216_ _rest8692_)
                             (_g86988709_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1421514216_))))
                        (let ((___kont1421714218_
                               (lambda (_L8736_ _L8737_)
                                 (let* ((___stx1417114172_ _L8737_)
                                        (_g87528777_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1417114172_))))
                                   (let ((___kont1417314174_
                                          (lambda (_L8884_ _L8885_)
                                            (let ((_eid8899_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L8885_))
                                                  (_expr8900_
                                                   (gxc#compile-e _L8884_)))
                                              (_lp8690_
                                               _L8736_
                                               (cons (cons _eid8899_
                                                           (cons _expr8900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8693_)
                                               _check8694_
                                               _post8695_))))
                                         (___kont1417514176_
                                          (lambda (_L8798_ _L8799_)
                                            (let* ((_vals8812_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values8814_
                                                    (gxc#generate-runtime-check-values
                                                     _vals8812_
                                                     _L8799_
                                                     _L8798_))
                                                   (_refs8816_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals8812_
                                                     _L8799_))
                                                   (_expr8818_
                                                    (gxc#compile-e _L8798_)))
                                              (_lp8690_
                                               _L8736_
                                               (foldl1 cons
                                                       (cons (cons _vals8812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr8818_ '()))
                     _bind8693_)
               (map (lambda (_e88208822_)
                      (let* ((_g88248833_ _e88208822_)
                             (_E88268837_
                              (lambda ()
                                (error '"No clause matching" _g88248833_)))
                             (_K88278842_
                              (lambda (_eid8840_)
                                (cons _eid8840_ (cons '#!void '())))))
                        (if (##pair? _g88248833_)
                            (let ((_hd88288845_ (##car _g88248833_))
                                  (_tl88298847_ (##cdr _g88248833_)))
                              (let ((_eid8850_ _hd88288845_))
                                (if (##pair? _tl88298847_)
                                    (let ((_tl88318852_ (##cdr _tl88298847_)))
                                      (if (##null? _tl88318852_)
                                          (_K88278842_ _eid8850_)
                                          (_E88268837_)))
                                    (_E88268837_))))
                            (_E88268837_))))
                    _refs8816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values8814_
                                                     _check8694_)
                                               (foldl1 cons
                                                       _refs8816_
                                                       _post8695_))))))
                                     (if (gx#stx-pair? ___stx1417114172_)
                                         (let ((_e87568860_
                                                (gx#stx-e ___stx1417114172_)))
                                           (let ((_tl87588865_
                                                  (##cdr _e87568860_))
                                                 (_hd87578863_
                                                  (##car _e87568860_)))
                                             (if (gx#stx-pair? _hd87578863_)
                                                 (let ((_e87598868_
                                                        (gx#stx-e
                                                         _hd87578863_)))
                                                   (let ((_tl87618873_
                                                          (##cdr _e87598868_))
                                                         (_hd87608871_
                                                          (##car _e87598868_)))
                                                     (if (gx#stx-null?
                                                          _tl87618873_)
                                                         (if (gx#stx-pair?
                                                              _tl87588865_)
                                                             (let ((_e87628876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl87588865_)))
                       (let ((_tl87648881_ (##cdr _e87628876_))
                             (_hd87638879_ (##car _e87628876_)))
                         (if (gx#stx-null? _tl87648881_)
                             (___kont1417314174_ _hd87638879_ _hd87608871_)
                             (_g87528777_))))
                     (_g87528777_))
                 (if (gx#stx-pair? _tl87588865_)
                     (let ((_e87708790_ (gx#stx-e _tl87588865_)))
                       (let ((_tl87728795_ (##cdr _e87708790_))
                             (_hd87718793_ (##car _e87708790_)))
                         (if (gx#stx-null? _tl87728795_)
                             (___kont1417514176_ _hd87718793_ _hd87578863_)
                             (_g87528777_))))
                     (_g87528777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl87588865_)
                                                     (let ((_e87708790_
                                                            (gx#stx-e
                                                             _tl87588865_)))
                                                       (let ((_tl87728795_
                                                              (##cdr _e87708790_))
                                                             (_hd87718793_
                                                              (##car _e87708790_)))
                                                         (if (gx#stx-null?
                                                              _tl87728795_)
                                                             (___kont1417514176_
                                                              _hd87718793_
                                                              _hd87578863_)
                                                             (_g87528777_))))
                                                     (_g87528777_)))))
                                         (_g87528777_))))))
                              (___kont1421914220_
                               (lambda ()
                                 (let* ((_body8716_
                                         (if _compiled-body?8604_
                                             _body8688_
                                             (gxc#compile-e _body8688_)))
                                        (_body8718_
                                         (_generate-values-post8609_
                                          _post8695_
                                          _body8716_))
                                        (_body8720_
                                         (_generate-values-check8608_
                                          _check8694_
                                          _body8718_)))
                                   (cons 'letrec
                                         (cons (reverse _bind8693_)
                                               (cons _body8720_ '())))))))
                          (if (gx#stx-pair? ___stx1421514216_)
                              (let ((_e87028728_ (gx#stx-e ___stx1421514216_)))
                                (let ((_tl87048733_ (##cdr _e87028728_))
                                      (_hd87038731_ (##car _e87028728_)))
                                  (___kont1421714218_
                                   _tl87048733_
                                   _hd87038731_)))
                              (___kont1421914220_)))))))
                 (_generate-values-check8608_
                  (lambda (_check8684_ _body8685_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8685_ '())
                                  (reverse _check8684_)))))
                 (_generate-values-post8609_
                  (lambda (_post8677_ _body8678_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8678_ '())
                                  (map (lambda (_g86798681_)
                                         (cons 'set! _g86798681_))
                                       (reverse _post8677_)))))))
          (let* ((_g86118628_
                  (lambda (_g86128625_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86128625_)))
                 (_g86108674_
                  (lambda (_g86128631_)
                    (if (gx#stx-pair? _g86128631_)
                        (let ((_e86158633_ (gx#stx-e _g86128631_)))
                          (let ((_hd86168636_ (##car _e86158633_))
                                (_tl86178638_ (##cdr _e86158633_)))
                            (if (gx#stx-pair? _tl86178638_)
                                (let ((_e86188641_ (gx#stx-e _tl86178638_)))
                                  (let ((_hd86198644_ (##car _e86188641_))
                                        (_tl86208646_ (##cdr _e86188641_)))
                                    (if (gx#stx-pair? _tl86208646_)
                                        (let ((_e86218649_
                                               (gx#stx-e _tl86208646_)))
                                          (let ((_hd86228652_
                                                 (##car _e86218649_))
                                                (_tl86238654_
                                                 (##cdr _e86218649_)))
                                            (if (gx#stx-null? _tl86238654_)
                                                ((lambda (_L8657_ _L8658_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8658_)
                                                       (_generate-simple8606_
                                                        _L8658_
                                                        _L8657_)
                                                       (_generate-values8607_
                                                        _L8658_
                                                        _L8657_)))
                                                 _hd86228652_
                                                 _hd86198644_)
                                                (_g86118628_ _g86128631_))))
                                        (_g86118628_ _g86128631_))))
                                (_g86118628_ _g86128631_))))
                        (_g86118628_ _g86128631_)))))
            (_g86108674_ _stx8603_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8914_)
          (let ((_compiled-body?8916_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8914_
             _compiled-body?8916_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g14646_
          (let ((_g14645_ (length _g14646_)))
            (cond ((##fx= _g14645_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g14646_))
                  ((##fx= _g14645_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g14646_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g14646_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx8185_)
      (letrec ((_generate-values8187_
                (lambda (_hd8430_ _body8431_)
                  (let _lp8433_ ((_rest8435_ _hd8430_) (_bind8436_ '()))
                    (let* ((_rest84378445_ _rest8435_)
                           (_else84398456_
                            (lambda ()
                              (let ((_bind8453_ (reverse _bind8436_))
                                    (_body8454_ (gxc#compile-e _body8431_)))
                                (cons 'letrec*
                                      (cons _bind8453_
                                            (cons _body8454_ '()))))))
                           (_K84418590_
                            (lambda (_rest8459_ _hd-bind8460_)
                              (let* ((___stx1422914230_ _hd-bind8460_)
                                     (_g84638488_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1422914230_))))
                                (let ((___kont1423114232_
                                       (lambda (_L8569_ _L8570_)
                                         (let ((_eid8584_
                                                (gxc#generate-runtime-binding-id*
                                                 _L8570_))
                                               (_expr8585_
                                                (gxc#compile-e _L8569_)))
                                           (_lp8433_
                                            _rest8459_
                                            (cons (cons _eid8584_
                                                        (cons _expr8585_ '()))
                                                  _bind8436_)))))
                                      (___kont1423314234_
                                       (lambda (_L8509_ _L8510_)
                                         (let* ((_vals8529_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp8531_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values8533_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp8531_
                                                  _L8510_
                                                  _L8509_))
                                                (_refs8535_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals8529_
                                                  _L8510_))
                                                (_expr8537_
                                                 (gxc#compile-e _L8509_)))
                                           (_lp8433_
                                            _rest8459_
                                            (foldl1 cons
                                                    (cons (cons _vals8529_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp8531_
                                                      (cons _expr8537_ '()))
                                                '())
                                          (cons _check-values8533_
                                                (cons _tmp8531_ '()))))
                              '()))
                  _bind8436_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8535_))))))
                                  (if (gx#stx-pair? ___stx1422914230_)
                                      (let ((_e84678545_
                                             (gx#stx-e ___stx1422914230_)))
                                        (let ((_tl84698550_
                                               (##cdr _e84678545_))
                                              (_hd84688548_
                                               (##car _e84678545_)))
                                          (if (gx#stx-pair? _hd84688548_)
                                              (let ((_e84708553_
                                                     (gx#stx-e _hd84688548_)))
                                                (let ((_tl84728558_
                                                       (##cdr _e84708553_))
                                                      (_hd84718556_
                                                       (##car _e84708553_)))
                                                  (if (gx#stx-null?
                                                       _tl84728558_)
                                                      (if (gx#stx-pair?
                                                           _tl84698550_)
                                                          (let ((_e84738561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl84698550_)))
                    (let ((_tl84758566_ (##cdr _e84738561_))
                          (_hd84748564_ (##car _e84738561_)))
                      (if (gx#stx-null? _tl84758566_)
                          (___kont1423114232_ _hd84748564_ _hd84718556_)
                          (_g84638488_))))
                  (_g84638488_))
              (if (gx#stx-pair? _tl84698550_)
                  (let ((_e84818501_ (gx#stx-e _tl84698550_)))
                    (let ((_tl84838506_ (##cdr _e84818501_))
                          (_hd84828504_ (##car _e84818501_)))
                      (if (gx#stx-null? _tl84838506_)
                          (___kont1423314234_ _hd84828504_ _hd84688548_)
                          (_g84638488_))))
                  (_g84638488_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl84698550_)
                                                  (let ((_e84818501_
                                                         (gx#stx-e
                                                          _tl84698550_)))
                                                    (let ((_tl84838506_
                                                           (##cdr _e84818501_))
                                                          (_hd84828504_
                                                           (##car _e84818501_)))
                                                      (if (gx#stx-null?
                                                           _tl84838506_)
                                                          (___kont1423314234_
                                                           _hd84828504_
                                                           _hd84688548_)
                                                          (_g84638488_))))
                                                  (_g84638488_)))))
                                      (_g84638488_)))))))
                      (if (##pair? _rest84378445_)
                          (let ((_hd84428593_ (##car _rest84378445_))
                                (_tl84438595_ (##cdr _rest84378445_)))
                            (let* ((_hd-bind8598_ _hd84428593_)
                                   (_rest8600_ _tl84438595_))
                              (_K84418590_ _rest8600_ _hd-bind8598_)))
                          (_else84398456_))))))
               (_generate-letrec?8188_
                (lambda (_hd8320_)
                  (let _lp8322_ ((_rest8324_ _hd8320_))
                    (let* ((_rest83258333_ _rest8324_)
                           (_else83278341_ (lambda () '#t))
                           (_K83298418_
                            (lambda (_rest8344_ _hd-bind8345_)
                              (let* ((_g83478364_
                                      (lambda (_g83488361_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g83488361_)))
                                     (_g83468415_
                                      (lambda (_g83488367_)
                                        (if (gx#stx-pair? _g83488367_)
                                            (let ((_e83518369_
                                                   (gx#stx-e _g83488367_)))
                                              (let ((_hd83528372_
                                                     (##car _e83518369_))
                                                    (_tl83538374_
                                                     (##cdr _e83518369_)))
                                                (if (gx#stx-pair? _hd83528372_)
                                                    (let ((_e83548377_
                                                           (gx#stx-e
                                                            _hd83528372_)))
                                                      (let ((_hd83558380_
                                                             (##car _e83548377_))
                                                            (_tl83568382_
                                                             (##cdr _e83548377_)))
                                                        (if (gx#stx-null?
                                                             _tl83568382_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83538374_)
                        (let ((_e83578385_ (gx#stx-e _tl83538374_)))
                          (let ((_hd83588388_ (##car _e83578385_))
                                (_tl83598390_ (##cdr _e83578385_)))
                            (if (gx#stx-null? _tl83598390_)
                                ((lambda (_L8393_ _L8394_)
                                   (if (_is-lambda-expr?8189_ _L8393_)
                                       (_lp8322_ _rest8344_)
                                       '#f))
                                 _hd83588388_
                                 _hd83558380_)
                                (_g83478364_ _g83488367_))))
                        (_g83478364_ _g83488367_))
                    (_g83478364_ _g83488367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83478364_
                                                     _g83488367_))))
                                            (_g83478364_ _g83488367_)))))
                                (_g83468415_ _hd-bind8345_)))))
                      (if (##pair? _rest83258333_)
                          (let ((_hd83308421_ (##car _rest83258333_))
                                (_tl83318423_ (##cdr _rest83258333_)))
                            (let* ((_hd-bind8426_ _hd83308421_)
                                   (_rest8428_ _tl83318423_))
                              (_K83298418_ _rest8428_ _hd-bind8426_)))
                          (_else83278341_))))))
               (_is-lambda-expr?8189_
                (lambda (_expr8257_)
                  (let* ((___stx1427314274_ _expr8257_)
                         (_g82608274_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1427314274_))))
                    (let ((___kont1427514276_ (lambda (_L8302_ _L8303_) '#t))
                          (___kont1427714278_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1427314274_)
                          (let ((_e82648286_ (gx#stx-e ___stx1427314274_)))
                            (let ((_tl82668291_ (##cdr _e82648286_))
                                  (_hd82658289_ (##car _e82648286_)))
                              (if (gx#identifier? _hd82658289_)
                                  (if (gx#stx-eq? '%#lambda _hd82658289_)
                                      (if (gx#stx-pair? _tl82668291_)
                                          (let ((_e82678294_
                                                 (gx#stx-e _tl82668291_)))
                                            (let ((_tl82698299_
                                                   (##cdr _e82678294_))
                                                  (_hd82688297_
                                                   (##car _e82678294_)))
                                              (___kont1427514276_
                                               _tl82698299_
                                               _hd82688297_)))
                                          (___kont1427714278_))
                                      (___kont1427714278_))
                                  (___kont1427714278_))))
                          (___kont1427714278_)))))))
        (let* ((_g81918208_
                (lambda (_g81928205_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g81928205_)))
               (_g81908254_
                (lambda (_g81928211_)
                  (if (gx#stx-pair? _g81928211_)
                      (let ((_e81958213_ (gx#stx-e _g81928211_)))
                        (let ((_hd81968216_ (##car _e81958213_))
                              (_tl81978218_ (##cdr _e81958213_)))
                          (if (gx#stx-pair? _tl81978218_)
                              (let ((_e81988221_ (gx#stx-e _tl81978218_)))
                                (let ((_hd81998224_ (##car _e81988221_))
                                      (_tl82008226_ (##cdr _e81988221_)))
                                  (if (gx#stx-pair? _tl82008226_)
                                      (let ((_e82018229_
                                             (gx#stx-e _tl82008226_)))
                                        (let ((_hd82028232_
                                               (##car _e82018229_))
                                              (_tl82038234_
                                               (##cdr _e82018229_)))
                                          (if (gx#stx-null? _tl82038234_)
                                              ((lambda (_L8237_ _L8238_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L8238_)
                                                     (if (_generate-letrec?8188_
                                                          _L8238_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L8238_
                                                          _L8237_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L8238_
                                                          _L8237_
                                                          '#f))
                                                     (_generate-values8187_
                                                      _L8238_
                                                      _L8237_)))
                                               _hd82028232_
                                               _hd81998224_)
                                              (_g81918208_ _g81928211_))))
                                      (_g81918208_ _g81928211_))))
                              (_g81918208_ _g81928211_))))
                      (_g81918208_ _g81928211_)))))
          (_g81908254_ _stx8185_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd8078_)
      (let _lp8080_ ((_rest8082_ _hd8078_))
        (let* ((___stx1429714298_ _rest8082_)
               (_g80868107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1429714298_))))
          (let ((___kont1429914300_
                 (lambda (_L8158_ _L8159_ _L8160_) (_lp8080_ _L8158_)))
                (___kont1430114302_ (lambda () '#t))
                (___kont1430314304_ (lambda () '#f)))
            (let ((_g80848121_
                   (lambda ()
                     (if (gx#stx-null? ___stx1429714298_)
                         (___kont1430114302_)
                         (___kont1430314304_)))))
              (if (gx#stx-pair? ___stx1429714298_)
                  (let ((_e80918126_ (gx#stx-e ___stx1429714298_)))
                    (let ((_tl80938131_ (##cdr _e80918126_))
                          (_hd80928129_ (##car _e80918126_)))
                      (if (gx#stx-pair? _hd80928129_)
                          (let ((_e80948134_ (gx#stx-e _hd80928129_)))
                            (let ((_tl80968139_ (##cdr _e80948134_))
                                  (_hd80958137_ (##car _e80948134_)))
                              (if (gx#stx-pair? _hd80958137_)
                                  (let ((_e80978142_ (gx#stx-e _hd80958137_)))
                                    (let ((_tl80998147_ (##cdr _e80978142_))
                                          (_hd80988145_ (##car _e80978142_)))
                                      (if (gx#stx-null? _tl80998147_)
                                          (if (gx#stx-pair? _tl80968139_)
                                              (let ((_e81008150_
                                                     (gx#stx-e _tl80968139_)))
                                                (let ((_tl81028155_
                                                       (##cdr _e81008150_))
                                                      (_hd81018153_
                                                       (##car _e81008150_)))
                                                  (if (gx#stx-null?
                                                       _tl81028155_)
                                                      (___kont1429914300_
                                                       _tl80938131_
                                                       _hd81018153_
                                                       _hd80988145_)
                                                      (___kont1430314304_))))
                                              (___kont1430314304_))
                                          (___kont1430314304_))))
                                  (___kont1430314304_))))
                          (___kont1430314304_))))
                  (_g80848121_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form8002_ _hd8003_ _body8004_ _compiled-body?8005_)
      (letrec ((_generate18007_
                (lambda (_bind8009_)
                  (let* ((_g80118028_
                          (lambda (_g80128025_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g80128025_)))
                         (_g80108075_
                          (lambda (_g80128031_)
                            (if (gx#stx-pair? _g80128031_)
                                (let ((_e80158033_ (gx#stx-e _g80128031_)))
                                  (let ((_hd80168036_ (##car _e80158033_))
                                        (_tl80178038_ (##cdr _e80158033_)))
                                    (if (gx#stx-pair? _hd80168036_)
                                        (let ((_e80188041_
                                               (gx#stx-e _hd80168036_)))
                                          (let ((_hd80198044_
                                                 (##car _e80188041_))
                                                (_tl80208046_
                                                 (##cdr _e80188041_)))
                                            (if (gx#stx-null? _tl80208046_)
                                                (if (gx#stx-pair? _tl80178038_)
                                                    (let ((_e80218049_
                                                           (gx#stx-e
                                                            _tl80178038_)))
                                                      (let ((_hd80228052_
                                                             (##car _e80218049_))
                                                            (_tl80238054_
                                                             (##cdr _e80218049_)))
                                                        (if (gx#stx-null?
                                                             _tl80238054_)
                                                            ((lambda (_L8057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8058_)
                       (cons (gxc#generate-runtime-binding-id* _L8058_)
                             (cons (gxc#compile-e _L8057_) '())))
                     _hd80228052_
                     _hd80198044_)
                    (_g80118028_ _g80128031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80118028_ _g80128031_))
                                                (_g80118028_ _g80128031_))))
                                        (_g80118028_ _g80128031_))))
                                (_g80118028_ _g80128031_)))))
                    (_g80108075_ _bind8009_)))))
        (cons _form8002_
              (cons (map _generate18007_ _hd8003_)
                    (cons (if _compiled-body?8005_
                              _body8004_
                              (gxc#compile-e _body8004_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7910_)
      (letrec ((_generate17912_
                (lambda (_datum7964_)
                  (if (if (null? _datum7964_)
                          '#t
                          (if (interned-symbol? _datum7964_)
                              '#t
                              (if (gx#self-quoting? _datum7964_)
                                  '#t
                                  (eof-object? _datum7964_))))
                      _datum7964_
                      (if (uninterned-symbol? _datum7964_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7964_
                           '#t)
                          (if (pair? _datum7964_)
                              (cons (_generate17912_ (car _datum7964_))
                                    (_generate17912_ (cdr _datum7964_)))
                              (if (box? _datum7964_)
                                  (box (_generate17912_ (unbox _datum7964_)))
                                  (if (vector? _datum7964_)
                                      (vector-map _generate17912_ _datum7964_)
                                      (if (if (s8vector? _datum7964_)
                                              '#t
                                              (if (u8vector? _datum7964_)
                                                  '#t
                                                  (if (s16vector? _datum7964_)
                                                      '#t
                                                      (if (u16vector?
                                                           _datum7964_)
                                                          '#t
                                                          (if (s32vector?
                                                               _datum7964_)
                                                              '#t
                                                              (if (u32vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _datum7964_)
                          '#t
                          (if (s64vector? _datum7964_)
                              '#t
                              (if (u64vector? _datum7964_)
                                  '#t
                                  (if (f32vector? _datum7964_)
                                      '#t
                                      (f64vector? _datum7964_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7964_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7910_))))))))))
        (let* ((_g79147927_
                (lambda (_g79157924_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g79157924_)))
               (_g79137961_
                (lambda (_g79157930_)
                  (if (gx#stx-pair? _g79157930_)
                      (let ((_e79177932_ (gx#stx-e _g79157930_)))
                        (let ((_hd79187935_ (##car _e79177932_))
                              (_tl79197937_ (##cdr _e79177932_)))
                          (if (gx#stx-pair? _tl79197937_)
                              (let ((_e79207940_ (gx#stx-e _tl79197937_)))
                                (let ((_hd79217943_ (##car _e79207940_))
                                      (_tl79227945_ (##cdr _e79207940_)))
                                  (if (gx#stx-null? _tl79227945_)
                                      ((lambda (_L7948_)
                                         (cons 'quote
                                               (cons (_generate17912_
                                                      (gx#stx-e _L7948_))
                                                     '())))
                                       _hd79217943_)
                                      (_g79147927_ _g79157930_))))
                              (_g79147927_ _g79157930_))))
                      (_g79147927_ _g79157930_)))))
          (_g79137961_ _stx7910_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7603_)
      (let* ((_g76057619_
              (lambda (_g76067616_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g76067616_)))
             (_g76047907_
              (lambda (_g76067622_)
                (if (gx#stx-pair? _g76067622_)
                    (let ((_e76097624_ (gx#stx-e _g76067622_)))
                      (let ((_hd76107627_ (##car _e76097624_))
                            (_tl76117629_ (##cdr _e76097624_)))
                        (if (gx#stx-pair? _tl76117629_)
                            (let ((_e76127632_ (gx#stx-e _tl76117629_)))
                              (let ((_hd76137635_ (##car _e76127632_))
                                    (_tl76147637_ (##cdr _e76127632_)))
                                ((lambda (_L7640_ _L7641_)
                                   (let ((_rator7654_ (gxc#compile-e _L7641_))
                                         (_rands7655_
                                          (map gxc#compile-e _L7640_)))
                                     (let* ((___stx1433714338_ _rator7654_)
                                            (_g76587710_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1433714338_))))
                                       (let ((___kont1433914340_
                                              (lambda (_L7834_
                                                       _L7835_
                                                       _L7836_
                                                       _L7837_)
                                                (if (fx= (length _rands7655_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g78737876_ _g78747878_)
                                     (cons _g78737876_ _g78747878_))
                                   '()
                                   _L7836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id7881_ _L7837_)
                                                           (_args7890_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g78827885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g78837887_)
                                (cons _g78827885_ _g78837887_))
                              '()
                              _L7836_)))
                   (_body7899_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g78917894_ _g78927896_)
                                (cons _g78917894_ _g78927896_))
                              '()
                              _L7835_)))
                   (_init7901_ (map list _args7890_ _rands7655_)))
              (cons 'let (cons _id7881_ (cons _init7901_ _body7899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx7603_))))
                                             (___kont1434514346_
                                              (lambda ()
                                                (cons _rator7654_
                                                      _rands7655_))))
                                         (let ((___match1440414405_
                                                (lambda (_e76647722_
                                                         _hd76657725_
                                                         _tl76667727_
                                                         _e76677730_
                                                         _hd76687733_
                                                         _tl76697735_
                                                         _e76707738_
                                                         _hd76717741_
                                                         _tl76727743_
                                                         _e76737746_
                                                         _hd76747749_
                                                         _tl76757751_
                                                         _e76767754_
                                                         _hd76777757_
                                                         _tl76787759_
                                                         _e76797762_
                                                         _hd76807765_
                                                         _tl76817767_
                                                         _e76827770_
                                                         _hd76837773_
                                                         _tl76847775_
                                                         ___splice1434114342_
                                                         _target76857778_
                                                         _tl76877780_)
                                                  (letrec ((_loop76887783_
                                                            (lambda (_hd76867786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg76927788_)
                      (if (gx#stx-pair? _hd76867786_)
                          (let ((_e76897791_ (gx#stx-e _hd76867786_)))
                            (let ((_lp-tl76917796_ (##cdr _e76897791_))
                                  (_lp-hd76907794_ (##car _e76897791_)))
                              (_loop76887783_
                               _lp-tl76917796_
                               (cons _lp-hd76907794_ _arg76927788_))))
                          (let ((_arg76937799_ (reverse _arg76927788_)))
                            (if (gx#stx-pair/null? _tl76847775_)
                                (let ((___splice1434314344_
                                       (gx#syntax-split-splice
                                        _tl76847775_
                                        '0)))
                                  (let ((_tl76967804_
                                         (##vector-ref
                                          ___splice1434314344_
                                          '1))
                                        (_target76947802_
                                         (##vector-ref
                                          ___splice1434314344_
                                          '0)))
                                    (if (gx#stx-null? _tl76967804_)
                                        (letrec ((_loop76977807_
                                                  (lambda (_hd76957810_
                                                           _body77017812_)
                                                    (if (gx#stx-pair?
                                                         _hd76957810_)
                                                        (let ((_e76987815_
                                                               (gx#stx-e
                                                                _hd76957810_)))
                                                          (let ((_lp-tl77007820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e76987815_))
                        (_lp-hd76997818_ (##car _e76987815_)))
                    (_loop76977807_
                     _lp-tl77007820_
                     (cons _lp-hd76997818_ _body77017812_))))
                (let ((_body77027823_ (reverse _body77017812_)))
                  (if (gx#stx-null? _tl76787759_)
                      (if (gx#stx-null? _tl76727743_)
                          (if (gx#stx-pair? _tl76697735_)
                              (let ((_e77037826_ (gx#stx-e _tl76697735_)))
                                (let ((_tl77057831_ (##cdr _e77037826_))
                                      (_hd77047829_ (##car _e77037826_)))
                                  (if (gx#stx-null? _tl77057831_)
                                      (let ((_L7834_ _hd77047829_)
                                            (_L7835_ _body77027823_)
                                            (_L7836_ _arg76937799_)
                                            (_L7837_ _hd76747749_))
                                        (if (eq? _L7837_ _L7834_)
                                            (___kont1433914340_
                                             _L7834_
                                             _L7835_
                                             _L7836_
                                             _L7837_)
                                            (___kont1434514346_)))
                                      (___kont1434514346_))))
                              (___kont1434514346_))
                          (___kont1434514346_))
                      (___kont1434514346_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop76977807_
                                           _target76947802_
                                           '()))
                                        (___kont1434514346_))))
                                (___kont1434514346_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop76887783_
                                                     _target76857778_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1433714338_)
                                               (let ((_e76647722_
                                                      (gx#stx-e
                                                       ___stx1433714338_)))
                                                 (let ((_tl76667727_
                                                        (##cdr _e76647722_))
                                                       (_hd76657725_
                                                        (##car _e76647722_)))
                                                   (if (gx#identifier?
                                                        _hd76657725_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd76657725_)
                                                           (if (gx#stx-pair?
                                                                _tl76667727_)
                                                               (let ((_e76677730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl76667727_)))
                         (let ((_tl76697735_ (##cdr _e76677730_))
                               (_hd76687733_ (##car _e76677730_)))
                           (if (gx#stx-pair? _hd76687733_)
                               (let ((_e76707738_ (gx#stx-e _hd76687733_)))
                                 (let ((_tl76727743_ (##cdr _e76707738_))
                                       (_hd76717741_ (##car _e76707738_)))
                                   (if (gx#stx-pair? _hd76717741_)
                                       (let ((_e76737746_
                                              (gx#stx-e _hd76717741_)))
                                         (let ((_tl76757751_
                                                (##cdr _e76737746_))
                                               (_hd76747749_
                                                (##car _e76737746_)))
                                           (if (gx#stx-pair? _tl76757751_)
                                               (let ((_e76767754_
                                                      (gx#stx-e _tl76757751_)))
                                                 (let ((_tl76787759_
                                                        (##cdr _e76767754_))
                                                       (_hd76777757_
                                                        (##car _e76767754_)))
                                                   (if (gx#stx-pair?
                                                        _hd76777757_)
                                                       (let ((_e76797762_
                                                              (gx#stx-e
                                                               _hd76777757_)))
                                                         (let ((_tl76817767_
                                                                (##cdr _e76797762_))
                                                               (_hd76807765_
                                                                (##car _e76797762_)))
                                                           (if (gx#identifier?
                                                                _hd76807765_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd76807765_)
                           (if (gx#stx-pair? _tl76817767_)
                               (let ((_e76827770_ (gx#stx-e _tl76817767_)))
                                 (let ((_tl76847775_ (##cdr _e76827770_))
                                       (_hd76837773_ (##car _e76827770_)))
                                   (if (gx#stx-pair/null? _hd76837773_)
                                       (let ((___splice1434114342_
                                              (gx#syntax-split-splice
                                               _hd76837773_
                                               '0)))
                                         (let ((_tl76877780_
                                                (##vector-ref
                                                 ___splice1434114342_
                                                 '1))
                                               (_target76857778_
                                                (##vector-ref
                                                 ___splice1434114342_
                                                 '0)))
                                           (if (gx#stx-null? _tl76877780_)
                                               (___match1440414405_
                                                _e76647722_
                                                _hd76657725_
                                                _tl76667727_
                                                _e76677730_
                                                _hd76687733_
                                                _tl76697735_
                                                _e76707738_
                                                _hd76717741_
                                                _tl76727743_
                                                _e76737746_
                                                _hd76747749_
                                                _tl76757751_
                                                _e76767754_
                                                _hd76777757_
                                                _tl76787759_
                                                _e76797762_
                                                _hd76807765_
                                                _tl76817767_
                                                _e76827770_
                                                _hd76837773_
                                                _tl76847775_
                                                ___splice1434114342_
                                                _target76857778_
                                                _tl76877780_)
                                               (___kont1434514346_))))
                                       (___kont1434514346_))))
                               (___kont1434514346_))
                           (___kont1434514346_))
                       (___kont1434514346_))))
               (___kont1434514346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1434514346_))))
                                       (___kont1434514346_))))
                               (___kont1434514346_))))
                       (___kont1434514346_))
                   (___kont1434514346_))
               (___kont1434514346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1434514346_)))))))
                                 _tl76147637_
                                 _hd76137635_)))
                            (_g76057619_ _g76067622_))))
                    (_g76057619_ _g76067622_)))))
        (_g76047907_ _stx7603_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7265_)
      (letrec ((_boolean-e7267_
                (lambda (_code7355_)
                  (let* ((___stx1440714408_ _code7355_)
                         (_g73597415_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1440714408_))))
                    (let ((___kont1440914410_
                           (lambda (_L7565_ _L7566_ _L7567_ _L7568_ _L7569_)
                             (cons 'if
                                   (cons (_boolean-e7267_ _L7568_)
                                         (cons ''#t
                                               (cons (_boolean-e7267_ _L7565_)
                                                     '()))))))
                          (___kont1441114412_
                           (lambda (_L7459_ _L7460_ _L7461_)
                             (cons 'if
                                   (cons _L7461_
                                         (cons (_boolean-e7267_ _L7460_)
                                               (cons (_boolean-e7267_ _L7459_)
                                                     '()))))))
                          (___kont1441314414_ (lambda () _code7355_)))
                      (let ((___match1449014491_
                             (lambda (_e73667485_
                                      _hd73677488_
                                      _tl73687490_
                                      _e73697493_
                                      _hd73707496_
                                      _tl73717498_
                                      _e73727501_
                                      _hd73737504_
                                      _tl73747506_
                                      _e73757509_
                                      _hd73767512_
                                      _tl73777514_
                                      _e73787517_
                                      _hd73797520_
                                      _tl73807522_
                                      _e73817525_
                                      _hd73827528_
                                      _tl73837530_
                                      _e73847533_
                                      _hd73857536_
                                      _tl73867538_
                                      _e73877541_
                                      _hd73887544_
                                      _tl73897546_
                                      _e73907549_
                                      _hd73917552_
                                      _tl73927554_
                                      _e73937557_
                                      _hd73947560_
                                      _tl73957562_)
                               (let ((_L7565_ _hd73947560_)
                                     (_L7566_ _hd73917552_)
                                     (_L7567_ _hd73887544_)
                                     (_L7568_ _hd73797520_)
                                     (_L7569_ _hd73767512_))
                                 (if (if (gx#stx-eq? _L7569_ _L7567_)
                                         (gx#stx-eq? _L7569_ _L7566_)
                                         '#f)
                                     (___kont1440914410_
                                      _L7565_
                                      _L7566_
                                      _L7567_
                                      _L7568_
                                      _L7569_)
                                     (___kont1441314414_))))))
                        (if (gx#stx-pair? ___stx1440714408_)
                            (let ((_e73667485_ (gx#stx-e ___stx1440714408_)))
                              (let ((_tl73687490_ (##cdr _e73667485_))
                                    (_hd73677488_ (##car _e73667485_)))
                                (if (gx#identifier? _hd73677488_)
                                    (if (gx#stx-eq? 'let _hd73677488_)
                                        (if (gx#stx-pair? _tl73687490_)
                                            (let ((_e73697493_
                                                   (gx#stx-e _tl73687490_)))
                                              (let ((_tl73717498_
                                                     (##cdr _e73697493_))
                                                    (_hd73707496_
                                                     (##car _e73697493_)))
                                                (if (gx#stx-pair? _hd73707496_)
                                                    (let ((_e73727501_
                                                           (gx#stx-e
                                                            _hd73707496_)))
                                                      (let ((_tl73747506_
                                                             (##cdr _e73727501_))
                                                            (_hd73737504_
                                                             (##car _e73727501_)))
                                                        (if (gx#stx-pair?
                                                             _hd73737504_)
                                                            (let ((_e73757509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd73737504_)))
                      (let ((_tl73777514_ (##cdr _e73757509_))
                            (_hd73767512_ (##car _e73757509_)))
                        (if (gx#stx-pair? _tl73777514_)
                            (let ((_e73787517_ (gx#stx-e _tl73777514_)))
                              (let ((_tl73807522_ (##cdr _e73787517_))
                                    (_hd73797520_ (##car _e73787517_)))
                                (if (gx#stx-null? _tl73807522_)
                                    (if (gx#stx-null? _tl73747506_)
                                        (if (gx#stx-pair? _tl73717498_)
                                            (let ((_e73817525_
                                                   (gx#stx-e _tl73717498_)))
                                              (let ((_tl73837530_
                                                     (##cdr _e73817525_))
                                                    (_hd73827528_
                                                     (##car _e73817525_)))
                                                (if (gx#stx-pair? _hd73827528_)
                                                    (let ((_e73847533_
                                                           (gx#stx-e
                                                            _hd73827528_)))
                                                      (let ((_tl73867538_
                                                             (##cdr _e73847533_))
                                                            (_hd73857536_
                                                             (##car _e73847533_)))
                                                        (if (gx#identifier?
                                                             _hd73857536_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'if
                         _hd73857536_)
                        (if (gx#stx-pair? _tl73867538_)
                            (let ((_e73877541_ (gx#stx-e _tl73867538_)))
                              (let ((_tl73897546_ (##cdr _e73877541_))
                                    (_hd73887544_ (##car _e73877541_)))
                                (if (gx#stx-pair? _tl73897546_)
                                    (let ((_e73907549_
                                           (gx#stx-e _tl73897546_)))
                                      (let ((_tl73927554_ (##cdr _e73907549_))
                                            (_hd73917552_ (##car _e73907549_)))
                                        (if (gx#stx-pair? _tl73927554_)
                                            (let ((_e73937557_
                                                   (gx#stx-e _tl73927554_)))
                                              (let ((_tl73957562_
                                                     (##cdr _e73937557_))
                                                    (_hd73947560_
                                                     (##car _e73937557_)))
                                                (if (gx#stx-null? _tl73957562_)
                                                    (if (gx#stx-null?
                                                         _tl73837530_)
                                                        (___match1449014491_
                                                         _e73667485_
                                                         _hd73677488_
                                                         _tl73687490_
                                                         _e73697493_
                                                         _hd73707496_
                                                         _tl73717498_
                                                         _e73727501_
                                                         _hd73737504_
                                                         _tl73747506_
                                                         _e73757509_
                                                         _hd73767512_
                                                         _tl73777514_
                                                         _e73787517_
                                                         _hd73797520_
                                                         _tl73807522_
                                                         _e73817525_
                                                         _hd73827528_
                                                         _tl73837530_
                                                         _e73847533_
                                                         _hd73857536_
                                                         _tl73867538_
                                                         _e73877541_
                                                         _hd73887544_
                                                         _tl73897546_
                                                         _e73907549_
                                                         _hd73917552_
                                                         _tl73927554_
                                                         _e73937557_
                                                         _hd73947560_
                                                         _tl73957562_)
                                                        (___kont1441314414_))
                                                    (___kont1441314414_))))
                                            (___kont1441314414_))))
                                    (___kont1441314414_))))
                            (___kont1441314414_))
                        (___kont1441314414_))
                    (___kont1441314414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1441314414_))))
                                            (___kont1441314414_))
                                        (___kont1441314414_))
                                    (___kont1441314414_))))
                            (___kont1441314414_))))
                    (___kont1441314414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1441314414_))))
                                            (___kont1441314414_))
                                        (if (gx#stx-eq? 'if _hd73677488_)
                                            (if (gx#stx-pair? _tl73687490_)
                                                (let ((_e74027435_
                                                       (gx#stx-e
                                                        _tl73687490_)))
                                                  (let ((_tl74047440_
                                                         (##cdr _e74027435_))
                                                        (_hd74037438_
                                                         (##car _e74027435_)))
                                                    (if (gx#stx-pair?
                                                         _tl74047440_)
                                                        (let ((_e74057443_
                                                               (gx#stx-e
                                                                _tl74047440_)))
                                                          (let ((_tl74077448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e74057443_))
                        (_hd74067446_ (##car _e74057443_)))
                    (if (gx#stx-pair? _tl74077448_)
                        (let ((_e74087451_ (gx#stx-e _tl74077448_)))
                          (let ((_tl74107456_ (##cdr _e74087451_))
                                (_hd74097454_ (##car _e74087451_)))
                            (if (gx#stx-null? _tl74107456_)
                                (___kont1441114412_
                                 _hd74097454_
                                 _hd74067446_
                                 _hd74037438_)
                                (___kont1441314414_))))
                        (___kont1441314414_))))
                (___kont1441314414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1441314414_))
                                            (___kont1441314414_)))
                                    (___kont1441314414_))))
                            (___kont1441314414_))))))))
        (let* ((_g72697290_
                (lambda (_g72707287_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g72707287_)))
               (_g72687352_
                (lambda (_g72707293_)
                  (if (gx#stx-pair? _g72707293_)
                      (let ((_e72747295_ (gx#stx-e _g72707293_)))
                        (let ((_hd72757298_ (##car _e72747295_))
                              (_tl72767300_ (##cdr _e72747295_)))
                          (if (gx#stx-pair? _tl72767300_)
                              (let ((_e72777303_ (gx#stx-e _tl72767300_)))
                                (let ((_hd72787306_ (##car _e72777303_))
                                      (_tl72797308_ (##cdr _e72777303_)))
                                  (if (gx#stx-pair? _tl72797308_)
                                      (let ((_e72807311_
                                             (gx#stx-e _tl72797308_)))
                                        (let ((_hd72817314_
                                               (##car _e72807311_))
                                              (_tl72827316_
                                               (##cdr _e72807311_)))
                                          (if (gx#stx-pair? _tl72827316_)
                                              (let ((_e72837319_
                                                     (gx#stx-e _tl72827316_)))
                                                (let ((_hd72847322_
                                                       (##car _e72837319_))
                                                      (_tl72857324_
                                                       (##cdr _e72837319_)))
                                                  (if (gx#stx-null?
                                                       _tl72857324_)
                                                      ((lambda (_L7327_
                                                                _L7328_
                                                                _L7329_)
                                                         (let ((_test7348_
                                                                (_boolean-e7267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e _L7329_)))
                       (_K7349_ (gxc#compile-e _L7328_))
                       (_E7350_ (gxc#compile-e _L7327_)))
                   (cons 'if
                         (cons _test7348_ (cons _K7349_ (cons _E7350_ '()))))))
               _hd72847322_
               _hd72817314_
               _hd72787306_)
              (_g72697290_ _g72707293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72697290_ _g72707293_))))
                                      (_g72697290_ _g72707293_))))
                              (_g72697290_ _g72707293_))))
                      (_g72697290_ _g72707293_)))))
          (_g72687352_ _stx7265_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7214_)
      (let* ((_g72167229_
              (lambda (_g72177226_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72177226_)))
             (_g72157262_
              (lambda (_g72177232_)
                (if (gx#stx-pair? _g72177232_)
                    (let ((_e72197234_ (gx#stx-e _g72177232_)))
                      (let ((_hd72207237_ (##car _e72197234_))
                            (_tl72217239_ (##cdr _e72197234_)))
                        (if (gx#stx-pair? _tl72217239_)
                            (let ((_e72227242_ (gx#stx-e _tl72217239_)))
                              (let ((_hd72237245_ (##car _e72227242_))
                                    (_tl72247247_ (##cdr _e72227242_)))
                                (if (gx#stx-null? _tl72247247_)
                                    ((lambda (_L7250_)
                                       (gxc#generate-runtime-binding-id
                                        _L7250_))
                                     _hd72237245_)
                                    (_g72167229_ _g72177232_))))
                            (_g72167229_ _g72177232_))))
                    (_g72167229_ _g72177232_)))))
        (_g72157262_ _stx7214_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7147_)
      (let* ((_g71497166_
              (lambda (_g71507163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71507163_)))
             (_g71487211_
              (lambda (_g71507169_)
                (if (gx#stx-pair? _g71507169_)
                    (let ((_e71537171_ (gx#stx-e _g71507169_)))
                      (let ((_hd71547174_ (##car _e71537171_))
                            (_tl71557176_ (##cdr _e71537171_)))
                        (if (gx#stx-pair? _tl71557176_)
                            (let ((_e71567179_ (gx#stx-e _tl71557176_)))
                              (let ((_hd71577182_ (##car _e71567179_))
                                    (_tl71587184_ (##cdr _e71567179_)))
                                (if (gx#stx-pair? _tl71587184_)
                                    (let ((_e71597187_
                                           (gx#stx-e _tl71587184_)))
                                      (let ((_hd71607190_ (##car _e71597187_))
                                            (_tl71617192_ (##cdr _e71597187_)))
                                        (if (gx#stx-null? _tl71617192_)
                                            ((lambda (_L7195_ _L7196_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7196_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7195_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71607190_
                                             _hd71577182_)
                                            (_g71497166_ _g71507169_))))
                                    (_g71497166_ _g71507169_))))
                            (_g71497166_ _g71507169_))))
                    (_g71497166_ _g71507169_)))))
        (_g71487211_ _stx7147_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7080_)
      (let* ((_g70827099_
              (lambda (_g70837096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70837096_)))
             (_g70817144_
              (lambda (_g70837102_)
                (if (gx#stx-pair? _g70837102_)
                    (let ((_e70867104_ (gx#stx-e _g70837102_)))
                      (let ((_hd70877107_ (##car _e70867104_))
                            (_tl70887109_ (##cdr _e70867104_)))
                        (if (gx#stx-pair? _tl70887109_)
                            (let ((_e70897112_ (gx#stx-e _tl70887109_)))
                              (let ((_hd70907115_ (##car _e70897112_))
                                    (_tl70917117_ (##cdr _e70897112_)))
                                (if (gx#stx-pair? _tl70917117_)
                                    (let ((_e70927120_
                                           (gx#stx-e _tl70917117_)))
                                      (let ((_hd70937123_ (##car _e70927120_))
                                            (_tl70947125_ (##cdr _e70927120_)))
                                        (if (gx#stx-null? _tl70947125_)
                                            ((lambda (_L7128_ _L7129_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7128_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7129_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70937123_
                                             _hd70907115_)
                                            (_g70827099_ _g70837102_))))
                                    (_g70827099_ _g70837102_))))
                            (_g70827099_ _g70837102_))))
                    (_g70827099_ _g70837102_)))))
        (_g70817144_ _stx7080_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx7013_)
      (let* ((_g70157032_
              (lambda (_g70167029_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70167029_)))
             (_g70147077_
              (lambda (_g70167035_)
                (if (gx#stx-pair? _g70167035_)
                    (let ((_e70197037_ (gx#stx-e _g70167035_)))
                      (let ((_hd70207040_ (##car _e70197037_))
                            (_tl70217042_ (##cdr _e70197037_)))
                        (if (gx#stx-pair? _tl70217042_)
                            (let ((_e70227045_ (gx#stx-e _tl70217042_)))
                              (let ((_hd70237048_ (##car _e70227045_))
                                    (_tl70247050_ (##cdr _e70227045_)))
                                (if (gx#stx-pair? _tl70247050_)
                                    (let ((_e70257053_
                                           (gx#stx-e _tl70247050_)))
                                      (let ((_hd70267056_ (##car _e70257053_))
                                            (_tl70277058_ (##cdr _e70257053_)))
                                        (if (gx#stx-null? _tl70277058_)
                                            ((lambda (_L7061_ _L7062_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7061_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7062_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70267056_
                                             _hd70237048_)
                                            (_g70157032_ _g70167035_))))
                                    (_g70157032_ _g70167035_))))
                            (_g70157032_ _g70167035_))))
                    (_g70157032_ _g70167035_)))))
        (_g70147077_ _stx7013_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6930_)
      (let* ((_g69326953_
              (lambda (_g69336950_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69336950_)))
             (_g69317010_
              (lambda (_g69336956_)
                (if (gx#stx-pair? _g69336956_)
                    (let ((_e69376958_ (gx#stx-e _g69336956_)))
                      (let ((_hd69386961_ (##car _e69376958_))
                            (_tl69396963_ (##cdr _e69376958_)))
                        (if (gx#stx-pair? _tl69396963_)
                            (let ((_e69406966_ (gx#stx-e _tl69396963_)))
                              (let ((_hd69416969_ (##car _e69406966_))
                                    (_tl69426971_ (##cdr _e69406966_)))
                                (if (gx#stx-pair? _tl69426971_)
                                    (let ((_e69436974_
                                           (gx#stx-e _tl69426971_)))
                                      (let ((_hd69446977_ (##car _e69436974_))
                                            (_tl69456979_ (##cdr _e69436974_)))
                                        (if (gx#stx-pair? _tl69456979_)
                                            (let ((_e69466982_
                                                   (gx#stx-e _tl69456979_)))
                                              (let ((_hd69476985_
                                                     (##car _e69466982_))
                                                    (_tl69486987_
                                                     (##cdr _e69466982_)))
                                                (if (gx#stx-null? _tl69486987_)
                                                    ((lambda (_L6990_
                                                              _L6991_
                                                              _L6992_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6990_)
                           (cons (gxc#compile-e _L6991_)
                                 (cons (gxc#compile-e _L6992_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd69476985_
                                                     _hd69446977_
                                                     _hd69416969_)
                                                    (_g69326953_
                                                     _g69336956_))))
                                            (_g69326953_ _g69336956_))))
                                    (_g69326953_ _g69336956_))))
                            (_g69326953_ _g69336956_))))
                    (_g69326953_ _g69336956_)))))
        (_g69317010_ _stx6930_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6831_)
      (let* ((_g68336858_
              (lambda (_g68346855_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68346855_)))
             (_g68326927_
              (lambda (_g68346861_)
                (if (gx#stx-pair? _g68346861_)
                    (let ((_e68396863_ (gx#stx-e _g68346861_)))
                      (let ((_hd68406866_ (##car _e68396863_))
                            (_tl68416868_ (##cdr _e68396863_)))
                        (if (gx#stx-pair? _tl68416868_)
                            (let ((_e68426871_ (gx#stx-e _tl68416868_)))
                              (let ((_hd68436874_ (##car _e68426871_))
                                    (_tl68446876_ (##cdr _e68426871_)))
                                (if (gx#stx-pair? _tl68446876_)
                                    (let ((_e68456879_
                                           (gx#stx-e _tl68446876_)))
                                      (let ((_hd68466882_ (##car _e68456879_))
                                            (_tl68476884_ (##cdr _e68456879_)))
                                        (if (gx#stx-pair? _tl68476884_)
                                            (let ((_e68486887_
                                                   (gx#stx-e _tl68476884_)))
                                              (let ((_hd68496890_
                                                     (##car _e68486887_))
                                                    (_tl68506892_
                                                     (##cdr _e68486887_)))
                                                (if (gx#stx-pair? _tl68506892_)
                                                    (let ((_e68516895_
                                                           (gx#stx-e
                                                            _tl68506892_)))
                                                      (let ((_hd68526898_
                                                             (##car _e68516895_))
                                                            (_tl68536900_
                                                             (##cdr _e68516895_)))
                                                        (if (gx#stx-null?
                                                             _tl68536900_)
                                                            ((lambda (_L6903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6904_
                              _L6905_
                              _L6906_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6904_)
                                   (cons (gxc#compile-e _L6903_)
                                         (cons (gxc#compile-e _L6905_)
                                               (cons (gxc#compile-e _L6906_)
                                                     (cons ''#f '())))))))
                     _hd68526898_
                     _hd68496890_
                     _hd68466882_
                     _hd68436874_)
                    (_g68336858_ _g68346861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g68336858_
                                                     _g68346861_))))
                                            (_g68336858_ _g68346861_))))
                                    (_g68336858_ _g68346861_))))
                            (_g68336858_ _g68346861_))))
                    (_g68336858_ _g68346861_)))))
        (_g68326927_ _stx6831_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6748_)
      (let* ((_g67506771_
              (lambda (_g67516768_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67516768_)))
             (_g67496828_
              (lambda (_g67516774_)
                (if (gx#stx-pair? _g67516774_)
                    (let ((_e67556776_ (gx#stx-e _g67516774_)))
                      (let ((_hd67566779_ (##car _e67556776_))
                            (_tl67576781_ (##cdr _e67556776_)))
                        (if (gx#stx-pair? _tl67576781_)
                            (let ((_e67586784_ (gx#stx-e _tl67576781_)))
                              (let ((_hd67596787_ (##car _e67586784_))
                                    (_tl67606789_ (##cdr _e67586784_)))
                                (if (gx#stx-pair? _tl67606789_)
                                    (let ((_e67616792_
                                           (gx#stx-e _tl67606789_)))
                                      (let ((_hd67626795_ (##car _e67616792_))
                                            (_tl67636797_ (##cdr _e67616792_)))
                                        (if (gx#stx-pair? _tl67636797_)
                                            (let ((_e67646800_
                                                   (gx#stx-e _tl67636797_)))
                                              (let ((_hd67656803_
                                                     (##car _e67646800_))
                                                    (_tl67666805_
                                                     (##cdr _e67646800_)))
                                                (if (gx#stx-null? _tl67666805_)
                                                    ((lambda (_L6808_
                                                              _L6809_
                                                              _L6810_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6808_)
                           (cons (gxc#compile-e _L6809_)
                                 (cons (gxc#compile-e _L6810_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67656803_
                                                     _hd67626795_
                                                     _hd67596787_)
                                                    (_g67506771_
                                                     _g67516774_))))
                                            (_g67506771_ _g67516774_))))
                                    (_g67506771_ _g67516774_))))
                            (_g67506771_ _g67516774_))))
                    (_g67506771_ _g67516774_)))))
        (_g67496828_ _stx6748_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6649_)
      (let* ((_g66516676_
              (lambda (_g66526673_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66526673_)))
             (_g66506745_
              (lambda (_g66526679_)
                (if (gx#stx-pair? _g66526679_)
                    (let ((_e66576681_ (gx#stx-e _g66526679_)))
                      (let ((_hd66586684_ (##car _e66576681_))
                            (_tl66596686_ (##cdr _e66576681_)))
                        (if (gx#stx-pair? _tl66596686_)
                            (let ((_e66606689_ (gx#stx-e _tl66596686_)))
                              (let ((_hd66616692_ (##car _e66606689_))
                                    (_tl66626694_ (##cdr _e66606689_)))
                                (if (gx#stx-pair? _tl66626694_)
                                    (let ((_e66636697_
                                           (gx#stx-e _tl66626694_)))
                                      (let ((_hd66646700_ (##car _e66636697_))
                                            (_tl66656702_ (##cdr _e66636697_)))
                                        (if (gx#stx-pair? _tl66656702_)
                                            (let ((_e66666705_
                                                   (gx#stx-e _tl66656702_)))
                                              (let ((_hd66676708_
                                                     (##car _e66666705_))
                                                    (_tl66686710_
                                                     (##cdr _e66666705_)))
                                                (if (gx#stx-pair? _tl66686710_)
                                                    (let ((_e66696713_
                                                           (gx#stx-e
                                                            _tl66686710_)))
                                                      (let ((_hd66706716_
                                                             (##car _e66696713_))
                                                            (_tl66716718_
                                                             (##cdr _e66696713_)))
                                                        (if (gx#stx-null?
                                                             _tl66716718_)
                                                            ((lambda (_L6721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6722_
                              _L6723_
                              _L6724_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6722_)
                                   (cons (gxc#compile-e _L6721_)
                                         (cons (gxc#compile-e _L6723_)
                                               (cons (gxc#compile-e _L6724_)
                                                     (cons ''#f '())))))))
                     _hd66706716_
                     _hd66676708_
                     _hd66646700_
                     _hd66616692_)
                    (_g66516676_ _g66526679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66516676_
                                                     _g66526679_))))
                                            (_g66516676_ _g66526679_))))
                                    (_g66516676_ _g66526679_))))
                            (_g66516676_ _g66526679_))))
                    (_g66516676_ _g66526679_)))))
        (_g66506745_ _stx6649_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6566_)
      (let* ((_g65686589_
              (lambda (_g65696586_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65696586_)))
             (_g65676646_
              (lambda (_g65696592_)
                (if (gx#stx-pair? _g65696592_)
                    (let ((_e65736594_ (gx#stx-e _g65696592_)))
                      (let ((_hd65746597_ (##car _e65736594_))
                            (_tl65756599_ (##cdr _e65736594_)))
                        (if (gx#stx-pair? _tl65756599_)
                            (let ((_e65766602_ (gx#stx-e _tl65756599_)))
                              (let ((_hd65776605_ (##car _e65766602_))
                                    (_tl65786607_ (##cdr _e65766602_)))
                                (if (gx#stx-pair? _tl65786607_)
                                    (let ((_e65796610_
                                           (gx#stx-e _tl65786607_)))
                                      (let ((_hd65806613_ (##car _e65796610_))
                                            (_tl65816615_ (##cdr _e65796610_)))
                                        (if (gx#stx-pair? _tl65816615_)
                                            (let ((_e65826618_
                                                   (gx#stx-e _tl65816615_)))
                                              (let ((_hd65836621_
                                                     (##car _e65826618_))
                                                    (_tl65846623_
                                                     (##cdr _e65826618_)))
                                                (if (gx#stx-null? _tl65846623_)
                                                    ((lambda (_L6626_
                                                              _L6627_
                                                              _L6628_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6626_)
                           (cons (gxc#compile-e _L6627_)
                                 (cons (gxc#compile-e _L6628_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65836621_
                                                     _hd65806613_
                                                     _hd65776605_)
                                                    (_g65686589_
                                                     _g65696592_))))
                                            (_g65686589_ _g65696592_))))
                                    (_g65686589_ _g65696592_))))
                            (_g65686589_ _g65696592_))))
                    (_g65686589_ _g65696592_)))))
        (_g65676646_ _stx6566_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6467_)
      (let* ((_g64696494_
              (lambda (_g64706491_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64706491_)))
             (_g64686563_
              (lambda (_g64706497_)
                (if (gx#stx-pair? _g64706497_)
                    (let ((_e64756499_ (gx#stx-e _g64706497_)))
                      (let ((_hd64766502_ (##car _e64756499_))
                            (_tl64776504_ (##cdr _e64756499_)))
                        (if (gx#stx-pair? _tl64776504_)
                            (let ((_e64786507_ (gx#stx-e _tl64776504_)))
                              (let ((_hd64796510_ (##car _e64786507_))
                                    (_tl64806512_ (##cdr _e64786507_)))
                                (if (gx#stx-pair? _tl64806512_)
                                    (let ((_e64816515_
                                           (gx#stx-e _tl64806512_)))
                                      (let ((_hd64826518_ (##car _e64816515_))
                                            (_tl64836520_ (##cdr _e64816515_)))
                                        (if (gx#stx-pair? _tl64836520_)
                                            (let ((_e64846523_
                                                   (gx#stx-e _tl64836520_)))
                                              (let ((_hd64856526_
                                                     (##car _e64846523_))
                                                    (_tl64866528_
                                                     (##cdr _e64846523_)))
                                                (if (gx#stx-pair? _tl64866528_)
                                                    (let ((_e64876531_
                                                           (gx#stx-e
                                                            _tl64866528_)))
                                                      (let ((_hd64886534_
                                                             (##car _e64876531_))
                                                            (_tl64896536_
                                                             (##cdr _e64876531_)))
                                                        (if (gx#stx-null?
                                                             _tl64896536_)
                                                            ((lambda (_L6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6540_
                              _L6541_
                              _L6542_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6540_)
                                   (cons (gxc#compile-e _L6539_)
                                         (cons (gxc#compile-e _L6541_)
                                               (cons (gxc#compile-e _L6542_)
                                                     (cons ''#f '())))))))
                     _hd64886534_
                     _hd64856526_
                     _hd64826518_
                     _hd64796510_)
                    (_g64696494_ _g64706497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64696494_
                                                     _g64706497_))))
                                            (_g64696494_ _g64706497_))))
                                    (_g64696494_ _g64706497_))))
                            (_g64696494_ _g64706497_))))
                    (_g64696494_ _g64706497_)))))
        (_g64686563_ _stx6467_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6321_)
      (letrec ((_import-set-template6323_
                (lambda (_in6419_ _phi6420_)
                  (let ((_iphi6422_
                         (fx+ _phi6420_
                              (##direct-structure-ref
                               _in6419_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6423_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6419_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6425_ ((_rest6427_ _imports6423_) (_r6428_ '()))
                      (let* ((_rest64296437_ _rest6427_)
                             (_else64316445_ (lambda () _r6428_))
                             (_K64336455_
                              (lambda (_rest6448_ _in6449_)
                                (if (##structure-instance-of?
                                     _in6449_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6422_)
                                        (_lp6425_
                                         _rest6448_
                                         (cons _in6449_ _r6428_))
                                        (_lp6425_ _rest6448_ _r6428_))
                                    (if (##structure-direct-instance-of?
                                         _in6449_
                                         'gx#module-import::t)
                                        (let ((_iphi6451_
                                               (fx+ _phi6420_
                                                    (##direct-structure-ref
                                                     _in6449_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6451_)
                                              (_lp6425_
                                               _rest6448_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6449_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6428_))
                                              (_lp6425_ _rest6448_ _r6428_)))
                                        (if (##structure-direct-instance-of?
                                             _in6449_
                                             'gx#import-set::t)
                                            (let ((_xphi6453_
                                                   (fx+ _iphi6422_
                                                        (##direct-structure-ref
                                                         _in6449_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6453_)
                                                  (_lp6425_
                                                   _rest6448_
                                                   (cons (##direct-structure-ref
                                                          _in6449_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6428_))
                                                  (if (fxpositive? _xphi6453_)
                                                      (_lp6425_
                                                       _rest6448_
                                                       (foldl1 cons
                                                               _r6428_
                                                               (_import-set-template6323_
                                                                _in6449_
                                                                _iphi6422_)))
                                                      (_lp6425_
                                                       _rest6448_
                                                       _r6428_))))
                                            (_lp6425_ _rest6448_ _r6428_)))))))
                        (if (##pair? _rest64296437_)
                            (let ((_hd64346458_ (##car _rest64296437_))
                                  (_tl64356460_ (##cdr _rest64296437_)))
                              (let* ((_in6463_ _hd64346458_)
                                     (_rest6465_ _tl64356460_))
                                (_K64336455_ _rest6465_ _in6463_)))
                            (_else64316445_))))))))
        (let* ((_g63256335_
                (lambda (_g63266332_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63266332_)))
               (_g63246416_
                (lambda (_g63266338_)
                  (if (gx#stx-pair? _g63266338_)
                      (let ((_e63286340_ (gx#stx-e _g63266338_)))
                        (let ((_hd63296343_ (##car _e63286340_))
                              (_tl63306345_ (##cdr _e63286340_)))
                          ((lambda (_L6348_)
                             (let ((_ht6359_ (make-hash-table-eq)))
                               (let _lp6361_ ((_rest6363_ _L6348_)
                                              (_loads6364_ '()))
                                 (letrec ((_K6366_ (lambda (_ctx6409_
                                                            _rest6410_)
                                                     (let ((_id6412_
                                                            (##structure-ref
                                                             _ctx6409_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6359_
                                                            _id6412_
                                                            '#f)
                                                           (_lp6361_
                                                            _rest6410_
                                                            _loads6364_)
                                                           (let ((_rt6414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6412_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6359_ _id6412_ _rt6414_)
                       (_lp6361_ _rest6410_ (cons _rt6414_ _loads6364_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63676375_ _rest6363_)
                                          (_else63696387_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63826384_)
                                                          (list 'load-module
                                                                _g63826384_))
                                                        (reverse _loads6364_)))))
                                          (_K63716397_
                                           (lambda (_rest6390_ _in6391_)
                                             (if (##structure-instance-of?
                                                  _in6391_
                                                  'gx#module-context::t)
                                                 (_K6366_ _in6391_ _rest6390_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6391_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6391_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6366_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6391_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6390_)
                 (_lp6361_ _rest6390_ _loads6364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6391_
                                                          'gx#import-set::t)
                                                         (let ((_phi6393_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6391_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6393_)
                       (_K6366_ (##direct-structure-ref
                                 _in6391_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6390_)
                       (if (fxpositive? _phi6393_)
                           (let ((_deps6395_
                                  (_import-set-template6323_ _in6391_ '0)))
                             (_lp6361_
                              (foldl1 cons _rest6390_ _deps6395_)
                              _loads6364_))
                           (_lp6361_ _rest6390_ _loads6364_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6321_
                  _in6391_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63676375_)
                                         (let ((_hd63726400_
                                                (##car _rest63676375_))
                                               (_tl63736402_
                                                (##cdr _rest63676375_)))
                                           (let* ((_in6405_ _hd63726400_)
                                                  (_rest6407_ _tl63736402_))
                                             (_K63716397_
                                              _rest6407_
                                              _in6405_)))
                                         (_else63696387_)))))))
                           _tl63306345_)))
                      (_g63256335_ _g63266338_)))))
          (_g63246416_ _stx6321_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6144_)
      (letrec ((_add-lift!6146_
                (lambda (_expr6319_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6319_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6147_
                (lambda (_stxq6314_)
                  (let ((_gid6316_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6317_
                         (gxc#generate-runtime-identifier _stxq6314_)))
                    (begin
                      (_add-lift!6146_
                       (cons 'define
                             (cons _gid6316_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6317_
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
                      _gid6316_))))
               (_generate-serialized6148_
                (lambda (_stxq6304_ _marks6305_)
                  (let* ((_mark-refs6307_
                          (map _generate-mark6149_ _marks6305_))
                         (_gid6309_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6311_
                          (gxc#generate-runtime-identifier _stxq6304_)))
                    (begin
                      (_add-lift!6146_
                       (cons 'define
                             (cons _gid6309_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6307_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6309_))))
               (_generate-mark6149_
                (lambda (_mark6290_)
                  (let ((_$e6292_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6290_
                          '#f)))
                    (if _$e6292_
                        (values _$e6292_)
                        (let* ((_gid6295_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6297_ (_serialize-mark6150_ _mark6290_))
                               (_ctx6299_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6290_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6301_
                                (if (eq? _ctx6299_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6151_
                                                             _ctx6299_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6290_
                             _gid6295_)
                            (_add-lift!6146_
                             (cons 'define
                                   (cons _gid6295_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6297_ '()))
                   (cons _ctx-ref6301_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6295_))))))
               (_serialize-mark6150_
                (lambda (_mark6237_)
                  (letrec ((_quote-e6239_
                            (lambda (_sym6288_)
                              (if (interned-symbol? _sym6288_)
                                  _sym6288_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6288_)))))
                    (let* ((_mark62406249_ _mark6237_)
                           (_E62426253_
                            (lambda ()
                              (error '"No clause matching" _mark62406249_)))
                           (_K62436265_
                            (lambda (_trace6256_
                                     _phi6257_
                                     _ctx6258_
                                     _subst6259_)
                              (let ((_subs6261_
                                     (if _subst6259_
                                         (table->list _subst6259_)
                                         '())))
                                (cons _phi6257_
                                      (map (lambda (_pair6263_)
                                             (cons (_quote-e6239_
                                                    (car _pair6263_))
                                                   (_quote-e6239_
                                                    (cdr _pair6263_))))
                                           _subs6261_))))))
                      (if (##structure-instance-of?
                           _mark62406249_
                           'gx#expander-mark::t)
                          (let* ((_e62446268_ (##vector-ref _mark62406249_ '1))
                                 (_subst6271_ _e62446268_)
                                 (_e62456273_ (##vector-ref _mark62406249_ '2))
                                 (_ctx6276_ _e62456273_)
                                 (_e62466278_ (##vector-ref _mark62406249_ '3))
                                 (_phi6281_ _e62466278_)
                                 (_e62476283_ (##vector-ref _mark62406249_ '4))
                                 (_trace6286_ _e62476283_))
                            (_K62436265_
                             _trace6286_
                             _phi6281_
                             _ctx6276_
                             _subst6271_))
                          (_E62426253_))))))
               (_context-ref6151_
                (lambda (_ctx6224_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6224_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6226_
                             (_context-ref-nested6153_ _ctx6224_))
                            (_ctx-origin6227_
                             (_context-ref-origin6152_ _ctx6224_))
                            (_origin6228_
                             (_context-ref-origin6152_
                              (gx#current-expander-context))))
                        (if (eq? _origin6228_ _ctx-origin6227_)
                            (let ((_ref6230_
                                   (_context-ref-nested6153_
                                    (gx#current-expander-context))))
                              (let _lp6232_ ((_ref6234_ (cdr _ref6230_))
                                             (_ctx-ref6235_
                                              (cdr _ctx-ref6226_)))
                                (if (if (pair? _ref6234_)
                                        (eq? (car _ref6234_)
                                             (car _ctx-ref6235_))
                                        '#f)
                                    (_lp6232_
                                     (cdr _ref6234_)
                                     (cdr _ctx-ref6235_))
                                    (cons '#f _ctx-ref6235_))))
                            _ctx-ref6226_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6224_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6152_
                (lambda (_ctx6216_)
                  (let _lp6218_ ((_ctx6220_ _ctx6216_))
                    (let ((_super6222_
                           (##structure-ref
                            _ctx6220_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6222_
                           'gx#module-context::t)
                          (_lp6218_ _super6222_)
                          _ctx6220_)))))
               (_context-ref-nested6153_
                (lambda (_ctx6207_)
                  (let _lp6209_ ((_ctx6211_ _ctx6207_) (_r6212_ '()))
                    (let ((_super6214_
                           (##structure-ref
                            _ctx6211_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6214_
                           'gx#module-context::t)
                          (_lp6209_
                           _super6214_
                           (cons (car (##structure-ref
                                       _ctx6211_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6212_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6211_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6212_)))))))
        (let* ((_g61556168_
                (lambda (_g61566165_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61566165_)))
               (_g61546204_
                (lambda (_g61566171_)
                  (if (gx#stx-pair? _g61566171_)
                      (let ((_e61586173_ (gx#stx-e _g61566171_)))
                        (let ((_hd61596176_ (##car _e61586173_))
                              (_tl61606178_ (##cdr _e61586173_)))
                          (if (gx#stx-pair? _tl61606178_)
                              (let ((_e61616181_ (gx#stx-e _tl61606178_)))
                                (let ((_hd61626184_ (##car _e61616181_))
                                      (_tl61636186_ (##cdr _e61616181_)))
                                  (if (gx#stx-null? _tl61636186_)
                                      ((lambda (_L6189_)
                                         (if (gx#identifier? _L6189_)
                                             (let ((_marks6202_
                                                    (##direct-structure-ref
                                                     _L6189_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks6202_)
                                                   (_generate-simple6147_
                                                    _L6189_)
                                                   (_generate-serialized6148_
                                                    _L6189_
                                                    _marks6202_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6189_)))
                                       _hd61626184_)
                                      (_g61556168_ _g61566171_))))
                              (_g61556168_ _g61566171_))))
                      (_g61556168_ _g61566171_)))))
          (_g61546204_ _stx6144_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6077_)
      (let* ((_g60796096_
              (lambda (_g60806093_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60806093_)))
             (_g60786141_
              (lambda (_g60806099_)
                (if (gx#stx-pair? _g60806099_)
                    (let ((_e60836101_ (gx#stx-e _g60806099_)))
                      (let ((_hd60846104_ (##car _e60836101_))
                            (_tl60856106_ (##cdr _e60836101_)))
                        (if (gx#stx-pair? _tl60856106_)
                            (let ((_e60866109_ (gx#stx-e _tl60856106_)))
                              (let ((_hd60876112_ (##car _e60866109_))
                                    (_tl60886114_ (##cdr _e60866109_)))
                                (if (gx#stx-pair? _tl60886114_)
                                    (let ((_e60896117_
                                           (gx#stx-e _tl60886114_)))
                                      (let ((_hd60906120_ (##car _e60896117_))
                                            (_tl60916122_ (##cdr _e60896117_)))
                                        (if (gx#stx-null? _tl60916122_)
                                            ((lambda (_L6125_ _L6126_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6126_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6125_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60906120_
                                             _hd60876112_)
                                            (_g60796096_ _g60806099_))))
                                    (_g60796096_ _g60806099_))))
                            (_g60796096_ _g60806099_))))
                    (_g60796096_ _g60806099_)))))
        (_g60786141_ _stx6077_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx6026_ _state6027_)
      (let* ((_g60296039_
              (lambda (_g60306036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60306036_)))
             (_g60286074_
              (lambda (_g60306042_)
                (if (gx#stx-pair? _g60306042_)
                    (let ((_e60326044_ (gx#stx-e _g60306042_)))
                      (let ((_hd60336047_ (##car _e60326044_))
                            (_tl60346049_ (##cdr _e60326044_)))
                        ((lambda (_L6052_)
                           (let* ((_c-body6066_
                                   (map (lambda (_g60616063_)
                                          (gxc#compile-e
                                           _g60616063_
                                           _state6027_))
                                        _L6052_))
                                  (_c-body6071_
                                   (filter (lambda (_$obj6068_)
                                             (not (eq? _$obj6068_ '#!void)))
                                           _c-body6066_)))
                             (cons '%#begin _c-body6071_)))
                         _tl60346049_)))
                    (_g60296039_ _g60306042_)))))
        (_g60286074_ _stx6026_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5934_ _state5935_)
      (let* ((_g59375947_
              (lambda (_g59385944_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59385944_)))
             (_g59366023_
              (lambda (_g59385950_)
                (if (gx#stx-pair? _g59385950_)
                    (let ((_e59405952_ (gx#stx-e _g59385950_)))
                      (let ((_hd59415955_ (##car _e59405952_))
                            (_tl59425957_ (##cdr _e59405952_)))
                        ((lambda (_L5960_)
                           (let* ((_phi5970_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5972_
                                   (gxc#meta-state-begin-phi!
                                    _state5935_
                                    _phi5970_))
                                  (_compiled5975_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5960_)
                                       _state5935_))
                                    gx#current-expander-phi
                                    _phi5970_)))
                             (let* ((_g59785988_
                                     (lambda (_g59795985_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59795985_)))
                                    (_g59776020_
                                     (lambda (_g59795991_)
                                       (if (gx#stx-pair? _g59795991_)
                                           (let ((_e59815993_
                                                  (gx#stx-e _g59795991_)))
                                             (let ((_hd59825996_
                                                    (##car _e59815993_))
                                                   (_tl59835998_
                                                    (##cdr _e59815993_)))
                                               (if (gx#identifier?
                                                    _hd59825996_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59825996_)
                                                       ((lambda (_L6001_)
                                                          (let ((_c-body6018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj6015_)
                                   (not (eq? _$obj6015_ '#!void)))
                                 _L6001_)))
                    (if _block5972_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body6018_))
                        (if (null? _c-body6018_)
                            '#!void
                            (cons '%#begin-syntax _c-body6018_)))))
                _tl59835998_)
               (_g59785988_ _g59795991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59785988_ _g59795991_))))
                                           (_g59785988_ _g59795991_)))))
                               (_g59776020_ _compiled5975_))))
                         _tl59425957_)))
                    (_g59375947_ _g59385950_)))))
        (_g59366023_ _stx5934_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5865_ _state5866_)
      (begin
        (gxc#meta-state-end-phi! _state5866_)
        (let* ((_g58685882_
                (lambda (_g58695879_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58695879_)))
               (_g58675931_
                (lambda (_g58695885_)
                  (if (gx#stx-pair? _g58695885_)
                      (let ((_e58725887_ (gx#stx-e _g58695885_)))
                        (let ((_hd58735890_ (##car _e58725887_))
                              (_tl58745892_ (##cdr _e58725887_)))
                          (if (gx#stx-pair? _tl58745892_)
                              (let ((_e58755895_ (gx#stx-e _tl58745892_)))
                                (let ((_hd58765898_ (##car _e58755895_))
                                      (_tl58775900_ (##cdr _e58755895_)))
                                  ((lambda (_L5903_ _L5904_)
                                     (let ((_key5917_
                                            (gx#core-identifier-key _L5904_)))
                                       (begin
                                         (if (interned-symbol? _key5917_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5865_
                                              _L5904_
                                              _key5917_))
                                         (let* ((_ctx5919_
                                                 (gx#syntax-local-e__0
                                                  _L5904_))
                                                (_code5922_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5919_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5866_))
                                                  gx#current-expander-context
                                                  _ctx5919_))
                                                (_rt5924_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5919_
                                                  '#f))
                                                (_loader5926_
                                                 (if _rt5924_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5924_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5928_
                                                 (gx#stx-e _L5904_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5866_)
                                             (cons '%#module
                                                   (cons _modid5928_
                                                         (cons _code5922_
                                                               _loader5926_))))))))
                                   _tl58775900_
                                   _hd58765898_)))
                              (_g58685882_ _g58695885_))))
                      (_g58685882_ _g58695885_)))))
          (_g58675931_ _stx5865_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5855_ _context-chain5856_)
      (let _lp5858_ ((_ctx5860_ _ctx5855_) (_path5861_ '()))
        (let ((_super5863_
               (##structure-ref _ctx5860_ '3 gx#phi-context::t '#f)))
          (if (memq _super5863_ _context-chain5856_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5860_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5861_))
              (if (##structure-instance-of? _super5863_ 'gx#module-context::t)
                  (_lp5858_
                   _super5863_
                   (cons (car (##structure-ref
                               _ctx5860_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5861_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5860_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5861_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5850_ ((_ctx5852_ (gx#current-expander-context)) (_r5853_ '()))
        (if (##structure-instance-of? _ctx5852_ 'gx#module-context::t)
            (_lp5850_
             (##structure-ref _ctx5852_ '3 gx#phi-context::t '#f)
             (cons _ctx5852_ _r5853_))
            _r5853_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5619_ _state5620_)
      (letrec* ((_context-chain5622_ (gxc#current-context-chain))
                (_make-import-spec5623_
                 (lambda (_in5786_)
                   (let* ((_in57875799_ _in5786_)
                          (_E57895803_
                           (lambda ()
                             (error '"No clause matching" _in57875799_)))
                          (_K57905813_
                           (lambda (_phi5806_
                                    _name5807_
                                    _src-name5808_
                                    _src-phi5809_
                                    _src-key5810_
                                    _src-ctx5811_)
                             (cons _phi5806_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5807_)
                                         (cons _src-phi5809_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5808_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57875799_
                          'gx#module-import::t)
                         (let ((_e57915816_ (##vector-ref _in57875799_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57915816_
                                'gx#module-export::t)
                               (let* ((_e57945819_
                                       (##vector-ref _e57915816_ '1))
                                      (_src-ctx5822_ _e57945819_)
                                      (_e57955824_
                                       (##vector-ref _e57915816_ '2))
                                      (_src-key5827_ _e57955824_)
                                      (_e57965829_
                                       (##vector-ref _e57915816_ '3))
                                      (_src-phi5832_ _e57965829_)
                                      (_e57975834_
                                       (##vector-ref _e57915816_ '4))
                                      (_src-name5837_ _e57975834_)
                                      (_e57925839_
                                       (##vector-ref _in57875799_ '2))
                                      (_name5842_ _e57925839_)
                                      (_e57935844_
                                       (##vector-ref _in57875799_ '3))
                                      (_phi5847_ _e57935844_))
                                 (_K57905813_
                                  _phi5847_
                                  _name5842_
                                  _src-name5837_
                                  _src-phi5832_
                                  _src-key5827_
                                  _src-ctx5822_))
                               (_E57895803_)))
                         (_E57895803_)))))
                (_make-import-path5624_
                 (lambda (_ctx5784_)
                   (gxc#generate-meta-import-path
                    _ctx5784_
                    _context-chain5622_)))
                (_make-import-spec-in5625_
                 (lambda (_ctx5781_ _in5782_)
                   (cons 'spec:
                         (cons (_make-import-path5624_ _ctx5781_)
                               (reverse _in5782_))))))
        (begin
          (gxc#meta-state-end-phi! _state5620_)
          (let* ((_g56275637_
                  (lambda (_g56285634_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g56285634_)))
                 (_g56265778_
                  (lambda (_g56285640_)
                    (if (gx#stx-pair? _g56285640_)
                        (let ((_e56305642_ (gx#stx-e _g56285640_)))
                          (let ((_hd56315645_ (##car _e56305642_))
                                (_tl56325647_ (##cdr _e56305642_)))
                            ((lambda (_L5650_)
                               (let _lp5661_ ((_rest5663_ _L5650_)
                                              (_current-src5664_ '#f)
                                              (_current-in5665_ '())
                                              (_r5666_ '()))
                                 (let* ((_rest56675675_ _rest5663_)
                                        (_else56695685_
                                         (lambda ()
                                           (let ((_r5683_ (if _current-src5664_
                                                              (cons (_make-import-spec-in5625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5664_
                             _current-in5665_)
                            _r5666_)
                      _r5666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5683_)))))
                                        (_K56715766_
                                         (lambda (_rest5688_ _in5689_)
                                           (if (##structure-direct-instance-of?
                                                _in5689_
                                                'gx#module-import::t)
                                               (let* ((_in56905697_ _in5689_)
                                                      (_E56925701_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56905697_)))
                                                      (_K56935706_
                                                       (lambda (_src-ctx5704_)
                                                         (if (eq? _current-src5664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5704_)
                     (_lp5661_
                      _rest5688_
                      _current-src5664_
                      (cons (_make-import-spec5623_ _in5689_) _current-in5665_)
                      _r5666_)
                     (if _current-src5664_
                         (_lp5661_
                          _rest5688_
                          _src-ctx5704_
                          (cons (_make-import-spec5623_ _in5689_) '())
                          (cons (_make-import-spec-in5625_
                                 _current-src5664_
                                 _current-in5665_)
                                _r5666_))
                         (_lp5661_
                          _rest5688_
                          _src-ctx5704_
                          (cons (_make-import-spec5623_ _in5689_) '())
                          _r5666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56905697_
                                                      'gx#module-import::t)
                                                     (let ((_e56945709_
                                                            (##vector-ref
                                                             _in56905697_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56945709_
                                                            'gx#module-export::t)
                                                           (let* ((_e56955712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56945709_ '1))
                          (_src-ctx5715_ _e56955712_))
                     (_K56935706_ _src-ctx5715_))
                   (_E56925701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56925701_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5689_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5717_
                                                           (##direct-structure-ref
                                                            _in5689_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5719_
                                                           (##direct-structure-ref
                                                            _in5689_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5759_
                                                           (let* ((_g57205729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5624_ _src5719_))
                          (_E57235733_
                           (lambda ()
                             (error '"No clause matching" _g57205729_))))
                     (let ((_K57255749_ (lambda (_path5747_) _path5747_))
                           (_K57245739_
                            (lambda (_path5737_) (cons 'in: _path5737_))))
                       (if (##pair? _g57205729_)
                           (let ((_tl57275754_ (##cdr _g57205729_))
                                 (_hd57265752_ (##car _g57205729_)))
                             (if (##null? _tl57275754_)
                                 (let ((_path5757_ _hd57265752_))
                                   (_K57255749_ _path5757_))
                                 (let ((_path5742_ _g57205729_))
                                   (_K57245739_ _path5742_))))
                           (let ((_path5742_ _g57205729_))
                             (_K57245739_ _path5742_))))))
                  (_r5761_ (if _current-src5664_
                               (cons (_make-import-spec-in5625_
                                      _current-src5664_
                                      _current-in5665_)
                                     _r5666_)
                               _r5666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5661_
                                                      _rest5688_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5717_)
                                                                _src-in5759_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5717_ (cons _src-in5759_ '()))))
                    _r5761_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5689_
                                                        'gx#module-context::t)
                                                       (let ((_r5764_ (if _current-src5664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5625_
                                         _current-src5664_
                                         _current-in5665_)
                                        _r5666_)
                                  _r5666_)))
                 (_lp5661_
                  _rest5688_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5624_ _in5689_))
                        _r5764_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56675675_)
                                       (let ((_hd56725769_
                                              (##car _rest56675675_))
                                             (_tl56735771_
                                              (##cdr _rest56675675_)))
                                         (let* ((_in5774_ _hd56725769_)
                                                (_rest5776_ _tl56735771_))
                                           (_K56715766_ _rest5776_ _in5774_)))
                                       (_else56695685_)))))
                             _tl56325647_)))
                        (_g56275637_ _g56285640_)))))
            (_g56265778_ _stx5619_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5429_ _state5430_)
      (letrec* ((_context-chain5432_ (gxc#current-context-chain))
                (_make-import-path5433_
                 (lambda (_ctx5617_)
                   (gxc#generate-meta-import-path
                    _ctx5617_
                    _context-chain5432_))))
        (let* ((_g54355445_
                (lambda (_g54365442_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54365442_)))
               (_g54345614_
                (lambda (_g54365448_)
                  (if (gx#stx-pair? _g54365448_)
                      (let ((_e54385450_ (gx#stx-e _g54365448_)))
                        (let ((_hd54395453_ (##car _e54385450_))
                              (_tl54405455_ (##cdr _e54385450_)))
                          ((lambda (_L5458_)
                             (let _lp5469_ ((_rest5471_ _L5458_) (_r5472_ '()))
                               (let* ((_rest54735481_ _rest5471_)
                                      (_else54755489_
                                       (lambda ()
                                         (cons '%#export (reverse _r5472_))))
                                      (_K54775602_
                                       (lambda (_rest5492_ _out5493_)
                                         (let* ((_out54945507_ _out5493_)
                                                (_E54975511_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54945507_))))
                                           (let ((_K55015581_
                                                  (lambda (_name5577_
                                                           _phi5578_
                                                           _key5579_)
                                                    (_lp5469_
                                                     _rest5492_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi5578_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key5579_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name5577_)
                                           '()))))
                   _r5472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K54985561_
                                                  (lambda (_phi5515_ _src5516_)
                                                    (let* ((_out5556_
                                                            (if _src5516_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g55175526_
                                            (_make-import-path5433_ _src5516_))
                                           (_E55205530_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g55175526_))))
                                      (let ((_K55225546_
                                             (lambda (_path5544_) _path5544_))
                                            (_K55215536_
                                             (lambda (_path5534_)
                                               (cons 'in: _path5534_))))
                                        (if (##pair? _g55175526_)
                                            (let ((_tl55245551_
                                                   (##cdr _g55175526_))
                                                  (_hd55235549_
                                                   (##car _g55175526_)))
                                              (if (##null? _tl55245551_)
                                                  (let ((_path5554_
                                                         _hd55235549_))
                                                    (_K55225546_ _path5554_))
                                                  (let ((_path5539_
                                                         _g55175526_))
                                                    (_K55215536_ _path5539_))))
                                            (let ((_path5539_ _g55175526_))
                                              (_K55215536_ _path5539_)))))
                                    '()))
                        '#t))
                   (_out5558_
                    (if (fxzero? _phi5515_)
                        _out5556_
                        (cons 'phi: (cons _phi5515_ (cons _out5556_ '()))))))
              (_lp5469_ _rest5492_ (cons _out5558_ _r5472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match54965574_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out54945507_
                                                           'gx#export-set::t)
                                                          (let* ((_e54995564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out54945507_ '1))
                         (_e55005569_ (##vector-ref _out54945507_ '2)))
                    (let ((_src5567_ _e54995564_) (_phi5572_ _e55005569_))
                      (_K54985561_ _phi5572_ _src5567_)))
                  (_E54975511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out54945507_
                                                    'gx#module-export::t)
                                                   (let* ((_e55025584_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '1))
                                                          (_e55035587_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '2))
                                                          (_e55045592_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '3))
                                                          (_e55055597_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '4)))
                                                     (let ((_key5590_
                                                            _e55035587_)
                                                           (_phi5595_
                                                            _e55045592_)
                                                           (_name5600_
                                                            _e55055597_))
                                                       (_K55015581_
                                                        _name5600_
                                                        _phi5595_
                                                        _key5590_)))
                                                   (_try-match54965574_))))))))
                                 (if (##pair? _rest54735481_)
                                     (let ((_hd54785605_
                                            (##car _rest54735481_))
                                           (_tl54795607_
                                            (##cdr _rest54735481_)))
                                       (let* ((_out5610_ _hd54785605_)
                                              (_rest5612_ _tl54795607_))
                                         (_K54775602_ _rest5612_ _out5610_)))
                                     (_else54755489_)))))
                           _tl54405455_)))
                      (_g54355445_ _g54365448_)))))
          (_g54345614_ _stx5429_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5390_ _state5391_)
      (begin
        (gxc#meta-state-end-phi! _state5391_)
        (let* ((_g53935403_
                (lambda (_g53945400_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53945400_)))
               (_g53925426_
                (lambda (_g53945406_)
                  (if (gx#stx-pair? _g53945406_)
                      (let ((_e53965408_ (gx#stx-e _g53945406_)))
                        (let ((_hd53975411_ (##car _e53965408_))
                              (_tl53985413_ (##cdr _e53965408_)))
                          ((lambda (_L5416_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5416_)))
                           _tl53985413_)))
                      (_g53935403_ _g53945406_)))))
          (_g53925426_ _stx5390_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5261_ _state5262_)
      (letrec ((_generate15264_
                (lambda (_id5385_ _eid5386_)
                  (let ((_eid5388_ (gx#stx-e _eid5386_)))
                    (begin
                      (if (interned-symbol? _eid5388_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5261_
                           _eid5388_))
                      (cons (gxc#generate-runtime-identifier _id5385_)
                            (cons _eid5388_ '())))))))
        (let* ((_g52665294_
                (lambda (_g52675291_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52675291_)))
               (_g52655382_
                (lambda (_g52675297_)
                  (if (gx#stx-pair? _g52675297_)
                      (let ((_e52705299_ (gx#stx-e _g52675297_)))
                        (let ((_hd52715302_ (##car _e52705299_))
                              (_tl52725304_ (##cdr _e52705299_)))
                          (if (gx#stx-pair/null? _tl52725304_)
                              (let ((_g14647_
                                     (gx#syntax-split-splice _tl52725304_ '0)))
                                (begin
                                  (let ((_g14648_
                                         (if (##values? _g14647_)
                                             (##vector-length _g14647_)
                                             1)))
                                    (if (not (##fx= _g14648_ 2))
                                        (error "Context expects 2 values"
                                               _g14648_)))
                                  (let ((_target52735307_
                                         (##vector-ref _g14647_ 0))
                                        (_tl52755309_
                                         (##vector-ref _g14647_ 1)))
                                    (if (gx#stx-null? _tl52755309_)
                                        (letrec ((_loop52765312_
                                                  (lambda (_hd52745315_
                                                           _eid52805317_
                                                           _id52815319_)
                                                    (if (gx#stx-pair?
                                                         _hd52745315_)
                                                        (let ((_e52775322_
                                                               (gx#stx-e
                                                                _hd52745315_)))
                                                          (let ((_lp-hd52785325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e52775322_))
                        (_lp-tl52795327_ (##cdr _e52775322_)))
                    (if (gx#stx-pair? _lp-hd52785325_)
                        (let ((_e52845330_ (gx#stx-e _lp-hd52785325_)))
                          (let ((_hd52855333_ (##car _e52845330_))
                                (_tl52865335_ (##cdr _e52845330_)))
                            (if (gx#stx-pair? _tl52865335_)
                                (let ((_e52875338_ (gx#stx-e _tl52865335_)))
                                  (let ((_hd52885341_ (##car _e52875338_))
                                        (_tl52895343_ (##cdr _e52875338_)))
                                    (if (gx#stx-null? _tl52895343_)
                                        (_loop52765312_
                                         _lp-tl52795327_
                                         (cons _hd52885341_ _eid52805317_)
                                         (cons _hd52855333_ _id52815319_))
                                        (_g52665294_ _g52675297_))))
                                (_g52665294_ _g52675297_))))
                        (_g52665294_ _g52675297_))))
                (let ((_eid52825346_ (reverse _eid52805317_))
                      (_id52835348_ (reverse _id52815319_)))
                  ((lambda (_L5351_ _L5352_)
                     (cons '%#extern
                           (map _generate15264_
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g53675370_ _g53685372_)
                                            (cons _g53675370_ _g53685372_))
                                          '()
                                          _L5352_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g53745377_ _g53755379_)
                                            (cons _g53745377_ _g53755379_))
                                          '()
                                          _L5351_)))))
                   _eid52825346_
                   _id52835348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop52765312_
                                           _target52735307_
                                           '()
                                           '()))
                                        (_g52665294_ _g52675297_)))))
                              (_g52665294_ _g52675297_))))
                      (_g52665294_ _g52675297_)))))
          (_g52655382_ _stx5261_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5051_ _state5052_)
      (letrec ((_generate15054_
                (lambda (_id5256_)
                  (let ((_eid5258_ (gxc#generate-runtime-binding-id _id5256_))
                        (_ident5259_
                         (gxc#generate-runtime-identifier _id5256_)))
                    (cons '%#define-runtime
                          (cons _ident5259_ (cons _eid5258_ '()))))))
               (_generate*5055_
                (lambda (_all5224_)
                  (let* ((_all52255233_ _all5224_)
                         (_else52275241_ (lambda () (cons '%#begin _all5224_)))
                         (_K52295246_ (lambda (_one5244_) _one5244_)))
                    (if (##pair? _all52255233_)
                        (let ((_hd52305249_ (##car _all52255233_))
                              (_tl52315251_ (##cdr _all52255233_)))
                          (let ((_one5254_ _hd52305249_))
                            (if (##null? _tl52315251_)
                                (_K52295246_ _one5254_)
                                (_else52275241_))))
                        (_else52275241_))))))
        (let* ((_g50575074_
                (lambda (_g50585071_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50585071_)))
               (_g50565221_
                (lambda (_g50585077_)
                  (if (gx#stx-pair? _g50585077_)
                      (let ((_e50615079_ (gx#stx-e _g50585077_)))
                        (let ((_hd50625082_ (##car _e50615079_))
                              (_tl50635084_ (##cdr _e50615079_)))
                          (if (gx#stx-pair? _tl50635084_)
                              (let ((_e50645087_ (gx#stx-e _tl50635084_)))
                                (let ((_hd50655090_ (##car _e50645087_))
                                      (_tl50665092_ (##cdr _e50645087_)))
                                  (if (gx#stx-pair? _tl50665092_)
                                      (let ((_e50675095_
                                             (gx#stx-e _tl50665092_)))
                                        (let ((_hd50685098_
                                               (##car _e50675095_))
                                              (_tl50695100_
                                               (##cdr _e50675095_)))
                                          (if (gx#stx-null? _tl50695100_)
                                              ((lambda (_L5103_ _L5104_)
                                                 (let _lp5120_ ((_rest5122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5104_)
                        (_r5123_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((___stx1455414555_
                                                           _rest5122_)
                                                          (_g51285145_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1455414555_))))
                                                     (let ((___kont1455614557_
                                                            (lambda (_L5208_)
                                                              (_lp5120_
                                                               _L5208_
                                                               _r5123_)))
                                                           (___kont1455814559_
                                                            (lambda (_L5181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5182_)
                      (_lp5120_
                       _L5181_
                       (cons (_generate15054_ _L5182_) _r5123_))))
                   (___kont1456014561_
                    (lambda (_L5157_)
                      (_generate*5055_
                       (foldl1 cons
                               (cons (_generate15054_ _L5157_) '())
                               _r5123_))))
                   (___kont1456214563_
                    (lambda () (_generate*5055_ (reverse _r5123_)))))
               (let ((_g51265168_
                      (lambda ()
                        (let ((_L5157_ ___stx1455414555_))
                          (if (gx#identifier? _L5157_)
                              (___kont1456014561_ _L5157_)
                              (___kont1456214563_))))))
                 (if (gx#stx-pair? ___stx1455414555_)
                     (let ((_e51315197_ (gx#stx-e ___stx1455414555_)))
                       (let ((_tl51335202_ (##cdr _e51315197_))
                             (_hd51325200_ (##car _e51315197_)))
                         (if (gx#stx-datum? _hd51325200_)
                             (let ((_e51345205_ (gx#stx-e _hd51325200_)))
                               (if (equal? _e51345205_ '#f)
                                   (___kont1455614557_ _tl51335202_)
                                   (___kont1455814559_
                                    _tl51335202_
                                    _hd51325200_)))
                             (___kont1455814559_ _tl51335202_ _hd51325200_))))
                     (_g51265168_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd50685098_
                                               _hd50655090_)
                                              (_g50575074_ _g50585077_))))
                                      (_g50575074_ _g50585077_))))
                              (_g50575074_ _g50585077_))))
                      (_g50575074_ _g50585077_)))))
          (_g50565221_ _stx5051_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4948_ _state4949_)
      (let* ((_g49514968_
              (lambda (_g49524965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49524965_)))
             (_g49505048_
              (lambda (_g49524971_)
                (if (gx#stx-pair? _g49524971_)
                    (let ((_e49554973_ (gx#stx-e _g49524971_)))
                      (let ((_hd49564976_ (##car _e49554973_))
                            (_tl49574978_ (##cdr _e49554973_)))
                        (if (gx#stx-pair? _tl49574978_)
                            (let ((_e49584981_ (gx#stx-e _tl49574978_)))
                              (let ((_hd49594984_ (##car _e49584981_))
                                    (_tl49604986_ (##cdr _e49584981_)))
                                (if (gx#stx-pair? _tl49604986_)
                                    (let ((_e49614989_
                                           (gx#stx-e _tl49604986_)))
                                      (let ((_hd49624992_ (##car _e49614989_))
                                            (_tl49634994_ (##cdr _e49614989_)))
                                        (if (gx#stx-null? _tl49634994_)
                                            ((lambda (_L4997_ _L4998_)
                                               (let* ((_eid5013_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4998_))
                                                      (_phi5015_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block5017_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4949_
                                                        _phi5015_)))
                                                 (begin
                                                   (let* ((_g50205027_
                                                           (lambda (_g50215024_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50215024_)))
                                                          (_g50195045_
                                                           (lambda (_g50215030_)
                                                             ((lambda (_L5032_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4949_
                           _phi5015_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L5032_ (cons _L4997_ '()))))))
                      _g50215030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50195045_ _eid5013_))
                                                   (if _block5017_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block5017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4998_)
                                             (cons _eid5013_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4998_)
                           (cons _eid5013_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49624992_
                                             _hd49594984_)
                                            (_g49514968_ _g49524971_))))
                                    (_g49514968_ _g49524971_))))
                            (_g49514968_ _g49524971_))))
                    (_g49514968_ _g49524971_)))))
        (_g49505048_ _stx4948_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4880_ _state4881_)
      (let* ((_g48834900_
              (lambda (_g48844897_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48844897_)))
             (_g48824945_
              (lambda (_g48844903_)
                (if (gx#stx-pair? _g48844903_)
                    (let ((_e48874905_ (gx#stx-e _g48844903_)))
                      (let ((_hd48884908_ (##car _e48874905_))
                            (_tl48894910_ (##cdr _e48874905_)))
                        (if (gx#stx-pair? _tl48894910_)
                            (let ((_e48904913_ (gx#stx-e _tl48894910_)))
                              (let ((_hd48914916_ (##car _e48904913_))
                                    (_tl48924918_ (##cdr _e48904913_)))
                                (if (gx#stx-pair? _tl48924918_)
                                    (let ((_e48934921_
                                           (gx#stx-e _tl48924918_)))
                                      (let ((_hd48944924_ (##car _e48934921_))
                                            (_tl48954926_ (##cdr _e48934921_)))
                                        (if (gx#stx-null? _tl48954926_)
                                            ((lambda (_L4929_ _L4930_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4930_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4929_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48944924_
                                             _hd48914916_)
                                            (_g48834900_ _g48844903_))))
                                    (_g48834900_ _g48844903_))))
                            (_g48834900_ _g48844903_))))
                    (_g48834900_ _g48844903_)))))
        (_g48824945_ _stx4880_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4877_ _state4878_)
      (begin
        (gxc#meta-state-add-phi!
         _state4878_
         (gx#current-expander-phi)
         _stx4877_)
        (gxc#generate-meta-define-values% _stx4877_ _state4878_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4874_ _state4875_)
      (begin
        (gxc#meta-state-add-phi!
         _state4875_
         (gx#current-expander-phi)
         _stx4874_)
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
    (lambda _$args4871_
      (apply make-struct-instance gxc#meta-state::t _$args4871_)))
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
    (lambda (_self4868_ _ctx4869_)
      (if (##fx< '4 (##vector-length _self4868_))
          (begin
            (##vector-set!
             _self4868_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4869_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4868_ '2 '1)
            (##vector-set! _self4868_ '3 (make-hash-table-eq))
            (##vector-set! _self4868_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4868_))))
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
    (lambda _$args4743_
      (apply make-struct-instance gxc#meta-state-block::t _$args4743_)))
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
    (lambda (_state4702_ _phi4703_)
      (let* ((_state47044712_ _state4702_)
             (_E47064716_
              (lambda () (error '"No clause matching" _state47044712_)))
             (_K47074725_
              (lambda (_open4719_ _n4720_ _src4721_)
                (if (table-ref _open4719_ _phi4703_ '#f)
                    '#f
                    (let ((_block-ref4723_
                           (string-append
                            _src4721_
                            '"__"
                            (number->string _n4720_))))
                      (begin
                        (##structure-set!
                         _state4702_
                         (fx+ _n4720_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4719_
                         _phi4703_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4703_
                          _n4720_
                          '()))
                        _block-ref4723_))))))
        (if (##structure-instance-of? _state47044712_ 'gxc#meta-state::t)
            (let* ((_e47084728_ (##vector-ref _state47044712_ '1))
                   (_src4731_ _e47084728_)
                   (_e47094733_ (##vector-ref _state47044712_ '2))
                   (_n4736_ _e47094733_)
                   (_e47104738_ (##vector-ref _state47044712_ '3))
                   (_open4741_ _e47104738_))
              (_K47074725_ _open4741_ _n4736_ _src4731_))
            (_E47064716_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4696_ _phi4697_ _stx4698_)
      (let ((_block4700_
             (table-ref
              (##structure-ref _state4696_ '3 gxc#meta-state::t '#f)
              _phi4697_
              '#f)))
        (##structure-set!
         _block4700_
         (cons _stx4698_
               (##structure-ref _block4700_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4691_)
      (begin
        (##structure-set!
         _state4691_
         (hash-fold
          (lambda (_g14649_ _block4693_ _r4694_) (cons _block4693_ _r4694_))
          (##structure-ref _state4691_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4691_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4691_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4643_)
      (begin
        (gxc#meta-state-end-phi! _state4643_)
        (foldl1 (lambda (_block4645_ _r4646_)
                  (let* ((_block46474656_ _block4645_)
                         (_E46494660_
                          (lambda ()
                            (error '"No clause matching" _block46474656_)))
                         (_K46504668_
                          (lambda (_code4663_ _n4664_ _phi4665_ _ctx4666_)
                            (if (null? _code4663_)
                                _r4646_
                                (cons (cons _ctx4666_
                                            (cons _phi4665_
                                                  (cons _n4664_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4663_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4646_)))))
                    (if (##structure-instance-of?
                         _block46474656_
                         'gxc#meta-state-block::t)
                        (let* ((_e46514671_ (##vector-ref _block46474656_ '1))
                               (_ctx4674_ _e46514671_)
                               (_e46524676_ (##vector-ref _block46474656_ '2))
                               (_phi4679_ _e46524676_)
                               (_e46534681_ (##vector-ref _block46474656_ '3))
                               (_n4684_ _e46534681_)
                               (_e46544686_ (##vector-ref _block46474656_ '4))
                               (_code4689_ _e46544686_))
                          (_K46504668_ _code4689_ _n4684_ _phi4679_ _ctx4674_))
                        (_E46494660_))))
                '()
                (##structure-ref _state4643_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4639_)
      (let ((_ht4641_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4639_ _ht4641_)
          _ht4641_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4582_ _ht4583_)
      (let* ((_g45854598_
              (lambda (_g45864595_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45864595_)))
             (_g45844636_
              (lambda (_g45864601_)
                (if (gx#stx-pair? _g45864601_)
                    (let ((_e45884603_ (gx#stx-e _g45864601_)))
                      (let ((_hd45894606_ (##car _e45884603_))
                            (_tl45904608_ (##cdr _e45884603_)))
                        (if (gx#stx-pair? _tl45904608_)
                            (let ((_e45914611_ (gx#stx-e _tl45904608_)))
                              (let ((_hd45924614_ (##car _e45914611_))
                                    (_tl45934616_ (##cdr _e45914611_)))
                                (if (gx#stx-null? _tl45934616_)
                                    ((lambda (_L4619_)
                                       (let* ((_bind4631_
                                               (gx#resolve-identifier__0
                                                _L4619_))
                                              (_eid4633_
                                               (if _bind4631_
                                                   (##structure-ref
                                                    _bind4631_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4619_))))
                                         (table-set!
                                          _ht4583_
                                          _eid4633_
                                          _eid4633_)))
                                     _hd45924614_)
                                    (_g45854598_ _g45864601_))))
                            (_g45854598_ _g45864601_))))
                    (_g45854598_ _g45864601_)))))
        (_g45844636_ _stx4582_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4509_ _ht4510_)
      (let* ((_g45124529_
              (lambda (_g45134526_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45134526_)))
             (_g45114579_
              (lambda (_g45134532_)
                (if (gx#stx-pair? _g45134532_)
                    (let ((_e45164534_ (gx#stx-e _g45134532_)))
                      (let ((_hd45174537_ (##car _e45164534_))
                            (_tl45184539_ (##cdr _e45164534_)))
                        (if (gx#stx-pair? _tl45184539_)
                            (let ((_e45194542_ (gx#stx-e _tl45184539_)))
                              (let ((_hd45204545_ (##car _e45194542_))
                                    (_tl45214547_ (##cdr _e45194542_)))
                                (if (gx#stx-pair? _tl45214547_)
                                    (let ((_e45224550_
                                           (gx#stx-e _tl45214547_)))
                                      (let ((_hd45234553_ (##car _e45224550_))
                                            (_tl45244555_ (##cdr _e45224550_)))
                                        (if (gx#stx-null? _tl45244555_)
                                            ((lambda (_L4558_ _L4559_)
                                               (let* ((_bind4574_
                                                       (gx#resolve-identifier__0
                                                        _L4559_))
                                                      (_eid4576_
                                                       (if _bind4574_
                                                           (##structure-ref
                                                            _bind4574_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4559_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4510_
                                                    _eid4576_
                                                    _eid4576_)
                                                   (gxc#compile-e
                                                    _L4558_
                                                    _ht4510_))))
                                             _hd45234553_
                                             _hd45204545_)
                                            (_g45124529_ _g45134532_))))
                                    (_g45124529_ _g45134532_))))
                            (_g45124529_ _g45134532_))))
                    (_g45124529_ _g45134532_)))))
        (_g45114579_ _stx4509_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4471_)
      (let* ((_g44734483_
              (lambda (_g44744480_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44744480_)))
             (_g44724506_
              (lambda (_g44744486_)
                (if (gx#stx-pair? _g44744486_)
                    (let ((_e44764488_ (gx#stx-e _g44744486_)))
                      (let ((_hd44774491_ (##car _e44764488_))
                            (_tl44784493_ (##cdr _e44764488_)))
                        ((lambda (_L4496_) (ormap1 gxc#compile-e _L4496_))
                         _tl44784493_)))
                    (_g44734483_ _g44744486_)))))
        (_g44724506_ _stx4471_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4433_)
      (let* ((_g44354445_
              (lambda (_g44364442_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44364442_)))
             (_g44344468_
              (lambda (_g44364448_)
                (if (gx#stx-pair? _g44364448_)
                    (let ((_e44384450_ (gx#stx-e _g44364448_)))
                      (let ((_hd44394453_ (##car _e44384450_))
                            (_tl44404455_ (##cdr _e44384450_)))
                        ((lambda (_L4458_) (gxc#compile-e (last _L4458_)))
                         _tl44404455_)))
                    (_g44354445_ _g44364448_)))))
        (_g44344468_ _stx4433_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4366_)
      (let* ((_g43684385_
              (lambda (_g43694382_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43694382_)))
             (_g43674430_
              (lambda (_g43694388_)
                (if (gx#stx-pair? _g43694388_)
                    (let ((_e43724390_ (gx#stx-e _g43694388_)))
                      (let ((_hd43734393_ (##car _e43724390_))
                            (_tl43744395_ (##cdr _e43724390_)))
                        (if (gx#stx-pair? _tl43744395_)
                            (let ((_e43754398_ (gx#stx-e _tl43744395_)))
                              (let ((_hd43764401_ (##car _e43754398_))
                                    (_tl43774403_ (##cdr _e43754398_)))
                                (if (gx#stx-pair? _tl43774403_)
                                    (let ((_e43784406_
                                           (gx#stx-e _tl43774403_)))
                                      (let ((_hd43794409_ (##car _e43784406_))
                                            (_tl43804411_ (##cdr _e43784406_)))
                                        (if (gx#stx-null? _tl43804411_)
                                            ((lambda (_L4414_ _L4415_)
                                               (gxc#compile-e _L4414_))
                                             _hd43794409_
                                             _hd43764401_)
                                            (_g43684385_ _g43694388_))))
                                    (_g43684385_ _g43694388_))))
                            (_g43684385_ _g43694388_))))
                    (_g43684385_ _g43694388_)))))
        (_g43674430_ _stx4366_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4299_)
      (let* ((_g43014318_
              (lambda (_g43024315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43024315_)))
             (_g43004363_
              (lambda (_g43024321_)
                (if (gx#stx-pair? _g43024321_)
                    (let ((_e43054323_ (gx#stx-e _g43024321_)))
                      (let ((_hd43064326_ (##car _e43054323_))
                            (_tl43074328_ (##cdr _e43054323_)))
                        (if (gx#stx-pair? _tl43074328_)
                            (let ((_e43084331_ (gx#stx-e _tl43074328_)))
                              (let ((_hd43094334_ (##car _e43084331_))
                                    (_tl43104336_ (##cdr _e43084331_)))
                                (if (gx#stx-pair? _tl43104336_)
                                    (let ((_e43114339_
                                           (gx#stx-e _tl43104336_)))
                                      (let ((_hd43124342_ (##car _e43114339_))
                                            (_tl43134344_ (##cdr _e43114339_)))
                                        (if (gx#stx-null? _tl43134344_)
                                            ((lambda (_L4347_ _L4348_)
                                               (gxc#compile-e _L4347_))
                                             _hd43124342_
                                             _hd43094334_)
                                            (_g43014318_ _g43024321_))))
                                    (_g43014318_ _g43024321_))))
                            (_g43014318_ _g43024321_))))
                    (_g43014318_ _g43024321_)))))
        (_g43004363_ _stx4299_))))
  (define gxc#count-values-single% (lambda (_stx4297_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4215_)
      (let* ((_g42174236_
              (lambda (_g42184233_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42184233_)))
             (_g42164294_
              (lambda (_g42184239_)
                (if (gx#stx-pair? _g42184239_)
                    (let ((_e42204241_ (gx#stx-e _g42184239_)))
                      (let ((_hd42214244_ (##car _e42204241_))
                            (_tl42224246_ (##cdr _e42204241_)))
                        (if (gx#stx-pair/null? _tl42224246_)
                            (let ((_g14650_
                                   (gx#syntax-split-splice _tl42224246_ '0)))
                              (begin
                                (let ((_g14651_
                                       (if (##values? _g14650_)
                                           (##vector-length _g14650_)
                                           1)))
                                  (if (not (##fx= _g14651_ 2))
                                      (error "Context expects 2 values"
                                             _g14651_)))
                                (let ((_target42234249_
                                       (##vector-ref _g14650_ 0))
                                      (_tl42254251_ (##vector-ref _g14650_ 1)))
                                  (if (gx#stx-null? _tl42254251_)
                                      (letrec ((_loop42264254_
                                                (lambda (_hd42244257_
                                                         _expr42304259_)
                                                  (if (gx#stx-pair?
                                                       _hd42244257_)
                                                      (let ((_e42274262_
                                                             (gx#stx-e
                                                              _hd42244257_)))
                                                        (let ((_lp-hd42284265_
                                                               (##car _e42274262_))
                                                              (_lp-tl42294267_
                                                               (##cdr _e42274262_)))
                                                          (_loop42264254_
                                                           _lp-tl42294267_
                                                           (cons _lp-hd42284265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr42304259_))))
              (let ((_expr42314270_ (reverse _expr42304259_)))
                ((lambda (_L4273_)
                   (gxc#compile-e
                    (last (begin
                            '#!void
                            (foldr1 (lambda (_g42864289_ _g42874291_)
                                      (cons _g42864289_ _g42874291_))
                                    '()
                                    _L4273_)))))
                 _expr42314270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop42264254_ _target42234249_ '()))
                                      (_g42174236_ _g42184239_)))))
                            (_g42174236_ _g42184239_))))
                    (_g42174236_ _g42184239_)))))
        (_g42164294_ _stx4215_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4148_)
      (let* ((_g41504167_
              (lambda (_g41514164_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41514164_)))
             (_g41494212_
              (lambda (_g41514170_)
                (if (gx#stx-pair? _g41514170_)
                    (let ((_e41544172_ (gx#stx-e _g41514170_)))
                      (let ((_hd41554175_ (##car _e41544172_))
                            (_tl41564177_ (##cdr _e41544172_)))
                        (if (gx#stx-pair? _tl41564177_)
                            (let ((_e41574180_ (gx#stx-e _tl41564177_)))
                              (let ((_hd41584183_ (##car _e41574180_))
                                    (_tl41594185_ (##cdr _e41574180_)))
                                (if (gx#stx-pair? _tl41594185_)
                                    (let ((_e41604188_
                                           (gx#stx-e _tl41594185_)))
                                      (let ((_hd41614191_ (##car _e41604188_))
                                            (_tl41624193_ (##cdr _e41604188_)))
                                        (if (gx#stx-null? _tl41624193_)
                                            ((lambda (_L4196_ _L4197_)
                                               (gxc#compile-e _L4196_))
                                             _hd41614191_
                                             _hd41584183_)
                                            (_g41504167_ _g41514170_))))
                                    (_g41504167_ _g41514170_))))
                            (_g41504167_ _g41514170_))))
                    (_g41504167_ _g41514170_)))))
        (_g41494212_ _stx4148_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4081_)
      (let* ((_g40834100_
              (lambda (_g40844097_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40844097_)))
             (_g40824145_
              (lambda (_g40844103_)
                (if (gx#stx-pair? _g40844103_)
                    (let ((_e40874105_ (gx#stx-e _g40844103_)))
                      (let ((_hd40884108_ (##car _e40874105_))
                            (_tl40894110_ (##cdr _e40874105_)))
                        (if (gx#stx-pair? _tl40894110_)
                            (let ((_e40904113_ (gx#stx-e _tl40894110_)))
                              (let ((_hd40914116_ (##car _e40904113_))
                                    (_tl40924118_ (##cdr _e40904113_)))
                                (if (gx#stx-pair? _tl40924118_)
                                    (let ((_e40934121_
                                           (gx#stx-e _tl40924118_)))
                                      (let ((_hd40944124_ (##car _e40934121_))
                                            (_tl40954126_ (##cdr _e40934121_)))
                                        (if (gx#stx-null? _tl40954126_)
                                            ((lambda (_L4129_ _L4130_)
                                               (gxc#compile-e _L4129_))
                                             _hd40944124_
                                             _hd40914116_)
                                            (_g40834100_ _g40844103_))))
                                    (_g40834100_ _g40844103_))))
                            (_g40834100_ _g40844103_))))
                    (_g40834100_ _g40844103_)))))
        (_g40824145_ _stx4081_))))
  (define gxc#count-values-call%
    (lambda (_stx3948_)
      (let* ((___stx1458414585_ _stx3948_)
             (_g39513980_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1458414585_))))
        (let ((___kont1458614587_
               (lambda (_L4048_ _L4049_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g40704073_ _g40714075_)
                                     (cons _g40704073_ _g40714075_))
                                   '()
                                   _L4048_)))))
              (___kont1459014591_ (lambda () '#f)))
          (let ((___match1462914630_
                 (lambda (_e39553992_
                          _hd39563995_
                          _tl39573997_
                          _e39584000_
                          _hd39594003_
                          _tl39604005_
                          _e39614008_
                          _hd39624011_
                          _tl39634013_
                          _e39644016_
                          _hd39654019_
                          _tl39664021_
                          ___splice1458814589_
                          _target39674024_
                          _tl39694026_)
                   (letrec ((_loop39704029_
                             (lambda (_hd39684032_ _rand39744034_)
                               (if (gx#stx-pair? _hd39684032_)
                                   (let ((_e39714037_ (gx#stx-e _hd39684032_)))
                                     (let ((_lp-tl39734042_
                                            (##cdr _e39714037_))
                                           (_lp-hd39724040_
                                            (##car _e39714037_)))
                                       (_loop39704029_
                                        _lp-tl39734042_
                                        (cons _lp-hd39724040_
                                              _rand39744034_))))
                                   (let ((_rand39754045_
                                          (reverse _rand39744034_)))
                                     (let ((_L4048_ _rand39754045_)
                                           (_L4049_ _hd39654019_))
                                       (if (gx#free-identifier=?
                                            _L4049_
                                            'values)
                                           (___kont1458614587_ _L4048_ _L4049_)
                                           (___kont1459014591_))))))))
                     (_loop39704029_ _target39674024_ '())))))
            (if (gx#stx-pair? ___stx1458414585_)
                (let ((_e39553992_ (gx#stx-e ___stx1458414585_)))
                  (let ((_tl39573997_ (##cdr _e39553992_))
                        (_hd39563995_ (##car _e39553992_)))
                    (if (gx#stx-pair? _tl39573997_)
                        (let ((_e39584000_ (gx#stx-e _tl39573997_)))
                          (let ((_tl39604005_ (##cdr _e39584000_))
                                (_hd39594003_ (##car _e39584000_)))
                            (if (gx#stx-pair? _hd39594003_)
                                (let ((_e39614008_ (gx#stx-e _hd39594003_)))
                                  (let ((_tl39634013_ (##cdr _e39614008_))
                                        (_hd39624011_ (##car _e39614008_)))
                                    (if (gx#identifier? _hd39624011_)
                                        (if (gx#stx-eq? '%#ref _hd39624011_)
                                            (if (gx#stx-pair? _tl39634013_)
                                                (let ((_e39644016_
                                                       (gx#stx-e
                                                        _tl39634013_)))
                                                  (let ((_tl39664021_
                                                         (##cdr _e39644016_))
                                                        (_hd39654019_
                                                         (##car _e39644016_)))
                                                    (if (gx#stx-null?
                                                         _tl39664021_)
                                                        (if (gx#stx-pair/null?
                                                             _tl39604005_)
                                                            (let ((___splice1458814589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl39604005_ '0)))
                      (let ((_tl39694026_
                             (##vector-ref ___splice1458814589_ '1))
                            (_target39674024_
                             (##vector-ref ___splice1458814589_ '0)))
                        (if (gx#stx-null? _tl39694026_)
                            (___match1462914630_
                             _e39553992_
                             _hd39563995_
                             _tl39573997_
                             _e39584000_
                             _hd39594003_
                             _tl39604005_
                             _e39614008_
                             _hd39624011_
                             _tl39634013_
                             _e39644016_
                             _hd39654019_
                             _tl39664021_
                             ___splice1458814589_
                             _target39674024_
                             _tl39694026_)
                            (___kont1459014591_))))
                    (___kont1459014591_))
                (___kont1459014591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1459014591_))
                                            (___kont1459014591_))
                                        (___kont1459014591_))))
                                (___kont1459014591_))))
                        (___kont1459014591_))))
                (___kont1459014591_)))))))
  (define gxc#count-values-if%
    (lambda (_stx3852_)
      (let* ((_g38543875_
              (lambda (_g38553872_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38553872_)))
             (_g38533945_
              (lambda (_g38553878_)
                (if (gx#stx-pair? _g38553878_)
                    (let ((_e38593880_ (gx#stx-e _g38553878_)))
                      (let ((_hd38603883_ (##car _e38593880_))
                            (_tl38613885_ (##cdr _e38593880_)))
                        (if (gx#stx-pair? _tl38613885_)
                            (let ((_e38623888_ (gx#stx-e _tl38613885_)))
                              (let ((_hd38633891_ (##car _e38623888_))
                                    (_tl38643893_ (##cdr _e38623888_)))
                                (if (gx#stx-pair? _tl38643893_)
                                    (let ((_e38653896_
                                           (gx#stx-e _tl38643893_)))
                                      (let ((_hd38663899_ (##car _e38653896_))
                                            (_tl38673901_ (##cdr _e38653896_)))
                                        (if (gx#stx-pair? _tl38673901_)
                                            (let ((_e38683904_
                                                   (gx#stx-e _tl38673901_)))
                                              (let ((_hd38693907_
                                                     (##car _e38683904_))
                                                    (_tl38703909_
                                                     (##cdr _e38683904_)))
                                                (if (gx#stx-null? _tl38703909_)
                                                    ((lambda (_L3912_
                                                              _L3913_
                                                              _L3914_)
                                                       (let ((_c139313933_
                                                              (gxc#compile-e
                                                               _L3913_)))
                                                         (if _c139313933_
                                                             (let* ((_c13936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c139313933_)
                            (_c239373939_ (gxc#compile-e _L3912_)))
                       (if _c239373939_
                           (let ((_c23942_ _c239373939_))
                             (if (fx= _c13936_ _c23942_) _c13936_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38693907_
                                                     _hd38663899_
                                                     _hd38633891_)
                                                    (_g38543875_
                                                     _g38553878_))))
                                            (_g38543875_ _g38553878_))))
                                    (_g38543875_ _g38553878_))))
                            (_g38543875_ _g38553878_))))
                    (_g38543875_ _g38553878_)))))
        (_g38533945_ _stx3852_)))))
