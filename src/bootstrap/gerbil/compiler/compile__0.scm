(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx11322_ . _args11323_)
      (let* ((_g1132511335_
              (lambda (_g1132611332_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1132611332_)))
             (_g1132411363_
              (lambda (_g1132611338_)
                (if (gx#stx-pair? _g1132611338_)
                    (let ((_e1132811340_ (gx#stx-e _g1132611338_)))
                      (let ((_hd1132911343_ (##car _e1132811340_))
                            (_tl1133011345_ (##cdr _e1132811340_)))
                        ((lambda (_L11348_)
                           (let ((_$e11358_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L11348_)
                                   '#f)))
                             (if _$e11358_
                                 ((lambda (_method11361_)
                                    (apply _method11361_
                                           _stx11322_
                                           _args11323_))
                                  _$e11358_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx11322_
                                  _L11348_))))
                         _hd1132911343_)))
                    (_g1132511335_ _g1132611338_)))))
        (_g1132411363_ _stx11322_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl11319_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11319_ '%#begin-annotation void)
           (table-set! _tbl11319_ '%#lambda void)
           (table-set! _tbl11319_ '%#case-lambda void)
           (table-set! _tbl11319_ '%#let-values void)
           (table-set! _tbl11319_ '%#letrec-values void)
           (table-set! _tbl11319_ '%#letrec*-values void)
           (table-set! _tbl11319_ '%#quote void)
           (table-set! _tbl11319_ '%#quote-syntax void)
           (table-set! _tbl11319_ '%#call void)
           (table-set! _tbl11319_ '%#if void)
           (table-set! _tbl11319_ '%#ref void)
           (table-set! _tbl11319_ '%#set! void)
           (table-set! _tbl11319_ '%#struct-instance? void)
           (table-set! _tbl11319_ '%#struct-direct-instance? void)
           (table-set! _tbl11319_ '%#struct-ref void)
           (table-set! _tbl11319_ '%#struct-set! void)
           (table-set! _tbl11319_ '%#struct-direct-ref void)
           (table-set! _tbl11319_ '%#struct-direct-set! void)
           (table-set! _tbl11319_ '%#struct-unchecked-ref void)
           (table-set! _tbl11319_ '%#struct-unchecked-set! void)
           _tbl11319_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11315_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11315_ '%#begin void)
           (table-set! _tbl11315_ '%#begin-syntax void)
           (table-set! _tbl11315_ '%#begin-foreign void)
           (table-set! _tbl11315_ '%#module void)
           (table-set! _tbl11315_ '%#import void)
           (table-set! _tbl11315_ '%#export void)
           (table-set! _tbl11315_ '%#provide void)
           (table-set! _tbl11315_ '%#extern void)
           (table-set! _tbl11315_ '%#define-values void)
           (table-set! _tbl11315_ '%#define-syntax void)
           (table-set! _tbl11315_ '%#define-alias void)
           (table-set! _tbl11315_ '%#declare void)
           _tbl11315_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11311_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11311_ (force gxc#&void-special-form))
           (hash-copy! _tbl11311_ (force gxc#&void-expression))
           _tbl11311_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11307_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11307_ '%#begin-annotation false)
           (table-set! _tbl11307_ '%#lambda false)
           (table-set! _tbl11307_ '%#case-lambda false)
           (table-set! _tbl11307_ '%#let-values false)
           (table-set! _tbl11307_ '%#letrec-values false)
           (table-set! _tbl11307_ '%#letrec*-values false)
           (table-set! _tbl11307_ '%#quote false)
           (table-set! _tbl11307_ '%#quote-syntax false)
           (table-set! _tbl11307_ '%#call false)
           (table-set! _tbl11307_ '%#if false)
           (table-set! _tbl11307_ '%#ref false)
           (table-set! _tbl11307_ '%#set! false)
           (table-set! _tbl11307_ '%#struct-instance? false)
           (table-set! _tbl11307_ '%#struct-direct-instance? false)
           (table-set! _tbl11307_ '%#struct-ref false)
           (table-set! _tbl11307_ '%#struct-set! false)
           (table-set! _tbl11307_ '%#struct-direct-ref false)
           (table-set! _tbl11307_ '%#struct-direct-set! false)
           (table-set! _tbl11307_ '%#struct-unchecked-ref false)
           (table-set! _tbl11307_ '%#struct-unchecked-set! false)
           _tbl11307_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11303_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11303_ '%#begin false)
           (table-set! _tbl11303_ '%#begin-syntax false)
           (table-set! _tbl11303_ '%#begin-foreign false)
           (table-set! _tbl11303_ '%#module false)
           (table-set! _tbl11303_ '%#import false)
           (table-set! _tbl11303_ '%#export false)
           (table-set! _tbl11303_ '%#provide false)
           (table-set! _tbl11303_ '%#extern false)
           (table-set! _tbl11303_ '%#define-values false)
           (table-set! _tbl11303_ '%#define-syntax false)
           (table-set! _tbl11303_ '%#define-alias false)
           (table-set! _tbl11303_ '%#declare false)
           _tbl11303_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl11299_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11299_ (force gxc#&false-special-form))
           (hash-copy! _tbl11299_ (force gxc#&false-expression))
           _tbl11299_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl11295_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11295_ (force gxc#&void-expression))
           (hash-copy! _tbl11295_ (force gxc#&void-special-form))
           (table-set! _tbl11295_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11295_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11295_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11295_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11295_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11295_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11288_ . _args11290_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11288_ _args11290_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11285_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11285_ (force gxc#&void))
           (table-set! _tbl11285_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11285_ '%#module gxc#lift-modules-module%)
           _tbl11285_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11278_ . _args11280_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11278_ _args11280_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11275_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11275_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11275_ '%#begin-syntax false)
           (table-set! _tbl11275_ '%#begin-foreign true)
           (table-set! _tbl11275_ '%#begin-annotation true)
           (table-set! _tbl11275_ '%#module false)
           (table-set! _tbl11275_ '%#import false)
           (table-set! _tbl11275_ '%#export false)
           (table-set! _tbl11275_ '%#provide false)
           (table-set! _tbl11275_ '%#extern false)
           (table-set! _tbl11275_ '%#define-values true)
           (table-set! _tbl11275_ '%#define-syntax false)
           (table-set! _tbl11275_ '%#define-alias false)
           (table-set! _tbl11275_ '%#declare false)
           (table-set! _tbl11275_ '%#lambda true)
           (table-set! _tbl11275_ '%#case-lambda true)
           (table-set! _tbl11275_ '%#let-values true)
           (table-set! _tbl11275_ '%#letrec-values true)
           (table-set! _tbl11275_ '%#letrec*-values true)
           (table-set! _tbl11275_ '%#quote true)
           (table-set! _tbl11275_ '%#call true)
           (table-set! _tbl11275_ '%#if true)
           (table-set! _tbl11275_ '%#ref true)
           (table-set! _tbl11275_ '%#set! true)
           (table-set! _tbl11275_ '%#struct-instance? true)
           (table-set! _tbl11275_ '%#struct-direct-instance? true)
           (table-set! _tbl11275_ '%#struct-ref true)
           (table-set! _tbl11275_ '%#struct-set! true)
           (table-set! _tbl11275_ '%#struct-direct-ref true)
           (table-set! _tbl11275_ '%#struct-direct-set! true)
           (table-set! _tbl11275_ '%#struct-unchecked-ref true)
           (table-set! _tbl11275_ '%#struct-unchecked-set! true)
           _tbl11275_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11268_ . _args11270_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11268_ _args11270_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11265_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11265_ (force gxc#&false))
           (table-set! _tbl11265_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11265_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11265_ '%#lambda values)
           (table-set! _tbl11265_ '%#case-lambda values)
           (table-set!
            _tbl11265_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11265_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11265_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11265_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11258_ . _args11260_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11258_ _args11260_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11255_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11255_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11255_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11255_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11255_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11251_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11251_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11251_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11251_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11251_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11244_ . _args11246_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11244_ _args11246_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11241_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11241_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11241_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11241_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11241_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11241_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11241_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11241_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11241_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11241_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11241_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11241_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11241_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl11241_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11241_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11241_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11241_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11241_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11241_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11241_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11241_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11241_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11241_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11241_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11241_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11241_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11234_ . _args11236_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11234_ _args11236_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11231_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11231_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11231_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl11231_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11231_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11224_ . _args11226_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11224_ _args11226_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11221_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11221_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11221_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11221_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11221_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11221_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11221_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11221_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11221_ '%#quote void)
           (table-set! _tbl11221_ '%#quote-syntax void)
           (table-set! _tbl11221_ '%#call gxc#collect-operands)
           (table-set! _tbl11221_ '%#if gxc#collect-operands)
           (table-set! _tbl11221_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11221_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11221_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11221_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11221_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11221_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11221_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11221_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11221_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11221_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11221_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11214_ . _args11216_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11214_ _args11216_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11211_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11211_ (force gxc#&void-expression))
           (table-set! _tbl11211_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11211_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11211_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11211_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11211_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11211_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11211_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11211_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11211_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11211_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11211_ '%#begin-foreign void)
           (table-set! _tbl11211_ '%#declare void)
           _tbl11211_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11204_ . _args11206_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11204_ _args11206_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11201_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11201_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11201_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11201_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11201_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11201_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11201_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11201_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11201_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11201_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11201_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11201_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11201_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11201_ '%#declare void)
           _tbl11201_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11194_ . _args11196_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11194_ _args11196_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11151_ . _args11152_)
      (let* ((_g1115411164_
              (lambda (_g1115511161_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1115511161_)))
             (_g1115311191_
              (lambda (_g1115511167_)
                (if (gx#stx-pair? _g1115511167_)
                    (let ((_e1115711169_ (gx#stx-e _g1115511167_)))
                      (let ((_hd1115811172_ (##car _e1115711169_))
                            (_tl1115911174_ (##cdr _e1115711169_)))
                        ((lambda (_L11177_)
                           (for-each
                            (lambda (_g1118611188_)
                              (apply gxc#compile-e _g1118611188_ _args11152_))
                            (gx#stx-e _L11177_)))
                         _tl1115911174_)))
                    (_g1115411164_ _g1115511167_)))))
        (_g1115311191_ _stx11151_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11107_ . _args11108_)
      (let* ((_g1111011120_
              (lambda (_g1111111117_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1111111117_)))
             (_g1110911148_
              (lambda (_g1111111123_)
                (if (gx#stx-pair? _g1111111123_)
                    (let ((_e1111311125_ (gx#stx-e _g1111111123_)))
                      (let ((_hd1111411128_ (##car _e1111311125_))
                            (_tl1111511130_ (##cdr _e1111311125_)))
                        ((lambda (_L11133_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1114311145_)
                                 (apply gxc#compile-e
                                        _g1114311145_
                                        _args11108_))
                               (gx#stx-e _L11133_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1111511130_)))
                    (_g1111011120_ _g1111111123_)))))
        (_g1110911148_ _stx11107_))))
  (define gxc#collect-module%
    (lambda (_stx11049_ . _args11050_)
      (let* ((_g1105211066_
              (lambda (_g1105311063_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1105311063_)))
             (_g1105111104_
              (lambda (_g1105311069_)
                (if (gx#stx-pair? _g1105311069_)
                    (let ((_e1105611071_ (gx#stx-e _g1105311069_)))
                      (let ((_hd1105711074_ (##car _e1105611071_))
                            (_tl1105811076_ (##cdr _e1105611071_)))
                        (if (gx#stx-pair? _tl1105811076_)
                            (let ((_e1105911079_ (gx#stx-e _tl1105811076_)))
                              (let ((_hd1106011082_ (##car _e1105911079_))
                                    (_tl1106111084_ (##cdr _e1105911079_)))
                                ((lambda (_L11087_ _L11088_)
                                   (let ((_ctx11101_
                                          (gx#syntax-local-e__0 _L11088_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11101_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11050_))
                                      gx#current-expander-context
                                      _ctx11101_)))
                                 _tl1106111084_
                                 _hd1106011082_)))
                            (_g1105211066_ _g1105311069_))))
                    (_g1105211066_ _g1105311069_)))))
        (_g1105111104_ _stx11049_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx10981_ . _args10982_)
      (let* ((_g1098411001_
              (lambda (_g1098510998_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1098510998_)))
             (_g1098311046_
              (lambda (_g1098511004_)
                (if (gx#stx-pair? _g1098511004_)
                    (let ((_e1098811006_ (gx#stx-e _g1098511004_)))
                      (let ((_hd1098911009_ (##car _e1098811006_))
                            (_tl1099011011_ (##cdr _e1098811006_)))
                        (if (gx#stx-pair? _tl1099011011_)
                            (let ((_e1099111014_ (gx#stx-e _tl1099011011_)))
                              (let ((_hd1099211017_ (##car _e1099111014_))
                                    (_tl1099311019_ (##cdr _e1099111014_)))
                                (if (gx#stx-pair? _tl1099311019_)
                                    (let ((_e1099411022_
                                           (gx#stx-e _tl1099311019_)))
                                      (let ((_hd1099511025_
                                             (##car _e1099411022_))
                                            (_tl1099611027_
                                             (##cdr _e1099411022_)))
                                        (if (gx#stx-null? _tl1099611027_)
                                            ((lambda (_L11030_ _L11031_)
                                               (apply gxc#compile-e
                                                      _L11030_
                                                      _args10982_))
                                             _hd1099511025_
                                             _hd1099211017_)
                                            (_g1098411001_ _g1098511004_))))
                                    (_g1098411001_ _g1098511004_))))
                            (_g1098411001_ _g1098511004_))))
                    (_g1098411001_ _g1098511004_)))))
        (_g1098311046_ _stx10981_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10913_ . _args10914_)
      (let* ((_g1091610933_
              (lambda (_g1091710930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1091710930_)))
             (_g1091510978_
              (lambda (_g1091710936_)
                (if (gx#stx-pair? _g1091710936_)
                    (let ((_e1092010938_ (gx#stx-e _g1091710936_)))
                      (let ((_hd1092110941_ (##car _e1092010938_))
                            (_tl1092210943_ (##cdr _e1092010938_)))
                        (if (gx#stx-pair? _tl1092210943_)
                            (let ((_e1092310946_ (gx#stx-e _tl1092210943_)))
                              (let ((_hd1092410949_ (##car _e1092310946_))
                                    (_tl1092510951_ (##cdr _e1092310946_)))
                                (if (gx#stx-pair? _tl1092510951_)
                                    (let ((_e1092610954_
                                           (gx#stx-e _tl1092510951_)))
                                      (let ((_hd1092710957_
                                             (##car _e1092610954_))
                                            (_tl1092810959_
                                             (##cdr _e1092610954_)))
                                        (if (gx#stx-null? _tl1092810959_)
                                            ((lambda (_L10962_ _L10963_)
                                               (apply gxc#compile-e
                                                      _L10962_
                                                      _args10914_))
                                             _hd1092710957_
                                             _hd1092410949_)
                                            (_g1091610933_ _g1091710936_))))
                                    (_g1091610933_ _g1091710936_))))
                            (_g1091610933_ _g1091710936_))))
                    (_g1091610933_ _g1091710936_)))))
        (_g1091510978_ _stx10913_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10795_ . _args10796_)
      (let* ((_g1079810826_
              (lambda (_g1079910823_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1079910823_)))
             (_g1079710910_
              (lambda (_g1079910829_)
                (if (gx#stx-pair? _g1079910829_)
                    (let ((_e1080210831_ (gx#stx-e _g1079910829_)))
                      (let ((_hd1080310834_ (##car _e1080210831_))
                            (_tl1080410836_ (##cdr _e1080210831_)))
                        (if (gx#stx-pair/null? _tl1080410836_)
                            (if (fx>= (gx#stx-length _tl1080410836_) '0)
                                (let ((_g11365_
                                       (gx#syntax-split-splice
                                        _tl1080410836_
                                        '0)))
                                  (begin
                                    (let ((_g11366_ (values-count _g11365_)))
                                      (if (not (fx= _g11366_ 2))
                                          (error "Context expects 2 values"
                                                 _g11366_)))
                                    (let ((_target1080510839_
                                           (values-ref _g11365_ 0))
                                          (_tl1080710841_
                                           (values-ref _g11365_ 1)))
                                      (if (gx#stx-null? _tl1080710841_)
                                          (letrec ((_loop1080810844_
                                                    (lambda (_hd1080610847_
                                                             _body1081210849_
                                                             _hd1081310851_)
                                                      (if (gx#stx-pair?
                                                           _hd1080610847_)
                                                          (let ((_e1080910854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1080610847_)))
                    (let ((_lp-hd1081010857_ (##car _e1080910854_))
                          (_lp-tl1081110859_ (##cdr _e1080910854_)))
                      (if (gx#stx-pair? _lp-hd1081010857_)
                          (let ((_e1081610862_ (gx#stx-e _lp-hd1081010857_)))
                            (let ((_hd1081710865_ (##car _e1081610862_))
                                  (_tl1081810867_ (##cdr _e1081610862_)))
                              (if (gx#stx-pair? _tl1081810867_)
                                  (let ((_e1081910870_
                                         (gx#stx-e _tl1081810867_)))
                                    (let ((_hd1082010873_
                                           (##car _e1081910870_))
                                          (_tl1082110875_
                                           (##cdr _e1081910870_)))
                                      (if (gx#stx-null? _tl1082110875_)
                                          (_loop1080810844_
                                           _lp-tl1081110859_
                                           (cons _hd1082010873_
                                                 _body1081210849_)
                                           (cons _hd1081710865_
                                                 _hd1081310851_))
                                          (_g1079810826_ _g1079910829_))))
                                  (_g1079810826_ _g1079910829_))))
                          (_g1079810826_ _g1079910829_))))
                  (let ((_body1081410878_ (reverse _body1081210849_))
                        (_hd1081510880_ (reverse _hd1081310851_)))
                    ((lambda (_L10883_ _L10884_)
                       (for-each
                        (lambda (_g1089810900_)
                          (apply gxc#compile-e _g1089810900_ _args10796_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1090210905_ _g1090310907_)
                                    (cons _g1090210905_ _g1090310907_))
                                  '()
                                  _L10883_))))
                     _body1081410878_
                     _hd1081510880_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1080810844_
                                             _target1080510839_
                                             '()
                                             '()))
                                          (_g1079810826_ _g1079910829_)))))
                                (_g1079810826_ _g1079910829_))
                            (_g1079810826_ _g1079910829_))))
                    (_g1079810826_ _g1079910829_)))))
        (_g1079710910_ _stx10795_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx10648_ . _args10649_)
      (let* ((_g1065110686_
              (lambda (_g1065210683_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1065210683_)))
             (_g1065010792_
              (lambda (_g1065210689_)
                (if (gx#stx-pair? _g1065210689_)
                    (let ((_e1065610691_ (gx#stx-e _g1065210689_)))
                      (let ((_hd1065710694_ (##car _e1065610691_))
                            (_tl1065810696_ (##cdr _e1065610691_)))
                        (if (gx#stx-pair? _tl1065810696_)
                            (let ((_e1065910699_ (gx#stx-e _tl1065810696_)))
                              (let ((_hd1066010702_ (##car _e1065910699_))
                                    (_tl1066110704_ (##cdr _e1065910699_)))
                                (if (gx#stx-pair/null? _hd1066010702_)
                                    (if (fx>= (gx#stx-length _hd1066010702_)
                                              '0)
                                        (let ((_g11367_
                                               (gx#syntax-split-splice
                                                _hd1066010702_
                                                '0)))
                                          (begin
                                            (let ((_g11368_
                                                   (values-count _g11367_)))
                                              (if (not (fx= _g11368_ 2))
                                                  (error "Context expects 2 values"
                                                         _g11368_)))
                                            (let ((_target1066210707_
                                                   (values-ref _g11367_ 0))
                                                  (_tl1066410709_
                                                   (values-ref _g11367_ 1)))
                                              (if (gx#stx-null? _tl1066410709_)
                                                  (letrec ((_loop1066510712_
                                                            (lambda (_hd1066310715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1066910717_
                             _hd1067010719_)
                      (if (gx#stx-pair? _hd1066310715_)
                          (let ((_e1066610722_ (gx#stx-e _hd1066310715_)))
                            (let ((_lp-hd1066710725_ (##car _e1066610722_))
                                  (_lp-tl1066810727_ (##cdr _e1066610722_)))
                              (if (gx#stx-pair? _lp-hd1066710725_)
                                  (let ((_e1067310730_
                                         (gx#stx-e _lp-hd1066710725_)))
                                    (let ((_hd1067410733_
                                           (##car _e1067310730_))
                                          (_tl1067510735_
                                           (##cdr _e1067310730_)))
                                      (if (gx#stx-pair? _tl1067510735_)
                                          (let ((_e1067610738_
                                                 (gx#stx-e _tl1067510735_)))
                                            (let ((_hd1067710741_
                                                   (##car _e1067610738_))
                                                  (_tl1067810743_
                                                   (##cdr _e1067610738_)))
                                              (if (gx#stx-null? _tl1067810743_)
                                                  (_loop1066510712_
                                                   _lp-tl1066810727_
                                                   (cons _hd1067710741_
                                                         _expr1066910717_)
                                                   (cons _hd1067410733_
                                                         _hd1067010719_))
                                                  (_g1065110686_
                                                   _g1065210689_))))
                                          (_g1065110686_ _g1065210689_))))
                                  (_g1065110686_ _g1065210689_))))
                          (let ((_expr1067110746_ (reverse _expr1066910717_))
                                (_hd1067210748_ (reverse _hd1067010719_)))
                            (if (gx#stx-pair? _tl1066110704_)
                                (let ((_e1067910751_
                                       (gx#stx-e _tl1066110704_)))
                                  (let ((_hd1068010754_ (##car _e1067910751_))
                                        (_tl1068110756_ (##cdr _e1067910751_)))
                                    (if (gx#stx-null? _tl1068110756_)
                                        ((lambda (_L10759_ _L10760_ _L10761_)
                                           (for-each
                                            (lambda (_g1078010782_)
                                              (apply gxc#compile-e
                                                     _g1078010782_
                                                     _args10649_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1078410787_
                                                               _g1078510789_)
                                                        (cons _g1078410787_
                                                              _g1078510789_))
                                                      (cons _L10759_ '())
                                                      _L10760_))))
                                         _hd1068010754_
                                         _expr1067110746_
                                         _hd1067210748_)
                                        (_g1065110686_ _g1065210689_))))
                                (_g1065110686_ _g1065210689_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1066510712_
                                                     _target1066210707_
                                                     '()
                                                     '()))
                                                  (_g1065110686_
                                                   _g1065210689_)))))
                                        (_g1065110686_ _g1065210689_))
                                    (_g1065110686_ _g1065210689_))))
                            (_g1065110686_ _g1065210689_))))
                    (_g1065110686_ _g1065210689_)))))
        (_g1065010792_ _stx10648_))))
  (define gxc#collect-body-setq%
    (lambda (_stx10580_ . _args10581_)
      (let* ((_g1058310600_
              (lambda (_g1058410597_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1058410597_)))
             (_g1058210645_
              (lambda (_g1058410603_)
                (if (gx#stx-pair? _g1058410603_)
                    (let ((_e1058710605_ (gx#stx-e _g1058410603_)))
                      (let ((_hd1058810608_ (##car _e1058710605_))
                            (_tl1058910610_ (##cdr _e1058710605_)))
                        (if (gx#stx-pair? _tl1058910610_)
                            (let ((_e1059010613_ (gx#stx-e _tl1058910610_)))
                              (let ((_hd1059110616_ (##car _e1059010613_))
                                    (_tl1059210618_ (##cdr _e1059010613_)))
                                (if (gx#stx-pair? _tl1059210618_)
                                    (let ((_e1059310621_
                                           (gx#stx-e _tl1059210618_)))
                                      (let ((_hd1059410624_
                                             (##car _e1059310621_))
                                            (_tl1059510626_
                                             (##cdr _e1059310621_)))
                                        (if (gx#stx-null? _tl1059510626_)
                                            ((lambda (_L10629_ _L10630_)
                                               (apply gxc#compile-e
                                                      _L10629_
                                                      _args10581_))
                                             _hd1059410624_
                                             _hd1059110616_)
                                            (_g1058310600_ _g1058410603_))))
                                    (_g1058310600_ _g1058410603_))))
                            (_g1058310600_ _g1058410603_))))
                    (_g1058310600_ _g1058410603_)))))
        (_g1058210645_ _stx10580_))))
  (define gxc#collect-operands
    (lambda (_stx10493_ . _args10494_)
      (let* ((_g1049610515_
              (lambda (_g1049710512_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1049710512_)))
             (_g1049510577_
              (lambda (_g1049710518_)
                (if (gx#stx-pair? _g1049710518_)
                    (let ((_e1049910520_ (gx#stx-e _g1049710518_)))
                      (let ((_hd1050010523_ (##car _e1049910520_))
                            (_tl1050110525_ (##cdr _e1049910520_)))
                        (if (gx#stx-pair/null? _tl1050110525_)
                            (if (fx>= (gx#stx-length _tl1050110525_) '0)
                                (let ((_g11369_
                                       (gx#syntax-split-splice
                                        _tl1050110525_
                                        '0)))
                                  (begin
                                    (let ((_g11370_ (values-count _g11369_)))
                                      (if (not (fx= _g11370_ 2))
                                          (error "Context expects 2 values"
                                                 _g11370_)))
                                    (let ((_target1050210528_
                                           (values-ref _g11369_ 0))
                                          (_tl1050410530_
                                           (values-ref _g11369_ 1)))
                                      (if (gx#stx-null? _tl1050410530_)
                                          (letrec ((_loop1050510533_
                                                    (lambda (_hd1050310536_
                                                             _rands1050910538_)
                                                      (if (gx#stx-pair?
                                                           _hd1050310536_)
                                                          (let ((_e1050610541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1050310536_)))
                    (let ((_lp-hd1050710544_ (##car _e1050610541_))
                          (_lp-tl1050810546_ (##cdr _e1050610541_)))
                      (_loop1050510533_
                       _lp-tl1050810546_
                       (cons _lp-hd1050710544_ _rands1050910538_))))
                  (let ((_rands1051010549_ (reverse _rands1050910538_)))
                    ((lambda (_L10552_)
                       (for-each
                        (lambda (_g1056510567_)
                          (apply gxc#compile-e _g1056510567_ _args10494_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1056910572_ _g1057010574_)
                                    (cons _g1056910572_ _g1057010574_))
                                  '()
                                  _L10552_))))
                     _rands1051010549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1050510533_
                                             _target1050210528_
                                             '()))
                                          (_g1049610515_ _g1049710518_)))))
                                (_g1049610515_ _g1049710518_))
                            (_g1049610515_ _g1049710518_))))
                    (_g1049610515_ _g1049710518_)))))
        (_g1049510577_ _stx10493_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx10424_)
      (let* ((_g1042610443_
              (lambda (_g1042710440_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1042710440_)))
             (_g1042510490_
              (lambda (_g1042710446_)
                (if (gx#stx-pair? _g1042710446_)
                    (let ((_e1043010448_ (gx#stx-e _g1042710446_)))
                      (let ((_hd1043110451_ (##car _e1043010448_))
                            (_tl1043210453_ (##cdr _e1043010448_)))
                        (if (gx#stx-pair? _tl1043210453_)
                            (let ((_e1043310456_ (gx#stx-e _tl1043210453_)))
                              (let ((_hd1043410459_ (##car _e1043310456_))
                                    (_tl1043510461_ (##cdr _e1043310456_)))
                                (if (gx#stx-pair? _tl1043510461_)
                                    (let ((_e1043610464_
                                           (gx#stx-e _tl1043510461_)))
                                      (let ((_hd1043710467_
                                             (##car _e1043610464_))
                                            (_tl1043810469_
                                             (##cdr _e1043610464_)))
                                        (if (gx#stx-null? _tl1043810469_)
                                            ((lambda (_L10472_ _L10473_)
                                               (gx#stx-for-each1
                                                (lambda (_bind10488_)
                                                  (if (gx#identifier?
                                                       _bind10488_)
                                                      (gxc#add-module-binding!
                                                       _bind10488_
                                                       '#f)
                                                      '#!void))
                                                _L10473_))
                                             _hd1043710467_
                                             _hd1043410459_)
                                            (_g1042610443_ _g1042710446_))))
                                    (_g1042610443_ _g1042710446_))))
                            (_g1042610443_ _g1042710446_))))
                    (_g1042610443_ _g1042710446_)))))
        (_g1042510490_ _stx10424_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx10357_)
      (let* ((_g1035910376_
              (lambda (_g1036010373_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1036010373_)))
             (_g1035810421_
              (lambda (_g1036010379_)
                (if (gx#stx-pair? _g1036010379_)
                    (let ((_e1036310381_ (gx#stx-e _g1036010379_)))
                      (let ((_hd1036410384_ (##car _e1036310381_))
                            (_tl1036510386_ (##cdr _e1036310381_)))
                        (if (gx#stx-pair? _tl1036510386_)
                            (let ((_e1036610389_ (gx#stx-e _tl1036510386_)))
                              (let ((_hd1036710392_ (##car _e1036610389_))
                                    (_tl1036810394_ (##cdr _e1036610389_)))
                                (if (gx#stx-pair? _tl1036810394_)
                                    (let ((_e1036910397_
                                           (gx#stx-e _tl1036810394_)))
                                      (let ((_hd1037010400_
                                             (##car _e1036910397_))
                                            (_tl1037110402_
                                             (##cdr _e1036910397_)))
                                        (if (gx#stx-null? _tl1037110402_)
                                            ((lambda (_L10405_ _L10406_)
                                               (gxc#add-module-binding!
                                                _L10406_
                                                '#t))
                                             _hd1037010400_
                                             _hd1036710392_)
                                            (_g1035910376_ _g1036010379_))))
                                    (_g1035910376_ _g1036010379_))))
                            (_g1035910376_ _g1036010379_))))
                    (_g1035910376_ _g1036010379_)))))
        (_g1035810421_ _stx10357_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10299_ _modules10300_)
      (let* ((_g1030210316_
              (lambda (_g1030310313_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1030310313_)))
             (_g1030110354_
              (lambda (_g1030310319_)
                (if (gx#stx-pair? _g1030310319_)
                    (let ((_e1030610321_ (gx#stx-e _g1030310319_)))
                      (let ((_hd1030710324_ (##car _e1030610321_))
                            (_tl1030810326_ (##cdr _e1030610321_)))
                        (if (gx#stx-pair? _tl1030810326_)
                            (let ((_e1030910329_ (gx#stx-e _tl1030810326_)))
                              (let ((_hd1031010332_ (##car _e1030910329_))
                                    (_tl1031110334_ (##cdr _e1030910329_)))
                                ((lambda (_L10337_ _L10338_)
                                   (let ((_ctx10351_
                                          (gx#syntax-local-e__0 _L10338_)))
                                     (begin
                                       (set-box!
                                        _modules10300_
                                        (cons _ctx10351_
                                              (unbox _modules10300_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx10351_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10300_))
                                        gx#current-expander-context
                                        _ctx10351_))))
                                 _tl1031110334_
                                 _hd1031010332_)))
                            (_g1030210316_ _g1030310319_))))
                    (_g1030210316_ _g1030310319_)))))
        (_g1030110354_ _stx10299_))))
  (define gxc#add-module-binding!
    (lambda (_id10293_ _syntax?10294_)
      (let ((_eid10296_
             (##structure-ref
              (gx#resolve-identifier__0 _id10293_)
              '1
              gx#binding::t
              '#f))
            (_ht10297_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10296_)
            '#!void
            (table-set!
             _ht10297_
             _eid10296_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10296_)
              _syntax?10294_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10274_)
      (let ((_bind10276_ (gx#resolve-identifier__0 _id10274_)))
        (if _bind10276_
            (let ((_eid10278_
                   (##structure-ref _bind10276_ '1 gx#binding::t '#f))
                  (_ht10279_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10278_)
                  _eid10278_
                  (let ((_$e10281_ (table-ref _ht10279_ _eid10278_ '#f)))
                    (if _$e10281_
                        (values _$e10281_)
                        (if (##structure-instance-of?
                             _bind10276_
                             'gx#local-binding::t)
                            (let ((_gid10284_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10278_)))
                              (begin
                                (table-set! _ht10279_ _eid10278_ _gid10284_)
                                _gid10284_))
                            (if (##structure-instance-of?
                                 _bind10276_
                                 'gx#module-binding::t)
                                (let ((_gid10291_
                                       (let ((_$e10286_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10276_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10286_
                                             ((lambda (_ns10289_)
                                                (make-symbol
                                                 _ns10289_
                                                 '"#"
                                                 _eid10278_))
                                              _$e10286_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10278_)))))
                                  (begin
                                    (table-set!
                                     _ht10279_
                                     _eid10278_
                                     _gid10291_)
                                    _gid10291_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10274_
                                 _eid10278_
                                 _bind10276_)))))))
            (if (interned-symbol? (gx#stx-e _id10274_))
                (gx#stx-e _id10274_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10274_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10272_)
      (if (gx#identifier? _id10272_)
          (gxc#generate-runtime-binding-id _id10272_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10250
      (lambda (_sym10252_ _quote?10253_)
        (let* ((_ht10255_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10257_ (table-ref _ht10255_ _sym10252_ '#f)))
          (if _$e10257_
              (values _$e10257_)
              (let ((_g10260_
                     (if _quote?10253_
                         (make-symbol
                          '"__"
                          _sym10252_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10252_ '"_"))))
                (begin
                  (table-set! _ht10255_ _sym10252_ _g10260_)
                  _g10260_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10265_)
          (let ((_quote?10267_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10250
             _sym10265_
             _quote?10267_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g11372_
          (let ((_g11371_ (length _g11372_)))
            (cond ((fx= _g11371_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g11372_))
                  ((fx= _g11371_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10250
                          _g11372_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g11372_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10249_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10249_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10209_)
      (if (interned-symbol? _key10209_)
          _key10209_
          (if (uninterned-symbol? _key10209_)
              (gxc#generate-runtime-gensym-reference__0 _key10209_)
              (let* ((_key1021010217_ _key10209_)
                     (_E1021210221_
                      (lambda ()
                        (error '"No clause matching" _key1021010217_)))
                     (_K1021310237_
                      (lambda (_mark10224_ _eid10225_)
                        (let ((_$e10227_
                               (##structure-ref
                                _mark10224_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10227_
                              ((lambda (_ht10230_)
                                 (let ((_$e10232_
                                        (table-ref _ht10230_ _eid10225_ '#f)))
                                   (if _$e10232_
                                       ((lambda (_id10235_)
                                          (if (interned-symbol? _id10235_)
                                              _id10235_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10235_)))
                                        _$e10232_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10225_))))
                               _$e10227_)
                              (gxc#generate-runtime-identifier-key
                               _eid10225_))))))
                (if (##pair? _key1021010217_)
                    (let ((_hd1021410240_ (##car _key1021010217_))
                          (_tl1021510242_ (##cdr _key1021010217_)))
                      (let* ((_eid10245_ _hd1021410240_)
                             (_mark10247_ _tl1021510242_))
                        (_K1021310237_ _mark10247_ _eid10245_)))
                    (_E1021210221_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10194
      (lambda (_top10196_)
        (if _top10196_
            (let ((_ns10198_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10199_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10199_)
                  (make-symbol
                   _ns10198_
                   '"["
                   (number->string _phi10199_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10198_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10205_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10194 _top10205_))))
      (define gxc#generate-runtime-temporary
        (lambda _g11374_
          (let ((_g11373_ (length _g11374_)))
            (cond ((fx= _g11373_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g11374_))
                  ((fx= _g11373_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10194
                          _g11374_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g11374_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10193_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10113_)
      (let* ((_g1011510125_
              (lambda (_g1011610122_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1011610122_)))
             (_g1011410190_
              (lambda (_g1011610128_)
                (if (gx#stx-pair? _g1011610128_)
                    (let ((_e1011810130_ (gx#stx-e _g1011610128_)))
                      (let ((_hd1011910133_ (##car _e1011810130_))
                            (_tl1012010135_ (##cdr _e1011810130_)))
                        ((lambda (_L10138_)
                           (let* ((_body10148_
                                   (gx#stx-map1 gxc#compile-e _L10138_))
                                  (_body10187_
                                   (filter (lambda (_stx10150_)
                                             (let* ((_g1015310162_
                                                     (lambda (_g1015410159_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1015410159_)))
                                                    (_g1015210169_
                                                     (lambda (_g1015410165_)
                                                       ((lambda () '#t))))
                                                    (_g1015110184_
                                                     (lambda (_g1015410172_)
                                                       (if (gx#stx-pair?
                                                            _g1015410172_)
                                                           (let ((_e1015510174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1015410172_)))
                     (let ((_hd1015610177_ (##car _e1015510174_))
                           (_tl1015710179_ (##cdr _e1015510174_)))
                       (if (gx#identifier? _hd1015610177_)
                           (if (gx#stx-eq? 'begin _hd1015610177_)
                               (if (gx#stx-null? _tl1015710179_)
                                   ((lambda () '#f))
                                   (_g1015210169_ _g1015410172_))
                               (_g1015210169_ _g1015410172_))
                           (_g1015210169_ _g1015410172_))))
                   (_g1015210169_ _g1015410172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1015110184_ _stx10150_)))
                                           _body10148_)))
                             (if (fx= (length _body10187_) '1)
                                 (car _body10187_)
                                 (cons 'begin _body10187_))))
                         _tl1012010135_)))
                    (_g1011510125_ _g1011610128_)))))
        (_g1011410190_ _stx10113_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10075_)
      (let* ((_g1007710087_
              (lambda (_g1007810084_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1007810084_)))
             (_g1007610110_
              (lambda (_g1007810090_)
                (if (gx#stx-pair? _g1007810090_)
                    (let ((_e1008010092_ (gx#stx-e _g1007810090_)))
                      (let ((_hd1008110095_ (##car _e1008010092_))
                            (_tl1008210097_ (##cdr _e1008010092_)))
                        ((lambda (_L10100_)
                           (cons 'begin (gx#syntax->datum _L10100_)))
                         _tl1008210097_)))
                    (_g1007710087_ _g1007810090_)))))
        (_g1007610110_ _stx10075_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10008_)
      (let* ((_g1001010027_
              (lambda (_g1001110024_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1001110024_)))
             (_g1000910072_
              (lambda (_g1001110030_)
                (if (gx#stx-pair? _g1001110030_)
                    (let ((_e1001410032_ (gx#stx-e _g1001110030_)))
                      (let ((_hd1001510035_ (##car _e1001410032_))
                            (_tl1001610037_ (##cdr _e1001410032_)))
                        (if (gx#stx-pair? _tl1001610037_)
                            (let ((_e1001710040_ (gx#stx-e _tl1001610037_)))
                              (let ((_hd1001810043_ (##car _e1001710040_))
                                    (_tl1001910045_ (##cdr _e1001710040_)))
                                (if (gx#stx-pair? _tl1001910045_)
                                    (let ((_e1002010048_
                                           (gx#stx-e _tl1001910045_)))
                                      (let ((_hd1002110051_
                                             (##car _e1002010048_))
                                            (_tl1002210053_
                                             (##cdr _e1002010048_)))
                                        (if (gx#stx-null? _tl1002210053_)
                                            ((lambda (_L10056_ _L10057_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10057_))
                   (cons (gxc#compile-e _L10056_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1002110051_
                                             _hd1001810043_)
                                            (_g1001010027_ _g1001110030_))))
                                    (_g1001010027_ _g1001110030_))))
                            (_g1001010027_ _g1001110030_))))
                    (_g1001010027_ _g1001110030_)))))
        (_g1000910072_ _stx10008_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9970_)
      (let* ((_g99729982_
              (lambda (_g99739979_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g99739979_)))
             (_g997110005_
              (lambda (_g99739985_)
                (if (gx#stx-pair? _g99739985_)
                    (let ((_e99759987_ (gx#stx-e _g99739985_)))
                      (let ((_hd99769990_ (##car _e99759987_))
                            (_tl99779992_ (##cdr _e99759987_)))
                        ((lambda (_L9995_)
                           (cons 'declare (map gx#syntax->datum _L9995_)))
                         _tl99779992_)))
                    (_g99729982_ _g99739985_)))))
        (_g997110005_ _stx9970_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9726_)
      (let* ((_g97289745_
              (lambda (_g97299742_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g97299742_)))
             (_g97279967_
              (lambda (_g97299748_)
                (if (gx#stx-pair? _g97299748_)
                    (let ((_e97329750_ (gx#stx-e _g97299748_)))
                      (let ((_hd97339753_ (##car _e97329750_))
                            (_tl97349755_ (##cdr _e97329750_)))
                        (if (gx#stx-pair? _tl97349755_)
                            (let ((_e97359758_ (gx#stx-e _tl97349755_)))
                              (let ((_hd97369761_ (##car _e97359758_))
                                    (_tl97379763_ (##cdr _e97359758_)))
                                (if (gx#stx-pair? _tl97379763_)
                                    (let ((_e97389766_
                                           (gx#stx-e _tl97379763_)))
                                      (let ((_hd97399769_ (##car _e97389766_))
                                            (_tl97409771_ (##cdr _e97389766_)))
                                        (if (gx#stx-null? _tl97409771_)
                                            ((lambda (_L9774_ _L9775_)
                                               (let* ((_g97929805_
                                                       (lambda (_g97939802_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g97939802_)))
                                                      (_g97919919_
                                                       (lambda (_g97939808_)
                                                         ((lambda ()
                                                            (let* ((_tmp9812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10194
                             '#t))
                           (_body9916_
                            (let _lp9814_ ((_rest9816_ _L9775_)
                                           (_k9817_ '0)
                                           (_r9818_ '()))
                              (let* ((_g98239839_
                                      (lambda (_g98249836_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g98249836_)))
                                     (_g98229846_
                                      (lambda (_g98249842_)
                                        ((lambda () (reverse _r9818_)))))
                                     (_g98219867_
                                      (lambda (_g98249849_)
                                        ((lambda (_L9851_)
                                           (if (gx#identifier? _L9851_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L9851_)
                                 (cons (cons 'values->list
                                             (cons _tmp9812_
                                                   (cons _k9817_ '())))
                                       '())))
                     '())
               _r9818_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g98229846_ _g98249849_)))
                                         _g98249849_)))
                                     (_g98209891_
                                      (lambda (_g98249870_)
                                        (if (gx#stx-pair? _g98249870_)
                                            (let ((_e98319872_
                                                   (gx#stx-e _g98249870_)))
                                              (let ((_hd98329875_
                                                     (##car _e98319872_))
                                                    (_tl98339877_
                                                     (##cdr _e98319872_)))
                                                ((lambda (_L9880_ _L9881_)
                                                   (_lp9814_
                                                    _L9880_
                                                    (fx+ _k9817_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9881_)
                              (cons (cons 'values-ref
                                          (cons _tmp9812_ (cons _k9817_ '())))
                                    '())))
                  _r9818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl98339877_
                                                 _hd98329875_)))
                                            (_g98219867_ _g98249870_))))
                                     (_g98199913_
                                      (lambda (_g98249894_)
                                        (if (gx#stx-pair? _g98249894_)
                                            (let ((_e98269896_
                                                   (gx#stx-e _g98249894_)))
                                              (let ((_hd98279899_
                                                     (##car _e98269896_))
                                                    (_tl98289901_
                                                     (##cdr _e98269896_)))
                                                (if (gx#stx-datum?
                                                     _hd98279899_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd98279899_)
                        '#f)
                ((lambda (_L9904_) (_lp9814_ _L9904_ (fx+ _k9817_ '1) _r9818_))
                 _tl98289901_)
                (_g98209891_ _g98249894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98209891_
                                                     _g98249894_))))
                                            (_g98209891_ _g98249894_)))))
                                (_g98199913_ _rest9816_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp9812_
                                              (cons (gxc#compile-e _L9774_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp9812_
                                         _L9775_)
                                        _body9916_))))))))
              (_g97909949_
               (lambda (_g97939922_)
                 (if (gx#stx-pair? _g97939922_)
                     (let ((_e97989924_ (gx#stx-e _g97939922_)))
                       (let ((_hd97999927_ (##car _e97989924_))
                             (_tl98009929_ (##cdr _e97989924_)))
                         (if (gx#stx-null? _tl98009929_)
                             ((lambda (_L9932_)
                                (let ((_eid9941_
                                       (gxc#generate-runtime-binding-id
                                        _L9932_)))
                                  (begin
                                    (let ((_lambda-expr99429944_
                                           (gxc#apply-find-lambda-expression
                                            _L9774_)))
                                      (if _lambda-expr99429944_
                                          (let ((_lambda-expr9947_
                                                 _lambda-expr99429944_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr9947_
                                             _eid9941_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid9941_
                                                (cons (gxc#compile-e _L9774_)
                                                      '()))))))
                              _hd97999927_)
                             (_g97919919_ _g97939922_))))
                     (_g97919919_ _g97939922_))))
              (_g97899964_
               (lambda (_g97939952_)
                 (if (gx#stx-pair? _g97939952_)
                     (let ((_e97949954_ (gx#stx-e _g97939952_)))
                       (let ((_hd97959957_ (##car _e97949954_))
                             (_tl97969959_ (##cdr _e97949954_)))
                         (if (gx#stx-datum? _hd97959957_)
                             (if (equal? (gx#stx-e _hd97959957_) '#f)
                                 (if (gx#stx-null? _tl97969959_)
                                     ((lambda () (gxc#compile-e _L9774_)))
                                     (_g97909949_ _g97939952_))
                                 (_g97909949_ _g97939952_))
                             (_g97909949_ _g97939952_))))
                     (_g97909949_ _g97939952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g97899964_ _L9775_)))
                                             _hd97399769_
                                             _hd97369761_)
                                            (_g97289745_ _g97299748_))))
                                    (_g97289745_ _g97299748_))))
                            (_g97289745_ _g97299748_))))
                    (_g97289745_ _g97299748_)))))
        (_g97279967_ _stx9726_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9714_ _hd9715_)
      (let* ((_len9717_ (gx#stx-length _hd9715_))
             (_cmp9719_ (if (gx#stx-list? _hd9715_) 'fx= 'fx>=))
             (_errmsg9721_
              (string-append
               (if (gx#stx-list? _hd9715_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len9717_)
               '" values"))
             (_count9723_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd9715_)) (fx= _len9717_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count9723_
                                    (cons (cons 'values-count
                                                (cons _vals9714_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp9719_
                                                            (cons _count9723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len9717_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg9721_
                                                            (cons _count9723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9647_)
      (let* ((_g96499666_
              (lambda (_g96509663_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g96509663_)))
             (_g96489711_
              (lambda (_g96509669_)
                (if (gx#stx-pair? _g96509669_)
                    (let ((_e96539671_ (gx#stx-e _g96509669_)))
                      (let ((_hd96549674_ (##car _e96539671_))
                            (_tl96559676_ (##cdr _e96539671_)))
                        (if (gx#stx-pair? _tl96559676_)
                            (let ((_e96569679_ (gx#stx-e _tl96559676_)))
                              (let ((_hd96579682_ (##car _e96569679_))
                                    (_tl96589684_ (##cdr _e96569679_)))
                                (if (gx#stx-pair? _tl96589684_)
                                    (let ((_e96599687_
                                           (gx#stx-e _tl96589684_)))
                                      (let ((_hd96609690_ (##car _e96599687_))
                                            (_tl96619692_ (##cdr _e96599687_)))
                                        (if (gx#stx-null? _tl96619692_)
                                            ((lambda (_L9695_ _L9696_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L9696_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9695_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd96609690_
                                             _hd96579682_)
                                            (_g96499666_ _g96509669_))))
                                    (_g96499666_ _g96509669_))))
                            (_g96499666_ _g96509669_))))
                    (_g96499666_ _g96509669_)))))
        (_g96489711_ _stx9647_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9645_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9645_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8178_)
      (letrec ((_runtime-identifier=?8180_
                (lambda (_id-stx9636_ _sym9637_)
                  (let ((_bind96389640_
                         (gx#resolve-identifier__0 _id-stx9636_)))
                    (if _bind96389640_
                        (let ((_bind9643_ _bind96389640_))
                          (eq? (##structure-ref
                                _bind9643_
                                '1
                                gx#binding::t
                                '#f)
                               _sym9637_))
                        '#f))))
               (_dispatch-case?8181_
                (lambda (_hd8866_ _body8867_)
                  (let* ((_form8869_ (cons _hd8866_ (cons _body8867_ '())))
                         (_g88749031_
                          (lambda (_g88759028_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g88759028_)))
                         (_g88739038_ (lambda (_g88759034_) ((lambda () '#f))))
                         (_g88729179_
                          (lambda (_g88759041_)
                            (if (gx#stx-pair? _g88759041_)
                                (let ((_e89919043_ (gx#stx-e _g88759041_)))
                                  (let ((_hd89929046_ (##car _e89919043_))
                                        (_tl89939048_ (##cdr _e89919043_)))
                                    (if (gx#stx-pair? _tl89939048_)
                                        (let ((_e89949051_
                                               (gx#stx-e _tl89939048_)))
                                          (let ((_hd89959054_
                                                 (##car _e89949051_))
                                                (_tl89969056_
                                                 (##cdr _e89949051_)))
                                            (if (gx#stx-pair? _hd89959054_)
                                                (let ((_e89979059_
                                                       (gx#stx-e
                                                        _hd89959054_)))
                                                  (let ((_hd89989062_
                                                         (##car _e89979059_))
                                                        (_tl89999064_
                                                         (##cdr _e89979059_)))
                                                    (if (gx#identifier?
                                                         _hd89989062_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd89989062_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl89999064_)
                        (let ((_e90009067_ (gx#stx-e _tl89999064_)))
                          (let ((_hd90019070_ (##car _e90009067_))
                                (_tl90029072_ (##cdr _e90009067_)))
                            (if (gx#stx-pair? _hd90019070_)
                                (let ((_e90039075_ (gx#stx-e _hd90019070_)))
                                  (let ((_hd90049078_ (##car _e90039075_))
                                        (_tl90059080_ (##cdr _e90039075_)))
                                    (if (gx#identifier? _hd90049078_)
                                        (if (gx#stx-eq? '%#ref _hd90049078_)
                                            (if (gx#stx-pair? _tl90059080_)
                                                (let ((_e90069083_
                                                       (gx#stx-e
                                                        _tl90059080_)))
                                                  (let ((_hd90079086_
                                                         (##car _e90069083_))
                                                        (_tl90089088_
                                                         (##cdr _e90069083_)))
                                                    (if (gx#stx-null?
                                                         _tl90089088_)
                                                        (if (gx#stx-pair?
                                                             _tl90029072_)
                                                            (let ((_e90099091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl90029072_)))
                      (let ((_hd90109094_ (##car _e90099091_))
                            (_tl90119096_ (##cdr _e90099091_)))
                        (if (gx#stx-pair? _hd90109094_)
                            (let ((_e90129099_ (gx#stx-e _hd90109094_)))
                              (let ((_hd90139102_ (##car _e90129099_))
                                    (_tl90149104_ (##cdr _e90129099_)))
                                (if (gx#identifier? _hd90139102_)
                                    (if (gx#stx-eq? '%#ref _hd90139102_)
                                        (if (gx#stx-pair? _tl90149104_)
                                            (let ((_e90159107_
                                                   (gx#stx-e _tl90149104_)))
                                              (let ((_hd90169110_
                                                     (##car _e90159107_))
                                                    (_tl90179112_
                                                     (##cdr _e90159107_)))
                                                (if (gx#stx-null? _tl90179112_)
                                                    (if (gx#stx-pair?
                                                         _tl90119096_)
                                                        (let ((_e90189115_
                                                               (gx#stx-e
                                                                _tl90119096_)))
                                                          (let ((_hd90199118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90189115_))
                        (_tl90209120_ (##cdr _e90189115_)))
                    (if (gx#stx-pair? _hd90199118_)
                        (let ((_e90219123_ (gx#stx-e _hd90199118_)))
                          (let ((_hd90229126_ (##car _e90219123_))
                                (_tl90239128_ (##cdr _e90219123_)))
                            (if (gx#identifier? _hd90229126_)
                                (if (gx#stx-eq? '%#ref _hd90229126_)
                                    (if (gx#stx-pair? _tl90239128_)
                                        (let ((_e90249131_
                                               (gx#stx-e _tl90239128_)))
                                          (let ((_hd90259134_
                                                 (##car _e90249131_))
                                                (_tl90269136_
                                                 (##cdr _e90249131_)))
                                            (if (gx#stx-null? _tl90269136_)
                                                (if (gx#stx-null? _tl90209120_)
                                                    (if (gx#stx-null?
                                                         _tl89969056_)
                                                        ((lambda (_L9139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9140_
                          _L9141_
                          _L9142_)
                   (if (if (gx#identifier? _L9142_)
                           (if (_runtime-identifier=?8180_ _L9141_ 'apply)
                               (if (gx#free-identifier=? _L9142_ _L9139_)
                                   (not (gx#free-identifier=? _L9140_ _L9142_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g88739038_ _g88759041_)))
                 _hd90259134_
                 _hd90169110_
                 _hd90079086_
                 _hd89929046_)
                (_g88739038_ _g88759041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88739038_ _g88759041_))
                                                (_g88739038_ _g88759041_))))
                                        (_g88739038_ _g88759041_))
                                    (_g88739038_ _g88759041_))
                                (_g88739038_ _g88759041_))))
                        (_g88739038_ _g88759041_))))
                (_g88739038_ _g88759041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88739038_
                                                     _g88759041_))))
                                            (_g88739038_ _g88759041_))
                                        (_g88739038_ _g88759041_))
                                    (_g88739038_ _g88759041_))))
                            (_g88739038_ _g88759041_))))
                    (_g88739038_ _g88759041_))
                (_g88739038_ _g88759041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g88739038_ _g88759041_))
                                            (_g88739038_ _g88759041_))
                                        (_g88739038_ _g88759041_))))
                                (_g88739038_ _g88759041_))))
                        (_g88739038_ _g88759041_))
                    (_g88739038_ _g88759041_))
                (_g88739038_ _g88759041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g88739038_ _g88759041_))))
                                        (_g88739038_ _g88759041_))))
                                (_g88739038_ _g88759041_))))
                         (_g88719439_
                          (lambda (_g88759182_)
                            (if (gx#stx-pair? _g88759182_)
                                (let ((_e89279184_ (gx#stx-e _g88759182_)))
                                  (let ((_hd89289187_ (##car _e89279184_))
                                        (_tl89299189_ (##cdr _e89279184_)))
                                    (if (gx#stx-pair/null? _hd89289187_)
                                        (if (fx>= (gx#stx-length _hd89289187_)
                                                  '0)
                                            (let ((_g11375_
                                                   (gx#syntax-split-splice
                                                    _hd89289187_
                                                    '0)))
                                              (begin
                                                (let ((_g11376_
                                                       (values-count
                                                        _g11375_)))
                                                  (if (not (fx= _g11376_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11376_)))
                                                (let ((_target89309192_
                                                       (values-ref _g11375_ 0))
                                                      (_tl89329194_
                                                       (values-ref
                                                        _g11375_
                                                        1)))
                                                  (letrec ((_loop89339197_
                                                            (lambda (_hd89319200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg89379202_)
                      (if (gx#stx-pair? _hd89319200_)
                          (let ((_e89349205_ (gx#stx-e _hd89319200_)))
                            (let ((_lp-hd89359208_ (##car _e89349205_))
                                  (_lp-tl89369210_ (##cdr _e89349205_)))
                              (_loop89339197_
                               _lp-tl89369210_
                               (cons _lp-hd89359208_ _arg89379202_))))
                          (let ((_arg89389213_ (reverse _arg89379202_)))
                            (if (gx#stx-pair? _tl89299189_)
                                (let ((_e89399216_ (gx#stx-e _tl89299189_)))
                                  (let ((_hd89409219_ (##car _e89399216_))
                                        (_tl89419221_ (##cdr _e89399216_)))
                                    (if (gx#stx-pair? _hd89409219_)
                                        (let ((_e89429224_
                                               (gx#stx-e _hd89409219_)))
                                          (let ((_hd89439227_
                                                 (##car _e89429224_))
                                                (_tl89449229_
                                                 (##cdr _e89429224_)))
                                            (if (gx#identifier? _hd89439227_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd89439227_)
                                                    (if (gx#stx-pair?
                                                         _tl89449229_)
                                                        (let ((_e89459232_
                                                               (gx#stx-e
                                                                _tl89449229_)))
                                                          (let ((_hd89469235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e89459232_))
                        (_tl89479237_ (##cdr _e89459232_)))
                    (if (gx#stx-pair? _hd89469235_)
                        (let ((_e89489240_ (gx#stx-e _hd89469235_)))
                          (let ((_hd89499243_ (##car _e89489240_))
                                (_tl89509245_ (##cdr _e89489240_)))
                            (if (gx#identifier? _hd89499243_)
                                (if (gx#stx-eq? '%#ref _hd89499243_)
                                    (if (gx#stx-pair? _tl89509245_)
                                        (let ((_e89519248_
                                               (gx#stx-e _tl89509245_)))
                                          (let ((_hd89529251_
                                                 (##car _e89519248_))
                                                (_tl89539253_
                                                 (##cdr _e89519248_)))
                                            (if (gx#stx-null? _tl89539253_)
                                                (if (gx#stx-pair? _tl89479237_)
                                                    (let ((_e89549256_
                                                           (gx#stx-e
                                                            _tl89479237_)))
                                                      (let ((_hd89559259_
                                                             (##car _e89549256_))
                                                            (_tl89569261_
                                                             (##cdr _e89549256_)))
                                                        (if (gx#stx-pair?
                                                             _hd89559259_)
                                                            (let ((_e89579264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd89559259_)))
                      (let ((_hd89589267_ (##car _e89579264_))
                            (_tl89599269_ (##cdr _e89579264_)))
                        (if (gx#identifier? _hd89589267_)
                            (if (gx#stx-eq? '%#ref _hd89589267_)
                                (if (gx#stx-pair? _tl89599269_)
                                    (let ((_e89609272_
                                           (gx#stx-e _tl89599269_)))
                                      (let ((_hd89619275_ (##car _e89609272_))
                                            (_tl89629277_ (##cdr _e89609272_)))
                                        (if (gx#stx-null? _tl89629277_)
                                            (if (gx#stx-pair/null?
                                                 _tl89569261_)
                                                (if (fx>= (gx#stx-length
                                                           _tl89569261_)
                                                          '1)
                                                    (let ((_g11377_
                                                           (gx#syntax-split-splice
                                                            _tl89569261_
                                                            '1)))
                                                      (begin
                                                        (let ((_g11378_
                                                               (values-count
                                                                _g11377_)))
                                                          (if (not (fx= _g11378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g11378_)))
                (let ((_target89639280_ (values-ref _g11377_ 0))
                      (_tl89659282_ (values-ref _g11377_ 1)))
                  (if (gx#stx-pair? _tl89659282_)
                      (let ((_e89729285_ (gx#stx-e _tl89659282_)))
                        (let ((_hd89739288_ (##car _e89729285_))
                              (_tl89749290_ (##cdr _e89729285_)))
                          (if (gx#stx-pair? _hd89739288_)
                              (let ((_e89759293_ (gx#stx-e _hd89739288_)))
                                (let ((_hd89769296_ (##car _e89759293_))
                                      (_tl89779298_ (##cdr _e89759293_)))
                                  (if (gx#identifier? _hd89769296_)
                                      (if (gx#stx-eq? '%#ref _hd89769296_)
                                          (if (gx#stx-pair? _tl89779298_)
                                              (let ((_e89789301_
                                                     (gx#stx-e _tl89779298_)))
                                                (let ((_hd89799304_
                                                       (##car _e89789301_))
                                                      (_tl89809306_
                                                       (##cdr _e89789301_)))
                                                  (if (gx#stx-null?
                                                       _tl89809306_)
                                                      (if (gx#stx-null?
                                                           _tl89749290_)
                                                          (letrec ((_loop89669309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd89649312_ _xarg89709314_)
                              (if (gx#stx-pair? _hd89649312_)
                                  (let ((_e89679317_ (gx#stx-e _hd89649312_)))
                                    (let ((_lp-hd89689320_ (##car _e89679317_))
                                          (_lp-tl89699322_
                                           (##cdr _e89679317_)))
                                      (if (gx#stx-pair? _lp-hd89689320_)
                                          (let ((_e89819325_
                                                 (gx#stx-e _lp-hd89689320_)))
                                            (let ((_hd89829328_
                                                   (##car _e89819325_))
                                                  (_tl89839330_
                                                   (##cdr _e89819325_)))
                                              (if (gx#identifier? _hd89829328_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd89829328_)
                                                      (if (gx#stx-pair?
                                                           _tl89839330_)
                                                          (let ((_e89849333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl89839330_)))
                    (let ((_hd89859336_ (##car _e89849333_))
                          (_tl89869338_ (##cdr _e89849333_)))
                      (if (gx#stx-null? _tl89869338_)
                          (_loop89669309_
                           _lp-tl89699322_
                           (cons _hd89859336_ _xarg89709314_))
                          (_g88729179_ _g88759182_))))
                  (_g88729179_ _g88759182_))
              (_g88729179_ _g88759182_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88729179_ _g88759182_))))
                                          (_g88729179_ _g88759182_))))
                                  (let ((_xarg89719341_
                                         (reverse _xarg89709314_)))
                                    (if (gx#stx-null? _tl89419221_)
                                        ((lambda (_L9344_
                                                  _L9345_
                                                  _L9346_
                                                  _L9347_
                                                  _L9348_
                                                  _L9349_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g93929395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g93939397_)
                        (cons _g93929395_ _g93939397_))
                      '()
                      _L9349_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier? _L9348_)
                                                       (if (_runtime-identifier=?8180_
                                                            _L9347_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g93999402_ _g94009404_)
                                                (cons _g93999402_ _g94009404_))
                                              '()
                                              _L9349_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g94069409_ _g94079411_)
                                                (cons _g94069409_ _g94079411_))
                                              '()
                                              _L9345_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g94139416_ _g94149418_)
                                               (cons _g94139416_ _g94149418_))
                                             '()
                                             _L9349_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g94209423_ _g94219425_)
                                               (cons _g94209423_ _g94219425_))
                                             '()
                                             _L9345_)))
                           (if (gx#free-identifier=? _L9348_ _L9344_)
                               (not (find (lambda (_g94279429_)
                                            (gx#free-identifier=?
                                             _g94279429_
                                             _L9346_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g94319434_
                                                             _g94329436_)
                                                      (cons _g94319434_
                                                            _g94329436_))
                                                    (cons _L9348_ '())
                                                    _L9349_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g88729179_ _g88759182_)))
                                         _hd89799304_
                                         _xarg89719341_
                                         _hd89619275_
                                         _hd89529251_
                                         _tl89329194_
                                         _arg89389213_)
                                        (_g88729179_ _g88759182_)))))))
                    (_loop89669309_ _target89639280_ '()))
                  (_g88729179_ _g88759182_))
              (_g88729179_ _g88759182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g88729179_ _g88759182_))
                                          (_g88729179_ _g88759182_))
                                      (_g88729179_ _g88759182_))))
                              (_g88729179_ _g88759182_))))
                      (_g88729179_ _g88759182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88729179_ _g88759182_))
                                                (_g88729179_ _g88759182_))
                                            (_g88729179_ _g88759182_))))
                                    (_g88729179_ _g88759182_))
                                (_g88729179_ _g88759182_))
                            (_g88729179_ _g88759182_))))
                    (_g88729179_ _g88759182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88729179_ _g88759182_))
                                                (_g88729179_ _g88759182_))))
                                        (_g88729179_ _g88759182_))
                                    (_g88729179_ _g88759182_))
                                (_g88729179_ _g88759182_))))
                        (_g88729179_ _g88759182_))))
                (_g88729179_ _g88759182_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88729179_ _g88759182_))
                                                (_g88729179_ _g88759182_))))
                                        (_g88729179_ _g88759182_))))
                                (_g88729179_ _g88759182_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop89339197_
                                                     _target89309192_
                                                     '())))))
                                            (_g88729179_ _g88759182_))
                                        (_g88729179_ _g88759182_))))
                                (_g88729179_ _g88759182_))))
                         (_g88709633_
                          (lambda (_g88759442_)
                            (if (gx#stx-pair? _g88759442_)
                                (let ((_e88799444_ (gx#stx-e _g88759442_)))
                                  (let ((_hd88809447_ (##car _e88799444_))
                                        (_tl88819449_ (##cdr _e88799444_)))
                                    (if (gx#stx-pair/null? _hd88809447_)
                                        (if (fx>= (gx#stx-length _hd88809447_)
                                                  '0)
                                            (let ((_g11379_
                                                   (gx#syntax-split-splice
                                                    _hd88809447_
                                                    '0)))
                                              (begin
                                                (let ((_g11380_
                                                       (values-count
                                                        _g11379_)))
                                                  (if (not (fx= _g11380_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11380_)))
                                                (let ((_target88829452_
                                                       (values-ref _g11379_ 0))
                                                      (_tl88849454_
                                                       (values-ref
                                                        _g11379_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl88849454_)
                                                      (letrec ((_loop88859457_
                                                                (lambda (_hd88839460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg88899462_)
                          (if (gx#stx-pair? _hd88839460_)
                              (let ((_e88869465_ (gx#stx-e _hd88839460_)))
                                (let ((_lp-hd88879468_ (##car _e88869465_))
                                      (_lp-tl88889470_ (##cdr _e88869465_)))
                                  (_loop88859457_
                                   _lp-tl88889470_
                                   (cons _lp-hd88879468_ _arg88899462_))))
                              (let ((_arg88909473_ (reverse _arg88899462_)))
                                (if (gx#stx-pair? _tl88819449_)
                                    (let ((_e88919476_
                                           (gx#stx-e _tl88819449_)))
                                      (let ((_hd88929479_ (##car _e88919476_))
                                            (_tl88939481_ (##cdr _e88919476_)))
                                        (if (gx#stx-pair? _hd88929479_)
                                            (let ((_e88949484_
                                                   (gx#stx-e _hd88929479_)))
                                              (let ((_hd88959487_
                                                     (##car _e88949484_))
                                                    (_tl88969489_
                                                     (##cdr _e88949484_)))
                                                (if (gx#identifier?
                                                     _hd88959487_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd88959487_)
                                                        (if (gx#stx-pair?
                                                             _tl88969489_)
                                                            (let ((_e88979492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl88969489_)))
                      (let ((_hd88989495_ (##car _e88979492_))
                            (_tl88999497_ (##cdr _e88979492_)))
                        (if (gx#stx-pair? _hd88989495_)
                            (let ((_e89009500_ (gx#stx-e _hd88989495_)))
                              (let ((_hd89019503_ (##car _e89009500_))
                                    (_tl89029505_ (##cdr _e89009500_)))
                                (if (gx#identifier? _hd89019503_)
                                    (if (gx#stx-eq? '%#ref _hd89019503_)
                                        (if (gx#stx-pair? _tl89029505_)
                                            (let ((_e89039508_
                                                   (gx#stx-e _tl89029505_)))
                                              (let ((_hd89049511_
                                                     (##car _e89039508_))
                                                    (_tl89059513_
                                                     (##cdr _e89039508_)))
                                                (if (gx#stx-null? _tl89059513_)
                                                    (if (gx#stx-pair/null?
                                                         _tl88999497_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl88999497_)
                          '0)
                    (let ((_g11381_ (gx#syntax-split-splice _tl88999497_ '0)))
                      (begin
                        (let ((_g11382_ (values-count _g11381_)))
                          (if (not (fx= _g11382_ 2))
                              (error "Context expects 2 values" _g11382_)))
                        (let ((_target89069516_ (values-ref _g11381_ 0))
                              (_tl89089518_ (values-ref _g11381_ 1)))
                          (if (gx#stx-null? _tl89089518_)
                              (letrec ((_loop89099521_
                                        (lambda (_hd89079524_ _xarg89139526_)
                                          (if (gx#stx-pair? _hd89079524_)
                                              (let ((_e89109529_
                                                     (gx#stx-e _hd89079524_)))
                                                (let ((_lp-hd89119532_
                                                       (##car _e89109529_))
                                                      (_lp-tl89129534_
                                                       (##cdr _e89109529_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd89119532_)
                                                      (let ((_e89159537_
                                                             (gx#stx-e
                                                              _lp-hd89119532_)))
                                                        (let ((_hd89169540_
                                                               (##car _e89159537_))
                                                              (_tl89179542_
                                                               (##cdr _e89159537_)))
                                                          (if (gx#identifier?
                                                               _hd89169540_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd89169540_)
                          (if (gx#stx-pair? _tl89179542_)
                              (let ((_e89189545_ (gx#stx-e _tl89179542_)))
                                (let ((_hd89199548_ (##car _e89189545_))
                                      (_tl89209550_ (##cdr _e89189545_)))
                                  (if (gx#stx-null? _tl89209550_)
                                      (_loop89099521_
                                       _lp-tl89129534_
                                       (cons _hd89199548_ _xarg89139526_))
                                      (_g88719439_ _g88759442_))))
                              (_g88719439_ _g88759442_))
                          (_g88719439_ _g88759442_))
                      (_g88719439_ _g88759442_))))
              (_g88719439_ _g88759442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg89149553_
                                                     (reverse _xarg89139526_)))
                                                (if (gx#stx-null? _tl88939481_)
                                                    ((lambda (_L9556_
                                                              _L9557_
                                                              _L9558_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g95869589_ _g95879591_)
                                    (cons _g95869589_ _g95879591_))
                                  '()
                                  _L9558_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g95939596_
                                                           _g95949598_)
                                                    (cons _g95939596_
                                                          _g95949598_))
                                                  '()
                                                  _L9558_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g96009603_
                                                           _g96019605_)
                                                    (cons _g96009603_
                                                          _g96019605_))
                                                  '()
                                                  _L9556_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g96079610_
                                                          _g96089612_)
                                                   (cons _g96079610_
                                                         _g96089612_))
                                                 '()
                                                 _L9558_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g96149617_
                                                          _g96159619_)
                                                   (cons _g96149617_
                                                         _g96159619_))
                                                 '()
                                                 _L9556_)))
                               (not (find (lambda (_g96219623_)
                                            (gx#free-identifier=?
                                             _g96219623_
                                             _L9557_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g96259628_
                                                             _g96269630_)
                                                      (cons _g96259628_
                                                            _g96269630_))
                                                    '()
                                                    _L9558_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g88719439_ _g88759442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg89149553_
                                                     _hd89049511_
                                                     _arg88909473_)
                                                    (_g88719439_
                                                     _g88759442_)))))))
                                (_loop89099521_ _target89069516_ '()))
                              (_g88719439_ _g88759442_)))))
                    (_g88719439_ _g88759442_))
                (_g88719439_ _g88759442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88719439_
                                                     _g88759442_))))
                                            (_g88719439_ _g88759442_))
                                        (_g88719439_ _g88759442_))
                                    (_g88719439_ _g88759442_))))
                            (_g88719439_ _g88759442_))))
                    (_g88719439_ _g88759442_))
                (_g88719439_ _g88759442_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88719439_
                                                     _g88759442_))))
                                            (_g88719439_ _g88759442_))))
                                    (_g88719439_ _g88759442_)))))))
                (_loop88859457_ _target88829452_ '()))
              (_g88719439_ _g88759442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g88719439_ _g88759442_))
                                        (_g88719439_ _g88759442_))))
                                (_g88719439_ _g88759442_)))))
                    (_g88709633_ _form8869_))))
               (_dispatch-case-e8182_
                (lambda (_hd8330_ _body8331_)
                  (let* ((_form8333_ (cons _hd8330_ (cons _body8331_ '())))
                         (_g83378461_
                          (lambda (_g83388458_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g83388458_)))
                         (_g83368579_
                          (lambda (_g83388464_)
                            (if (gx#stx-pair? _g83388464_)
                                (let ((_e84278466_ (gx#stx-e _g83388464_)))
                                  (let ((_hd84288469_ (##car _e84278466_))
                                        (_tl84298471_ (##cdr _e84278466_)))
                                    (if (gx#stx-pair? _tl84298471_)
                                        (let ((_e84308474_
                                               (gx#stx-e _tl84298471_)))
                                          (let ((_hd84318477_
                                                 (##car _e84308474_))
                                                (_tl84328479_
                                                 (##cdr _e84308474_)))
                                            (if (gx#stx-pair? _hd84318477_)
                                                (let ((_e84338482_
                                                       (gx#stx-e
                                                        _hd84318477_)))
                                                  (let ((_hd84348485_
                                                         (##car _e84338482_))
                                                        (_tl84358487_
                                                         (##cdr _e84338482_)))
                                                    (if (gx#identifier?
                                                         _hd84348485_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd84348485_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl84358487_)
                        (let ((_e84368490_ (gx#stx-e _tl84358487_)))
                          (let ((_hd84378493_ (##car _e84368490_))
                                (_tl84388495_ (##cdr _e84368490_)))
                            (if (gx#stx-pair? _hd84378493_)
                                (let ((_e84398498_ (gx#stx-e _hd84378493_)))
                                  (let ((_hd84408501_ (##car _e84398498_))
                                        (_tl84418503_ (##cdr _e84398498_)))
                                    (if (gx#identifier? _hd84408501_)
                                        (if (gx#stx-eq? '%#ref _hd84408501_)
                                            (if (gx#stx-pair? _tl84418503_)
                                                (let ((_e84428506_
                                                       (gx#stx-e
                                                        _tl84418503_)))
                                                  (let ((_hd84438509_
                                                         (##car _e84428506_))
                                                        (_tl84448511_
                                                         (##cdr _e84428506_)))
                                                    (if (gx#stx-null?
                                                         _tl84448511_)
                                                        (if (gx#stx-pair?
                                                             _tl84388495_)
                                                            (let ((_e84458514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl84388495_)))
                      (let ((_hd84468517_ (##car _e84458514_))
                            (_tl84478519_ (##cdr _e84458514_)))
                        (if (gx#stx-pair? _hd84468517_)
                            (let ((_e84488522_ (gx#stx-e _hd84468517_)))
                              (let ((_hd84498525_ (##car _e84488522_))
                                    (_tl84508527_ (##cdr _e84488522_)))
                                (if (gx#identifier? _hd84498525_)
                                    (if (gx#stx-eq? '%#ref _hd84498525_)
                                        (if (gx#stx-pair? _tl84508527_)
                                            (let ((_e84518530_
                                                   (gx#stx-e _tl84508527_)))
                                              (let ((_hd84528533_
                                                     (##car _e84518530_))
                                                    (_tl84538535_
                                                     (##cdr _e84518530_)))
                                                (if (gx#stx-null? _tl84538535_)
                                                    (if (gx#stx-pair?
                                                         _tl84478519_)
                                                        (let ((_e84548538_
                                                               (gx#stx-e
                                                                _tl84478519_)))
                                                          (let ((_hd84558541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e84548538_))
                        (_tl84568543_ (##cdr _e84548538_)))
                    (if (gx#stx-null? _tl84568543_)
                        (if (gx#stx-null? _tl84328479_)
                            ((lambda (_L8546_ _L8547_ _L8548_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8546_ '()))))
                             _hd84528533_
                             _hd84438509_
                             _hd84288469_)
                            (_g83378461_ _g83388464_))
                        (_g83378461_ _g83388464_))))
                (_g83378461_ _g83388464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83378461_
                                                     _g83388464_))))
                                            (_g83378461_ _g83388464_))
                                        (_g83378461_ _g83388464_))
                                    (_g83378461_ _g83388464_))))
                            (_g83378461_ _g83388464_))))
                    (_g83378461_ _g83388464_))
                (_g83378461_ _g83388464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g83378461_ _g83388464_))
                                            (_g83378461_ _g83388464_))
                                        (_g83378461_ _g83388464_))))
                                (_g83378461_ _g83388464_))))
                        (_g83378461_ _g83388464_))
                    (_g83378461_ _g83388464_))
                (_g83378461_ _g83388464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g83378461_ _g83388464_))))
                                        (_g83378461_ _g83388464_))))
                                (_g83378461_ _g83388464_))))
                         (_g83358715_
                          (lambda (_g83388582_)
                            (if (gx#stx-pair? _g83388582_)
                                (let ((_e83888584_ (gx#stx-e _g83388582_)))
                                  (let ((_hd83898587_ (##car _e83888584_))
                                        (_tl83908589_ (##cdr _e83888584_)))
                                    (if (gx#stx-pair/null? _hd83898587_)
                                        (if (fx>= (gx#stx-length _hd83898587_)
                                                  '0)
                                            (let ((_g11383_
                                                   (gx#syntax-split-splice
                                                    _hd83898587_
                                                    '0)))
                                              (begin
                                                (let ((_g11384_
                                                       (values-count
                                                        _g11383_)))
                                                  (if (not (fx= _g11384_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11384_)))
                                                (let ((_target83918592_
                                                       (values-ref _g11383_ 0))
                                                      (_tl83938594_
                                                       (values-ref
                                                        _g11383_
                                                        1)))
                                                  (letrec ((_loop83948597_
                                                            (lambda (_hd83928600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg83988602_)
                      (if (gx#stx-pair? _hd83928600_)
                          (let ((_e83958605_ (gx#stx-e _hd83928600_)))
                            (let ((_lp-hd83968608_ (##car _e83958605_))
                                  (_lp-tl83978610_ (##cdr _e83958605_)))
                              (_loop83948597_
                               _lp-tl83978610_
                               (cons _lp-hd83968608_ _arg83988602_))))
                          (let ((_arg83998613_ (reverse _arg83988602_)))
                            (if (gx#stx-pair? _tl83908589_)
                                (let ((_e84008616_ (gx#stx-e _tl83908589_)))
                                  (let ((_hd84018619_ (##car _e84008616_))
                                        (_tl84028621_ (##cdr _e84008616_)))
                                    (if (gx#stx-pair? _hd84018619_)
                                        (let ((_e84038624_
                                               (gx#stx-e _hd84018619_)))
                                          (let ((_hd84048627_
                                                 (##car _e84038624_))
                                                (_tl84058629_
                                                 (##cdr _e84038624_)))
                                            (if (gx#identifier? _hd84048627_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd84048627_)
                                                    (if (gx#stx-pair?
                                                         _tl84058629_)
                                                        (let ((_e84068632_
                                                               (gx#stx-e
                                                                _tl84058629_)))
                                                          (let ((_hd84078635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e84068632_))
                        (_tl84088637_ (##cdr _e84068632_)))
                    (if (gx#stx-pair? _hd84078635_)
                        (let ((_e84098640_ (gx#stx-e _hd84078635_)))
                          (let ((_hd84108643_ (##car _e84098640_))
                                (_tl84118645_ (##cdr _e84098640_)))
                            (if (gx#identifier? _hd84108643_)
                                (if (gx#stx-eq? '%#ref _hd84108643_)
                                    (if (gx#stx-pair? _tl84118645_)
                                        (let ((_e84128648_
                                               (gx#stx-e _tl84118645_)))
                                          (let ((_hd84138651_
                                                 (##car _e84128648_))
                                                (_tl84148653_
                                                 (##cdr _e84128648_)))
                                            (if (gx#stx-null? _tl84148653_)
                                                (if (gx#stx-pair? _tl84088637_)
                                                    (let ((_e84158656_
                                                           (gx#stx-e
                                                            _tl84088637_)))
                                                      (let ((_hd84168659_
                                                             (##car _e84158656_))
                                                            (_tl84178661_
                                                             (##cdr _e84158656_)))
                                                        (if (gx#stx-pair?
                                                             _hd84168659_)
                                                            (let ((_e84188664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd84168659_)))
                      (let ((_hd84198667_ (##car _e84188664_))
                            (_tl84208669_ (##cdr _e84188664_)))
                        (if (gx#identifier? _hd84198667_)
                            (if (gx#stx-eq? '%#ref _hd84198667_)
                                (if (gx#stx-pair? _tl84208669_)
                                    (let ((_e84218672_
                                           (gx#stx-e _tl84208669_)))
                                      (let ((_hd84228675_ (##car _e84218672_))
                                            (_tl84238677_ (##cdr _e84218672_)))
                                        (if (gx#stx-null? _tl84238677_)
                                            (if (gx#stx-null? _tl84028621_)
                                                ((lambda (_L8680_
                                                          _L8681_
                                                          _L8682_
                                                          _L8683_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L8680_ '()))))
                                                 _hd84228675_
                                                 _hd84138651_
                                                 _tl83938594_
                                                 _arg83998613_)
                                                (_g83368579_ _g83388582_))
                                            (_g83368579_ _g83388582_))))
                                    (_g83368579_ _g83388582_))
                                (_g83368579_ _g83388582_))
                            (_g83368579_ _g83388582_))))
                    (_g83368579_ _g83388582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83368579_ _g83388582_))
                                                (_g83368579_ _g83388582_))))
                                        (_g83368579_ _g83388582_))
                                    (_g83368579_ _g83388582_))
                                (_g83368579_ _g83388582_))))
                        (_g83368579_ _g83388582_))))
                (_g83368579_ _g83388582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83368579_ _g83388582_))
                                                (_g83368579_ _g83388582_))))
                                        (_g83368579_ _g83388582_))))
                                (_g83368579_ _g83388582_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop83948597_
                                                     _target83918592_
                                                     '())))))
                                            (_g83368579_ _g83388582_))
                                        (_g83368579_ _g83388582_))))
                                (_g83368579_ _g83388582_))))
                         (_g83348863_
                          (lambda (_g83388718_)
                            (if (gx#stx-pair? _g83388718_)
                                (let ((_e83428720_ (gx#stx-e _g83388718_)))
                                  (let ((_hd83438723_ (##car _e83428720_))
                                        (_tl83448725_ (##cdr _e83428720_)))
                                    (if (gx#stx-pair/null? _hd83438723_)
                                        (if (fx>= (gx#stx-length _hd83438723_)
                                                  '0)
                                            (let ((_g11385_
                                                   (gx#syntax-split-splice
                                                    _hd83438723_
                                                    '0)))
                                              (begin
                                                (let ((_g11386_
                                                       (values-count
                                                        _g11385_)))
                                                  (if (not (fx= _g11386_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11386_)))
                                                (let ((_target83458728_
                                                       (values-ref _g11385_ 0))
                                                      (_tl83478730_
                                                       (values-ref
                                                        _g11385_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl83478730_)
                                                      (letrec ((_loop83488733_
                                                                (lambda (_hd83468736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg83528738_)
                          (if (gx#stx-pair? _hd83468736_)
                              (let ((_e83498741_ (gx#stx-e _hd83468736_)))
                                (let ((_lp-hd83508744_ (##car _e83498741_))
                                      (_lp-tl83518746_ (##cdr _e83498741_)))
                                  (_loop83488733_
                                   _lp-tl83518746_
                                   (cons _lp-hd83508744_ _arg83528738_))))
                              (let ((_arg83538749_ (reverse _arg83528738_)))
                                (if (gx#stx-pair? _tl83448725_)
                                    (let ((_e83548752_
                                           (gx#stx-e _tl83448725_)))
                                      (let ((_hd83558755_ (##car _e83548752_))
                                            (_tl83568757_ (##cdr _e83548752_)))
                                        (if (gx#stx-pair? _hd83558755_)
                                            (let ((_e83578760_
                                                   (gx#stx-e _hd83558755_)))
                                              (let ((_hd83588763_
                                                     (##car _e83578760_))
                                                    (_tl83598765_
                                                     (##cdr _e83578760_)))
                                                (if (gx#identifier?
                                                     _hd83588763_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd83588763_)
                                                        (if (gx#stx-pair?
                                                             _tl83598765_)
                                                            (let ((_e83608768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl83598765_)))
                      (let ((_hd83618771_ (##car _e83608768_))
                            (_tl83628773_ (##cdr _e83608768_)))
                        (if (gx#stx-pair? _hd83618771_)
                            (let ((_e83638776_ (gx#stx-e _hd83618771_)))
                              (let ((_hd83648779_ (##car _e83638776_))
                                    (_tl83658781_ (##cdr _e83638776_)))
                                (if (gx#identifier? _hd83648779_)
                                    (if (gx#stx-eq? '%#ref _hd83648779_)
                                        (if (gx#stx-pair? _tl83658781_)
                                            (let ((_e83668784_
                                                   (gx#stx-e _tl83658781_)))
                                              (let ((_hd83678787_
                                                     (##car _e83668784_))
                                                    (_tl83688789_
                                                     (##cdr _e83668784_)))
                                                (if (gx#stx-null? _tl83688789_)
                                                    (if (gx#stx-pair/null?
                                                         _tl83628773_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl83628773_)
                          '0)
                    (let ((_g11387_ (gx#syntax-split-splice _tl83628773_ '0)))
                      (begin
                        (let ((_g11388_ (values-count _g11387_)))
                          (if (not (fx= _g11388_ 2))
                              (error "Context expects 2 values" _g11388_)))
                        (let ((_target83698792_ (values-ref _g11387_ 0))
                              (_tl83718794_ (values-ref _g11387_ 1)))
                          (if (gx#stx-null? _tl83718794_)
                              (letrec ((_loop83728797_
                                        (lambda (_hd83708800_ _xarg83768802_)
                                          (if (gx#stx-pair? _hd83708800_)
                                              (let ((_e83738805_
                                                     (gx#stx-e _hd83708800_)))
                                                (let ((_lp-hd83748808_
                                                       (##car _e83738805_))
                                                      (_lp-tl83758810_
                                                       (##cdr _e83738805_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd83748808_)
                                                      (let ((_e83788813_
                                                             (gx#stx-e
                                                              _lp-hd83748808_)))
                                                        (let ((_hd83798816_
                                                               (##car _e83788813_))
                                                              (_tl83808818_
                                                               (##cdr _e83788813_)))
                                                          (if (gx#identifier?
                                                               _hd83798816_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd83798816_)
                          (if (gx#stx-pair? _tl83808818_)
                              (let ((_e83818821_ (gx#stx-e _tl83808818_)))
                                (let ((_hd83828824_ (##car _e83818821_))
                                      (_tl83838826_ (##cdr _e83818821_)))
                                  (if (gx#stx-null? _tl83838826_)
                                      (_loop83728797_
                                       _lp-tl83758810_
                                       (cons _hd83828824_ _xarg83768802_))
                                      (_g83358715_ _g83388718_))))
                              (_g83358715_ _g83388718_))
                          (_g83358715_ _g83388718_))
                      (_g83358715_ _g83388718_))))
              (_g83358715_ _g83388718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg83778829_
                                                     (reverse _xarg83768802_)))
                                                (if (gx#stx-null? _tl83568757_)
                                                    ((lambda (_L8832_
                                                              _L8833_
                                                              _L8834_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L8833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg83778829_
                                                     _hd83678787_
                                                     _arg83538749_)
                                                    (_g83358715_
                                                     _g83388718_)))))))
                                (_loop83728797_ _target83698792_ '()))
                              (_g83358715_ _g83388718_)))))
                    (_g83358715_ _g83388718_))
                (_g83358715_ _g83388718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83358715_
                                                     _g83388718_))))
                                            (_g83358715_ _g83388718_))
                                        (_g83358715_ _g83388718_))
                                    (_g83358715_ _g83388718_))))
                            (_g83358715_ _g83388718_))))
                    (_g83358715_ _g83388718_))
                (_g83358715_ _g83388718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83358715_
                                                     _g83388718_))))
                                            (_g83358715_ _g83388718_))))
                                    (_g83358715_ _g83388718_)))))))
                (_loop83488733_ _target83458728_ '()))
              (_g83358715_ _g83388718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g83358715_ _g83388718_))
                                        (_g83358715_ _g83388718_))))
                                (_g83358715_ _g83388718_)))))
                    (_g83348863_ _form8333_))))
               (_generate18183_
                (lambda (_args8318_ _arglen8319_ _hd8320_ _body8321_)
                  (let* ((_len8323_ (gx#stx-length _hd8320_))
                         (_condition8325_
                          (if (gx#stx-list? _hd8320_)
                              (cons 'fx=
                                    (cons _arglen8319_ (cons _len8323_ '())))
                              (if (> _len8323_ '0)
                                  (cons 'fx>=
                                        (cons _arglen8319_
                                              (cons _len8323_ '())))
                                  '#t)))
                         (_dispatch8327_
                          (if (_dispatch-case?8181_ _hd8320_ _body8321_)
                              (_dispatch-case-e8182_ _hd8320_ _body8321_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd8320_)
                                          (cons (gxc#compile-e _body8321_)
                                                '()))))))
                    (cons _condition8325_
                          (cons (cons 'apply
                                      (cons _dispatch8327_
                                            (cons _args8318_ '())))
                                '()))))))
        (let* ((_g81858213_
                (lambda (_g81868210_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g81868210_)))
               (_g81848315_
                (lambda (_g81868216_)
                  (if (gx#stx-pair? _g81868216_)
                      (let ((_e81898218_ (gx#stx-e _g81868216_)))
                        (let ((_hd81908221_ (##car _e81898218_))
                              (_tl81918223_ (##cdr _e81898218_)))
                          (if (gx#stx-pair/null? _tl81918223_)
                              (if (fx>= (gx#stx-length _tl81918223_) '0)
                                  (let ((_g11389_
                                         (gx#syntax-split-splice
                                          _tl81918223_
                                          '0)))
                                    (begin
                                      (let ((_g11390_ (values-count _g11389_)))
                                        (if (not (fx= _g11390_ 2))
                                            (error "Context expects 2 values"
                                                   _g11390_)))
                                      (let ((_target81928226_
                                             (values-ref _g11389_ 0))
                                            (_tl81948228_
                                             (values-ref _g11389_ 1)))
                                        (if (gx#stx-null? _tl81948228_)
                                            (letrec ((_loop81958231_
                                                      (lambda (_hd81938234_
                                                               _body81998236_
                                                               _hd82008238_)
                                                        (if (gx#stx-pair?
                                                             _hd81938234_)
                                                            (let ((_e81968241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd81938234_)))
                      (let ((_lp-hd81978244_ (##car _e81968241_))
                            (_lp-tl81988246_ (##cdr _e81968241_)))
                        (if (gx#stx-pair? _lp-hd81978244_)
                            (let ((_e82038249_ (gx#stx-e _lp-hd81978244_)))
                              (let ((_hd82048252_ (##car _e82038249_))
                                    (_tl82058254_ (##cdr _e82038249_)))
                                (if (gx#stx-pair? _tl82058254_)
                                    (let ((_e82068257_
                                           (gx#stx-e _tl82058254_)))
                                      (let ((_hd82078260_ (##car _e82068257_))
                                            (_tl82088262_ (##cdr _e82068257_)))
                                        (if (gx#stx-null? _tl82088262_)
                                            (_loop81958231_
                                             _lp-tl81988246_
                                             (cons _hd82078260_ _body81998236_)
                                             (cons _hd82048252_ _hd82008238_))
                                            (_g81858213_ _g81868216_))))
                                    (_g81858213_ _g81868216_))))
                            (_g81858213_ _g81868216_))))
                    (let ((_body82018265_ (reverse _body81998236_))
                          (_hd82028267_ (reverse _hd82008238_)))
                      ((lambda (_L8270_ _L8271_)
                         (let ((_args8290_ (gxc#generate-runtime-temporary__0))
                               (_arglen8291_
                                (gxc#generate-runtime-temporary__0))
                               (_name8292_
                                (let ((_$e8287_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8178_
                                        '#f)))
                                  (if _$e8287_
                                      _$e8287_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8290_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8290_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8290_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g82938296_ _g82948298_)
                                            (_generate18183_
                                             _args8290_
                                             _arglen8291_
                                             _g82938296_
                                             _g82948298_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g83008303_
                                                             _g83018305_)
                                                      (cons _g83008303_
                                                            _g83018305_))
                                                    '()
                                                    _L8271_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g83078310_
                                                             _g83088312_)
                                                      (cons _g83078310_
                                                            _g83088312_))
                                                    '()
                                                    _L8270_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body82018265_
                       _hd82028267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop81958231_
                                               _target81928226_
                                               '()
                                               '()))
                                            (_g81858213_ _g81868216_)))))
                                  (_g81858213_ _g81868216_))
                              (_g81858213_ _g81868216_))))
                      (_g81858213_ _g81868216_)))))
          (_g81848315_ _stx8178_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7241
      (lambda (_stx7243_ _compiled-body?7244_)
        (letrec ((_generate-simple7246_
                  (lambda (_hd8165_ _body8166_)
                    (_coalesce-let*7247_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8165_
                      _body8166_
                      _compiled-body?7244_))))
                 (_coalesce-let*7247_
                  (lambda (_code7549_)
                    (let* ((_g75547689_
                            (lambda (_g75557686_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g75557686_)))
                           (_g75537696_
                            (lambda (_g75557692_) ((lambda () _code7549_))))
                           (_g75527866_
                            (lambda (_g75557699_)
                              (if (gx#stx-pair? _g75557699_)
                                  (let ((_e76437701_ (gx#stx-e _g75557699_)))
                                    (let ((_hd76447704_ (##car _e76437701_))
                                          (_tl76457706_ (##cdr _e76437701_)))
                                      (if (gx#identifier? _hd76447704_)
                                          (if (gx#stx-eq? 'let _hd76447704_)
                                              (if (gx#stx-pair? _tl76457706_)
                                                  (let ((_e76467709_
                                                         (gx#stx-e
                                                          _tl76457706_)))
                                                    (let ((_hd76477712_
                                                           (##car _e76467709_))
                                                          (_tl76487714_
                                                           (##cdr _e76467709_)))
                                                      (if (gx#stx-pair?
                                                           _hd76477712_)
                                                          (let ((_e76497717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76477712_)))
                    (let ((_hd76507720_ (##car _e76497717_))
                          (_tl76517722_ (##cdr _e76497717_)))
                      (if (gx#stx-pair? _hd76507720_)
                          (let ((_e76527725_ (gx#stx-e _hd76507720_)))
                            (let ((_hd76537728_ (##car _e76527725_))
                                  (_tl76547730_ (##cdr _e76527725_)))
                              (if (gx#stx-pair? _tl76547730_)
                                  (let ((_e76557733_ (gx#stx-e _tl76547730_)))
                                    (let ((_hd76567736_ (##car _e76557733_))
                                          (_tl76577738_ (##cdr _e76557733_)))
                                      (if (gx#stx-null? _tl76577738_)
                                          (if (gx#stx-null? _tl76517722_)
                                              (if (gx#stx-pair? _tl76487714_)
                                                  (let ((_e76587741_
                                                         (gx#stx-e
                                                          _tl76487714_)))
                                                    (let ((_hd76597744_
                                                           (##car _e76587741_))
                                                          (_tl76607746_
                                                           (##cdr _e76587741_)))
                                                      (if (gx#stx-pair?
                                                           _hd76597744_)
                                                          (let ((_e76617749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76597744_)))
                    (let ((_hd76627752_ (##car _e76617749_))
                          (_tl76637754_ (##cdr _e76617749_)))
                      (if (gx#identifier? _hd76627752_)
                          (if (gx#stx-eq? 'let* _hd76627752_)
                              (if (gx#stx-pair? _tl76637754_)
                                  (let ((_e76647757_ (gx#stx-e _tl76637754_)))
                                    (let ((_hd76657760_ (##car _e76647757_))
                                          (_tl76667762_ (##cdr _e76647757_)))
                                      (if (gx#stx-pair/null? _hd76657760_)
                                          (if (fx>= (gx#stx-length
                                                     _hd76657760_)
                                                    '0)
                                              (let ((_g11391_
                                                     (gx#syntax-split-splice
                                                      _hd76657760_
                                                      '0)))
                                                (begin
                                                  (let ((_g11392_
                                                         (values-count
                                                          _g11391_)))
                                                    (if (not (fx= _g11392_ 2))
                                                        (error "Context expects 2 values"
                                                               _g11392_)))
                                                  (let ((_target76677765_
                                                         (values-ref
                                                          _g11391_
                                                          0))
                                                        (_tl76697767_
                                                         (values-ref
                                                          _g11391_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl76697767_)
                                                        (letrec ((_loop76707770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd76687773_ _bind76747775_)
                            (if (gx#stx-pair? _hd76687773_)
                                (let ((_e76717778_ (gx#stx-e _hd76687773_)))
                                  (let ((_lp-hd76727781_ (##car _e76717778_))
                                        (_lp-tl76737783_ (##cdr _e76717778_)))
                                    (_loop76707770_
                                     _lp-tl76737783_
                                     (cons _lp-hd76727781_ _bind76747775_))))
                                (let ((_bind76757786_
                                       (reverse _bind76747775_)))
                                  (if (gx#stx-pair/null? _tl76667762_)
                                      (if (fx>= (gx#stx-length _tl76667762_)
                                                '0)
                                          (let ((_g11393_
                                                 (gx#syntax-split-splice
                                                  _tl76667762_
                                                  '0)))
                                            (begin
                                              (let ((_g11394_
                                                     (values-count _g11393_)))
                                                (if (not (fx= _g11394_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11394_)))
                                              (let ((_target76767789_
                                                     (values-ref _g11393_ 0))
                                                    (_tl76787791_
                                                     (values-ref _g11393_ 1)))
                                                (if (gx#stx-null? _tl76787791_)
                                                    (letrec ((_loop76797794_
                                                              (lambda (_hd76777797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body76837799_)
                        (if (gx#stx-pair? _hd76777797_)
                            (let ((_e76807802_ (gx#stx-e _hd76777797_)))
                              (let ((_lp-hd76817805_ (##car _e76807802_))
                                    (_lp-tl76827807_ (##cdr _e76807802_)))
                                (_loop76797794_
                                 _lp-tl76827807_
                                 (cons _lp-hd76817805_ _body76837799_))))
                            (let ((_body76847810_ (reverse _body76837799_)))
                              (if (gx#stx-null? _tl76607746_)
                                  ((lambda (_L7813_ _L7814_ _L7815_ _L7816_)
                                     (cons 'let*
                                           (cons (cons (cons _L7816_
                                                             (cons _L7815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g78517854_ _g78527856_)
                           (cons _g78517854_ _g78527856_))
                         '()
                         _L7814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g78587861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g78597863_)
                     (cons _g78587861_ _g78597863_))
                   '()
                   _L7813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body76847810_
                                   _bind76757786_
                                   _hd76567736_
                                   _hd76537728_)
                                  (_g75537696_ _g75557699_)))))))
              (_loop76797794_ _target76767789_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75537696_
                                                     _g75557699_)))))
                                          (_g75537696_ _g75557699_))
                                      (_g75537696_ _g75557699_)))))))
                  (_loop76707770_ _target76677765_ '()))
                (_g75537696_ _g75557699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g75537696_ _g75557699_))
                                          (_g75537696_ _g75557699_))))
                                  (_g75537696_ _g75557699_))
                              (_g75537696_ _g75557699_))
                          (_g75537696_ _g75557699_))))
                  (_g75537696_ _g75557699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75537696_ _g75557699_))
                                              (_g75537696_ _g75557699_))
                                          (_g75537696_ _g75557699_))))
                                  (_g75537696_ _g75557699_))))
                          (_g75537696_ _g75557699_))))
                  (_g75537696_ _g75557699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75537696_ _g75557699_))
                                              (_g75537696_ _g75557699_))
                                          (_g75537696_ _g75557699_))))
                                  (_g75537696_ _g75557699_))))
                           (_g75518031_
                            (lambda (_g75557869_)
                              (if (gx#stx-pair? _g75557869_)
                                  (let ((_e75977871_ (gx#stx-e _g75557869_)))
                                    (let ((_hd75987874_ (##car _e75977871_))
                                          (_tl75997876_ (##cdr _e75977871_)))
                                      (if (gx#identifier? _hd75987874_)
                                          (if (gx#stx-eq? 'let _hd75987874_)
                                              (if (gx#stx-pair? _tl75997876_)
                                                  (let ((_e76007879_
                                                         (gx#stx-e
                                                          _tl75997876_)))
                                                    (let ((_hd76017882_
                                                           (##car _e76007879_))
                                                          (_tl76027884_
                                                           (##cdr _e76007879_)))
                                                      (if (gx#stx-pair?
                                                           _hd76017882_)
                                                          (let ((_e76037887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76017882_)))
                    (let ((_hd76047890_ (##car _e76037887_))
                          (_tl76057892_ (##cdr _e76037887_)))
                      (if (gx#stx-pair? _hd76047890_)
                          (let ((_e76067895_ (gx#stx-e _hd76047890_)))
                            (let ((_hd76077898_ (##car _e76067895_))
                                  (_tl76087900_ (##cdr _e76067895_)))
                              (if (gx#stx-pair? _tl76087900_)
                                  (let ((_e76097903_ (gx#stx-e _tl76087900_)))
                                    (let ((_hd76107906_ (##car _e76097903_))
                                          (_tl76117908_ (##cdr _e76097903_)))
                                      (if (gx#stx-null? _tl76117908_)
                                          (if (gx#stx-null? _tl76057892_)
                                              (if (gx#stx-pair? _tl76027884_)
                                                  (let ((_e76127911_
                                                         (gx#stx-e
                                                          _tl76027884_)))
                                                    (let ((_hd76137914_
                                                           (##car _e76127911_))
                                                          (_tl76147916_
                                                           (##cdr _e76127911_)))
                                                      (if (gx#stx-pair?
                                                           _hd76137914_)
                                                          (let ((_e76157919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76137914_)))
                    (let ((_hd76167922_ (##car _e76157919_))
                          (_tl76177924_ (##cdr _e76157919_)))
                      (if (gx#identifier? _hd76167922_)
                          (if (gx#stx-eq? 'let _hd76167922_)
                              (if (gx#stx-pair? _tl76177924_)
                                  (let ((_e76187927_ (gx#stx-e _tl76177924_)))
                                    (let ((_hd76197930_ (##car _e76187927_))
                                          (_tl76207932_ (##cdr _e76187927_)))
                                      (if (gx#stx-pair? _hd76197930_)
                                          (let ((_e76217935_
                                                 (gx#stx-e _hd76197930_)))
                                            (let ((_hd76227938_
                                                   (##car _e76217935_))
                                                  (_tl76237940_
                                                   (##cdr _e76217935_)))
                                              (if (gx#stx-pair? _hd76227938_)
                                                  (let ((_e76247943_
                                                         (gx#stx-e
                                                          _hd76227938_)))
                                                    (let ((_hd76257946_
                                                           (##car _e76247943_))
                                                          (_tl76267948_
                                                           (##cdr _e76247943_)))
                                                      (if (gx#stx-pair?
                                                           _tl76267948_)
                                                          (let ((_e76277951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl76267948_)))
                    (let ((_hd76287954_ (##car _e76277951_))
                          (_tl76297956_ (##cdr _e76277951_)))
                      (if (gx#stx-null? _tl76297956_)
                          (if (gx#stx-null? _tl76237940_)
                              (if (gx#stx-pair/null? _tl76207932_)
                                  (if (fx>= (gx#stx-length _tl76207932_) '0)
                                      (let ((_g11395_
                                             (gx#syntax-split-splice
                                              _tl76207932_
                                              '0)))
                                        (begin
                                          (let ((_g11396_
                                                 (values-count _g11395_)))
                                            (if (not (fx= _g11396_ 2))
                                                (error "Context expects 2 values"
                                                       _g11396_)))
                                          (let ((_target76307959_
                                                 (values-ref _g11395_ 0))
                                                (_tl76327961_
                                                 (values-ref _g11395_ 1)))
                                            (if (gx#stx-null? _tl76327961_)
                                                (letrec ((_loop76337964_
                                                          (lambda (_hd76317967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body76377969_)
                    (if (gx#stx-pair? _hd76317967_)
                        (let ((_e76347972_ (gx#stx-e _hd76317967_)))
                          (let ((_lp-hd76357975_ (##car _e76347972_))
                                (_lp-tl76367977_ (##cdr _e76347972_)))
                            (_loop76337964_
                             _lp-tl76367977_
                             (cons _lp-hd76357975_ _body76377969_))))
                        (let ((_body76387980_ (reverse _body76377969_)))
                          (if (gx#stx-null? _tl76147916_)
                              ((lambda (_L7983_
                                        _L7984_
                                        _L7985_
                                        _L7986_
                                        _L7987_)
                                 (cons 'let*
                                       (cons (cons (cons _L7987_
                                                         (cons _L7986_ '()))
                                                   (cons (cons _L7985_
                                                               (cons _L7984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g80238026_
                                                                _g80248028_)
                                                         (cons _g80238026_
                                                               _g80248028_))
                                                       '()
                                                       _L7983_)))))
                               _body76387980_
                               _hd76287954_
                               _hd76257946_
                               _hd76107906_
                               _hd76077898_)
                              (_g75527866_ _g75557869_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop76337964_
                                                   _target76307959_
                                                   '()))
                                                (_g75527866_ _g75557869_)))))
                                      (_g75527866_ _g75557869_))
                                  (_g75527866_ _g75557869_))
                              (_g75527866_ _g75557869_))
                          (_g75527866_ _g75557869_))))
                  (_g75527866_ _g75557869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75527866_ _g75557869_))))
                                          (_g75527866_ _g75557869_))))
                                  (_g75527866_ _g75557869_))
                              (_g75527866_ _g75557869_))
                          (_g75527866_ _g75557869_))))
                  (_g75527866_ _g75557869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75527866_ _g75557869_))
                                              (_g75527866_ _g75557869_))
                                          (_g75527866_ _g75557869_))))
                                  (_g75527866_ _g75557869_))))
                          (_g75527866_ _g75557869_))))
                  (_g75527866_ _g75557869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75527866_ _g75557869_))
                                              (_g75527866_ _g75557869_))
                                          (_g75527866_ _g75557869_))))
                                  (_g75527866_ _g75557869_))))
                           (_g75508162_
                            (lambda (_g75558034_)
                              (if (gx#stx-pair? _g75558034_)
                                  (let ((_e75598036_ (gx#stx-e _g75558034_)))
                                    (let ((_hd75608039_ (##car _e75598036_))
                                          (_tl75618041_ (##cdr _e75598036_)))
                                      (if (gx#identifier? _hd75608039_)
                                          (if (gx#stx-eq? 'let _hd75608039_)
                                              (if (gx#stx-pair? _tl75618041_)
                                                  (let ((_e75628044_
                                                         (gx#stx-e
                                                          _tl75618041_)))
                                                    (let ((_hd75638047_
                                                           (##car _e75628044_))
                                                          (_tl75648049_
                                                           (##cdr _e75628044_)))
                                                      (if (gx#stx-pair?
                                                           _hd75638047_)
                                                          (let ((_e75658052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75638047_)))
                    (let ((_hd75668055_ (##car _e75658052_))
                          (_tl75678057_ (##cdr _e75658052_)))
                      (if (gx#stx-pair? _hd75668055_)
                          (let ((_e75688060_ (gx#stx-e _hd75668055_)))
                            (let ((_hd75698063_ (##car _e75688060_))
                                  (_tl75708065_ (##cdr _e75688060_)))
                              (if (gx#stx-pair? _tl75708065_)
                                  (let ((_e75718068_ (gx#stx-e _tl75708065_)))
                                    (let ((_hd75728071_ (##car _e75718068_))
                                          (_tl75738073_ (##cdr _e75718068_)))
                                      (if (gx#stx-null? _tl75738073_)
                                          (if (gx#stx-null? _tl75678057_)
                                              (if (gx#stx-pair? _tl75648049_)
                                                  (let ((_e75748076_
                                                         (gx#stx-e
                                                          _tl75648049_)))
                                                    (let ((_hd75758079_
                                                           (##car _e75748076_))
                                                          (_tl75768081_
                                                           (##cdr _e75748076_)))
                                                      (if (gx#stx-pair?
                                                           _hd75758079_)
                                                          (let ((_e75778084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75758079_)))
                    (let ((_hd75788087_ (##car _e75778084_))
                          (_tl75798089_ (##cdr _e75778084_)))
                      (if (gx#identifier? _hd75788087_)
                          (if (gx#stx-eq? 'let _hd75788087_)
                              (if (gx#stx-pair? _tl75798089_)
                                  (let ((_e75808092_ (gx#stx-e _tl75798089_)))
                                    (let ((_hd75818095_ (##car _e75808092_))
                                          (_tl75828097_ (##cdr _e75808092_)))
                                      (if (gx#stx-null? _hd75818095_)
                                          (if (gx#stx-pair/null? _tl75828097_)
                                              (if (fx>= (gx#stx-length
                                                         _tl75828097_)
                                                        '0)
                                                  (let ((_g11397_
                                                         (gx#syntax-split-splice
                                                          _tl75828097_
                                                          '0)))
                                                    (begin
                                                      (let ((_g11398_
                                                             (values-count
                                                              _g11397_)))
                                                        (if (not (fx= _g11398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g11398_)))
              (let ((_target75838100_ (values-ref _g11397_ 0))
                    (_tl75858102_ (values-ref _g11397_ 1)))
                (if (gx#stx-null? _tl75858102_)
                    (letrec ((_loop75868105_
                              (lambda (_hd75848108_ _body75908110_)
                                (if (gx#stx-pair? _hd75848108_)
                                    (let ((_e75878113_
                                           (gx#stx-e _hd75848108_)))
                                      (let ((_lp-hd75888116_
                                             (##car _e75878113_))
                                            (_lp-tl75898118_
                                             (##cdr _e75878113_)))
                                        (_loop75868105_
                                         _lp-tl75898118_
                                         (cons _lp-hd75888116_
                                               _body75908110_))))
                                    (let ((_body75918121_
                                           (reverse _body75908110_)))
                                      (if (gx#stx-null? _tl75768081_)
                                          ((lambda (_L8124_ _L8125_ _L8126_)
                                             (cons 'let
                                                   (cons (cons (cons _L8126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8125_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g81548157_ _g81558159_)
                             (cons _g81548157_ _g81558159_))
                           '()
                           _L8124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body75918121_
                                           _hd75728071_
                                           _hd75698063_)
                                          (_g75518031_ _g75558034_)))))))
                      (_loop75868105_ _target75838100_ '()))
                    (_g75518031_ _g75558034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75518031_ _g75558034_))
                                              (_g75518031_ _g75558034_))
                                          (_g75518031_ _g75558034_))))
                                  (_g75518031_ _g75558034_))
                              (_g75518031_ _g75558034_))
                          (_g75518031_ _g75558034_))))
                  (_g75518031_ _g75558034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75518031_ _g75558034_))
                                              (_g75518031_ _g75558034_))
                                          (_g75518031_ _g75558034_))))
                                  (_g75518031_ _g75558034_))))
                          (_g75518031_ _g75558034_))))
                  (_g75518031_ _g75558034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75518031_ _g75558034_))
                                              (_g75518031_ _g75558034_))
                                          (_g75518031_ _g75558034_))))
                                  (_g75518031_ _g75558034_)))))
                      (_g75508162_ _code7549_))))
                 (_generate-values7248_
                  (lambda (_hd7362_ _body7363_)
                    (let _lp7365_ ((_rest7367_ _hd7362_)
                                   (_bind7368_ '())
                                   (_check7369_ '())
                                   (_post7370_ '()))
                      (let* ((_g73737384_
                              (lambda (_g73747381_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g73747381_)))
                             (_g73727398_
                              (lambda (_g73747387_)
                                ((lambda ()
                                   (let* ((_body7391_
                                           (if _compiled-body?7244_
                                               _body7363_
                                               (gxc#compile-e _body7363_)))
                                          (_body7393_
                                           (_generate-values-post7249_
                                            _post7370_
                                            _body7391_))
                                          (_body7395_
                                           (_generate-values-check7250_
                                            _check7369_
                                            _body7393_)))
                                     (cons 'let
                                           (cons (reverse _bind7368_)
                                                 (cons _body7395_ '()))))))))
                             (_g73717546_
                              (lambda (_g73747401_)
                                (if (gx#stx-pair? _g73747401_)
                                    (let ((_e73777403_ (gx#stx-e _g73747401_)))
                                      (let ((_hd73787406_ (##car _e73777403_))
                                            (_tl73797408_ (##cdr _e73777403_)))
                                        ((lambda (_L7411_ _L7412_)
                                           (let* ((_g74277452_
                                                   (lambda (_g74287449_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g74287449_)))
                                                  (_g74267496_
                                                   (lambda (_g74287455_)
                                                     (if (gx#stx-pair?
                                                          _g74287455_)
                                                         (let ((_e74427457_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74287455_)))
                   (let ((_hd74437460_ (##car _e74427457_))
                         (_tl74447462_ (##cdr _e74427457_)))
                     (if (gx#stx-pair? _tl74447462_)
                         (let ((_e74457465_ (gx#stx-e _tl74447462_)))
                           (let ((_hd74467468_ (##car _e74457465_))
                                 (_tl74477470_ (##cdr _e74457465_)))
                             (if (gx#stx-null? _tl74477470_)
                                 ((lambda (_L7473_ _L7474_)
                                    (let* ((_vals7487_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7489_ (gxc#compile-e _L7473_))
                                           (_check-values7491_
                                            (gxc#generate-runtime-check-values
                                             _vals7487_
                                             _L7474_))
                                           (_refs7493_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7487_
                                             _L7474_)))
                                      (_lp7365_
                                       _L7411_
                                       (cons (cons _vals7487_
                                                   (cons _expr7489_ '()))
                                             _bind7368_)
                                       (cons _check-values7491_ _check7369_)
                                       (cons _refs7493_ _post7370_))))
                                  _hd74467468_
                                  _hd74437460_)
                                 (_g74277452_ _g74287455_))))
                         (_g74277452_ _g74287455_))))
                 (_g74277452_ _g74287455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74257543_
                                                   (lambda (_g74287499_)
                                                     (if (gx#stx-pair?
                                                          _g74287499_)
                                                         (let ((_e74317501_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74287499_)))
                   (let ((_hd74327504_ (##car _e74317501_))
                         (_tl74337506_ (##cdr _e74317501_)))
                     (if (gx#stx-pair? _hd74327504_)
                         (let ((_e74347509_ (gx#stx-e _hd74327504_)))
                           (let ((_hd74357512_ (##car _e74347509_))
                                 (_tl74367514_ (##cdr _e74347509_)))
                             (if (gx#stx-null? _tl74367514_)
                                 (if (gx#stx-pair? _tl74337506_)
                                     (let ((_e74377517_
                                            (gx#stx-e _tl74337506_)))
                                       (let ((_hd74387520_ (##car _e74377517_))
                                             (_tl74397522_
                                              (##cdr _e74377517_)))
                                         (if (gx#stx-null? _tl74397522_)
                                             ((lambda (_L7525_ _L7526_)
                                                (let ((_eid7540_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7526_))
                                                      (_expr7541_
                                                       (gxc#compile-e
                                                        _L7525_)))
                                                  (_lp7365_
                                                   _L7411_
                                                   (cons (cons _eid7540_
                                                               (cons _expr7541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7368_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7369_
                                                   _post7370_)))
                                              _hd74387520_
                                              _hd74357512_)
                                             (_g74267496_ _g74287499_))))
                                     (_g74267496_ _g74287499_))
                                 (_g74267496_ _g74287499_))))
                         (_g74267496_ _g74287499_))))
                 (_g74267496_ _g74287499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g74257543_ _L7412_)))
                                         _tl73797408_
                                         _hd73787406_)))
                                    (_g73727398_ _g73747401_)))))
                        (_g73717546_ _rest7367_)))))
                 (_generate-values-post7249_
                  (lambda (_post7321_ _body7322_)
                    (let _lp7324_ ((_rest7326_ _post7321_)
                                   (_body7327_ _body7322_))
                      (let* ((_rest73287336_ _rest7326_)
                             (_E73317340_
                              (lambda ()
                                (error '"No clause matching" _rest73287336_)))
                             (_else73307344_ (lambda () _body7327_))
                             (_K73327350_
                              (lambda (_rest7347_ _bind7348_)
                                (_lp7324_
                                 _rest7347_
                                 (cons 'let
                                       (cons _bind7348_
                                             (cons _body7327_ '())))))))
                        (if (##pair? _rest73287336_)
                            (let ((_hd73337353_ (##car _rest73287336_))
                                  (_tl73347355_ (##cdr _rest73287336_)))
                              (let* ((_bind7358_ _hd73337353_)
                                     (_rest7360_ _tl73347355_))
                                (_K73327350_ _rest7360_ _bind7358_)))
                            (_else73307344_))))))
                 (_generate-values-check7250_
                  (lambda (_check7318_ _body7319_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7319_ '())
                                  (reverse _check7318_))))))
          (let* ((_g72527269_
                  (lambda (_g72537266_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g72537266_)))
                 (_g72517315_
                  (lambda (_g72537272_)
                    (if (gx#stx-pair? _g72537272_)
                        (let ((_e72567274_ (gx#stx-e _g72537272_)))
                          (let ((_hd72577277_ (##car _e72567274_))
                                (_tl72587279_ (##cdr _e72567274_)))
                            (if (gx#stx-pair? _tl72587279_)
                                (let ((_e72597282_ (gx#stx-e _tl72587279_)))
                                  (let ((_hd72607285_ (##car _e72597282_))
                                        (_tl72617287_ (##cdr _e72597282_)))
                                    (if (gx#stx-pair? _tl72617287_)
                                        (let ((_e72627290_
                                               (gx#stx-e _tl72617287_)))
                                          (let ((_hd72637293_
                                                 (##car _e72627290_))
                                                (_tl72647295_
                                                 (##cdr _e72627290_)))
                                            (if (gx#stx-null? _tl72647295_)
                                                ((lambda (_L7298_ _L7299_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7299_)
                                                       (_generate-simple7246_
                                                        _L7299_
                                                        _L7298_)
                                                       (_generate-values7248_
                                                        _L7299_
                                                        _L7298_)))
                                                 _hd72637293_
                                                 _hd72607285_)
                                                (_g72527269_ _g72537272_))))
                                        (_g72527269_ _g72537272_))))
                                (_g72527269_ _g72537272_))))
                        (_g72527269_ _g72537272_)))))
            (_g72517315_ _stx7243_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8171_)
          (let ((_compiled-body?8173_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7241
             _stx8171_
             _compiled-body?8173_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g11400_
          (let ((_g11399_ (length _g11400_)))
            (cond ((fx= _g11399_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g11400_))
                  ((fx= _g11399_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7241
                          _g11400_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g11400_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7142_ _hd7143_)
      (let _lp7145_ ((_rest7147_ _hd7143_) (_k7148_ '0) (_r7149_ '()))
        (let* ((_g71547170_
                (lambda (_g71557167_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g71557167_)))
               (_g71537177_
                (lambda (_g71557173_) ((lambda () (reverse _r7149_)))))
               (_g71527193_
                (lambda (_g71557180_)
                  ((lambda (_L7182_)
                     (if (gx#identifier? _L7182_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7182_)
                                             (cons (cons 'values->list
                                                         (cons _vals7142_
                                                               (cons _k7148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7149_)
                         (_g71537177_ _g71557180_)))
                   _g71557180_)))
               (_g71517217_
                (lambda (_g71557196_)
                  (if (gx#stx-pair? _g71557196_)
                      (let ((_e71627198_ (gx#stx-e _g71557196_)))
                        (let ((_hd71637201_ (##car _e71627198_))
                              (_tl71647203_ (##cdr _e71627198_)))
                          ((lambda (_L7206_ _L7207_)
                             (_lp7145_
                              _L7206_
                              (fx+ _k7148_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7207_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7142_
                                                            (cons _k7148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7149_)))
                           _tl71647203_
                           _hd71637201_)))
                      (_g71527193_ _g71557196_))))
               (_g71507239_
                (lambda (_g71557220_)
                  (if (gx#stx-pair? _g71557220_)
                      (let ((_e71577222_ (gx#stx-e _g71557220_)))
                        (let ((_hd71587225_ (##car _e71577222_))
                              (_tl71597227_ (##cdr _e71577222_)))
                          (if (gx#stx-datum? _hd71587225_)
                              (if (equal? (gx#stx-e _hd71587225_) '#f)
                                  ((lambda (_L7230_)
                                     (_lp7145_
                                      _L7230_
                                      (fx+ _k7148_ '1)
                                      _r7149_))
                                   _tl71597227_)
                                  (_g71517217_ _g71557220_))
                              (_g71517217_ _g71557220_))))
                      (_g71517217_ _g71557220_)))))
          (_g71507239_ _rest7147_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6820
      (lambda (_stx6822_ _compiled-body?6823_)
        (letrec ((_generate-simple6825_
                  (lambda (_hd7129_ _body7130_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7129_
                     _body7130_
                     _compiled-body?6823_)))
                 (_generate-values6826_
                  (lambda (_hd6906_ _body6907_)
                    (let _lp6909_ ((_rest6911_ _hd6906_)
                                   (_bind6912_ '())
                                   (_check6913_ '())
                                   (_post6914_ '()))
                      (let* ((_g69176928_
                              (lambda (_g69186925_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g69186925_)))
                             (_g69166942_
                              (lambda (_g69186931_)
                                ((lambda ()
                                   (let* ((_body6935_
                                           (if _compiled-body?6823_
                                               _body6907_
                                               (gxc#compile-e _body6907_)))
                                          (_body6937_
                                           (_generate-values-post6828_
                                            _post6914_
                                            _body6935_))
                                          (_body6939_
                                           (_generate-values-check6827_
                                            _check6913_
                                            _body6937_)))
                                     (cons 'letrec
                                           (cons (reverse _bind6912_)
                                                 (cons _body6939_ '()))))))))
                             (_g69157126_
                              (lambda (_g69186945_)
                                (if (gx#stx-pair? _g69186945_)
                                    (let ((_e69216947_ (gx#stx-e _g69186945_)))
                                      (let ((_hd69226950_ (##car _e69216947_))
                                            (_tl69236952_ (##cdr _e69216947_)))
                                        ((lambda (_L6955_ _L6956_)
                                           (let* ((_g69716996_
                                                   (lambda (_g69726993_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g69726993_)))
                                                  (_g69707076_
                                                   (lambda (_g69726999_)
                                                     (if (gx#stx-pair?
                                                          _g69726999_)
                                                         (let ((_e69867001_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69726999_)))
                   (let ((_hd69877004_ (##car _e69867001_))
                         (_tl69887006_ (##cdr _e69867001_)))
                     (if (gx#stx-pair? _tl69887006_)
                         (let ((_e69897009_ (gx#stx-e _tl69887006_)))
                           (let ((_hd69907012_ (##car _e69897009_))
                                 (_tl69917014_ (##cdr _e69897009_)))
                             (if (gx#stx-null? _tl69917014_)
                                 ((lambda (_L7017_ _L7018_)
                                    (let* ((_vals7031_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7033_ (gxc#compile-e _L7017_))
                                           (_check-values7035_
                                            (gxc#generate-runtime-check-values
                                             _vals7031_
                                             _L7018_))
                                           (_refs7037_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7031_
                                             _L7018_)))
                                      (_lp6909_
                                       _L6955_
                                       (foldl1 cons
                                               (cons (cons _vals7031_
                                                           (cons _expr7033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6912_)
                                               (map (lambda (_e70397041_)
                                                      (let* ((_g70437052_
                                                              _e70397041_)
                                                             (_E70457056_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g70437052_)))
                     (_K70467061_
                      (lambda (_eid7059_)
                        (cons _eid7059_ (cons '#!void '())))))
                (if (##pair? _g70437052_)
                    (let ((_hd70477064_ (##car _g70437052_))
                          (_tl70487066_ (##cdr _g70437052_)))
                      (let ((_eid7069_ _hd70477064_))
                        (if (##pair? _tl70487066_)
                            (let ((_hd70497071_ (##car _tl70487066_))
                                  (_tl70507073_ (##cdr _tl70487066_)))
                              (if (##null? _tl70507073_)
                                  (_K70467061_ _eid7069_)
                                  (_E70457056_)))
                            (_E70457056_))))
                    (_E70457056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7037_))
                                       (cons _check-values7035_ _check6913_)
                                       (foldl1 cons _refs7037_ _post6914_))))
                                  _hd69907012_
                                  _hd69877004_)
                                 (_g69716996_ _g69726999_))))
                         (_g69716996_ _g69726999_))))
                 (_g69716996_ _g69726999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69697123_
                                                   (lambda (_g69727079_)
                                                     (if (gx#stx-pair?
                                                          _g69727079_)
                                                         (let ((_e69757081_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69727079_)))
                   (let ((_hd69767084_ (##car _e69757081_))
                         (_tl69777086_ (##cdr _e69757081_)))
                     (if (gx#stx-pair? _hd69767084_)
                         (let ((_e69787089_ (gx#stx-e _hd69767084_)))
                           (let ((_hd69797092_ (##car _e69787089_))
                                 (_tl69807094_ (##cdr _e69787089_)))
                             (if (gx#stx-null? _tl69807094_)
                                 (if (gx#stx-pair? _tl69777086_)
                                     (let ((_e69817097_
                                            (gx#stx-e _tl69777086_)))
                                       (let ((_hd69827100_ (##car _e69817097_))
                                             (_tl69837102_
                                              (##cdr _e69817097_)))
                                         (if (gx#stx-null? _tl69837102_)
                                             ((lambda (_L7105_ _L7106_)
                                                (let ((_eid7120_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7106_))
                                                      (_expr7121_
                                                       (gxc#compile-e
                                                        _L7105_)))
                                                  (_lp6909_
                                                   _L6955_
                                                   (cons (cons _eid7120_
                                                               (cons _expr7121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind6912_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check6913_
                                                   _post6914_)))
                                              _hd69827100_
                                              _hd69797092_)
                                             (_g69707076_ _g69727079_))))
                                     (_g69707076_ _g69727079_))
                                 (_g69707076_ _g69727079_))))
                         (_g69707076_ _g69727079_))))
                 (_g69707076_ _g69727079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g69697123_ _L6956_)))
                                         _tl69236952_
                                         _hd69226950_)))
                                    (_g69166942_ _g69186945_)))))
                        (_g69157126_ _rest6911_)))))
                 (_generate-values-check6827_
                  (lambda (_check6903_ _body6904_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6904_ '())
                                  (reverse _check6903_)))))
                 (_generate-values-post6828_
                  (lambda (_post6896_ _body6897_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6897_ '())
                                  (map (lambda (_g68986900_)
                                         (cons 'set! _g68986900_))
                                       (reverse _post6896_)))))))
          (let* ((_g68306847_
                  (lambda (_g68316844_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g68316844_)))
                 (_g68296893_
                  (lambda (_g68316850_)
                    (if (gx#stx-pair? _g68316850_)
                        (let ((_e68346852_ (gx#stx-e _g68316850_)))
                          (let ((_hd68356855_ (##car _e68346852_))
                                (_tl68366857_ (##cdr _e68346852_)))
                            (if (gx#stx-pair? _tl68366857_)
                                (let ((_e68376860_ (gx#stx-e _tl68366857_)))
                                  (let ((_hd68386863_ (##car _e68376860_))
                                        (_tl68396865_ (##cdr _e68376860_)))
                                    (if (gx#stx-pair? _tl68396865_)
                                        (let ((_e68406868_
                                               (gx#stx-e _tl68396865_)))
                                          (let ((_hd68416871_
                                                 (##car _e68406868_))
                                                (_tl68426873_
                                                 (##cdr _e68406868_)))
                                            (if (gx#stx-null? _tl68426873_)
                                                ((lambda (_L6876_ _L6877_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L6877_)
                                                       (_generate-simple6825_
                                                        _L6877_
                                                        _L6876_)
                                                       (_generate-values6826_
                                                        _L6877_
                                                        _L6876_)))
                                                 _hd68416871_
                                                 _hd68386863_)
                                                (_g68306847_ _g68316850_))))
                                        (_g68306847_ _g68316850_))))
                                (_g68306847_ _g68316850_))))
                        (_g68306847_ _g68316850_)))))
            (_g68296893_ _stx6822_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7135_)
          (let ((_compiled-body?7137_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6820
             _stx7135_
             _compiled-body?7137_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g11402_
          (let ((_g11401_ (length _g11402_)))
            (cond ((fx= _g11401_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g11402_))
                  ((fx= _g11401_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6820
                          _g11402_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g11402_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx6404_)
      (letrec ((_generate-values6406_
                (lambda (_hd6649_ _body6650_)
                  (let _lp6652_ ((_rest6654_ _hd6649_) (_bind6655_ '()))
                    (let* ((_rest66566664_ _rest6654_)
                           (_E66596668_
                            (lambda ()
                              (error '"No clause matching" _rest66566664_)))
                           (_else66586675_
                            (lambda ()
                              (let ((_bind6672_ (reverse _bind6655_))
                                    (_body6673_ (gxc#compile-e _body6650_)))
                                (cons 'letrec*
                                      (cons _bind6672_
                                            (cons _body6673_ '()))))))
                           (_K66606809_
                            (lambda (_rest6678_ _hd-bind6679_)
                              (let* ((_g66826707_
                                      (lambda (_g66836704_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g66836704_)))
                                     (_g66816759_
                                      (lambda (_g66836710_)
                                        (if (gx#stx-pair? _g66836710_)
                                            (let ((_e66976712_
                                                   (gx#stx-e _g66836710_)))
                                              (let ((_hd66986715_
                                                     (##car _e66976712_))
                                                    (_tl66996717_
                                                     (##cdr _e66976712_)))
                                                (if (gx#stx-pair? _tl66996717_)
                                                    (let ((_e67006720_
                                                           (gx#stx-e
                                                            _tl66996717_)))
                                                      (let ((_hd67016723_
                                                             (##car _e67006720_))
                                                            (_tl67026725_
                                                             (##cdr _e67006720_)))
                                                        (if (gx#stx-null?
                                                             _tl67026725_)
                                                            ((lambda (_L6728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6729_)
                       (let* ((_vals6748_ (gxc#generate-runtime-temporary__0))
                              (_tmp6750_ (gxc#generate-runtime-temporary__0))
                              (_expr6752_ (gxc#compile-e _L6728_))
                              (_check-values6754_
                               (gxc#generate-runtime-check-values
                                _tmp6750_
                                _L6729_))
                              (_refs6756_
                               (gxc#generate-runtime-let-values-bind
                                _vals6748_
                                _L6729_)))
                         (_lp6652_
                          _rest6678_
                          (foldl1 cons
                                  (cons (cons _vals6748_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp6750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr6752_ '()))
                              '())
                        (cons _check-values6754_ (cons _tmp6750_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind6655_)
                                  _refs6756_))))
                     _hd67016723_
                     _hd66986715_)
                    (_g66826707_ _g66836710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66826707_
                                                     _g66836710_))))
                                            (_g66826707_ _g66836710_))))
                                     (_g66806806_
                                      (lambda (_g66836762_)
                                        (if (gx#stx-pair? _g66836762_)
                                            (let ((_e66866764_
                                                   (gx#stx-e _g66836762_)))
                                              (let ((_hd66876767_
                                                     (##car _e66866764_))
                                                    (_tl66886769_
                                                     (##cdr _e66866764_)))
                                                (if (gx#stx-pair? _hd66876767_)
                                                    (let ((_e66896772_
                                                           (gx#stx-e
                                                            _hd66876767_)))
                                                      (let ((_hd66906775_
                                                             (##car _e66896772_))
                                                            (_tl66916777_
                                                             (##cdr _e66896772_)))
                                                        (if (gx#stx-null?
                                                             _tl66916777_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66886769_)
                        (let ((_e66926780_ (gx#stx-e _tl66886769_)))
                          (let ((_hd66936783_ (##car _e66926780_))
                                (_tl66946785_ (##cdr _e66926780_)))
                            (if (gx#stx-null? _tl66946785_)
                                ((lambda (_L6788_ _L6789_)
                                   (let ((_eid6803_
                                          (gxc#generate-runtime-binding-id*
                                           _L6789_))
                                         (_expr6804_ (gxc#compile-e _L6788_)))
                                     (_lp6652_
                                      _rest6678_
                                      (cons (cons _eid6803_
                                                  (cons _expr6804_ '()))
                                            _bind6655_))))
                                 _hd66936783_
                                 _hd66906775_)
                                (_g66816759_ _g66836762_))))
                        (_g66816759_ _g66836762_))
                    (_g66816759_ _g66836762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66816759_
                                                     _g66836762_))))
                                            (_g66816759_ _g66836762_)))))
                                (_g66806806_ _hd-bind6679_)))))
                      (if (##pair? _rest66566664_)
                          (let ((_hd66616812_ (##car _rest66566664_))
                                (_tl66626814_ (##cdr _rest66566664_)))
                            (let* ((_hd-bind6817_ _hd66616812_)
                                   (_rest6819_ _tl66626814_))
                              (_K66606809_ _rest6819_ _hd-bind6817_)))
                          (_else66586675_))))))
               (_generate-letrec?6407_
                (lambda (_hd6539_)
                  (let _lp6541_ ((_rest6543_ _hd6539_))
                    (let* ((_rest65446552_ _rest6543_)
                           (_E65476556_
                            (lambda ()
                              (error '"No clause matching" _rest65446552_)))
                           (_else65466560_ (lambda () '#t))
                           (_K65486637_
                            (lambda (_rest6563_ _hd-bind6564_)
                              (let* ((_g65666583_
                                      (lambda (_g65676580_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g65676580_)))
                                     (_g65656634_
                                      (lambda (_g65676586_)
                                        (if (gx#stx-pair? _g65676586_)
                                            (let ((_e65706588_
                                                   (gx#stx-e _g65676586_)))
                                              (let ((_hd65716591_
                                                     (##car _e65706588_))
                                                    (_tl65726593_
                                                     (##cdr _e65706588_)))
                                                (if (gx#stx-pair? _hd65716591_)
                                                    (let ((_e65736596_
                                                           (gx#stx-e
                                                            _hd65716591_)))
                                                      (let ((_hd65746599_
                                                             (##car _e65736596_))
                                                            (_tl65756601_
                                                             (##cdr _e65736596_)))
                                                        (if (gx#stx-null?
                                                             _tl65756601_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65726593_)
                        (let ((_e65766604_ (gx#stx-e _tl65726593_)))
                          (let ((_hd65776607_ (##car _e65766604_))
                                (_tl65786609_ (##cdr _e65766604_)))
                            (if (gx#stx-null? _tl65786609_)
                                ((lambda (_L6612_ _L6613_)
                                   (if (_is-lambda-expr?6408_ _L6612_)
                                       (_lp6541_ _rest6563_)
                                       '#f))
                                 _hd65776607_
                                 _hd65746599_)
                                (_g65666583_ _g65676586_))))
                        (_g65666583_ _g65676586_))
                    (_g65666583_ _g65676586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65666583_
                                                     _g65676586_))))
                                            (_g65666583_ _g65676586_)))))
                                (_g65656634_ _hd-bind6564_)))))
                      (if (##pair? _rest65446552_)
                          (let ((_hd65496640_ (##car _rest65446552_))
                                (_tl65506642_ (##cdr _rest65446552_)))
                            (let* ((_hd-bind6645_ _hd65496640_)
                                   (_rest6647_ _tl65506642_))
                              (_K65486637_ _rest6647_ _hd-bind6645_)))
                          (_else65466560_))))))
               (_is-lambda-expr?6408_
                (lambda (_expr6476_)
                  (let* ((_g64796493_
                          (lambda (_g64806490_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g64806490_)))
                         (_g64786500_ (lambda (_g64806496_) ((lambda () '#f))))
                         (_g64776536_
                          (lambda (_g64806503_)
                            (if (gx#stx-pair? _g64806503_)
                                (let ((_e64836505_ (gx#stx-e _g64806503_)))
                                  (let ((_hd64846508_ (##car _e64836505_))
                                        (_tl64856510_ (##cdr _e64836505_)))
                                    (if (gx#identifier? _hd64846508_)
                                        (if (gx#stx-eq? '%#lambda _hd64846508_)
                                            (if (gx#stx-pair? _tl64856510_)
                                                (let ((_e64866513_
                                                       (gx#stx-e
                                                        _tl64856510_)))
                                                  (let ((_hd64876516_
                                                         (##car _e64866513_))
                                                        (_tl64886518_
                                                         (##cdr _e64866513_)))
                                                    ((lambda (_L6521_ _L6522_)
                                                       '#t)
                                                     _tl64886518_
                                                     _hd64876516_)))
                                                (_g64786500_ _g64806503_))
                                            (_g64786500_ _g64806503_))
                                        (_g64786500_ _g64806503_))))
                                (_g64786500_ _g64806503_)))))
                    (_g64776536_ _expr6476_)))))
        (let* ((_g64106427_
                (lambda (_g64116424_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64116424_)))
               (_g64096473_
                (lambda (_g64116430_)
                  (if (gx#stx-pair? _g64116430_)
                      (let ((_e64146432_ (gx#stx-e _g64116430_)))
                        (let ((_hd64156435_ (##car _e64146432_))
                              (_tl64166437_ (##cdr _e64146432_)))
                          (if (gx#stx-pair? _tl64166437_)
                              (let ((_e64176440_ (gx#stx-e _tl64166437_)))
                                (let ((_hd64186443_ (##car _e64176440_))
                                      (_tl64196445_ (##cdr _e64176440_)))
                                  (if (gx#stx-pair? _tl64196445_)
                                      (let ((_e64206448_
                                             (gx#stx-e _tl64196445_)))
                                        (let ((_hd64216451_
                                               (##car _e64206448_))
                                              (_tl64226453_
                                               (##cdr _e64206448_)))
                                          (if (gx#stx-null? _tl64226453_)
                                              ((lambda (_L6456_ _L6457_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L6457_)
                                                     (if (_generate-letrec?6407_
                                                          _L6457_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L6457_
                                                          _L6456_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L6457_
                                                          _L6456_
                                                          '#f))
                                                     (_generate-values6406_
                                                      _L6457_
                                                      _L6456_)))
                                               _hd64216451_
                                               _hd64186443_)
                                              (_g64106427_ _g64116430_))))
                                      (_g64106427_ _g64116430_))))
                              (_g64106427_ _g64116430_))))
                      (_g64106427_ _g64116430_)))))
          (_g64096473_ _stx6404_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6297_)
      (let _lp6299_ ((_rest6301_ _hd6297_))
        (let* ((_g63056326_
                (lambda (_g63066323_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63066323_)))
               (_g63046333_ (lambda (_g63066329_) ((lambda () '#f))))
               (_g63036340_
                (lambda (_g63066336_)
                  (if (gx#stx-null? _g63066336_)
                      ((lambda () '#t))
                      (_g63046333_ _g63066336_))))
               (_g63026401_
                (lambda (_g63066343_)
                  (if (gx#stx-pair? _g63066343_)
                      (let ((_e63106345_ (gx#stx-e _g63066343_)))
                        (let ((_hd63116348_ (##car _e63106345_))
                              (_tl63126350_ (##cdr _e63106345_)))
                          (if (gx#stx-pair? _hd63116348_)
                              (let ((_e63136353_ (gx#stx-e _hd63116348_)))
                                (let ((_hd63146356_ (##car _e63136353_))
                                      (_tl63156358_ (##cdr _e63136353_)))
                                  (if (gx#stx-pair? _hd63146356_)
                                      (let ((_e63166361_
                                             (gx#stx-e _hd63146356_)))
                                        (let ((_hd63176364_
                                               (##car _e63166361_))
                                              (_tl63186366_
                                               (##cdr _e63166361_)))
                                          (if (gx#stx-null? _tl63186366_)
                                              (if (gx#stx-pair? _tl63156358_)
                                                  (let ((_e63196369_
                                                         (gx#stx-e
                                                          _tl63156358_)))
                                                    (let ((_hd63206372_
                                                           (##car _e63196369_))
                                                          (_tl63216374_
                                                           (##cdr _e63196369_)))
                                                      (if (gx#stx-null?
                                                           _tl63216374_)
                                                          ((lambda (_L6377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6378_
                            _L6379_)
                     (_lp6299_ _L6377_))
                   _tl63126350_
                   _hd63206372_
                   _hd63176364_)
                  (_g63036340_ _g63066343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63036340_ _g63066343_))
                                              (_g63036340_ _g63066343_))))
                                      (_g63036340_ _g63066343_))))
                              (_g63036340_ _g63066343_))))
                      (_g63036340_ _g63066343_)))))
          (_g63026401_ _rest6301_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6221_ _hd6222_ _body6223_ _compiled-body?6224_)
      (letrec ((_generate16226_
                (lambda (_bind6228_)
                  (let* ((_g62306247_
                          (lambda (_g62316244_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g62316244_)))
                         (_g62296294_
                          (lambda (_g62316250_)
                            (if (gx#stx-pair? _g62316250_)
                                (let ((_e62346252_ (gx#stx-e _g62316250_)))
                                  (let ((_hd62356255_ (##car _e62346252_))
                                        (_tl62366257_ (##cdr _e62346252_)))
                                    (if (gx#stx-pair? _hd62356255_)
                                        (let ((_e62376260_
                                               (gx#stx-e _hd62356255_)))
                                          (let ((_hd62386263_
                                                 (##car _e62376260_))
                                                (_tl62396265_
                                                 (##cdr _e62376260_)))
                                            (if (gx#stx-null? _tl62396265_)
                                                (if (gx#stx-pair? _tl62366257_)
                                                    (let ((_e62406268_
                                                           (gx#stx-e
                                                            _tl62366257_)))
                                                      (let ((_hd62416271_
                                                             (##car _e62406268_))
                                                            (_tl62426273_
                                                             (##cdr _e62406268_)))
                                                        (if (gx#stx-null?
                                                             _tl62426273_)
                                                            ((lambda (_L6276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6277_)
                       (cons (gxc#generate-runtime-binding-id* _L6277_)
                             (cons (gxc#compile-e _L6276_) '())))
                     _hd62416271_
                     _hd62386263_)
                    (_g62306247_ _g62316250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62306247_ _g62316250_))
                                                (_g62306247_ _g62316250_))))
                                        (_g62306247_ _g62316250_))))
                                (_g62306247_ _g62316250_)))))
                    (_g62296294_ _bind6228_)))))
        (cons _form6221_
              (cons (map _generate16226_ _hd6222_)
                    (cons (if _compiled-body?6224_
                              _body6223_
                              (gxc#compile-e _body6223_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6129_)
      (letrec ((_generate16131_
                (lambda (_datum6183_)
                  (if (let ((_$e6185_ (null? _datum6183_)))
                        (if _$e6185_
                            _$e6185_
                            (let ((_$e6188_ (interned-symbol? _datum6183_)))
                              (if _$e6188_
                                  _$e6188_
                                  (let ((_$e6191_
                                         (gx#self-quoting? _datum6183_)))
                                    (if _$e6191_
                                        _$e6191_
                                        (eof-object? _datum6183_)))))))
                      _datum6183_
                      (if (uninterned-symbol? _datum6183_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10250
                           _datum6183_
                           '#t)
                          (if (pair? _datum6183_)
                              (cons (_generate16131_ (car _datum6183_))
                                    (_generate16131_ (cdr _datum6183_)))
                              (if (box? _datum6183_)
                                  (box (_generate16131_ (unbox _datum6183_)))
                                  (if (vector? _datum6183_)
                                      (vector-map _generate16131_ _datum6183_)
                                      (if (let ((_$e6194_
                                                 (s8vector? _datum6183_)))
                                            (if _$e6194_
                                                _$e6194_
                                                (let ((_$e6197_
                                                       (u8vector?
                                                        _datum6183_)))
                                                  (if _$e6197_
                                                      _$e6197_
                                                      (let ((_$e6200_
                                                             (s16vector?
                                                              _datum6183_)))
                                                        (if _$e6200_
                                                            _$e6200_
                                                            (let ((_$e6203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6183_)))
                      (if _$e6203_
                          _$e6203_
                          (let ((_$e6206_ (s32vector? _datum6183_)))
                            (if _$e6206_
                                _$e6206_
                                (let ((_$e6209_ (u32vector? _datum6183_)))
                                  (if _$e6209_
                                      _$e6209_
                                      (let ((_$e6212_
                                             (s64vector? _datum6183_)))
                                        (if _$e6212_
                                            _$e6212_
                                            (let ((_$e6215_
                                                   (u64vector? _datum6183_)))
                                              (if _$e6215_
                                                  _$e6215_
                                                  (let ((_$e6218_
                                                         (f32vector?
                                                          _datum6183_)))
                                                    (if _$e6218_
                                                        _$e6218_
                                                        (f64vector?
                                                         _datum6183_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6183_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6129_))))))))))
        (let* ((_g61336146_
                (lambda (_g61346143_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61346143_)))
               (_g61326180_
                (lambda (_g61346149_)
                  (if (gx#stx-pair? _g61346149_)
                      (let ((_e61366151_ (gx#stx-e _g61346149_)))
                        (let ((_hd61376154_ (##car _e61366151_))
                              (_tl61386156_ (##cdr _e61366151_)))
                          (if (gx#stx-pair? _tl61386156_)
                              (let ((_e61396159_ (gx#stx-e _tl61386156_)))
                                (let ((_hd61406162_ (##car _e61396159_))
                                      (_tl61416164_ (##cdr _e61396159_)))
                                  (if (gx#stx-null? _tl61416164_)
                                      ((lambda (_L6167_)
                                         (cons 'quote
                                               (cons (_generate16131_
                                                      (gx#stx-e _L6167_))
                                                     '())))
                                       _hd61406162_)
                                      (_g61336146_ _g61346149_))))
                              (_g61336146_ _g61346149_))))
                      (_g61336146_ _g61346149_)))))
          (_g61326180_ _stx6129_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5822_)
      (let* ((_g58245838_
              (lambda (_g58255835_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58255835_)))
             (_g58236126_
              (lambda (_g58255841_)
                (if (gx#stx-pair? _g58255841_)
                    (let ((_e58285843_ (gx#stx-e _g58255841_)))
                      (let ((_hd58295846_ (##car _e58285843_))
                            (_tl58305848_ (##cdr _e58285843_)))
                        (if (gx#stx-pair? _tl58305848_)
                            (let ((_e58315851_ (gx#stx-e _tl58305848_)))
                              (let ((_hd58325854_ (##car _e58315851_))
                                    (_tl58335856_ (##cdr _e58315851_)))
                                ((lambda (_L5859_ _L5860_)
                                   (let ((_rator5873_ (gxc#compile-e _L5860_))
                                         (_rands5874_
                                          (map gxc#compile-e _L5859_)))
                                     (let* ((_g58775929_
                                             (lambda (_g58785926_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g58785926_)))
                                            (_g58765936_
                                             (lambda (_g58785932_)
                                               ((lambda ()
                                                  (cons _rator5873_
                                                        _rands5874_)))))
                                            (_g58756123_
                                             (lambda (_g58785939_)
                                               (if (gx#stx-pair? _g58785939_)
                                                   (let ((_e58835941_
                                                          (gx#stx-e
                                                           _g58785939_)))
                                                     (let ((_hd58845944_
                                                            (##car _e58835941_))
                                                           (_tl58855946_
                                                            (##cdr _e58835941_)))
                                                       (if (gx#identifier?
                                                            _hd58845944_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd58845944_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl58855946_)
                           (let ((_e58865949_ (gx#stx-e _tl58855946_)))
                             (let ((_hd58875952_ (##car _e58865949_))
                                   (_tl58885954_ (##cdr _e58865949_)))
                               (if (gx#stx-pair? _hd58875952_)
                                   (let ((_e58895957_ (gx#stx-e _hd58875952_)))
                                     (let ((_hd58905960_ (##car _e58895957_))
                                           (_tl58915962_ (##cdr _e58895957_)))
                                       (if (gx#stx-pair? _hd58905960_)
                                           (let ((_e58925965_
                                                  (gx#stx-e _hd58905960_)))
                                             (let ((_hd58935968_
                                                    (##car _e58925965_))
                                                   (_tl58945970_
                                                    (##cdr _e58925965_)))
                                               (if (gx#stx-pair? _tl58945970_)
                                                   (let ((_e58955973_
                                                          (gx#stx-e
                                                           _tl58945970_)))
                                                     (let ((_hd58965976_
                                                            (##car _e58955973_))
                                                           (_tl58975978_
                                                            (##cdr _e58955973_)))
                                                       (if (gx#stx-pair?
                                                            _hd58965976_)
                                                           (let ((_e58985981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd58965976_)))
                     (let ((_hd58995984_ (##car _e58985981_))
                           (_tl59005986_ (##cdr _e58985981_)))
                       (if (gx#identifier? _hd58995984_)
                           (if (gx#stx-eq? 'lambda _hd58995984_)
                               (if (gx#stx-pair? _tl59005986_)
                                   (let ((_e59015989_ (gx#stx-e _tl59005986_)))
                                     (let ((_hd59025992_ (##car _e59015989_))
                                           (_tl59035994_ (##cdr _e59015989_)))
                                       (if (gx#stx-pair/null? _hd59025992_)
                                           (if (fx>= (gx#stx-length
                                                      _hd59025992_)
                                                     '0)
                                               (let ((_g11403_
                                                      (gx#syntax-split-splice
                                                       _hd59025992_
                                                       '0)))
                                                 (begin
                                                   (let ((_g11404_
                                                          (values-count
                                                           _g11403_)))
                                                     (if (not (fx= _g11404_ 2))
                                                         (error "Context expects 2 values"
                                                                _g11404_)))
                                                   (let ((_target59045997_
                                                          (values-ref
                                                           _g11403_
                                                           0))
                                                         (_tl59065999_
                                                          (values-ref
                                                           _g11403_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl59065999_)
                                                         (letrec ((_loop59076002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd59056005_ _arg59116007_)
                             (if (gx#stx-pair? _hd59056005_)
                                 (let ((_e59086010_ (gx#stx-e _hd59056005_)))
                                   (let ((_lp-hd59096013_ (##car _e59086010_))
                                         (_lp-tl59106015_ (##cdr _e59086010_)))
                                     (_loop59076002_
                                      _lp-tl59106015_
                                      (cons _lp-hd59096013_ _arg59116007_))))
                                 (let ((_arg59126018_ (reverse _arg59116007_)))
                                   (if (gx#stx-pair/null? _tl59035994_)
                                       (if (fx>= (gx#stx-length _tl59035994_)
                                                 '0)
                                           (let ((_g11405_
                                                  (gx#syntax-split-splice
                                                   _tl59035994_
                                                   '0)))
                                             (begin
                                               (let ((_g11406_
                                                      (values-count _g11405_)))
                                                 (if (not (fx= _g11406_ 2))
                                                     (error "Context expects 2 values"
                                                            _g11406_)))
                                               (let ((_target59136021_
                                                      (values-ref _g11405_ 0))
                                                     (_tl59156023_
                                                      (values-ref _g11405_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl59156023_)
                                                     (letrec ((_loop59166026_
                                                               (lambda (_hd59146029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body59206031_)
                         (if (gx#stx-pair? _hd59146029_)
                             (let ((_e59176034_ (gx#stx-e _hd59146029_)))
                               (let ((_lp-hd59186037_ (##car _e59176034_))
                                     (_lp-tl59196039_ (##cdr _e59176034_)))
                                 (_loop59166026_
                                  _lp-tl59196039_
                                  (cons _lp-hd59186037_ _body59206031_))))
                             (let ((_body59216042_ (reverse _body59206031_)))
                               (if (gx#stx-null? _tl58975978_)
                                   (if (gx#stx-null? _tl58915962_)
                                       (if (gx#stx-pair? _tl58885954_)
                                           (let ((_e59226045_
                                                  (gx#stx-e _tl58885954_)))
                                             (let ((_hd59236048_
                                                    (##car _e59226045_))
                                                   (_tl59246050_
                                                    (##cdr _e59226045_)))
                                               (if (gx#stx-null? _tl59246050_)
                                                   ((lambda (_L6053_
                                                             _L6054_
                                                             _L6055_
                                                             _L6056_)
                                                      (if (eq? _L6056_ _L6053_)
                                                          (if (fx= (length _rands5874_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g60926095_ _g60936097_)
                                               (cons _g60926095_ _g60936097_))
                                             '()
                                             _L6055_))))
                      (let* ((_id6100_ _L6056_)
                             (_args6109_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g61016104_ _g61026106_)
                                          (cons _g61016104_ _g61026106_))
                                        '()
                                        _L6055_)))
                             (_body6118_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g61106113_ _g61116115_)
                                          (cons _g61106113_ _g61116115_))
                                        '()
                                        _L6054_)))
                             (_init6120_ (map list _args6109_ _rands5874_)))
                        (cons 'let
                              (cons _id6100_ (cons _init6120_ _body6118_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx5822_))
                  (_g58765936_ _g58785939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd59236048_
                                                    _body59216042_
                                                    _arg59126018_
                                                    _hd58935968_)
                                                   (_g58765936_ _g58785939_))))
                                           (_g58765936_ _g58785939_))
                                       (_g58765936_ _g58785939_))
                                   (_g58765936_ _g58785939_)))))))
               (_loop59166026_ _target59136021_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58765936_
                                                      _g58785939_)))))
                                           (_g58765936_ _g58785939_))
                                       (_g58765936_ _g58785939_)))))))
                   (_loop59076002_ _target59045997_ '()))
                 (_g58765936_ _g58785939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g58765936_ _g58785939_))
                                           (_g58765936_ _g58785939_))))
                                   (_g58765936_ _g58785939_))
                               (_g58765936_ _g58785939_))
                           (_g58765936_ _g58785939_))))
                   (_g58765936_ _g58785939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g58765936_ _g58785939_))))
                                           (_g58765936_ _g58785939_))))
                                   (_g58765936_ _g58785939_))))
                           (_g58765936_ _g58785939_))
                       (_g58765936_ _g58785939_))
                   (_g58765936_ _g58785939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g58765936_
                                                    _g58785939_)))))
                                       (_g58756123_ _rator5873_))))
                                 _tl58335856_
                                 _hd58325854_)))
                            (_g58245838_ _g58255841_))))
                    (_g58245838_ _g58255841_)))))
        (_g58236126_ _stx5822_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5784_)
      (let* ((_g57865796_
              (lambda (_g57875793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57875793_)))
             (_g57855819_
              (lambda (_g57875799_)
                (if (gx#stx-pair? _g57875799_)
                    (let ((_e57895801_ (gx#stx-e _g57875799_)))
                      (let ((_hd57905804_ (##car _e57895801_))
                            (_tl57915806_ (##cdr _e57895801_)))
                        ((lambda (_L5809_)
                           (cons 'if (map gxc#compile-e _L5809_)))
                         _tl57915806_)))
                    (_g57865796_ _g57875799_)))))
        (_g57855819_ _stx5784_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5733_)
      (let* ((_g57355748_
              (lambda (_g57365745_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57365745_)))
             (_g57345781_
              (lambda (_g57365751_)
                (if (gx#stx-pair? _g57365751_)
                    (let ((_e57385753_ (gx#stx-e _g57365751_)))
                      (let ((_hd57395756_ (##car _e57385753_))
                            (_tl57405758_ (##cdr _e57385753_)))
                        (if (gx#stx-pair? _tl57405758_)
                            (let ((_e57415761_ (gx#stx-e _tl57405758_)))
                              (let ((_hd57425764_ (##car _e57415761_))
                                    (_tl57435766_ (##cdr _e57415761_)))
                                (if (gx#stx-null? _tl57435766_)
                                    ((lambda (_L5769_)
                                       (gxc#generate-runtime-binding-id
                                        _L5769_))
                                     _hd57425764_)
                                    (_g57355748_ _g57365751_))))
                            (_g57355748_ _g57365751_))))
                    (_g57355748_ _g57365751_)))))
        (_g57345781_ _stx5733_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5666_)
      (let* ((_g56685685_
              (lambda (_g56695682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56695682_)))
             (_g56675730_
              (lambda (_g56695688_)
                (if (gx#stx-pair? _g56695688_)
                    (let ((_e56725690_ (gx#stx-e _g56695688_)))
                      (let ((_hd56735693_ (##car _e56725690_))
                            (_tl56745695_ (##cdr _e56725690_)))
                        (if (gx#stx-pair? _tl56745695_)
                            (let ((_e56755698_ (gx#stx-e _tl56745695_)))
                              (let ((_hd56765701_ (##car _e56755698_))
                                    (_tl56775703_ (##cdr _e56755698_)))
                                (if (gx#stx-pair? _tl56775703_)
                                    (let ((_e56785706_
                                           (gx#stx-e _tl56775703_)))
                                      (let ((_hd56795709_ (##car _e56785706_))
                                            (_tl56805711_ (##cdr _e56785706_)))
                                        (if (gx#stx-null? _tl56805711_)
                                            ((lambda (_L5714_ _L5715_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L5715_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5714_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56795709_
                                             _hd56765701_)
                                            (_g56685685_ _g56695688_))))
                                    (_g56685685_ _g56695688_))))
                            (_g56685685_ _g56695688_))))
                    (_g56685685_ _g56695688_)))))
        (_g56675730_ _stx5666_))))
  (define gxc#generate-runtime-struct-instancep%
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
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5647_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5648_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56125642_
                                             _hd56095634_)
                                            (_g56015618_ _g56025621_))))
                                    (_g56015618_ _g56025621_))))
                            (_g56015618_ _g56025621_))))
                    (_g56015618_ _g56025621_)))))
        (_g56005663_ _stx5599_))))
  (define gxc#generate-runtime-struct-direct-instancep%
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
                                               (cons '##structure-direct-instance-of?
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
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5449_)
      (let* ((_g54515472_
              (lambda (_g54525469_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54525469_)))
             (_g54505529_
              (lambda (_g54525475_)
                (if (gx#stx-pair? _g54525475_)
                    (let ((_e54565477_ (gx#stx-e _g54525475_)))
                      (let ((_hd54575480_ (##car _e54565477_))
                            (_tl54585482_ (##cdr _e54565477_)))
                        (if (gx#stx-pair? _tl54585482_)
                            (let ((_e54595485_ (gx#stx-e _tl54585482_)))
                              (let ((_hd54605488_ (##car _e54595485_))
                                    (_tl54615490_ (##cdr _e54595485_)))
                                (if (gx#stx-pair? _tl54615490_)
                                    (let ((_e54625493_
                                           (gx#stx-e _tl54615490_)))
                                      (let ((_hd54635496_ (##car _e54625493_))
                                            (_tl54645498_ (##cdr _e54625493_)))
                                        (if (gx#stx-pair? _tl54645498_)
                                            (let ((_e54655501_
                                                   (gx#stx-e _tl54645498_)))
                                              (let ((_hd54665504_
                                                     (##car _e54655501_))
                                                    (_tl54675506_
                                                     (##cdr _e54655501_)))
                                                (if (gx#stx-null? _tl54675506_)
                                                    ((lambda (_L5509_
                                                              _L5510_
                                                              _L5511_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5509_)
                           (cons (gxc#compile-e _L5510_)
                                 (cons (gxc#compile-e _L5511_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd54665504_
                                                     _hd54635496_
                                                     _hd54605488_)
                                                    (_g54515472_
                                                     _g54525475_))))
                                            (_g54515472_ _g54525475_))))
                                    (_g54515472_ _g54525475_))))
                            (_g54515472_ _g54525475_))))
                    (_g54515472_ _g54525475_)))))
        (_g54505529_ _stx5449_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5350_)
      (let* ((_g53525377_
              (lambda (_g53535374_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53535374_)))
             (_g53515446_
              (lambda (_g53535380_)
                (if (gx#stx-pair? _g53535380_)
                    (let ((_e53585382_ (gx#stx-e _g53535380_)))
                      (let ((_hd53595385_ (##car _e53585382_))
                            (_tl53605387_ (##cdr _e53585382_)))
                        (if (gx#stx-pair? _tl53605387_)
                            (let ((_e53615390_ (gx#stx-e _tl53605387_)))
                              (let ((_hd53625393_ (##car _e53615390_))
                                    (_tl53635395_ (##cdr _e53615390_)))
                                (if (gx#stx-pair? _tl53635395_)
                                    (let ((_e53645398_
                                           (gx#stx-e _tl53635395_)))
                                      (let ((_hd53655401_ (##car _e53645398_))
                                            (_tl53665403_ (##cdr _e53645398_)))
                                        (if (gx#stx-pair? _tl53665403_)
                                            (let ((_e53675406_
                                                   (gx#stx-e _tl53665403_)))
                                              (let ((_hd53685409_
                                                     (##car _e53675406_))
                                                    (_tl53695411_
                                                     (##cdr _e53675406_)))
                                                (if (gx#stx-pair? _tl53695411_)
                                                    (let ((_e53705414_
                                                           (gx#stx-e
                                                            _tl53695411_)))
                                                      (let ((_hd53715417_
                                                             (##car _e53705414_))
                                                            (_tl53725419_
                                                             (##cdr _e53705414_)))
                                                        (if (gx#stx-null?
                                                             _tl53725419_)
                                                            ((lambda (_L5422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5423_
                              _L5424_
                              _L5425_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L5423_)
                                   (cons (gxc#compile-e _L5422_)
                                         (cons (gxc#compile-e _L5424_)
                                               (cons (gxc#compile-e _L5425_)
                                                     (cons ''#f '())))))))
                     _hd53715417_
                     _hd53685409_
                     _hd53655401_
                     _hd53625393_)
                    (_g53525377_ _g53535380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53525377_
                                                     _g53535380_))))
                                            (_g53525377_ _g53535380_))))
                                    (_g53525377_ _g53535380_))))
                            (_g53525377_ _g53535380_))))
                    (_g53525377_ _g53535380_)))))
        (_g53515446_ _stx5350_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5267_)
      (let* ((_g52695290_
              (lambda (_g52705287_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52705287_)))
             (_g52685347_
              (lambda (_g52705293_)
                (if (gx#stx-pair? _g52705293_)
                    (let ((_e52745295_ (gx#stx-e _g52705293_)))
                      (let ((_hd52755298_ (##car _e52745295_))
                            (_tl52765300_ (##cdr _e52745295_)))
                        (if (gx#stx-pair? _tl52765300_)
                            (let ((_e52775303_ (gx#stx-e _tl52765300_)))
                              (let ((_hd52785306_ (##car _e52775303_))
                                    (_tl52795308_ (##cdr _e52775303_)))
                                (if (gx#stx-pair? _tl52795308_)
                                    (let ((_e52805311_
                                           (gx#stx-e _tl52795308_)))
                                      (let ((_hd52815314_ (##car _e52805311_))
                                            (_tl52825316_ (##cdr _e52805311_)))
                                        (if (gx#stx-pair? _tl52825316_)
                                            (let ((_e52835319_
                                                   (gx#stx-e _tl52825316_)))
                                              (let ((_hd52845322_
                                                     (##car _e52835319_))
                                                    (_tl52855324_
                                                     (##cdr _e52835319_)))
                                                (if (gx#stx-null? _tl52855324_)
                                                    ((lambda (_L5327_
                                                              _L5328_
                                                              _L5329_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5327_)
                           (cons (gxc#compile-e _L5328_)
                                 (cons (gxc#compile-e _L5329_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd52845322_
                                                     _hd52815314_
                                                     _hd52785306_)
                                                    (_g52695290_
                                                     _g52705293_))))
                                            (_g52695290_ _g52705293_))))
                                    (_g52695290_ _g52705293_))))
                            (_g52695290_ _g52705293_))))
                    (_g52695290_ _g52705293_)))))
        (_g52685347_ _stx5267_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5168_)
      (let* ((_g51705195_
              (lambda (_g51715192_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51715192_)))
             (_g51695264_
              (lambda (_g51715198_)
                (if (gx#stx-pair? _g51715198_)
                    (let ((_e51765200_ (gx#stx-e _g51715198_)))
                      (let ((_hd51775203_ (##car _e51765200_))
                            (_tl51785205_ (##cdr _e51765200_)))
                        (if (gx#stx-pair? _tl51785205_)
                            (let ((_e51795208_ (gx#stx-e _tl51785205_)))
                              (let ((_hd51805211_ (##car _e51795208_))
                                    (_tl51815213_ (##cdr _e51795208_)))
                                (if (gx#stx-pair? _tl51815213_)
                                    (let ((_e51825216_
                                           (gx#stx-e _tl51815213_)))
                                      (let ((_hd51835219_ (##car _e51825216_))
                                            (_tl51845221_ (##cdr _e51825216_)))
                                        (if (gx#stx-pair? _tl51845221_)
                                            (let ((_e51855224_
                                                   (gx#stx-e _tl51845221_)))
                                              (let ((_hd51865227_
                                                     (##car _e51855224_))
                                                    (_tl51875229_
                                                     (##cdr _e51855224_)))
                                                (if (gx#stx-pair? _tl51875229_)
                                                    (let ((_e51885232_
                                                           (gx#stx-e
                                                            _tl51875229_)))
                                                      (let ((_hd51895235_
                                                             (##car _e51885232_))
                                                            (_tl51905237_
                                                             (##cdr _e51885232_)))
                                                        (if (gx#stx-null?
                                                             _tl51905237_)
                                                            ((lambda (_L5240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5241_
                              _L5242_
                              _L5243_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5241_)
                                   (cons (gxc#compile-e _L5240_)
                                         (cons (gxc#compile-e _L5242_)
                                               (cons (gxc#compile-e _L5243_)
                                                     (cons ''#f '())))))))
                     _hd51895235_
                     _hd51865227_
                     _hd51835219_
                     _hd51805211_)
                    (_g51705195_ _g51715198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g51705195_
                                                     _g51715198_))))
                                            (_g51705195_ _g51715198_))))
                                    (_g51705195_ _g51715198_))))
                            (_g51705195_ _g51715198_))))
                    (_g51705195_ _g51715198_)))))
        (_g51695264_ _stx5168_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5085_)
      (let* ((_g50875108_
              (lambda (_g50885105_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g50885105_)))
             (_g50865165_
              (lambda (_g50885111_)
                (if (gx#stx-pair? _g50885111_)
                    (let ((_e50925113_ (gx#stx-e _g50885111_)))
                      (let ((_hd50935116_ (##car _e50925113_))
                            (_tl50945118_ (##cdr _e50925113_)))
                        (if (gx#stx-pair? _tl50945118_)
                            (let ((_e50955121_ (gx#stx-e _tl50945118_)))
                              (let ((_hd50965124_ (##car _e50955121_))
                                    (_tl50975126_ (##cdr _e50955121_)))
                                (if (gx#stx-pair? _tl50975126_)
                                    (let ((_e50985129_
                                           (gx#stx-e _tl50975126_)))
                                      (let ((_hd50995132_ (##car _e50985129_))
                                            (_tl51005134_ (##cdr _e50985129_)))
                                        (if (gx#stx-pair? _tl51005134_)
                                            (let ((_e51015137_
                                                   (gx#stx-e _tl51005134_)))
                                              (let ((_hd51025140_
                                                     (##car _e51015137_))
                                                    (_tl51035142_
                                                     (##cdr _e51015137_)))
                                                (if (gx#stx-null? _tl51035142_)
                                                    ((lambda (_L5145_
                                                              _L5146_
                                                              _L5147_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5145_)
                           (cons (gxc#compile-e _L5146_)
                                 (cons (gxc#compile-e _L5147_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd51025140_
                                                     _hd50995132_
                                                     _hd50965124_)
                                                    (_g50875108_
                                                     _g50885111_))))
                                            (_g50875108_ _g50885111_))))
                                    (_g50875108_ _g50885111_))))
                            (_g50875108_ _g50885111_))))
                    (_g50875108_ _g50885111_)))))
        (_g50865165_ _stx5085_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx4986_)
      (let* ((_g49885013_
              (lambda (_g49895010_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49895010_)))
             (_g49875082_
              (lambda (_g49895016_)
                (if (gx#stx-pair? _g49895016_)
                    (let ((_e49945018_ (gx#stx-e _g49895016_)))
                      (let ((_hd49955021_ (##car _e49945018_))
                            (_tl49965023_ (##cdr _e49945018_)))
                        (if (gx#stx-pair? _tl49965023_)
                            (let ((_e49975026_ (gx#stx-e _tl49965023_)))
                              (let ((_hd49985029_ (##car _e49975026_))
                                    (_tl49995031_ (##cdr _e49975026_)))
                                (if (gx#stx-pair? _tl49995031_)
                                    (let ((_e50005034_
                                           (gx#stx-e _tl49995031_)))
                                      (let ((_hd50015037_ (##car _e50005034_))
                                            (_tl50025039_ (##cdr _e50005034_)))
                                        (if (gx#stx-pair? _tl50025039_)
                                            (let ((_e50035042_
                                                   (gx#stx-e _tl50025039_)))
                                              (let ((_hd50045045_
                                                     (##car _e50035042_))
                                                    (_tl50055047_
                                                     (##cdr _e50035042_)))
                                                (if (gx#stx-pair? _tl50055047_)
                                                    (let ((_e50065050_
                                                           (gx#stx-e
                                                            _tl50055047_)))
                                                      (let ((_hd50075053_
                                                             (##car _e50065050_))
                                                            (_tl50085055_
                                                             (##cdr _e50065050_)))
                                                        (if (gx#stx-null?
                                                             _tl50085055_)
                                                            ((lambda (_L5058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5059_
                              _L5060_
                              _L5061_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5059_)
                                   (cons (gxc#compile-e _L5058_)
                                         (cons (gxc#compile-e _L5060_)
                                               (cons (gxc#compile-e _L5061_)
                                                     (cons ''#f '())))))))
                     _hd50075053_
                     _hd50045045_
                     _hd50015037_
                     _hd49985029_)
                    (_g49885013_ _g49895016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g49885013_
                                                     _g49895016_))))
                                            (_g49885013_ _g49895016_))))
                                    (_g49885013_ _g49895016_))))
                            (_g49885013_ _g49895016_))))
                    (_g49885013_ _g49895016_)))))
        (_g49875082_ _stx4986_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4895_)
      (let* ((_g48974907_
              (lambda (_g48984904_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48984904_)))
             (_g48964983_
              (lambda (_g48984910_)
                (if (gx#stx-pair? _g48984910_)
                    (let ((_e49004912_ (gx#stx-e _g48984910_)))
                      (let ((_hd49014915_ (##car _e49004912_))
                            (_tl49024917_ (##cdr _e49004912_)))
                        ((lambda (_L4920_)
                           (let ((_ht4930_ (make-hash-table-eq)))
                             (let _lp4932_ ((_rest4934_ _L4920_)
                                            (_loads4935_ '()))
                               (letrec ((_K4937_ (lambda (_ctx4976_ _rest4977_)
                                                   (let ((_id4979_
                                                          (##structure-ref
                                                           _ctx4976_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht4930_
                                                          _id4979_
                                                          '#f)
                                                         (_lp4932_
                                                          _rest4977_
                                                          _loads4935_)
                                                         (let ((_rt4981_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id4979_)
                         '"__rt")))
                   (begin
                     (table-set! _ht4930_ _id4979_ _rt4981_)
                     (_lp4932_ _rest4977_ (cons _rt4981_ _loads4935_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest49384946_ _rest4934_)
                                        (_E49414950_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest49384946_)))
                                        (_else49404958_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g49534955_)
                                                        (list 'load-module
                                                              _g49534955_))
                                                      (reverse _loads4935_)))))
                                        (_K49424964_
                                         (lambda (_rest4961_ _in4962_)
                                           (if (##structure-instance-of?
                                                _in4962_
                                                'gx#module-context::t)
                                               (_K4937_ _in4962_ _rest4961_)
                                               (if (##structure-direct-instance-of?
                                                    _in4962_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in4962_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp4932_
                                                        _rest4961_
                                                        _loads4935_)
                                                       (_K4937_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in4962_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest4961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in4962_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in4962_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp4932_
                                                            _rest4961_
                                                            _loads4935_)
                                                           (_K4937_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in4962_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest4961_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx4895_
                _in4962_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest49384946_)
                                       (let ((_hd49434967_
                                              (##car _rest49384946_))
                                             (_tl49444969_
                                              (##cdr _rest49384946_)))
                                         (let* ((_in4972_ _hd49434967_)
                                                (_rest4974_ _tl49444969_))
                                           (_K49424964_ _rest4974_ _in4972_)))
                                       (_else49404958_)))))))
                         _tl49024917_)))
                    (_g48974907_ _g48984910_)))))
        (_g48964983_ _stx4895_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4738_)
      (letrec ((_add-lift!4740_
                (lambda (_expr4893_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr4893_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple4741_
                (lambda (_stxq4888_)
                  (let ((_gid4890_
                         (gxc#generate-runtime-temporary__opt-lambda10194 '#t))
                        (_qid4891_
                         (gxc#generate-runtime-identifier _stxq4888_)))
                    (begin
                      (_add-lift!4740_
                       (cons 'define
                             (cons _gid4890_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid4891_
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
                      _gid4890_))))
               (_generate-serialized4742_
                (lambda (_stxq4878_ _marks4879_)
                  (let* ((_mark-refs4881_
                          (map _generate-mark4743_ _marks4879_))
                         (_gid4883_
                          (gxc#generate-runtime-temporary__opt-lambda10194
                           '#t))
                         (_qid4885_
                          (gxc#generate-runtime-identifier _stxq4878_)))
                    (begin
                      (_add-lift!4740_
                       (cons 'define
                             (cons _gid4883_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid4885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs4881_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid4883_))))
               (_generate-mark4743_
                (lambda (_mark4864_)
                  (let ((_$e4866_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark4864_
                          '#f)))
                    (if _$e4866_
                        (values _$e4866_)
                        (let* ((_gid4869_
                                (gxc#generate-runtime-temporary__opt-lambda10194
                                 '#t))
                               (_repr4871_ (_serialize-mark4744_ _mark4864_))
                               (_ctx4873_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark4864_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref4875_
                                (if (eq? _ctx4873_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref4745_
                                                             _ctx4873_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark4864_
                             _gid4869_)
                            (_add-lift!4740_
                             (cons 'define
                                   (cons _gid4869_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr4871_ '()))
                   (cons _ctx-ref4875_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid4869_))))))
               (_serialize-mark4744_
                (lambda (_mark4811_)
                  (letrec ((_quote-e4813_
                            (lambda (_sym4862_)
                              (if (interned-symbol? _sym4862_)
                                  _sym4862_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym4862_)))))
                    (let* ((_mark48144823_ _mark4811_)
                           (_E48164827_
                            (lambda ()
                              (error '"No clause matching" _mark48144823_)))
                           (_K48174839_
                            (lambda (_trace4830_
                                     _phi4831_
                                     _ctx4832_
                                     _subst4833_)
                              (let ((_subs4835_
                                     (if _subst4833_
                                         (table->list _subst4833_)
                                         '())))
                                (cons _phi4831_
                                      (map (lambda (_pair4837_)
                                             (cons (_quote-e4813_
                                                    (car _pair4837_))
                                                   (_quote-e4813_
                                                    (cdr _pair4837_))))
                                           _subs4835_))))))
                      (if (##structure-instance-of?
                           _mark48144823_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e48184842_ (##vector-ref _mark48144823_ '1))
                                 (_subst4845_ _e48184842_)
                                 (_e48194847_ (##vector-ref _mark48144823_ '2))
                                 (_ctx4850_ _e48194847_)
                                 (_e48204852_ (##vector-ref _mark48144823_ '3))
                                 (_phi4855_ _e48204852_)
                                 (_e48214857_ (##vector-ref _mark48144823_ '4))
                                 (_trace4860_ _e48214857_))
                            (_K48174839_
                             _trace4860_
                             _phi4855_
                             _ctx4850_
                             _subst4845_))
                          (_E48164827_))))))
               (_context-ref4745_
                (lambda (_ctx4809_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx4809_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (_context-ref-nested4746_ _ctx4809_)
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx4809_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-nested4746_
                (lambda (_ctx4800_)
                  (let _lp4802_ ((_ctx4804_ _ctx4800_) (_r4805_ '()))
                    (let ((_super4807_
                           (##structure-ref
                            _ctx4804_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super4807_
                           'gx#module-context::t)
                          (_lp4802_
                           _super4807_
                           (cons (car (##structure-ref
                                       _ctx4804_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r4805_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx4804_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r4805_)))))))
        (let* ((_g47484761_
                (lambda (_g47494758_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47494758_)))
               (_g47474797_
                (lambda (_g47494764_)
                  (if (gx#stx-pair? _g47494764_)
                      (let ((_e47514766_ (gx#stx-e _g47494764_)))
                        (let ((_hd47524769_ (##car _e47514766_))
                              (_tl47534771_ (##cdr _e47514766_)))
                          (if (gx#stx-pair? _tl47534771_)
                              (let ((_e47544774_ (gx#stx-e _tl47534771_)))
                                (let ((_hd47554777_ (##car _e47544774_))
                                      (_tl47564779_ (##cdr _e47544774_)))
                                  (if (gx#stx-null? _tl47564779_)
                                      ((lambda (_L4782_)
                                         (if (gx#identifier? _L4782_)
                                             (let ((_marks4795_
                                                    (##direct-structure-ref
                                                     _L4782_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks4795_)
                                                   (_generate-simple4741_
                                                    _L4782_)
                                                   (_generate-serialized4742_
                                                    _L4782_
                                                    _marks4795_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L4782_)))
                                       _hd47554777_)
                                      (_g47484761_ _g47494764_))))
                              (_g47484761_ _g47494764_))))
                      (_g47484761_ _g47494764_)))))
          (_g47474797_ _stx4738_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4671_)
      (let* ((_g46734690_
              (lambda (_g46744687_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g46744687_)))
             (_g46724735_
              (lambda (_g46744693_)
                (if (gx#stx-pair? _g46744693_)
                    (let ((_e46774695_ (gx#stx-e _g46744693_)))
                      (let ((_hd46784698_ (##car _e46774695_))
                            (_tl46794700_ (##cdr _e46774695_)))
                        (if (gx#stx-pair? _tl46794700_)
                            (let ((_e46804703_ (gx#stx-e _tl46794700_)))
                              (let ((_hd46814706_ (##car _e46804703_))
                                    (_tl46824708_ (##cdr _e46804703_)))
                                (if (gx#stx-pair? _tl46824708_)
                                    (let ((_e46834711_
                                           (gx#stx-e _tl46824708_)))
                                      (let ((_hd46844714_ (##car _e46834711_))
                                            (_tl46854716_ (##cdr _e46834711_)))
                                        (if (gx#stx-null? _tl46854716_)
                                            ((lambda (_L4719_ _L4720_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L4720_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4719_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd46844714_
                                             _hd46814706_)
                                            (_g46734690_ _g46744693_))))
                                    (_g46734690_ _g46744693_))))
                            (_g46734690_ _g46744693_))))
                    (_g46734690_ _g46744693_)))))
        (_g46724735_ _stx4671_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4620_ _state4621_)
      (let* ((_g46234633_
              (lambda (_g46244630_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g46244630_)))
             (_g46224668_
              (lambda (_g46244636_)
                (if (gx#stx-pair? _g46244636_)
                    (let ((_e46264638_ (gx#stx-e _g46244636_)))
                      (let ((_hd46274641_ (##car _e46264638_))
                            (_tl46284643_ (##cdr _e46264638_)))
                        ((lambda (_L4646_)
                           (let* ((_c-body4660_
                                   (map (lambda (_g46554657_)
                                          (gxc#compile-e
                                           _g46554657_
                                           _state4621_))
                                        _L4646_))
                                  (_c-body4665_
                                   (filter (lambda (_$obj4662_)
                                             (not (eq? _$obj4662_ '#!void)))
                                           _c-body4660_)))
                             (cons '%#begin _c-body4665_)))
                         _tl46284643_)))
                    (_g46234633_ _g46244636_)))))
        (_g46224668_ _stx4620_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4528_ _state4529_)
      (let* ((_g45314541_
              (lambda (_g45324538_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45324538_)))
             (_g45304617_
              (lambda (_g45324544_)
                (if (gx#stx-pair? _g45324544_)
                    (let ((_e45344546_ (gx#stx-e _g45324544_)))
                      (let ((_hd45354549_ (##car _e45344546_))
                            (_tl45364551_ (##cdr _e45344546_)))
                        ((lambda (_L4554_)
                           (let* ((_phi4564_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block4566_
                                   (gxc#meta-state-begin-phi!
                                    _state4529_
                                    _phi4564_))
                                  (_compiled4569_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L4554_)
                                       _state4529_))
                                    gx#current-expander-phi
                                    _phi4564_)))
                             (let* ((_g45724582_
                                     (lambda (_g45734579_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g45734579_)))
                                    (_g45714614_
                                     (lambda (_g45734585_)
                                       (if (gx#stx-pair? _g45734585_)
                                           (let ((_e45754587_
                                                  (gx#stx-e _g45734585_)))
                                             (let ((_hd45764590_
                                                    (##car _e45754587_))
                                                   (_tl45774592_
                                                    (##cdr _e45754587_)))
                                               (if (gx#identifier?
                                                    _hd45764590_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd45764590_)
                                                       ((lambda (_L4595_)
                                                          (let ((_c-body4612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj4609_)
                                   (not (eq? _$obj4609_ '#!void)))
                                 _L4595_)))
                    (if _block4566_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block4566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body4612_))
                        (if (null? _c-body4612_)
                            '#!void
                            (cons '%#begin-syntax _c-body4612_)))))
                _tl45774592_)
               (_g45724582_ _g45734585_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45724582_ _g45734585_))))
                                           (_g45724582_ _g45734585_)))))
                               (_g45714614_ _compiled4569_))))
                         _tl45364551_)))
                    (_g45314541_ _g45324544_)))))
        (_g45304617_ _stx4528_))))
  (define gxc#generate-meta-module%
    (lambda (_stx4459_ _state4460_)
      (begin
        (gxc#meta-state-end-phi! _state4460_)
        (let* ((_g44624476_
                (lambda (_g44634473_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44634473_)))
               (_g44614525_
                (lambda (_g44634479_)
                  (if (gx#stx-pair? _g44634479_)
                      (let ((_e44664481_ (gx#stx-e _g44634479_)))
                        (let ((_hd44674484_ (##car _e44664481_))
                              (_tl44684486_ (##cdr _e44664481_)))
                          (if (gx#stx-pair? _tl44684486_)
                              (let ((_e44694489_ (gx#stx-e _tl44684486_)))
                                (let ((_hd44704492_ (##car _e44694489_))
                                      (_tl44714494_ (##cdr _e44694489_)))
                                  ((lambda (_L4497_ _L4498_)
                                     (let ((_key4511_
                                            (gx#core-identifier-key _L4498_)))
                                       (begin
                                         (if (interned-symbol? _key4511_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx4459_
                                              _L4498_
                                              _key4511_))
                                         (let* ((_ctx4513_
                                                 (gx#syntax-local-e__0
                                                  _L4498_))
                                                (_code4516_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx4513_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state4460_))
                                                  gx#current-expander-context
                                                  _ctx4513_))
                                                (_rt4518_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx4513_
                                                  '#f))
                                                (_loader4520_
                                                 (if _rt4518_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt4518_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid4522_
                                                 (gx#stx-e _L4498_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state4460_)
                                             (cons '%#module
                                                   (cons _modid4522_
                                                         (cons _code4516_
                                                               _loader4520_))))))))
                                   _tl44714494_
                                   _hd44704492_)))
                              (_g44624476_ _g44634479_))))
                      (_g44624476_ _g44634479_)))))
          (_g44614525_ _stx4459_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4449_ _context-chain4450_)
      (let _lp4452_ ((_ctx4454_ _ctx4449_) (_path4455_ '()))
        (let ((_super4457_
               (##structure-ref _ctx4454_ '3 gx#phi-context::t '#f)))
          (if (memq _super4457_ _context-chain4450_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx4454_
                           '7
                           gx#module-context::t
                           '#f))
                     _path4455_)
              (if (##structure-instance-of? _super4457_ 'gx#module-context::t)
                  (_lp4452_
                   _super4457_
                   (cons (car (##structure-ref
                               _ctx4454_
                               '7
                               gx#module-context::t
                               '#f))
                         _path4455_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx4454_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path4455_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp4444_ ((_ctx4446_ (gx#current-expander-context)) (_r4447_ '()))
        (if (##structure-instance-of? _ctx4446_ 'gx#module-context::t)
            (_lp4444_
             (##structure-ref _ctx4446_ '3 gx#phi-context::t '#f)
             (cons _ctx4446_ _r4447_))
            _r4447_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4213_ _state4214_)
      (letrec* ((_context-chain4216_ (gxc#current-context-chain))
                (_make-import-spec4217_
                 (lambda (_in4380_)
                   (let* ((_in43814393_ _in4380_)
                          (_E43834397_
                           (lambda ()
                             (error '"No clause matching" _in43814393_)))
                          (_K43844407_
                           (lambda (_phi4400_
                                    _name4401_
                                    _src-name4402_
                                    _src-phi4403_
                                    _src-key4404_
                                    _src-ctx4405_)
                             (cons _phi4400_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name4401_)
                                         (cons _src-phi4403_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name4402_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in43814393_
                          (##type-id gx#module-import::t))
                         (let ((_e43854410_ (##vector-ref _in43814393_ '1)))
                           (if (##structure-direct-instance-of?
                                _e43854410_
                                (##type-id gx#module-export::t))
                               (let* ((_e43884413_
                                       (##vector-ref _e43854410_ '1))
                                      (_src-ctx4416_ _e43884413_)
                                      (_e43894418_
                                       (##vector-ref _e43854410_ '2))
                                      (_src-key4421_ _e43894418_)
                                      (_e43904423_
                                       (##vector-ref _e43854410_ '3))
                                      (_src-phi4426_ _e43904423_)
                                      (_e43914428_
                                       (##vector-ref _e43854410_ '4))
                                      (_src-name4431_ _e43914428_)
                                      (_e43864433_
                                       (##vector-ref _in43814393_ '2))
                                      (_name4436_ _e43864433_)
                                      (_e43874438_
                                       (##vector-ref _in43814393_ '3))
                                      (_phi4441_ _e43874438_))
                                 (_K43844407_
                                  _phi4441_
                                  _name4436_
                                  _src-name4431_
                                  _src-phi4426_
                                  _src-key4421_
                                  _src-ctx4416_))
                               (_E43834397_)))
                         (_E43834397_)))))
                (_make-import-path4218_
                 (lambda (_ctx4378_)
                   (gxc#generate-meta-import-path
                    _ctx4378_
                    _context-chain4216_)))
                (_make-import-spec-in4219_
                 (lambda (_ctx4375_ _in4376_)
                   (cons 'spec:
                         (cons (_make-import-path4218_ _ctx4375_)
                               (reverse _in4376_))))))
        (begin
          (gxc#meta-state-end-phi! _state4214_)
          (let* ((_g42214231_
                  (lambda (_g42224228_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g42224228_)))
                 (_g42204372_
                  (lambda (_g42224234_)
                    (if (gx#stx-pair? _g42224234_)
                        (let ((_e42244236_ (gx#stx-e _g42224234_)))
                          (let ((_hd42254239_ (##car _e42244236_))
                                (_tl42264241_ (##cdr _e42244236_)))
                            ((lambda (_L4244_)
                               (let _lp4255_ ((_rest4257_ _L4244_)
                                              (_current-src4258_ '#f)
                                              (_current-in4259_ '())
                                              (_r4260_ '()))
                                 (let* ((_rest42614269_ _rest4257_)
                                        (_E42644273_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest42614269_)))
                                        (_else42634279_
                                         (lambda ()
                                           (let ((_r4277_ (if _current-src4258_
                                                              (cons (_make-import-spec-in4219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4258_
                             _current-in4259_)
                            _r4260_)
                      _r4260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4277_)))))
                                        (_K42654360_
                                         (lambda (_rest4282_ _in4283_)
                                           (if (##structure-direct-instance-of?
                                                _in4283_
                                                'gx#module-import::t)
                                               (let* ((_in42844291_ _in4283_)
                                                      (_E42864295_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in42844291_)))
                                                      (_K42874300_
                                                       (lambda (_src-ctx4298_)
                                                         (if (eq? _current-src4258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4298_)
                     (_lp4255_
                      _rest4282_
                      _current-src4258_
                      (cons (_make-import-spec4217_ _in4283_) _current-in4259_)
                      _r4260_)
                     (if _current-src4258_
                         (_lp4255_
                          _rest4282_
                          _src-ctx4298_
                          (cons (_make-import-spec4217_ _in4283_) '())
                          (cons (_make-import-spec-in4219_
                                 _current-src4258_
                                 _current-in4259_)
                                _r4260_))
                         (_lp4255_
                          _rest4282_
                          _src-ctx4298_
                          (cons (_make-import-spec4217_ _in4283_) '())
                          _r4260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in42844291_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e42884303_
                                                            (##vector-ref
                                                             _in42844291_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e42884303_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e42894306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e42884303_ '1))
                          (_src-ctx4309_ _e42894306_))
                     (_K42874300_ _src-ctx4309_))
                   (_E42864295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E42864295_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4283_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4311_
                                                           (##direct-structure-ref
                                                            _in4283_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4313_
                                                           (##direct-structure-ref
                                                            _in4283_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in4353_
                                                           (let* ((_g43144323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4218_ _src4313_))
                          (_E43174327_
                           (lambda ()
                             (error '"No clause matching" _g43144323_)))
                          (_try-match43164338_
                           (lambda ()
                             (let* ((_K43184333_
                                     (lambda (_path4331_)
                                       (cons 'in: _path4331_)))
                                    (_path4336_ _g43144323_))
                               (_K43184333_ _path4336_))))
                          (_K43194343_ (lambda (_path4341_) _path4341_)))
                     (if (##pair? _g43144323_)
                         (let ((_hd43204346_ (##car _g43144323_))
                               (_tl43214348_ (##cdr _g43144323_)))
                           (let ((_path4351_ _hd43204346_))
                             (if (##null? _tl43214348_)
                                 (_K43194343_ _path4351_)
                                 (_try-match43164338_))))
                         (_try-match43164338_))))
                  (_r4355_ (if _current-src4258_
                               (cons (_make-import-spec-in4219_
                                      _current-src4258_
                                      _current-in4259_)
                                     _r4260_)
                               _r4260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4255_
                                                      _rest4282_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4311_)
                                                                _src-in4353_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4311_ (cons _src-in4353_ '()))))
                    _r4355_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4283_
                                                        'gx#module-context::t)
                                                       (let ((_r4358_ (if _current-src4258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4219_
                                         _current-src4258_
                                         _current-in4259_)
                                        _r4260_)
                                  _r4260_)))
                 (_lp4255_
                  _rest4282_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4218_ _in4283_))
                        _r4358_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest42614269_)
                                       (let ((_hd42664363_
                                              (##car _rest42614269_))
                                             (_tl42674365_
                                              (##cdr _rest42614269_)))
                                         (let* ((_in4368_ _hd42664363_)
                                                (_rest4370_ _tl42674365_))
                                           (_K42654360_ _rest4370_ _in4368_)))
                                       (_else42634279_)))))
                             _tl42264241_)))
                        (_g42214231_ _g42224234_)))))
            (_g42204372_ _stx4213_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4023_ _state4024_)
      (letrec* ((_context-chain4026_ (gxc#current-context-chain))
                (_make-import-path4027_
                 (lambda (_ctx4211_)
                   (gxc#generate-meta-import-path
                    _ctx4211_
                    _context-chain4026_))))
        (let* ((_g40294039_
                (lambda (_g40304036_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40304036_)))
               (_g40284208_
                (lambda (_g40304042_)
                  (if (gx#stx-pair? _g40304042_)
                      (let ((_e40324044_ (gx#stx-e _g40304042_)))
                        (let ((_hd40334047_ (##car _e40324044_))
                              (_tl40344049_ (##cdr _e40324044_)))
                          ((lambda (_L4052_)
                             (let _lp4063_ ((_rest4065_ _L4052_) (_r4066_ '()))
                               (let* ((_rest40674075_ _rest4065_)
                                      (_E40704079_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest40674075_)))
                                      (_else40694083_
                                       (lambda ()
                                         (cons '%#export (reverse _r4066_))))
                                      (_K40714196_
                                       (lambda (_rest4086_ _out4087_)
                                         (let* ((_out40884101_ _out4087_)
                                                (_E40914105_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out40884101_)))
                                                (_try-match40904168_
                                                 (lambda ()
                                                   (let ((_K40924155_
                                                          (lambda (_phi4109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4110_)
                    (let* ((_out4150_
                            (if _src4110_
                                (cons 'import:
                                      (cons (let* ((_g41114120_
                                                    (_make-import-path4027_
                                                     _src4110_))
                                                   (_E41144124_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g41114120_)))
                                                   (_try-match41134135_
                                                    (lambda ()
                                                      (let* ((_K41154130_
                                                              (lambda (_path4128_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4128_)))
                     (_path4133_ _g41114120_))
                (_K41154130_ _path4133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K41164140_
                                                    (lambda (_path4138_)
                                                      _path4138_)))
                                              (if (##pair? _g41114120_)
                                                  (let ((_hd41174143_
                                                         (##car _g41114120_))
                                                        (_tl41184145_
                                                         (##cdr _g41114120_)))
                                                    (let ((_path4148_
                                                           _hd41174143_))
                                                      (if (##null? _tl41184145_)
                                                          (_K41164140_
                                                           _path4148_)
                                                          (_try-match41134135_))))
                                                  (_try-match41134135_)))
                                            '()))
                                '#t))
                           (_out4152_
                            (if (fxzero? _phi4109_)
                                _out4150_
                                (cons 'phi:
                                      (cons _phi4109_ (cons _out4150_ '()))))))
                      (_lp4063_ _rest4086_ (cons _out4152_ _r4066_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out40884101_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e40934158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out40884101_ '1))
                        (_src4161_ _e40934158_)
                        (_e40944163_ (##vector-ref _out40884101_ '2))
                        (_phi4166_ _e40944163_))
                   (_K40924155_ _phi4166_ _src4161_))
                 (_E40914105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K40954175_
                                                 (lambda (_name4171_
                                                          _phi4172_
                                                          _key4173_)
                                                   (_lp4063_
                                                    _rest4086_
                                                    (cons (cons 'spec:
                                                                (cons _phi4172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4173_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4171_)
                                          '()))))
                  _r4066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out40884101_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e40964178_
                                                       (##vector-ref
                                                        _out40884101_
                                                        '1))
                                                      (_e40974181_
                                                       (##vector-ref
                                                        _out40884101_
                                                        '2))
                                                      (_key4184_ _e40974181_)
                                                      (_e40984186_
                                                       (##vector-ref
                                                        _out40884101_
                                                        '3))
                                                      (_phi4189_ _e40984186_)
                                                      (_e40994191_
                                                       (##vector-ref
                                                        _out40884101_
                                                        '4))
                                                      (_name4194_ _e40994191_))
                                                 (_K40954175_
                                                  _name4194_
                                                  _phi4189_
                                                  _key4184_))
                                               (_try-match40904168_))))))
                                 (if (##pair? _rest40674075_)
                                     (let ((_hd40724199_
                                            (##car _rest40674075_))
                                           (_tl40734201_
                                            (##cdr _rest40674075_)))
                                       (let* ((_out4204_ _hd40724199_)
                                              (_rest4206_ _tl40734201_))
                                         (_K40714196_ _rest4206_ _out4204_)))
                                     (_else40694083_)))))
                           _tl40344049_)))
                      (_g40294039_ _g40304042_)))))
          (_g40284208_ _stx4023_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3984_ _state3985_)
      (begin
        (gxc#meta-state-end-phi! _state3985_)
        (let* ((_g39873997_
                (lambda (_g39883994_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39883994_)))
               (_g39864020_
                (lambda (_g39884000_)
                  (if (gx#stx-pair? _g39884000_)
                      (let ((_e39904002_ (gx#stx-e _g39884000_)))
                        (let ((_hd39914005_ (##car _e39904002_))
                              (_tl39924007_ (##cdr _e39904002_)))
                          ((lambda (_L4010_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4010_)))
                           _tl39924007_)))
                      (_g39873997_ _g39884000_)))))
          (_g39864020_ _stx3984_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3855_ _state3856_)
      (letrec ((_generate13858_
                (lambda (_id3979_ _eid3980_)
                  (let ((_eid3982_ (gx#stx-e _eid3980_)))
                    (begin
                      (if (interned-symbol? _eid3982_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx3855_
                           _eid3982_))
                      (cons (gxc#generate-runtime-identifier _id3979_)
                            (cons _eid3982_ '())))))))
        (let* ((_g38603888_
                (lambda (_g38613885_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g38613885_)))
               (_g38593976_
                (lambda (_g38613891_)
                  (if (gx#stx-pair? _g38613891_)
                      (let ((_e38643893_ (gx#stx-e _g38613891_)))
                        (let ((_hd38653896_ (##car _e38643893_))
                              (_tl38663898_ (##cdr _e38643893_)))
                          (if (gx#stx-pair/null? _tl38663898_)
                              (if (fx>= (gx#stx-length _tl38663898_) '0)
                                  (let ((_g11407_
                                         (gx#syntax-split-splice
                                          _tl38663898_
                                          '0)))
                                    (begin
                                      (let ((_g11408_ (values-count _g11407_)))
                                        (if (not (fx= _g11408_ 2))
                                            (error "Context expects 2 values"
                                                   _g11408_)))
                                      (let ((_target38673901_
                                             (values-ref _g11407_ 0))
                                            (_tl38693903_
                                             (values-ref _g11407_ 1)))
                                        (if (gx#stx-null? _tl38693903_)
                                            (letrec ((_loop38703906_
                                                      (lambda (_hd38683909_
                                                               _eid38743911_
                                                               _id38753913_)
                                                        (if (gx#stx-pair?
                                                             _hd38683909_)
                                                            (let ((_e38713916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd38683909_)))
                      (let ((_lp-hd38723919_ (##car _e38713916_))
                            (_lp-tl38733921_ (##cdr _e38713916_)))
                        (if (gx#stx-pair? _lp-hd38723919_)
                            (let ((_e38783924_ (gx#stx-e _lp-hd38723919_)))
                              (let ((_hd38793927_ (##car _e38783924_))
                                    (_tl38803929_ (##cdr _e38783924_)))
                                (if (gx#stx-pair? _tl38803929_)
                                    (let ((_e38813932_
                                           (gx#stx-e _tl38803929_)))
                                      (let ((_hd38823935_ (##car _e38813932_))
                                            (_tl38833937_ (##cdr _e38813932_)))
                                        (if (gx#stx-null? _tl38833937_)
                                            (_loop38703906_
                                             _lp-tl38733921_
                                             (cons _hd38823935_ _eid38743911_)
                                             (cons _hd38793927_ _id38753913_))
                                            (_g38603888_ _g38613891_))))
                                    (_g38603888_ _g38613891_))))
                            (_g38603888_ _g38613891_))))
                    (let ((_eid38763940_ (reverse _eid38743911_))
                          (_id38773942_ (reverse _id38753913_)))
                      ((lambda (_L3945_ _L3946_)
                         (cons '%#extern
                               (map _generate13858_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g39613964_ _g39623966_)
                                                (cons _g39613964_ _g39623966_))
                                              '()
                                              _L3946_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g39683971_ _g39693973_)
                                                (cons _g39683971_ _g39693973_))
                                              '()
                                              _L3945_)))))
                       _eid38763940_
                       _id38773942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop38703906_
                                               _target38673901_
                                               '()
                                               '()))
                                            (_g38603888_ _g38613891_)))))
                                  (_g38603888_ _g38613891_))
                              (_g38603888_ _g38613891_))))
                      (_g38603888_ _g38613891_)))))
          (_g38593976_ _stx3855_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3650_ _state3651_)
      (letrec ((_generate13653_
                (lambda (_id3850_)
                  (let ((_eid3852_ (gxc#generate-runtime-binding-id _id3850_))
                        (_ident3853_
                         (gxc#generate-runtime-identifier _id3850_)))
                    (cons '%#define-runtime
                          (cons _ident3853_ (cons _eid3852_ '()))))))
               (_generate*3654_
                (lambda (_all3818_)
                  (let* ((_all38193827_ _all3818_)
                         (_E38223831_
                          (lambda ()
                            (error '"No clause matching" _all38193827_)))
                         (_else38213835_ (lambda () (cons '%#begin _all3818_)))
                         (_K38233840_ (lambda (_one3838_) _one3838_)))
                    (if (##pair? _all38193827_)
                        (let ((_hd38243843_ (##car _all38193827_))
                              (_tl38253845_ (##cdr _all38193827_)))
                          (let ((_one3848_ _hd38243843_))
                            (if (##null? _tl38253845_)
                                (_K38233840_ _one3848_)
                                (_else38213835_))))
                        (_else38213835_))))))
        (let* ((_g36563673_
                (lambda (_g36573670_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g36573670_)))
               (_g36553815_
                (lambda (_g36573676_)
                  (if (gx#stx-pair? _g36573676_)
                      (let ((_e36603678_ (gx#stx-e _g36573676_)))
                        (let ((_hd36613681_ (##car _e36603678_))
                              (_tl36623683_ (##cdr _e36603678_)))
                          (if (gx#stx-pair? _tl36623683_)
                              (let ((_e36633686_ (gx#stx-e _tl36623683_)))
                                (let ((_hd36643689_ (##car _e36633686_))
                                      (_tl36653691_ (##cdr _e36633686_)))
                                  (if (gx#stx-pair? _tl36653691_)
                                      (let ((_e36663694_
                                             (gx#stx-e _tl36653691_)))
                                        (let ((_hd36673697_
                                               (##car _e36663694_))
                                              (_tl36683699_
                                               (##cdr _e36663694_)))
                                          (if (gx#stx-null? _tl36683699_)
                                              ((lambda (_L3702_ _L3703_)
                                                 (let _lp3719_ ((_rest3721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L3703_)
                        (_r3722_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g37273743_
                                                           (lambda (_g37283740_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g37283740_)))
                                                          (_g37263750_
                                                           (lambda (_g37283746_)
                                                             ((lambda ()
                                                                (_generate*3654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r3722_))))))
                  (_g37253766_
                   (lambda (_g37283753_)
                     ((lambda (_L3755_)
                        (if (gx#identifier? _L3755_)
                            (_generate*3654_
                             (foldl1 cons
                                     (cons (_generate13653_ _L3755_) '())
                                     _r3722_))
                            (_g37263750_ _g37283753_)))
                      _g37283753_)))
                  (_g37243790_
                   (lambda (_g37283769_)
                     (if (gx#stx-pair? _g37283769_)
                         (let ((_e37353771_ (gx#stx-e _g37283769_)))
                           (let ((_hd37363774_ (##car _e37353771_))
                                 (_tl37373776_ (##cdr _e37353771_)))
                             ((lambda (_L3779_ _L3780_)
                                (_lp3719_
                                 _L3779_
                                 (cons (_generate13653_ _L3780_) _r3722_)))
                              _tl37373776_
                              _hd37363774_)))
                         (_g37253766_ _g37283769_))))
                  (_g37233812_
                   (lambda (_g37283793_)
                     (if (gx#stx-pair? _g37283793_)
                         (let ((_e37303795_ (gx#stx-e _g37283793_)))
                           (let ((_hd37313798_ (##car _e37303795_))
                                 (_tl37323800_ (##cdr _e37303795_)))
                             (if (gx#stx-datum? _hd37313798_)
                                 (if (equal? (gx#stx-e _hd37313798_) '#f)
                                     ((lambda (_L3803_)
                                        (_lp3719_ _L3803_ _r3722_))
                                      _tl37323800_)
                                     (_g37243790_ _g37283793_))
                                 (_g37243790_ _g37283793_))))
                         (_g37243790_ _g37283793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g37233812_
                                                      _rest3721_))))
                                               _hd36673697_
                                               _hd36643689_)
                                              (_g36563673_ _g36573676_))))
                                      (_g36563673_ _g36573676_))))
                              (_g36563673_ _g36573676_))))
                      (_g36563673_ _g36573676_)))))
          (_g36553815_ _stx3650_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3547_ _state3548_)
      (let* ((_g35503567_
              (lambda (_g35513564_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35513564_)))
             (_g35493647_
              (lambda (_g35513570_)
                (if (gx#stx-pair? _g35513570_)
                    (let ((_e35543572_ (gx#stx-e _g35513570_)))
                      (let ((_hd35553575_ (##car _e35543572_))
                            (_tl35563577_ (##cdr _e35543572_)))
                        (if (gx#stx-pair? _tl35563577_)
                            (let ((_e35573580_ (gx#stx-e _tl35563577_)))
                              (let ((_hd35583583_ (##car _e35573580_))
                                    (_tl35593585_ (##cdr _e35573580_)))
                                (if (gx#stx-pair? _tl35593585_)
                                    (let ((_e35603588_
                                           (gx#stx-e _tl35593585_)))
                                      (let ((_hd35613591_ (##car _e35603588_))
                                            (_tl35623593_ (##cdr _e35603588_)))
                                        (if (gx#stx-null? _tl35623593_)
                                            ((lambda (_L3596_ _L3597_)
                                               (let* ((_eid3612_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3597_))
                                                      (_phi3614_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block3616_
                                                       (gxc#meta-state-begin-phi!
                                                        _state3548_
                                                        _phi3614_)))
                                                 (begin
                                                   (let* ((_g36193626_
                                                           (lambda (_g36203623_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g36203623_)))
                                                          (_g36183644_
                                                           (lambda (_g36203629_)
                                                             ((lambda (_L3631_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state3548_
                           _phi3614_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L3631_ (cons _L3596_ '()))))))
                      _g36203629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g36183644_ _eid3612_))
                                                   (if _block3616_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block3616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L3597_)
                                             (cons _eid3612_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L3597_)
                           (cons _eid3612_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd35613591_
                                             _hd35583583_)
                                            (_g35503567_ _g35513570_))))
                                    (_g35503567_ _g35513570_))))
                            (_g35503567_ _g35513570_))))
                    (_g35503567_ _g35513570_)))))
        (_g35493647_ _stx3547_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3479_ _state3480_)
      (let* ((_g34823499_
              (lambda (_g34833496_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g34833496_)))
             (_g34813544_
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
                                            (_tl34943525_ (##cdr _e34923520_)))
                                        (if (gx#stx-null? _tl34943525_)
                                            ((lambda (_L3528_ _L3529_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L3529_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L3528_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34933523_
                                             _hd34903515_)
                                            (_g34823499_ _g34833502_))))
                                    (_g34823499_ _g34833502_))))
                            (_g34823499_ _g34833502_))))
                    (_g34823499_ _g34833502_)))))
        (_g34813544_ _stx3479_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3476_ _state3477_)
      (begin
        (gxc#meta-state-add-phi!
         _state3477_
         (gx#current-expander-phi)
         _stx3476_)
        (gxc#generate-meta-define-values% _stx3476_ _state3477_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3473_ _state3474_)
      (begin
        (gxc#meta-state-add-phi!
         _state3474_
         (gx#current-expander-phi)
         _stx3473_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3470_
      (apply make-struct-instance gxc#meta-state::t _$args3470_)))
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
    (lambda (_self3467_ _ctx3468_)
      (struct-instance-init!
       _self3467_
       (symbol->string
        (##structure-ref _ctx3468_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3464_
      (apply make-struct-instance gxc#meta-state-block::t _$args3464_)))
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
    (lambda (_state3423_ _phi3424_)
      (let* ((_state34253433_ _state3423_)
             (_E34273437_
              (lambda () (error '"No clause matching" _state34253433_)))
             (_K34283446_
              (lambda (_open3440_ _n3441_ _src3442_)
                (if (table-ref _open3440_ _phi3424_ '#f)
                    '#f
                    (let ((_block-ref3444_
                           (string-append
                            _src3442_
                            '"__"
                            (number->string _n3441_))))
                      (begin
                        (##structure-set!
                         _state3423_
                         (fx+ _n3441_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3440_
                         _phi3424_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3424_
                          _n3441_
                          '()))
                        _block-ref3444_))))))
        (if (##structure-instance-of?
             _state34253433_
             (##type-id gxc#meta-state::t))
            (let* ((_e34293449_ (##vector-ref _state34253433_ '1))
                   (_src3452_ _e34293449_)
                   (_e34303454_ (##vector-ref _state34253433_ '2))
                   (_n3457_ _e34303454_)
                   (_e34313459_ (##vector-ref _state34253433_ '3))
                   (_open3462_ _e34313459_))
              (_K34283446_ _open3462_ _n3457_ _src3452_))
            (_E34273437_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3417_ _phi3418_ _stx3419_)
      (let ((_block3421_
             (table-ref
              (##structure-ref _state3417_ '3 gxc#meta-state::t '#f)
              _phi3418_
              '#f)))
        (##structure-set!
         _block3421_
         (cons _stx3419_
               (##structure-ref _block3421_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3412_)
      (begin
        (##structure-set!
         _state3412_
         (hash-fold
          (lambda (_g11409_ _block3414_ _r3415_) (cons _block3414_ _r3415_))
          (##structure-ref _state3412_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3412_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3412_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3364_)
      (begin
        (gxc#meta-state-end-phi! _state3364_)
        (foldl1 (lambda (_block3366_ _r3367_)
                  (let* ((_block33683377_ _block3366_)
                         (_E33703381_
                          (lambda ()
                            (error '"No clause matching" _block33683377_)))
                         (_K33713389_
                          (lambda (_code3384_ _n3385_ _phi3386_ _ctx3387_)
                            (if (null? _code3384_)
                                _r3367_
                                (cons (cons _ctx3387_
                                            (cons _phi3386_
                                                  (cons _n3385_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3384_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3367_)))))
                    (if (##structure-instance-of?
                         _block33683377_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e33723392_ (##vector-ref _block33683377_ '1))
                               (_ctx3395_ _e33723392_)
                               (_e33733397_ (##vector-ref _block33683377_ '2))
                               (_phi3400_ _e33733397_)
                               (_e33743402_ (##vector-ref _block33683377_ '3))
                               (_n3405_ _e33743402_)
                               (_e33753407_ (##vector-ref _block33683377_ '4))
                               (_code3410_ _e33753407_))
                          (_K33713389_ _code3410_ _n3405_ _phi3400_ _ctx3395_))
                        (_E33703381_))))
                '()
                (##structure-ref _state3364_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3360_)
      (let ((_ht3362_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3360_ _ht3362_)
          _ht3362_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3303_ _ht3304_)
      (let* ((_g33063319_
              (lambda (_g33073316_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g33073316_)))
             (_g33053357_
              (lambda (_g33073322_)
                (if (gx#stx-pair? _g33073322_)
                    (let ((_e33093324_ (gx#stx-e _g33073322_)))
                      (let ((_hd33103327_ (##car _e33093324_))
                            (_tl33113329_ (##cdr _e33093324_)))
                        (if (gx#stx-pair? _tl33113329_)
                            (let ((_e33123332_ (gx#stx-e _tl33113329_)))
                              (let ((_hd33133335_ (##car _e33123332_))
                                    (_tl33143337_ (##cdr _e33123332_)))
                                (if (gx#stx-null? _tl33143337_)
                                    ((lambda (_L3340_)
                                       (let* ((_bind3352_
                                               (gx#resolve-identifier__0
                                                _L3340_))
                                              (_eid3354_
                                               (if _bind3352_
                                                   (##structure-ref
                                                    _bind3352_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3340_))))
                                         (table-set!
                                          _ht3304_
                                          _eid3354_
                                          _eid3354_)))
                                     _hd33133335_)
                                    (_g33063319_ _g33073322_))))
                            (_g33063319_ _g33073322_))))
                    (_g33063319_ _g33073322_)))))
        (_g33053357_ _stx3303_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3230_ _ht3231_)
      (let* ((_g32333250_
              (lambda (_g32343247_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g32343247_)))
             (_g32323300_
              (lambda (_g32343253_)
                (if (gx#stx-pair? _g32343253_)
                    (let ((_e32373255_ (gx#stx-e _g32343253_)))
                      (let ((_hd32383258_ (##car _e32373255_))
                            (_tl32393260_ (##cdr _e32373255_)))
                        (if (gx#stx-pair? _tl32393260_)
                            (let ((_e32403263_ (gx#stx-e _tl32393260_)))
                              (let ((_hd32413266_ (##car _e32403263_))
                                    (_tl32423268_ (##cdr _e32403263_)))
                                (if (gx#stx-pair? _tl32423268_)
                                    (let ((_e32433271_
                                           (gx#stx-e _tl32423268_)))
                                      (let ((_hd32443274_ (##car _e32433271_))
                                            (_tl32453276_ (##cdr _e32433271_)))
                                        (if (gx#stx-null? _tl32453276_)
                                            ((lambda (_L3279_ _L3280_)
                                               (let* ((_bind3295_
                                                       (gx#resolve-identifier__0
                                                        _L3280_))
                                                      (_eid3297_
                                                       (if _bind3295_
                                                           (##structure-ref
                                                            _bind3295_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3280_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3231_
                                                    _eid3297_
                                                    _eid3297_)
                                                   (gxc#compile-e
                                                    _L3279_
                                                    _ht3231_))))
                                             _hd32443274_
                                             _hd32413266_)
                                            (_g32333250_ _g32343253_))))
                                    (_g32333250_ _g32343253_))))
                            (_g32333250_ _g32343253_))))
                    (_g32333250_ _g32343253_)))))
        (_g32323300_ _stx3230_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3192_)
      (let* ((_g31943204_
              (lambda (_g31953201_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g31953201_)))
             (_g31933227_
              (lambda (_g31953207_)
                (if (gx#stx-pair? _g31953207_)
                    (let ((_e31973209_ (gx#stx-e _g31953207_)))
                      (let ((_hd31983212_ (##car _e31973209_))
                            (_tl31993214_ (##cdr _e31973209_)))
                        ((lambda (_L3217_) (ormap1 gxc#compile-e _L3217_))
                         _tl31993214_)))
                    (_g31943204_ _g31953207_)))))
        (_g31933227_ _stx3192_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3154_)
      (let* ((_g31563166_
              (lambda (_g31573163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g31573163_)))
             (_g31553189_
              (lambda (_g31573169_)
                (if (gx#stx-pair? _g31573169_)
                    (let ((_e31593171_ (gx#stx-e _g31573169_)))
                      (let ((_hd31603174_ (##car _e31593171_))
                            (_tl31613176_ (##cdr _e31593171_)))
                        ((lambda (_L3179_) (gxc#compile-e (last _L3179_)))
                         _tl31613176_)))
                    (_g31563166_ _g31573169_)))))
        (_g31553189_ _stx3154_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3087_)
      (let* ((_g30893106_
              (lambda (_g30903103_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g30903103_)))
             (_g30883151_
              (lambda (_g30903109_)
                (if (gx#stx-pair? _g30903109_)
                    (let ((_e30933111_ (gx#stx-e _g30903109_)))
                      (let ((_hd30943114_ (##car _e30933111_))
                            (_tl30953116_ (##cdr _e30933111_)))
                        (if (gx#stx-pair? _tl30953116_)
                            (let ((_e30963119_ (gx#stx-e _tl30953116_)))
                              (let ((_hd30973122_ (##car _e30963119_))
                                    (_tl30983124_ (##cdr _e30963119_)))
                                (if (gx#stx-pair? _tl30983124_)
                                    (let ((_e30993127_
                                           (gx#stx-e _tl30983124_)))
                                      (let ((_hd31003130_ (##car _e30993127_))
                                            (_tl31013132_ (##cdr _e30993127_)))
                                        (if (gx#stx-null? _tl31013132_)
                                            ((lambda (_L3135_ _L3136_)
                                               (gxc#compile-e _L3135_))
                                             _hd31003130_
                                             _hd30973122_)
                                            (_g30893106_ _g30903109_))))
                                    (_g30893106_ _g30903109_))))
                            (_g30893106_ _g30903109_))))
                    (_g30893106_ _g30903109_)))))
        (_g30883151_ _stx3087_))))
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
