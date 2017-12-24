(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx11342_ . _args11343_)
      (let* ((_g1134511355_
              (lambda (_g1134611352_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1134611352_)))
             (_g1134411383_
              (lambda (_g1134611358_)
                (if (gx#stx-pair? _g1134611358_)
                    (let ((_e1134811360_ (gx#stx-e _g1134611358_)))
                      (let ((_hd1134911363_ (##car _e1134811360_))
                            (_tl1135011365_ (##cdr _e1134811360_)))
                        ((lambda (_L11368_)
                           (let ((_$e11378_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L11368_)
                                   '#f)))
                             (if _$e11378_
                                 ((lambda (_method11381_)
                                    (apply _method11381_
                                           _stx11342_
                                           _args11343_))
                                  _$e11378_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx11342_
                                  _L11368_))))
                         _hd1134911363_)))
                    (_g1134511355_ _g1134611358_)))))
        (_g1134411383_ _stx11342_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl11339_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11339_ '%#begin-annotation void)
           (table-set! _tbl11339_ '%#lambda void)
           (table-set! _tbl11339_ '%#case-lambda void)
           (table-set! _tbl11339_ '%#let-values void)
           (table-set! _tbl11339_ '%#letrec-values void)
           (table-set! _tbl11339_ '%#letrec*-values void)
           (table-set! _tbl11339_ '%#quote void)
           (table-set! _tbl11339_ '%#quote-syntax void)
           (table-set! _tbl11339_ '%#call void)
           (table-set! _tbl11339_ '%#if void)
           (table-set! _tbl11339_ '%#ref void)
           (table-set! _tbl11339_ '%#set! void)
           (table-set! _tbl11339_ '%#struct-instance? void)
           (table-set! _tbl11339_ '%#struct-direct-instance? void)
           (table-set! _tbl11339_ '%#struct-ref void)
           (table-set! _tbl11339_ '%#struct-set! void)
           (table-set! _tbl11339_ '%#struct-direct-ref void)
           (table-set! _tbl11339_ '%#struct-direct-set! void)
           (table-set! _tbl11339_ '%#struct-unchecked-ref void)
           (table-set! _tbl11339_ '%#struct-unchecked-set! void)
           _tbl11339_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11335_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11335_ '%#begin void)
           (table-set! _tbl11335_ '%#begin-syntax void)
           (table-set! _tbl11335_ '%#begin-foreign void)
           (table-set! _tbl11335_ '%#module void)
           (table-set! _tbl11335_ '%#import void)
           (table-set! _tbl11335_ '%#export void)
           (table-set! _tbl11335_ '%#provide void)
           (table-set! _tbl11335_ '%#extern void)
           (table-set! _tbl11335_ '%#define-values void)
           (table-set! _tbl11335_ '%#define-syntax void)
           (table-set! _tbl11335_ '%#define-alias void)
           (table-set! _tbl11335_ '%#declare void)
           _tbl11335_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11331_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11331_ (force gxc#&void-special-form))
           (hash-copy! _tbl11331_ (force gxc#&void-expression))
           _tbl11331_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11327_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11327_ '%#begin-annotation false)
           (table-set! _tbl11327_ '%#lambda false)
           (table-set! _tbl11327_ '%#case-lambda false)
           (table-set! _tbl11327_ '%#let-values false)
           (table-set! _tbl11327_ '%#letrec-values false)
           (table-set! _tbl11327_ '%#letrec*-values false)
           (table-set! _tbl11327_ '%#quote false)
           (table-set! _tbl11327_ '%#quote-syntax false)
           (table-set! _tbl11327_ '%#call false)
           (table-set! _tbl11327_ '%#if false)
           (table-set! _tbl11327_ '%#ref false)
           (table-set! _tbl11327_ '%#set! false)
           (table-set! _tbl11327_ '%#struct-instance? false)
           (table-set! _tbl11327_ '%#struct-direct-instance? false)
           (table-set! _tbl11327_ '%#struct-ref false)
           (table-set! _tbl11327_ '%#struct-set! false)
           (table-set! _tbl11327_ '%#struct-direct-ref false)
           (table-set! _tbl11327_ '%#struct-direct-set! false)
           (table-set! _tbl11327_ '%#struct-unchecked-ref false)
           (table-set! _tbl11327_ '%#struct-unchecked-set! false)
           _tbl11327_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11323_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11323_ '%#begin false)
           (table-set! _tbl11323_ '%#begin-syntax false)
           (table-set! _tbl11323_ '%#begin-foreign false)
           (table-set! _tbl11323_ '%#module false)
           (table-set! _tbl11323_ '%#import false)
           (table-set! _tbl11323_ '%#export false)
           (table-set! _tbl11323_ '%#provide false)
           (table-set! _tbl11323_ '%#extern false)
           (table-set! _tbl11323_ '%#define-values false)
           (table-set! _tbl11323_ '%#define-syntax false)
           (table-set! _tbl11323_ '%#define-alias false)
           (table-set! _tbl11323_ '%#declare false)
           _tbl11323_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl11319_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11319_ (force gxc#&false-special-form))
           (hash-copy! _tbl11319_ (force gxc#&false-expression))
           _tbl11319_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl11315_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11315_ (force gxc#&void-expression))
           (hash-copy! _tbl11315_ (force gxc#&void-special-form))
           (table-set! _tbl11315_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11315_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11315_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11315_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11315_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11315_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11308_ . _args11310_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11308_ _args11310_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11305_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11305_ (force gxc#&void))
           (table-set! _tbl11305_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11305_ '%#module gxc#lift-modules-module%)
           _tbl11305_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11298_ . _args11300_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11298_ _args11300_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11295_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11295_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11295_ '%#begin-syntax false)
           (table-set! _tbl11295_ '%#begin-foreign true)
           (table-set! _tbl11295_ '%#begin-annotation true)
           (table-set! _tbl11295_ '%#module false)
           (table-set! _tbl11295_ '%#import false)
           (table-set! _tbl11295_ '%#export false)
           (table-set! _tbl11295_ '%#provide false)
           (table-set! _tbl11295_ '%#extern false)
           (table-set! _tbl11295_ '%#define-values true)
           (table-set! _tbl11295_ '%#define-syntax false)
           (table-set! _tbl11295_ '%#define-alias false)
           (table-set! _tbl11295_ '%#declare false)
           (table-set! _tbl11295_ '%#lambda true)
           (table-set! _tbl11295_ '%#case-lambda true)
           (table-set! _tbl11295_ '%#let-values true)
           (table-set! _tbl11295_ '%#letrec-values true)
           (table-set! _tbl11295_ '%#letrec*-values true)
           (table-set! _tbl11295_ '%#quote true)
           (table-set! _tbl11295_ '%#call true)
           (table-set! _tbl11295_ '%#if true)
           (table-set! _tbl11295_ '%#ref true)
           (table-set! _tbl11295_ '%#set! true)
           (table-set! _tbl11295_ '%#struct-instance? true)
           (table-set! _tbl11295_ '%#struct-direct-instance? true)
           (table-set! _tbl11295_ '%#struct-ref true)
           (table-set! _tbl11295_ '%#struct-set! true)
           (table-set! _tbl11295_ '%#struct-direct-ref true)
           (table-set! _tbl11295_ '%#struct-direct-set! true)
           (table-set! _tbl11295_ '%#struct-unchecked-ref true)
           (table-set! _tbl11295_ '%#struct-unchecked-set! true)
           _tbl11295_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11288_ . _args11290_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11288_ _args11290_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11285_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11285_ (force gxc#&false))
           (table-set! _tbl11285_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11285_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11285_ '%#lambda values)
           (table-set! _tbl11285_ '%#case-lambda values)
           (table-set!
            _tbl11285_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11285_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11285_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11285_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11278_ . _args11280_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11278_ _args11280_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11275_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11275_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11275_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11275_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11275_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11271_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11271_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11271_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11271_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11271_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11264_ . _args11266_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11264_ _args11266_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11261_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11261_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11261_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11261_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11261_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11261_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11261_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11261_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11261_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11261_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11261_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11261_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11261_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl11261_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11261_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11261_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11261_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11261_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11261_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11261_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11261_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11261_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11261_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11261_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11261_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11261_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11254_ . _args11256_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11254_ _args11256_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11251_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11251_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11251_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl11251_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11251_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11244_ . _args11246_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11244_ _args11246_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11241_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11241_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11241_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11241_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11241_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11241_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11241_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11241_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11241_ '%#quote void)
           (table-set! _tbl11241_ '%#quote-syntax void)
           (table-set! _tbl11241_ '%#call gxc#collect-operands)
           (table-set! _tbl11241_ '%#if gxc#collect-operands)
           (table-set! _tbl11241_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11241_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11241_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11241_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11241_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11241_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11241_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11241_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11241_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11241_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11241_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11234_ . _args11236_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11234_ _args11236_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11231_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11231_ (force gxc#&void-expression))
           (table-set! _tbl11231_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11231_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11231_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11231_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11231_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11231_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11231_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11231_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11231_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11231_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11231_ '%#begin-foreign void)
           (table-set! _tbl11231_ '%#declare void)
           _tbl11231_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11224_ . _args11226_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11224_ _args11226_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11221_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11221_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11221_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11221_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11221_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11221_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11221_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11221_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11221_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11221_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11221_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11221_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11221_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11221_ '%#declare void)
           _tbl11221_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11214_ . _args11216_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11214_ _args11216_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11171_ . _args11172_)
      (let* ((_g1117411184_
              (lambda (_g1117511181_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1117511181_)))
             (_g1117311211_
              (lambda (_g1117511187_)
                (if (gx#stx-pair? _g1117511187_)
                    (let ((_e1117711189_ (gx#stx-e _g1117511187_)))
                      (let ((_hd1117811192_ (##car _e1117711189_))
                            (_tl1117911194_ (##cdr _e1117711189_)))
                        ((lambda (_L11197_)
                           (for-each
                            (lambda (_g1120611208_)
                              (apply gxc#compile-e _g1120611208_ _args11172_))
                            (gx#stx-e _L11197_)))
                         _tl1117911194_)))
                    (_g1117411184_ _g1117511187_)))))
        (_g1117311211_ _stx11171_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11127_ . _args11128_)
      (let* ((_g1113011140_
              (lambda (_g1113111137_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1113111137_)))
             (_g1112911168_
              (lambda (_g1113111143_)
                (if (gx#stx-pair? _g1113111143_)
                    (let ((_e1113311145_ (gx#stx-e _g1113111143_)))
                      (let ((_hd1113411148_ (##car _e1113311145_))
                            (_tl1113511150_ (##cdr _e1113311145_)))
                        ((lambda (_L11153_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1116311165_)
                                 (apply gxc#compile-e
                                        _g1116311165_
                                        _args11128_))
                               (gx#stx-e _L11153_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1113511150_)))
                    (_g1113011140_ _g1113111143_)))))
        (_g1112911168_ _stx11127_))))
  (define gxc#collect-module%
    (lambda (_stx11069_ . _args11070_)
      (let* ((_g1107211086_
              (lambda (_g1107311083_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1107311083_)))
             (_g1107111124_
              (lambda (_g1107311089_)
                (if (gx#stx-pair? _g1107311089_)
                    (let ((_e1107611091_ (gx#stx-e _g1107311089_)))
                      (let ((_hd1107711094_ (##car _e1107611091_))
                            (_tl1107811096_ (##cdr _e1107611091_)))
                        (if (gx#stx-pair? _tl1107811096_)
                            (let ((_e1107911099_ (gx#stx-e _tl1107811096_)))
                              (let ((_hd1108011102_ (##car _e1107911099_))
                                    (_tl1108111104_ (##cdr _e1107911099_)))
                                ((lambda (_L11107_ _L11108_)
                                   (let ((_ctx11121_
                                          (gx#syntax-local-e__0 _L11108_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11121_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11070_))
                                      gx#current-expander-context
                                      _ctx11121_)))
                                 _tl1108111104_
                                 _hd1108011102_)))
                            (_g1107211086_ _g1107311089_))))
                    (_g1107211086_ _g1107311089_)))))
        (_g1107111124_ _stx11069_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11001_ . _args11002_)
      (let* ((_g1100411021_
              (lambda (_g1100511018_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1100511018_)))
             (_g1100311066_
              (lambda (_g1100511024_)
                (if (gx#stx-pair? _g1100511024_)
                    (let ((_e1100811026_ (gx#stx-e _g1100511024_)))
                      (let ((_hd1100911029_ (##car _e1100811026_))
                            (_tl1101011031_ (##cdr _e1100811026_)))
                        (if (gx#stx-pair? _tl1101011031_)
                            (let ((_e1101111034_ (gx#stx-e _tl1101011031_)))
                              (let ((_hd1101211037_ (##car _e1101111034_))
                                    (_tl1101311039_ (##cdr _e1101111034_)))
                                (if (gx#stx-pair? _tl1101311039_)
                                    (let ((_e1101411042_
                                           (gx#stx-e _tl1101311039_)))
                                      (let ((_hd1101511045_
                                             (##car _e1101411042_))
                                            (_tl1101611047_
                                             (##cdr _e1101411042_)))
                                        (if (gx#stx-null? _tl1101611047_)
                                            ((lambda (_L11050_ _L11051_)
                                               (apply gxc#compile-e
                                                      _L11050_
                                                      _args11002_))
                                             _hd1101511045_
                                             _hd1101211037_)
                                            (_g1100411021_ _g1100511024_))))
                                    (_g1100411021_ _g1100511024_))))
                            (_g1100411021_ _g1100511024_))))
                    (_g1100411021_ _g1100511024_)))))
        (_g1100311066_ _stx11001_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10933_ . _args10934_)
      (let* ((_g1093610953_
              (lambda (_g1093710950_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1093710950_)))
             (_g1093510998_
              (lambda (_g1093710956_)
                (if (gx#stx-pair? _g1093710956_)
                    (let ((_e1094010958_ (gx#stx-e _g1093710956_)))
                      (let ((_hd1094110961_ (##car _e1094010958_))
                            (_tl1094210963_ (##cdr _e1094010958_)))
                        (if (gx#stx-pair? _tl1094210963_)
                            (let ((_e1094310966_ (gx#stx-e _tl1094210963_)))
                              (let ((_hd1094410969_ (##car _e1094310966_))
                                    (_tl1094510971_ (##cdr _e1094310966_)))
                                (if (gx#stx-pair? _tl1094510971_)
                                    (let ((_e1094610974_
                                           (gx#stx-e _tl1094510971_)))
                                      (let ((_hd1094710977_
                                             (##car _e1094610974_))
                                            (_tl1094810979_
                                             (##cdr _e1094610974_)))
                                        (if (gx#stx-null? _tl1094810979_)
                                            ((lambda (_L10982_ _L10983_)
                                               (apply gxc#compile-e
                                                      _L10982_
                                                      _args10934_))
                                             _hd1094710977_
                                             _hd1094410969_)
                                            (_g1093610953_ _g1093710956_))))
                                    (_g1093610953_ _g1093710956_))))
                            (_g1093610953_ _g1093710956_))))
                    (_g1093610953_ _g1093710956_)))))
        (_g1093510998_ _stx10933_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10815_ . _args10816_)
      (let* ((_g1081810846_
              (lambda (_g1081910843_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1081910843_)))
             (_g1081710930_
              (lambda (_g1081910849_)
                (if (gx#stx-pair? _g1081910849_)
                    (let ((_e1082210851_ (gx#stx-e _g1081910849_)))
                      (let ((_hd1082310854_ (##car _e1082210851_))
                            (_tl1082410856_ (##cdr _e1082210851_)))
                        (if (gx#stx-pair/null? _tl1082410856_)
                            (if (fx>= (gx#stx-length _tl1082410856_) '0)
                                (let ((_g11385_
                                       (gx#syntax-split-splice
                                        _tl1082410856_
                                        '0)))
                                  (begin
                                    (let ((_g11386_ (values-count _g11385_)))
                                      (if (not (fx= _g11386_ 2))
                                          (error "Context expects 2 values"
                                                 _g11386_)))
                                    (let ((_target1082510859_
                                           (values-ref _g11385_ 0))
                                          (_tl1082710861_
                                           (values-ref _g11385_ 1)))
                                      (if (gx#stx-null? _tl1082710861_)
                                          (letrec ((_loop1082810864_
                                                    (lambda (_hd1082610867_
                                                             _body1083210869_
                                                             _hd1083310871_)
                                                      (if (gx#stx-pair?
                                                           _hd1082610867_)
                                                          (let ((_e1082910874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1082610867_)))
                    (let ((_lp-hd1083010877_ (##car _e1082910874_))
                          (_lp-tl1083110879_ (##cdr _e1082910874_)))
                      (if (gx#stx-pair? _lp-hd1083010877_)
                          (let ((_e1083610882_ (gx#stx-e _lp-hd1083010877_)))
                            (let ((_hd1083710885_ (##car _e1083610882_))
                                  (_tl1083810887_ (##cdr _e1083610882_)))
                              (if (gx#stx-pair? _tl1083810887_)
                                  (let ((_e1083910890_
                                         (gx#stx-e _tl1083810887_)))
                                    (let ((_hd1084010893_
                                           (##car _e1083910890_))
                                          (_tl1084110895_
                                           (##cdr _e1083910890_)))
                                      (if (gx#stx-null? _tl1084110895_)
                                          (_loop1082810864_
                                           _lp-tl1083110879_
                                           (cons _hd1084010893_
                                                 _body1083210869_)
                                           (cons _hd1083710885_
                                                 _hd1083310871_))
                                          (_g1081810846_ _g1081910849_))))
                                  (_g1081810846_ _g1081910849_))))
                          (_g1081810846_ _g1081910849_))))
                  (let ((_body1083410898_ (reverse _body1083210869_))
                        (_hd1083510900_ (reverse _hd1083310871_)))
                    ((lambda (_L10903_ _L10904_)
                       (for-each
                        (lambda (_g1091810920_)
                          (apply gxc#compile-e _g1091810920_ _args10816_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1092210925_ _g1092310927_)
                                    (cons _g1092210925_ _g1092310927_))
                                  '()
                                  _L10903_))))
                     _body1083410898_
                     _hd1083510900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1082810864_
                                             _target1082510859_
                                             '()
                                             '()))
                                          (_g1081810846_ _g1081910849_)))))
                                (_g1081810846_ _g1081910849_))
                            (_g1081810846_ _g1081910849_))))
                    (_g1081810846_ _g1081910849_)))))
        (_g1081710930_ _stx10815_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx10668_ . _args10669_)
      (let* ((_g1067110706_
              (lambda (_g1067210703_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1067210703_)))
             (_g1067010812_
              (lambda (_g1067210709_)
                (if (gx#stx-pair? _g1067210709_)
                    (let ((_e1067610711_ (gx#stx-e _g1067210709_)))
                      (let ((_hd1067710714_ (##car _e1067610711_))
                            (_tl1067810716_ (##cdr _e1067610711_)))
                        (if (gx#stx-pair? _tl1067810716_)
                            (let ((_e1067910719_ (gx#stx-e _tl1067810716_)))
                              (let ((_hd1068010722_ (##car _e1067910719_))
                                    (_tl1068110724_ (##cdr _e1067910719_)))
                                (if (gx#stx-pair/null? _hd1068010722_)
                                    (if (fx>= (gx#stx-length _hd1068010722_)
                                              '0)
                                        (let ((_g11387_
                                               (gx#syntax-split-splice
                                                _hd1068010722_
                                                '0)))
                                          (begin
                                            (let ((_g11388_
                                                   (values-count _g11387_)))
                                              (if (not (fx= _g11388_ 2))
                                                  (error "Context expects 2 values"
                                                         _g11388_)))
                                            (let ((_target1068210727_
                                                   (values-ref _g11387_ 0))
                                                  (_tl1068410729_
                                                   (values-ref _g11387_ 1)))
                                              (if (gx#stx-null? _tl1068410729_)
                                                  (letrec ((_loop1068510732_
                                                            (lambda (_hd1068310735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1068910737_
                             _hd1069010739_)
                      (if (gx#stx-pair? _hd1068310735_)
                          (let ((_e1068610742_ (gx#stx-e _hd1068310735_)))
                            (let ((_lp-hd1068710745_ (##car _e1068610742_))
                                  (_lp-tl1068810747_ (##cdr _e1068610742_)))
                              (if (gx#stx-pair? _lp-hd1068710745_)
                                  (let ((_e1069310750_
                                         (gx#stx-e _lp-hd1068710745_)))
                                    (let ((_hd1069410753_
                                           (##car _e1069310750_))
                                          (_tl1069510755_
                                           (##cdr _e1069310750_)))
                                      (if (gx#stx-pair? _tl1069510755_)
                                          (let ((_e1069610758_
                                                 (gx#stx-e _tl1069510755_)))
                                            (let ((_hd1069710761_
                                                   (##car _e1069610758_))
                                                  (_tl1069810763_
                                                   (##cdr _e1069610758_)))
                                              (if (gx#stx-null? _tl1069810763_)
                                                  (_loop1068510732_
                                                   _lp-tl1068810747_
                                                   (cons _hd1069710761_
                                                         _expr1068910737_)
                                                   (cons _hd1069410753_
                                                         _hd1069010739_))
                                                  (_g1067110706_
                                                   _g1067210709_))))
                                          (_g1067110706_ _g1067210709_))))
                                  (_g1067110706_ _g1067210709_))))
                          (let ((_expr1069110766_ (reverse _expr1068910737_))
                                (_hd1069210768_ (reverse _hd1069010739_)))
                            (if (gx#stx-pair? _tl1068110724_)
                                (let ((_e1069910771_
                                       (gx#stx-e _tl1068110724_)))
                                  (let ((_hd1070010774_ (##car _e1069910771_))
                                        (_tl1070110776_ (##cdr _e1069910771_)))
                                    (if (gx#stx-null? _tl1070110776_)
                                        ((lambda (_L10779_ _L10780_ _L10781_)
                                           (for-each
                                            (lambda (_g1080010802_)
                                              (apply gxc#compile-e
                                                     _g1080010802_
                                                     _args10669_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1080410807_
                                                               _g1080510809_)
                                                        (cons _g1080410807_
                                                              _g1080510809_))
                                                      (cons _L10779_ '())
                                                      _L10780_))))
                                         _hd1070010774_
                                         _expr1069110766_
                                         _hd1069210768_)
                                        (_g1067110706_ _g1067210709_))))
                                (_g1067110706_ _g1067210709_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1068510732_
                                                     _target1068210727_
                                                     '()
                                                     '()))
                                                  (_g1067110706_
                                                   _g1067210709_)))))
                                        (_g1067110706_ _g1067210709_))
                                    (_g1067110706_ _g1067210709_))))
                            (_g1067110706_ _g1067210709_))))
                    (_g1067110706_ _g1067210709_)))))
        (_g1067010812_ _stx10668_))))
  (define gxc#collect-body-setq%
    (lambda (_stx10600_ . _args10601_)
      (let* ((_g1060310620_
              (lambda (_g1060410617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1060410617_)))
             (_g1060210665_
              (lambda (_g1060410623_)
                (if (gx#stx-pair? _g1060410623_)
                    (let ((_e1060710625_ (gx#stx-e _g1060410623_)))
                      (let ((_hd1060810628_ (##car _e1060710625_))
                            (_tl1060910630_ (##cdr _e1060710625_)))
                        (if (gx#stx-pair? _tl1060910630_)
                            (let ((_e1061010633_ (gx#stx-e _tl1060910630_)))
                              (let ((_hd1061110636_ (##car _e1061010633_))
                                    (_tl1061210638_ (##cdr _e1061010633_)))
                                (if (gx#stx-pair? _tl1061210638_)
                                    (let ((_e1061310641_
                                           (gx#stx-e _tl1061210638_)))
                                      (let ((_hd1061410644_
                                             (##car _e1061310641_))
                                            (_tl1061510646_
                                             (##cdr _e1061310641_)))
                                        (if (gx#stx-null? _tl1061510646_)
                                            ((lambda (_L10649_ _L10650_)
                                               (apply gxc#compile-e
                                                      _L10649_
                                                      _args10601_))
                                             _hd1061410644_
                                             _hd1061110636_)
                                            (_g1060310620_ _g1060410623_))))
                                    (_g1060310620_ _g1060410623_))))
                            (_g1060310620_ _g1060410623_))))
                    (_g1060310620_ _g1060410623_)))))
        (_g1060210665_ _stx10600_))))
  (define gxc#collect-operands
    (lambda (_stx10513_ . _args10514_)
      (let* ((_g1051610535_
              (lambda (_g1051710532_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1051710532_)))
             (_g1051510597_
              (lambda (_g1051710538_)
                (if (gx#stx-pair? _g1051710538_)
                    (let ((_e1051910540_ (gx#stx-e _g1051710538_)))
                      (let ((_hd1052010543_ (##car _e1051910540_))
                            (_tl1052110545_ (##cdr _e1051910540_)))
                        (if (gx#stx-pair/null? _tl1052110545_)
                            (if (fx>= (gx#stx-length _tl1052110545_) '0)
                                (let ((_g11389_
                                       (gx#syntax-split-splice
                                        _tl1052110545_
                                        '0)))
                                  (begin
                                    (let ((_g11390_ (values-count _g11389_)))
                                      (if (not (fx= _g11390_ 2))
                                          (error "Context expects 2 values"
                                                 _g11390_)))
                                    (let ((_target1052210548_
                                           (values-ref _g11389_ 0))
                                          (_tl1052410550_
                                           (values-ref _g11389_ 1)))
                                      (if (gx#stx-null? _tl1052410550_)
                                          (letrec ((_loop1052510553_
                                                    (lambda (_hd1052310556_
                                                             _rands1052910558_)
                                                      (if (gx#stx-pair?
                                                           _hd1052310556_)
                                                          (let ((_e1052610561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1052310556_)))
                    (let ((_lp-hd1052710564_ (##car _e1052610561_))
                          (_lp-tl1052810566_ (##cdr _e1052610561_)))
                      (_loop1052510553_
                       _lp-tl1052810566_
                       (cons _lp-hd1052710564_ _rands1052910558_))))
                  (let ((_rands1053010569_ (reverse _rands1052910558_)))
                    ((lambda (_L10572_)
                       (for-each
                        (lambda (_g1058510587_)
                          (apply gxc#compile-e _g1058510587_ _args10514_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1058910592_ _g1059010594_)
                                    (cons _g1058910592_ _g1059010594_))
                                  '()
                                  _L10572_))))
                     _rands1053010569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1052510553_
                                             _target1052210548_
                                             '()))
                                          (_g1051610535_ _g1051710538_)))))
                                (_g1051610535_ _g1051710538_))
                            (_g1051610535_ _g1051710538_))))
                    (_g1051610535_ _g1051710538_)))))
        (_g1051510597_ _stx10513_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx10444_)
      (let* ((_g1044610463_
              (lambda (_g1044710460_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1044710460_)))
             (_g1044510510_
              (lambda (_g1044710466_)
                (if (gx#stx-pair? _g1044710466_)
                    (let ((_e1045010468_ (gx#stx-e _g1044710466_)))
                      (let ((_hd1045110471_ (##car _e1045010468_))
                            (_tl1045210473_ (##cdr _e1045010468_)))
                        (if (gx#stx-pair? _tl1045210473_)
                            (let ((_e1045310476_ (gx#stx-e _tl1045210473_)))
                              (let ((_hd1045410479_ (##car _e1045310476_))
                                    (_tl1045510481_ (##cdr _e1045310476_)))
                                (if (gx#stx-pair? _tl1045510481_)
                                    (let ((_e1045610484_
                                           (gx#stx-e _tl1045510481_)))
                                      (let ((_hd1045710487_
                                             (##car _e1045610484_))
                                            (_tl1045810489_
                                             (##cdr _e1045610484_)))
                                        (if (gx#stx-null? _tl1045810489_)
                                            ((lambda (_L10492_ _L10493_)
                                               (gx#stx-for-each1
                                                (lambda (_bind10508_)
                                                  (if (gx#identifier?
                                                       _bind10508_)
                                                      (gxc#add-module-binding!
                                                       _bind10508_
                                                       '#f)
                                                      '#!void))
                                                _L10493_))
                                             _hd1045710487_
                                             _hd1045410479_)
                                            (_g1044610463_ _g1044710466_))))
                                    (_g1044610463_ _g1044710466_))))
                            (_g1044610463_ _g1044710466_))))
                    (_g1044610463_ _g1044710466_)))))
        (_g1044510510_ _stx10444_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx10377_)
      (let* ((_g1037910396_
              (lambda (_g1038010393_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1038010393_)))
             (_g1037810441_
              (lambda (_g1038010399_)
                (if (gx#stx-pair? _g1038010399_)
                    (let ((_e1038310401_ (gx#stx-e _g1038010399_)))
                      (let ((_hd1038410404_ (##car _e1038310401_))
                            (_tl1038510406_ (##cdr _e1038310401_)))
                        (if (gx#stx-pair? _tl1038510406_)
                            (let ((_e1038610409_ (gx#stx-e _tl1038510406_)))
                              (let ((_hd1038710412_ (##car _e1038610409_))
                                    (_tl1038810414_ (##cdr _e1038610409_)))
                                (if (gx#stx-pair? _tl1038810414_)
                                    (let ((_e1038910417_
                                           (gx#stx-e _tl1038810414_)))
                                      (let ((_hd1039010420_
                                             (##car _e1038910417_))
                                            (_tl1039110422_
                                             (##cdr _e1038910417_)))
                                        (if (gx#stx-null? _tl1039110422_)
                                            ((lambda (_L10425_ _L10426_)
                                               (gxc#add-module-binding!
                                                _L10426_
                                                '#t))
                                             _hd1039010420_
                                             _hd1038710412_)
                                            (_g1037910396_ _g1038010399_))))
                                    (_g1037910396_ _g1038010399_))))
                            (_g1037910396_ _g1038010399_))))
                    (_g1037910396_ _g1038010399_)))))
        (_g1037810441_ _stx10377_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10319_ _modules10320_)
      (let* ((_g1032210336_
              (lambda (_g1032310333_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1032310333_)))
             (_g1032110374_
              (lambda (_g1032310339_)
                (if (gx#stx-pair? _g1032310339_)
                    (let ((_e1032610341_ (gx#stx-e _g1032310339_)))
                      (let ((_hd1032710344_ (##car _e1032610341_))
                            (_tl1032810346_ (##cdr _e1032610341_)))
                        (if (gx#stx-pair? _tl1032810346_)
                            (let ((_e1032910349_ (gx#stx-e _tl1032810346_)))
                              (let ((_hd1033010352_ (##car _e1032910349_))
                                    (_tl1033110354_ (##cdr _e1032910349_)))
                                ((lambda (_L10357_ _L10358_)
                                   (let ((_ctx10371_
                                          (gx#syntax-local-e__0 _L10358_)))
                                     (begin
                                       (set-box!
                                        _modules10320_
                                        (cons _ctx10371_
                                              (unbox _modules10320_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx10371_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10320_))
                                        gx#current-expander-context
                                        _ctx10371_))))
                                 _tl1033110354_
                                 _hd1033010352_)))
                            (_g1032210336_ _g1032310339_))))
                    (_g1032210336_ _g1032310339_)))))
        (_g1032110374_ _stx10319_))))
  (define gxc#add-module-binding!
    (lambda (_id10313_ _syntax?10314_)
      (let ((_eid10316_
             (##structure-ref
              (gx#resolve-identifier__0 _id10313_)
              '1
              gx#binding::t
              '#f))
            (_ht10317_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10316_)
            '#!void
            (table-set!
             _ht10317_
             _eid10316_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10316_)
              _syntax?10314_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10294_)
      (let ((_bind10296_ (gx#resolve-identifier__0 _id10294_)))
        (if _bind10296_
            (let ((_eid10298_
                   (##structure-ref _bind10296_ '1 gx#binding::t '#f))
                  (_ht10299_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10298_)
                  _eid10298_
                  (let ((_$e10301_ (table-ref _ht10299_ _eid10298_ '#f)))
                    (if _$e10301_
                        (values _$e10301_)
                        (if (##structure-instance-of?
                             _bind10296_
                             'gx#local-binding::t)
                            (let ((_gid10304_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10298_)))
                              (begin
                                (table-set! _ht10299_ _eid10298_ _gid10304_)
                                _gid10304_))
                            (if (##structure-instance-of?
                                 _bind10296_
                                 'gx#module-binding::t)
                                (let ((_gid10311_
                                       (let ((_$e10306_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10296_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10306_
                                             ((lambda (_ns10309_)
                                                (make-symbol
                                                 _ns10309_
                                                 '"#"
                                                 _eid10298_))
                                              _$e10306_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10298_)))))
                                  (begin
                                    (table-set!
                                     _ht10299_
                                     _eid10298_
                                     _gid10311_)
                                    _gid10311_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10294_
                                 _eid10298_
                                 _bind10296_)))))))
            (if (interned-symbol? (gx#stx-e _id10294_))
                (gx#stx-e _id10294_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10294_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10292_)
      (if (gx#identifier? _id10292_)
          (gxc#generate-runtime-binding-id _id10292_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10270
      (lambda (_sym10272_ _quote?10273_)
        (let* ((_ht10275_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10277_ (table-ref _ht10275_ _sym10272_ '#f)))
          (if _$e10277_
              (values _$e10277_)
              (let ((_g10280_
                     (if _quote?10273_
                         (make-symbol
                          '"__"
                          _sym10272_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10272_ '"_"))))
                (begin
                  (table-set! _ht10275_ _sym10272_ _g10280_)
                  _g10280_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10285_)
          (let ((_quote?10287_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10270
             _sym10285_
             _quote?10287_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g11392_
          (let ((_g11391_ (length _g11392_)))
            (cond ((fx= _g11391_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g11392_))
                  ((fx= _g11391_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10270
                          _g11392_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g11392_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10269_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10269_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10229_)
      (if (interned-symbol? _key10229_)
          _key10229_
          (if (uninterned-symbol? _key10229_)
              (gxc#generate-runtime-gensym-reference__0 _key10229_)
              (let* ((_key1023010237_ _key10229_)
                     (_E1023210241_
                      (lambda ()
                        (error '"No clause matching" _key1023010237_)))
                     (_K1023310257_
                      (lambda (_mark10244_ _eid10245_)
                        (let ((_$e10247_
                               (##structure-ref
                                _mark10244_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10247_
                              ((lambda (_ht10250_)
                                 (let ((_$e10252_
                                        (table-ref _ht10250_ _eid10245_ '#f)))
                                   (if _$e10252_
                                       ((lambda (_id10255_)
                                          (if (interned-symbol? _id10255_)
                                              _id10255_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10255_)))
                                        _$e10252_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10245_))))
                               _$e10247_)
                              (gxc#generate-runtime-identifier-key
                               _eid10245_))))))
                (if (##pair? _key1023010237_)
                    (let ((_hd1023410260_ (##car _key1023010237_))
                          (_tl1023510262_ (##cdr _key1023010237_)))
                      (let* ((_eid10265_ _hd1023410260_)
                             (_mark10267_ _tl1023510262_))
                        (_K1023310257_ _mark10267_ _eid10265_)))
                    (_E1023210241_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10214
      (lambda (_top10216_)
        (if _top10216_
            (let ((_ns10218_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10219_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10219_)
                  (make-symbol
                   _ns10218_
                   '"["
                   (number->string _phi10219_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10218_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10225_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10214 _top10225_))))
      (define gxc#generate-runtime-temporary
        (lambda _g11394_
          (let ((_g11393_ (length _g11394_)))
            (cond ((fx= _g11393_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g11394_))
                  ((fx= _g11393_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10214
                          _g11394_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g11394_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10213_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10133_)
      (let* ((_g1013510145_
              (lambda (_g1013610142_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1013610142_)))
             (_g1013410210_
              (lambda (_g1013610148_)
                (if (gx#stx-pair? _g1013610148_)
                    (let ((_e1013810150_ (gx#stx-e _g1013610148_)))
                      (let ((_hd1013910153_ (##car _e1013810150_))
                            (_tl1014010155_ (##cdr _e1013810150_)))
                        ((lambda (_L10158_)
                           (let* ((_body10168_
                                   (gx#stx-map1 gxc#compile-e _L10158_))
                                  (_body10207_
                                   (filter (lambda (_stx10170_)
                                             (let* ((_g1017310182_
                                                     (lambda (_g1017410179_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1017410179_)))
                                                    (_g1017210189_
                                                     (lambda (_g1017410185_)
                                                       ((lambda () '#t))))
                                                    (_g1017110204_
                                                     (lambda (_g1017410192_)
                                                       (if (gx#stx-pair?
                                                            _g1017410192_)
                                                           (let ((_e1017510194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1017410192_)))
                     (let ((_hd1017610197_ (##car _e1017510194_))
                           (_tl1017710199_ (##cdr _e1017510194_)))
                       (if (gx#identifier? _hd1017610197_)
                           (if (gx#stx-eq? 'begin _hd1017610197_)
                               (if (gx#stx-null? _tl1017710199_)
                                   ((lambda () '#f))
                                   (_g1017210189_ _g1017410192_))
                               (_g1017210189_ _g1017410192_))
                           (_g1017210189_ _g1017410192_))))
                   (_g1017210189_ _g1017410192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1017110204_ _stx10170_)))
                                           _body10168_)))
                             (if (fx= (length _body10207_) '1)
                                 (car _body10207_)
                                 (cons 'begin _body10207_))))
                         _tl1014010155_)))
                    (_g1013510145_ _g1013610148_)))))
        (_g1013410210_ _stx10133_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10095_)
      (let* ((_g1009710107_
              (lambda (_g1009810104_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1009810104_)))
             (_g1009610130_
              (lambda (_g1009810110_)
                (if (gx#stx-pair? _g1009810110_)
                    (let ((_e1010010112_ (gx#stx-e _g1009810110_)))
                      (let ((_hd1010110115_ (##car _e1010010112_))
                            (_tl1010210117_ (##cdr _e1010010112_)))
                        ((lambda (_L10120_)
                           (cons 'begin (gx#syntax->datum _L10120_)))
                         _tl1010210117_)))
                    (_g1009710107_ _g1009810110_)))))
        (_g1009610130_ _stx10095_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10028_)
      (let* ((_g1003010047_
              (lambda (_g1003110044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1003110044_)))
             (_g1002910092_
              (lambda (_g1003110050_)
                (if (gx#stx-pair? _g1003110050_)
                    (let ((_e1003410052_ (gx#stx-e _g1003110050_)))
                      (let ((_hd1003510055_ (##car _e1003410052_))
                            (_tl1003610057_ (##cdr _e1003410052_)))
                        (if (gx#stx-pair? _tl1003610057_)
                            (let ((_e1003710060_ (gx#stx-e _tl1003610057_)))
                              (let ((_hd1003810063_ (##car _e1003710060_))
                                    (_tl1003910065_ (##cdr _e1003710060_)))
                                (if (gx#stx-pair? _tl1003910065_)
                                    (let ((_e1004010068_
                                           (gx#stx-e _tl1003910065_)))
                                      (let ((_hd1004110071_
                                             (##car _e1004010068_))
                                            (_tl1004210073_
                                             (##cdr _e1004010068_)))
                                        (if (gx#stx-null? _tl1004210073_)
                                            ((lambda (_L10076_ _L10077_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10077_))
                   (cons (gxc#compile-e _L10076_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1004110071_
                                             _hd1003810063_)
                                            (_g1003010047_ _g1003110050_))))
                                    (_g1003010047_ _g1003110050_))))
                            (_g1003010047_ _g1003110050_))))
                    (_g1003010047_ _g1003110050_)))))
        (_g1002910092_ _stx10028_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9990_)
      (let* ((_g999210002_
              (lambda (_g99939999_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g99939999_)))
             (_g999110025_
              (lambda (_g999310005_)
                (if (gx#stx-pair? _g999310005_)
                    (let ((_e999510007_ (gx#stx-e _g999310005_)))
                      (let ((_hd999610010_ (##car _e999510007_))
                            (_tl999710012_ (##cdr _e999510007_)))
                        ((lambda (_L10015_)
                           (cons 'declare (map gx#syntax->datum _L10015_)))
                         _tl999710012_)))
                    (_g999210002_ _g999310005_)))))
        (_g999110025_ _stx9990_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9746_)
      (let* ((_g97489765_
              (lambda (_g97499762_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g97499762_)))
             (_g97479987_
              (lambda (_g97499768_)
                (if (gx#stx-pair? _g97499768_)
                    (let ((_e97529770_ (gx#stx-e _g97499768_)))
                      (let ((_hd97539773_ (##car _e97529770_))
                            (_tl97549775_ (##cdr _e97529770_)))
                        (if (gx#stx-pair? _tl97549775_)
                            (let ((_e97559778_ (gx#stx-e _tl97549775_)))
                              (let ((_hd97569781_ (##car _e97559778_))
                                    (_tl97579783_ (##cdr _e97559778_)))
                                (if (gx#stx-pair? _tl97579783_)
                                    (let ((_e97589786_
                                           (gx#stx-e _tl97579783_)))
                                      (let ((_hd97599789_ (##car _e97589786_))
                                            (_tl97609791_ (##cdr _e97589786_)))
                                        (if (gx#stx-null? _tl97609791_)
                                            ((lambda (_L9794_ _L9795_)
                                               (let* ((_g98129825_
                                                       (lambda (_g98139822_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g98139822_)))
                                                      (_g98119939_
                                                       (lambda (_g98139828_)
                                                         ((lambda ()
                                                            (let* ((_tmp9832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10214
                             '#t))
                           (_body9936_
                            (let _lp9834_ ((_rest9836_ _L9795_)
                                           (_k9837_ '0)
                                           (_r9838_ '()))
                              (let* ((_g98439859_
                                      (lambda (_g98449856_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g98449856_)))
                                     (_g98429866_
                                      (lambda (_g98449862_)
                                        ((lambda () (reverse _r9838_)))))
                                     (_g98419887_
                                      (lambda (_g98449869_)
                                        ((lambda (_L9871_)
                                           (if (gx#identifier? _L9871_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L9871_)
                                 (cons (cons 'values->list
                                             (cons _tmp9832_
                                                   (cons _k9837_ '())))
                                       '())))
                     '())
               _r9838_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g98429866_ _g98449869_)))
                                         _g98449869_)))
                                     (_g98409911_
                                      (lambda (_g98449890_)
                                        (if (gx#stx-pair? _g98449890_)
                                            (let ((_e98519892_
                                                   (gx#stx-e _g98449890_)))
                                              (let ((_hd98529895_
                                                     (##car _e98519892_))
                                                    (_tl98539897_
                                                     (##cdr _e98519892_)))
                                                ((lambda (_L9900_ _L9901_)
                                                   (_lp9834_
                                                    _L9900_
                                                    (fx+ _k9837_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9901_)
                              (cons (cons 'values-ref
                                          (cons _tmp9832_ (cons _k9837_ '())))
                                    '())))
                  _r9838_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl98539897_
                                                 _hd98529895_)))
                                            (_g98419887_ _g98449890_))))
                                     (_g98399933_
                                      (lambda (_g98449914_)
                                        (if (gx#stx-pair? _g98449914_)
                                            (let ((_e98469916_
                                                   (gx#stx-e _g98449914_)))
                                              (let ((_hd98479919_
                                                     (##car _e98469916_))
                                                    (_tl98489921_
                                                     (##cdr _e98469916_)))
                                                (if (gx#stx-datum?
                                                     _hd98479919_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd98479919_)
                        '#f)
                ((lambda (_L9924_) (_lp9834_ _L9924_ (fx+ _k9837_ '1) _r9838_))
                 _tl98489921_)
                (_g98409911_ _g98449914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98409911_
                                                     _g98449914_))))
                                            (_g98409911_ _g98449914_)))))
                                (_g98399933_ _rest9836_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp9832_
                                              (cons (gxc#compile-e _L9794_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp9832_
                                         _L9795_)
                                        _body9936_))))))))
              (_g98109969_
               (lambda (_g98139942_)
                 (if (gx#stx-pair? _g98139942_)
                     (let ((_e98189944_ (gx#stx-e _g98139942_)))
                       (let ((_hd98199947_ (##car _e98189944_))
                             (_tl98209949_ (##cdr _e98189944_)))
                         (if (gx#stx-null? _tl98209949_)
                             ((lambda (_L9952_)
                                (let ((_eid9961_
                                       (gxc#generate-runtime-binding-id
                                        _L9952_)))
                                  (begin
                                    (let ((_lambda-expr99629964_
                                           (gxc#apply-find-lambda-expression
                                            _L9794_)))
                                      (if _lambda-expr99629964_
                                          (let ((_lambda-expr9967_
                                                 _lambda-expr99629964_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr9967_
                                             _eid9961_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid9961_
                                                (cons (gxc#compile-e _L9794_)
                                                      '()))))))
                              _hd98199947_)
                             (_g98119939_ _g98139942_))))
                     (_g98119939_ _g98139942_))))
              (_g98099984_
               (lambda (_g98139972_)
                 (if (gx#stx-pair? _g98139972_)
                     (let ((_e98149974_ (gx#stx-e _g98139972_)))
                       (let ((_hd98159977_ (##car _e98149974_))
                             (_tl98169979_ (##cdr _e98149974_)))
                         (if (gx#stx-datum? _hd98159977_)
                             (if (equal? (gx#stx-e _hd98159977_) '#f)
                                 (if (gx#stx-null? _tl98169979_)
                                     ((lambda () (gxc#compile-e _L9794_)))
                                     (_g98109969_ _g98139972_))
                                 (_g98109969_ _g98139972_))
                             (_g98109969_ _g98139972_))))
                     (_g98109969_ _g98139972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g98099984_ _L9795_)))
                                             _hd97599789_
                                             _hd97569781_)
                                            (_g97489765_ _g97499768_))))
                                    (_g97489765_ _g97499768_))))
                            (_g97489765_ _g97499768_))))
                    (_g97489765_ _g97499768_)))))
        (_g97479987_ _stx9746_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9734_ _hd9735_)
      (let* ((_len9737_ (gx#stx-length _hd9735_))
             (_cmp9739_ (if (gx#stx-list? _hd9735_) 'fx= 'fx>=))
             (_errmsg9741_
              (string-append
               (if (gx#stx-list? _hd9735_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len9737_)
               '" values"))
             (_count9743_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd9735_)) (fx= _len9737_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count9743_
                                    (cons (cons 'values-count
                                                (cons _vals9734_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp9739_
                                                            (cons _count9743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len9737_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg9741_
                                                            (cons _count9743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9667_)
      (let* ((_g96699686_
              (lambda (_g96709683_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g96709683_)))
             (_g96689731_
              (lambda (_g96709689_)
                (if (gx#stx-pair? _g96709689_)
                    (let ((_e96739691_ (gx#stx-e _g96709689_)))
                      (let ((_hd96749694_ (##car _e96739691_))
                            (_tl96759696_ (##cdr _e96739691_)))
                        (if (gx#stx-pair? _tl96759696_)
                            (let ((_e96769699_ (gx#stx-e _tl96759696_)))
                              (let ((_hd96779702_ (##car _e96769699_))
                                    (_tl96789704_ (##cdr _e96769699_)))
                                (if (gx#stx-pair? _tl96789704_)
                                    (let ((_e96799707_
                                           (gx#stx-e _tl96789704_)))
                                      (let ((_hd96809710_ (##car _e96799707_))
                                            (_tl96819712_ (##cdr _e96799707_)))
                                        (if (gx#stx-null? _tl96819712_)
                                            ((lambda (_L9715_ _L9716_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L9716_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9715_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd96809710_
                                             _hd96779702_)
                                            (_g96699686_ _g96709689_))))
                                    (_g96699686_ _g96709689_))))
                            (_g96699686_ _g96709689_))))
                    (_g96699686_ _g96709689_)))))
        (_g96689731_ _stx9667_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9665_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9665_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8198_)
      (letrec ((_runtime-identifier=?8200_
                (lambda (_id-stx9656_ _sym9657_)
                  (let ((_bind96589660_
                         (gx#resolve-identifier__0 _id-stx9656_)))
                    (if _bind96589660_
                        (let ((_bind9663_ _bind96589660_))
                          (eq? (##structure-ref
                                _bind9663_
                                '1
                                gx#binding::t
                                '#f)
                               _sym9657_))
                        '#f))))
               (_dispatch-case?8201_
                (lambda (_hd8886_ _body8887_)
                  (let* ((_form8889_ (cons _hd8886_ (cons _body8887_ '())))
                         (_g88949051_
                          (lambda (_g88959048_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g88959048_)))
                         (_g88939058_ (lambda (_g88959054_) ((lambda () '#f))))
                         (_g88929199_
                          (lambda (_g88959061_)
                            (if (gx#stx-pair? _g88959061_)
                                (let ((_e90119063_ (gx#stx-e _g88959061_)))
                                  (let ((_hd90129066_ (##car _e90119063_))
                                        (_tl90139068_ (##cdr _e90119063_)))
                                    (if (gx#stx-pair? _tl90139068_)
                                        (let ((_e90149071_
                                               (gx#stx-e _tl90139068_)))
                                          (let ((_hd90159074_
                                                 (##car _e90149071_))
                                                (_tl90169076_
                                                 (##cdr _e90149071_)))
                                            (if (gx#stx-pair? _hd90159074_)
                                                (let ((_e90179079_
                                                       (gx#stx-e
                                                        _hd90159074_)))
                                                  (let ((_hd90189082_
                                                         (##car _e90179079_))
                                                        (_tl90199084_
                                                         (##cdr _e90179079_)))
                                                    (if (gx#identifier?
                                                         _hd90189082_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd90189082_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl90199084_)
                        (let ((_e90209087_ (gx#stx-e _tl90199084_)))
                          (let ((_hd90219090_ (##car _e90209087_))
                                (_tl90229092_ (##cdr _e90209087_)))
                            (if (gx#stx-pair? _hd90219090_)
                                (let ((_e90239095_ (gx#stx-e _hd90219090_)))
                                  (let ((_hd90249098_ (##car _e90239095_))
                                        (_tl90259100_ (##cdr _e90239095_)))
                                    (if (gx#identifier? _hd90249098_)
                                        (if (gx#stx-eq? '%#ref _hd90249098_)
                                            (if (gx#stx-pair? _tl90259100_)
                                                (let ((_e90269103_
                                                       (gx#stx-e
                                                        _tl90259100_)))
                                                  (let ((_hd90279106_
                                                         (##car _e90269103_))
                                                        (_tl90289108_
                                                         (##cdr _e90269103_)))
                                                    (if (gx#stx-null?
                                                         _tl90289108_)
                                                        (if (gx#stx-pair?
                                                             _tl90229092_)
                                                            (let ((_e90299111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl90229092_)))
                      (let ((_hd90309114_ (##car _e90299111_))
                            (_tl90319116_ (##cdr _e90299111_)))
                        (if (gx#stx-pair? _hd90309114_)
                            (let ((_e90329119_ (gx#stx-e _hd90309114_)))
                              (let ((_hd90339122_ (##car _e90329119_))
                                    (_tl90349124_ (##cdr _e90329119_)))
                                (if (gx#identifier? _hd90339122_)
                                    (if (gx#stx-eq? '%#ref _hd90339122_)
                                        (if (gx#stx-pair? _tl90349124_)
                                            (let ((_e90359127_
                                                   (gx#stx-e _tl90349124_)))
                                              (let ((_hd90369130_
                                                     (##car _e90359127_))
                                                    (_tl90379132_
                                                     (##cdr _e90359127_)))
                                                (if (gx#stx-null? _tl90379132_)
                                                    (if (gx#stx-pair?
                                                         _tl90319116_)
                                                        (let ((_e90389135_
                                                               (gx#stx-e
                                                                _tl90319116_)))
                                                          (let ((_hd90399138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90389135_))
                        (_tl90409140_ (##cdr _e90389135_)))
                    (if (gx#stx-pair? _hd90399138_)
                        (let ((_e90419143_ (gx#stx-e _hd90399138_)))
                          (let ((_hd90429146_ (##car _e90419143_))
                                (_tl90439148_ (##cdr _e90419143_)))
                            (if (gx#identifier? _hd90429146_)
                                (if (gx#stx-eq? '%#ref _hd90429146_)
                                    (if (gx#stx-pair? _tl90439148_)
                                        (let ((_e90449151_
                                               (gx#stx-e _tl90439148_)))
                                          (let ((_hd90459154_
                                                 (##car _e90449151_))
                                                (_tl90469156_
                                                 (##cdr _e90449151_)))
                                            (if (gx#stx-null? _tl90469156_)
                                                (if (gx#stx-null? _tl90409140_)
                                                    (if (gx#stx-null?
                                                         _tl90169076_)
                                                        ((lambda (_L9159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9160_
                          _L9161_
                          _L9162_)
                   (if (if (gx#identifier? _L9162_)
                           (if (_runtime-identifier=?8200_ _L9161_ 'apply)
                               (if (gx#free-identifier=? _L9162_ _L9159_)
                                   (not (gx#free-identifier=? _L9160_ _L9162_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g88939058_ _g88959061_)))
                 _hd90459154_
                 _hd90369130_
                 _hd90279106_
                 _hd90129066_)
                (_g88939058_ _g88959061_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88939058_ _g88959061_))
                                                (_g88939058_ _g88959061_))))
                                        (_g88939058_ _g88959061_))
                                    (_g88939058_ _g88959061_))
                                (_g88939058_ _g88959061_))))
                        (_g88939058_ _g88959061_))))
                (_g88939058_ _g88959061_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88939058_
                                                     _g88959061_))))
                                            (_g88939058_ _g88959061_))
                                        (_g88939058_ _g88959061_))
                                    (_g88939058_ _g88959061_))))
                            (_g88939058_ _g88959061_))))
                    (_g88939058_ _g88959061_))
                (_g88939058_ _g88959061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g88939058_ _g88959061_))
                                            (_g88939058_ _g88959061_))
                                        (_g88939058_ _g88959061_))))
                                (_g88939058_ _g88959061_))))
                        (_g88939058_ _g88959061_))
                    (_g88939058_ _g88959061_))
                (_g88939058_ _g88959061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g88939058_ _g88959061_))))
                                        (_g88939058_ _g88959061_))))
                                (_g88939058_ _g88959061_))))
                         (_g88919459_
                          (lambda (_g88959202_)
                            (if (gx#stx-pair? _g88959202_)
                                (let ((_e89479204_ (gx#stx-e _g88959202_)))
                                  (let ((_hd89489207_ (##car _e89479204_))
                                        (_tl89499209_ (##cdr _e89479204_)))
                                    (if (gx#stx-pair/null? _hd89489207_)
                                        (if (fx>= (gx#stx-length _hd89489207_)
                                                  '0)
                                            (let ((_g11395_
                                                   (gx#syntax-split-splice
                                                    _hd89489207_
                                                    '0)))
                                              (begin
                                                (let ((_g11396_
                                                       (values-count
                                                        _g11395_)))
                                                  (if (not (fx= _g11396_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11396_)))
                                                (let ((_target89509212_
                                                       (values-ref _g11395_ 0))
                                                      (_tl89529214_
                                                       (values-ref
                                                        _g11395_
                                                        1)))
                                                  (letrec ((_loop89539217_
                                                            (lambda (_hd89519220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg89579222_)
                      (if (gx#stx-pair? _hd89519220_)
                          (let ((_e89549225_ (gx#stx-e _hd89519220_)))
                            (let ((_lp-hd89559228_ (##car _e89549225_))
                                  (_lp-tl89569230_ (##cdr _e89549225_)))
                              (_loop89539217_
                               _lp-tl89569230_
                               (cons _lp-hd89559228_ _arg89579222_))))
                          (let ((_arg89589233_ (reverse _arg89579222_)))
                            (if (gx#stx-pair? _tl89499209_)
                                (let ((_e89599236_ (gx#stx-e _tl89499209_)))
                                  (let ((_hd89609239_ (##car _e89599236_))
                                        (_tl89619241_ (##cdr _e89599236_)))
                                    (if (gx#stx-pair? _hd89609239_)
                                        (let ((_e89629244_
                                               (gx#stx-e _hd89609239_)))
                                          (let ((_hd89639247_
                                                 (##car _e89629244_))
                                                (_tl89649249_
                                                 (##cdr _e89629244_)))
                                            (if (gx#identifier? _hd89639247_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd89639247_)
                                                    (if (gx#stx-pair?
                                                         _tl89649249_)
                                                        (let ((_e89659252_
                                                               (gx#stx-e
                                                                _tl89649249_)))
                                                          (let ((_hd89669255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e89659252_))
                        (_tl89679257_ (##cdr _e89659252_)))
                    (if (gx#stx-pair? _hd89669255_)
                        (let ((_e89689260_ (gx#stx-e _hd89669255_)))
                          (let ((_hd89699263_ (##car _e89689260_))
                                (_tl89709265_ (##cdr _e89689260_)))
                            (if (gx#identifier? _hd89699263_)
                                (if (gx#stx-eq? '%#ref _hd89699263_)
                                    (if (gx#stx-pair? _tl89709265_)
                                        (let ((_e89719268_
                                               (gx#stx-e _tl89709265_)))
                                          (let ((_hd89729271_
                                                 (##car _e89719268_))
                                                (_tl89739273_
                                                 (##cdr _e89719268_)))
                                            (if (gx#stx-null? _tl89739273_)
                                                (if (gx#stx-pair? _tl89679257_)
                                                    (let ((_e89749276_
                                                           (gx#stx-e
                                                            _tl89679257_)))
                                                      (let ((_hd89759279_
                                                             (##car _e89749276_))
                                                            (_tl89769281_
                                                             (##cdr _e89749276_)))
                                                        (if (gx#stx-pair?
                                                             _hd89759279_)
                                                            (let ((_e89779284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd89759279_)))
                      (let ((_hd89789287_ (##car _e89779284_))
                            (_tl89799289_ (##cdr _e89779284_)))
                        (if (gx#identifier? _hd89789287_)
                            (if (gx#stx-eq? '%#ref _hd89789287_)
                                (if (gx#stx-pair? _tl89799289_)
                                    (let ((_e89809292_
                                           (gx#stx-e _tl89799289_)))
                                      (let ((_hd89819295_ (##car _e89809292_))
                                            (_tl89829297_ (##cdr _e89809292_)))
                                        (if (gx#stx-null? _tl89829297_)
                                            (if (gx#stx-pair/null?
                                                 _tl89769281_)
                                                (if (fx>= (gx#stx-length
                                                           _tl89769281_)
                                                          '1)
                                                    (let ((_g11397_
                                                           (gx#syntax-split-splice
                                                            _tl89769281_
                                                            '1)))
                                                      (begin
                                                        (let ((_g11398_
                                                               (values-count
                                                                _g11397_)))
                                                          (if (not (fx= _g11398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g11398_)))
                (let ((_target89839300_ (values-ref _g11397_ 0))
                      (_tl89859302_ (values-ref _g11397_ 1)))
                  (if (gx#stx-pair? _tl89859302_)
                      (let ((_e89929305_ (gx#stx-e _tl89859302_)))
                        (let ((_hd89939308_ (##car _e89929305_))
                              (_tl89949310_ (##cdr _e89929305_)))
                          (if (gx#stx-pair? _hd89939308_)
                              (let ((_e89959313_ (gx#stx-e _hd89939308_)))
                                (let ((_hd89969316_ (##car _e89959313_))
                                      (_tl89979318_ (##cdr _e89959313_)))
                                  (if (gx#identifier? _hd89969316_)
                                      (if (gx#stx-eq? '%#ref _hd89969316_)
                                          (if (gx#stx-pair? _tl89979318_)
                                              (let ((_e89989321_
                                                     (gx#stx-e _tl89979318_)))
                                                (let ((_hd89999324_
                                                       (##car _e89989321_))
                                                      (_tl90009326_
                                                       (##cdr _e89989321_)))
                                                  (if (gx#stx-null?
                                                       _tl90009326_)
                                                      (if (gx#stx-null?
                                                           _tl89949310_)
                                                          (letrec ((_loop89869329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd89849332_ _xarg89909334_)
                              (if (gx#stx-pair? _hd89849332_)
                                  (let ((_e89879337_ (gx#stx-e _hd89849332_)))
                                    (let ((_lp-hd89889340_ (##car _e89879337_))
                                          (_lp-tl89899342_
                                           (##cdr _e89879337_)))
                                      (if (gx#stx-pair? _lp-hd89889340_)
                                          (let ((_e90019345_
                                                 (gx#stx-e _lp-hd89889340_)))
                                            (let ((_hd90029348_
                                                   (##car _e90019345_))
                                                  (_tl90039350_
                                                   (##cdr _e90019345_)))
                                              (if (gx#identifier? _hd90029348_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd90029348_)
                                                      (if (gx#stx-pair?
                                                           _tl90039350_)
                                                          (let ((_e90049353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl90039350_)))
                    (let ((_hd90059356_ (##car _e90049353_))
                          (_tl90069358_ (##cdr _e90049353_)))
                      (if (gx#stx-null? _tl90069358_)
                          (_loop89869329_
                           _lp-tl89899342_
                           (cons _hd90059356_ _xarg89909334_))
                          (_g88929199_ _g88959202_))))
                  (_g88929199_ _g88959202_))
              (_g88929199_ _g88959202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88929199_ _g88959202_))))
                                          (_g88929199_ _g88959202_))))
                                  (let ((_xarg89919361_
                                         (reverse _xarg89909334_)))
                                    (if (gx#stx-null? _tl89619241_)
                                        ((lambda (_L9364_
                                                  _L9365_
                                                  _L9366_
                                                  _L9367_
                                                  _L9368_
                                                  _L9369_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g94129415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g94139417_)
                        (cons _g94129415_ _g94139417_))
                      '()
                      _L9369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier? _L9368_)
                                                       (if (_runtime-identifier=?8200_
                                                            _L9367_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g94199422_ _g94209424_)
                                                (cons _g94199422_ _g94209424_))
                                              '()
                                              _L9369_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g94269429_ _g94279431_)
                                                (cons _g94269429_ _g94279431_))
                                              '()
                                              _L9365_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g94339436_ _g94349438_)
                                               (cons _g94339436_ _g94349438_))
                                             '()
                                             _L9369_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g94409443_ _g94419445_)
                                               (cons _g94409443_ _g94419445_))
                                             '()
                                             _L9365_)))
                           (if (gx#free-identifier=? _L9368_ _L9364_)
                               (not (find (lambda (_g94479449_)
                                            (gx#free-identifier=?
                                             _g94479449_
                                             _L9366_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g94519454_
                                                             _g94529456_)
                                                      (cons _g94519454_
                                                            _g94529456_))
                                                    (cons _L9368_ '())
                                                    _L9369_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g88929199_ _g88959202_)))
                                         _hd89999324_
                                         _xarg89919361_
                                         _hd89819295_
                                         _hd89729271_
                                         _tl89529214_
                                         _arg89589233_)
                                        (_g88929199_ _g88959202_)))))))
                    (_loop89869329_ _target89839300_ '()))
                  (_g88929199_ _g88959202_))
              (_g88929199_ _g88959202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g88929199_ _g88959202_))
                                          (_g88929199_ _g88959202_))
                                      (_g88929199_ _g88959202_))))
                              (_g88929199_ _g88959202_))))
                      (_g88929199_ _g88959202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88929199_ _g88959202_))
                                                (_g88929199_ _g88959202_))
                                            (_g88929199_ _g88959202_))))
                                    (_g88929199_ _g88959202_))
                                (_g88929199_ _g88959202_))
                            (_g88929199_ _g88959202_))))
                    (_g88929199_ _g88959202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88929199_ _g88959202_))
                                                (_g88929199_ _g88959202_))))
                                        (_g88929199_ _g88959202_))
                                    (_g88929199_ _g88959202_))
                                (_g88929199_ _g88959202_))))
                        (_g88929199_ _g88959202_))))
                (_g88929199_ _g88959202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88929199_ _g88959202_))
                                                (_g88929199_ _g88959202_))))
                                        (_g88929199_ _g88959202_))))
                                (_g88929199_ _g88959202_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop89539217_
                                                     _target89509212_
                                                     '())))))
                                            (_g88929199_ _g88959202_))
                                        (_g88929199_ _g88959202_))))
                                (_g88929199_ _g88959202_))))
                         (_g88909653_
                          (lambda (_g88959462_)
                            (if (gx#stx-pair? _g88959462_)
                                (let ((_e88999464_ (gx#stx-e _g88959462_)))
                                  (let ((_hd89009467_ (##car _e88999464_))
                                        (_tl89019469_ (##cdr _e88999464_)))
                                    (if (gx#stx-pair/null? _hd89009467_)
                                        (if (fx>= (gx#stx-length _hd89009467_)
                                                  '0)
                                            (let ((_g11399_
                                                   (gx#syntax-split-splice
                                                    _hd89009467_
                                                    '0)))
                                              (begin
                                                (let ((_g11400_
                                                       (values-count
                                                        _g11399_)))
                                                  (if (not (fx= _g11400_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11400_)))
                                                (let ((_target89029472_
                                                       (values-ref _g11399_ 0))
                                                      (_tl89049474_
                                                       (values-ref
                                                        _g11399_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl89049474_)
                                                      (letrec ((_loop89059477_
                                                                (lambda (_hd89039480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg89099482_)
                          (if (gx#stx-pair? _hd89039480_)
                              (let ((_e89069485_ (gx#stx-e _hd89039480_)))
                                (let ((_lp-hd89079488_ (##car _e89069485_))
                                      (_lp-tl89089490_ (##cdr _e89069485_)))
                                  (_loop89059477_
                                   _lp-tl89089490_
                                   (cons _lp-hd89079488_ _arg89099482_))))
                              (let ((_arg89109493_ (reverse _arg89099482_)))
                                (if (gx#stx-pair? _tl89019469_)
                                    (let ((_e89119496_
                                           (gx#stx-e _tl89019469_)))
                                      (let ((_hd89129499_ (##car _e89119496_))
                                            (_tl89139501_ (##cdr _e89119496_)))
                                        (if (gx#stx-pair? _hd89129499_)
                                            (let ((_e89149504_
                                                   (gx#stx-e _hd89129499_)))
                                              (let ((_hd89159507_
                                                     (##car _e89149504_))
                                                    (_tl89169509_
                                                     (##cdr _e89149504_)))
                                                (if (gx#identifier?
                                                     _hd89159507_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd89159507_)
                                                        (if (gx#stx-pair?
                                                             _tl89169509_)
                                                            (let ((_e89179512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl89169509_)))
                      (let ((_hd89189515_ (##car _e89179512_))
                            (_tl89199517_ (##cdr _e89179512_)))
                        (if (gx#stx-pair? _hd89189515_)
                            (let ((_e89209520_ (gx#stx-e _hd89189515_)))
                              (let ((_hd89219523_ (##car _e89209520_))
                                    (_tl89229525_ (##cdr _e89209520_)))
                                (if (gx#identifier? _hd89219523_)
                                    (if (gx#stx-eq? '%#ref _hd89219523_)
                                        (if (gx#stx-pair? _tl89229525_)
                                            (let ((_e89239528_
                                                   (gx#stx-e _tl89229525_)))
                                              (let ((_hd89249531_
                                                     (##car _e89239528_))
                                                    (_tl89259533_
                                                     (##cdr _e89239528_)))
                                                (if (gx#stx-null? _tl89259533_)
                                                    (if (gx#stx-pair/null?
                                                         _tl89199517_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl89199517_)
                          '0)
                    (let ((_g11401_ (gx#syntax-split-splice _tl89199517_ '0)))
                      (begin
                        (let ((_g11402_ (values-count _g11401_)))
                          (if (not (fx= _g11402_ 2))
                              (error "Context expects 2 values" _g11402_)))
                        (let ((_target89269536_ (values-ref _g11401_ 0))
                              (_tl89289538_ (values-ref _g11401_ 1)))
                          (if (gx#stx-null? _tl89289538_)
                              (letrec ((_loop89299541_
                                        (lambda (_hd89279544_ _xarg89339546_)
                                          (if (gx#stx-pair? _hd89279544_)
                                              (let ((_e89309549_
                                                     (gx#stx-e _hd89279544_)))
                                                (let ((_lp-hd89319552_
                                                       (##car _e89309549_))
                                                      (_lp-tl89329554_
                                                       (##cdr _e89309549_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd89319552_)
                                                      (let ((_e89359557_
                                                             (gx#stx-e
                                                              _lp-hd89319552_)))
                                                        (let ((_hd89369560_
                                                               (##car _e89359557_))
                                                              (_tl89379562_
                                                               (##cdr _e89359557_)))
                                                          (if (gx#identifier?
                                                               _hd89369560_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd89369560_)
                          (if (gx#stx-pair? _tl89379562_)
                              (let ((_e89389565_ (gx#stx-e _tl89379562_)))
                                (let ((_hd89399568_ (##car _e89389565_))
                                      (_tl89409570_ (##cdr _e89389565_)))
                                  (if (gx#stx-null? _tl89409570_)
                                      (_loop89299541_
                                       _lp-tl89329554_
                                       (cons _hd89399568_ _xarg89339546_))
                                      (_g88919459_ _g88959462_))))
                              (_g88919459_ _g88959462_))
                          (_g88919459_ _g88959462_))
                      (_g88919459_ _g88959462_))))
              (_g88919459_ _g88959462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg89349573_
                                                     (reverse _xarg89339546_)))
                                                (if (gx#stx-null? _tl89139501_)
                                                    ((lambda (_L9576_
                                                              _L9577_
                                                              _L9578_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g96069609_ _g96079611_)
                                    (cons _g96069609_ _g96079611_))
                                  '()
                                  _L9578_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g96139616_
                                                           _g96149618_)
                                                    (cons _g96139616_
                                                          _g96149618_))
                                                  '()
                                                  _L9578_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g96209623_
                                                           _g96219625_)
                                                    (cons _g96209623_
                                                          _g96219625_))
                                                  '()
                                                  _L9576_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g96279630_
                                                          _g96289632_)
                                                   (cons _g96279630_
                                                         _g96289632_))
                                                 '()
                                                 _L9578_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g96349637_
                                                          _g96359639_)
                                                   (cons _g96349637_
                                                         _g96359639_))
                                                 '()
                                                 _L9576_)))
                               (not (find (lambda (_g96419643_)
                                            (gx#free-identifier=?
                                             _g96419643_
                                             _L9577_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g96459648_
                                                             _g96469650_)
                                                      (cons _g96459648_
                                                            _g96469650_))
                                                    '()
                                                    _L9578_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g88919459_ _g88959462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg89349573_
                                                     _hd89249531_
                                                     _arg89109493_)
                                                    (_g88919459_
                                                     _g88959462_)))))))
                                (_loop89299541_ _target89269536_ '()))
                              (_g88919459_ _g88959462_)))))
                    (_g88919459_ _g88959462_))
                (_g88919459_ _g88959462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88919459_
                                                     _g88959462_))))
                                            (_g88919459_ _g88959462_))
                                        (_g88919459_ _g88959462_))
                                    (_g88919459_ _g88959462_))))
                            (_g88919459_ _g88959462_))))
                    (_g88919459_ _g88959462_))
                (_g88919459_ _g88959462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g88919459_
                                                     _g88959462_))))
                                            (_g88919459_ _g88959462_))))
                                    (_g88919459_ _g88959462_)))))))
                (_loop89059477_ _target89029472_ '()))
              (_g88919459_ _g88959462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g88919459_ _g88959462_))
                                        (_g88919459_ _g88959462_))))
                                (_g88919459_ _g88959462_)))))
                    (_g88909653_ _form8889_))))
               (_dispatch-case-e8202_
                (lambda (_hd8350_ _body8351_)
                  (let* ((_form8353_ (cons _hd8350_ (cons _body8351_ '())))
                         (_g83578481_
                          (lambda (_g83588478_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g83588478_)))
                         (_g83568599_
                          (lambda (_g83588484_)
                            (if (gx#stx-pair? _g83588484_)
                                (let ((_e84478486_ (gx#stx-e _g83588484_)))
                                  (let ((_hd84488489_ (##car _e84478486_))
                                        (_tl84498491_ (##cdr _e84478486_)))
                                    (if (gx#stx-pair? _tl84498491_)
                                        (let ((_e84508494_
                                               (gx#stx-e _tl84498491_)))
                                          (let ((_hd84518497_
                                                 (##car _e84508494_))
                                                (_tl84528499_
                                                 (##cdr _e84508494_)))
                                            (if (gx#stx-pair? _hd84518497_)
                                                (let ((_e84538502_
                                                       (gx#stx-e
                                                        _hd84518497_)))
                                                  (let ((_hd84548505_
                                                         (##car _e84538502_))
                                                        (_tl84558507_
                                                         (##cdr _e84538502_)))
                                                    (if (gx#identifier?
                                                         _hd84548505_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd84548505_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl84558507_)
                        (let ((_e84568510_ (gx#stx-e _tl84558507_)))
                          (let ((_hd84578513_ (##car _e84568510_))
                                (_tl84588515_ (##cdr _e84568510_)))
                            (if (gx#stx-pair? _hd84578513_)
                                (let ((_e84598518_ (gx#stx-e _hd84578513_)))
                                  (let ((_hd84608521_ (##car _e84598518_))
                                        (_tl84618523_ (##cdr _e84598518_)))
                                    (if (gx#identifier? _hd84608521_)
                                        (if (gx#stx-eq? '%#ref _hd84608521_)
                                            (if (gx#stx-pair? _tl84618523_)
                                                (let ((_e84628526_
                                                       (gx#stx-e
                                                        _tl84618523_)))
                                                  (let ((_hd84638529_
                                                         (##car _e84628526_))
                                                        (_tl84648531_
                                                         (##cdr _e84628526_)))
                                                    (if (gx#stx-null?
                                                         _tl84648531_)
                                                        (if (gx#stx-pair?
                                                             _tl84588515_)
                                                            (let ((_e84658534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl84588515_)))
                      (let ((_hd84668537_ (##car _e84658534_))
                            (_tl84678539_ (##cdr _e84658534_)))
                        (if (gx#stx-pair? _hd84668537_)
                            (let ((_e84688542_ (gx#stx-e _hd84668537_)))
                              (let ((_hd84698545_ (##car _e84688542_))
                                    (_tl84708547_ (##cdr _e84688542_)))
                                (if (gx#identifier? _hd84698545_)
                                    (if (gx#stx-eq? '%#ref _hd84698545_)
                                        (if (gx#stx-pair? _tl84708547_)
                                            (let ((_e84718550_
                                                   (gx#stx-e _tl84708547_)))
                                              (let ((_hd84728553_
                                                     (##car _e84718550_))
                                                    (_tl84738555_
                                                     (##cdr _e84718550_)))
                                                (if (gx#stx-null? _tl84738555_)
                                                    (if (gx#stx-pair?
                                                         _tl84678539_)
                                                        (let ((_e84748558_
                                                               (gx#stx-e
                                                                _tl84678539_)))
                                                          (let ((_hd84758561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e84748558_))
                        (_tl84768563_ (##cdr _e84748558_)))
                    (if (gx#stx-null? _tl84768563_)
                        (if (gx#stx-null? _tl84528499_)
                            ((lambda (_L8566_ _L8567_ _L8568_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8566_ '()))))
                             _hd84728553_
                             _hd84638529_
                             _hd84488489_)
                            (_g83578481_ _g83588484_))
                        (_g83578481_ _g83588484_))))
                (_g83578481_ _g83588484_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83578481_
                                                     _g83588484_))))
                                            (_g83578481_ _g83588484_))
                                        (_g83578481_ _g83588484_))
                                    (_g83578481_ _g83588484_))))
                            (_g83578481_ _g83588484_))))
                    (_g83578481_ _g83588484_))
                (_g83578481_ _g83588484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g83578481_ _g83588484_))
                                            (_g83578481_ _g83588484_))
                                        (_g83578481_ _g83588484_))))
                                (_g83578481_ _g83588484_))))
                        (_g83578481_ _g83588484_))
                    (_g83578481_ _g83588484_))
                (_g83578481_ _g83588484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g83578481_ _g83588484_))))
                                        (_g83578481_ _g83588484_))))
                                (_g83578481_ _g83588484_))))
                         (_g83558735_
                          (lambda (_g83588602_)
                            (if (gx#stx-pair? _g83588602_)
                                (let ((_e84088604_ (gx#stx-e _g83588602_)))
                                  (let ((_hd84098607_ (##car _e84088604_))
                                        (_tl84108609_ (##cdr _e84088604_)))
                                    (if (gx#stx-pair/null? _hd84098607_)
                                        (if (fx>= (gx#stx-length _hd84098607_)
                                                  '0)
                                            (let ((_g11403_
                                                   (gx#syntax-split-splice
                                                    _hd84098607_
                                                    '0)))
                                              (begin
                                                (let ((_g11404_
                                                       (values-count
                                                        _g11403_)))
                                                  (if (not (fx= _g11404_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11404_)))
                                                (let ((_target84118612_
                                                       (values-ref _g11403_ 0))
                                                      (_tl84138614_
                                                       (values-ref
                                                        _g11403_
                                                        1)))
                                                  (letrec ((_loop84148617_
                                                            (lambda (_hd84128620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg84188622_)
                      (if (gx#stx-pair? _hd84128620_)
                          (let ((_e84158625_ (gx#stx-e _hd84128620_)))
                            (let ((_lp-hd84168628_ (##car _e84158625_))
                                  (_lp-tl84178630_ (##cdr _e84158625_)))
                              (_loop84148617_
                               _lp-tl84178630_
                               (cons _lp-hd84168628_ _arg84188622_))))
                          (let ((_arg84198633_ (reverse _arg84188622_)))
                            (if (gx#stx-pair? _tl84108609_)
                                (let ((_e84208636_ (gx#stx-e _tl84108609_)))
                                  (let ((_hd84218639_ (##car _e84208636_))
                                        (_tl84228641_ (##cdr _e84208636_)))
                                    (if (gx#stx-pair? _hd84218639_)
                                        (let ((_e84238644_
                                               (gx#stx-e _hd84218639_)))
                                          (let ((_hd84248647_
                                                 (##car _e84238644_))
                                                (_tl84258649_
                                                 (##cdr _e84238644_)))
                                            (if (gx#identifier? _hd84248647_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd84248647_)
                                                    (if (gx#stx-pair?
                                                         _tl84258649_)
                                                        (let ((_e84268652_
                                                               (gx#stx-e
                                                                _tl84258649_)))
                                                          (let ((_hd84278655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e84268652_))
                        (_tl84288657_ (##cdr _e84268652_)))
                    (if (gx#stx-pair? _hd84278655_)
                        (let ((_e84298660_ (gx#stx-e _hd84278655_)))
                          (let ((_hd84308663_ (##car _e84298660_))
                                (_tl84318665_ (##cdr _e84298660_)))
                            (if (gx#identifier? _hd84308663_)
                                (if (gx#stx-eq? '%#ref _hd84308663_)
                                    (if (gx#stx-pair? _tl84318665_)
                                        (let ((_e84328668_
                                               (gx#stx-e _tl84318665_)))
                                          (let ((_hd84338671_
                                                 (##car _e84328668_))
                                                (_tl84348673_
                                                 (##cdr _e84328668_)))
                                            (if (gx#stx-null? _tl84348673_)
                                                (if (gx#stx-pair? _tl84288657_)
                                                    (let ((_e84358676_
                                                           (gx#stx-e
                                                            _tl84288657_)))
                                                      (let ((_hd84368679_
                                                             (##car _e84358676_))
                                                            (_tl84378681_
                                                             (##cdr _e84358676_)))
                                                        (if (gx#stx-pair?
                                                             _hd84368679_)
                                                            (let ((_e84388684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd84368679_)))
                      (let ((_hd84398687_ (##car _e84388684_))
                            (_tl84408689_ (##cdr _e84388684_)))
                        (if (gx#identifier? _hd84398687_)
                            (if (gx#stx-eq? '%#ref _hd84398687_)
                                (if (gx#stx-pair? _tl84408689_)
                                    (let ((_e84418692_
                                           (gx#stx-e _tl84408689_)))
                                      (let ((_hd84428695_ (##car _e84418692_))
                                            (_tl84438697_ (##cdr _e84418692_)))
                                        (if (gx#stx-null? _tl84438697_)
                                            (if (gx#stx-null? _tl84228641_)
                                                ((lambda (_L8700_
                                                          _L8701_
                                                          _L8702_
                                                          _L8703_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L8700_ '()))))
                                                 _hd84428695_
                                                 _hd84338671_
                                                 _tl84138614_
                                                 _arg84198633_)
                                                (_g83568599_ _g83588602_))
                                            (_g83568599_ _g83588602_))))
                                    (_g83568599_ _g83588602_))
                                (_g83568599_ _g83588602_))
                            (_g83568599_ _g83588602_))))
                    (_g83568599_ _g83588602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83568599_ _g83588602_))
                                                (_g83568599_ _g83588602_))))
                                        (_g83568599_ _g83588602_))
                                    (_g83568599_ _g83588602_))
                                (_g83568599_ _g83588602_))))
                        (_g83568599_ _g83588602_))))
                (_g83568599_ _g83588602_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83568599_ _g83588602_))
                                                (_g83568599_ _g83588602_))))
                                        (_g83568599_ _g83588602_))))
                                (_g83568599_ _g83588602_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop84148617_
                                                     _target84118612_
                                                     '())))))
                                            (_g83568599_ _g83588602_))
                                        (_g83568599_ _g83588602_))))
                                (_g83568599_ _g83588602_))))
                         (_g83548883_
                          (lambda (_g83588738_)
                            (if (gx#stx-pair? _g83588738_)
                                (let ((_e83628740_ (gx#stx-e _g83588738_)))
                                  (let ((_hd83638743_ (##car _e83628740_))
                                        (_tl83648745_ (##cdr _e83628740_)))
                                    (if (gx#stx-pair/null? _hd83638743_)
                                        (if (fx>= (gx#stx-length _hd83638743_)
                                                  '0)
                                            (let ((_g11405_
                                                   (gx#syntax-split-splice
                                                    _hd83638743_
                                                    '0)))
                                              (begin
                                                (let ((_g11406_
                                                       (values-count
                                                        _g11405_)))
                                                  (if (not (fx= _g11406_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11406_)))
                                                (let ((_target83658748_
                                                       (values-ref _g11405_ 0))
                                                      (_tl83678750_
                                                       (values-ref
                                                        _g11405_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl83678750_)
                                                      (letrec ((_loop83688753_
                                                                (lambda (_hd83668756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg83728758_)
                          (if (gx#stx-pair? _hd83668756_)
                              (let ((_e83698761_ (gx#stx-e _hd83668756_)))
                                (let ((_lp-hd83708764_ (##car _e83698761_))
                                      (_lp-tl83718766_ (##cdr _e83698761_)))
                                  (_loop83688753_
                                   _lp-tl83718766_
                                   (cons _lp-hd83708764_ _arg83728758_))))
                              (let ((_arg83738769_ (reverse _arg83728758_)))
                                (if (gx#stx-pair? _tl83648745_)
                                    (let ((_e83748772_
                                           (gx#stx-e _tl83648745_)))
                                      (let ((_hd83758775_ (##car _e83748772_))
                                            (_tl83768777_ (##cdr _e83748772_)))
                                        (if (gx#stx-pair? _hd83758775_)
                                            (let ((_e83778780_
                                                   (gx#stx-e _hd83758775_)))
                                              (let ((_hd83788783_
                                                     (##car _e83778780_))
                                                    (_tl83798785_
                                                     (##cdr _e83778780_)))
                                                (if (gx#identifier?
                                                     _hd83788783_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd83788783_)
                                                        (if (gx#stx-pair?
                                                             _tl83798785_)
                                                            (let ((_e83808788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl83798785_)))
                      (let ((_hd83818791_ (##car _e83808788_))
                            (_tl83828793_ (##cdr _e83808788_)))
                        (if (gx#stx-pair? _hd83818791_)
                            (let ((_e83838796_ (gx#stx-e _hd83818791_)))
                              (let ((_hd83848799_ (##car _e83838796_))
                                    (_tl83858801_ (##cdr _e83838796_)))
                                (if (gx#identifier? _hd83848799_)
                                    (if (gx#stx-eq? '%#ref _hd83848799_)
                                        (if (gx#stx-pair? _tl83858801_)
                                            (let ((_e83868804_
                                                   (gx#stx-e _tl83858801_)))
                                              (let ((_hd83878807_
                                                     (##car _e83868804_))
                                                    (_tl83888809_
                                                     (##cdr _e83868804_)))
                                                (if (gx#stx-null? _tl83888809_)
                                                    (if (gx#stx-pair/null?
                                                         _tl83828793_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl83828793_)
                          '0)
                    (let ((_g11407_ (gx#syntax-split-splice _tl83828793_ '0)))
                      (begin
                        (let ((_g11408_ (values-count _g11407_)))
                          (if (not (fx= _g11408_ 2))
                              (error "Context expects 2 values" _g11408_)))
                        (let ((_target83898812_ (values-ref _g11407_ 0))
                              (_tl83918814_ (values-ref _g11407_ 1)))
                          (if (gx#stx-null? _tl83918814_)
                              (letrec ((_loop83928817_
                                        (lambda (_hd83908820_ _xarg83968822_)
                                          (if (gx#stx-pair? _hd83908820_)
                                              (let ((_e83938825_
                                                     (gx#stx-e _hd83908820_)))
                                                (let ((_lp-hd83948828_
                                                       (##car _e83938825_))
                                                      (_lp-tl83958830_
                                                       (##cdr _e83938825_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd83948828_)
                                                      (let ((_e83988833_
                                                             (gx#stx-e
                                                              _lp-hd83948828_)))
                                                        (let ((_hd83998836_
                                                               (##car _e83988833_))
                                                              (_tl84008838_
                                                               (##cdr _e83988833_)))
                                                          (if (gx#identifier?
                                                               _hd83998836_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd83998836_)
                          (if (gx#stx-pair? _tl84008838_)
                              (let ((_e84018841_ (gx#stx-e _tl84008838_)))
                                (let ((_hd84028844_ (##car _e84018841_))
                                      (_tl84038846_ (##cdr _e84018841_)))
                                  (if (gx#stx-null? _tl84038846_)
                                      (_loop83928817_
                                       _lp-tl83958830_
                                       (cons _hd84028844_ _xarg83968822_))
                                      (_g83558735_ _g83588738_))))
                              (_g83558735_ _g83588738_))
                          (_g83558735_ _g83588738_))
                      (_g83558735_ _g83588738_))))
              (_g83558735_ _g83588738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg83978849_
                                                     (reverse _xarg83968822_)))
                                                (if (gx#stx-null? _tl83768777_)
                                                    ((lambda (_L8852_
                                                              _L8853_
                                                              _L8854_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L8853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg83978849_
                                                     _hd83878807_
                                                     _arg83738769_)
                                                    (_g83558735_
                                                     _g83588738_)))))))
                                (_loop83928817_ _target83898812_ '()))
                              (_g83558735_ _g83588738_)))))
                    (_g83558735_ _g83588738_))
                (_g83558735_ _g83588738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83558735_
                                                     _g83588738_))))
                                            (_g83558735_ _g83588738_))
                                        (_g83558735_ _g83588738_))
                                    (_g83558735_ _g83588738_))))
                            (_g83558735_ _g83588738_))))
                    (_g83558735_ _g83588738_))
                (_g83558735_ _g83588738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g83558735_
                                                     _g83588738_))))
                                            (_g83558735_ _g83588738_))))
                                    (_g83558735_ _g83588738_)))))))
                (_loop83688753_ _target83658748_ '()))
              (_g83558735_ _g83588738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g83558735_ _g83588738_))
                                        (_g83558735_ _g83588738_))))
                                (_g83558735_ _g83588738_)))))
                    (_g83548883_ _form8353_))))
               (_generate18203_
                (lambda (_args8338_ _arglen8339_ _hd8340_ _body8341_)
                  (let* ((_len8343_ (gx#stx-length _hd8340_))
                         (_condition8345_
                          (if (gx#stx-list? _hd8340_)
                              (cons 'fx=
                                    (cons _arglen8339_ (cons _len8343_ '())))
                              (if (> _len8343_ '0)
                                  (cons 'fx>=
                                        (cons _arglen8339_
                                              (cons _len8343_ '())))
                                  '#t)))
                         (_dispatch8347_
                          (if (_dispatch-case?8201_ _hd8340_ _body8341_)
                              (_dispatch-case-e8202_ _hd8340_ _body8341_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd8340_)
                                          (cons (gxc#compile-e _body8341_)
                                                '()))))))
                    (cons _condition8345_
                          (cons (cons 'apply
                                      (cons _dispatch8347_
                                            (cons _args8338_ '())))
                                '()))))))
        (let* ((_g82058233_
                (lambda (_g82068230_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g82068230_)))
               (_g82048335_
                (lambda (_g82068236_)
                  (if (gx#stx-pair? _g82068236_)
                      (let ((_e82098238_ (gx#stx-e _g82068236_)))
                        (let ((_hd82108241_ (##car _e82098238_))
                              (_tl82118243_ (##cdr _e82098238_)))
                          (if (gx#stx-pair/null? _tl82118243_)
                              (if (fx>= (gx#stx-length _tl82118243_) '0)
                                  (let ((_g11409_
                                         (gx#syntax-split-splice
                                          _tl82118243_
                                          '0)))
                                    (begin
                                      (let ((_g11410_ (values-count _g11409_)))
                                        (if (not (fx= _g11410_ 2))
                                            (error "Context expects 2 values"
                                                   _g11410_)))
                                      (let ((_target82128246_
                                             (values-ref _g11409_ 0))
                                            (_tl82148248_
                                             (values-ref _g11409_ 1)))
                                        (if (gx#stx-null? _tl82148248_)
                                            (letrec ((_loop82158251_
                                                      (lambda (_hd82138254_
                                                               _body82198256_
                                                               _hd82208258_)
                                                        (if (gx#stx-pair?
                                                             _hd82138254_)
                                                            (let ((_e82168261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd82138254_)))
                      (let ((_lp-hd82178264_ (##car _e82168261_))
                            (_lp-tl82188266_ (##cdr _e82168261_)))
                        (if (gx#stx-pair? _lp-hd82178264_)
                            (let ((_e82238269_ (gx#stx-e _lp-hd82178264_)))
                              (let ((_hd82248272_ (##car _e82238269_))
                                    (_tl82258274_ (##cdr _e82238269_)))
                                (if (gx#stx-pair? _tl82258274_)
                                    (let ((_e82268277_
                                           (gx#stx-e _tl82258274_)))
                                      (let ((_hd82278280_ (##car _e82268277_))
                                            (_tl82288282_ (##cdr _e82268277_)))
                                        (if (gx#stx-null? _tl82288282_)
                                            (_loop82158251_
                                             _lp-tl82188266_
                                             (cons _hd82278280_ _body82198256_)
                                             (cons _hd82248272_ _hd82208258_))
                                            (_g82058233_ _g82068236_))))
                                    (_g82058233_ _g82068236_))))
                            (_g82058233_ _g82068236_))))
                    (let ((_body82218285_ (reverse _body82198256_))
                          (_hd82228287_ (reverse _hd82208258_)))
                      ((lambda (_L8290_ _L8291_)
                         (let ((_args8310_ (gxc#generate-runtime-temporary__0))
                               (_arglen8311_
                                (gxc#generate-runtime-temporary__0))
                               (_name8312_
                                (let ((_$e8307_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8198_
                                        '#f)))
                                  (if _$e8307_
                                      _$e8307_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8310_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8310_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8310_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g83138316_ _g83148318_)
                                            (_generate18203_
                                             _args8310_
                                             _arglen8311_
                                             _g83138316_
                                             _g83148318_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g83208323_
                                                             _g83218325_)
                                                      (cons _g83208323_
                                                            _g83218325_))
                                                    '()
                                                    _L8291_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g83278330_
                                                             _g83288332_)
                                                      (cons _g83278330_
                                                            _g83288332_))
                                                    '()
                                                    _L8290_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body82218285_
                       _hd82228287_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop82158251_
                                               _target82128246_
                                               '()
                                               '()))
                                            (_g82058233_ _g82068236_)))))
                                  (_g82058233_ _g82068236_))
                              (_g82058233_ _g82068236_))))
                      (_g82058233_ _g82068236_)))))
          (_g82048335_ _stx8198_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7261
      (lambda (_stx7263_ _compiled-body?7264_)
        (letrec ((_generate-simple7266_
                  (lambda (_hd8185_ _body8186_)
                    (_coalesce-let*7267_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8185_
                      _body8186_
                      _compiled-body?7264_))))
                 (_coalesce-let*7267_
                  (lambda (_code7569_)
                    (let* ((_g75747709_
                            (lambda (_g75757706_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g75757706_)))
                           (_g75737716_
                            (lambda (_g75757712_) ((lambda () _code7569_))))
                           (_g75727886_
                            (lambda (_g75757719_)
                              (if (gx#stx-pair? _g75757719_)
                                  (let ((_e76637721_ (gx#stx-e _g75757719_)))
                                    (let ((_hd76647724_ (##car _e76637721_))
                                          (_tl76657726_ (##cdr _e76637721_)))
                                      (if (gx#identifier? _hd76647724_)
                                          (if (gx#stx-eq? 'let _hd76647724_)
                                              (if (gx#stx-pair? _tl76657726_)
                                                  (let ((_e76667729_
                                                         (gx#stx-e
                                                          _tl76657726_)))
                                                    (let ((_hd76677732_
                                                           (##car _e76667729_))
                                                          (_tl76687734_
                                                           (##cdr _e76667729_)))
                                                      (if (gx#stx-pair?
                                                           _hd76677732_)
                                                          (let ((_e76697737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76677732_)))
                    (let ((_hd76707740_ (##car _e76697737_))
                          (_tl76717742_ (##cdr _e76697737_)))
                      (if (gx#stx-pair? _hd76707740_)
                          (let ((_e76727745_ (gx#stx-e _hd76707740_)))
                            (let ((_hd76737748_ (##car _e76727745_))
                                  (_tl76747750_ (##cdr _e76727745_)))
                              (if (gx#stx-pair? _tl76747750_)
                                  (let ((_e76757753_ (gx#stx-e _tl76747750_)))
                                    (let ((_hd76767756_ (##car _e76757753_))
                                          (_tl76777758_ (##cdr _e76757753_)))
                                      (if (gx#stx-null? _tl76777758_)
                                          (if (gx#stx-null? _tl76717742_)
                                              (if (gx#stx-pair? _tl76687734_)
                                                  (let ((_e76787761_
                                                         (gx#stx-e
                                                          _tl76687734_)))
                                                    (let ((_hd76797764_
                                                           (##car _e76787761_))
                                                          (_tl76807766_
                                                           (##cdr _e76787761_)))
                                                      (if (gx#stx-pair?
                                                           _hd76797764_)
                                                          (let ((_e76817769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76797764_)))
                    (let ((_hd76827772_ (##car _e76817769_))
                          (_tl76837774_ (##cdr _e76817769_)))
                      (if (gx#identifier? _hd76827772_)
                          (if (gx#stx-eq? 'let* _hd76827772_)
                              (if (gx#stx-pair? _tl76837774_)
                                  (let ((_e76847777_ (gx#stx-e _tl76837774_)))
                                    (let ((_hd76857780_ (##car _e76847777_))
                                          (_tl76867782_ (##cdr _e76847777_)))
                                      (if (gx#stx-pair/null? _hd76857780_)
                                          (if (fx>= (gx#stx-length
                                                     _hd76857780_)
                                                    '0)
                                              (let ((_g11411_
                                                     (gx#syntax-split-splice
                                                      _hd76857780_
                                                      '0)))
                                                (begin
                                                  (let ((_g11412_
                                                         (values-count
                                                          _g11411_)))
                                                    (if (not (fx= _g11412_ 2))
                                                        (error "Context expects 2 values"
                                                               _g11412_)))
                                                  (let ((_target76877785_
                                                         (values-ref
                                                          _g11411_
                                                          0))
                                                        (_tl76897787_
                                                         (values-ref
                                                          _g11411_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl76897787_)
                                                        (letrec ((_loop76907790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd76887793_ _bind76947795_)
                            (if (gx#stx-pair? _hd76887793_)
                                (let ((_e76917798_ (gx#stx-e _hd76887793_)))
                                  (let ((_lp-hd76927801_ (##car _e76917798_))
                                        (_lp-tl76937803_ (##cdr _e76917798_)))
                                    (_loop76907790_
                                     _lp-tl76937803_
                                     (cons _lp-hd76927801_ _bind76947795_))))
                                (let ((_bind76957806_
                                       (reverse _bind76947795_)))
                                  (if (gx#stx-pair/null? _tl76867782_)
                                      (if (fx>= (gx#stx-length _tl76867782_)
                                                '0)
                                          (let ((_g11413_
                                                 (gx#syntax-split-splice
                                                  _tl76867782_
                                                  '0)))
                                            (begin
                                              (let ((_g11414_
                                                     (values-count _g11413_)))
                                                (if (not (fx= _g11414_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11414_)))
                                              (let ((_target76967809_
                                                     (values-ref _g11413_ 0))
                                                    (_tl76987811_
                                                     (values-ref _g11413_ 1)))
                                                (if (gx#stx-null? _tl76987811_)
                                                    (letrec ((_loop76997814_
                                                              (lambda (_hd76977817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body77037819_)
                        (if (gx#stx-pair? _hd76977817_)
                            (let ((_e77007822_ (gx#stx-e _hd76977817_)))
                              (let ((_lp-hd77017825_ (##car _e77007822_))
                                    (_lp-tl77027827_ (##cdr _e77007822_)))
                                (_loop76997814_
                                 _lp-tl77027827_
                                 (cons _lp-hd77017825_ _body77037819_))))
                            (let ((_body77047830_ (reverse _body77037819_)))
                              (if (gx#stx-null? _tl76807766_)
                                  ((lambda (_L7833_ _L7834_ _L7835_ _L7836_)
                                     (cons 'let*
                                           (cons (cons (cons _L7836_
                                                             (cons _L7835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g78717874_ _g78727876_)
                           (cons _g78717874_ _g78727876_))
                         '()
                         _L7834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g78787881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g78797883_)
                     (cons _g78787881_ _g78797883_))
                   '()
                   _L7833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body77047830_
                                   _bind76957806_
                                   _hd76767756_
                                   _hd76737748_)
                                  (_g75737716_ _g75757719_)))))))
              (_loop76997814_ _target76967809_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75737716_
                                                     _g75757719_)))))
                                          (_g75737716_ _g75757719_))
                                      (_g75737716_ _g75757719_)))))))
                  (_loop76907790_ _target76877785_ '()))
                (_g75737716_ _g75757719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g75737716_ _g75757719_))
                                          (_g75737716_ _g75757719_))))
                                  (_g75737716_ _g75757719_))
                              (_g75737716_ _g75757719_))
                          (_g75737716_ _g75757719_))))
                  (_g75737716_ _g75757719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75737716_ _g75757719_))
                                              (_g75737716_ _g75757719_))
                                          (_g75737716_ _g75757719_))))
                                  (_g75737716_ _g75757719_))))
                          (_g75737716_ _g75757719_))))
                  (_g75737716_ _g75757719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75737716_ _g75757719_))
                                              (_g75737716_ _g75757719_))
                                          (_g75737716_ _g75757719_))))
                                  (_g75737716_ _g75757719_))))
                           (_g75718051_
                            (lambda (_g75757889_)
                              (if (gx#stx-pair? _g75757889_)
                                  (let ((_e76177891_ (gx#stx-e _g75757889_)))
                                    (let ((_hd76187894_ (##car _e76177891_))
                                          (_tl76197896_ (##cdr _e76177891_)))
                                      (if (gx#identifier? _hd76187894_)
                                          (if (gx#stx-eq? 'let _hd76187894_)
                                              (if (gx#stx-pair? _tl76197896_)
                                                  (let ((_e76207899_
                                                         (gx#stx-e
                                                          _tl76197896_)))
                                                    (let ((_hd76217902_
                                                           (##car _e76207899_))
                                                          (_tl76227904_
                                                           (##cdr _e76207899_)))
                                                      (if (gx#stx-pair?
                                                           _hd76217902_)
                                                          (let ((_e76237907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76217902_)))
                    (let ((_hd76247910_ (##car _e76237907_))
                          (_tl76257912_ (##cdr _e76237907_)))
                      (if (gx#stx-pair? _hd76247910_)
                          (let ((_e76267915_ (gx#stx-e _hd76247910_)))
                            (let ((_hd76277918_ (##car _e76267915_))
                                  (_tl76287920_ (##cdr _e76267915_)))
                              (if (gx#stx-pair? _tl76287920_)
                                  (let ((_e76297923_ (gx#stx-e _tl76287920_)))
                                    (let ((_hd76307926_ (##car _e76297923_))
                                          (_tl76317928_ (##cdr _e76297923_)))
                                      (if (gx#stx-null? _tl76317928_)
                                          (if (gx#stx-null? _tl76257912_)
                                              (if (gx#stx-pair? _tl76227904_)
                                                  (let ((_e76327931_
                                                         (gx#stx-e
                                                          _tl76227904_)))
                                                    (let ((_hd76337934_
                                                           (##car _e76327931_))
                                                          (_tl76347936_
                                                           (##cdr _e76327931_)))
                                                      (if (gx#stx-pair?
                                                           _hd76337934_)
                                                          (let ((_e76357939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd76337934_)))
                    (let ((_hd76367942_ (##car _e76357939_))
                          (_tl76377944_ (##cdr _e76357939_)))
                      (if (gx#identifier? _hd76367942_)
                          (if (gx#stx-eq? 'let _hd76367942_)
                              (if (gx#stx-pair? _tl76377944_)
                                  (let ((_e76387947_ (gx#stx-e _tl76377944_)))
                                    (let ((_hd76397950_ (##car _e76387947_))
                                          (_tl76407952_ (##cdr _e76387947_)))
                                      (if (gx#stx-pair? _hd76397950_)
                                          (let ((_e76417955_
                                                 (gx#stx-e _hd76397950_)))
                                            (let ((_hd76427958_
                                                   (##car _e76417955_))
                                                  (_tl76437960_
                                                   (##cdr _e76417955_)))
                                              (if (gx#stx-pair? _hd76427958_)
                                                  (let ((_e76447963_
                                                         (gx#stx-e
                                                          _hd76427958_)))
                                                    (let ((_hd76457966_
                                                           (##car _e76447963_))
                                                          (_tl76467968_
                                                           (##cdr _e76447963_)))
                                                      (if (gx#stx-pair?
                                                           _tl76467968_)
                                                          (let ((_e76477971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl76467968_)))
                    (let ((_hd76487974_ (##car _e76477971_))
                          (_tl76497976_ (##cdr _e76477971_)))
                      (if (gx#stx-null? _tl76497976_)
                          (if (gx#stx-null? _tl76437960_)
                              (if (gx#stx-pair/null? _tl76407952_)
                                  (if (fx>= (gx#stx-length _tl76407952_) '0)
                                      (let ((_g11415_
                                             (gx#syntax-split-splice
                                              _tl76407952_
                                              '0)))
                                        (begin
                                          (let ((_g11416_
                                                 (values-count _g11415_)))
                                            (if (not (fx= _g11416_ 2))
                                                (error "Context expects 2 values"
                                                       _g11416_)))
                                          (let ((_target76507979_
                                                 (values-ref _g11415_ 0))
                                                (_tl76527981_
                                                 (values-ref _g11415_ 1)))
                                            (if (gx#stx-null? _tl76527981_)
                                                (letrec ((_loop76537984_
                                                          (lambda (_hd76517987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body76577989_)
                    (if (gx#stx-pair? _hd76517987_)
                        (let ((_e76547992_ (gx#stx-e _hd76517987_)))
                          (let ((_lp-hd76557995_ (##car _e76547992_))
                                (_lp-tl76567997_ (##cdr _e76547992_)))
                            (_loop76537984_
                             _lp-tl76567997_
                             (cons _lp-hd76557995_ _body76577989_))))
                        (let ((_body76588000_ (reverse _body76577989_)))
                          (if (gx#stx-null? _tl76347936_)
                              ((lambda (_L8003_
                                        _L8004_
                                        _L8005_
                                        _L8006_
                                        _L8007_)
                                 (cons 'let*
                                       (cons (cons (cons _L8007_
                                                         (cons _L8006_ '()))
                                                   (cons (cons _L8005_
                                                               (cons _L8004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g80438046_
                                                                _g80448048_)
                                                         (cons _g80438046_
                                                               _g80448048_))
                                                       '()
                                                       _L8003_)))))
                               _body76588000_
                               _hd76487974_
                               _hd76457966_
                               _hd76307926_
                               _hd76277918_)
                              (_g75727886_ _g75757889_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop76537984_
                                                   _target76507979_
                                                   '()))
                                                (_g75727886_ _g75757889_)))))
                                      (_g75727886_ _g75757889_))
                                  (_g75727886_ _g75757889_))
                              (_g75727886_ _g75757889_))
                          (_g75727886_ _g75757889_))))
                  (_g75727886_ _g75757889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75727886_ _g75757889_))))
                                          (_g75727886_ _g75757889_))))
                                  (_g75727886_ _g75757889_))
                              (_g75727886_ _g75757889_))
                          (_g75727886_ _g75757889_))))
                  (_g75727886_ _g75757889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75727886_ _g75757889_))
                                              (_g75727886_ _g75757889_))
                                          (_g75727886_ _g75757889_))))
                                  (_g75727886_ _g75757889_))))
                          (_g75727886_ _g75757889_))))
                  (_g75727886_ _g75757889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75727886_ _g75757889_))
                                              (_g75727886_ _g75757889_))
                                          (_g75727886_ _g75757889_))))
                                  (_g75727886_ _g75757889_))))
                           (_g75708182_
                            (lambda (_g75758054_)
                              (if (gx#stx-pair? _g75758054_)
                                  (let ((_e75798056_ (gx#stx-e _g75758054_)))
                                    (let ((_hd75808059_ (##car _e75798056_))
                                          (_tl75818061_ (##cdr _e75798056_)))
                                      (if (gx#identifier? _hd75808059_)
                                          (if (gx#stx-eq? 'let _hd75808059_)
                                              (if (gx#stx-pair? _tl75818061_)
                                                  (let ((_e75828064_
                                                         (gx#stx-e
                                                          _tl75818061_)))
                                                    (let ((_hd75838067_
                                                           (##car _e75828064_))
                                                          (_tl75848069_
                                                           (##cdr _e75828064_)))
                                                      (if (gx#stx-pair?
                                                           _hd75838067_)
                                                          (let ((_e75858072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75838067_)))
                    (let ((_hd75868075_ (##car _e75858072_))
                          (_tl75878077_ (##cdr _e75858072_)))
                      (if (gx#stx-pair? _hd75868075_)
                          (let ((_e75888080_ (gx#stx-e _hd75868075_)))
                            (let ((_hd75898083_ (##car _e75888080_))
                                  (_tl75908085_ (##cdr _e75888080_)))
                              (if (gx#stx-pair? _tl75908085_)
                                  (let ((_e75918088_ (gx#stx-e _tl75908085_)))
                                    (let ((_hd75928091_ (##car _e75918088_))
                                          (_tl75938093_ (##cdr _e75918088_)))
                                      (if (gx#stx-null? _tl75938093_)
                                          (if (gx#stx-null? _tl75878077_)
                                              (if (gx#stx-pair? _tl75848069_)
                                                  (let ((_e75948096_
                                                         (gx#stx-e
                                                          _tl75848069_)))
                                                    (let ((_hd75958099_
                                                           (##car _e75948096_))
                                                          (_tl75968101_
                                                           (##cdr _e75948096_)))
                                                      (if (gx#stx-pair?
                                                           _hd75958099_)
                                                          (let ((_e75978104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75958099_)))
                    (let ((_hd75988107_ (##car _e75978104_))
                          (_tl75998109_ (##cdr _e75978104_)))
                      (if (gx#identifier? _hd75988107_)
                          (if (gx#stx-eq? 'let _hd75988107_)
                              (if (gx#stx-pair? _tl75998109_)
                                  (let ((_e76008112_ (gx#stx-e _tl75998109_)))
                                    (let ((_hd76018115_ (##car _e76008112_))
                                          (_tl76028117_ (##cdr _e76008112_)))
                                      (if (gx#stx-null? _hd76018115_)
                                          (if (gx#stx-pair/null? _tl76028117_)
                                              (if (fx>= (gx#stx-length
                                                         _tl76028117_)
                                                        '0)
                                                  (let ((_g11417_
                                                         (gx#syntax-split-splice
                                                          _tl76028117_
                                                          '0)))
                                                    (begin
                                                      (let ((_g11418_
                                                             (values-count
                                                              _g11417_)))
                                                        (if (not (fx= _g11418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g11418_)))
              (let ((_target76038120_ (values-ref _g11417_ 0))
                    (_tl76058122_ (values-ref _g11417_ 1)))
                (if (gx#stx-null? _tl76058122_)
                    (letrec ((_loop76068125_
                              (lambda (_hd76048128_ _body76108130_)
                                (if (gx#stx-pair? _hd76048128_)
                                    (let ((_e76078133_
                                           (gx#stx-e _hd76048128_)))
                                      (let ((_lp-hd76088136_
                                             (##car _e76078133_))
                                            (_lp-tl76098138_
                                             (##cdr _e76078133_)))
                                        (_loop76068125_
                                         _lp-tl76098138_
                                         (cons _lp-hd76088136_
                                               _body76108130_))))
                                    (let ((_body76118141_
                                           (reverse _body76108130_)))
                                      (if (gx#stx-null? _tl75968101_)
                                          ((lambda (_L8144_ _L8145_ _L8146_)
                                             (cons 'let
                                                   (cons (cons (cons _L8146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8145_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g81748177_ _g81758179_)
                             (cons _g81748177_ _g81758179_))
                           '()
                           _L8144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body76118141_
                                           _hd75928091_
                                           _hd75898083_)
                                          (_g75718051_ _g75758054_)))))))
                      (_loop76068125_ _target76038120_ '()))
                    (_g75718051_ _g75758054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75718051_ _g75758054_))
                                              (_g75718051_ _g75758054_))
                                          (_g75718051_ _g75758054_))))
                                  (_g75718051_ _g75758054_))
                              (_g75718051_ _g75758054_))
                          (_g75718051_ _g75758054_))))
                  (_g75718051_ _g75758054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75718051_ _g75758054_))
                                              (_g75718051_ _g75758054_))
                                          (_g75718051_ _g75758054_))))
                                  (_g75718051_ _g75758054_))))
                          (_g75718051_ _g75758054_))))
                  (_g75718051_ _g75758054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75718051_ _g75758054_))
                                              (_g75718051_ _g75758054_))
                                          (_g75718051_ _g75758054_))))
                                  (_g75718051_ _g75758054_)))))
                      (_g75708182_ _code7569_))))
                 (_generate-values7268_
                  (lambda (_hd7382_ _body7383_)
                    (let _lp7385_ ((_rest7387_ _hd7382_)
                                   (_bind7388_ '())
                                   (_check7389_ '())
                                   (_post7390_ '()))
                      (let* ((_g73937404_
                              (lambda (_g73947401_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g73947401_)))
                             (_g73927418_
                              (lambda (_g73947407_)
                                ((lambda ()
                                   (let* ((_body7411_
                                           (if _compiled-body?7264_
                                               _body7383_
                                               (gxc#compile-e _body7383_)))
                                          (_body7413_
                                           (_generate-values-post7269_
                                            _post7390_
                                            _body7411_))
                                          (_body7415_
                                           (_generate-values-check7270_
                                            _check7389_
                                            _body7413_)))
                                     (cons 'let
                                           (cons (reverse _bind7388_)
                                                 (cons _body7415_ '()))))))))
                             (_g73917566_
                              (lambda (_g73947421_)
                                (if (gx#stx-pair? _g73947421_)
                                    (let ((_e73977423_ (gx#stx-e _g73947421_)))
                                      (let ((_hd73987426_ (##car _e73977423_))
                                            (_tl73997428_ (##cdr _e73977423_)))
                                        ((lambda (_L7431_ _L7432_)
                                           (let* ((_g74477472_
                                                   (lambda (_g74487469_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g74487469_)))
                                                  (_g74467516_
                                                   (lambda (_g74487475_)
                                                     (if (gx#stx-pair?
                                                          _g74487475_)
                                                         (let ((_e74627477_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74487475_)))
                   (let ((_hd74637480_ (##car _e74627477_))
                         (_tl74647482_ (##cdr _e74627477_)))
                     (if (gx#stx-pair? _tl74647482_)
                         (let ((_e74657485_ (gx#stx-e _tl74647482_)))
                           (let ((_hd74667488_ (##car _e74657485_))
                                 (_tl74677490_ (##cdr _e74657485_)))
                             (if (gx#stx-null? _tl74677490_)
                                 ((lambda (_L7493_ _L7494_)
                                    (let* ((_vals7507_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7509_ (gxc#compile-e _L7493_))
                                           (_check-values7511_
                                            (gxc#generate-runtime-check-values
                                             _vals7507_
                                             _L7494_))
                                           (_refs7513_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7507_
                                             _L7494_)))
                                      (_lp7385_
                                       _L7431_
                                       (cons (cons _vals7507_
                                                   (cons _expr7509_ '()))
                                             _bind7388_)
                                       (cons _check-values7511_ _check7389_)
                                       (cons _refs7513_ _post7390_))))
                                  _hd74667488_
                                  _hd74637480_)
                                 (_g74477472_ _g74487475_))))
                         (_g74477472_ _g74487475_))))
                 (_g74477472_ _g74487475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74457563_
                                                   (lambda (_g74487519_)
                                                     (if (gx#stx-pair?
                                                          _g74487519_)
                                                         (let ((_e74517521_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74487519_)))
                   (let ((_hd74527524_ (##car _e74517521_))
                         (_tl74537526_ (##cdr _e74517521_)))
                     (if (gx#stx-pair? _hd74527524_)
                         (let ((_e74547529_ (gx#stx-e _hd74527524_)))
                           (let ((_hd74557532_ (##car _e74547529_))
                                 (_tl74567534_ (##cdr _e74547529_)))
                             (if (gx#stx-null? _tl74567534_)
                                 (if (gx#stx-pair? _tl74537526_)
                                     (let ((_e74577537_
                                            (gx#stx-e _tl74537526_)))
                                       (let ((_hd74587540_ (##car _e74577537_))
                                             (_tl74597542_
                                              (##cdr _e74577537_)))
                                         (if (gx#stx-null? _tl74597542_)
                                             ((lambda (_L7545_ _L7546_)
                                                (let ((_eid7560_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7546_))
                                                      (_expr7561_
                                                       (gxc#compile-e
                                                        _L7545_)))
                                                  (_lp7385_
                                                   _L7431_
                                                   (cons (cons _eid7560_
                                                               (cons _expr7561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7388_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7389_
                                                   _post7390_)))
                                              _hd74587540_
                                              _hd74557532_)
                                             (_g74467516_ _g74487519_))))
                                     (_g74467516_ _g74487519_))
                                 (_g74467516_ _g74487519_))))
                         (_g74467516_ _g74487519_))))
                 (_g74467516_ _g74487519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g74457563_ _L7432_)))
                                         _tl73997428_
                                         _hd73987426_)))
                                    (_g73927418_ _g73947421_)))))
                        (_g73917566_ _rest7387_)))))
                 (_generate-values-post7269_
                  (lambda (_post7341_ _body7342_)
                    (let _lp7344_ ((_rest7346_ _post7341_)
                                   (_body7347_ _body7342_))
                      (let* ((_rest73487356_ _rest7346_)
                             (_E73517360_
                              (lambda ()
                                (error '"No clause matching" _rest73487356_)))
                             (_else73507364_ (lambda () _body7347_))
                             (_K73527370_
                              (lambda (_rest7367_ _bind7368_)
                                (_lp7344_
                                 _rest7367_
                                 (cons 'let
                                       (cons _bind7368_
                                             (cons _body7347_ '())))))))
                        (if (##pair? _rest73487356_)
                            (let ((_hd73537373_ (##car _rest73487356_))
                                  (_tl73547375_ (##cdr _rest73487356_)))
                              (let* ((_bind7378_ _hd73537373_)
                                     (_rest7380_ _tl73547375_))
                                (_K73527370_ _rest7380_ _bind7378_)))
                            (_else73507364_))))))
                 (_generate-values-check7270_
                  (lambda (_check7338_ _body7339_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7339_ '())
                                  (reverse _check7338_))))))
          (let* ((_g72727289_
                  (lambda (_g72737286_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g72737286_)))
                 (_g72717335_
                  (lambda (_g72737292_)
                    (if (gx#stx-pair? _g72737292_)
                        (let ((_e72767294_ (gx#stx-e _g72737292_)))
                          (let ((_hd72777297_ (##car _e72767294_))
                                (_tl72787299_ (##cdr _e72767294_)))
                            (if (gx#stx-pair? _tl72787299_)
                                (let ((_e72797302_ (gx#stx-e _tl72787299_)))
                                  (let ((_hd72807305_ (##car _e72797302_))
                                        (_tl72817307_ (##cdr _e72797302_)))
                                    (if (gx#stx-pair? _tl72817307_)
                                        (let ((_e72827310_
                                               (gx#stx-e _tl72817307_)))
                                          (let ((_hd72837313_
                                                 (##car _e72827310_))
                                                (_tl72847315_
                                                 (##cdr _e72827310_)))
                                            (if (gx#stx-null? _tl72847315_)
                                                ((lambda (_L7318_ _L7319_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7319_)
                                                       (_generate-simple7266_
                                                        _L7319_
                                                        _L7318_)
                                                       (_generate-values7268_
                                                        _L7319_
                                                        _L7318_)))
                                                 _hd72837313_
                                                 _hd72807305_)
                                                (_g72727289_ _g72737292_))))
                                        (_g72727289_ _g72737292_))))
                                (_g72727289_ _g72737292_))))
                        (_g72727289_ _g72737292_)))))
            (_g72717335_ _stx7263_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8191_)
          (let ((_compiled-body?8193_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7261
             _stx8191_
             _compiled-body?8193_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g11420_
          (let ((_g11419_ (length _g11420_)))
            (cond ((fx= _g11419_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g11420_))
                  ((fx= _g11419_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7261
                          _g11420_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g11420_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7162_ _hd7163_)
      (let _lp7165_ ((_rest7167_ _hd7163_) (_k7168_ '0) (_r7169_ '()))
        (let* ((_g71747190_
                (lambda (_g71757187_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g71757187_)))
               (_g71737197_
                (lambda (_g71757193_) ((lambda () (reverse _r7169_)))))
               (_g71727213_
                (lambda (_g71757200_)
                  ((lambda (_L7202_)
                     (if (gx#identifier? _L7202_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7202_)
                                             (cons (cons 'values->list
                                                         (cons _vals7162_
                                                               (cons _k7168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7169_)
                         (_g71737197_ _g71757200_)))
                   _g71757200_)))
               (_g71717237_
                (lambda (_g71757216_)
                  (if (gx#stx-pair? _g71757216_)
                      (let ((_e71827218_ (gx#stx-e _g71757216_)))
                        (let ((_hd71837221_ (##car _e71827218_))
                              (_tl71847223_ (##cdr _e71827218_)))
                          ((lambda (_L7226_ _L7227_)
                             (_lp7165_
                              _L7226_
                              (fx+ _k7168_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7227_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7162_
                                                            (cons _k7168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7169_)))
                           _tl71847223_
                           _hd71837221_)))
                      (_g71727213_ _g71757216_))))
               (_g71707259_
                (lambda (_g71757240_)
                  (if (gx#stx-pair? _g71757240_)
                      (let ((_e71777242_ (gx#stx-e _g71757240_)))
                        (let ((_hd71787245_ (##car _e71777242_))
                              (_tl71797247_ (##cdr _e71777242_)))
                          (if (gx#stx-datum? _hd71787245_)
                              (if (equal? (gx#stx-e _hd71787245_) '#f)
                                  ((lambda (_L7250_)
                                     (_lp7165_
                                      _L7250_
                                      (fx+ _k7168_ '1)
                                      _r7169_))
                                   _tl71797247_)
                                  (_g71717237_ _g71757240_))
                              (_g71717237_ _g71757240_))))
                      (_g71717237_ _g71757240_)))))
          (_g71707259_ _rest7167_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6840
      (lambda (_stx6842_ _compiled-body?6843_)
        (letrec ((_generate-simple6845_
                  (lambda (_hd7149_ _body7150_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7149_
                     _body7150_
                     _compiled-body?6843_)))
                 (_generate-values6846_
                  (lambda (_hd6926_ _body6927_)
                    (let _lp6929_ ((_rest6931_ _hd6926_)
                                   (_bind6932_ '())
                                   (_check6933_ '())
                                   (_post6934_ '()))
                      (let* ((_g69376948_
                              (lambda (_g69386945_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g69386945_)))
                             (_g69366962_
                              (lambda (_g69386951_)
                                ((lambda ()
                                   (let* ((_body6955_
                                           (if _compiled-body?6843_
                                               _body6927_
                                               (gxc#compile-e _body6927_)))
                                          (_body6957_
                                           (_generate-values-post6848_
                                            _post6934_
                                            _body6955_))
                                          (_body6959_
                                           (_generate-values-check6847_
                                            _check6933_
                                            _body6957_)))
                                     (cons 'letrec
                                           (cons (reverse _bind6932_)
                                                 (cons _body6959_ '()))))))))
                             (_g69357146_
                              (lambda (_g69386965_)
                                (if (gx#stx-pair? _g69386965_)
                                    (let ((_e69416967_ (gx#stx-e _g69386965_)))
                                      (let ((_hd69426970_ (##car _e69416967_))
                                            (_tl69436972_ (##cdr _e69416967_)))
                                        ((lambda (_L6975_ _L6976_)
                                           (let* ((_g69917016_
                                                   (lambda (_g69927013_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g69927013_)))
                                                  (_g69907096_
                                                   (lambda (_g69927019_)
                                                     (if (gx#stx-pair?
                                                          _g69927019_)
                                                         (let ((_e70067021_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69927019_)))
                   (let ((_hd70077024_ (##car _e70067021_))
                         (_tl70087026_ (##cdr _e70067021_)))
                     (if (gx#stx-pair? _tl70087026_)
                         (let ((_e70097029_ (gx#stx-e _tl70087026_)))
                           (let ((_hd70107032_ (##car _e70097029_))
                                 (_tl70117034_ (##cdr _e70097029_)))
                             (if (gx#stx-null? _tl70117034_)
                                 ((lambda (_L7037_ _L7038_)
                                    (let* ((_vals7051_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7053_ (gxc#compile-e _L7037_))
                                           (_check-values7055_
                                            (gxc#generate-runtime-check-values
                                             _vals7051_
                                             _L7038_))
                                           (_refs7057_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7051_
                                             _L7038_)))
                                      (_lp6929_
                                       _L6975_
                                       (foldl1 cons
                                               (cons (cons _vals7051_
                                                           (cons _expr7053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6932_)
                                               (map (lambda (_e70597061_)
                                                      (let* ((_g70637072_
                                                              _e70597061_)
                                                             (_E70657076_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g70637072_)))
                     (_K70667081_
                      (lambda (_eid7079_)
                        (cons _eid7079_ (cons '#!void '())))))
                (if (##pair? _g70637072_)
                    (let ((_hd70677084_ (##car _g70637072_))
                          (_tl70687086_ (##cdr _g70637072_)))
                      (let ((_eid7089_ _hd70677084_))
                        (if (##pair? _tl70687086_)
                            (let ((_hd70697091_ (##car _tl70687086_))
                                  (_tl70707093_ (##cdr _tl70687086_)))
                              (if (##null? _tl70707093_)
                                  (_K70667081_ _eid7089_)
                                  (_E70657076_)))
                            (_E70657076_))))
                    (_E70657076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7057_))
                                       (cons _check-values7055_ _check6933_)
                                       (foldl1 cons _refs7057_ _post6934_))))
                                  _hd70107032_
                                  _hd70077024_)
                                 (_g69917016_ _g69927019_))))
                         (_g69917016_ _g69927019_))))
                 (_g69917016_ _g69927019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69897143_
                                                   (lambda (_g69927099_)
                                                     (if (gx#stx-pair?
                                                          _g69927099_)
                                                         (let ((_e69957101_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g69927099_)))
                   (let ((_hd69967104_ (##car _e69957101_))
                         (_tl69977106_ (##cdr _e69957101_)))
                     (if (gx#stx-pair? _hd69967104_)
                         (let ((_e69987109_ (gx#stx-e _hd69967104_)))
                           (let ((_hd69997112_ (##car _e69987109_))
                                 (_tl70007114_ (##cdr _e69987109_)))
                             (if (gx#stx-null? _tl70007114_)
                                 (if (gx#stx-pair? _tl69977106_)
                                     (let ((_e70017117_
                                            (gx#stx-e _tl69977106_)))
                                       (let ((_hd70027120_ (##car _e70017117_))
                                             (_tl70037122_
                                              (##cdr _e70017117_)))
                                         (if (gx#stx-null? _tl70037122_)
                                             ((lambda (_L7125_ _L7126_)
                                                (let ((_eid7140_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7126_))
                                                      (_expr7141_
                                                       (gxc#compile-e
                                                        _L7125_)))
                                                  (_lp6929_
                                                   _L6975_
                                                   (cons (cons _eid7140_
                                                               (cons _expr7141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind6932_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check6933_
                                                   _post6934_)))
                                              _hd70027120_
                                              _hd69997112_)
                                             (_g69907096_ _g69927099_))))
                                     (_g69907096_ _g69927099_))
                                 (_g69907096_ _g69927099_))))
                         (_g69907096_ _g69927099_))))
                 (_g69907096_ _g69927099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g69897143_ _L6976_)))
                                         _tl69436972_
                                         _hd69426970_)))
                                    (_g69366962_ _g69386965_)))))
                        (_g69357146_ _rest6931_)))))
                 (_generate-values-check6847_
                  (lambda (_check6923_ _body6924_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6924_ '())
                                  (reverse _check6923_)))))
                 (_generate-values-post6848_
                  (lambda (_post6916_ _body6917_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6917_ '())
                                  (map (lambda (_g69186920_)
                                         (cons 'set! _g69186920_))
                                       (reverse _post6916_)))))))
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
                                                       (_generate-simple6845_
                                                        _L6897_
                                                        _L6896_)
                                                       (_generate-values6846_
                                                        _L6897_
                                                        _L6896_)))
                                                 _hd68616891_
                                                 _hd68586883_)
                                                (_g68506867_ _g68516870_))))
                                        (_g68506867_ _g68516870_))))
                                (_g68506867_ _g68516870_))))
                        (_g68506867_ _g68516870_)))))
            (_g68496913_ _stx6842_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7155_)
          (let ((_compiled-body?7157_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6840
             _stx7155_
             _compiled-body?7157_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g11422_
          (let ((_g11421_ (length _g11422_)))
            (cond ((fx= _g11421_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g11422_))
                  ((fx= _g11421_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6840
                          _g11422_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g11422_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx6424_)
      (letrec ((_generate-values6426_
                (lambda (_hd6669_ _body6670_)
                  (let _lp6672_ ((_rest6674_ _hd6669_) (_bind6675_ '()))
                    (let* ((_rest66766684_ _rest6674_)
                           (_E66796688_
                            (lambda ()
                              (error '"No clause matching" _rest66766684_)))
                           (_else66786695_
                            (lambda ()
                              (let ((_bind6692_ (reverse _bind6675_))
                                    (_body6693_ (gxc#compile-e _body6670_)))
                                (cons 'letrec*
                                      (cons _bind6692_
                                            (cons _body6693_ '()))))))
                           (_K66806829_
                            (lambda (_rest6698_ _hd-bind6699_)
                              (let* ((_g67026727_
                                      (lambda (_g67036724_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g67036724_)))
                                     (_g67016779_
                                      (lambda (_g67036730_)
                                        (if (gx#stx-pair? _g67036730_)
                                            (let ((_e67176732_
                                                   (gx#stx-e _g67036730_)))
                                              (let ((_hd67186735_
                                                     (##car _e67176732_))
                                                    (_tl67196737_
                                                     (##cdr _e67176732_)))
                                                (if (gx#stx-pair? _tl67196737_)
                                                    (let ((_e67206740_
                                                           (gx#stx-e
                                                            _tl67196737_)))
                                                      (let ((_hd67216743_
                                                             (##car _e67206740_))
                                                            (_tl67226745_
                                                             (##cdr _e67206740_)))
                                                        (if (gx#stx-null?
                                                             _tl67226745_)
                                                            ((lambda (_L6748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6749_)
                       (let* ((_vals6768_ (gxc#generate-runtime-temporary__0))
                              (_tmp6770_ (gxc#generate-runtime-temporary__0))
                              (_expr6772_ (gxc#compile-e _L6748_))
                              (_check-values6774_
                               (gxc#generate-runtime-check-values
                                _tmp6770_
                                _L6749_))
                              (_refs6776_
                               (gxc#generate-runtime-let-values-bind
                                _vals6768_
                                _L6749_)))
                         (_lp6672_
                          _rest6698_
                          (foldl1 cons
                                  (cons (cons _vals6768_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp6770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr6772_ '()))
                              '())
                        (cons _check-values6774_ (cons _tmp6770_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind6675_)
                                  _refs6776_))))
                     _hd67216743_
                     _hd67186735_)
                    (_g67026727_ _g67036730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g67026727_
                                                     _g67036730_))))
                                            (_g67026727_ _g67036730_))))
                                     (_g67006826_
                                      (lambda (_g67036782_)
                                        (if (gx#stx-pair? _g67036782_)
                                            (let ((_e67066784_
                                                   (gx#stx-e _g67036782_)))
                                              (let ((_hd67076787_
                                                     (##car _e67066784_))
                                                    (_tl67086789_
                                                     (##cdr _e67066784_)))
                                                (if (gx#stx-pair? _hd67076787_)
                                                    (let ((_e67096792_
                                                           (gx#stx-e
                                                            _hd67076787_)))
                                                      (let ((_hd67106795_
                                                             (##car _e67096792_))
                                                            (_tl67116797_
                                                             (##cdr _e67096792_)))
                                                        (if (gx#stx-null?
                                                             _tl67116797_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67086789_)
                        (let ((_e67126800_ (gx#stx-e _tl67086789_)))
                          (let ((_hd67136803_ (##car _e67126800_))
                                (_tl67146805_ (##cdr _e67126800_)))
                            (if (gx#stx-null? _tl67146805_)
                                ((lambda (_L6808_ _L6809_)
                                   (let ((_eid6823_
                                          (gxc#generate-runtime-binding-id*
                                           _L6809_))
                                         (_expr6824_ (gxc#compile-e _L6808_)))
                                     (_lp6672_
                                      _rest6698_
                                      (cons (cons _eid6823_
                                                  (cons _expr6824_ '()))
                                            _bind6675_))))
                                 _hd67136803_
                                 _hd67106795_)
                                (_g67016779_ _g67036782_))))
                        (_g67016779_ _g67036782_))
                    (_g67016779_ _g67036782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g67016779_
                                                     _g67036782_))))
                                            (_g67016779_ _g67036782_)))))
                                (_g67006826_ _hd-bind6699_)))))
                      (if (##pair? _rest66766684_)
                          (let ((_hd66816832_ (##car _rest66766684_))
                                (_tl66826834_ (##cdr _rest66766684_)))
                            (let* ((_hd-bind6837_ _hd66816832_)
                                   (_rest6839_ _tl66826834_))
                              (_K66806829_ _rest6839_ _hd-bind6837_)))
                          (_else66786695_))))))
               (_generate-letrec?6427_
                (lambda (_hd6559_)
                  (let _lp6561_ ((_rest6563_ _hd6559_))
                    (let* ((_rest65646572_ _rest6563_)
                           (_E65676576_
                            (lambda ()
                              (error '"No clause matching" _rest65646572_)))
                           (_else65666580_ (lambda () '#t))
                           (_K65686657_
                            (lambda (_rest6583_ _hd-bind6584_)
                              (let* ((_g65866603_
                                      (lambda (_g65876600_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g65876600_)))
                                     (_g65856654_
                                      (lambda (_g65876606_)
                                        (if (gx#stx-pair? _g65876606_)
                                            (let ((_e65906608_
                                                   (gx#stx-e _g65876606_)))
                                              (let ((_hd65916611_
                                                     (##car _e65906608_))
                                                    (_tl65926613_
                                                     (##cdr _e65906608_)))
                                                (if (gx#stx-pair? _hd65916611_)
                                                    (let ((_e65936616_
                                                           (gx#stx-e
                                                            _hd65916611_)))
                                                      (let ((_hd65946619_
                                                             (##car _e65936616_))
                                                            (_tl65956621_
                                                             (##cdr _e65936616_)))
                                                        (if (gx#stx-null?
                                                             _tl65956621_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65926613_)
                        (let ((_e65966624_ (gx#stx-e _tl65926613_)))
                          (let ((_hd65976627_ (##car _e65966624_))
                                (_tl65986629_ (##cdr _e65966624_)))
                            (if (gx#stx-null? _tl65986629_)
                                ((lambda (_L6632_ _L6633_)
                                   (if (_is-lambda-expr?6428_ _L6632_)
                                       (_lp6561_ _rest6583_)
                                       '#f))
                                 _hd65976627_
                                 _hd65946619_)
                                (_g65866603_ _g65876606_))))
                        (_g65866603_ _g65876606_))
                    (_g65866603_ _g65876606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65866603_
                                                     _g65876606_))))
                                            (_g65866603_ _g65876606_)))))
                                (_g65856654_ _hd-bind6584_)))))
                      (if (##pair? _rest65646572_)
                          (let ((_hd65696660_ (##car _rest65646572_))
                                (_tl65706662_ (##cdr _rest65646572_)))
                            (let* ((_hd-bind6665_ _hd65696660_)
                                   (_rest6667_ _tl65706662_))
                              (_K65686657_ _rest6667_ _hd-bind6665_)))
                          (_else65666580_))))))
               (_is-lambda-expr?6428_
                (lambda (_expr6496_)
                  (let* ((_g64996513_
                          (lambda (_g65006510_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g65006510_)))
                         (_g64986520_ (lambda (_g65006516_) ((lambda () '#f))))
                         (_g64976556_
                          (lambda (_g65006523_)
                            (if (gx#stx-pair? _g65006523_)
                                (let ((_e65036525_ (gx#stx-e _g65006523_)))
                                  (let ((_hd65046528_ (##car _e65036525_))
                                        (_tl65056530_ (##cdr _e65036525_)))
                                    (if (gx#identifier? _hd65046528_)
                                        (if (gx#stx-eq? '%#lambda _hd65046528_)
                                            (if (gx#stx-pair? _tl65056530_)
                                                (let ((_e65066533_
                                                       (gx#stx-e
                                                        _tl65056530_)))
                                                  (let ((_hd65076536_
                                                         (##car _e65066533_))
                                                        (_tl65086538_
                                                         (##cdr _e65066533_)))
                                                    ((lambda (_L6541_ _L6542_)
                                                       '#t)
                                                     _tl65086538_
                                                     _hd65076536_)))
                                                (_g64986520_ _g65006523_))
                                            (_g64986520_ _g65006523_))
                                        (_g64986520_ _g65006523_))))
                                (_g64986520_ _g65006523_)))))
                    (_g64976556_ _expr6496_)))))
        (let* ((_g64306447_
                (lambda (_g64316444_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64316444_)))
               (_g64296493_
                (lambda (_g64316450_)
                  (if (gx#stx-pair? _g64316450_)
                      (let ((_e64346452_ (gx#stx-e _g64316450_)))
                        (let ((_hd64356455_ (##car _e64346452_))
                              (_tl64366457_ (##cdr _e64346452_)))
                          (if (gx#stx-pair? _tl64366457_)
                              (let ((_e64376460_ (gx#stx-e _tl64366457_)))
                                (let ((_hd64386463_ (##car _e64376460_))
                                      (_tl64396465_ (##cdr _e64376460_)))
                                  (if (gx#stx-pair? _tl64396465_)
                                      (let ((_e64406468_
                                             (gx#stx-e _tl64396465_)))
                                        (let ((_hd64416471_
                                               (##car _e64406468_))
                                              (_tl64426473_
                                               (##cdr _e64406468_)))
                                          (if (gx#stx-null? _tl64426473_)
                                              ((lambda (_L6476_ _L6477_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L6477_)
                                                     (if (_generate-letrec?6427_
                                                          _L6477_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L6477_
                                                          _L6476_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L6477_
                                                          _L6476_
                                                          '#f))
                                                     (_generate-values6426_
                                                      _L6477_
                                                      _L6476_)))
                                               _hd64416471_
                                               _hd64386463_)
                                              (_g64306447_ _g64316450_))))
                                      (_g64306447_ _g64316450_))))
                              (_g64306447_ _g64316450_))))
                      (_g64306447_ _g64316450_)))))
          (_g64296493_ _stx6424_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6317_)
      (let _lp6319_ ((_rest6321_ _hd6317_))
        (let* ((_g63256346_
                (lambda (_g63266343_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63266343_)))
               (_g63246353_ (lambda (_g63266349_) ((lambda () '#f))))
               (_g63236360_
                (lambda (_g63266356_)
                  (if (gx#stx-null? _g63266356_)
                      ((lambda () '#t))
                      (_g63246353_ _g63266356_))))
               (_g63226421_
                (lambda (_g63266363_)
                  (if (gx#stx-pair? _g63266363_)
                      (let ((_e63306365_ (gx#stx-e _g63266363_)))
                        (let ((_hd63316368_ (##car _e63306365_))
                              (_tl63326370_ (##cdr _e63306365_)))
                          (if (gx#stx-pair? _hd63316368_)
                              (let ((_e63336373_ (gx#stx-e _hd63316368_)))
                                (let ((_hd63346376_ (##car _e63336373_))
                                      (_tl63356378_ (##cdr _e63336373_)))
                                  (if (gx#stx-pair? _hd63346376_)
                                      (let ((_e63366381_
                                             (gx#stx-e _hd63346376_)))
                                        (let ((_hd63376384_
                                               (##car _e63366381_))
                                              (_tl63386386_
                                               (##cdr _e63366381_)))
                                          (if (gx#stx-null? _tl63386386_)
                                              (if (gx#stx-pair? _tl63356378_)
                                                  (let ((_e63396389_
                                                         (gx#stx-e
                                                          _tl63356378_)))
                                                    (let ((_hd63406392_
                                                           (##car _e63396389_))
                                                          (_tl63416394_
                                                           (##cdr _e63396389_)))
                                                      (if (gx#stx-null?
                                                           _tl63416394_)
                                                          ((lambda (_L6397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6398_
                            _L6399_)
                     (_lp6319_ _L6397_))
                   _tl63326370_
                   _hd63406392_
                   _hd63376384_)
                  (_g63236360_ _g63266363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63236360_ _g63266363_))
                                              (_g63236360_ _g63266363_))))
                                      (_g63236360_ _g63266363_))))
                              (_g63236360_ _g63266363_))))
                      (_g63236360_ _g63266363_)))))
          (_g63226421_ _rest6321_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6241_ _hd6242_ _body6243_ _compiled-body?6244_)
      (letrec ((_generate16246_
                (lambda (_bind6248_)
                  (let* ((_g62506267_
                          (lambda (_g62516264_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g62516264_)))
                         (_g62496314_
                          (lambda (_g62516270_)
                            (if (gx#stx-pair? _g62516270_)
                                (let ((_e62546272_ (gx#stx-e _g62516270_)))
                                  (let ((_hd62556275_ (##car _e62546272_))
                                        (_tl62566277_ (##cdr _e62546272_)))
                                    (if (gx#stx-pair? _hd62556275_)
                                        (let ((_e62576280_
                                               (gx#stx-e _hd62556275_)))
                                          (let ((_hd62586283_
                                                 (##car _e62576280_))
                                                (_tl62596285_
                                                 (##cdr _e62576280_)))
                                            (if (gx#stx-null? _tl62596285_)
                                                (if (gx#stx-pair? _tl62566277_)
                                                    (let ((_e62606288_
                                                           (gx#stx-e
                                                            _tl62566277_)))
                                                      (let ((_hd62616291_
                                                             (##car _e62606288_))
                                                            (_tl62626293_
                                                             (##cdr _e62606288_)))
                                                        (if (gx#stx-null?
                                                             _tl62626293_)
                                                            ((lambda (_L6296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6297_)
                       (cons (gxc#generate-runtime-binding-id* _L6297_)
                             (cons (gxc#compile-e _L6296_) '())))
                     _hd62616291_
                     _hd62586283_)
                    (_g62506267_ _g62516270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62506267_ _g62516270_))
                                                (_g62506267_ _g62516270_))))
                                        (_g62506267_ _g62516270_))))
                                (_g62506267_ _g62516270_)))))
                    (_g62496314_ _bind6248_)))))
        (cons _form6241_
              (cons (map _generate16246_ _hd6242_)
                    (cons (if _compiled-body?6244_
                              _body6243_
                              (gxc#compile-e _body6243_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6149_)
      (letrec ((_generate16151_
                (lambda (_datum6203_)
                  (if (let ((_$e6205_ (null? _datum6203_)))
                        (if _$e6205_
                            _$e6205_
                            (let ((_$e6208_ (interned-symbol? _datum6203_)))
                              (if _$e6208_
                                  _$e6208_
                                  (let ((_$e6211_
                                         (gx#self-quoting? _datum6203_)))
                                    (if _$e6211_
                                        _$e6211_
                                        (eof-object? _datum6203_)))))))
                      _datum6203_
                      (if (uninterned-symbol? _datum6203_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10270
                           _datum6203_
                           '#t)
                          (if (pair? _datum6203_)
                              (cons (_generate16151_ (car _datum6203_))
                                    (_generate16151_ (cdr _datum6203_)))
                              (if (box? _datum6203_)
                                  (box (_generate16151_ (unbox _datum6203_)))
                                  (if (vector? _datum6203_)
                                      (vector-map _generate16151_ _datum6203_)
                                      (if (let ((_$e6214_
                                                 (s8vector? _datum6203_)))
                                            (if _$e6214_
                                                _$e6214_
                                                (let ((_$e6217_
                                                       (u8vector?
                                                        _datum6203_)))
                                                  (if _$e6217_
                                                      _$e6217_
                                                      (let ((_$e6220_
                                                             (s16vector?
                                                              _datum6203_)))
                                                        (if _$e6220_
                                                            _$e6220_
                                                            (let ((_$e6223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6203_)))
                      (if _$e6223_
                          _$e6223_
                          (let ((_$e6226_ (s32vector? _datum6203_)))
                            (if _$e6226_
                                _$e6226_
                                (let ((_$e6229_ (u32vector? _datum6203_)))
                                  (if _$e6229_
                                      _$e6229_
                                      (let ((_$e6232_
                                             (s64vector? _datum6203_)))
                                        (if _$e6232_
                                            _$e6232_
                                            (let ((_$e6235_
                                                   (u64vector? _datum6203_)))
                                              (if _$e6235_
                                                  _$e6235_
                                                  (let ((_$e6238_
                                                         (f32vector?
                                                          _datum6203_)))
                                                    (if _$e6238_
                                                        _$e6238_
                                                        (f64vector?
                                                         _datum6203_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6203_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6149_))))))))))
        (let* ((_g61536166_
                (lambda (_g61546163_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61546163_)))
               (_g61526200_
                (lambda (_g61546169_)
                  (if (gx#stx-pair? _g61546169_)
                      (let ((_e61566171_ (gx#stx-e _g61546169_)))
                        (let ((_hd61576174_ (##car _e61566171_))
                              (_tl61586176_ (##cdr _e61566171_)))
                          (if (gx#stx-pair? _tl61586176_)
                              (let ((_e61596179_ (gx#stx-e _tl61586176_)))
                                (let ((_hd61606182_ (##car _e61596179_))
                                      (_tl61616184_ (##cdr _e61596179_)))
                                  (if (gx#stx-null? _tl61616184_)
                                      ((lambda (_L6187_)
                                         (cons 'quote
                                               (cons (_generate16151_
                                                      (gx#stx-e _L6187_))
                                                     '())))
                                       _hd61606182_)
                                      (_g61536166_ _g61546169_))))
                              (_g61536166_ _g61546169_))))
                      (_g61536166_ _g61546169_)))))
          (_g61526200_ _stx6149_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5842_)
      (let* ((_g58445858_
              (lambda (_g58455855_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58455855_)))
             (_g58436146_
              (lambda (_g58455861_)
                (if (gx#stx-pair? _g58455861_)
                    (let ((_e58485863_ (gx#stx-e _g58455861_)))
                      (let ((_hd58495866_ (##car _e58485863_))
                            (_tl58505868_ (##cdr _e58485863_)))
                        (if (gx#stx-pair? _tl58505868_)
                            (let ((_e58515871_ (gx#stx-e _tl58505868_)))
                              (let ((_hd58525874_ (##car _e58515871_))
                                    (_tl58535876_ (##cdr _e58515871_)))
                                ((lambda (_L5879_ _L5880_)
                                   (let ((_rator5893_ (gxc#compile-e _L5880_))
                                         (_rands5894_
                                          (map gxc#compile-e _L5879_)))
                                     (let* ((_g58975949_
                                             (lambda (_g58985946_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g58985946_)))
                                            (_g58965956_
                                             (lambda (_g58985952_)
                                               ((lambda ()
                                                  (cons _rator5893_
                                                        _rands5894_)))))
                                            (_g58956143_
                                             (lambda (_g58985959_)
                                               (if (gx#stx-pair? _g58985959_)
                                                   (let ((_e59035961_
                                                          (gx#stx-e
                                                           _g58985959_)))
                                                     (let ((_hd59045964_
                                                            (##car _e59035961_))
                                                           (_tl59055966_
                                                            (##cdr _e59035961_)))
                                                       (if (gx#identifier?
                                                            _hd59045964_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd59045964_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl59055966_)
                           (let ((_e59065969_ (gx#stx-e _tl59055966_)))
                             (let ((_hd59075972_ (##car _e59065969_))
                                   (_tl59085974_ (##cdr _e59065969_)))
                               (if (gx#stx-pair? _hd59075972_)
                                   (let ((_e59095977_ (gx#stx-e _hd59075972_)))
                                     (let ((_hd59105980_ (##car _e59095977_))
                                           (_tl59115982_ (##cdr _e59095977_)))
                                       (if (gx#stx-pair? _hd59105980_)
                                           (let ((_e59125985_
                                                  (gx#stx-e _hd59105980_)))
                                             (let ((_hd59135988_
                                                    (##car _e59125985_))
                                                   (_tl59145990_
                                                    (##cdr _e59125985_)))
                                               (if (gx#stx-pair? _tl59145990_)
                                                   (let ((_e59155993_
                                                          (gx#stx-e
                                                           _tl59145990_)))
                                                     (let ((_hd59165996_
                                                            (##car _e59155993_))
                                                           (_tl59175998_
                                                            (##cdr _e59155993_)))
                                                       (if (gx#stx-pair?
                                                            _hd59165996_)
                                                           (let ((_e59186001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd59165996_)))
                     (let ((_hd59196004_ (##car _e59186001_))
                           (_tl59206006_ (##cdr _e59186001_)))
                       (if (gx#identifier? _hd59196004_)
                           (if (gx#stx-eq? 'lambda _hd59196004_)
                               (if (gx#stx-pair? _tl59206006_)
                                   (let ((_e59216009_ (gx#stx-e _tl59206006_)))
                                     (let ((_hd59226012_ (##car _e59216009_))
                                           (_tl59236014_ (##cdr _e59216009_)))
                                       (if (gx#stx-pair/null? _hd59226012_)
                                           (if (fx>= (gx#stx-length
                                                      _hd59226012_)
                                                     '0)
                                               (let ((_g11423_
                                                      (gx#syntax-split-splice
                                                       _hd59226012_
                                                       '0)))
                                                 (begin
                                                   (let ((_g11424_
                                                          (values-count
                                                           _g11423_)))
                                                     (if (not (fx= _g11424_ 2))
                                                         (error "Context expects 2 values"
                                                                _g11424_)))
                                                   (let ((_target59246017_
                                                          (values-ref
                                                           _g11423_
                                                           0))
                                                         (_tl59266019_
                                                          (values-ref
                                                           _g11423_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl59266019_)
                                                         (letrec ((_loop59276022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd59256025_ _arg59316027_)
                             (if (gx#stx-pair? _hd59256025_)
                                 (let ((_e59286030_ (gx#stx-e _hd59256025_)))
                                   (let ((_lp-hd59296033_ (##car _e59286030_))
                                         (_lp-tl59306035_ (##cdr _e59286030_)))
                                     (_loop59276022_
                                      _lp-tl59306035_
                                      (cons _lp-hd59296033_ _arg59316027_))))
                                 (let ((_arg59326038_ (reverse _arg59316027_)))
                                   (if (gx#stx-pair/null? _tl59236014_)
                                       (if (fx>= (gx#stx-length _tl59236014_)
                                                 '0)
                                           (let ((_g11425_
                                                  (gx#syntax-split-splice
                                                   _tl59236014_
                                                   '0)))
                                             (begin
                                               (let ((_g11426_
                                                      (values-count _g11425_)))
                                                 (if (not (fx= _g11426_ 2))
                                                     (error "Context expects 2 values"
                                                            _g11426_)))
                                               (let ((_target59336041_
                                                      (values-ref _g11425_ 0))
                                                     (_tl59356043_
                                                      (values-ref _g11425_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl59356043_)
                                                     (letrec ((_loop59366046_
                                                               (lambda (_hd59346049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body59406051_)
                         (if (gx#stx-pair? _hd59346049_)
                             (let ((_e59376054_ (gx#stx-e _hd59346049_)))
                               (let ((_lp-hd59386057_ (##car _e59376054_))
                                     (_lp-tl59396059_ (##cdr _e59376054_)))
                                 (_loop59366046_
                                  _lp-tl59396059_
                                  (cons _lp-hd59386057_ _body59406051_))))
                             (let ((_body59416062_ (reverse _body59406051_)))
                               (if (gx#stx-null? _tl59175998_)
                                   (if (gx#stx-null? _tl59115982_)
                                       (if (gx#stx-pair? _tl59085974_)
                                           (let ((_e59426065_
                                                  (gx#stx-e _tl59085974_)))
                                             (let ((_hd59436068_
                                                    (##car _e59426065_))
                                                   (_tl59446070_
                                                    (##cdr _e59426065_)))
                                               (if (gx#stx-null? _tl59446070_)
                                                   ((lambda (_L6073_
                                                             _L6074_
                                                             _L6075_
                                                             _L6076_)
                                                      (if (eq? _L6076_ _L6073_)
                                                          (if (fx= (length _rands5894_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g61126115_ _g61136117_)
                                               (cons _g61126115_ _g61136117_))
                                             '()
                                             _L6075_))))
                      (let* ((_id6120_ _L6076_)
                             (_args6129_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g61216124_ _g61226126_)
                                          (cons _g61216124_ _g61226126_))
                                        '()
                                        _L6075_)))
                             (_body6138_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g61306133_ _g61316135_)
                                          (cons _g61306133_ _g61316135_))
                                        '()
                                        _L6074_)))
                             (_init6140_ (map list _args6129_ _rands5894_)))
                        (cons 'let
                              (cons _id6120_ (cons _init6140_ _body6138_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx5842_))
                  (_g58965956_ _g58985959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd59436068_
                                                    _body59416062_
                                                    _arg59326038_
                                                    _hd59135988_)
                                                   (_g58965956_ _g58985959_))))
                                           (_g58965956_ _g58985959_))
                                       (_g58965956_ _g58985959_))
                                   (_g58965956_ _g58985959_)))))))
               (_loop59366046_ _target59336041_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58965956_
                                                      _g58985959_)))))
                                           (_g58965956_ _g58985959_))
                                       (_g58965956_ _g58985959_)))))))
                   (_loop59276022_ _target59246017_ '()))
                 (_g58965956_ _g58985959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g58965956_ _g58985959_))
                                           (_g58965956_ _g58985959_))))
                                   (_g58965956_ _g58985959_))
                               (_g58965956_ _g58985959_))
                           (_g58965956_ _g58985959_))))
                   (_g58965956_ _g58985959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g58965956_ _g58985959_))))
                                           (_g58965956_ _g58985959_))))
                                   (_g58965956_ _g58985959_))))
                           (_g58965956_ _g58985959_))
                       (_g58965956_ _g58985959_))
                   (_g58965956_ _g58985959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g58965956_
                                                    _g58985959_)))))
                                       (_g58956143_ _rator5893_))))
                                 _tl58535876_
                                 _hd58525874_)))
                            (_g58445858_ _g58455861_))))
                    (_g58445858_ _g58455861_)))))
        (_g58436146_ _stx5842_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5804_)
      (let* ((_g58065816_
              (lambda (_g58075813_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58075813_)))
             (_g58055839_
              (lambda (_g58075819_)
                (if (gx#stx-pair? _g58075819_)
                    (let ((_e58095821_ (gx#stx-e _g58075819_)))
                      (let ((_hd58105824_ (##car _e58095821_))
                            (_tl58115826_ (##cdr _e58095821_)))
                        ((lambda (_L5829_)
                           (cons 'if (map gxc#compile-e _L5829_)))
                         _tl58115826_)))
                    (_g58065816_ _g58075819_)))))
        (_g58055839_ _stx5804_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5753_)
      (let* ((_g57555768_
              (lambda (_g57565765_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57565765_)))
             (_g57545801_
              (lambda (_g57565771_)
                (if (gx#stx-pair? _g57565771_)
                    (let ((_e57585773_ (gx#stx-e _g57565771_)))
                      (let ((_hd57595776_ (##car _e57585773_))
                            (_tl57605778_ (##cdr _e57585773_)))
                        (if (gx#stx-pair? _tl57605778_)
                            (let ((_e57615781_ (gx#stx-e _tl57605778_)))
                              (let ((_hd57625784_ (##car _e57615781_))
                                    (_tl57635786_ (##cdr _e57615781_)))
                                (if (gx#stx-null? _tl57635786_)
                                    ((lambda (_L5789_)
                                       (gxc#generate-runtime-binding-id
                                        _L5789_))
                                     _hd57625784_)
                                    (_g57555768_ _g57565771_))))
                            (_g57555768_ _g57565771_))))
                    (_g57555768_ _g57565771_)))))
        (_g57545801_ _stx5753_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5686_)
      (let* ((_g56885705_
              (lambda (_g56895702_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56895702_)))
             (_g56875750_
              (lambda (_g56895708_)
                (if (gx#stx-pair? _g56895708_)
                    (let ((_e56925710_ (gx#stx-e _g56895708_)))
                      (let ((_hd56935713_ (##car _e56925710_))
                            (_tl56945715_ (##cdr _e56925710_)))
                        (if (gx#stx-pair? _tl56945715_)
                            (let ((_e56955718_ (gx#stx-e _tl56945715_)))
                              (let ((_hd56965721_ (##car _e56955718_))
                                    (_tl56975723_ (##cdr _e56955718_)))
                                (if (gx#stx-pair? _tl56975723_)
                                    (let ((_e56985726_
                                           (gx#stx-e _tl56975723_)))
                                      (let ((_hd56995729_ (##car _e56985726_))
                                            (_tl57005731_ (##cdr _e56985726_)))
                                        (if (gx#stx-null? _tl57005731_)
                                            ((lambda (_L5734_ _L5735_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L5735_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5734_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56995729_
                                             _hd56965721_)
                                            (_g56885705_ _g56895708_))))
                                    (_g56885705_ _g56895708_))))
                            (_g56885705_ _g56895708_))))
                    (_g56885705_ _g56895708_)))))
        (_g56875750_ _stx5686_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5619_)
      (let* ((_g56215638_
              (lambda (_g56225635_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56225635_)))
             (_g56205683_
              (lambda (_g56225641_)
                (if (gx#stx-pair? _g56225641_)
                    (let ((_e56255643_ (gx#stx-e _g56225641_)))
                      (let ((_hd56265646_ (##car _e56255643_))
                            (_tl56275648_ (##cdr _e56255643_)))
                        (if (gx#stx-pair? _tl56275648_)
                            (let ((_e56285651_ (gx#stx-e _tl56275648_)))
                              (let ((_hd56295654_ (##car _e56285651_))
                                    (_tl56305656_ (##cdr _e56285651_)))
                                (if (gx#stx-pair? _tl56305656_)
                                    (let ((_e56315659_
                                           (gx#stx-e _tl56305656_)))
                                      (let ((_hd56325662_ (##car _e56315659_))
                                            (_tl56335664_ (##cdr _e56315659_)))
                                        (if (gx#stx-null? _tl56335664_)
                                            ((lambda (_L5667_ _L5668_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5667_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5668_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd56325662_
                                             _hd56295654_)
                                            (_g56215638_ _g56225641_))))
                                    (_g56215638_ _g56225641_))))
                            (_g56215638_ _g56225641_))))
                    (_g56215638_ _g56225641_)))))
        (_g56205683_ _stx5619_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5552_)
      (let* ((_g55545571_
              (lambda (_g55555568_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55555568_)))
             (_g55535616_
              (lambda (_g55555574_)
                (if (gx#stx-pair? _g55555574_)
                    (let ((_e55585576_ (gx#stx-e _g55555574_)))
                      (let ((_hd55595579_ (##car _e55585576_))
                            (_tl55605581_ (##cdr _e55585576_)))
                        (if (gx#stx-pair? _tl55605581_)
                            (let ((_e55615584_ (gx#stx-e _tl55605581_)))
                              (let ((_hd55625587_ (##car _e55615584_))
                                    (_tl55635589_ (##cdr _e55615584_)))
                                (if (gx#stx-pair? _tl55635589_)
                                    (let ((_e55645592_
                                           (gx#stx-e _tl55635589_)))
                                      (let ((_hd55655595_ (##car _e55645592_))
                                            (_tl55665597_ (##cdr _e55645592_)))
                                        (if (gx#stx-null? _tl55665597_)
                                            ((lambda (_L5600_ _L5601_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5600_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5601_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd55655595_
                                             _hd55625587_)
                                            (_g55545571_ _g55555574_))))
                                    (_g55545571_ _g55555574_))))
                            (_g55545571_ _g55555574_))))
                    (_g55545571_ _g55555574_)))))
        (_g55535616_ _stx5552_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5469_)
      (let* ((_g54715492_
              (lambda (_g54725489_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54725489_)))
             (_g54705549_
              (lambda (_g54725495_)
                (if (gx#stx-pair? _g54725495_)
                    (let ((_e54765497_ (gx#stx-e _g54725495_)))
                      (let ((_hd54775500_ (##car _e54765497_))
                            (_tl54785502_ (##cdr _e54765497_)))
                        (if (gx#stx-pair? _tl54785502_)
                            (let ((_e54795505_ (gx#stx-e _tl54785502_)))
                              (let ((_hd54805508_ (##car _e54795505_))
                                    (_tl54815510_ (##cdr _e54795505_)))
                                (if (gx#stx-pair? _tl54815510_)
                                    (let ((_e54825513_
                                           (gx#stx-e _tl54815510_)))
                                      (let ((_hd54835516_ (##car _e54825513_))
                                            (_tl54845518_ (##cdr _e54825513_)))
                                        (if (gx#stx-pair? _tl54845518_)
                                            (let ((_e54855521_
                                                   (gx#stx-e _tl54845518_)))
                                              (let ((_hd54865524_
                                                     (##car _e54855521_))
                                                    (_tl54875526_
                                                     (##cdr _e54855521_)))
                                                (if (gx#stx-null? _tl54875526_)
                                                    ((lambda (_L5529_
                                                              _L5530_
                                                              _L5531_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5529_)
                           (cons (gxc#compile-e _L5530_)
                                 (cons (gxc#compile-e _L5531_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd54865524_
                                                     _hd54835516_
                                                     _hd54805508_)
                                                    (_g54715492_
                                                     _g54725495_))))
                                            (_g54715492_ _g54725495_))))
                                    (_g54715492_ _g54725495_))))
                            (_g54715492_ _g54725495_))))
                    (_g54715492_ _g54725495_)))))
        (_g54705549_ _stx5469_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5370_)
      (let* ((_g53725397_
              (lambda (_g53735394_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53735394_)))
             (_g53715466_
              (lambda (_g53735400_)
                (if (gx#stx-pair? _g53735400_)
                    (let ((_e53785402_ (gx#stx-e _g53735400_)))
                      (let ((_hd53795405_ (##car _e53785402_))
                            (_tl53805407_ (##cdr _e53785402_)))
                        (if (gx#stx-pair? _tl53805407_)
                            (let ((_e53815410_ (gx#stx-e _tl53805407_)))
                              (let ((_hd53825413_ (##car _e53815410_))
                                    (_tl53835415_ (##cdr _e53815410_)))
                                (if (gx#stx-pair? _tl53835415_)
                                    (let ((_e53845418_
                                           (gx#stx-e _tl53835415_)))
                                      (let ((_hd53855421_ (##car _e53845418_))
                                            (_tl53865423_ (##cdr _e53845418_)))
                                        (if (gx#stx-pair? _tl53865423_)
                                            (let ((_e53875426_
                                                   (gx#stx-e _tl53865423_)))
                                              (let ((_hd53885429_
                                                     (##car _e53875426_))
                                                    (_tl53895431_
                                                     (##cdr _e53875426_)))
                                                (if (gx#stx-pair? _tl53895431_)
                                                    (let ((_e53905434_
                                                           (gx#stx-e
                                                            _tl53895431_)))
                                                      (let ((_hd53915437_
                                                             (##car _e53905434_))
                                                            (_tl53925439_
                                                             (##cdr _e53905434_)))
                                                        (if (gx#stx-null?
                                                             _tl53925439_)
                                                            ((lambda (_L5442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5443_
                              _L5444_
                              _L5445_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L5443_)
                                   (cons (gxc#compile-e _L5442_)
                                         (cons (gxc#compile-e _L5444_)
                                               (cons (gxc#compile-e _L5445_)
                                                     (cons ''#f '())))))))
                     _hd53915437_
                     _hd53885429_
                     _hd53855421_
                     _hd53825413_)
                    (_g53725397_ _g53735400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53725397_
                                                     _g53735400_))))
                                            (_g53725397_ _g53735400_))))
                                    (_g53725397_ _g53735400_))))
                            (_g53725397_ _g53735400_))))
                    (_g53725397_ _g53735400_)))))
        (_g53715466_ _stx5370_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5287_)
      (let* ((_g52895310_
              (lambda (_g52905307_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52905307_)))
             (_g52885367_
              (lambda (_g52905313_)
                (if (gx#stx-pair? _g52905313_)
                    (let ((_e52945315_ (gx#stx-e _g52905313_)))
                      (let ((_hd52955318_ (##car _e52945315_))
                            (_tl52965320_ (##cdr _e52945315_)))
                        (if (gx#stx-pair? _tl52965320_)
                            (let ((_e52975323_ (gx#stx-e _tl52965320_)))
                              (let ((_hd52985326_ (##car _e52975323_))
                                    (_tl52995328_ (##cdr _e52975323_)))
                                (if (gx#stx-pair? _tl52995328_)
                                    (let ((_e53005331_
                                           (gx#stx-e _tl52995328_)))
                                      (let ((_hd53015334_ (##car _e53005331_))
                                            (_tl53025336_ (##cdr _e53005331_)))
                                        (if (gx#stx-pair? _tl53025336_)
                                            (let ((_e53035339_
                                                   (gx#stx-e _tl53025336_)))
                                              (let ((_hd53045342_
                                                     (##car _e53035339_))
                                                    (_tl53055344_
                                                     (##cdr _e53035339_)))
                                                (if (gx#stx-null? _tl53055344_)
                                                    ((lambda (_L5347_
                                                              _L5348_
                                                              _L5349_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5347_)
                           (cons (gxc#compile-e _L5348_)
                                 (cons (gxc#compile-e _L5349_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd53045342_
                                                     _hd53015334_
                                                     _hd52985326_)
                                                    (_g52895310_
                                                     _g52905313_))))
                                            (_g52895310_ _g52905313_))))
                                    (_g52895310_ _g52905313_))))
                            (_g52895310_ _g52905313_))))
                    (_g52895310_ _g52905313_)))))
        (_g52885367_ _stx5287_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5188_)
      (let* ((_g51905215_
              (lambda (_g51915212_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51915212_)))
             (_g51895284_
              (lambda (_g51915218_)
                (if (gx#stx-pair? _g51915218_)
                    (let ((_e51965220_ (gx#stx-e _g51915218_)))
                      (let ((_hd51975223_ (##car _e51965220_))
                            (_tl51985225_ (##cdr _e51965220_)))
                        (if (gx#stx-pair? _tl51985225_)
                            (let ((_e51995228_ (gx#stx-e _tl51985225_)))
                              (let ((_hd52005231_ (##car _e51995228_))
                                    (_tl52015233_ (##cdr _e51995228_)))
                                (if (gx#stx-pair? _tl52015233_)
                                    (let ((_e52025236_
                                           (gx#stx-e _tl52015233_)))
                                      (let ((_hd52035239_ (##car _e52025236_))
                                            (_tl52045241_ (##cdr _e52025236_)))
                                        (if (gx#stx-pair? _tl52045241_)
                                            (let ((_e52055244_
                                                   (gx#stx-e _tl52045241_)))
                                              (let ((_hd52065247_
                                                     (##car _e52055244_))
                                                    (_tl52075249_
                                                     (##cdr _e52055244_)))
                                                (if (gx#stx-pair? _tl52075249_)
                                                    (let ((_e52085252_
                                                           (gx#stx-e
                                                            _tl52075249_)))
                                                      (let ((_hd52095255_
                                                             (##car _e52085252_))
                                                            (_tl52105257_
                                                             (##cdr _e52085252_)))
                                                        (if (gx#stx-null?
                                                             _tl52105257_)
                                                            ((lambda (_L5260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5261_
                              _L5262_
                              _L5263_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5261_)
                                   (cons (gxc#compile-e _L5260_)
                                         (cons (gxc#compile-e _L5262_)
                                               (cons (gxc#compile-e _L5263_)
                                                     (cons ''#f '())))))))
                     _hd52095255_
                     _hd52065247_
                     _hd52035239_
                     _hd52005231_)
                    (_g51905215_ _g51915218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g51905215_
                                                     _g51915218_))))
                                            (_g51905215_ _g51915218_))))
                                    (_g51905215_ _g51915218_))))
                            (_g51905215_ _g51915218_))))
                    (_g51905215_ _g51915218_)))))
        (_g51895284_ _stx5188_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5105_)
      (let* ((_g51075128_
              (lambda (_g51085125_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51085125_)))
             (_g51065185_
              (lambda (_g51085131_)
                (if (gx#stx-pair? _g51085131_)
                    (let ((_e51125133_ (gx#stx-e _g51085131_)))
                      (let ((_hd51135136_ (##car _e51125133_))
                            (_tl51145138_ (##cdr _e51125133_)))
                        (if (gx#stx-pair? _tl51145138_)
                            (let ((_e51155141_ (gx#stx-e _tl51145138_)))
                              (let ((_hd51165144_ (##car _e51155141_))
                                    (_tl51175146_ (##cdr _e51155141_)))
                                (if (gx#stx-pair? _tl51175146_)
                                    (let ((_e51185149_
                                           (gx#stx-e _tl51175146_)))
                                      (let ((_hd51195152_ (##car _e51185149_))
                                            (_tl51205154_ (##cdr _e51185149_)))
                                        (if (gx#stx-pair? _tl51205154_)
                                            (let ((_e51215157_
                                                   (gx#stx-e _tl51205154_)))
                                              (let ((_hd51225160_
                                                     (##car _e51215157_))
                                                    (_tl51235162_
                                                     (##cdr _e51215157_)))
                                                (if (gx#stx-null? _tl51235162_)
                                                    ((lambda (_L5165_
                                                              _L5166_
                                                              _L5167_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5165_)
                           (cons (gxc#compile-e _L5166_)
                                 (cons (gxc#compile-e _L5167_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd51225160_
                                                     _hd51195152_
                                                     _hd51165144_)
                                                    (_g51075128_
                                                     _g51085131_))))
                                            (_g51075128_ _g51085131_))))
                                    (_g51075128_ _g51085131_))))
                            (_g51075128_ _g51085131_))))
                    (_g51075128_ _g51085131_)))))
        (_g51065185_ _stx5105_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5006_)
      (let* ((_g50085033_
              (lambda (_g50095030_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g50095030_)))
             (_g50075102_
              (lambda (_g50095036_)
                (if (gx#stx-pair? _g50095036_)
                    (let ((_e50145038_ (gx#stx-e _g50095036_)))
                      (let ((_hd50155041_ (##car _e50145038_))
                            (_tl50165043_ (##cdr _e50145038_)))
                        (if (gx#stx-pair? _tl50165043_)
                            (let ((_e50175046_ (gx#stx-e _tl50165043_)))
                              (let ((_hd50185049_ (##car _e50175046_))
                                    (_tl50195051_ (##cdr _e50175046_)))
                                (if (gx#stx-pair? _tl50195051_)
                                    (let ((_e50205054_
                                           (gx#stx-e _tl50195051_)))
                                      (let ((_hd50215057_ (##car _e50205054_))
                                            (_tl50225059_ (##cdr _e50205054_)))
                                        (if (gx#stx-pair? _tl50225059_)
                                            (let ((_e50235062_
                                                   (gx#stx-e _tl50225059_)))
                                              (let ((_hd50245065_
                                                     (##car _e50235062_))
                                                    (_tl50255067_
                                                     (##cdr _e50235062_)))
                                                (if (gx#stx-pair? _tl50255067_)
                                                    (let ((_e50265070_
                                                           (gx#stx-e
                                                            _tl50255067_)))
                                                      (let ((_hd50275073_
                                                             (##car _e50265070_))
                                                            (_tl50285075_
                                                             (##cdr _e50265070_)))
                                                        (if (gx#stx-null?
                                                             _tl50285075_)
                                                            ((lambda (_L5078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5079_
                              _L5080_
                              _L5081_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5079_)
                                   (cons (gxc#compile-e _L5078_)
                                         (cons (gxc#compile-e _L5080_)
                                               (cons (gxc#compile-e _L5081_)
                                                     (cons ''#f '())))))))
                     _hd50275073_
                     _hd50245065_
                     _hd50215057_
                     _hd50185049_)
                    (_g50085033_ _g50095036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g50085033_
                                                     _g50095036_))))
                                            (_g50085033_ _g50095036_))))
                                    (_g50085033_ _g50095036_))))
                            (_g50085033_ _g50095036_))))
                    (_g50085033_ _g50095036_)))))
        (_g50075102_ _stx5006_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4915_)
      (let* ((_g49174927_
              (lambda (_g49184924_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49184924_)))
             (_g49165003_
              (lambda (_g49184930_)
                (if (gx#stx-pair? _g49184930_)
                    (let ((_e49204932_ (gx#stx-e _g49184930_)))
                      (let ((_hd49214935_ (##car _e49204932_))
                            (_tl49224937_ (##cdr _e49204932_)))
                        ((lambda (_L4940_)
                           (let ((_ht4950_ (make-hash-table-eq)))
                             (let _lp4952_ ((_rest4954_ _L4940_)
                                            (_loads4955_ '()))
                               (letrec ((_K4957_ (lambda (_ctx4996_ _rest4997_)
                                                   (let ((_id4999_
                                                          (##structure-ref
                                                           _ctx4996_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht4950_
                                                          _id4999_
                                                          '#f)
                                                         (_lp4952_
                                                          _rest4997_
                                                          _loads4955_)
                                                         (let ((_rt5001_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id4999_)
                         '"__rt")))
                   (begin
                     (table-set! _ht4950_ _id4999_ _rt5001_)
                     (_lp4952_ _rest4997_ (cons _rt5001_ _loads4955_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest49584966_ _rest4954_)
                                        (_E49614970_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest49584966_)))
                                        (_else49604978_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g49734975_)
                                                        (list 'load-module
                                                              _g49734975_))
                                                      (reverse _loads4955_)))))
                                        (_K49624984_
                                         (lambda (_rest4981_ _in4982_)
                                           (if (##structure-instance-of?
                                                _in4982_
                                                'gx#module-context::t)
                                               (_K4957_ _in4982_ _rest4981_)
                                               (if (##structure-direct-instance-of?
                                                    _in4982_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in4982_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp4952_
                                                        _rest4981_
                                                        _loads4955_)
                                                       (_K4957_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in4982_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest4981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in4982_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in4982_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp4952_
                                                            _rest4981_
                                                            _loads4955_)
                                                           (_K4957_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in4982_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest4981_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx4915_
                _in4982_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest49584966_)
                                       (let ((_hd49634987_
                                              (##car _rest49584966_))
                                             (_tl49644989_
                                              (##cdr _rest49584966_)))
                                         (let* ((_in4992_ _hd49634987_)
                                                (_rest4994_ _tl49644989_))
                                           (_K49624984_ _rest4994_ _in4992_)))
                                       (_else49604978_)))))))
                         _tl49224937_)))
                    (_g49174927_ _g49184930_)))))
        (_g49165003_ _stx4915_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4738_)
      (letrec ((_add-lift!4740_
                (lambda (_expr4913_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr4913_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple4741_
                (lambda (_stxq4908_)
                  (let ((_gid4910_
                         (gxc#generate-runtime-temporary__opt-lambda10214 '#t))
                        (_qid4911_
                         (gxc#generate-runtime-identifier _stxq4908_)))
                    (begin
                      (_add-lift!4740_
                       (cons 'define
                             (cons _gid4910_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid4911_
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
                      _gid4910_))))
               (_generate-serialized4742_
                (lambda (_stxq4898_ _marks4899_)
                  (let* ((_mark-refs4901_
                          (map _generate-mark4743_ _marks4899_))
                         (_gid4903_
                          (gxc#generate-runtime-temporary__opt-lambda10214
                           '#t))
                         (_qid4905_
                          (gxc#generate-runtime-identifier _stxq4898_)))
                    (begin
                      (_add-lift!4740_
                       (cons 'define
                             (cons _gid4903_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid4905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs4901_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid4903_))))
               (_generate-mark4743_
                (lambda (_mark4884_)
                  (let ((_$e4886_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark4884_
                          '#f)))
                    (if _$e4886_
                        (values _$e4886_)
                        (let* ((_gid4889_
                                (gxc#generate-runtime-temporary__opt-lambda10214
                                 '#t))
                               (_repr4891_ (_serialize-mark4744_ _mark4884_))
                               (_ctx4893_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark4884_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref4895_
                                (if (eq? _ctx4893_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref4745_
                                                             _ctx4893_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark4884_
                             _gid4889_)
                            (_add-lift!4740_
                             (cons 'define
                                   (cons _gid4889_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr4891_ '()))
                   (cons _ctx-ref4895_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid4889_))))))
               (_serialize-mark4744_
                (lambda (_mark4831_)
                  (letrec ((_quote-e4833_
                            (lambda (_sym4882_)
                              (if (interned-symbol? _sym4882_)
                                  _sym4882_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym4882_)))))
                    (let* ((_mark48344843_ _mark4831_)
                           (_E48364847_
                            (lambda ()
                              (error '"No clause matching" _mark48344843_)))
                           (_K48374859_
                            (lambda (_trace4850_
                                     _phi4851_
                                     _ctx4852_
                                     _subst4853_)
                              (let ((_subs4855_
                                     (if _subst4853_
                                         (table->list _subst4853_)
                                         '())))
                                (cons _phi4851_
                                      (map (lambda (_pair4857_)
                                             (cons (_quote-e4833_
                                                    (car _pair4857_))
                                                   (_quote-e4833_
                                                    (cdr _pair4857_))))
                                           _subs4855_))))))
                      (if (##structure-instance-of?
                           _mark48344843_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e48384862_ (##vector-ref _mark48344843_ '1))
                                 (_subst4865_ _e48384862_)
                                 (_e48394867_ (##vector-ref _mark48344843_ '2))
                                 (_ctx4870_ _e48394867_)
                                 (_e48404872_ (##vector-ref _mark48344843_ '3))
                                 (_phi4875_ _e48404872_)
                                 (_e48414877_ (##vector-ref _mark48344843_ '4))
                                 (_trace4880_ _e48414877_))
                            (_K48374859_
                             _trace4880_
                             _phi4875_
                             _ctx4870_
                             _subst4865_))
                          (_E48364847_))))))
               (_context-ref4745_
                (lambda (_ctx4818_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx4818_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref4820_
                             (_context-ref-nested4747_ _ctx4818_))
                            (_ctx-origin4821_
                             (_context-ref-origin4746_ _ctx4818_))
                            (_origin4822_
                             (_context-ref-origin4746_
                              (gx#current-expander-context))))
                        (if (eq? _origin4822_ _ctx-origin4821_)
                            (let ((_ref4824_
                                   (_context-ref-nested4747_
                                    (gx#current-expander-context))))
                              (let _lp4826_ ((_ref4828_ (cdr _ref4824_))
                                             (_ctx-ref4829_
                                              (cdr _ctx-ref4820_)))
                                (if (if (pair? _ref4828_)
                                        (eq? (car _ref4828_)
                                             (car _ctx-ref4829_))
                                        '#f)
                                    (_lp4826_
                                     (cdr _ref4828_)
                                     (cdr _ctx-ref4829_))
                                    (cons '#f _ctx-ref4829_))))
                            _ctx-ref4820_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx4818_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin4746_
                (lambda (_ctx4810_)
                  (let _lp4812_ ((_ctx4814_ _ctx4810_))
                    (let ((_super4816_
                           (##structure-ref
                            _ctx4814_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super4816_
                           'gx#module-context::t)
                          (_lp4812_ _super4816_)
                          _ctx4814_)))))
               (_context-ref-nested4747_
                (lambda (_ctx4801_)
                  (let _lp4803_ ((_ctx4805_ _ctx4801_) (_r4806_ '()))
                    (let ((_super4808_
                           (##structure-ref
                            _ctx4805_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super4808_
                           'gx#module-context::t)
                          (_lp4803_
                           _super4808_
                           (cons (car (##structure-ref
                                       _ctx4805_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r4806_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx4805_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r4806_)))))))
        (let* ((_g47494762_
                (lambda (_g47504759_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47504759_)))
               (_g47484798_
                (lambda (_g47504765_)
                  (if (gx#stx-pair? _g47504765_)
                      (let ((_e47524767_ (gx#stx-e _g47504765_)))
                        (let ((_hd47534770_ (##car _e47524767_))
                              (_tl47544772_ (##cdr _e47524767_)))
                          (if (gx#stx-pair? _tl47544772_)
                              (let ((_e47554775_ (gx#stx-e _tl47544772_)))
                                (let ((_hd47564778_ (##car _e47554775_))
                                      (_tl47574780_ (##cdr _e47554775_)))
                                  (if (gx#stx-null? _tl47574780_)
                                      ((lambda (_L4783_)
                                         (if (gx#identifier? _L4783_)
                                             (let ((_marks4796_
                                                    (##direct-structure-ref
                                                     _L4783_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks4796_)
                                                   (_generate-simple4741_
                                                    _L4783_)
                                                   (_generate-serialized4742_
                                                    _L4783_
                                                    _marks4796_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L4783_)))
                                       _hd47564778_)
                                      (_g47494762_ _g47504765_))))
                              (_g47494762_ _g47504765_))))
                      (_g47494762_ _g47504765_)))))
          (_g47484798_ _stx4738_)))))
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
                                  (let ((_g11427_
                                         (gx#syntax-split-splice
                                          _tl38663898_
                                          '0)))
                                    (begin
                                      (let ((_g11428_ (values-count _g11427_)))
                                        (if (not (fx= _g11428_ 2))
                                            (error "Context expects 2 values"
                                                   _g11428_)))
                                      (let ((_target38673901_
                                             (values-ref _g11427_ 0))
                                            (_tl38693903_
                                             (values-ref _g11427_ 1)))
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
          (lambda (_g11429_ _block3414_ _r3415_) (cons _block3414_ _r3415_))
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
