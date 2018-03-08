(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12282_ . _args12283_)
      (let* ((_g1228512295_
              (lambda (_g1228612292_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1228612292_)))
             (_g1228412323_
              (lambda (_g1228612298_)
                (if (gx#stx-pair? _g1228612298_)
                    (let ((_e1228812300_ (gx#stx-e _g1228612298_)))
                      (let ((_hd1228912303_ (##car _e1228812300_))
                            (_tl1229012305_ (##cdr _e1228812300_)))
                        ((lambda (_L12308_)
                           (let ((_$e12318_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12308_)
                                   '#f)))
                             (if _$e12318_
                                 ((lambda (_method12321_)
                                    (apply _method12321_
                                           _stx12282_
                                           _args12283_))
                                  _$e12318_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12282_
                                  _L12308_))))
                         _hd1228912303_)))
                    (_g1228512295_ _g1228612298_)))))
        (_g1228412323_ _stx12282_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12279_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12279_ '%#begin-annotation void)
           (table-set! _tbl12279_ '%#lambda void)
           (table-set! _tbl12279_ '%#case-lambda void)
           (table-set! _tbl12279_ '%#let-values void)
           (table-set! _tbl12279_ '%#letrec-values void)
           (table-set! _tbl12279_ '%#letrec*-values void)
           (table-set! _tbl12279_ '%#quote void)
           (table-set! _tbl12279_ '%#quote-syntax void)
           (table-set! _tbl12279_ '%#call void)
           (table-set! _tbl12279_ '%#if void)
           (table-set! _tbl12279_ '%#ref void)
           (table-set! _tbl12279_ '%#set! void)
           (table-set! _tbl12279_ '%#struct-instance? void)
           (table-set! _tbl12279_ '%#struct-direct-instance? void)
           (table-set! _tbl12279_ '%#struct-ref void)
           (table-set! _tbl12279_ '%#struct-set! void)
           (table-set! _tbl12279_ '%#struct-direct-ref void)
           (table-set! _tbl12279_ '%#struct-direct-set! void)
           (table-set! _tbl12279_ '%#struct-unchecked-ref void)
           (table-set! _tbl12279_ '%#struct-unchecked-set! void)
           _tbl12279_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12275_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12275_ '%#begin void)
           (table-set! _tbl12275_ '%#begin-syntax void)
           (table-set! _tbl12275_ '%#begin-foreign void)
           (table-set! _tbl12275_ '%#module void)
           (table-set! _tbl12275_ '%#import void)
           (table-set! _tbl12275_ '%#export void)
           (table-set! _tbl12275_ '%#provide void)
           (table-set! _tbl12275_ '%#extern void)
           (table-set! _tbl12275_ '%#define-values void)
           (table-set! _tbl12275_ '%#define-syntax void)
           (table-set! _tbl12275_ '%#define-alias void)
           (table-set! _tbl12275_ '%#declare void)
           _tbl12275_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12271_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12271_ (force gxc#&void-special-form))
           (hash-copy! _tbl12271_ (force gxc#&void-expression))
           _tbl12271_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12267_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12267_ '%#begin-annotation false)
           (table-set! _tbl12267_ '%#lambda false)
           (table-set! _tbl12267_ '%#case-lambda false)
           (table-set! _tbl12267_ '%#let-values false)
           (table-set! _tbl12267_ '%#letrec-values false)
           (table-set! _tbl12267_ '%#letrec*-values false)
           (table-set! _tbl12267_ '%#quote false)
           (table-set! _tbl12267_ '%#quote-syntax false)
           (table-set! _tbl12267_ '%#call false)
           (table-set! _tbl12267_ '%#if false)
           (table-set! _tbl12267_ '%#ref false)
           (table-set! _tbl12267_ '%#set! false)
           (table-set! _tbl12267_ '%#struct-instance? false)
           (table-set! _tbl12267_ '%#struct-direct-instance? false)
           (table-set! _tbl12267_ '%#struct-ref false)
           (table-set! _tbl12267_ '%#struct-set! false)
           (table-set! _tbl12267_ '%#struct-direct-ref false)
           (table-set! _tbl12267_ '%#struct-direct-set! false)
           (table-set! _tbl12267_ '%#struct-unchecked-ref false)
           (table-set! _tbl12267_ '%#struct-unchecked-set! false)
           _tbl12267_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12263_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12263_ '%#begin false)
           (table-set! _tbl12263_ '%#begin-syntax false)
           (table-set! _tbl12263_ '%#begin-foreign false)
           (table-set! _tbl12263_ '%#module false)
           (table-set! _tbl12263_ '%#import false)
           (table-set! _tbl12263_ '%#export false)
           (table-set! _tbl12263_ '%#provide false)
           (table-set! _tbl12263_ '%#extern false)
           (table-set! _tbl12263_ '%#define-values false)
           (table-set! _tbl12263_ '%#define-syntax false)
           (table-set! _tbl12263_ '%#define-alias false)
           (table-set! _tbl12263_ '%#declare false)
           _tbl12263_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12259_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12259_ (force gxc#&false-special-form))
           (hash-copy! _tbl12259_ (force gxc#&false-expression))
           _tbl12259_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12255_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12255_ (force gxc#&void-expression))
           (hash-copy! _tbl12255_ (force gxc#&void-special-form))
           (table-set! _tbl12255_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12255_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12255_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12255_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12255_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12255_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12248_ . _args12250_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12248_ _args12250_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12245_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12245_ (force gxc#&void))
           (table-set! _tbl12245_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12245_ '%#module gxc#lift-modules-module%)
           _tbl12245_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12238_ . _args12240_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12238_ _args12240_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12235_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12235_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12235_ '%#begin-syntax false)
           (table-set! _tbl12235_ '%#begin-foreign true)
           (table-set! _tbl12235_ '%#begin-annotation true)
           (table-set! _tbl12235_ '%#module false)
           (table-set! _tbl12235_ '%#import false)
           (table-set! _tbl12235_ '%#export false)
           (table-set! _tbl12235_ '%#provide false)
           (table-set! _tbl12235_ '%#extern false)
           (table-set! _tbl12235_ '%#define-values true)
           (table-set! _tbl12235_ '%#define-syntax false)
           (table-set! _tbl12235_ '%#define-alias false)
           (table-set! _tbl12235_ '%#declare false)
           (table-set! _tbl12235_ '%#lambda true)
           (table-set! _tbl12235_ '%#case-lambda true)
           (table-set! _tbl12235_ '%#let-values true)
           (table-set! _tbl12235_ '%#letrec-values true)
           (table-set! _tbl12235_ '%#letrec*-values true)
           (table-set! _tbl12235_ '%#quote true)
           (table-set! _tbl12235_ '%#call true)
           (table-set! _tbl12235_ '%#if true)
           (table-set! _tbl12235_ '%#ref true)
           (table-set! _tbl12235_ '%#set! true)
           (table-set! _tbl12235_ '%#struct-instance? true)
           (table-set! _tbl12235_ '%#struct-direct-instance? true)
           (table-set! _tbl12235_ '%#struct-ref true)
           (table-set! _tbl12235_ '%#struct-set! true)
           (table-set! _tbl12235_ '%#struct-direct-ref true)
           (table-set! _tbl12235_ '%#struct-direct-set! true)
           (table-set! _tbl12235_ '%#struct-unchecked-ref true)
           (table-set! _tbl12235_ '%#struct-unchecked-set! true)
           _tbl12235_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12228_ . _args12230_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12228_ _args12230_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12225_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12225_ (force gxc#&false))
           (table-set! _tbl12225_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12225_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12225_ '%#lambda values)
           (table-set! _tbl12225_ '%#case-lambda values)
           (table-set!
            _tbl12225_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12225_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12225_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12225_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12218_ . _args12220_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12218_ _args12220_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12215_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12215_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12215_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12215_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12215_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12211_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12211_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12211_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12211_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12211_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12204_ . _args12206_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12204_ _args12206_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12201_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12201_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12201_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12201_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12201_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12201_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12201_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12201_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12201_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12201_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12201_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12201_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12201_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12201_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12201_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12201_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12201_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12201_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12201_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12201_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12201_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12201_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12201_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12201_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12201_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12201_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12201_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12194_ . _args12196_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12194_ _args12196_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12191_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12191_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12191_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12191_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12184_ . _args12186_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12184_ _args12186_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12181_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12181_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12181_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12181_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12181_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12181_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12181_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12181_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12181_ '%#quote void)
           (table-set! _tbl12181_ '%#quote-syntax void)
           (table-set! _tbl12181_ '%#call gxc#collect-operands)
           (table-set! _tbl12181_ '%#if gxc#collect-operands)
           (table-set! _tbl12181_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12181_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12181_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12181_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12181_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12181_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12181_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12181_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12181_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12181_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12181_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12174_ . _args12176_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12174_ _args12176_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12171_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12171_ (force gxc#&void-expression))
           (table-set! _tbl12171_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12171_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12171_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12171_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12171_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12171_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12171_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12171_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12171_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12171_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12171_ '%#begin-foreign void)
           (table-set! _tbl12171_ '%#declare void)
           _tbl12171_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12164_ . _args12166_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12164_ _args12166_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12161_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12161_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12161_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12161_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12161_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12161_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12161_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12161_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12161_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12161_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12161_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12161_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12161_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12161_ '%#declare void)
           _tbl12161_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12154_ . _args12156_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12154_ _args12156_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12111_ . _args12112_)
      (let* ((_g1211412124_
              (lambda (_g1211512121_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1211512121_)))
             (_g1211312151_
              (lambda (_g1211512127_)
                (if (gx#stx-pair? _g1211512127_)
                    (let ((_e1211712129_ (gx#stx-e _g1211512127_)))
                      (let ((_hd1211812132_ (##car _e1211712129_))
                            (_tl1211912134_ (##cdr _e1211712129_)))
                        ((lambda (_L12137_)
                           (for-each
                            (lambda (_g1214612148_)
                              (apply gxc#compile-e _g1214612148_ _args12112_))
                            (gx#stx-e _L12137_)))
                         _tl1211912134_)))
                    (_g1211412124_ _g1211512127_)))))
        (_g1211312151_ _stx12111_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12067_ . _args12068_)
      (let* ((_g1207012080_
              (lambda (_g1207112077_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1207112077_)))
             (_g1206912108_
              (lambda (_g1207112083_)
                (if (gx#stx-pair? _g1207112083_)
                    (let ((_e1207312085_ (gx#stx-e _g1207112083_)))
                      (let ((_hd1207412088_ (##car _e1207312085_))
                            (_tl1207512090_ (##cdr _e1207312085_)))
                        ((lambda (_L12093_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1210312105_)
                                 (apply gxc#compile-e
                                        _g1210312105_
                                        _args12068_))
                               (gx#stx-e _L12093_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1207512090_)))
                    (_g1207012080_ _g1207112083_)))))
        (_g1206912108_ _stx12067_))))
  (define gxc#collect-module%
    (lambda (_stx12009_ . _args12010_)
      (let* ((_g1201212026_
              (lambda (_g1201312023_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1201312023_)))
             (_g1201112064_
              (lambda (_g1201312029_)
                (if (gx#stx-pair? _g1201312029_)
                    (let ((_e1201612031_ (gx#stx-e _g1201312029_)))
                      (let ((_hd1201712034_ (##car _e1201612031_))
                            (_tl1201812036_ (##cdr _e1201612031_)))
                        (if (gx#stx-pair? _tl1201812036_)
                            (let ((_e1201912039_ (gx#stx-e _tl1201812036_)))
                              (let ((_hd1202012042_ (##car _e1201912039_))
                                    (_tl1202112044_ (##cdr _e1201912039_)))
                                ((lambda (_L12047_ _L12048_)
                                   (let ((_ctx12061_
                                          (gx#syntax-local-e__0 _L12048_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12061_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12010_))
                                      gx#current-expander-context
                                      _ctx12061_)))
                                 _tl1202112044_
                                 _hd1202012042_)))
                            (_g1201212026_ _g1201312029_))))
                    (_g1201212026_ _g1201312029_)))))
        (_g1201112064_ _stx12009_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11941_ . _args11942_)
      (let* ((_g1194411961_
              (lambda (_g1194511958_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1194511958_)))
             (_g1194312006_
              (lambda (_g1194511964_)
                (if (gx#stx-pair? _g1194511964_)
                    (let ((_e1194811966_ (gx#stx-e _g1194511964_)))
                      (let ((_hd1194911969_ (##car _e1194811966_))
                            (_tl1195011971_ (##cdr _e1194811966_)))
                        (if (gx#stx-pair? _tl1195011971_)
                            (let ((_e1195111974_ (gx#stx-e _tl1195011971_)))
                              (let ((_hd1195211977_ (##car _e1195111974_))
                                    (_tl1195311979_ (##cdr _e1195111974_)))
                                (if (gx#stx-pair? _tl1195311979_)
                                    (let ((_e1195411982_
                                           (gx#stx-e _tl1195311979_)))
                                      (let ((_hd1195511985_
                                             (##car _e1195411982_))
                                            (_tl1195611987_
                                             (##cdr _e1195411982_)))
                                        (if (gx#stx-null? _tl1195611987_)
                                            ((lambda (_L11990_ _L11991_)
                                               (apply gxc#compile-e
                                                      _L11990_
                                                      _args11942_))
                                             _hd1195511985_
                                             _hd1195211977_)
                                            (_g1194411961_ _g1194511964_))))
                                    (_g1194411961_ _g1194511964_))))
                            (_g1194411961_ _g1194511964_))))
                    (_g1194411961_ _g1194511964_)))))
        (_g1194312006_ _stx11941_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11873_ . _args11874_)
      (let* ((_g1187611893_
              (lambda (_g1187711890_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1187711890_)))
             (_g1187511938_
              (lambda (_g1187711896_)
                (if (gx#stx-pair? _g1187711896_)
                    (let ((_e1188011898_ (gx#stx-e _g1187711896_)))
                      (let ((_hd1188111901_ (##car _e1188011898_))
                            (_tl1188211903_ (##cdr _e1188011898_)))
                        (if (gx#stx-pair? _tl1188211903_)
                            (let ((_e1188311906_ (gx#stx-e _tl1188211903_)))
                              (let ((_hd1188411909_ (##car _e1188311906_))
                                    (_tl1188511911_ (##cdr _e1188311906_)))
                                (if (gx#stx-pair? _tl1188511911_)
                                    (let ((_e1188611914_
                                           (gx#stx-e _tl1188511911_)))
                                      (let ((_hd1188711917_
                                             (##car _e1188611914_))
                                            (_tl1188811919_
                                             (##cdr _e1188611914_)))
                                        (if (gx#stx-null? _tl1188811919_)
                                            ((lambda (_L11922_ _L11923_)
                                               (apply gxc#compile-e
                                                      _L11922_
                                                      _args11874_))
                                             _hd1188711917_
                                             _hd1188411909_)
                                            (_g1187611893_ _g1187711896_))))
                                    (_g1187611893_ _g1187711896_))))
                            (_g1187611893_ _g1187711896_))))
                    (_g1187611893_ _g1187711896_)))))
        (_g1187511938_ _stx11873_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11755_ . _args11756_)
      (let* ((_g1175811786_
              (lambda (_g1175911783_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1175911783_)))
             (_g1175711870_
              (lambda (_g1175911789_)
                (if (gx#stx-pair? _g1175911789_)
                    (let ((_e1176211791_ (gx#stx-e _g1175911789_)))
                      (let ((_hd1176311794_ (##car _e1176211791_))
                            (_tl1176411796_ (##cdr _e1176211791_)))
                        (if (gx#stx-pair/null? _tl1176411796_)
                            (if (fx>= (gx#stx-length _tl1176411796_) '0)
                                (let ((_g12325_
                                       (gx#syntax-split-splice
                                        _tl1176411796_
                                        '0)))
                                  (begin
                                    (let ((_g12326_ (values-count _g12325_)))
                                      (if (not (fx= _g12326_ 2))
                                          (error "Context expects 2 values"
                                                 _g12326_)))
                                    (let ((_target1176511799_
                                           (values-ref _g12325_ 0))
                                          (_tl1176711801_
                                           (values-ref _g12325_ 1)))
                                      (if (gx#stx-null? _tl1176711801_)
                                          (letrec ((_loop1176811804_
                                                    (lambda (_hd1176611807_
                                                             _body1177211809_
                                                             _hd1177311811_)
                                                      (if (gx#stx-pair?
                                                           _hd1176611807_)
                                                          (let ((_e1176911814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1176611807_)))
                    (let ((_lp-hd1177011817_ (##car _e1176911814_))
                          (_lp-tl1177111819_ (##cdr _e1176911814_)))
                      (if (gx#stx-pair? _lp-hd1177011817_)
                          (let ((_e1177611822_ (gx#stx-e _lp-hd1177011817_)))
                            (let ((_hd1177711825_ (##car _e1177611822_))
                                  (_tl1177811827_ (##cdr _e1177611822_)))
                              (if (gx#stx-pair? _tl1177811827_)
                                  (let ((_e1177911830_
                                         (gx#stx-e _tl1177811827_)))
                                    (let ((_hd1178011833_
                                           (##car _e1177911830_))
                                          (_tl1178111835_
                                           (##cdr _e1177911830_)))
                                      (if (gx#stx-null? _tl1178111835_)
                                          (_loop1176811804_
                                           _lp-tl1177111819_
                                           (cons _hd1178011833_
                                                 _body1177211809_)
                                           (cons _hd1177711825_
                                                 _hd1177311811_))
                                          (_g1175811786_ _g1175911789_))))
                                  (_g1175811786_ _g1175911789_))))
                          (_g1175811786_ _g1175911789_))))
                  (let ((_body1177411838_ (reverse _body1177211809_))
                        (_hd1177511840_ (reverse _hd1177311811_)))
                    ((lambda (_L11843_ _L11844_)
                       (for-each
                        (lambda (_g1185811860_)
                          (apply gxc#compile-e _g1185811860_ _args11756_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1186211865_ _g1186311867_)
                                    (cons _g1186211865_ _g1186311867_))
                                  '()
                                  _L11843_))))
                     _body1177411838_
                     _hd1177511840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1176811804_
                                             _target1176511799_
                                             '()
                                             '()))
                                          (_g1175811786_ _g1175911789_)))))
                                (_g1175811786_ _g1175911789_))
                            (_g1175811786_ _g1175911789_))))
                    (_g1175811786_ _g1175911789_)))))
        (_g1175711870_ _stx11755_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11608_ . _args11609_)
      (let* ((_g1161111646_
              (lambda (_g1161211643_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1161211643_)))
             (_g1161011752_
              (lambda (_g1161211649_)
                (if (gx#stx-pair? _g1161211649_)
                    (let ((_e1161611651_ (gx#stx-e _g1161211649_)))
                      (let ((_hd1161711654_ (##car _e1161611651_))
                            (_tl1161811656_ (##cdr _e1161611651_)))
                        (if (gx#stx-pair? _tl1161811656_)
                            (let ((_e1161911659_ (gx#stx-e _tl1161811656_)))
                              (let ((_hd1162011662_ (##car _e1161911659_))
                                    (_tl1162111664_ (##cdr _e1161911659_)))
                                (if (gx#stx-pair/null? _hd1162011662_)
                                    (if (fx>= (gx#stx-length _hd1162011662_)
                                              '0)
                                        (let ((_g12327_
                                               (gx#syntax-split-splice
                                                _hd1162011662_
                                                '0)))
                                          (begin
                                            (let ((_g12328_
                                                   (values-count _g12327_)))
                                              (if (not (fx= _g12328_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12328_)))
                                            (let ((_target1162211667_
                                                   (values-ref _g12327_ 0))
                                                  (_tl1162411669_
                                                   (values-ref _g12327_ 1)))
                                              (if (gx#stx-null? _tl1162411669_)
                                                  (letrec ((_loop1162511672_
                                                            (lambda (_hd1162311675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1162911677_
                             _hd1163011679_)
                      (if (gx#stx-pair? _hd1162311675_)
                          (let ((_e1162611682_ (gx#stx-e _hd1162311675_)))
                            (let ((_lp-hd1162711685_ (##car _e1162611682_))
                                  (_lp-tl1162811687_ (##cdr _e1162611682_)))
                              (if (gx#stx-pair? _lp-hd1162711685_)
                                  (let ((_e1163311690_
                                         (gx#stx-e _lp-hd1162711685_)))
                                    (let ((_hd1163411693_
                                           (##car _e1163311690_))
                                          (_tl1163511695_
                                           (##cdr _e1163311690_)))
                                      (if (gx#stx-pair? _tl1163511695_)
                                          (let ((_e1163611698_
                                                 (gx#stx-e _tl1163511695_)))
                                            (let ((_hd1163711701_
                                                   (##car _e1163611698_))
                                                  (_tl1163811703_
                                                   (##cdr _e1163611698_)))
                                              (if (gx#stx-null? _tl1163811703_)
                                                  (_loop1162511672_
                                                   _lp-tl1162811687_
                                                   (cons _hd1163711701_
                                                         _expr1162911677_)
                                                   (cons _hd1163411693_
                                                         _hd1163011679_))
                                                  (_g1161111646_
                                                   _g1161211649_))))
                                          (_g1161111646_ _g1161211649_))))
                                  (_g1161111646_ _g1161211649_))))
                          (let ((_expr1163111706_ (reverse _expr1162911677_))
                                (_hd1163211708_ (reverse _hd1163011679_)))
                            (if (gx#stx-pair? _tl1162111664_)
                                (let ((_e1163911711_
                                       (gx#stx-e _tl1162111664_)))
                                  (let ((_hd1164011714_ (##car _e1163911711_))
                                        (_tl1164111716_ (##cdr _e1163911711_)))
                                    (if (gx#stx-null? _tl1164111716_)
                                        ((lambda (_L11719_ _L11720_ _L11721_)
                                           (for-each
                                            (lambda (_g1174011742_)
                                              (apply gxc#compile-e
                                                     _g1174011742_
                                                     _args11609_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1174411747_
                                                               _g1174511749_)
                                                        (cons _g1174411747_
                                                              _g1174511749_))
                                                      (cons _L11719_ '())
                                                      _L11720_))))
                                         _hd1164011714_
                                         _expr1163111706_
                                         _hd1163211708_)
                                        (_g1161111646_ _g1161211649_))))
                                (_g1161111646_ _g1161211649_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1162511672_
                                                     _target1162211667_
                                                     '()
                                                     '()))
                                                  (_g1161111646_
                                                   _g1161211649_)))))
                                        (_g1161111646_ _g1161211649_))
                                    (_g1161111646_ _g1161211649_))))
                            (_g1161111646_ _g1161211649_))))
                    (_g1161111646_ _g1161211649_)))))
        (_g1161011752_ _stx11608_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11540_ . _args11541_)
      (let* ((_g1154311560_
              (lambda (_g1154411557_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1154411557_)))
             (_g1154211605_
              (lambda (_g1154411563_)
                (if (gx#stx-pair? _g1154411563_)
                    (let ((_e1154711565_ (gx#stx-e _g1154411563_)))
                      (let ((_hd1154811568_ (##car _e1154711565_))
                            (_tl1154911570_ (##cdr _e1154711565_)))
                        (if (gx#stx-pair? _tl1154911570_)
                            (let ((_e1155011573_ (gx#stx-e _tl1154911570_)))
                              (let ((_hd1155111576_ (##car _e1155011573_))
                                    (_tl1155211578_ (##cdr _e1155011573_)))
                                (if (gx#stx-pair? _tl1155211578_)
                                    (let ((_e1155311581_
                                           (gx#stx-e _tl1155211578_)))
                                      (let ((_hd1155411584_
                                             (##car _e1155311581_))
                                            (_tl1155511586_
                                             (##cdr _e1155311581_)))
                                        (if (gx#stx-null? _tl1155511586_)
                                            ((lambda (_L11589_ _L11590_)
                                               (apply gxc#compile-e
                                                      _L11589_
                                                      _args11541_))
                                             _hd1155411584_
                                             _hd1155111576_)
                                            (_g1154311560_ _g1154411563_))))
                                    (_g1154311560_ _g1154411563_))))
                            (_g1154311560_ _g1154411563_))))
                    (_g1154311560_ _g1154411563_)))))
        (_g1154211605_ _stx11540_))))
  (define gxc#collect-operands
    (lambda (_stx11453_ . _args11454_)
      (let* ((_g1145611475_
              (lambda (_g1145711472_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1145711472_)))
             (_g1145511537_
              (lambda (_g1145711478_)
                (if (gx#stx-pair? _g1145711478_)
                    (let ((_e1145911480_ (gx#stx-e _g1145711478_)))
                      (let ((_hd1146011483_ (##car _e1145911480_))
                            (_tl1146111485_ (##cdr _e1145911480_)))
                        (if (gx#stx-pair/null? _tl1146111485_)
                            (if (fx>= (gx#stx-length _tl1146111485_) '0)
                                (let ((_g12329_
                                       (gx#syntax-split-splice
                                        _tl1146111485_
                                        '0)))
                                  (begin
                                    (let ((_g12330_ (values-count _g12329_)))
                                      (if (not (fx= _g12330_ 2))
                                          (error "Context expects 2 values"
                                                 _g12330_)))
                                    (let ((_target1146211488_
                                           (values-ref _g12329_ 0))
                                          (_tl1146411490_
                                           (values-ref _g12329_ 1)))
                                      (if (gx#stx-null? _tl1146411490_)
                                          (letrec ((_loop1146511493_
                                                    (lambda (_hd1146311496_
                                                             _rands1146911498_)
                                                      (if (gx#stx-pair?
                                                           _hd1146311496_)
                                                          (let ((_e1146611501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1146311496_)))
                    (let ((_lp-hd1146711504_ (##car _e1146611501_))
                          (_lp-tl1146811506_ (##cdr _e1146611501_)))
                      (_loop1146511493_
                       _lp-tl1146811506_
                       (cons _lp-hd1146711504_ _rands1146911498_))))
                  (let ((_rands1147011509_ (reverse _rands1146911498_)))
                    ((lambda (_L11512_)
                       (for-each
                        (lambda (_g1152511527_)
                          (apply gxc#compile-e _g1152511527_ _args11454_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1152911532_ _g1153011534_)
                                    (cons _g1152911532_ _g1153011534_))
                                  '()
                                  _L11512_))))
                     _rands1147011509_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1146511493_
                                             _target1146211488_
                                             '()))
                                          (_g1145611475_ _g1145711478_)))))
                                (_g1145611475_ _g1145711478_))
                            (_g1145611475_ _g1145711478_))))
                    (_g1145611475_ _g1145711478_)))))
        (_g1145511537_ _stx11453_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11384_)
      (let* ((_g1138611403_
              (lambda (_g1138711400_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1138711400_)))
             (_g1138511450_
              (lambda (_g1138711406_)
                (if (gx#stx-pair? _g1138711406_)
                    (let ((_e1139011408_ (gx#stx-e _g1138711406_)))
                      (let ((_hd1139111411_ (##car _e1139011408_))
                            (_tl1139211413_ (##cdr _e1139011408_)))
                        (if (gx#stx-pair? _tl1139211413_)
                            (let ((_e1139311416_ (gx#stx-e _tl1139211413_)))
                              (let ((_hd1139411419_ (##car _e1139311416_))
                                    (_tl1139511421_ (##cdr _e1139311416_)))
                                (if (gx#stx-pair? _tl1139511421_)
                                    (let ((_e1139611424_
                                           (gx#stx-e _tl1139511421_)))
                                      (let ((_hd1139711427_
                                             (##car _e1139611424_))
                                            (_tl1139811429_
                                             (##cdr _e1139611424_)))
                                        (if (gx#stx-null? _tl1139811429_)
                                            ((lambda (_L11432_ _L11433_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11448_)
                                                  (if (gx#identifier?
                                                       _bind11448_)
                                                      (gxc#add-module-binding!
                                                       _bind11448_
                                                       '#f)
                                                      '#!void))
                                                _L11433_))
                                             _hd1139711427_
                                             _hd1139411419_)
                                            (_g1138611403_ _g1138711406_))))
                                    (_g1138611403_ _g1138711406_))))
                            (_g1138611403_ _g1138711406_))))
                    (_g1138611403_ _g1138711406_)))))
        (_g1138511450_ _stx11384_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11317_)
      (let* ((_g1131911336_
              (lambda (_g1132011333_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1132011333_)))
             (_g1131811381_
              (lambda (_g1132011339_)
                (if (gx#stx-pair? _g1132011339_)
                    (let ((_e1132311341_ (gx#stx-e _g1132011339_)))
                      (let ((_hd1132411344_ (##car _e1132311341_))
                            (_tl1132511346_ (##cdr _e1132311341_)))
                        (if (gx#stx-pair? _tl1132511346_)
                            (let ((_e1132611349_ (gx#stx-e _tl1132511346_)))
                              (let ((_hd1132711352_ (##car _e1132611349_))
                                    (_tl1132811354_ (##cdr _e1132611349_)))
                                (if (gx#stx-pair? _tl1132811354_)
                                    (let ((_e1132911357_
                                           (gx#stx-e _tl1132811354_)))
                                      (let ((_hd1133011360_
                                             (##car _e1132911357_))
                                            (_tl1133111362_
                                             (##cdr _e1132911357_)))
                                        (if (gx#stx-null? _tl1133111362_)
                                            ((lambda (_L11365_ _L11366_)
                                               (gxc#add-module-binding!
                                                _L11366_
                                                '#t))
                                             _hd1133011360_
                                             _hd1132711352_)
                                            (_g1131911336_ _g1132011339_))))
                                    (_g1131911336_ _g1132011339_))))
                            (_g1131911336_ _g1132011339_))))
                    (_g1131911336_ _g1132011339_)))))
        (_g1131811381_ _stx11317_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11259_ _modules11260_)
      (let* ((_g1126211276_
              (lambda (_g1126311273_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1126311273_)))
             (_g1126111314_
              (lambda (_g1126311279_)
                (if (gx#stx-pair? _g1126311279_)
                    (let ((_e1126611281_ (gx#stx-e _g1126311279_)))
                      (let ((_hd1126711284_ (##car _e1126611281_))
                            (_tl1126811286_ (##cdr _e1126611281_)))
                        (if (gx#stx-pair? _tl1126811286_)
                            (let ((_e1126911289_ (gx#stx-e _tl1126811286_)))
                              (let ((_hd1127011292_ (##car _e1126911289_))
                                    (_tl1127111294_ (##cdr _e1126911289_)))
                                ((lambda (_L11297_ _L11298_)
                                   (let ((_ctx11311_
                                          (gx#syntax-local-e__0 _L11298_)))
                                     (begin
                                       (set-box!
                                        _modules11260_
                                        (cons _ctx11311_
                                              (unbox _modules11260_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11311_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11260_))
                                        gx#current-expander-context
                                        _ctx11311_))))
                                 _tl1127111294_
                                 _hd1127011292_)))
                            (_g1126211276_ _g1126311279_))))
                    (_g1126211276_ _g1126311279_)))))
        (_g1126111314_ _stx11259_))))
  (define gxc#add-module-binding!
    (lambda (_id11253_ _syntax?11254_)
      (let ((_eid11256_
             (##structure-ref
              (gx#resolve-identifier__0 _id11253_)
              '1
              gx#binding::t
              '#f))
            (_ht11257_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11256_)
            '#!void
            (table-set!
             _ht11257_
             _eid11256_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11256_)
              _syntax?11254_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11234_)
      (let ((_bind11236_ (gx#resolve-identifier__0 _id11234_)))
        (if _bind11236_
            (let ((_eid11238_
                   (##structure-ref _bind11236_ '1 gx#binding::t '#f))
                  (_ht11239_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid11238_)
                  _eid11238_
                  (let ((_$e11241_ (table-ref _ht11239_ _eid11238_ '#f)))
                    (if _$e11241_
                        (values _$e11241_)
                        (if (##structure-instance-of?
                             _bind11236_
                             'gx#local-binding::t)
                            (let ((_gid11244_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid11238_)))
                              (begin
                                (table-set! _ht11239_ _eid11238_ _gid11244_)
                                _gid11244_))
                            (if (##structure-instance-of?
                                 _bind11236_
                                 'gx#module-binding::t)
                                (let ((_gid11251_
                                       (let ((_$e11246_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind11236_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e11246_
                                             ((lambda (_ns11249_)
                                                (make-symbol
                                                 _ns11249_
                                                 '"#"
                                                 _eid11238_))
                                              _$e11246_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid11238_)))))
                                  (begin
                                    (table-set!
                                     _ht11239_
                                     _eid11238_
                                     _gid11251_)
                                    _gid11251_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id11234_
                                 _eid11238_
                                 _bind11236_)))))))
            (if (interned-symbol? (gx#stx-e _id11234_))
                (gx#stx-e _id11234_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11234_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11232_)
      (if (gx#identifier? _id11232_)
          (gxc#generate-runtime-binding-id _id11232_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11212_ _quote?11213_)
        (let* ((_ht11215_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11217_ (table-ref _ht11215_ _sym11212_ '#f)))
          (if _$e11217_
              (values _$e11217_)
              (let ((_g11220_
                     (if _quote?11213_
                         (make-symbol
                          '"__"
                          _sym11212_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11212_ '"_"))))
                (begin
                  (table-set! _ht11215_ _sym11212_ _g11220_)
                  _g11220_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11225_)
          (let ((_quote?11227_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11225_
             _quote?11227_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12332_
          (let ((_g12331_ (length _g12332_)))
            (cond ((fx= _g12331_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12332_))
                  ((fx= _g12331_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12332_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12332_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11209_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11209_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11169_)
      (if (interned-symbol? _key11169_)
          _key11169_
          (if (uninterned-symbol? _key11169_)
              (gxc#generate-runtime-gensym-reference__0 _key11169_)
              (let* ((_key1117011177_ _key11169_)
                     (_E1117211181_
                      (lambda ()
                        (error '"No clause matching" _key1117011177_)))
                     (_K1117311197_
                      (lambda (_mark11184_ _eid11185_)
                        (let ((_$e11187_
                               (##structure-ref
                                _mark11184_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11187_
                              ((lambda (_ht11190_)
                                 (let ((_$e11192_
                                        (table-ref _ht11190_ _eid11185_ '#f)))
                                   (if _$e11192_
                                       ((lambda (_id11195_)
                                          (if (interned-symbol? _id11195_)
                                              _id11195_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11195_)))
                                        _$e11192_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11185_))))
                               _$e11187_)
                              (gxc#generate-runtime-identifier-key
                               _eid11185_))))))
                (if (##pair? _key1117011177_)
                    (let ((_hd1117411200_ (##car _key1117011177_))
                          (_tl1117511202_ (##cdr _key1117011177_)))
                      (let* ((_eid11205_ _hd1117411200_)
                             (_mark11207_ _tl1117511202_))
                        (_K1117311197_ _mark11207_ _eid11205_)))
                    (_E1117211181_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11156_)
        (if _top11156_
            (let ((_ns11158_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11159_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11159_)
                  (make-symbol
                   _ns11158_
                   '"["
                   (number->string _phi11159_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11158_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11165_ '#f))
            (gxc#generate-runtime-temporary__% _top11165_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12334_
          (let ((_g12333_ (length _g12334_)))
            (cond ((fx= _g12333_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12334_))
                  ((fx= _g12333_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12334_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12334_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11153_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11073_)
      (let* ((_g1107511085_
              (lambda (_g1107611082_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1107611082_)))
             (_g1107411150_
              (lambda (_g1107611088_)
                (if (gx#stx-pair? _g1107611088_)
                    (let ((_e1107811090_ (gx#stx-e _g1107611088_)))
                      (let ((_hd1107911093_ (##car _e1107811090_))
                            (_tl1108011095_ (##cdr _e1107811090_)))
                        ((lambda (_L11098_)
                           (let* ((_body11108_
                                   (gx#stx-map1 gxc#compile-e _L11098_))
                                  (_body11147_
                                   (filter (lambda (_stx11110_)
                                             (let* ((_g1111311122_
                                                     (lambda (_g1111411119_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1111411119_)))
                                                    (_g1111211129_
                                                     (lambda (_g1111411125_)
                                                       ((lambda () '#t))))
                                                    (_g1111111144_
                                                     (lambda (_g1111411132_)
                                                       (if (gx#stx-pair?
                                                            _g1111411132_)
                                                           (let ((_e1111511134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1111411132_)))
                     (let ((_hd1111611137_ (##car _e1111511134_))
                           (_tl1111711139_ (##cdr _e1111511134_)))
                       (if (gx#identifier? _hd1111611137_)
                           (if (gx#stx-eq? 'begin _hd1111611137_)
                               (if (gx#stx-null? _tl1111711139_)
                                   ((lambda () '#f))
                                   (_g1111211129_ _g1111411132_))
                               (_g1111211129_ _g1111411132_))
                           (_g1111211129_ _g1111411132_))))
                   (_g1111211129_ _g1111411132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1111111144_ _stx11110_)))
                                           _body11108_)))
                             (if (fx= (length _body11147_) '1)
                                 (car _body11147_)
                                 (cons 'begin _body11147_))))
                         _tl1108011095_)))
                    (_g1107511085_ _g1107611088_)))))
        (_g1107411150_ _stx11073_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11035_)
      (let* ((_g1103711047_
              (lambda (_g1103811044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1103811044_)))
             (_g1103611070_
              (lambda (_g1103811050_)
                (if (gx#stx-pair? _g1103811050_)
                    (let ((_e1104011052_ (gx#stx-e _g1103811050_)))
                      (let ((_hd1104111055_ (##car _e1104011052_))
                            (_tl1104211057_ (##cdr _e1104011052_)))
                        ((lambda (_L11060_)
                           (cons 'begin (gx#syntax->datum _L11060_)))
                         _tl1104211057_)))
                    (_g1103711047_ _g1103811050_)))))
        (_g1103611070_ _stx11035_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10968_)
      (let* ((_g1097010987_
              (lambda (_g1097110984_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1097110984_)))
             (_g1096911032_
              (lambda (_g1097110990_)
                (if (gx#stx-pair? _g1097110990_)
                    (let ((_e1097410992_ (gx#stx-e _g1097110990_)))
                      (let ((_hd1097510995_ (##car _e1097410992_))
                            (_tl1097610997_ (##cdr _e1097410992_)))
                        (if (gx#stx-pair? _tl1097610997_)
                            (let ((_e1097711000_ (gx#stx-e _tl1097610997_)))
                              (let ((_hd1097811003_ (##car _e1097711000_))
                                    (_tl1097911005_ (##cdr _e1097711000_)))
                                (if (gx#stx-pair? _tl1097911005_)
                                    (let ((_e1098011008_
                                           (gx#stx-e _tl1097911005_)))
                                      (let ((_hd1098111011_
                                             (##car _e1098011008_))
                                            (_tl1098211013_
                                             (##cdr _e1098011008_)))
                                        (if (gx#stx-null? _tl1098211013_)
                                            ((lambda (_L11016_ _L11017_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L11017_))
                   (cons (gxc#compile-e _L11016_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1098111011_
                                             _hd1097811003_)
                                            (_g1097010987_ _g1097110990_))))
                                    (_g1097010987_ _g1097110990_))))
                            (_g1097010987_ _g1097110990_))))
                    (_g1097010987_ _g1097110990_)))))
        (_g1096911032_ _stx10968_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10930_)
      (let* ((_g1093210942_
              (lambda (_g1093310939_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1093310939_)))
             (_g1093110965_
              (lambda (_g1093310945_)
                (if (gx#stx-pair? _g1093310945_)
                    (let ((_e1093510947_ (gx#stx-e _g1093310945_)))
                      (let ((_hd1093610950_ (##car _e1093510947_))
                            (_tl1093710952_ (##cdr _e1093510947_)))
                        ((lambda (_L10955_)
                           (cons 'declare (map gx#syntax->datum _L10955_)))
                         _tl1093710952_)))
                    (_g1093210942_ _g1093310945_)))))
        (_g1093110965_ _stx10930_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10686_)
      (let* ((_g1068810705_
              (lambda (_g1068910702_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1068910702_)))
             (_g1068710927_
              (lambda (_g1068910708_)
                (if (gx#stx-pair? _g1068910708_)
                    (let ((_e1069210710_ (gx#stx-e _g1068910708_)))
                      (let ((_hd1069310713_ (##car _e1069210710_))
                            (_tl1069410715_ (##cdr _e1069210710_)))
                        (if (gx#stx-pair? _tl1069410715_)
                            (let ((_e1069510718_ (gx#stx-e _tl1069410715_)))
                              (let ((_hd1069610721_ (##car _e1069510718_))
                                    (_tl1069710723_ (##cdr _e1069510718_)))
                                (if (gx#stx-pair? _tl1069710723_)
                                    (let ((_e1069810726_
                                           (gx#stx-e _tl1069710723_)))
                                      (let ((_hd1069910729_
                                             (##car _e1069810726_))
                                            (_tl1070010731_
                                             (##cdr _e1069810726_)))
                                        (if (gx#stx-null? _tl1070010731_)
                                            ((lambda (_L10734_ _L10735_)
                                               (let* ((_g1075210765_
                                                       (lambda (_g1075310762_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1075310762_)))
                                                      (_g1075110879_
                                                       (lambda (_g1075310768_)
                                                         ((lambda ()
                                                            (let* ((_tmp10772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body10876_
                            (let _lp10774_ ((_rest10776_ _L10735_)
                                            (_k10777_ '0)
                                            (_r10778_ '()))
                              (let* ((_g1078310799_
                                      (lambda (_g1078410796_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1078410796_)))
                                     (_g1078210806_
                                      (lambda (_g1078410802_)
                                        ((lambda () (reverse _r10778_)))))
                                     (_g1078110827_
                                      (lambda (_g1078410809_)
                                        ((lambda (_L10811_)
                                           (if (gx#identifier? _L10811_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10811_)
                                 (cons (cons 'values->list
                                             (cons _tmp10772_
                                                   (cons _k10777_ '())))
                                       '())))
                     '())
               _r10778_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1078210806_ _g1078410809_)))
                                         _g1078410809_)))
                                     (_g1078010851_
                                      (lambda (_g1078410830_)
                                        (if (gx#stx-pair? _g1078410830_)
                                            (let ((_e1079110832_
                                                   (gx#stx-e _g1078410830_)))
                                              (let ((_hd1079210835_
                                                     (##car _e1079110832_))
                                                    (_tl1079310837_
                                                     (##cdr _e1079110832_)))
                                                ((lambda (_L10840_ _L10841_)
                                                   (_lp10774_
                                                    _L10840_
                                                    (fx+ _k10777_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10841_)
                              (cons (cons 'values-ref
                                          (cons _tmp10772_
                                                (cons _k10777_ '())))
                                    '())))
                  _r10778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1079310837_
                                                 _hd1079210835_)))
                                            (_g1078110827_ _g1078410830_))))
                                     (_g1077910873_
                                      (lambda (_g1078410854_)
                                        (if (gx#stx-pair? _g1078410854_)
                                            (let ((_e1078610856_
                                                   (gx#stx-e _g1078410854_)))
                                              (let ((_hd1078710859_
                                                     (##car _e1078610856_))
                                                    (_tl1078810861_
                                                     (##cdr _e1078610856_)))
                                                (if (gx#stx-datum?
                                                     _hd1078710859_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1078710859_)
                        '#f)
                ((lambda (_L10864_)
                   (_lp10774_ _L10864_ (fx+ _k10777_ '1) _r10778_))
                 _tl1078810861_)
                (_g1078010851_ _g1078410854_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1078010851_
                                                     _g1078410854_))))
                                            (_g1078010851_ _g1078410854_)))))
                                (_g1077910873_ _rest10776_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10772_
                                              (cons (gxc#compile-e _L10734_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10772_
                                         _L10735_)
                                        _body10876_))))))))
              (_g1075010909_
               (lambda (_g1075310882_)
                 (if (gx#stx-pair? _g1075310882_)
                     (let ((_e1075810884_ (gx#stx-e _g1075310882_)))
                       (let ((_hd1075910887_ (##car _e1075810884_))
                             (_tl1076010889_ (##cdr _e1075810884_)))
                         (if (gx#stx-null? _tl1076010889_)
                             ((lambda (_L10892_)
                                (let ((_eid10901_
                                       (gxc#generate-runtime-binding-id
                                        _L10892_)))
                                  (begin
                                    (let ((_lambda-expr1090210904_
                                           (gxc#apply-find-lambda-expression
                                            _L10734_)))
                                      (if _lambda-expr1090210904_
                                          (let ((_lambda-expr10907_
                                                 _lambda-expr1090210904_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10907_
                                             _eid10901_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10901_
                                                (cons (gxc#compile-e _L10734_)
                                                      '()))))))
                              _hd1075910887_)
                             (_g1075110879_ _g1075310882_))))
                     (_g1075110879_ _g1075310882_))))
              (_g1074910924_
               (lambda (_g1075310912_)
                 (if (gx#stx-pair? _g1075310912_)
                     (let ((_e1075410914_ (gx#stx-e _g1075310912_)))
                       (let ((_hd1075510917_ (##car _e1075410914_))
                             (_tl1075610919_ (##cdr _e1075410914_)))
                         (if (gx#stx-datum? _hd1075510917_)
                             (if (equal? (gx#stx-e _hd1075510917_) '#f)
                                 (if (gx#stx-null? _tl1075610919_)
                                     ((lambda () (gxc#compile-e _L10734_)))
                                     (_g1075010909_ _g1075310912_))
                                 (_g1075010909_ _g1075310912_))
                             (_g1075010909_ _g1075310912_))))
                     (_g1075010909_ _g1075310912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1074910924_ _L10735_)))
                                             _hd1069910729_
                                             _hd1069610721_)
                                            (_g1068810705_ _g1068910708_))))
                                    (_g1068810705_ _g1068910708_))))
                            (_g1068810705_ _g1068910708_))))
                    (_g1068810705_ _g1068910708_)))))
        (_g1068710927_ _stx10686_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10674_ _hd10675_)
      (let* ((_len10677_ (gx#stx-length _hd10675_))
             (_cmp10679_ (if (gx#stx-list? _hd10675_) 'fx= 'fx>=))
             (_errmsg10681_
              (string-append
               (if (gx#stx-list? _hd10675_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10677_)
               '" values"))
             (_count10683_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10675_)) (fx= _len10677_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10683_
                                    (cons (cons 'values-count
                                                (cons _vals10674_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10679_
                                                            (cons _count10683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10677_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10681_
                                                            (cons _count10683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10607_)
      (let* ((_g1060910626_
              (lambda (_g1061010623_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1061010623_)))
             (_g1060810671_
              (lambda (_g1061010629_)
                (if (gx#stx-pair? _g1061010629_)
                    (let ((_e1061310631_ (gx#stx-e _g1061010629_)))
                      (let ((_hd1061410634_ (##car _e1061310631_))
                            (_tl1061510636_ (##cdr _e1061310631_)))
                        (if (gx#stx-pair? _tl1061510636_)
                            (let ((_e1061610639_ (gx#stx-e _tl1061510636_)))
                              (let ((_hd1061710642_ (##car _e1061610639_))
                                    (_tl1061810644_ (##cdr _e1061610639_)))
                                (if (gx#stx-pair? _tl1061810644_)
                                    (let ((_e1061910647_
                                           (gx#stx-e _tl1061810644_)))
                                      (let ((_hd1062010650_
                                             (##car _e1061910647_))
                                            (_tl1062110652_
                                             (##cdr _e1061910647_)))
                                        (if (gx#stx-null? _tl1062110652_)
                                            ((lambda (_L10655_ _L10656_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10656_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10655_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1062010650_
                                             _hd1061710642_)
                                            (_g1060910626_ _g1061010629_))))
                                    (_g1060910626_ _g1061010629_))))
                            (_g1060910626_ _g1061010629_))))
                    (_g1060910626_ _g1061010629_)))))
        (_g1060810671_ _stx10607_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10605_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10605_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9138_)
      (letrec ((_runtime-identifier=?9140_
                (lambda (_id-stx10596_ _sym10597_)
                  (let ((_bind1059810600_
                         (gx#resolve-identifier__0 _id-stx10596_)))
                    (if _bind1059810600_
                        (let ((_bind10603_ _bind1059810600_))
                          (eq? (##structure-ref
                                _bind10603_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10597_))
                        '#f))))
               (_dispatch-case?9141_
                (lambda (_hd9826_ _body9827_)
                  (let* ((_form9829_ (cons _hd9826_ (cons _body9827_ '())))
                         (_g98349991_
                          (lambda (_g98359988_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g98359988_)))
                         (_g98339998_ (lambda (_g98359994_) ((lambda () '#f))))
                         (_g983210139_
                          (lambda (_g983510001_)
                            (if (gx#stx-pair? _g983510001_)
                                (let ((_e995110003_ (gx#stx-e _g983510001_)))
                                  (let ((_hd995210006_ (##car _e995110003_))
                                        (_tl995310008_ (##cdr _e995110003_)))
                                    (if (gx#stx-pair? _tl995310008_)
                                        (let ((_e995410011_
                                               (gx#stx-e _tl995310008_)))
                                          (let ((_hd995510014_
                                                 (##car _e995410011_))
                                                (_tl995610016_
                                                 (##cdr _e995410011_)))
                                            (if (gx#stx-pair? _hd995510014_)
                                                (let ((_e995710019_
                                                       (gx#stx-e
                                                        _hd995510014_)))
                                                  (let ((_hd995810022_
                                                         (##car _e995710019_))
                                                        (_tl995910024_
                                                         (##cdr _e995710019_)))
                                                    (if (gx#identifier?
                                                         _hd995810022_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd995810022_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl995910024_)
                        (let ((_e996010027_ (gx#stx-e _tl995910024_)))
                          (let ((_hd996110030_ (##car _e996010027_))
                                (_tl996210032_ (##cdr _e996010027_)))
                            (if (gx#stx-pair? _hd996110030_)
                                (let ((_e996310035_ (gx#stx-e _hd996110030_)))
                                  (let ((_hd996410038_ (##car _e996310035_))
                                        (_tl996510040_ (##cdr _e996310035_)))
                                    (if (gx#identifier? _hd996410038_)
                                        (if (gx#stx-eq? '%#ref _hd996410038_)
                                            (if (gx#stx-pair? _tl996510040_)
                                                (let ((_e996610043_
                                                       (gx#stx-e
                                                        _tl996510040_)))
                                                  (let ((_hd996710046_
                                                         (##car _e996610043_))
                                                        (_tl996810048_
                                                         (##cdr _e996610043_)))
                                                    (if (gx#stx-null?
                                                         _tl996810048_)
                                                        (if (gx#stx-pair?
                                                             _tl996210032_)
                                                            (let ((_e996910051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl996210032_)))
                      (let ((_hd997010054_ (##car _e996910051_))
                            (_tl997110056_ (##cdr _e996910051_)))
                        (if (gx#stx-pair? _hd997010054_)
                            (let ((_e997210059_ (gx#stx-e _hd997010054_)))
                              (let ((_hd997310062_ (##car _e997210059_))
                                    (_tl997410064_ (##cdr _e997210059_)))
                                (if (gx#identifier? _hd997310062_)
                                    (if (gx#stx-eq? '%#ref _hd997310062_)
                                        (if (gx#stx-pair? _tl997410064_)
                                            (let ((_e997510067_
                                                   (gx#stx-e _tl997410064_)))
                                              (let ((_hd997610070_
                                                     (##car _e997510067_))
                                                    (_tl997710072_
                                                     (##cdr _e997510067_)))
                                                (if (gx#stx-null?
                                                     _tl997710072_)
                                                    (if (gx#stx-pair?
                                                         _tl997110056_)
                                                        (let ((_e997810075_
                                                               (gx#stx-e
                                                                _tl997110056_)))
                                                          (let ((_hd997910078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e997810075_))
                        (_tl998010080_ (##cdr _e997810075_)))
                    (if (gx#stx-pair? _hd997910078_)
                        (let ((_e998110083_ (gx#stx-e _hd997910078_)))
                          (let ((_hd998210086_ (##car _e998110083_))
                                (_tl998310088_ (##cdr _e998110083_)))
                            (if (gx#identifier? _hd998210086_)
                                (if (gx#stx-eq? '%#ref _hd998210086_)
                                    (if (gx#stx-pair? _tl998310088_)
                                        (let ((_e998410091_
                                               (gx#stx-e _tl998310088_)))
                                          (let ((_hd998510094_
                                                 (##car _e998410091_))
                                                (_tl998610096_
                                                 (##cdr _e998410091_)))
                                            (if (gx#stx-null? _tl998610096_)
                                                (if (gx#stx-null?
                                                     _tl998010080_)
                                                    (if (gx#stx-null?
                                                         _tl995610016_)
                                                        ((lambda (_L10099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10100_
                          _L10101_
                          _L10102_)
                   (if (if (gx#identifier? _L10102_)
                           (if (_runtime-identifier=?9140_ _L10101_ 'apply)
                               (if (gx#free-identifier=? _L10102_ _L10099_)
                                   (not (gx#free-identifier=?
                                         _L10100_
                                         _L10102_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g98339998_ _g983510001_)))
                 _hd998510094_
                 _hd997610070_
                 _hd996710046_
                 _hd995210006_)
                (_g98339998_ _g983510001_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98339998_ _g983510001_))
                                                (_g98339998_ _g983510001_))))
                                        (_g98339998_ _g983510001_))
                                    (_g98339998_ _g983510001_))
                                (_g98339998_ _g983510001_))))
                        (_g98339998_ _g983510001_))))
                (_g98339998_ _g983510001_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98339998_
                                                     _g983510001_))))
                                            (_g98339998_ _g983510001_))
                                        (_g98339998_ _g983510001_))
                                    (_g98339998_ _g983510001_))))
                            (_g98339998_ _g983510001_))))
                    (_g98339998_ _g983510001_))
                (_g98339998_ _g983510001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98339998_ _g983510001_))
                                            (_g98339998_ _g983510001_))
                                        (_g98339998_ _g983510001_))))
                                (_g98339998_ _g983510001_))))
                        (_g98339998_ _g983510001_))
                    (_g98339998_ _g983510001_))
                (_g98339998_ _g983510001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98339998_ _g983510001_))))
                                        (_g98339998_ _g983510001_))))
                                (_g98339998_ _g983510001_))))
                         (_g983110399_
                          (lambda (_g983510142_)
                            (if (gx#stx-pair? _g983510142_)
                                (let ((_e988710144_ (gx#stx-e _g983510142_)))
                                  (let ((_hd988810147_ (##car _e988710144_))
                                        (_tl988910149_ (##cdr _e988710144_)))
                                    (if (gx#stx-pair/null? _hd988810147_)
                                        (if (fx>= (gx#stx-length _hd988810147_)
                                                  '0)
                                            (let ((_g12335_
                                                   (gx#syntax-split-splice
                                                    _hd988810147_
                                                    '0)))
                                              (begin
                                                (let ((_g12336_
                                                       (values-count
                                                        _g12335_)))
                                                  (if (not (fx= _g12336_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12336_)))
                                                (let ((_target989010152_
                                                       (values-ref _g12335_ 0))
                                                      (_tl989210154_
                                                       (values-ref
                                                        _g12335_
                                                        1)))
                                                  (letrec ((_loop989310157_
                                                            (lambda (_hd989110160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg989710162_)
                      (if (gx#stx-pair? _hd989110160_)
                          (let ((_e989410165_ (gx#stx-e _hd989110160_)))
                            (let ((_lp-hd989510168_ (##car _e989410165_))
                                  (_lp-tl989610170_ (##cdr _e989410165_)))
                              (_loop989310157_
                               _lp-tl989610170_
                               (cons _lp-hd989510168_ _arg989710162_))))
                          (let ((_arg989810173_ (reverse _arg989710162_)))
                            (if (gx#stx-pair? _tl988910149_)
                                (let ((_e989910176_ (gx#stx-e _tl988910149_)))
                                  (let ((_hd990010179_ (##car _e989910176_))
                                        (_tl990110181_ (##cdr _e989910176_)))
                                    (if (gx#stx-pair? _hd990010179_)
                                        (let ((_e990210184_
                                               (gx#stx-e _hd990010179_)))
                                          (let ((_hd990310187_
                                                 (##car _e990210184_))
                                                (_tl990410189_
                                                 (##cdr _e990210184_)))
                                            (if (gx#identifier? _hd990310187_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd990310187_)
                                                    (if (gx#stx-pair?
                                                         _tl990410189_)
                                                        (let ((_e990510192_
                                                               (gx#stx-e
                                                                _tl990410189_)))
                                                          (let ((_hd990610195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e990510192_))
                        (_tl990710197_ (##cdr _e990510192_)))
                    (if (gx#stx-pair? _hd990610195_)
                        (let ((_e990810200_ (gx#stx-e _hd990610195_)))
                          (let ((_hd990910203_ (##car _e990810200_))
                                (_tl991010205_ (##cdr _e990810200_)))
                            (if (gx#identifier? _hd990910203_)
                                (if (gx#stx-eq? '%#ref _hd990910203_)
                                    (if (gx#stx-pair? _tl991010205_)
                                        (let ((_e991110208_
                                               (gx#stx-e _tl991010205_)))
                                          (let ((_hd991210211_
                                                 (##car _e991110208_))
                                                (_tl991310213_
                                                 (##cdr _e991110208_)))
                                            (if (gx#stx-null? _tl991310213_)
                                                (if (gx#stx-pair?
                                                     _tl990710197_)
                                                    (let ((_e991410216_
                                                           (gx#stx-e
                                                            _tl990710197_)))
                                                      (let ((_hd991510219_
                                                             (##car _e991410216_))
                                                            (_tl991610221_
                                                             (##cdr _e991410216_)))
                                                        (if (gx#stx-pair?
                                                             _hd991510219_)
                                                            (let ((_e991710224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd991510219_)))
                      (let ((_hd991810227_ (##car _e991710224_))
                            (_tl991910229_ (##cdr _e991710224_)))
                        (if (gx#identifier? _hd991810227_)
                            (if (gx#stx-eq? '%#ref _hd991810227_)
                                (if (gx#stx-pair? _tl991910229_)
                                    (let ((_e992010232_
                                           (gx#stx-e _tl991910229_)))
                                      (let ((_hd992110235_
                                             (##car _e992010232_))
                                            (_tl992210237_
                                             (##cdr _e992010232_)))
                                        (if (gx#stx-null? _tl992210237_)
                                            (if (gx#stx-pair/null?
                                                 _tl991610221_)
                                                (if (fx>= (gx#stx-length
                                                           _tl991610221_)
                                                          '1)
                                                    (let ((_g12337_
                                                           (gx#syntax-split-splice
                                                            _tl991610221_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12338_
                                                               (values-count
                                                                _g12337_)))
                                                          (if (not (fx= _g12338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12338_)))
                (let ((_target992310240_ (values-ref _g12337_ 0))
                      (_tl992510242_ (values-ref _g12337_ 1)))
                  (if (gx#stx-pair? _tl992510242_)
                      (let ((_e993210245_ (gx#stx-e _tl992510242_)))
                        (let ((_hd993310248_ (##car _e993210245_))
                              (_tl993410250_ (##cdr _e993210245_)))
                          (if (gx#stx-pair? _hd993310248_)
                              (let ((_e993510253_ (gx#stx-e _hd993310248_)))
                                (let ((_hd993610256_ (##car _e993510253_))
                                      (_tl993710258_ (##cdr _e993510253_)))
                                  (if (gx#identifier? _hd993610256_)
                                      (if (gx#stx-eq? '%#ref _hd993610256_)
                                          (if (gx#stx-pair? _tl993710258_)
                                              (let ((_e993810261_
                                                     (gx#stx-e _tl993710258_)))
                                                (let ((_hd993910264_
                                                       (##car _e993810261_))
                                                      (_tl994010266_
                                                       (##cdr _e993810261_)))
                                                  (if (gx#stx-null?
                                                       _tl994010266_)
                                                      (if (gx#stx-null?
                                                           _tl993410250_)
                                                          (letrec ((_loop992610269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd992410272_ _xarg993010274_)
                              (if (gx#stx-pair? _hd992410272_)
                                  (let ((_e992710277_
                                         (gx#stx-e _hd992410272_)))
                                    (let ((_lp-hd992810280_
                                           (##car _e992710277_))
                                          (_lp-tl992910282_
                                           (##cdr _e992710277_)))
                                      (if (gx#stx-pair? _lp-hd992810280_)
                                          (let ((_e994110285_
                                                 (gx#stx-e _lp-hd992810280_)))
                                            (let ((_hd994210288_
                                                   (##car _e994110285_))
                                                  (_tl994310290_
                                                   (##cdr _e994110285_)))
                                              (if (gx#identifier?
                                                   _hd994210288_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd994210288_)
                                                      (if (gx#stx-pair?
                                                           _tl994310290_)
                                                          (let ((_e994410293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl994310290_)))
                    (let ((_hd994510296_ (##car _e994410293_))
                          (_tl994610298_ (##cdr _e994410293_)))
                      (if (gx#stx-null? _tl994610298_)
                          (_loop992610269_
                           _lp-tl992910282_
                           (cons _hd994510296_ _xarg993010274_))
                          (_g983210139_ _g983510142_))))
                  (_g983210139_ _g983510142_))
              (_g983210139_ _g983510142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g983210139_
                                                   _g983510142_))))
                                          (_g983210139_ _g983510142_))))
                                  (let ((_xarg993110301_
                                         (reverse _xarg993010274_)))
                                    (if (gx#stx-null? _tl990110181_)
                                        ((lambda (_L10304_
                                                  _L10305_
                                                  _L10306_
                                                  _L10307_
                                                  _L10308_
                                                  _L10309_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1035210355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1035310357_)
                        (cons _g1035210355_ _g1035310357_))
                      '()
                      _L10309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10308_)
                                                       (if (_runtime-identifier=?9140_
                                                            _L10307_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1035910362_
                                                       _g1036010364_)
                                                (cons _g1035910362_
                                                      _g1036010364_))
                                              '()
                                              _L10309_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1036610369_
                                                       _g1036710371_)
                                                (cons _g1036610369_
                                                      _g1036710371_))
                                              '()
                                              _L10305_))))
                       (if (andmap2 gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1037310376_
                                                       _g1037410378_)
                                                (cons _g1037310376_
                                                      _g1037410378_))
                                              '()
                                              _L10309_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1038010383_
                                                       _g1038110385_)
                                                (cons _g1038010383_
                                                      _g1038110385_))
                                              '()
                                              _L10305_)))
                           (if (gx#free-identifier=? _L10308_ _L10304_)
                               (not (find (lambda (_g1038710389_)
                                            (gx#free-identifier=?
                                             _g1038710389_
                                             _L10306_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1039110394_
                                                             _g1039210396_)
                                                      (cons _g1039110394_
                                                            _g1039210396_))
                                                    (cons _L10308_ '())
                                                    _L10309_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g983210139_ _g983510142_)))
                                         _hd993910264_
                                         _xarg993110301_
                                         _hd992110235_
                                         _hd991210211_
                                         _tl989210154_
                                         _arg989810173_)
                                        (_g983210139_ _g983510142_)))))))
                    (_loop992610269_ _target992310240_ '()))
                  (_g983210139_ _g983510142_))
              (_g983210139_ _g983510142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g983210139_ _g983510142_))
                                          (_g983210139_ _g983510142_))
                                      (_g983210139_ _g983510142_))))
                              (_g983210139_ _g983510142_))))
                      (_g983210139_ _g983510142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g983210139_
                                                     _g983510142_))
                                                (_g983210139_ _g983510142_))
                                            (_g983210139_ _g983510142_))))
                                    (_g983210139_ _g983510142_))
                                (_g983210139_ _g983510142_))
                            (_g983210139_ _g983510142_))))
                    (_g983210139_ _g983510142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g983210139_
                                                     _g983510142_))
                                                (_g983210139_ _g983510142_))))
                                        (_g983210139_ _g983510142_))
                                    (_g983210139_ _g983510142_))
                                (_g983210139_ _g983510142_))))
                        (_g983210139_ _g983510142_))))
                (_g983210139_ _g983510142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g983210139_
                                                     _g983510142_))
                                                (_g983210139_ _g983510142_))))
                                        (_g983210139_ _g983510142_))))
                                (_g983210139_ _g983510142_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop989310157_
                                                     _target989010152_
                                                     '())))))
                                            (_g983210139_ _g983510142_))
                                        (_g983210139_ _g983510142_))))
                                (_g983210139_ _g983510142_))))
                         (_g983010593_
                          (lambda (_g983510402_)
                            (if (gx#stx-pair? _g983510402_)
                                (let ((_e983910404_ (gx#stx-e _g983510402_)))
                                  (let ((_hd984010407_ (##car _e983910404_))
                                        (_tl984110409_ (##cdr _e983910404_)))
                                    (if (gx#stx-pair/null? _hd984010407_)
                                        (if (fx>= (gx#stx-length _hd984010407_)
                                                  '0)
                                            (let ((_g12339_
                                                   (gx#syntax-split-splice
                                                    _hd984010407_
                                                    '0)))
                                              (begin
                                                (let ((_g12340_
                                                       (values-count
                                                        _g12339_)))
                                                  (if (not (fx= _g12340_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12340_)))
                                                (let ((_target984210412_
                                                       (values-ref _g12339_ 0))
                                                      (_tl984410414_
                                                       (values-ref
                                                        _g12339_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl984410414_)
                                                      (letrec ((_loop984510417_
                                                                (lambda (_hd984310420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg984910422_)
                          (if (gx#stx-pair? _hd984310420_)
                              (let ((_e984610425_ (gx#stx-e _hd984310420_)))
                                (let ((_lp-hd984710428_ (##car _e984610425_))
                                      (_lp-tl984810430_ (##cdr _e984610425_)))
                                  (_loop984510417_
                                   _lp-tl984810430_
                                   (cons _lp-hd984710428_ _arg984910422_))))
                              (let ((_arg985010433_ (reverse _arg984910422_)))
                                (if (gx#stx-pair? _tl984110409_)
                                    (let ((_e985110436_
                                           (gx#stx-e _tl984110409_)))
                                      (let ((_hd985210439_
                                             (##car _e985110436_))
                                            (_tl985310441_
                                             (##cdr _e985110436_)))
                                        (if (gx#stx-pair? _hd985210439_)
                                            (let ((_e985410444_
                                                   (gx#stx-e _hd985210439_)))
                                              (let ((_hd985510447_
                                                     (##car _e985410444_))
                                                    (_tl985610449_
                                                     (##cdr _e985410444_)))
                                                (if (gx#identifier?
                                                     _hd985510447_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd985510447_)
                                                        (if (gx#stx-pair?
                                                             _tl985610449_)
                                                            (let ((_e985710452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl985610449_)))
                      (let ((_hd985810455_ (##car _e985710452_))
                            (_tl985910457_ (##cdr _e985710452_)))
                        (if (gx#stx-pair? _hd985810455_)
                            (let ((_e986010460_ (gx#stx-e _hd985810455_)))
                              (let ((_hd986110463_ (##car _e986010460_))
                                    (_tl986210465_ (##cdr _e986010460_)))
                                (if (gx#identifier? _hd986110463_)
                                    (if (gx#stx-eq? '%#ref _hd986110463_)
                                        (if (gx#stx-pair? _tl986210465_)
                                            (let ((_e986310468_
                                                   (gx#stx-e _tl986210465_)))
                                              (let ((_hd986410471_
                                                     (##car _e986310468_))
                                                    (_tl986510473_
                                                     (##cdr _e986310468_)))
                                                (if (gx#stx-null?
                                                     _tl986510473_)
                                                    (if (gx#stx-pair/null?
                                                         _tl985910457_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl985910457_)
                          '0)
                    (let ((_g12341_ (gx#syntax-split-splice _tl985910457_ '0)))
                      (begin
                        (let ((_g12342_ (values-count _g12341_)))
                          (if (not (fx= _g12342_ 2))
                              (error "Context expects 2 values" _g12342_)))
                        (let ((_target986610476_ (values-ref _g12341_ 0))
                              (_tl986810478_ (values-ref _g12341_ 1)))
                          (if (gx#stx-null? _tl986810478_)
                              (letrec ((_loop986910481_
                                        (lambda (_hd986710484_ _xarg987310486_)
                                          (if (gx#stx-pair? _hd986710484_)
                                              (let ((_e987010489_
                                                     (gx#stx-e _hd986710484_)))
                                                (let ((_lp-hd987110492_
                                                       (##car _e987010489_))
                                                      (_lp-tl987210494_
                                                       (##cdr _e987010489_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd987110492_)
                                                      (let ((_e987510497_
                                                             (gx#stx-e
                                                              _lp-hd987110492_)))
                                                        (let ((_hd987610500_
                                                               (##car _e987510497_))
                                                              (_tl987710502_
                                                               (##cdr _e987510497_)))
                                                          (if (gx#identifier?
                                                               _hd987610500_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd987610500_)
                          (if (gx#stx-pair? _tl987710502_)
                              (let ((_e987810505_ (gx#stx-e _tl987710502_)))
                                (let ((_hd987910508_ (##car _e987810505_))
                                      (_tl988010510_ (##cdr _e987810505_)))
                                  (if (gx#stx-null? _tl988010510_)
                                      (_loop986910481_
                                       _lp-tl987210494_
                                       (cons _hd987910508_ _xarg987310486_))
                                      (_g983110399_ _g983510402_))))
                              (_g983110399_ _g983510402_))
                          (_g983110399_ _g983510402_))
                      (_g983110399_ _g983510402_))))
              (_g983110399_ _g983510402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg987410513_
                                                     (reverse _xarg987310486_)))
                                                (if (gx#stx-null?
                                                     _tl985310441_)
                                                    ((lambda (_L10516_
                                                              _L10517_
                                                              _L10518_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1054610549_ _g1054710551_)
                                    (cons _g1054610549_ _g1054710551_))
                                  '()
                                  _L10518_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1055310556_
                                                           _g1055410558_)
                                                    (cons _g1055310556_
                                                          _g1055410558_))
                                                  '()
                                                  _L10518_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1056010563_
                                                           _g1056110565_)
                                                    (cons _g1056010563_
                                                          _g1056110565_))
                                                  '()
                                                  _L10516_))))
                           (if (andmap2 gx#free-identifier=?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1056710570_
                                                           _g1056810572_)
                                                    (cons _g1056710570_
                                                          _g1056810572_))
                                                  '()
                                                  _L10518_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1057410577_
                                                           _g1057510579_)
                                                    (cons _g1057410577_
                                                          _g1057510579_))
                                                  '()
                                                  _L10516_)))
                               (not (find (lambda (_g1058110583_)
                                            (gx#free-identifier=?
                                             _g1058110583_
                                             _L10517_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1058510588_
                                                             _g1058610590_)
                                                      (cons _g1058510588_
                                                            _g1058610590_))
                                                    '()
                                                    _L10518_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g983110399_ _g983510402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg987410513_
                                                     _hd986410471_
                                                     _arg985010433_)
                                                    (_g983110399_
                                                     _g983510402_)))))))
                                (_loop986910481_ _target986610476_ '()))
                              (_g983110399_ _g983510402_)))))
                    (_g983110399_ _g983510402_))
                (_g983110399_ _g983510402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g983110399_
                                                     _g983510402_))))
                                            (_g983110399_ _g983510402_))
                                        (_g983110399_ _g983510402_))
                                    (_g983110399_ _g983510402_))))
                            (_g983110399_ _g983510402_))))
                    (_g983110399_ _g983510402_))
                (_g983110399_ _g983510402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g983110399_
                                                     _g983510402_))))
                                            (_g983110399_ _g983510402_))))
                                    (_g983110399_ _g983510402_)))))))
                (_loop984510417_ _target984210412_ '()))
              (_g983110399_ _g983510402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g983110399_ _g983510402_))
                                        (_g983110399_ _g983510402_))))
                                (_g983110399_ _g983510402_)))))
                    (_g983010593_ _form9829_))))
               (_dispatch-case-e9142_
                (lambda (_hd9290_ _body9291_)
                  (let* ((_form9293_ (cons _hd9290_ (cons _body9291_ '())))
                         (_g92979421_
                          (lambda (_g92989418_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g92989418_)))
                         (_g92969539_
                          (lambda (_g92989424_)
                            (if (gx#stx-pair? _g92989424_)
                                (let ((_e93879426_ (gx#stx-e _g92989424_)))
                                  (let ((_hd93889429_ (##car _e93879426_))
                                        (_tl93899431_ (##cdr _e93879426_)))
                                    (if (gx#stx-pair? _tl93899431_)
                                        (let ((_e93909434_
                                               (gx#stx-e _tl93899431_)))
                                          (let ((_hd93919437_
                                                 (##car _e93909434_))
                                                (_tl93929439_
                                                 (##cdr _e93909434_)))
                                            (if (gx#stx-pair? _hd93919437_)
                                                (let ((_e93939442_
                                                       (gx#stx-e
                                                        _hd93919437_)))
                                                  (let ((_hd93949445_
                                                         (##car _e93939442_))
                                                        (_tl93959447_
                                                         (##cdr _e93939442_)))
                                                    (if (gx#identifier?
                                                         _hd93949445_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd93949445_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93959447_)
                        (let ((_e93969450_ (gx#stx-e _tl93959447_)))
                          (let ((_hd93979453_ (##car _e93969450_))
                                (_tl93989455_ (##cdr _e93969450_)))
                            (if (gx#stx-pair? _hd93979453_)
                                (let ((_e93999458_ (gx#stx-e _hd93979453_)))
                                  (let ((_hd94009461_ (##car _e93999458_))
                                        (_tl94019463_ (##cdr _e93999458_)))
                                    (if (gx#identifier? _hd94009461_)
                                        (if (gx#stx-eq? '%#ref _hd94009461_)
                                            (if (gx#stx-pair? _tl94019463_)
                                                (let ((_e94029466_
                                                       (gx#stx-e
                                                        _tl94019463_)))
                                                  (let ((_hd94039469_
                                                         (##car _e94029466_))
                                                        (_tl94049471_
                                                         (##cdr _e94029466_)))
                                                    (if (gx#stx-null?
                                                         _tl94049471_)
                                                        (if (gx#stx-pair?
                                                             _tl93989455_)
                                                            (let ((_e94059474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl93989455_)))
                      (let ((_hd94069477_ (##car _e94059474_))
                            (_tl94079479_ (##cdr _e94059474_)))
                        (if (gx#stx-pair? _hd94069477_)
                            (let ((_e94089482_ (gx#stx-e _hd94069477_)))
                              (let ((_hd94099485_ (##car _e94089482_))
                                    (_tl94109487_ (##cdr _e94089482_)))
                                (if (gx#identifier? _hd94099485_)
                                    (if (gx#stx-eq? '%#ref _hd94099485_)
                                        (if (gx#stx-pair? _tl94109487_)
                                            (let ((_e94119490_
                                                   (gx#stx-e _tl94109487_)))
                                              (let ((_hd94129493_
                                                     (##car _e94119490_))
                                                    (_tl94139495_
                                                     (##cdr _e94119490_)))
                                                (if (gx#stx-null? _tl94139495_)
                                                    (if (gx#stx-pair?
                                                         _tl94079479_)
                                                        (let ((_e94149498_
                                                               (gx#stx-e
                                                                _tl94079479_)))
                                                          (let ((_hd94159501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e94149498_))
                        (_tl94169503_ (##cdr _e94149498_)))
                    (if (gx#stx-null? _tl94169503_)
                        (if (gx#stx-null? _tl93929439_)
                            ((lambda (_L9506_ _L9507_ _L9508_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9506_ '()))))
                             _hd94129493_
                             _hd94039469_
                             _hd93889429_)
                            (_g92979421_ _g92989424_))
                        (_g92979421_ _g92989424_))))
                (_g92979421_ _g92989424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92979421_
                                                     _g92989424_))))
                                            (_g92979421_ _g92989424_))
                                        (_g92979421_ _g92989424_))
                                    (_g92979421_ _g92989424_))))
                            (_g92979421_ _g92989424_))))
                    (_g92979421_ _g92989424_))
                (_g92979421_ _g92989424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g92979421_ _g92989424_))
                                            (_g92979421_ _g92989424_))
                                        (_g92979421_ _g92989424_))))
                                (_g92979421_ _g92989424_))))
                        (_g92979421_ _g92989424_))
                    (_g92979421_ _g92989424_))
                (_g92979421_ _g92989424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g92979421_ _g92989424_))))
                                        (_g92979421_ _g92989424_))))
                                (_g92979421_ _g92989424_))))
                         (_g92959675_
                          (lambda (_g92989542_)
                            (if (gx#stx-pair? _g92989542_)
                                (let ((_e93489544_ (gx#stx-e _g92989542_)))
                                  (let ((_hd93499547_ (##car _e93489544_))
                                        (_tl93509549_ (##cdr _e93489544_)))
                                    (if (gx#stx-pair/null? _hd93499547_)
                                        (if (fx>= (gx#stx-length _hd93499547_)
                                                  '0)
                                            (let ((_g12343_
                                                   (gx#syntax-split-splice
                                                    _hd93499547_
                                                    '0)))
                                              (begin
                                                (let ((_g12344_
                                                       (values-count
                                                        _g12343_)))
                                                  (if (not (fx= _g12344_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12344_)))
                                                (let ((_target93519552_
                                                       (values-ref _g12343_ 0))
                                                      (_tl93539554_
                                                       (values-ref
                                                        _g12343_
                                                        1)))
                                                  (letrec ((_loop93549557_
                                                            (lambda (_hd93529560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg93589562_)
                      (if (gx#stx-pair? _hd93529560_)
                          (let ((_e93559565_ (gx#stx-e _hd93529560_)))
                            (let ((_lp-hd93569568_ (##car _e93559565_))
                                  (_lp-tl93579570_ (##cdr _e93559565_)))
                              (_loop93549557_
                               _lp-tl93579570_
                               (cons _lp-hd93569568_ _arg93589562_))))
                          (let ((_arg93599573_ (reverse _arg93589562_)))
                            (if (gx#stx-pair? _tl93509549_)
                                (let ((_e93609576_ (gx#stx-e _tl93509549_)))
                                  (let ((_hd93619579_ (##car _e93609576_))
                                        (_tl93629581_ (##cdr _e93609576_)))
                                    (if (gx#stx-pair? _hd93619579_)
                                        (let ((_e93639584_
                                               (gx#stx-e _hd93619579_)))
                                          (let ((_hd93649587_
                                                 (##car _e93639584_))
                                                (_tl93659589_
                                                 (##cdr _e93639584_)))
                                            (if (gx#identifier? _hd93649587_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd93649587_)
                                                    (if (gx#stx-pair?
                                                         _tl93659589_)
                                                        (let ((_e93669592_
                                                               (gx#stx-e
                                                                _tl93659589_)))
                                                          (let ((_hd93679595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e93669592_))
                        (_tl93689597_ (##cdr _e93669592_)))
                    (if (gx#stx-pair? _hd93679595_)
                        (let ((_e93699600_ (gx#stx-e _hd93679595_)))
                          (let ((_hd93709603_ (##car _e93699600_))
                                (_tl93719605_ (##cdr _e93699600_)))
                            (if (gx#identifier? _hd93709603_)
                                (if (gx#stx-eq? '%#ref _hd93709603_)
                                    (if (gx#stx-pair? _tl93719605_)
                                        (let ((_e93729608_
                                               (gx#stx-e _tl93719605_)))
                                          (let ((_hd93739611_
                                                 (##car _e93729608_))
                                                (_tl93749613_
                                                 (##cdr _e93729608_)))
                                            (if (gx#stx-null? _tl93749613_)
                                                (if (gx#stx-pair? _tl93689597_)
                                                    (let ((_e93759616_
                                                           (gx#stx-e
                                                            _tl93689597_)))
                                                      (let ((_hd93769619_
                                                             (##car _e93759616_))
                                                            (_tl93779621_
                                                             (##cdr _e93759616_)))
                                                        (if (gx#stx-pair?
                                                             _hd93769619_)
                                                            (let ((_e93789624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd93769619_)))
                      (let ((_hd93799627_ (##car _e93789624_))
                            (_tl93809629_ (##cdr _e93789624_)))
                        (if (gx#identifier? _hd93799627_)
                            (if (gx#stx-eq? '%#ref _hd93799627_)
                                (if (gx#stx-pair? _tl93809629_)
                                    (let ((_e93819632_
                                           (gx#stx-e _tl93809629_)))
                                      (let ((_hd93829635_ (##car _e93819632_))
                                            (_tl93839637_ (##cdr _e93819632_)))
                                        (if (gx#stx-null? _tl93839637_)
                                            (if (gx#stx-null? _tl93629581_)
                                                ((lambda (_L9640_
                                                          _L9641_
                                                          _L9642_
                                                          _L9643_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9640_ '()))))
                                                 _hd93829635_
                                                 _hd93739611_
                                                 _tl93539554_
                                                 _arg93599573_)
                                                (_g92969539_ _g92989542_))
                                            (_g92969539_ _g92989542_))))
                                    (_g92969539_ _g92989542_))
                                (_g92969539_ _g92989542_))
                            (_g92969539_ _g92989542_))))
                    (_g92969539_ _g92989542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92969539_ _g92989542_))
                                                (_g92969539_ _g92989542_))))
                                        (_g92969539_ _g92989542_))
                                    (_g92969539_ _g92989542_))
                                (_g92969539_ _g92989542_))))
                        (_g92969539_ _g92989542_))))
                (_g92969539_ _g92989542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92969539_ _g92989542_))
                                                (_g92969539_ _g92989542_))))
                                        (_g92969539_ _g92989542_))))
                                (_g92969539_ _g92989542_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop93549557_
                                                     _target93519552_
                                                     '())))))
                                            (_g92969539_ _g92989542_))
                                        (_g92969539_ _g92989542_))))
                                (_g92969539_ _g92989542_))))
                         (_g92949823_
                          (lambda (_g92989678_)
                            (if (gx#stx-pair? _g92989678_)
                                (let ((_e93029680_ (gx#stx-e _g92989678_)))
                                  (let ((_hd93039683_ (##car _e93029680_))
                                        (_tl93049685_ (##cdr _e93029680_)))
                                    (if (gx#stx-pair/null? _hd93039683_)
                                        (if (fx>= (gx#stx-length _hd93039683_)
                                                  '0)
                                            (let ((_g12345_
                                                   (gx#syntax-split-splice
                                                    _hd93039683_
                                                    '0)))
                                              (begin
                                                (let ((_g12346_
                                                       (values-count
                                                        _g12345_)))
                                                  (if (not (fx= _g12346_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12346_)))
                                                (let ((_target93059688_
                                                       (values-ref _g12345_ 0))
                                                      (_tl93079690_
                                                       (values-ref
                                                        _g12345_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl93079690_)
                                                      (letrec ((_loop93089693_
                                                                (lambda (_hd93069696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg93129698_)
                          (if (gx#stx-pair? _hd93069696_)
                              (let ((_e93099701_ (gx#stx-e _hd93069696_)))
                                (let ((_lp-hd93109704_ (##car _e93099701_))
                                      (_lp-tl93119706_ (##cdr _e93099701_)))
                                  (_loop93089693_
                                   _lp-tl93119706_
                                   (cons _lp-hd93109704_ _arg93129698_))))
                              (let ((_arg93139709_ (reverse _arg93129698_)))
                                (if (gx#stx-pair? _tl93049685_)
                                    (let ((_e93149712_
                                           (gx#stx-e _tl93049685_)))
                                      (let ((_hd93159715_ (##car _e93149712_))
                                            (_tl93169717_ (##cdr _e93149712_)))
                                        (if (gx#stx-pair? _hd93159715_)
                                            (let ((_e93179720_
                                                   (gx#stx-e _hd93159715_)))
                                              (let ((_hd93189723_
                                                     (##car _e93179720_))
                                                    (_tl93199725_
                                                     (##cdr _e93179720_)))
                                                (if (gx#identifier?
                                                     _hd93189723_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd93189723_)
                                                        (if (gx#stx-pair?
                                                             _tl93199725_)
                                                            (let ((_e93209728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl93199725_)))
                      (let ((_hd93219731_ (##car _e93209728_))
                            (_tl93229733_ (##cdr _e93209728_)))
                        (if (gx#stx-pair? _hd93219731_)
                            (let ((_e93239736_ (gx#stx-e _hd93219731_)))
                              (let ((_hd93249739_ (##car _e93239736_))
                                    (_tl93259741_ (##cdr _e93239736_)))
                                (if (gx#identifier? _hd93249739_)
                                    (if (gx#stx-eq? '%#ref _hd93249739_)
                                        (if (gx#stx-pair? _tl93259741_)
                                            (let ((_e93269744_
                                                   (gx#stx-e _tl93259741_)))
                                              (let ((_hd93279747_
                                                     (##car _e93269744_))
                                                    (_tl93289749_
                                                     (##cdr _e93269744_)))
                                                (if (gx#stx-null? _tl93289749_)
                                                    (if (gx#stx-pair/null?
                                                         _tl93229733_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl93229733_)
                          '0)
                    (let ((_g12347_ (gx#syntax-split-splice _tl93229733_ '0)))
                      (begin
                        (let ((_g12348_ (values-count _g12347_)))
                          (if (not (fx= _g12348_ 2))
                              (error "Context expects 2 values" _g12348_)))
                        (let ((_target93299752_ (values-ref _g12347_ 0))
                              (_tl93319754_ (values-ref _g12347_ 1)))
                          (if (gx#stx-null? _tl93319754_)
                              (letrec ((_loop93329757_
                                        (lambda (_hd93309760_ _xarg93369762_)
                                          (if (gx#stx-pair? _hd93309760_)
                                              (let ((_e93339765_
                                                     (gx#stx-e _hd93309760_)))
                                                (let ((_lp-hd93349768_
                                                       (##car _e93339765_))
                                                      (_lp-tl93359770_
                                                       (##cdr _e93339765_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd93349768_)
                                                      (let ((_e93389773_
                                                             (gx#stx-e
                                                              _lp-hd93349768_)))
                                                        (let ((_hd93399776_
                                                               (##car _e93389773_))
                                                              (_tl93409778_
                                                               (##cdr _e93389773_)))
                                                          (if (gx#identifier?
                                                               _hd93399776_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd93399776_)
                          (if (gx#stx-pair? _tl93409778_)
                              (let ((_e93419781_ (gx#stx-e _tl93409778_)))
                                (let ((_hd93429784_ (##car _e93419781_))
                                      (_tl93439786_ (##cdr _e93419781_)))
                                  (if (gx#stx-null? _tl93439786_)
                                      (_loop93329757_
                                       _lp-tl93359770_
                                       (cons _hd93429784_ _xarg93369762_))
                                      (_g92959675_ _g92989678_))))
                              (_g92959675_ _g92989678_))
                          (_g92959675_ _g92989678_))
                      (_g92959675_ _g92989678_))))
              (_g92959675_ _g92989678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg93379789_
                                                     (reverse _xarg93369762_)))
                                                (if (gx#stx-null? _tl93169717_)
                                                    ((lambda (_L9792_
                                                              _L9793_
                                                              _L9794_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg93379789_
                                                     _hd93279747_
                                                     _arg93139709_)
                                                    (_g92959675_
                                                     _g92989678_)))))))
                                (_loop93329757_ _target93299752_ '()))
                              (_g92959675_ _g92989678_)))))
                    (_g92959675_ _g92989678_))
                (_g92959675_ _g92989678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92959675_
                                                     _g92989678_))))
                                            (_g92959675_ _g92989678_))
                                        (_g92959675_ _g92989678_))
                                    (_g92959675_ _g92989678_))))
                            (_g92959675_ _g92989678_))))
                    (_g92959675_ _g92989678_))
                (_g92959675_ _g92989678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92959675_
                                                     _g92989678_))))
                                            (_g92959675_ _g92989678_))))
                                    (_g92959675_ _g92989678_)))))))
                (_loop93089693_ _target93059688_ '()))
              (_g92959675_ _g92989678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g92959675_ _g92989678_))
                                        (_g92959675_ _g92989678_))))
                                (_g92959675_ _g92989678_)))))
                    (_g92949823_ _form9293_))))
               (_generate19143_
                (lambda (_args9278_ _arglen9279_ _hd9280_ _body9281_)
                  (let* ((_len9283_ (gx#stx-length _hd9280_))
                         (_condition9285_
                          (if (gx#stx-list? _hd9280_)
                              (cons 'fx=
                                    (cons _arglen9279_ (cons _len9283_ '())))
                              (if (> _len9283_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9279_
                                              (cons _len9283_ '())))
                                  '#t)))
                         (_dispatch9287_
                          (if (_dispatch-case?9141_ _hd9280_ _body9281_)
                              (_dispatch-case-e9142_ _hd9280_ _body9281_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9280_)
                                          (cons (gxc#compile-e _body9281_)
                                                '()))))))
                    (cons _condition9285_
                          (cons (cons 'apply
                                      (cons _dispatch9287_
                                            (cons _args9278_ '())))
                                '()))))))
        (let* ((_g91459173_
                (lambda (_g91469170_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g91469170_)))
               (_g91449275_
                (lambda (_g91469176_)
                  (if (gx#stx-pair? _g91469176_)
                      (let ((_e91499178_ (gx#stx-e _g91469176_)))
                        (let ((_hd91509181_ (##car _e91499178_))
                              (_tl91519183_ (##cdr _e91499178_)))
                          (if (gx#stx-pair/null? _tl91519183_)
                              (if (fx>= (gx#stx-length _tl91519183_) '0)
                                  (let ((_g12349_
                                         (gx#syntax-split-splice
                                          _tl91519183_
                                          '0)))
                                    (begin
                                      (let ((_g12350_ (values-count _g12349_)))
                                        (if (not (fx= _g12350_ 2))
                                            (error "Context expects 2 values"
                                                   _g12350_)))
                                      (let ((_target91529186_
                                             (values-ref _g12349_ 0))
                                            (_tl91549188_
                                             (values-ref _g12349_ 1)))
                                        (if (gx#stx-null? _tl91549188_)
                                            (letrec ((_loop91559191_
                                                      (lambda (_hd91539194_
                                                               _body91599196_
                                                               _hd91609198_)
                                                        (if (gx#stx-pair?
                                                             _hd91539194_)
                                                            (let ((_e91569201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91539194_)))
                      (let ((_lp-hd91579204_ (##car _e91569201_))
                            (_lp-tl91589206_ (##cdr _e91569201_)))
                        (if (gx#stx-pair? _lp-hd91579204_)
                            (let ((_e91639209_ (gx#stx-e _lp-hd91579204_)))
                              (let ((_hd91649212_ (##car _e91639209_))
                                    (_tl91659214_ (##cdr _e91639209_)))
                                (if (gx#stx-pair? _tl91659214_)
                                    (let ((_e91669217_
                                           (gx#stx-e _tl91659214_)))
                                      (let ((_hd91679220_ (##car _e91669217_))
                                            (_tl91689222_ (##cdr _e91669217_)))
                                        (if (gx#stx-null? _tl91689222_)
                                            (_loop91559191_
                                             _lp-tl91589206_
                                             (cons _hd91679220_ _body91599196_)
                                             (cons _hd91649212_ _hd91609198_))
                                            (_g91459173_ _g91469176_))))
                                    (_g91459173_ _g91469176_))))
                            (_g91459173_ _g91469176_))))
                    (let ((_body91619225_ (reverse _body91599196_))
                          (_hd91629227_ (reverse _hd91609198_)))
                      ((lambda (_L9230_ _L9231_)
                         (let ((_args9250_ (gxc#generate-runtime-temporary__0))
                               (_arglen9251_
                                (gxc#generate-runtime-temporary__0))
                               (_name9252_
                                (let ((_$e9247_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx9138_
                                        '#f)))
                                  (if _$e9247_
                                      _$e9247_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9250_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9250_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9250_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g92539256_ _g92549258_)
                                            (_generate19143_
                                             _args9250_
                                             _arglen9251_
                                             _g92539256_
                                             _g92549258_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g92609263_
                                                             _g92619265_)
                                                      (cons _g92609263_
                                                            _g92619265_))
                                                    '()
                                                    _L9231_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g92679270_
                                                             _g92689272_)
                                                      (cons _g92679270_
                                                            _g92689272_))
                                                    '()
                                                    _L9230_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body91619225_
                       _hd91629227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop91559191_
                                               _target91529186_
                                               '()
                                               '()))
                                            (_g91459173_ _g91469176_)))))
                                  (_g91459173_ _g91469176_))
                              (_g91459173_ _g91469176_))))
                      (_g91459173_ _g91469176_)))))
          (_g91449275_ _stx9138_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8203_ _compiled-body?8204_)
        (letrec ((_generate-simple8206_
                  (lambda (_hd9125_ _body9126_)
                    (_coalesce-let*8207_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9125_
                      _body9126_
                      _compiled-body?8204_))))
                 (_coalesce-let*8207_
                  (lambda (_code8509_)
                    (let* ((_g85148649_
                            (lambda (_g85158646_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g85158646_)))
                           (_g85138656_
                            (lambda (_g85158652_) ((lambda () _code8509_))))
                           (_g85128826_
                            (lambda (_g85158659_)
                              (if (gx#stx-pair? _g85158659_)
                                  (let ((_e86038661_ (gx#stx-e _g85158659_)))
                                    (let ((_hd86048664_ (##car _e86038661_))
                                          (_tl86058666_ (##cdr _e86038661_)))
                                      (if (gx#identifier? _hd86048664_)
                                          (if (gx#stx-eq? 'let _hd86048664_)
                                              (if (gx#stx-pair? _tl86058666_)
                                                  (let ((_e86068669_
                                                         (gx#stx-e
                                                          _tl86058666_)))
                                                    (let ((_hd86078672_
                                                           (##car _e86068669_))
                                                          (_tl86088674_
                                                           (##cdr _e86068669_)))
                                                      (if (gx#stx-pair?
                                                           _hd86078672_)
                                                          (let ((_e86098677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd86078672_)))
                    (let ((_hd86108680_ (##car _e86098677_))
                          (_tl86118682_ (##cdr _e86098677_)))
                      (if (gx#stx-pair? _hd86108680_)
                          (let ((_e86128685_ (gx#stx-e _hd86108680_)))
                            (let ((_hd86138688_ (##car _e86128685_))
                                  (_tl86148690_ (##cdr _e86128685_)))
                              (if (gx#stx-pair? _tl86148690_)
                                  (let ((_e86158693_ (gx#stx-e _tl86148690_)))
                                    (let ((_hd86168696_ (##car _e86158693_))
                                          (_tl86178698_ (##cdr _e86158693_)))
                                      (if (gx#stx-null? _tl86178698_)
                                          (if (gx#stx-null? _tl86118682_)
                                              (if (gx#stx-pair? _tl86088674_)
                                                  (let ((_e86188701_
                                                         (gx#stx-e
                                                          _tl86088674_)))
                                                    (let ((_hd86198704_
                                                           (##car _e86188701_))
                                                          (_tl86208706_
                                                           (##cdr _e86188701_)))
                                                      (if (gx#stx-pair?
                                                           _hd86198704_)
                                                          (let ((_e86218709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd86198704_)))
                    (let ((_hd86228712_ (##car _e86218709_))
                          (_tl86238714_ (##cdr _e86218709_)))
                      (if (gx#identifier? _hd86228712_)
                          (if (gx#stx-eq? 'let* _hd86228712_)
                              (if (gx#stx-pair? _tl86238714_)
                                  (let ((_e86248717_ (gx#stx-e _tl86238714_)))
                                    (let ((_hd86258720_ (##car _e86248717_))
                                          (_tl86268722_ (##cdr _e86248717_)))
                                      (if (gx#stx-pair/null? _hd86258720_)
                                          (if (fx>= (gx#stx-length
                                                     _hd86258720_)
                                                    '0)
                                              (let ((_g12351_
                                                     (gx#syntax-split-splice
                                                      _hd86258720_
                                                      '0)))
                                                (begin
                                                  (let ((_g12352_
                                                         (values-count
                                                          _g12351_)))
                                                    (if (not (fx= _g12352_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12352_)))
                                                  (let ((_target86278725_
                                                         (values-ref
                                                          _g12351_
                                                          0))
                                                        (_tl86298727_
                                                         (values-ref
                                                          _g12351_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl86298727_)
                                                        (letrec ((_loop86308730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd86288733_ _bind86348735_)
                            (if (gx#stx-pair? _hd86288733_)
                                (let ((_e86318738_ (gx#stx-e _hd86288733_)))
                                  (let ((_lp-hd86328741_ (##car _e86318738_))
                                        (_lp-tl86338743_ (##cdr _e86318738_)))
                                    (_loop86308730_
                                     _lp-tl86338743_
                                     (cons _lp-hd86328741_ _bind86348735_))))
                                (let ((_bind86358746_
                                       (reverse _bind86348735_)))
                                  (if (gx#stx-pair/null? _tl86268722_)
                                      (if (fx>= (gx#stx-length _tl86268722_)
                                                '0)
                                          (let ((_g12353_
                                                 (gx#syntax-split-splice
                                                  _tl86268722_
                                                  '0)))
                                            (begin
                                              (let ((_g12354_
                                                     (values-count _g12353_)))
                                                (if (not (fx= _g12354_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12354_)))
                                              (let ((_target86368749_
                                                     (values-ref _g12353_ 0))
                                                    (_tl86388751_
                                                     (values-ref _g12353_ 1)))
                                                (if (gx#stx-null? _tl86388751_)
                                                    (letrec ((_loop86398754_
                                                              (lambda (_hd86378757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body86438759_)
                        (if (gx#stx-pair? _hd86378757_)
                            (let ((_e86408762_ (gx#stx-e _hd86378757_)))
                              (let ((_lp-hd86418765_ (##car _e86408762_))
                                    (_lp-tl86428767_ (##cdr _e86408762_)))
                                (_loop86398754_
                                 _lp-tl86428767_
                                 (cons _lp-hd86418765_ _body86438759_))))
                            (let ((_body86448770_ (reverse _body86438759_)))
                              (if (gx#stx-null? _tl86208706_)
                                  ((lambda (_L8773_ _L8774_ _L8775_ _L8776_)
                                     (cons 'let*
                                           (cons (cons (cons _L8776_
                                                             (cons _L8775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g88118814_ _g88128816_)
                           (cons _g88118814_ _g88128816_))
                         '()
                         _L8774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g88188821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g88198823_)
                     (cons _g88188821_ _g88198823_))
                   '()
                   _L8773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body86448770_
                                   _bind86358746_
                                   _hd86168696_
                                   _hd86138688_)
                                  (_g85138656_ _g85158659_)))))))
              (_loop86398754_ _target86368749_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g85138656_
                                                     _g85158659_)))))
                                          (_g85138656_ _g85158659_))
                                      (_g85138656_ _g85158659_)))))))
                  (_loop86308730_ _target86278725_ '()))
                (_g85138656_ _g85158659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85138656_ _g85158659_))
                                          (_g85138656_ _g85158659_))))
                                  (_g85138656_ _g85158659_))
                              (_g85138656_ _g85158659_))
                          (_g85138656_ _g85158659_))))
                  (_g85138656_ _g85158659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85138656_ _g85158659_))
                                              (_g85138656_ _g85158659_))
                                          (_g85138656_ _g85158659_))))
                                  (_g85138656_ _g85158659_))))
                          (_g85138656_ _g85158659_))))
                  (_g85138656_ _g85158659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85138656_ _g85158659_))
                                              (_g85138656_ _g85158659_))
                                          (_g85138656_ _g85158659_))))
                                  (_g85138656_ _g85158659_))))
                           (_g85118991_
                            (lambda (_g85158829_)
                              (if (gx#stx-pair? _g85158829_)
                                  (let ((_e85578831_ (gx#stx-e _g85158829_)))
                                    (let ((_hd85588834_ (##car _e85578831_))
                                          (_tl85598836_ (##cdr _e85578831_)))
                                      (if (gx#identifier? _hd85588834_)
                                          (if (gx#stx-eq? 'let _hd85588834_)
                                              (if (gx#stx-pair? _tl85598836_)
                                                  (let ((_e85608839_
                                                         (gx#stx-e
                                                          _tl85598836_)))
                                                    (let ((_hd85618842_
                                                           (##car _e85608839_))
                                                          (_tl85628844_
                                                           (##cdr _e85608839_)))
                                                      (if (gx#stx-pair?
                                                           _hd85618842_)
                                                          (let ((_e85638847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85618842_)))
                    (let ((_hd85648850_ (##car _e85638847_))
                          (_tl85658852_ (##cdr _e85638847_)))
                      (if (gx#stx-pair? _hd85648850_)
                          (let ((_e85668855_ (gx#stx-e _hd85648850_)))
                            (let ((_hd85678858_ (##car _e85668855_))
                                  (_tl85688860_ (##cdr _e85668855_)))
                              (if (gx#stx-pair? _tl85688860_)
                                  (let ((_e85698863_ (gx#stx-e _tl85688860_)))
                                    (let ((_hd85708866_ (##car _e85698863_))
                                          (_tl85718868_ (##cdr _e85698863_)))
                                      (if (gx#stx-null? _tl85718868_)
                                          (if (gx#stx-null? _tl85658852_)
                                              (if (gx#stx-pair? _tl85628844_)
                                                  (let ((_e85728871_
                                                         (gx#stx-e
                                                          _tl85628844_)))
                                                    (let ((_hd85738874_
                                                           (##car _e85728871_))
                                                          (_tl85748876_
                                                           (##cdr _e85728871_)))
                                                      (if (gx#stx-pair?
                                                           _hd85738874_)
                                                          (let ((_e85758879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85738874_)))
                    (let ((_hd85768882_ (##car _e85758879_))
                          (_tl85778884_ (##cdr _e85758879_)))
                      (if (gx#identifier? _hd85768882_)
                          (if (gx#stx-eq? 'let _hd85768882_)
                              (if (gx#stx-pair? _tl85778884_)
                                  (let ((_e85788887_ (gx#stx-e _tl85778884_)))
                                    (let ((_hd85798890_ (##car _e85788887_))
                                          (_tl85808892_ (##cdr _e85788887_)))
                                      (if (gx#stx-pair? _hd85798890_)
                                          (let ((_e85818895_
                                                 (gx#stx-e _hd85798890_)))
                                            (let ((_hd85828898_
                                                   (##car _e85818895_))
                                                  (_tl85838900_
                                                   (##cdr _e85818895_)))
                                              (if (gx#stx-pair? _hd85828898_)
                                                  (let ((_e85848903_
                                                         (gx#stx-e
                                                          _hd85828898_)))
                                                    (let ((_hd85858906_
                                                           (##car _e85848903_))
                                                          (_tl85868908_
                                                           (##cdr _e85848903_)))
                                                      (if (gx#stx-pair?
                                                           _tl85868908_)
                                                          (let ((_e85878911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl85868908_)))
                    (let ((_hd85888914_ (##car _e85878911_))
                          (_tl85898916_ (##cdr _e85878911_)))
                      (if (gx#stx-null? _tl85898916_)
                          (if (gx#stx-null? _tl85838900_)
                              (if (gx#stx-pair/null? _tl85808892_)
                                  (if (fx>= (gx#stx-length _tl85808892_) '0)
                                      (let ((_g12355_
                                             (gx#syntax-split-splice
                                              _tl85808892_
                                              '0)))
                                        (begin
                                          (let ((_g12356_
                                                 (values-count _g12355_)))
                                            (if (not (fx= _g12356_ 2))
                                                (error "Context expects 2 values"
                                                       _g12356_)))
                                          (let ((_target85908919_
                                                 (values-ref _g12355_ 0))
                                                (_tl85928921_
                                                 (values-ref _g12355_ 1)))
                                            (if (gx#stx-null? _tl85928921_)
                                                (letrec ((_loop85938924_
                                                          (lambda (_hd85918927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body85978929_)
                    (if (gx#stx-pair? _hd85918927_)
                        (let ((_e85948932_ (gx#stx-e _hd85918927_)))
                          (let ((_lp-hd85958935_ (##car _e85948932_))
                                (_lp-tl85968937_ (##cdr _e85948932_)))
                            (_loop85938924_
                             _lp-tl85968937_
                             (cons _lp-hd85958935_ _body85978929_))))
                        (let ((_body85988940_ (reverse _body85978929_)))
                          (if (gx#stx-null? _tl85748876_)
                              ((lambda (_L8943_
                                        _L8944_
                                        _L8945_
                                        _L8946_
                                        _L8947_)
                                 (cons 'let*
                                       (cons (cons (cons _L8947_
                                                         (cons _L8946_ '()))
                                                   (cons (cons _L8945_
                                                               (cons _L8944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g89838986_
                                                                _g89848988_)
                                                         (cons _g89838986_
                                                               _g89848988_))
                                                       '()
                                                       _L8943_)))))
                               _body85988940_
                               _hd85888914_
                               _hd85858906_
                               _hd85708866_
                               _hd85678858_)
                              (_g85128826_ _g85158829_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85938924_
                                                   _target85908919_
                                                   '()))
                                                (_g85128826_ _g85158829_)))))
                                      (_g85128826_ _g85158829_))
                                  (_g85128826_ _g85158829_))
                              (_g85128826_ _g85158829_))
                          (_g85128826_ _g85158829_))))
                  (_g85128826_ _g85158829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85128826_ _g85158829_))))
                                          (_g85128826_ _g85158829_))))
                                  (_g85128826_ _g85158829_))
                              (_g85128826_ _g85158829_))
                          (_g85128826_ _g85158829_))))
                  (_g85128826_ _g85158829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85128826_ _g85158829_))
                                              (_g85128826_ _g85158829_))
                                          (_g85128826_ _g85158829_))))
                                  (_g85128826_ _g85158829_))))
                          (_g85128826_ _g85158829_))))
                  (_g85128826_ _g85158829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85128826_ _g85158829_))
                                              (_g85128826_ _g85158829_))
                                          (_g85128826_ _g85158829_))))
                                  (_g85128826_ _g85158829_))))
                           (_g85109122_
                            (lambda (_g85158994_)
                              (if (gx#stx-pair? _g85158994_)
                                  (let ((_e85198996_ (gx#stx-e _g85158994_)))
                                    (let ((_hd85208999_ (##car _e85198996_))
                                          (_tl85219001_ (##cdr _e85198996_)))
                                      (if (gx#identifier? _hd85208999_)
                                          (if (gx#stx-eq? 'let _hd85208999_)
                                              (if (gx#stx-pair? _tl85219001_)
                                                  (let ((_e85229004_
                                                         (gx#stx-e
                                                          _tl85219001_)))
                                                    (let ((_hd85239007_
                                                           (##car _e85229004_))
                                                          (_tl85249009_
                                                           (##cdr _e85229004_)))
                                                      (if (gx#stx-pair?
                                                           _hd85239007_)
                                                          (let ((_e85259012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85239007_)))
                    (let ((_hd85269015_ (##car _e85259012_))
                          (_tl85279017_ (##cdr _e85259012_)))
                      (if (gx#stx-pair? _hd85269015_)
                          (let ((_e85289020_ (gx#stx-e _hd85269015_)))
                            (let ((_hd85299023_ (##car _e85289020_))
                                  (_tl85309025_ (##cdr _e85289020_)))
                              (if (gx#stx-pair? _tl85309025_)
                                  (let ((_e85319028_ (gx#stx-e _tl85309025_)))
                                    (let ((_hd85329031_ (##car _e85319028_))
                                          (_tl85339033_ (##cdr _e85319028_)))
                                      (if (gx#stx-null? _tl85339033_)
                                          (if (gx#stx-null? _tl85279017_)
                                              (if (gx#stx-pair? _tl85249009_)
                                                  (let ((_e85349036_
                                                         (gx#stx-e
                                                          _tl85249009_)))
                                                    (let ((_hd85359039_
                                                           (##car _e85349036_))
                                                          (_tl85369041_
                                                           (##cdr _e85349036_)))
                                                      (if (gx#stx-pair?
                                                           _hd85359039_)
                                                          (let ((_e85379044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd85359039_)))
                    (let ((_hd85389047_ (##car _e85379044_))
                          (_tl85399049_ (##cdr _e85379044_)))
                      (if (gx#identifier? _hd85389047_)
                          (if (gx#stx-eq? 'let _hd85389047_)
                              (if (gx#stx-pair? _tl85399049_)
                                  (let ((_e85409052_ (gx#stx-e _tl85399049_)))
                                    (let ((_hd85419055_ (##car _e85409052_))
                                          (_tl85429057_ (##cdr _e85409052_)))
                                      (if (gx#stx-null? _hd85419055_)
                                          (if (gx#stx-pair/null? _tl85429057_)
                                              (if (fx>= (gx#stx-length
                                                         _tl85429057_)
                                                        '0)
                                                  (let ((_g12357_
                                                         (gx#syntax-split-splice
                                                          _tl85429057_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12358_
                                                             (values-count
                                                              _g12357_)))
                                                        (if (not (fx= _g12358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12358_)))
              (let ((_target85439060_ (values-ref _g12357_ 0))
                    (_tl85459062_ (values-ref _g12357_ 1)))
                (if (gx#stx-null? _tl85459062_)
                    (letrec ((_loop85469065_
                              (lambda (_hd85449068_ _body85509070_)
                                (if (gx#stx-pair? _hd85449068_)
                                    (let ((_e85479073_
                                           (gx#stx-e _hd85449068_)))
                                      (let ((_lp-hd85489076_
                                             (##car _e85479073_))
                                            (_lp-tl85499078_
                                             (##cdr _e85479073_)))
                                        (_loop85469065_
                                         _lp-tl85499078_
                                         (cons _lp-hd85489076_
                                               _body85509070_))))
                                    (let ((_body85519081_
                                           (reverse _body85509070_)))
                                      (if (gx#stx-null? _tl85369041_)
                                          ((lambda (_L9084_ _L9085_ _L9086_)
                                             (cons 'let
                                                   (cons (cons (cons _L9086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9085_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g91149117_ _g91159119_)
                             (cons _g91149117_ _g91159119_))
                           '()
                           _L9084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body85519081_
                                           _hd85329031_
                                           _hd85299023_)
                                          (_g85118991_ _g85158994_)))))))
                      (_loop85469065_ _target85439060_ '()))
                    (_g85118991_ _g85158994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85118991_ _g85158994_))
                                              (_g85118991_ _g85158994_))
                                          (_g85118991_ _g85158994_))))
                                  (_g85118991_ _g85158994_))
                              (_g85118991_ _g85158994_))
                          (_g85118991_ _g85158994_))))
                  (_g85118991_ _g85158994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85118991_ _g85158994_))
                                              (_g85118991_ _g85158994_))
                                          (_g85118991_ _g85158994_))))
                                  (_g85118991_ _g85158994_))))
                          (_g85118991_ _g85158994_))))
                  (_g85118991_ _g85158994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g85118991_ _g85158994_))
                                              (_g85118991_ _g85158994_))
                                          (_g85118991_ _g85158994_))))
                                  (_g85118991_ _g85158994_)))))
                      (_g85109122_ _code8509_))))
                 (_generate-values8208_
                  (lambda (_hd8322_ _body8323_)
                    (let _lp8325_ ((_rest8327_ _hd8322_)
                                   (_bind8328_ '())
                                   (_check8329_ '())
                                   (_post8330_ '()))
                      (let* ((_g83338344_
                              (lambda (_g83348341_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g83348341_)))
                             (_g83328358_
                              (lambda (_g83348347_)
                                ((lambda ()
                                   (let* ((_body8351_
                                           (if _compiled-body?8204_
                                               _body8323_
                                               (gxc#compile-e _body8323_)))
                                          (_body8353_
                                           (_generate-values-post8209_
                                            _post8330_
                                            _body8351_))
                                          (_body8355_
                                           (_generate-values-check8210_
                                            _check8329_
                                            _body8353_)))
                                     (cons 'let
                                           (cons (reverse _bind8328_)
                                                 (cons _body8355_ '()))))))))
                             (_g83318506_
                              (lambda (_g83348361_)
                                (if (gx#stx-pair? _g83348361_)
                                    (let ((_e83378363_ (gx#stx-e _g83348361_)))
                                      (let ((_hd83388366_ (##car _e83378363_))
                                            (_tl83398368_ (##cdr _e83378363_)))
                                        ((lambda (_L8371_ _L8372_)
                                           (let* ((_g83878412_
                                                   (lambda (_g83888409_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g83888409_)))
                                                  (_g83868456_
                                                   (lambda (_g83888415_)
                                                     (if (gx#stx-pair?
                                                          _g83888415_)
                                                         (let ((_e84028417_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83888415_)))
                   (let ((_hd84038420_ (##car _e84028417_))
                         (_tl84048422_ (##cdr _e84028417_)))
                     (if (gx#stx-pair? _tl84048422_)
                         (let ((_e84058425_ (gx#stx-e _tl84048422_)))
                           (let ((_hd84068428_ (##car _e84058425_))
                                 (_tl84078430_ (##cdr _e84058425_)))
                             (if (gx#stx-null? _tl84078430_)
                                 ((lambda (_L8433_ _L8434_)
                                    (let* ((_vals8447_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8449_ (gxc#compile-e _L8433_))
                                           (_check-values8451_
                                            (gxc#generate-runtime-check-values
                                             _vals8447_
                                             _L8434_))
                                           (_refs8453_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8447_
                                             _L8434_)))
                                      (_lp8325_
                                       _L8371_
                                       (cons (cons _vals8447_
                                                   (cons _expr8449_ '()))
                                             _bind8328_)
                                       (cons _check-values8451_ _check8329_)
                                       (cons _refs8453_ _post8330_))))
                                  _hd84068428_
                                  _hd84038420_)
                                 (_g83878412_ _g83888415_))))
                         (_g83878412_ _g83888415_))))
                 (_g83878412_ _g83888415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83858503_
                                                   (lambda (_g83888459_)
                                                     (if (gx#stx-pair?
                                                          _g83888459_)
                                                         (let ((_e83918461_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83888459_)))
                   (let ((_hd83928464_ (##car _e83918461_))
                         (_tl83938466_ (##cdr _e83918461_)))
                     (if (gx#stx-pair? _hd83928464_)
                         (let ((_e83948469_ (gx#stx-e _hd83928464_)))
                           (let ((_hd83958472_ (##car _e83948469_))
                                 (_tl83968474_ (##cdr _e83948469_)))
                             (if (gx#stx-null? _tl83968474_)
                                 (if (gx#stx-pair? _tl83938466_)
                                     (let ((_e83978477_
                                            (gx#stx-e _tl83938466_)))
                                       (let ((_hd83988480_ (##car _e83978477_))
                                             (_tl83998482_
                                              (##cdr _e83978477_)))
                                         (if (gx#stx-null? _tl83998482_)
                                             ((lambda (_L8485_ _L8486_)
                                                (let ((_eid8500_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8486_))
                                                      (_expr8501_
                                                       (gxc#compile-e
                                                        _L8485_)))
                                                  (_lp8325_
                                                   _L8371_
                                                   (cons (cons _eid8500_
                                                               (cons _expr8501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8328_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8329_
                                                   _post8330_)))
                                              _hd83988480_
                                              _hd83958472_)
                                             (_g83868456_ _g83888459_))))
                                     (_g83868456_ _g83888459_))
                                 (_g83868456_ _g83888459_))))
                         (_g83868456_ _g83888459_))))
                 (_g83868456_ _g83888459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83858503_ _L8372_)))
                                         _tl83398368_
                                         _hd83388366_)))
                                    (_g83328358_ _g83348361_)))))
                        (_g83318506_ _rest8327_)))))
                 (_generate-values-post8209_
                  (lambda (_post8281_ _body8282_)
                    (let _lp8284_ ((_rest8286_ _post8281_)
                                   (_body8287_ _body8282_))
                      (let* ((_rest82888296_ _rest8286_)
                             (_E82918300_
                              (lambda ()
                                (error '"No clause matching" _rest82888296_)))
                             (_else82908304_ (lambda () _body8287_))
                             (_K82928310_
                              (lambda (_rest8307_ _bind8308_)
                                (_lp8284_
                                 _rest8307_
                                 (cons 'let
                                       (cons _bind8308_
                                             (cons _body8287_ '())))))))
                        (if (##pair? _rest82888296_)
                            (let ((_hd82938313_ (##car _rest82888296_))
                                  (_tl82948315_ (##cdr _rest82888296_)))
                              (let* ((_bind8318_ _hd82938313_)
                                     (_rest8320_ _tl82948315_))
                                (_K82928310_ _rest8320_ _bind8318_)))
                            (_else82908304_))))))
                 (_generate-values-check8210_
                  (lambda (_check8278_ _body8279_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8279_ '())
                                  (reverse _check8278_))))))
          (let* ((_g82128229_
                  (lambda (_g82138226_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82138226_)))
                 (_g82118275_
                  (lambda (_g82138232_)
                    (if (gx#stx-pair? _g82138232_)
                        (let ((_e82168234_ (gx#stx-e _g82138232_)))
                          (let ((_hd82178237_ (##car _e82168234_))
                                (_tl82188239_ (##cdr _e82168234_)))
                            (if (gx#stx-pair? _tl82188239_)
                                (let ((_e82198242_ (gx#stx-e _tl82188239_)))
                                  (let ((_hd82208245_ (##car _e82198242_))
                                        (_tl82218247_ (##cdr _e82198242_)))
                                    (if (gx#stx-pair? _tl82218247_)
                                        (let ((_e82228250_
                                               (gx#stx-e _tl82218247_)))
                                          (let ((_hd82238253_
                                                 (##car _e82228250_))
                                                (_tl82248255_
                                                 (##cdr _e82228250_)))
                                            (if (gx#stx-null? _tl82248255_)
                                                ((lambda (_L8258_ _L8259_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8259_)
                                                       (_generate-simple8206_
                                                        _L8259_
                                                        _L8258_)
                                                       (_generate-values8208_
                                                        _L8259_
                                                        _L8258_)))
                                                 _hd82238253_
                                                 _hd82208245_)
                                                (_g82128229_ _g82138232_))))
                                        (_g82128229_ _g82138232_))))
                                (_g82128229_ _g82138232_))))
                        (_g82128229_ _g82138232_)))))
            (_g82118275_ _stx8203_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9131_)
          (let ((_compiled-body?9133_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9131_
             _compiled-body?9133_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12360_
          (let ((_g12359_ (length _g12360_)))
            (cond ((fx= _g12359_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12360_))
                  ((fx= _g12359_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12360_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12360_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8102_ _hd8103_)
      (let _lp8105_ ((_rest8107_ _hd8103_) (_k8108_ '0) (_r8109_ '()))
        (let* ((_g81148130_
                (lambda (_g81158127_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g81158127_)))
               (_g81138137_
                (lambda (_g81158133_) ((lambda () (reverse _r8109_)))))
               (_g81128153_
                (lambda (_g81158140_)
                  ((lambda (_L8142_)
                     (if (gx#identifier? _L8142_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L8142_)
                                             (cons (cons 'values->list
                                                         (cons _vals8102_
                                                               (cons _k8108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r8109_)
                         (_g81138137_ _g81158140_)))
                   _g81158140_)))
               (_g81118177_
                (lambda (_g81158156_)
                  (if (gx#stx-pair? _g81158156_)
                      (let ((_e81228158_ (gx#stx-e _g81158156_)))
                        (let ((_hd81238161_ (##car _e81228158_))
                              (_tl81248163_ (##cdr _e81228158_)))
                          ((lambda (_L8166_ _L8167_)
                             (_lp8105_
                              _L8166_
                              (fx+ _k8108_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L8167_)
                                          (cons (cons 'values-ref
                                                      (cons _vals8102_
                                                            (cons _k8108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r8109_)))
                           _tl81248163_
                           _hd81238161_)))
                      (_g81128153_ _g81158156_))))
               (_g81108199_
                (lambda (_g81158180_)
                  (if (gx#stx-pair? _g81158180_)
                      (let ((_e81178182_ (gx#stx-e _g81158180_)))
                        (let ((_hd81188185_ (##car _e81178182_))
                              (_tl81198187_ (##cdr _e81178182_)))
                          (if (gx#stx-datum? _hd81188185_)
                              (if (equal? (gx#stx-e _hd81188185_) '#f)
                                  ((lambda (_L8190_)
                                     (_lp8105_
                                      _L8190_
                                      (fx+ _k8108_ '1)
                                      _r8109_))
                                   _tl81198187_)
                                  (_g81118177_ _g81158180_))
                              (_g81118177_ _g81158180_))))
                      (_g81118177_ _g81158180_)))))
          (_g81108199_ _rest8107_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx7782_ _compiled-body?7783_)
        (letrec ((_generate-simple7785_
                  (lambda (_hd8089_ _body8090_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8089_
                     _body8090_
                     _compiled-body?7783_)))
                 (_generate-values7786_
                  (lambda (_hd7866_ _body7867_)
                    (let _lp7869_ ((_rest7871_ _hd7866_)
                                   (_bind7872_ '())
                                   (_check7873_ '())
                                   (_post7874_ '()))
                      (let* ((_g78777888_
                              (lambda (_g78787885_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g78787885_)))
                             (_g78767902_
                              (lambda (_g78787891_)
                                ((lambda ()
                                   (let* ((_body7895_
                                           (if _compiled-body?7783_
                                               _body7867_
                                               (gxc#compile-e _body7867_)))
                                          (_body7897_
                                           (_generate-values-post7788_
                                            _post7874_
                                            _body7895_))
                                          (_body7899_
                                           (_generate-values-check7787_
                                            _check7873_
                                            _body7897_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7872_)
                                                 (cons _body7899_ '()))))))))
                             (_g78758086_
                              (lambda (_g78787905_)
                                (if (gx#stx-pair? _g78787905_)
                                    (let ((_e78817907_ (gx#stx-e _g78787905_)))
                                      (let ((_hd78827910_ (##car _e78817907_))
                                            (_tl78837912_ (##cdr _e78817907_)))
                                        ((lambda (_L7915_ _L7916_)
                                           (let* ((_g79317956_
                                                   (lambda (_g79327953_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g79327953_)))
                                                  (_g79308036_
                                                   (lambda (_g79327959_)
                                                     (if (gx#stx-pair?
                                                          _g79327959_)
                                                         (let ((_e79467961_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79327959_)))
                   (let ((_hd79477964_ (##car _e79467961_))
                         (_tl79487966_ (##cdr _e79467961_)))
                     (if (gx#stx-pair? _tl79487966_)
                         (let ((_e79497969_ (gx#stx-e _tl79487966_)))
                           (let ((_hd79507972_ (##car _e79497969_))
                                 (_tl79517974_ (##cdr _e79497969_)))
                             (if (gx#stx-null? _tl79517974_)
                                 ((lambda (_L7977_ _L7978_)
                                    (let* ((_vals7991_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7993_ (gxc#compile-e _L7977_))
                                           (_check-values7995_
                                            (gxc#generate-runtime-check-values
                                             _vals7991_
                                             _L7978_))
                                           (_refs7997_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7991_
                                             _L7978_)))
                                      (_lp7869_
                                       _L7915_
                                       (foldl1 cons
                                               (cons (cons _vals7991_
                                                           (cons _expr7993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7872_)
                                               (map (lambda (_e79998001_)
                                                      (let* ((_g80038012_
                                                              _e79998001_)
                                                             (_E80058016_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g80038012_)))
                     (_K80068021_
                      (lambda (_eid8019_)
                        (cons _eid8019_ (cons '#!void '())))))
                (if (##pair? _g80038012_)
                    (let ((_hd80078024_ (##car _g80038012_))
                          (_tl80088026_ (##cdr _g80038012_)))
                      (let ((_eid8029_ _hd80078024_))
                        (if (##pair? _tl80088026_)
                            (let ((_hd80098031_ (##car _tl80088026_))
                                  (_tl80108033_ (##cdr _tl80088026_)))
                              (if (##null? _tl80108033_)
                                  (_K80068021_ _eid8029_)
                                  (_E80058016_)))
                            (_E80058016_))))
                    (_E80058016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7997_))
                                       (cons _check-values7995_ _check7873_)
                                       (foldl1 cons _refs7997_ _post7874_))))
                                  _hd79507972_
                                  _hd79477964_)
                                 (_g79317956_ _g79327959_))))
                         (_g79317956_ _g79327959_))))
                 (_g79317956_ _g79327959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79298083_
                                                   (lambda (_g79328039_)
                                                     (if (gx#stx-pair?
                                                          _g79328039_)
                                                         (let ((_e79358041_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79328039_)))
                   (let ((_hd79368044_ (##car _e79358041_))
                         (_tl79378046_ (##cdr _e79358041_)))
                     (if (gx#stx-pair? _hd79368044_)
                         (let ((_e79388049_ (gx#stx-e _hd79368044_)))
                           (let ((_hd79398052_ (##car _e79388049_))
                                 (_tl79408054_ (##cdr _e79388049_)))
                             (if (gx#stx-null? _tl79408054_)
                                 (if (gx#stx-pair? _tl79378046_)
                                     (let ((_e79418057_
                                            (gx#stx-e _tl79378046_)))
                                       (let ((_hd79428060_ (##car _e79418057_))
                                             (_tl79438062_
                                              (##cdr _e79418057_)))
                                         (if (gx#stx-null? _tl79438062_)
                                             ((lambda (_L8065_ _L8066_)
                                                (let ((_eid8080_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8066_))
                                                      (_expr8081_
                                                       (gxc#compile-e
                                                        _L8065_)))
                                                  (_lp7869_
                                                   _L7915_
                                                   (cons (cons _eid8080_
                                                               (cons _expr8081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7872_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7873_
                                                   _post7874_)))
                                              _hd79428060_
                                              _hd79398052_)
                                             (_g79308036_ _g79328039_))))
                                     (_g79308036_ _g79328039_))
                                 (_g79308036_ _g79328039_))))
                         (_g79308036_ _g79328039_))))
                 (_g79308036_ _g79328039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g79298083_ _L7916_)))
                                         _tl78837912_
                                         _hd78827910_)))
                                    (_g78767902_ _g78787905_)))))
                        (_g78758086_ _rest7871_)))))
                 (_generate-values-check7787_
                  (lambda (_check7863_ _body7864_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7864_ '())
                                  (reverse _check7863_)))))
                 (_generate-values-post7788_
                  (lambda (_post7856_ _body7857_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7857_ '())
                                  (map (lambda (_g78587860_)
                                         (cons 'set! _g78587860_))
                                       (reverse _post7856_)))))))
          (let* ((_g77907807_
                  (lambda (_g77917804_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g77917804_)))
                 (_g77897853_
                  (lambda (_g77917810_)
                    (if (gx#stx-pair? _g77917810_)
                        (let ((_e77947812_ (gx#stx-e _g77917810_)))
                          (let ((_hd77957815_ (##car _e77947812_))
                                (_tl77967817_ (##cdr _e77947812_)))
                            (if (gx#stx-pair? _tl77967817_)
                                (let ((_e77977820_ (gx#stx-e _tl77967817_)))
                                  (let ((_hd77987823_ (##car _e77977820_))
                                        (_tl77997825_ (##cdr _e77977820_)))
                                    (if (gx#stx-pair? _tl77997825_)
                                        (let ((_e78007828_
                                               (gx#stx-e _tl77997825_)))
                                          (let ((_hd78017831_
                                                 (##car _e78007828_))
                                                (_tl78027833_
                                                 (##cdr _e78007828_)))
                                            (if (gx#stx-null? _tl78027833_)
                                                ((lambda (_L7836_ _L7837_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7837_)
                                                       (_generate-simple7785_
                                                        _L7837_
                                                        _L7836_)
                                                       (_generate-values7786_
                                                        _L7837_
                                                        _L7836_)))
                                                 _hd78017831_
                                                 _hd77987823_)
                                                (_g77907807_ _g77917810_))))
                                        (_g77907807_ _g77917810_))))
                                (_g77907807_ _g77917810_))))
                        (_g77907807_ _g77917810_)))))
            (_g77897853_ _stx7782_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8095_)
          (let ((_compiled-body?8097_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8095_
             _compiled-body?8097_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12362_
          (let ((_g12361_ (length _g12362_)))
            (cond ((fx= _g12361_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12362_))
                  ((fx= _g12361_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12362_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12362_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7364_)
      (letrec ((_generate-values7366_
                (lambda (_hd7609_ _body7610_)
                  (let _lp7612_ ((_rest7614_ _hd7609_) (_bind7615_ '()))
                    (let* ((_rest76167624_ _rest7614_)
                           (_E76197628_
                            (lambda ()
                              (error '"No clause matching" _rest76167624_)))
                           (_else76187635_
                            (lambda ()
                              (let ((_bind7632_ (reverse _bind7615_))
                                    (_body7633_ (gxc#compile-e _body7610_)))
                                (cons 'letrec*
                                      (cons _bind7632_
                                            (cons _body7633_ '()))))))
                           (_K76207769_
                            (lambda (_rest7638_ _hd-bind7639_)
                              (let* ((_g76427667_
                                      (lambda (_g76437664_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g76437664_)))
                                     (_g76417719_
                                      (lambda (_g76437670_)
                                        (if (gx#stx-pair? _g76437670_)
                                            (let ((_e76577672_
                                                   (gx#stx-e _g76437670_)))
                                              (let ((_hd76587675_
                                                     (##car _e76577672_))
                                                    (_tl76597677_
                                                     (##cdr _e76577672_)))
                                                (if (gx#stx-pair? _tl76597677_)
                                                    (let ((_e76607680_
                                                           (gx#stx-e
                                                            _tl76597677_)))
                                                      (let ((_hd76617683_
                                                             (##car _e76607680_))
                                                            (_tl76627685_
                                                             (##cdr _e76607680_)))
                                                        (if (gx#stx-null?
                                                             _tl76627685_)
                                                            ((lambda (_L7688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7689_)
                       (let* ((_vals7708_ (gxc#generate-runtime-temporary__0))
                              (_tmp7710_ (gxc#generate-runtime-temporary__0))
                              (_expr7712_ (gxc#compile-e _L7688_))
                              (_check-values7714_
                               (gxc#generate-runtime-check-values
                                _tmp7710_
                                _L7689_))
                              (_refs7716_
                               (gxc#generate-runtime-let-values-bind
                                _vals7708_
                                _L7689_)))
                         (_lp7612_
                          _rest7638_
                          (foldl1 cons
                                  (cons (cons _vals7708_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7712_ '()))
                              '())
                        (cons _check-values7714_ (cons _tmp7710_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7615_)
                                  _refs7716_))))
                     _hd76617683_
                     _hd76587675_)
                    (_g76427667_ _g76437670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76427667_
                                                     _g76437670_))))
                                            (_g76427667_ _g76437670_))))
                                     (_g76407766_
                                      (lambda (_g76437722_)
                                        (if (gx#stx-pair? _g76437722_)
                                            (let ((_e76467724_
                                                   (gx#stx-e _g76437722_)))
                                              (let ((_hd76477727_
                                                     (##car _e76467724_))
                                                    (_tl76487729_
                                                     (##cdr _e76467724_)))
                                                (if (gx#stx-pair? _hd76477727_)
                                                    (let ((_e76497732_
                                                           (gx#stx-e
                                                            _hd76477727_)))
                                                      (let ((_hd76507735_
                                                             (##car _e76497732_))
                                                            (_tl76517737_
                                                             (##cdr _e76497732_)))
                                                        (if (gx#stx-null?
                                                             _tl76517737_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl76487729_)
                        (let ((_e76527740_ (gx#stx-e _tl76487729_)))
                          (let ((_hd76537743_ (##car _e76527740_))
                                (_tl76547745_ (##cdr _e76527740_)))
                            (if (gx#stx-null? _tl76547745_)
                                ((lambda (_L7748_ _L7749_)
                                   (let ((_eid7763_
                                          (gxc#generate-runtime-binding-id*
                                           _L7749_))
                                         (_expr7764_ (gxc#compile-e _L7748_)))
                                     (_lp7612_
                                      _rest7638_
                                      (cons (cons _eid7763_
                                                  (cons _expr7764_ '()))
                                            _bind7615_))))
                                 _hd76537743_
                                 _hd76507735_)
                                (_g76417719_ _g76437722_))))
                        (_g76417719_ _g76437722_))
                    (_g76417719_ _g76437722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76417719_
                                                     _g76437722_))))
                                            (_g76417719_ _g76437722_)))))
                                (_g76407766_ _hd-bind7639_)))))
                      (if (##pair? _rest76167624_)
                          (let ((_hd76217772_ (##car _rest76167624_))
                                (_tl76227774_ (##cdr _rest76167624_)))
                            (let* ((_hd-bind7777_ _hd76217772_)
                                   (_rest7779_ _tl76227774_))
                              (_K76207769_ _rest7779_ _hd-bind7777_)))
                          (_else76187635_))))))
               (_generate-letrec?7367_
                (lambda (_hd7499_)
                  (let _lp7501_ ((_rest7503_ _hd7499_))
                    (let* ((_rest75047512_ _rest7503_)
                           (_E75077516_
                            (lambda ()
                              (error '"No clause matching" _rest75047512_)))
                           (_else75067520_ (lambda () '#t))
                           (_K75087597_
                            (lambda (_rest7523_ _hd-bind7524_)
                              (let* ((_g75267543_
                                      (lambda (_g75277540_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g75277540_)))
                                     (_g75257594_
                                      (lambda (_g75277546_)
                                        (if (gx#stx-pair? _g75277546_)
                                            (let ((_e75307548_
                                                   (gx#stx-e _g75277546_)))
                                              (let ((_hd75317551_
                                                     (##car _e75307548_))
                                                    (_tl75327553_
                                                     (##cdr _e75307548_)))
                                                (if (gx#stx-pair? _hd75317551_)
                                                    (let ((_e75337556_
                                                           (gx#stx-e
                                                            _hd75317551_)))
                                                      (let ((_hd75347559_
                                                             (##car _e75337556_))
                                                            (_tl75357561_
                                                             (##cdr _e75337556_)))
                                                        (if (gx#stx-null?
                                                             _tl75357561_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75327553_)
                        (let ((_e75367564_ (gx#stx-e _tl75327553_)))
                          (let ((_hd75377567_ (##car _e75367564_))
                                (_tl75387569_ (##cdr _e75367564_)))
                            (if (gx#stx-null? _tl75387569_)
                                ((lambda (_L7572_ _L7573_)
                                   (if (_is-lambda-expr?7368_ _L7572_)
                                       (_lp7501_ _rest7523_)
                                       '#f))
                                 _hd75377567_
                                 _hd75347559_)
                                (_g75267543_ _g75277546_))))
                        (_g75267543_ _g75277546_))
                    (_g75267543_ _g75277546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g75267543_
                                                     _g75277546_))))
                                            (_g75267543_ _g75277546_)))))
                                (_g75257594_ _hd-bind7524_)))))
                      (if (##pair? _rest75047512_)
                          (let ((_hd75097600_ (##car _rest75047512_))
                                (_tl75107602_ (##cdr _rest75047512_)))
                            (let* ((_hd-bind7605_ _hd75097600_)
                                   (_rest7607_ _tl75107602_))
                              (_K75087597_ _rest7607_ _hd-bind7605_)))
                          (_else75067520_))))))
               (_is-lambda-expr?7368_
                (lambda (_expr7436_)
                  (let* ((_g74397453_
                          (lambda (_g74407450_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g74407450_)))
                         (_g74387460_ (lambda (_g74407456_) ((lambda () '#f))))
                         (_g74377496_
                          (lambda (_g74407463_)
                            (if (gx#stx-pair? _g74407463_)
                                (let ((_e74437465_ (gx#stx-e _g74407463_)))
                                  (let ((_hd74447468_ (##car _e74437465_))
                                        (_tl74457470_ (##cdr _e74437465_)))
                                    (if (gx#identifier? _hd74447468_)
                                        (if (gx#stx-eq? '%#lambda _hd74447468_)
                                            (if (gx#stx-pair? _tl74457470_)
                                                (let ((_e74467473_
                                                       (gx#stx-e
                                                        _tl74457470_)))
                                                  (let ((_hd74477476_
                                                         (##car _e74467473_))
                                                        (_tl74487478_
                                                         (##cdr _e74467473_)))
                                                    ((lambda (_L7481_ _L7482_)
                                                       '#t)
                                                     _tl74487478_
                                                     _hd74477476_)))
                                                (_g74387460_ _g74407463_))
                                            (_g74387460_ _g74407463_))
                                        (_g74387460_ _g74407463_))))
                                (_g74387460_ _g74407463_)))))
                    (_g74377496_ _expr7436_)))))
        (let* ((_g73707387_
                (lambda (_g73717384_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g73717384_)))
               (_g73697433_
                (lambda (_g73717390_)
                  (if (gx#stx-pair? _g73717390_)
                      (let ((_e73747392_ (gx#stx-e _g73717390_)))
                        (let ((_hd73757395_ (##car _e73747392_))
                              (_tl73767397_ (##cdr _e73747392_)))
                          (if (gx#stx-pair? _tl73767397_)
                              (let ((_e73777400_ (gx#stx-e _tl73767397_)))
                                (let ((_hd73787403_ (##car _e73777400_))
                                      (_tl73797405_ (##cdr _e73777400_)))
                                  (if (gx#stx-pair? _tl73797405_)
                                      (let ((_e73807408_
                                             (gx#stx-e _tl73797405_)))
                                        (let ((_hd73817411_
                                               (##car _e73807408_))
                                              (_tl73827413_
                                               (##cdr _e73807408_)))
                                          (if (gx#stx-null? _tl73827413_)
                                              ((lambda (_L7416_ _L7417_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7417_)
                                                     (if (_generate-letrec?7367_
                                                          _L7417_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7417_
                                                          _L7416_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7417_
                                                          _L7416_
                                                          '#f))
                                                     (_generate-values7366_
                                                      _L7417_
                                                      _L7416_)))
                                               _hd73817411_
                                               _hd73787403_)
                                              (_g73707387_ _g73717390_))))
                                      (_g73707387_ _g73717390_))))
                              (_g73707387_ _g73717390_))))
                      (_g73707387_ _g73717390_)))))
          (_g73697433_ _stx7364_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7257_)
      (let _lp7259_ ((_rest7261_ _hd7257_))
        (let* ((_g72657286_
                (lambda (_g72667283_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g72667283_)))
               (_g72647293_ (lambda (_g72667289_) ((lambda () '#f))))
               (_g72637300_
                (lambda (_g72667296_)
                  (if (gx#stx-null? _g72667296_)
                      ((lambda () '#t))
                      (_g72647293_ _g72667296_))))
               (_g72627361_
                (lambda (_g72667303_)
                  (if (gx#stx-pair? _g72667303_)
                      (let ((_e72707305_ (gx#stx-e _g72667303_)))
                        (let ((_hd72717308_ (##car _e72707305_))
                              (_tl72727310_ (##cdr _e72707305_)))
                          (if (gx#stx-pair? _hd72717308_)
                              (let ((_e72737313_ (gx#stx-e _hd72717308_)))
                                (let ((_hd72747316_ (##car _e72737313_))
                                      (_tl72757318_ (##cdr _e72737313_)))
                                  (if (gx#stx-pair? _hd72747316_)
                                      (let ((_e72767321_
                                             (gx#stx-e _hd72747316_)))
                                        (let ((_hd72777324_
                                               (##car _e72767321_))
                                              (_tl72787326_
                                               (##cdr _e72767321_)))
                                          (if (gx#stx-null? _tl72787326_)
                                              (if (gx#stx-pair? _tl72757318_)
                                                  (let ((_e72797329_
                                                         (gx#stx-e
                                                          _tl72757318_)))
                                                    (let ((_hd72807332_
                                                           (##car _e72797329_))
                                                          (_tl72817334_
                                                           (##cdr _e72797329_)))
                                                      (if (gx#stx-null?
                                                           _tl72817334_)
                                                          ((lambda (_L7337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7338_
                            _L7339_)
                     (_lp7259_ _L7337_))
                   _tl72727310_
                   _hd72807332_
                   _hd72777324_)
                  (_g72637300_ _g72667303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72637300_ _g72667303_))
                                              (_g72637300_ _g72667303_))))
                                      (_g72637300_ _g72667303_))))
                              (_g72637300_ _g72667303_))))
                      (_g72637300_ _g72667303_)))))
          (_g72627361_ _rest7261_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7181_ _hd7182_ _body7183_ _compiled-body?7184_)
      (letrec ((_generate17186_
                (lambda (_bind7188_)
                  (let* ((_g71907207_
                          (lambda (_g71917204_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71917204_)))
                         (_g71897254_
                          (lambda (_g71917210_)
                            (if (gx#stx-pair? _g71917210_)
                                (let ((_e71947212_ (gx#stx-e _g71917210_)))
                                  (let ((_hd71957215_ (##car _e71947212_))
                                        (_tl71967217_ (##cdr _e71947212_)))
                                    (if (gx#stx-pair? _hd71957215_)
                                        (let ((_e71977220_
                                               (gx#stx-e _hd71957215_)))
                                          (let ((_hd71987223_
                                                 (##car _e71977220_))
                                                (_tl71997225_
                                                 (##cdr _e71977220_)))
                                            (if (gx#stx-null? _tl71997225_)
                                                (if (gx#stx-pair? _tl71967217_)
                                                    (let ((_e72007228_
                                                           (gx#stx-e
                                                            _tl71967217_)))
                                                      (let ((_hd72017231_
                                                             (##car _e72007228_))
                                                            (_tl72027233_
                                                             (##cdr _e72007228_)))
                                                        (if (gx#stx-null?
                                                             _tl72027233_)
                                                            ((lambda (_L7236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7237_)
                       (cons (gxc#generate-runtime-binding-id* _L7237_)
                             (cons (gxc#compile-e _L7236_) '())))
                     _hd72017231_
                     _hd71987223_)
                    (_g71907207_ _g71917210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71907207_ _g71917210_))
                                                (_g71907207_ _g71917210_))))
                                        (_g71907207_ _g71917210_))))
                                (_g71907207_ _g71917210_)))))
                    (_g71897254_ _bind7188_)))))
        (cons _form7181_
              (cons (map _generate17186_ _hd7182_)
                    (cons (if _compiled-body?7184_
                              _body7183_
                              (gxc#compile-e _body7183_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7089_)
      (letrec ((_generate17091_
                (lambda (_datum7143_)
                  (if (let ((_$e7145_ (null? _datum7143_)))
                        (if _$e7145_
                            _$e7145_
                            (let ((_$e7148_ (interned-symbol? _datum7143_)))
                              (if _$e7148_
                                  _$e7148_
                                  (let ((_$e7151_
                                         (gx#self-quoting? _datum7143_)))
                                    (if _$e7151_
                                        _$e7151_
                                        (eof-object? _datum7143_)))))))
                      _datum7143_
                      (if (uninterned-symbol? _datum7143_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7143_
                           '#t)
                          (if (pair? _datum7143_)
                              (cons (_generate17091_ (car _datum7143_))
                                    (_generate17091_ (cdr _datum7143_)))
                              (if (box? _datum7143_)
                                  (box (_generate17091_ (unbox _datum7143_)))
                                  (if (vector? _datum7143_)
                                      (vector-map _generate17091_ _datum7143_)
                                      (if (let ((_$e7154_
                                                 (s8vector? _datum7143_)))
                                            (if _$e7154_
                                                _$e7154_
                                                (let ((_$e7157_
                                                       (u8vector?
                                                        _datum7143_)))
                                                  (if _$e7157_
                                                      _$e7157_
                                                      (let ((_$e7160_
                                                             (s16vector?
                                                              _datum7143_)))
                                                        (if _$e7160_
                                                            _$e7160_
                                                            (let ((_$e7163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7143_)))
                      (if _$e7163_
                          _$e7163_
                          (let ((_$e7166_ (s32vector? _datum7143_)))
                            (if _$e7166_
                                _$e7166_
                                (let ((_$e7169_ (u32vector? _datum7143_)))
                                  (if _$e7169_
                                      _$e7169_
                                      (let ((_$e7172_
                                             (s64vector? _datum7143_)))
                                        (if _$e7172_
                                            _$e7172_
                                            (let ((_$e7175_
                                                   (u64vector? _datum7143_)))
                                              (if _$e7175_
                                                  _$e7175_
                                                  (let ((_$e7178_
                                                         (f32vector?
                                                          _datum7143_)))
                                                    (if _$e7178_
                                                        _$e7178_
                                                        (f64vector?
                                                         _datum7143_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7143_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7089_))))))))))
        (let* ((_g70937106_
                (lambda (_g70947103_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70947103_)))
               (_g70927140_
                (lambda (_g70947109_)
                  (if (gx#stx-pair? _g70947109_)
                      (let ((_e70967111_ (gx#stx-e _g70947109_)))
                        (let ((_hd70977114_ (##car _e70967111_))
                              (_tl70987116_ (##cdr _e70967111_)))
                          (if (gx#stx-pair? _tl70987116_)
                              (let ((_e70997119_ (gx#stx-e _tl70987116_)))
                                (let ((_hd71007122_ (##car _e70997119_))
                                      (_tl71017124_ (##cdr _e70997119_)))
                                  (if (gx#stx-null? _tl71017124_)
                                      ((lambda (_L7127_)
                                         (cons 'quote
                                               (cons (_generate17091_
                                                      (gx#stx-e _L7127_))
                                                     '())))
                                       _hd71007122_)
                                      (_g70937106_ _g70947109_))))
                              (_g70937106_ _g70947109_))))
                      (_g70937106_ _g70947109_)))))
          (_g70927140_ _stx7089_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6782_)
      (let* ((_g67846798_
              (lambda (_g67856795_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67856795_)))
             (_g67837086_
              (lambda (_g67856801_)
                (if (gx#stx-pair? _g67856801_)
                    (let ((_e67886803_ (gx#stx-e _g67856801_)))
                      (let ((_hd67896806_ (##car _e67886803_))
                            (_tl67906808_ (##cdr _e67886803_)))
                        (if (gx#stx-pair? _tl67906808_)
                            (let ((_e67916811_ (gx#stx-e _tl67906808_)))
                              (let ((_hd67926814_ (##car _e67916811_))
                                    (_tl67936816_ (##cdr _e67916811_)))
                                ((lambda (_L6819_ _L6820_)
                                   (let ((_rator6833_ (gxc#compile-e _L6820_))
                                         (_rands6834_
                                          (map gxc#compile-e _L6819_)))
                                     (let* ((_g68376889_
                                             (lambda (_g68386886_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g68386886_)))
                                            (_g68366896_
                                             (lambda (_g68386892_)
                                               ((lambda ()
                                                  (cons _rator6833_
                                                        _rands6834_)))))
                                            (_g68357083_
                                             (lambda (_g68386899_)
                                               (if (gx#stx-pair? _g68386899_)
                                                   (let ((_e68436901_
                                                          (gx#stx-e
                                                           _g68386899_)))
                                                     (let ((_hd68446904_
                                                            (##car _e68436901_))
                                                           (_tl68456906_
                                                            (##cdr _e68436901_)))
                                                       (if (gx#identifier?
                                                            _hd68446904_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd68446904_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl68456906_)
                           (let ((_e68466909_ (gx#stx-e _tl68456906_)))
                             (let ((_hd68476912_ (##car _e68466909_))
                                   (_tl68486914_ (##cdr _e68466909_)))
                               (if (gx#stx-pair? _hd68476912_)
                                   (let ((_e68496917_ (gx#stx-e _hd68476912_)))
                                     (let ((_hd68506920_ (##car _e68496917_))
                                           (_tl68516922_ (##cdr _e68496917_)))
                                       (if (gx#stx-pair? _hd68506920_)
                                           (let ((_e68526925_
                                                  (gx#stx-e _hd68506920_)))
                                             (let ((_hd68536928_
                                                    (##car _e68526925_))
                                                   (_tl68546930_
                                                    (##cdr _e68526925_)))
                                               (if (gx#stx-pair? _tl68546930_)
                                                   (let ((_e68556933_
                                                          (gx#stx-e
                                                           _tl68546930_)))
                                                     (let ((_hd68566936_
                                                            (##car _e68556933_))
                                                           (_tl68576938_
                                                            (##cdr _e68556933_)))
                                                       (if (gx#stx-pair?
                                                            _hd68566936_)
                                                           (let ((_e68586941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd68566936_)))
                     (let ((_hd68596944_ (##car _e68586941_))
                           (_tl68606946_ (##cdr _e68586941_)))
                       (if (gx#identifier? _hd68596944_)
                           (if (gx#stx-eq? 'lambda _hd68596944_)
                               (if (gx#stx-pair? _tl68606946_)
                                   (let ((_e68616949_ (gx#stx-e _tl68606946_)))
                                     (let ((_hd68626952_ (##car _e68616949_))
                                           (_tl68636954_ (##cdr _e68616949_)))
                                       (if (gx#stx-pair/null? _hd68626952_)
                                           (if (fx>= (gx#stx-length
                                                      _hd68626952_)
                                                     '0)
                                               (let ((_g12363_
                                                      (gx#syntax-split-splice
                                                       _hd68626952_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12364_
                                                          (values-count
                                                           _g12363_)))
                                                     (if (not (fx= _g12364_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12364_)))
                                                   (let ((_target68646957_
                                                          (values-ref
                                                           _g12363_
                                                           0))
                                                         (_tl68666959_
                                                          (values-ref
                                                           _g12363_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl68666959_)
                                                         (letrec ((_loop68676962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd68656965_ _arg68716967_)
                             (if (gx#stx-pair? _hd68656965_)
                                 (let ((_e68686970_ (gx#stx-e _hd68656965_)))
                                   (let ((_lp-hd68696973_ (##car _e68686970_))
                                         (_lp-tl68706975_ (##cdr _e68686970_)))
                                     (_loop68676962_
                                      _lp-tl68706975_
                                      (cons _lp-hd68696973_ _arg68716967_))))
                                 (let ((_arg68726978_ (reverse _arg68716967_)))
                                   (if (gx#stx-pair/null? _tl68636954_)
                                       (if (fx>= (gx#stx-length _tl68636954_)
                                                 '0)
                                           (let ((_g12365_
                                                  (gx#syntax-split-splice
                                                   _tl68636954_
                                                   '0)))
                                             (begin
                                               (let ((_g12366_
                                                      (values-count _g12365_)))
                                                 (if (not (fx= _g12366_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12366_)))
                                               (let ((_target68736981_
                                                      (values-ref _g12365_ 0))
                                                     (_tl68756983_
                                                      (values-ref _g12365_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl68756983_)
                                                     (letrec ((_loop68766986_
                                                               (lambda (_hd68746989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body68806991_)
                         (if (gx#stx-pair? _hd68746989_)
                             (let ((_e68776994_ (gx#stx-e _hd68746989_)))
                               (let ((_lp-hd68786997_ (##car _e68776994_))
                                     (_lp-tl68796999_ (##cdr _e68776994_)))
                                 (_loop68766986_
                                  _lp-tl68796999_
                                  (cons _lp-hd68786997_ _body68806991_))))
                             (let ((_body68817002_ (reverse _body68806991_)))
                               (if (gx#stx-null? _tl68576938_)
                                   (if (gx#stx-null? _tl68516922_)
                                       (if (gx#stx-pair? _tl68486914_)
                                           (let ((_e68827005_
                                                  (gx#stx-e _tl68486914_)))
                                             (let ((_hd68837008_
                                                    (##car _e68827005_))
                                                   (_tl68847010_
                                                    (##cdr _e68827005_)))
                                               (if (gx#stx-null? _tl68847010_)
                                                   ((lambda (_L7013_
                                                             _L7014_
                                                             _L7015_
                                                             _L7016_)
                                                      (if (eq? _L7016_ _L7013_)
                                                          (if (fx= (length _rands6834_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g70527055_ _g70537057_)
                                               (cons _g70527055_ _g70537057_))
                                             '()
                                             _L7015_))))
                      (let* ((_id7060_ _L7016_)
                             (_args7069_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g70617064_ _g70627066_)
                                          (cons _g70617064_ _g70627066_))
                                        '()
                                        _L7015_)))
                             (_body7078_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g70707073_ _g70717075_)
                                          (cons _g70707073_ _g70717075_))
                                        '()
                                        _L7014_)))
                             (_init7080_ (map list _args7069_ _rands6834_)))
                        (cons 'let
                              (cons _id7060_ (cons _init7080_ _body7078_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6782_))
                  (_g68366896_ _g68386899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd68837008_
                                                    _body68817002_
                                                    _arg68726978_
                                                    _hd68536928_)
                                                   (_g68366896_ _g68386899_))))
                                           (_g68366896_ _g68386899_))
                                       (_g68366896_ _g68386899_))
                                   (_g68366896_ _g68386899_)))))))
               (_loop68766986_ _target68736981_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g68366896_
                                                      _g68386899_)))))
                                           (_g68366896_ _g68386899_))
                                       (_g68366896_ _g68386899_)))))))
                   (_loop68676962_ _target68646957_ '()))
                 (_g68366896_ _g68386899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68366896_ _g68386899_))
                                           (_g68366896_ _g68386899_))))
                                   (_g68366896_ _g68386899_))
                               (_g68366896_ _g68386899_))
                           (_g68366896_ _g68386899_))))
                   (_g68366896_ _g68386899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g68366896_ _g68386899_))))
                                           (_g68366896_ _g68386899_))))
                                   (_g68366896_ _g68386899_))))
                           (_g68366896_ _g68386899_))
                       (_g68366896_ _g68386899_))
                   (_g68366896_ _g68386899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g68366896_
                                                    _g68386899_)))))
                                       (_g68357083_ _rator6833_))))
                                 _tl67936816_
                                 _hd67926814_)))
                            (_g67846798_ _g67856801_))))
                    (_g67846798_ _g67856801_)))))
        (_g67837086_ _stx6782_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6744_)
      (let* ((_g67466756_
              (lambda (_g67476753_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67476753_)))
             (_g67456779_
              (lambda (_g67476759_)
                (if (gx#stx-pair? _g67476759_)
                    (let ((_e67496761_ (gx#stx-e _g67476759_)))
                      (let ((_hd67506764_ (##car _e67496761_))
                            (_tl67516766_ (##cdr _e67496761_)))
                        ((lambda (_L6769_)
                           (cons 'if (map gxc#compile-e _L6769_)))
                         _tl67516766_)))
                    (_g67466756_ _g67476759_)))))
        (_g67456779_ _stx6744_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6693_)
      (let* ((_g66956708_
              (lambda (_g66966705_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66966705_)))
             (_g66946741_
              (lambda (_g66966711_)
                (if (gx#stx-pair? _g66966711_)
                    (let ((_e66986713_ (gx#stx-e _g66966711_)))
                      (let ((_hd66996716_ (##car _e66986713_))
                            (_tl67006718_ (##cdr _e66986713_)))
                        (if (gx#stx-pair? _tl67006718_)
                            (let ((_e67016721_ (gx#stx-e _tl67006718_)))
                              (let ((_hd67026724_ (##car _e67016721_))
                                    (_tl67036726_ (##cdr _e67016721_)))
                                (if (gx#stx-null? _tl67036726_)
                                    ((lambda (_L6729_)
                                       (gxc#generate-runtime-binding-id
                                        _L6729_))
                                     _hd67026724_)
                                    (_g66956708_ _g66966711_))))
                            (_g66956708_ _g66966711_))))
                    (_g66956708_ _g66966711_)))))
        (_g66946741_ _stx6693_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6626_)
      (let* ((_g66286645_
              (lambda (_g66296642_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66296642_)))
             (_g66276690_
              (lambda (_g66296648_)
                (if (gx#stx-pair? _g66296648_)
                    (let ((_e66326650_ (gx#stx-e _g66296648_)))
                      (let ((_hd66336653_ (##car _e66326650_))
                            (_tl66346655_ (##cdr _e66326650_)))
                        (if (gx#stx-pair? _tl66346655_)
                            (let ((_e66356658_ (gx#stx-e _tl66346655_)))
                              (let ((_hd66366661_ (##car _e66356658_))
                                    (_tl66376663_ (##cdr _e66356658_)))
                                (if (gx#stx-pair? _tl66376663_)
                                    (let ((_e66386666_
                                           (gx#stx-e _tl66376663_)))
                                      (let ((_hd66396669_ (##car _e66386666_))
                                            (_tl66406671_ (##cdr _e66386666_)))
                                        (if (gx#stx-null? _tl66406671_)
                                            ((lambda (_L6674_ _L6675_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6675_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6674_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd66396669_
                                             _hd66366661_)
                                            (_g66286645_ _g66296648_))))
                                    (_g66286645_ _g66296648_))))
                            (_g66286645_ _g66296648_))))
                    (_g66286645_ _g66296648_)))))
        (_g66276690_ _stx6626_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6559_)
      (let* ((_g65616578_
              (lambda (_g65626575_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65626575_)))
             (_g65606623_
              (lambda (_g65626581_)
                (if (gx#stx-pair? _g65626581_)
                    (let ((_e65656583_ (gx#stx-e _g65626581_)))
                      (let ((_hd65666586_ (##car _e65656583_))
                            (_tl65676588_ (##cdr _e65656583_)))
                        (if (gx#stx-pair? _tl65676588_)
                            (let ((_e65686591_ (gx#stx-e _tl65676588_)))
                              (let ((_hd65696594_ (##car _e65686591_))
                                    (_tl65706596_ (##cdr _e65686591_)))
                                (if (gx#stx-pair? _tl65706596_)
                                    (let ((_e65716599_
                                           (gx#stx-e _tl65706596_)))
                                      (let ((_hd65726602_ (##car _e65716599_))
                                            (_tl65736604_ (##cdr _e65716599_)))
                                        (if (gx#stx-null? _tl65736604_)
                                            ((lambda (_L6607_ _L6608_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6607_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6608_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd65726602_
                                             _hd65696594_)
                                            (_g65616578_ _g65626581_))))
                                    (_g65616578_ _g65626581_))))
                            (_g65616578_ _g65626581_))))
                    (_g65616578_ _g65626581_)))))
        (_g65606623_ _stx6559_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6492_)
      (let* ((_g64946511_
              (lambda (_g64956508_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64956508_)))
             (_g64936556_
              (lambda (_g64956514_)
                (if (gx#stx-pair? _g64956514_)
                    (let ((_e64986516_ (gx#stx-e _g64956514_)))
                      (let ((_hd64996519_ (##car _e64986516_))
                            (_tl65006521_ (##cdr _e64986516_)))
                        (if (gx#stx-pair? _tl65006521_)
                            (let ((_e65016524_ (gx#stx-e _tl65006521_)))
                              (let ((_hd65026527_ (##car _e65016524_))
                                    (_tl65036529_ (##cdr _e65016524_)))
                                (if (gx#stx-pair? _tl65036529_)
                                    (let ((_e65046532_
                                           (gx#stx-e _tl65036529_)))
                                      (let ((_hd65056535_ (##car _e65046532_))
                                            (_tl65066537_ (##cdr _e65046532_)))
                                        (if (gx#stx-null? _tl65066537_)
                                            ((lambda (_L6540_ _L6541_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6540_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6541_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd65056535_
                                             _hd65026527_)
                                            (_g64946511_ _g64956514_))))
                                    (_g64946511_ _g64956514_))))
                            (_g64946511_ _g64956514_))))
                    (_g64946511_ _g64956514_)))))
        (_g64936556_ _stx6492_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6409_)
      (let* ((_g64116432_
              (lambda (_g64126429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64126429_)))
             (_g64106489_
              (lambda (_g64126435_)
                (if (gx#stx-pair? _g64126435_)
                    (let ((_e64166437_ (gx#stx-e _g64126435_)))
                      (let ((_hd64176440_ (##car _e64166437_))
                            (_tl64186442_ (##cdr _e64166437_)))
                        (if (gx#stx-pair? _tl64186442_)
                            (let ((_e64196445_ (gx#stx-e _tl64186442_)))
                              (let ((_hd64206448_ (##car _e64196445_))
                                    (_tl64216450_ (##cdr _e64196445_)))
                                (if (gx#stx-pair? _tl64216450_)
                                    (let ((_e64226453_
                                           (gx#stx-e _tl64216450_)))
                                      (let ((_hd64236456_ (##car _e64226453_))
                                            (_tl64246458_ (##cdr _e64226453_)))
                                        (if (gx#stx-pair? _tl64246458_)
                                            (let ((_e64256461_
                                                   (gx#stx-e _tl64246458_)))
                                              (let ((_hd64266464_
                                                     (##car _e64256461_))
                                                    (_tl64276466_
                                                     (##cdr _e64256461_)))
                                                (if (gx#stx-null? _tl64276466_)
                                                    ((lambda (_L6469_
                                                              _L6470_
                                                              _L6471_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6469_)
                           (cons (gxc#compile-e _L6470_)
                                 (cons (gxc#compile-e _L6471_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd64266464_
                                                     _hd64236456_
                                                     _hd64206448_)
                                                    (_g64116432_
                                                     _g64126435_))))
                                            (_g64116432_ _g64126435_))))
                                    (_g64116432_ _g64126435_))))
                            (_g64116432_ _g64126435_))))
                    (_g64116432_ _g64126435_)))))
        (_g64106489_ _stx6409_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6310_)
      (let* ((_g63126337_
              (lambda (_g63136334_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63136334_)))
             (_g63116406_
              (lambda (_g63136340_)
                (if (gx#stx-pair? _g63136340_)
                    (let ((_e63186342_ (gx#stx-e _g63136340_)))
                      (let ((_hd63196345_ (##car _e63186342_))
                            (_tl63206347_ (##cdr _e63186342_)))
                        (if (gx#stx-pair? _tl63206347_)
                            (let ((_e63216350_ (gx#stx-e _tl63206347_)))
                              (let ((_hd63226353_ (##car _e63216350_))
                                    (_tl63236355_ (##cdr _e63216350_)))
                                (if (gx#stx-pair? _tl63236355_)
                                    (let ((_e63246358_
                                           (gx#stx-e _tl63236355_)))
                                      (let ((_hd63256361_ (##car _e63246358_))
                                            (_tl63266363_ (##cdr _e63246358_)))
                                        (if (gx#stx-pair? _tl63266363_)
                                            (let ((_e63276366_
                                                   (gx#stx-e _tl63266363_)))
                                              (let ((_hd63286369_
                                                     (##car _e63276366_))
                                                    (_tl63296371_
                                                     (##cdr _e63276366_)))
                                                (if (gx#stx-pair? _tl63296371_)
                                                    (let ((_e63306374_
                                                           (gx#stx-e
                                                            _tl63296371_)))
                                                      (let ((_hd63316377_
                                                             (##car _e63306374_))
                                                            (_tl63326379_
                                                             (##cdr _e63306374_)))
                                                        (if (gx#stx-null?
                                                             _tl63326379_)
                                                            ((lambda (_L6382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6383_
                              _L6384_
                              _L6385_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6383_)
                                   (cons (gxc#compile-e _L6382_)
                                         (cons (gxc#compile-e _L6384_)
                                               (cons (gxc#compile-e _L6385_)
                                                     (cons ''#f '())))))))
                     _hd63316377_
                     _hd63286369_
                     _hd63256361_
                     _hd63226353_)
                    (_g63126337_ _g63136340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63126337_
                                                     _g63136340_))))
                                            (_g63126337_ _g63136340_))))
                                    (_g63126337_ _g63136340_))))
                            (_g63126337_ _g63136340_))))
                    (_g63126337_ _g63136340_)))))
        (_g63116406_ _stx6310_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6227_)
      (let* ((_g62296250_
              (lambda (_g62306247_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62306247_)))
             (_g62286307_
              (lambda (_g62306253_)
                (if (gx#stx-pair? _g62306253_)
                    (let ((_e62346255_ (gx#stx-e _g62306253_)))
                      (let ((_hd62356258_ (##car _e62346255_))
                            (_tl62366260_ (##cdr _e62346255_)))
                        (if (gx#stx-pair? _tl62366260_)
                            (let ((_e62376263_ (gx#stx-e _tl62366260_)))
                              (let ((_hd62386266_ (##car _e62376263_))
                                    (_tl62396268_ (##cdr _e62376263_)))
                                (if (gx#stx-pair? _tl62396268_)
                                    (let ((_e62406271_
                                           (gx#stx-e _tl62396268_)))
                                      (let ((_hd62416274_ (##car _e62406271_))
                                            (_tl62426276_ (##cdr _e62406271_)))
                                        (if (gx#stx-pair? _tl62426276_)
                                            (let ((_e62436279_
                                                   (gx#stx-e _tl62426276_)))
                                              (let ((_hd62446282_
                                                     (##car _e62436279_))
                                                    (_tl62456284_
                                                     (##cdr _e62436279_)))
                                                (if (gx#stx-null? _tl62456284_)
                                                    ((lambda (_L6287_
                                                              _L6288_
                                                              _L6289_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6287_)
                           (cons (gxc#compile-e _L6288_)
                                 (cons (gxc#compile-e _L6289_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd62446282_
                                                     _hd62416274_
                                                     _hd62386266_)
                                                    (_g62296250_
                                                     _g62306253_))))
                                            (_g62296250_ _g62306253_))))
                                    (_g62296250_ _g62306253_))))
                            (_g62296250_ _g62306253_))))
                    (_g62296250_ _g62306253_)))))
        (_g62286307_ _stx6227_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6128_)
      (let* ((_g61306155_
              (lambda (_g61316152_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61316152_)))
             (_g61296224_
              (lambda (_g61316158_)
                (if (gx#stx-pair? _g61316158_)
                    (let ((_e61366160_ (gx#stx-e _g61316158_)))
                      (let ((_hd61376163_ (##car _e61366160_))
                            (_tl61386165_ (##cdr _e61366160_)))
                        (if (gx#stx-pair? _tl61386165_)
                            (let ((_e61396168_ (gx#stx-e _tl61386165_)))
                              (let ((_hd61406171_ (##car _e61396168_))
                                    (_tl61416173_ (##cdr _e61396168_)))
                                (if (gx#stx-pair? _tl61416173_)
                                    (let ((_e61426176_
                                           (gx#stx-e _tl61416173_)))
                                      (let ((_hd61436179_ (##car _e61426176_))
                                            (_tl61446181_ (##cdr _e61426176_)))
                                        (if (gx#stx-pair? _tl61446181_)
                                            (let ((_e61456184_
                                                   (gx#stx-e _tl61446181_)))
                                              (let ((_hd61466187_
                                                     (##car _e61456184_))
                                                    (_tl61476189_
                                                     (##cdr _e61456184_)))
                                                (if (gx#stx-pair? _tl61476189_)
                                                    (let ((_e61486192_
                                                           (gx#stx-e
                                                            _tl61476189_)))
                                                      (let ((_hd61496195_
                                                             (##car _e61486192_))
                                                            (_tl61506197_
                                                             (##cdr _e61486192_)))
                                                        (if (gx#stx-null?
                                                             _tl61506197_)
                                                            ((lambda (_L6200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6201_
                              _L6202_
                              _L6203_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6201_)
                                   (cons (gxc#compile-e _L6200_)
                                         (cons (gxc#compile-e _L6202_)
                                               (cons (gxc#compile-e _L6203_)
                                                     (cons ''#f '())))))))
                     _hd61496195_
                     _hd61466187_
                     _hd61436179_
                     _hd61406171_)
                    (_g61306155_ _g61316158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g61306155_
                                                     _g61316158_))))
                                            (_g61306155_ _g61316158_))))
                                    (_g61306155_ _g61316158_))))
                            (_g61306155_ _g61316158_))))
                    (_g61306155_ _g61316158_)))))
        (_g61296224_ _stx6128_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6045_)
      (let* ((_g60476068_
              (lambda (_g60486065_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60486065_)))
             (_g60466125_
              (lambda (_g60486071_)
                (if (gx#stx-pair? _g60486071_)
                    (let ((_e60526073_ (gx#stx-e _g60486071_)))
                      (let ((_hd60536076_ (##car _e60526073_))
                            (_tl60546078_ (##cdr _e60526073_)))
                        (if (gx#stx-pair? _tl60546078_)
                            (let ((_e60556081_ (gx#stx-e _tl60546078_)))
                              (let ((_hd60566084_ (##car _e60556081_))
                                    (_tl60576086_ (##cdr _e60556081_)))
                                (if (gx#stx-pair? _tl60576086_)
                                    (let ((_e60586089_
                                           (gx#stx-e _tl60576086_)))
                                      (let ((_hd60596092_ (##car _e60586089_))
                                            (_tl60606094_ (##cdr _e60586089_)))
                                        (if (gx#stx-pair? _tl60606094_)
                                            (let ((_e60616097_
                                                   (gx#stx-e _tl60606094_)))
                                              (let ((_hd60626100_
                                                     (##car _e60616097_))
                                                    (_tl60636102_
                                                     (##cdr _e60616097_)))
                                                (if (gx#stx-null? _tl60636102_)
                                                    ((lambda (_L6105_
                                                              _L6106_
                                                              _L6107_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6105_)
                           (cons (gxc#compile-e _L6106_)
                                 (cons (gxc#compile-e _L6107_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd60626100_
                                                     _hd60596092_
                                                     _hd60566084_)
                                                    (_g60476068_
                                                     _g60486071_))))
                                            (_g60476068_ _g60486071_))))
                                    (_g60476068_ _g60486071_))))
                            (_g60476068_ _g60486071_))))
                    (_g60476068_ _g60486071_)))))
        (_g60466125_ _stx6045_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5946_)
      (let* ((_g59485973_
              (lambda (_g59495970_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59495970_)))
             (_g59476042_
              (lambda (_g59495976_)
                (if (gx#stx-pair? _g59495976_)
                    (let ((_e59545978_ (gx#stx-e _g59495976_)))
                      (let ((_hd59555981_ (##car _e59545978_))
                            (_tl59565983_ (##cdr _e59545978_)))
                        (if (gx#stx-pair? _tl59565983_)
                            (let ((_e59575986_ (gx#stx-e _tl59565983_)))
                              (let ((_hd59585989_ (##car _e59575986_))
                                    (_tl59595991_ (##cdr _e59575986_)))
                                (if (gx#stx-pair? _tl59595991_)
                                    (let ((_e59605994_
                                           (gx#stx-e _tl59595991_)))
                                      (let ((_hd59615997_ (##car _e59605994_))
                                            (_tl59625999_ (##cdr _e59605994_)))
                                        (if (gx#stx-pair? _tl59625999_)
                                            (let ((_e59636002_
                                                   (gx#stx-e _tl59625999_)))
                                              (let ((_hd59646005_
                                                     (##car _e59636002_))
                                                    (_tl59656007_
                                                     (##cdr _e59636002_)))
                                                (if (gx#stx-pair? _tl59656007_)
                                                    (let ((_e59666010_
                                                           (gx#stx-e
                                                            _tl59656007_)))
                                                      (let ((_hd59676013_
                                                             (##car _e59666010_))
                                                            (_tl59686015_
                                                             (##cdr _e59666010_)))
                                                        (if (gx#stx-null?
                                                             _tl59686015_)
                                                            ((lambda (_L6018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6019_
                              _L6020_
                              _L6021_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6019_)
                                   (cons (gxc#compile-e _L6018_)
                                         (cons (gxc#compile-e _L6020_)
                                               (cons (gxc#compile-e _L6021_)
                                                     (cons ''#f '())))))))
                     _hd59676013_
                     _hd59646005_
                     _hd59615997_
                     _hd59585989_)
                    (_g59485973_ _g59495976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g59485973_
                                                     _g59495976_))))
                                            (_g59485973_ _g59495976_))))
                                    (_g59485973_ _g59495976_))))
                            (_g59485973_ _g59495976_))))
                    (_g59485973_ _g59495976_)))))
        (_g59476042_ _stx5946_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5800_)
      (letrec ((_import-set-template5802_
                (lambda (_in5898_ _phi5899_)
                  (let ((_iphi5901_
                         (fx+ _phi5899_
                              (##direct-structure-ref
                               _in5898_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports5902_
                         (##structure-ref
                          (##direct-structure-ref
                           _in5898_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp5904_ ((_rest5906_ _imports5902_) (_r5907_ '()))
                      (let* ((_rest59085916_ _rest5906_)
                             (_E59115920_
                              (lambda ()
                                (error '"No clause matching" _rest59085916_)))
                             (_else59105924_ (lambda () _r5907_))
                             (_K59125934_
                              (lambda (_rest5927_ _in5928_)
                                (if (##structure-instance-of?
                                     _in5928_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi5901_)
                                        (_lp5904_
                                         _rest5927_
                                         (cons _in5928_ _r5907_))
                                        (_lp5904_ _rest5927_ _r5907_))
                                    (if (##structure-direct-instance-of?
                                         _in5928_
                                         'gx#module-import::t)
                                        (let ((_iphi5930_
                                               (fx+ _phi5899_
                                                    (##direct-structure-ref
                                                     _in5928_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi5930_)
                                              (_lp5904_
                                               _rest5927_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in5928_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r5907_))
                                              (_lp5904_ _rest5927_ _r5907_)))
                                        (if (##structure-direct-instance-of?
                                             _in5928_
                                             'gx#import-set::t)
                                            (let ((_xphi5932_
                                                   (fx+ _iphi5901_
                                                        (##direct-structure-ref
                                                         _in5928_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi5932_)
                                                  (_lp5904_
                                                   _rest5927_
                                                   (cons (##direct-structure-ref
                                                          _in5928_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r5907_))
                                                  (if (fxpositive? _xphi5932_)
                                                      (_lp5904_
                                                       _rest5927_
                                                       (foldl1 cons
                                                               _r5907_
                                                               (_import-set-template5802_
                                                                _in5928_
                                                                _iphi5901_)))
                                                      (_lp5904_
                                                       _rest5927_
                                                       _r5907_))))
                                            (_lp5904_ _rest5927_ _r5907_)))))))
                        (if (##pair? _rest59085916_)
                            (let ((_hd59135937_ (##car _rest59085916_))
                                  (_tl59145939_ (##cdr _rest59085916_)))
                              (let* ((_in5942_ _hd59135937_)
                                     (_rest5944_ _tl59145939_))
                                (_K59125934_ _rest5944_ _in5942_)))
                            (_else59105924_))))))))
        (let* ((_g58045814_
                (lambda (_g58055811_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58055811_)))
               (_g58035895_
                (lambda (_g58055817_)
                  (if (gx#stx-pair? _g58055817_)
                      (let ((_e58075819_ (gx#stx-e _g58055817_)))
                        (let ((_hd58085822_ (##car _e58075819_))
                              (_tl58095824_ (##cdr _e58075819_)))
                          ((lambda (_L5827_)
                             (let ((_ht5838_ (make-hash-table-eq)))
                               (let _lp5840_ ((_rest5842_ _L5827_)
                                              (_loads5843_ '()))
                                 (letrec ((_K5845_ (lambda (_ctx5888_
                                                            _rest5889_)
                                                     (let ((_id5891_
                                                            (##structure-ref
                                                             _ctx5888_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht5838_
                                                            _id5891_
                                                            '#f)
                                                           (_lp5840_
                                                            _rest5889_
                                                            _loads5843_)
                                                           (let ((_rt5893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append (symbol->string _id5891_) '"__rt")))
                     (begin
                       (table-set! _ht5838_ _id5891_ _rt5893_)
                       (_lp5840_ _rest5889_ (cons _rt5893_ _loads5843_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest58465854_ _rest5842_)
                                          (_E58495858_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest58465854_)))
                                          (_else58485866_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g58615863_)
                                                          (list 'load-module
                                                                _g58615863_))
                                                        (reverse _loads5843_)))))
                                          (_K58505876_
                                           (lambda (_rest5869_ _in5870_)
                                             (if (##structure-instance-of?
                                                  _in5870_
                                                  'gx#module-context::t)
                                                 (_K5845_ _in5870_ _rest5869_)
                                                 (if (##structure-direct-instance-of?
                                                      _in5870_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in5870_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K5845_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in5870_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest5869_)
                 (_lp5840_ _rest5869_ _loads5843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in5870_
                                                          'gx#import-set::t)
                                                         (let ((_phi5872_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in5870_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi5872_)
                       (_K5845_ (##direct-structure-ref
                                 _in5870_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest5869_)
                       (if (fxpositive? _phi5872_)
                           (let ((_deps5874_
                                  (_import-set-template5802_ _in5870_ '0)))
                             (_lp5840_
                              (foldl1 cons _rest5869_ _deps5874_)
                              _loads5843_))
                           (_lp5840_ _rest5869_ _loads5843_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx5800_
                  _in5870_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest58465854_)
                                         (let ((_hd58515879_
                                                (##car _rest58465854_))
                                               (_tl58525881_
                                                (##cdr _rest58465854_)))
                                           (let* ((_in5884_ _hd58515879_)
                                                  (_rest5886_ _tl58525881_))
                                             (_K58505876_
                                              _rest5886_
                                              _in5884_)))
                                         (_else58485866_)))))))
                           _tl58095824_)))
                      (_g58045814_ _g58055817_)))))
          (_g58035895_ _stx5800_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx5623_)
      (letrec ((_add-lift!5625_
                (lambda (_expr5798_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5798_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5626_
                (lambda (_stxq5793_)
                  (let ((_gid5795_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid5796_
                         (gxc#generate-runtime-identifier _stxq5793_)))
                    (begin
                      (_add-lift!5625_
                       (cons 'define
                             (cons _gid5795_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5796_
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
                      _gid5795_))))
               (_generate-serialized5627_
                (lambda (_stxq5783_ _marks5784_)
                  (let* ((_mark-refs5786_
                          (map _generate-mark5628_ _marks5784_))
                         (_gid5788_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid5790_
                          (gxc#generate-runtime-identifier _stxq5783_)))
                    (begin
                      (_add-lift!5625_
                       (cons 'define
                             (cons _gid5788_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5786_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5788_))))
               (_generate-mark5628_
                (lambda (_mark5769_)
                  (let ((_$e5771_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5769_
                          '#f)))
                    (if _$e5771_
                        (values _$e5771_)
                        (let* ((_gid5774_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr5776_ (_serialize-mark5629_ _mark5769_))
                               (_ctx5778_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5769_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5780_
                                (if (eq? _ctx5778_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5630_
                                                             _ctx5778_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5769_
                             _gid5774_)
                            (_add-lift!5625_
                             (cons 'define
                                   (cons _gid5774_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5776_ '()))
                   (cons _ctx-ref5780_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5774_))))))
               (_serialize-mark5629_
                (lambda (_mark5716_)
                  (letrec ((_quote-e5718_
                            (lambda (_sym5767_)
                              (if (interned-symbol? _sym5767_)
                                  _sym5767_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5767_)))))
                    (let* ((_mark57195728_ _mark5716_)
                           (_E57215732_
                            (lambda ()
                              (error '"No clause matching" _mark57195728_)))
                           (_K57225744_
                            (lambda (_trace5735_
                                     _phi5736_
                                     _ctx5737_
                                     _subst5738_)
                              (let ((_subs5740_
                                     (if _subst5738_
                                         (table->list _subst5738_)
                                         '())))
                                (cons _phi5736_
                                      (map (lambda (_pair5742_)
                                             (cons (_quote-e5718_
                                                    (car _pair5742_))
                                                   (_quote-e5718_
                                                    (cdr _pair5742_))))
                                           _subs5740_))))))
                      (if (##structure-instance-of?
                           _mark57195728_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e57235747_ (##vector-ref _mark57195728_ '1))
                                 (_subst5750_ _e57235747_)
                                 (_e57245752_ (##vector-ref _mark57195728_ '2))
                                 (_ctx5755_ _e57245752_)
                                 (_e57255757_ (##vector-ref _mark57195728_ '3))
                                 (_phi5760_ _e57255757_)
                                 (_e57265762_ (##vector-ref _mark57195728_ '4))
                                 (_trace5765_ _e57265762_))
                            (_K57225744_
                             _trace5765_
                             _phi5760_
                             _ctx5755_
                             _subst5750_))
                          (_E57215732_))))))
               (_context-ref5630_
                (lambda (_ctx5703_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5703_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5705_
                             (_context-ref-nested5632_ _ctx5703_))
                            (_ctx-origin5706_
                             (_context-ref-origin5631_ _ctx5703_))
                            (_origin5707_
                             (_context-ref-origin5631_
                              (gx#current-expander-context))))
                        (if (eq? _origin5707_ _ctx-origin5706_)
                            (let ((_ref5709_
                                   (_context-ref-nested5632_
                                    (gx#current-expander-context))))
                              (let _lp5711_ ((_ref5713_ (cdr _ref5709_))
                                             (_ctx-ref5714_
                                              (cdr _ctx-ref5705_)))
                                (if (if (pair? _ref5713_)
                                        (eq? (car _ref5713_)
                                             (car _ctx-ref5714_))
                                        '#f)
                                    (_lp5711_
                                     (cdr _ref5713_)
                                     (cdr _ctx-ref5714_))
                                    (cons '#f _ctx-ref5714_))))
                            _ctx-ref5705_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5703_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5631_
                (lambda (_ctx5695_)
                  (let _lp5697_ ((_ctx5699_ _ctx5695_))
                    (let ((_super5701_
                           (##structure-ref
                            _ctx5699_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5701_
                           'gx#module-context::t)
                          (_lp5697_ _super5701_)
                          _ctx5699_)))))
               (_context-ref-nested5632_
                (lambda (_ctx5686_)
                  (let _lp5688_ ((_ctx5690_ _ctx5686_) (_r5691_ '()))
                    (let ((_super5693_
                           (##structure-ref
                            _ctx5690_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5693_
                           'gx#module-context::t)
                          (_lp5688_
                           _super5693_
                           (cons (car (##structure-ref
                                       _ctx5690_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5691_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5690_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5691_)))))))
        (let* ((_g56345647_
                (lambda (_g56355644_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g56355644_)))
               (_g56335683_
                (lambda (_g56355650_)
                  (if (gx#stx-pair? _g56355650_)
                      (let ((_e56375652_ (gx#stx-e _g56355650_)))
                        (let ((_hd56385655_ (##car _e56375652_))
                              (_tl56395657_ (##cdr _e56375652_)))
                          (if (gx#stx-pair? _tl56395657_)
                              (let ((_e56405660_ (gx#stx-e _tl56395657_)))
                                (let ((_hd56415663_ (##car _e56405660_))
                                      (_tl56425665_ (##cdr _e56405660_)))
                                  (if (gx#stx-null? _tl56425665_)
                                      ((lambda (_L5668_)
                                         (if (gx#identifier? _L5668_)
                                             (let ((_marks5681_
                                                    (##direct-structure-ref
                                                     _L5668_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5681_)
                                                   (_generate-simple5626_
                                                    _L5668_)
                                                   (_generate-serialized5627_
                                                    _L5668_
                                                    _marks5681_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5668_)))
                                       _hd56415663_)
                                      (_g56345647_ _g56355650_))))
                              (_g56345647_ _g56355650_))))
                      (_g56345647_ _g56355650_)))))
          (_g56335683_ _stx5623_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5556_)
      (let* ((_g55585575_
              (lambda (_g55595572_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55595572_)))
             (_g55575620_
              (lambda (_g55595578_)
                (if (gx#stx-pair? _g55595578_)
                    (let ((_e55625580_ (gx#stx-e _g55595578_)))
                      (let ((_hd55635583_ (##car _e55625580_))
                            (_tl55645585_ (##cdr _e55625580_)))
                        (if (gx#stx-pair? _tl55645585_)
                            (let ((_e55655588_ (gx#stx-e _tl55645585_)))
                              (let ((_hd55665591_ (##car _e55655588_))
                                    (_tl55675593_ (##cdr _e55655588_)))
                                (if (gx#stx-pair? _tl55675593_)
                                    (let ((_e55685596_
                                           (gx#stx-e _tl55675593_)))
                                      (let ((_hd55695599_ (##car _e55685596_))
                                            (_tl55705601_ (##cdr _e55685596_)))
                                        (if (gx#stx-null? _tl55705601_)
                                            ((lambda (_L5604_ _L5605_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5605_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5604_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd55695599_
                                             _hd55665591_)
                                            (_g55585575_ _g55595578_))))
                                    (_g55585575_ _g55595578_))))
                            (_g55585575_ _g55595578_))))
                    (_g55585575_ _g55595578_)))))
        (_g55575620_ _stx5556_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5505_ _state5506_)
      (let* ((_g55085518_
              (lambda (_g55095515_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55095515_)))
             (_g55075553_
              (lambda (_g55095521_)
                (if (gx#stx-pair? _g55095521_)
                    (let ((_e55115523_ (gx#stx-e _g55095521_)))
                      (let ((_hd55125526_ (##car _e55115523_))
                            (_tl55135528_ (##cdr _e55115523_)))
                        ((lambda (_L5531_)
                           (let* ((_c-body5545_
                                   (map (lambda (_g55405542_)
                                          (gxc#compile-e
                                           _g55405542_
                                           _state5506_))
                                        _L5531_))
                                  (_c-body5550_
                                   (filter (lambda (_$obj5547_)
                                             (not (eq? _$obj5547_ '#!void)))
                                           _c-body5545_)))
                             (cons '%#begin _c-body5550_)))
                         _tl55135528_)))
                    (_g55085518_ _g55095521_)))))
        (_g55075553_ _stx5505_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5413_ _state5414_)
      (let* ((_g54165426_
              (lambda (_g54175423_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54175423_)))
             (_g54155502_
              (lambda (_g54175429_)
                (if (gx#stx-pair? _g54175429_)
                    (let ((_e54195431_ (gx#stx-e _g54175429_)))
                      (let ((_hd54205434_ (##car _e54195431_))
                            (_tl54215436_ (##cdr _e54195431_)))
                        ((lambda (_L5439_)
                           (let* ((_phi5449_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5451_
                                   (gxc#meta-state-begin-phi!
                                    _state5414_
                                    _phi5449_))
                                  (_compiled5454_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5439_)
                                       _state5414_))
                                    gx#current-expander-phi
                                    _phi5449_)))
                             (let* ((_g54575467_
                                     (lambda (_g54585464_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g54585464_)))
                                    (_g54565499_
                                     (lambda (_g54585470_)
                                       (if (gx#stx-pair? _g54585470_)
                                           (let ((_e54605472_
                                                  (gx#stx-e _g54585470_)))
                                             (let ((_hd54615475_
                                                    (##car _e54605472_))
                                                   (_tl54625477_
                                                    (##cdr _e54605472_)))
                                               (if (gx#identifier?
                                                    _hd54615475_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd54615475_)
                                                       ((lambda (_L5480_)
                                                          (let ((_c-body5497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5494_)
                                   (not (eq? _$obj5494_ '#!void)))
                                 _L5480_)))
                    (if _block5451_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5497_))
                        (if (null? _c-body5497_)
                            '#!void
                            (cons '%#begin-syntax _c-body5497_)))))
                _tl54625477_)
               (_g54575467_ _g54585470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g54575467_ _g54585470_))))
                                           (_g54575467_ _g54585470_)))))
                               (_g54565499_ _compiled5454_))))
                         _tl54215436_)))
                    (_g54165426_ _g54175429_)))))
        (_g54155502_ _stx5413_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5344_ _state5345_)
      (begin
        (gxc#meta-state-end-phi! _state5345_)
        (let* ((_g53475361_
                (lambda (_g53485358_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53485358_)))
               (_g53465410_
                (lambda (_g53485364_)
                  (if (gx#stx-pair? _g53485364_)
                      (let ((_e53515366_ (gx#stx-e _g53485364_)))
                        (let ((_hd53525369_ (##car _e53515366_))
                              (_tl53535371_ (##cdr _e53515366_)))
                          (if (gx#stx-pair? _tl53535371_)
                              (let ((_e53545374_ (gx#stx-e _tl53535371_)))
                                (let ((_hd53555377_ (##car _e53545374_))
                                      (_tl53565379_ (##cdr _e53545374_)))
                                  ((lambda (_L5382_ _L5383_)
                                     (let ((_key5396_
                                            (gx#core-identifier-key _L5383_)))
                                       (begin
                                         (if (interned-symbol? _key5396_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5344_
                                              _L5383_
                                              _key5396_))
                                         (let* ((_ctx5398_
                                                 (gx#syntax-local-e__0
                                                  _L5383_))
                                                (_code5401_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5398_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5345_))
                                                  gx#current-expander-context
                                                  _ctx5398_))
                                                (_rt5403_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5398_
                                                  '#f))
                                                (_loader5405_
                                                 (if _rt5403_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5403_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5407_
                                                 (gx#stx-e _L5383_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5345_)
                                             (cons '%#module
                                                   (cons _modid5407_
                                                         (cons _code5401_
                                                               _loader5405_))))))))
                                   _tl53565379_
                                   _hd53555377_)))
                              (_g53475361_ _g53485364_))))
                      (_g53475361_ _g53485364_)))))
          (_g53465410_ _stx5344_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5334_ _context-chain5335_)
      (let _lp5337_ ((_ctx5339_ _ctx5334_) (_path5340_ '()))
        (let ((_super5342_
               (##structure-ref _ctx5339_ '3 gx#phi-context::t '#f)))
          (if (memq _super5342_ _context-chain5335_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5339_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5340_))
              (if (##structure-instance-of? _super5342_ 'gx#module-context::t)
                  (_lp5337_
                   _super5342_
                   (cons (car (##structure-ref
                               _ctx5339_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5340_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5339_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5340_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5329_ ((_ctx5331_ (gx#current-expander-context)) (_r5332_ '()))
        (if (##structure-instance-of? _ctx5331_ 'gx#module-context::t)
            (_lp5329_
             (##structure-ref _ctx5331_ '3 gx#phi-context::t '#f)
             (cons _ctx5331_ _r5332_))
            _r5332_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5098_ _state5099_)
      (letrec* ((_context-chain5101_ (gxc#current-context-chain))
                (_make-import-spec5102_
                 (lambda (_in5265_)
                   (let* ((_in52665278_ _in5265_)
                          (_E52685282_
                           (lambda ()
                             (error '"No clause matching" _in52665278_)))
                          (_K52695292_
                           (lambda (_phi5285_
                                    _name5286_
                                    _src-name5287_
                                    _src-phi5288_
                                    _src-key5289_
                                    _src-ctx5290_)
                             (cons _phi5285_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5286_)
                                         (cons _src-phi5288_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5287_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in52665278_
                          (##type-id gx#module-import::t))
                         (let ((_e52705295_ (##vector-ref _in52665278_ '1)))
                           (if (##structure-direct-instance-of?
                                _e52705295_
                                (##type-id gx#module-export::t))
                               (let* ((_e52735298_
                                       (##vector-ref _e52705295_ '1))
                                      (_src-ctx5301_ _e52735298_)
                                      (_e52745303_
                                       (##vector-ref _e52705295_ '2))
                                      (_src-key5306_ _e52745303_)
                                      (_e52755308_
                                       (##vector-ref _e52705295_ '3))
                                      (_src-phi5311_ _e52755308_)
                                      (_e52765313_
                                       (##vector-ref _e52705295_ '4))
                                      (_src-name5316_ _e52765313_)
                                      (_e52715318_
                                       (##vector-ref _in52665278_ '2))
                                      (_name5321_ _e52715318_)
                                      (_e52725323_
                                       (##vector-ref _in52665278_ '3))
                                      (_phi5326_ _e52725323_))
                                 (_K52695292_
                                  _phi5326_
                                  _name5321_
                                  _src-name5316_
                                  _src-phi5311_
                                  _src-key5306_
                                  _src-ctx5301_))
                               (_E52685282_)))
                         (_E52685282_)))))
                (_make-import-path5103_
                 (lambda (_ctx5263_)
                   (gxc#generate-meta-import-path
                    _ctx5263_
                    _context-chain5101_)))
                (_make-import-spec-in5104_
                 (lambda (_ctx5260_ _in5261_)
                   (cons 'spec:
                         (cons (_make-import-path5103_ _ctx5260_)
                               (reverse _in5261_))))))
        (begin
          (gxc#meta-state-end-phi! _state5099_)
          (let* ((_g51065116_
                  (lambda (_g51075113_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g51075113_)))
                 (_g51055257_
                  (lambda (_g51075119_)
                    (if (gx#stx-pair? _g51075119_)
                        (let ((_e51095121_ (gx#stx-e _g51075119_)))
                          (let ((_hd51105124_ (##car _e51095121_))
                                (_tl51115126_ (##cdr _e51095121_)))
                            ((lambda (_L5129_)
                               (let _lp5140_ ((_rest5142_ _L5129_)
                                              (_current-src5143_ '#f)
                                              (_current-in5144_ '())
                                              (_r5145_ '()))
                                 (let* ((_rest51465154_ _rest5142_)
                                        (_E51495158_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest51465154_)))
                                        (_else51485164_
                                         (lambda ()
                                           (let ((_r5162_ (if _current-src5143_
                                                              (cons (_make-import-spec-in5104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5143_
                             _current-in5144_)
                            _r5145_)
                      _r5145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5162_)))))
                                        (_K51505245_
                                         (lambda (_rest5167_ _in5168_)
                                           (if (##structure-direct-instance-of?
                                                _in5168_
                                                'gx#module-import::t)
                                               (let* ((_in51695176_ _in5168_)
                                                      (_E51715180_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in51695176_)))
                                                      (_K51725185_
                                                       (lambda (_src-ctx5183_)
                                                         (if (eq? _current-src5143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5183_)
                     (_lp5140_
                      _rest5167_
                      _current-src5143_
                      (cons (_make-import-spec5102_ _in5168_) _current-in5144_)
                      _r5145_)
                     (if _current-src5143_
                         (_lp5140_
                          _rest5167_
                          _src-ctx5183_
                          (cons (_make-import-spec5102_ _in5168_) '())
                          (cons (_make-import-spec-in5104_
                                 _current-src5143_
                                 _current-in5144_)
                                _r5145_))
                         (_lp5140_
                          _rest5167_
                          _src-ctx5183_
                          (cons (_make-import-spec5102_ _in5168_) '())
                          _r5145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in51695176_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e51735188_
                                                            (##vector-ref
                                                             _in51695176_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e51735188_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e51745191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e51735188_ '1))
                          (_src-ctx5194_ _e51745191_))
                     (_K51725185_ _src-ctx5194_))
                   (_E51715180_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E51715180_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5168_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5196_
                                                           (##direct-structure-ref
                                                            _in5168_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5198_
                                                           (##direct-structure-ref
                                                            _in5168_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5238_
                                                           (let* ((_g51995208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5103_ _src5198_))
                          (_E52025212_
                           (lambda ()
                             (error '"No clause matching" _g51995208_)))
                          (_try-match52015223_
                           (lambda ()
                             (let* ((_K52035218_
                                     (lambda (_path5216_)
                                       (cons 'in: _path5216_)))
                                    (_path5221_ _g51995208_))
                               (_K52035218_ _path5221_))))
                          (_K52045228_ (lambda (_path5226_) _path5226_)))
                     (if (##pair? _g51995208_)
                         (let ((_hd52055231_ (##car _g51995208_))
                               (_tl52065233_ (##cdr _g51995208_)))
                           (let ((_path5236_ _hd52055231_))
                             (if (##null? _tl52065233_)
                                 (_K52045228_ _path5236_)
                                 (_try-match52015223_))))
                         (_try-match52015223_))))
                  (_r5240_ (if _current-src5143_
                               (cons (_make-import-spec-in5104_
                                      _current-src5143_
                                      _current-in5144_)
                                     _r5145_)
                               _r5145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5140_
                                                      _rest5167_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5196_)
                                                                _src-in5238_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5196_ (cons _src-in5238_ '()))))
                    _r5240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5168_
                                                        'gx#module-context::t)
                                                       (let ((_r5243_ (if _current-src5143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5104_
                                         _current-src5143_
                                         _current-in5144_)
                                        _r5145_)
                                  _r5145_)))
                 (_lp5140_
                  _rest5167_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5103_ _in5168_))
                        _r5243_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest51465154_)
                                       (let ((_hd51515248_
                                              (##car _rest51465154_))
                                             (_tl51525250_
                                              (##cdr _rest51465154_)))
                                         (let* ((_in5253_ _hd51515248_)
                                                (_rest5255_ _tl51525250_))
                                           (_K51505245_ _rest5255_ _in5253_)))
                                       (_else51485164_)))))
                             _tl51115126_)))
                        (_g51065116_ _g51075119_)))))
            (_g51055257_ _stx5098_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4908_ _state4909_)
      (letrec* ((_context-chain4911_ (gxc#current-context-chain))
                (_make-import-path4912_
                 (lambda (_ctx5096_)
                   (gxc#generate-meta-import-path
                    _ctx5096_
                    _context-chain4911_))))
        (let* ((_g49144924_
                (lambda (_g49154921_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g49154921_)))
               (_g49135093_
                (lambda (_g49154927_)
                  (if (gx#stx-pair? _g49154927_)
                      (let ((_e49174929_ (gx#stx-e _g49154927_)))
                        (let ((_hd49184932_ (##car _e49174929_))
                              (_tl49194934_ (##cdr _e49174929_)))
                          ((lambda (_L4937_)
                             (let _lp4948_ ((_rest4950_ _L4937_) (_r4951_ '()))
                               (let* ((_rest49524960_ _rest4950_)
                                      (_E49554964_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest49524960_)))
                                      (_else49544968_
                                       (lambda ()
                                         (cons '%#export (reverse _r4951_))))
                                      (_K49565081_
                                       (lambda (_rest4971_ _out4972_)
                                         (let* ((_out49734986_ _out4972_)
                                                (_E49764990_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out49734986_)))
                                                (_try-match49755053_
                                                 (lambda ()
                                                   (let ((_K49775040_
                                                          (lambda (_phi4994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4995_)
                    (let* ((_out5035_
                            (if _src4995_
                                (cons 'import:
                                      (cons (let* ((_g49965005_
                                                    (_make-import-path4912_
                                                     _src4995_))
                                                   (_E49995009_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g49965005_)))
                                                   (_try-match49985020_
                                                    (lambda ()
                                                      (let* ((_K50005015_
                                                              (lambda (_path5013_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path5013_)))
                     (_path5018_ _g49965005_))
                (_K50005015_ _path5018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K50015025_
                                                    (lambda (_path5023_)
                                                      _path5023_)))
                                              (if (##pair? _g49965005_)
                                                  (let ((_hd50025028_
                                                         (##car _g49965005_))
                                                        (_tl50035030_
                                                         (##cdr _g49965005_)))
                                                    (let ((_path5033_
                                                           _hd50025028_))
                                                      (if (##null? _tl50035030_)
                                                          (_K50015025_
                                                           _path5033_)
                                                          (_try-match49985020_))))
                                                  (_try-match49985020_)))
                                            '()))
                                '#t))
                           (_out5037_
                            (if (fxzero? _phi4994_)
                                _out5035_
                                (cons 'phi:
                                      (cons _phi4994_ (cons _out5035_ '()))))))
                      (_lp4948_ _rest4971_ (cons _out5037_ _r4951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out49734986_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e49785043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out49734986_ '1))
                        (_src5046_ _e49785043_)
                        (_e49795048_ (##vector-ref _out49734986_ '2))
                        (_phi5051_ _e49795048_))
                   (_K49775040_ _phi5051_ _src5046_))
                 (_E49764990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K49805060_
                                                 (lambda (_name5056_
                                                          _phi5057_
                                                          _key5058_)
                                                   (_lp4948_
                                                    _rest4971_
                                                    (cons (cons 'spec:
                                                                (cons _phi5057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key5058_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name5056_)
                                          '()))))
                  _r4951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out49734986_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e49815063_
                                                       (##vector-ref
                                                        _out49734986_
                                                        '1))
                                                      (_e49825066_
                                                       (##vector-ref
                                                        _out49734986_
                                                        '2))
                                                      (_key5069_ _e49825066_)
                                                      (_e49835071_
                                                       (##vector-ref
                                                        _out49734986_
                                                        '3))
                                                      (_phi5074_ _e49835071_)
                                                      (_e49845076_
                                                       (##vector-ref
                                                        _out49734986_
                                                        '4))
                                                      (_name5079_ _e49845076_))
                                                 (_K49805060_
                                                  _name5079_
                                                  _phi5074_
                                                  _key5069_))
                                               (_try-match49755053_))))))
                                 (if (##pair? _rest49524960_)
                                     (let ((_hd49575084_
                                            (##car _rest49524960_))
                                           (_tl49585086_
                                            (##cdr _rest49524960_)))
                                       (let* ((_out5089_ _hd49575084_)
                                              (_rest5091_ _tl49585086_))
                                         (_K49565081_ _rest5091_ _out5089_)))
                                     (_else49544968_)))))
                           _tl49194934_)))
                      (_g49144924_ _g49154927_)))))
          (_g49135093_ _stx4908_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4869_ _state4870_)
      (begin
        (gxc#meta-state-end-phi! _state4870_)
        (let* ((_g48724882_
                (lambda (_g48734879_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g48734879_)))
               (_g48714905_
                (lambda (_g48734885_)
                  (if (gx#stx-pair? _g48734885_)
                      (let ((_e48754887_ (gx#stx-e _g48734885_)))
                        (let ((_hd48764890_ (##car _e48754887_))
                              (_tl48774892_ (##cdr _e48754887_)))
                          ((lambda (_L4895_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4895_)))
                           _tl48774892_)))
                      (_g48724882_ _g48734885_)))))
          (_g48714905_ _stx4869_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4740_ _state4741_)
      (letrec ((_generate14743_
                (lambda (_id4864_ _eid4865_)
                  (let ((_eid4867_ (gx#stx-e _eid4865_)))
                    (begin
                      (if (interned-symbol? _eid4867_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4740_
                           _eid4867_))
                      (cons (gxc#generate-runtime-identifier _id4864_)
                            (cons _eid4867_ '())))))))
        (let* ((_g47454773_
                (lambda (_g47464770_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47464770_)))
               (_g47444861_
                (lambda (_g47464776_)
                  (if (gx#stx-pair? _g47464776_)
                      (let ((_e47494778_ (gx#stx-e _g47464776_)))
                        (let ((_hd47504781_ (##car _e47494778_))
                              (_tl47514783_ (##cdr _e47494778_)))
                          (if (gx#stx-pair/null? _tl47514783_)
                              (if (fx>= (gx#stx-length _tl47514783_) '0)
                                  (let ((_g12367_
                                         (gx#syntax-split-splice
                                          _tl47514783_
                                          '0)))
                                    (begin
                                      (let ((_g12368_ (values-count _g12367_)))
                                        (if (not (fx= _g12368_ 2))
                                            (error "Context expects 2 values"
                                                   _g12368_)))
                                      (let ((_target47524786_
                                             (values-ref _g12367_ 0))
                                            (_tl47544788_
                                             (values-ref _g12367_ 1)))
                                        (if (gx#stx-null? _tl47544788_)
                                            (letrec ((_loop47554791_
                                                      (lambda (_hd47534794_
                                                               _eid47594796_
                                                               _id47604798_)
                                                        (if (gx#stx-pair?
                                                             _hd47534794_)
                                                            (let ((_e47564801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd47534794_)))
                      (let ((_lp-hd47574804_ (##car _e47564801_))
                            (_lp-tl47584806_ (##cdr _e47564801_)))
                        (if (gx#stx-pair? _lp-hd47574804_)
                            (let ((_e47634809_ (gx#stx-e _lp-hd47574804_)))
                              (let ((_hd47644812_ (##car _e47634809_))
                                    (_tl47654814_ (##cdr _e47634809_)))
                                (if (gx#stx-pair? _tl47654814_)
                                    (let ((_e47664817_
                                           (gx#stx-e _tl47654814_)))
                                      (let ((_hd47674820_ (##car _e47664817_))
                                            (_tl47684822_ (##cdr _e47664817_)))
                                        (if (gx#stx-null? _tl47684822_)
                                            (_loop47554791_
                                             _lp-tl47584806_
                                             (cons _hd47674820_ _eid47594796_)
                                             (cons _hd47644812_ _id47604798_))
                                            (_g47454773_ _g47464776_))))
                                    (_g47454773_ _g47464776_))))
                            (_g47454773_ _g47464776_))))
                    (let ((_eid47614825_ (reverse _eid47594796_))
                          (_id47624827_ (reverse _id47604798_)))
                      ((lambda (_L4830_ _L4831_)
                         (cons '%#extern
                               (map _generate14743_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g48464849_ _g48474851_)
                                                (cons _g48464849_ _g48474851_))
                                              '()
                                              _L4831_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g48534856_ _g48544858_)
                                                (cons _g48534856_ _g48544858_))
                                              '()
                                              _L4830_)))))
                       _eid47614825_
                       _id47624827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop47554791_
                                               _target47524786_
                                               '()
                                               '()))
                                            (_g47454773_ _g47464776_)))))
                                  (_g47454773_ _g47464776_))
                              (_g47454773_ _g47464776_))))
                      (_g47454773_ _g47464776_)))))
          (_g47444861_ _stx4740_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4535_ _state4536_)
      (letrec ((_generate14538_
                (lambda (_id4735_)
                  (let ((_eid4737_ (gxc#generate-runtime-binding-id _id4735_))
                        (_ident4738_
                         (gxc#generate-runtime-identifier _id4735_)))
                    (cons '%#define-runtime
                          (cons _ident4738_ (cons _eid4737_ '()))))))
               (_generate*4539_
                (lambda (_all4703_)
                  (let* ((_all47044712_ _all4703_)
                         (_E47074716_
                          (lambda ()
                            (error '"No clause matching" _all47044712_)))
                         (_else47064720_ (lambda () (cons '%#begin _all4703_)))
                         (_K47084725_ (lambda (_one4723_) _one4723_)))
                    (if (##pair? _all47044712_)
                        (let ((_hd47094728_ (##car _all47044712_))
                              (_tl47104730_ (##cdr _all47044712_)))
                          (let ((_one4733_ _hd47094728_))
                            (if (##null? _tl47104730_)
                                (_K47084725_ _one4733_)
                                (_else47064720_))))
                        (_else47064720_))))))
        (let* ((_g45414558_
                (lambda (_g45424555_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45424555_)))
               (_g45404700_
                (lambda (_g45424561_)
                  (if (gx#stx-pair? _g45424561_)
                      (let ((_e45454563_ (gx#stx-e _g45424561_)))
                        (let ((_hd45464566_ (##car _e45454563_))
                              (_tl45474568_ (##cdr _e45454563_)))
                          (if (gx#stx-pair? _tl45474568_)
                              (let ((_e45484571_ (gx#stx-e _tl45474568_)))
                                (let ((_hd45494574_ (##car _e45484571_))
                                      (_tl45504576_ (##cdr _e45484571_)))
                                  (if (gx#stx-pair? _tl45504576_)
                                      (let ((_e45514579_
                                             (gx#stx-e _tl45504576_)))
                                        (let ((_hd45524582_
                                               (##car _e45514579_))
                                              (_tl45534584_
                                               (##cdr _e45514579_)))
                                          (if (gx#stx-null? _tl45534584_)
                                              ((lambda (_L4587_ _L4588_)
                                                 (let _lp4604_ ((_rest4606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4588_)
                        (_r4607_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g46124628_
                                                           (lambda (_g46134625_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g46134625_)))
                                                          (_g46114635_
                                                           (lambda (_g46134631_)
                                                             ((lambda ()
                                                                (_generate*4539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4607_))))))
                  (_g46104651_
                   (lambda (_g46134638_)
                     ((lambda (_L4640_)
                        (if (gx#identifier? _L4640_)
                            (_generate*4539_
                             (foldl1 cons
                                     (cons (_generate14538_ _L4640_) '())
                                     _r4607_))
                            (_g46114635_ _g46134638_)))
                      _g46134638_)))
                  (_g46094675_
                   (lambda (_g46134654_)
                     (if (gx#stx-pair? _g46134654_)
                         (let ((_e46204656_ (gx#stx-e _g46134654_)))
                           (let ((_hd46214659_ (##car _e46204656_))
                                 (_tl46224661_ (##cdr _e46204656_)))
                             ((lambda (_L4664_ _L4665_)
                                (_lp4604_
                                 _L4664_
                                 (cons (_generate14538_ _L4665_) _r4607_)))
                              _tl46224661_
                              _hd46214659_)))
                         (_g46104651_ _g46134654_))))
                  (_g46084697_
                   (lambda (_g46134678_)
                     (if (gx#stx-pair? _g46134678_)
                         (let ((_e46154680_ (gx#stx-e _g46134678_)))
                           (let ((_hd46164683_ (##car _e46154680_))
                                 (_tl46174685_ (##cdr _e46154680_)))
                             (if (gx#stx-datum? _hd46164683_)
                                 (if (equal? (gx#stx-e _hd46164683_) '#f)
                                     ((lambda (_L4688_)
                                        (_lp4604_ _L4688_ _r4607_))
                                      _tl46174685_)
                                     (_g46094675_ _g46134678_))
                                 (_g46094675_ _g46134678_))))
                         (_g46094675_ _g46134678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46084697_
                                                      _rest4606_))))
                                               _hd45524582_
                                               _hd45494574_)
                                              (_g45414558_ _g45424561_))))
                                      (_g45414558_ _g45424561_))))
                              (_g45414558_ _g45424561_))))
                      (_g45414558_ _g45424561_)))))
          (_g45404700_ _stx4535_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4432_ _state4433_)
      (let* ((_g44354452_
              (lambda (_g44364449_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44364449_)))
             (_g44344532_
              (lambda (_g44364455_)
                (if (gx#stx-pair? _g44364455_)
                    (let ((_e44394457_ (gx#stx-e _g44364455_)))
                      (let ((_hd44404460_ (##car _e44394457_))
                            (_tl44414462_ (##cdr _e44394457_)))
                        (if (gx#stx-pair? _tl44414462_)
                            (let ((_e44424465_ (gx#stx-e _tl44414462_)))
                              (let ((_hd44434468_ (##car _e44424465_))
                                    (_tl44444470_ (##cdr _e44424465_)))
                                (if (gx#stx-pair? _tl44444470_)
                                    (let ((_e44454473_
                                           (gx#stx-e _tl44444470_)))
                                      (let ((_hd44464476_ (##car _e44454473_))
                                            (_tl44474478_ (##cdr _e44454473_)))
                                        (if (gx#stx-null? _tl44474478_)
                                            ((lambda (_L4481_ _L4482_)
                                               (let* ((_eid4497_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4482_))
                                                      (_phi4499_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4501_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4433_
                                                        _phi4499_)))
                                                 (begin
                                                   (let* ((_g45044511_
                                                           (lambda (_g45054508_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g45054508_)))
                                                          (_g45034529_
                                                           (lambda (_g45054514_)
                                                             ((lambda (_L4516_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4433_
                           _phi4499_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4516_ (cons _L4481_ '()))))))
                      _g45054514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45034529_ _eid4497_))
                                                   (if _block4501_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4482_)
                                             (cons _eid4497_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4482_)
                           (cons _eid4497_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd44464476_
                                             _hd44434468_)
                                            (_g44354452_ _g44364455_))))
                                    (_g44354452_ _g44364455_))))
                            (_g44354452_ _g44364455_))))
                    (_g44354452_ _g44364455_)))))
        (_g44344532_ _stx4432_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4364_ _state4365_)
      (let* ((_g43674384_
              (lambda (_g43684381_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43684381_)))
             (_g43664429_
              (lambda (_g43684387_)
                (if (gx#stx-pair? _g43684387_)
                    (let ((_e43714389_ (gx#stx-e _g43684387_)))
                      (let ((_hd43724392_ (##car _e43714389_))
                            (_tl43734394_ (##cdr _e43714389_)))
                        (if (gx#stx-pair? _tl43734394_)
                            (let ((_e43744397_ (gx#stx-e _tl43734394_)))
                              (let ((_hd43754400_ (##car _e43744397_))
                                    (_tl43764402_ (##cdr _e43744397_)))
                                (if (gx#stx-pair? _tl43764402_)
                                    (let ((_e43774405_
                                           (gx#stx-e _tl43764402_)))
                                      (let ((_hd43784408_ (##car _e43774405_))
                                            (_tl43794410_ (##cdr _e43774405_)))
                                        (if (gx#stx-null? _tl43794410_)
                                            ((lambda (_L4413_ _L4414_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4414_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4413_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd43784408_
                                             _hd43754400_)
                                            (_g43674384_ _g43684387_))))
                                    (_g43674384_ _g43684387_))))
                            (_g43674384_ _g43684387_))))
                    (_g43674384_ _g43684387_)))))
        (_g43664429_ _stx4364_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4361_ _state4362_)
      (begin
        (gxc#meta-state-add-phi!
         _state4362_
         (gx#current-expander-phi)
         _stx4361_)
        (gxc#generate-meta-define-values% _stx4361_ _state4362_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4358_ _state4359_)
      (begin
        (gxc#meta-state-add-phi!
         _state4359_
         (gx#current-expander-phi)
         _stx4358_)
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
    (lambda _$args4355_
      (apply make-struct-instance gxc#meta-state::t _$args4355_)))
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
    (lambda (_self4352_ _ctx4353_)
      (if (##fx< '4 (##vector-length _self4352_))
          (begin
            (##vector-set!
             _self4352_
             '1
             (symbol->string
              (##structure-ref _ctx4353_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4352_ '2 '1)
            (##vector-set! _self4352_ '3 (make-hash-table-eq))
            (##vector-set! _self4352_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4352_))))
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
    (lambda _$args4227_
      (apply make-struct-instance gxc#meta-state-block::t _$args4227_)))
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
    (lambda (_state4186_ _phi4187_)
      (let* ((_state41884196_ _state4186_)
             (_E41904200_
              (lambda () (error '"No clause matching" _state41884196_)))
             (_K41914209_
              (lambda (_open4203_ _n4204_ _src4205_)
                (if (table-ref _open4203_ _phi4187_ '#f)
                    '#f
                    (let ((_block-ref4207_
                           (string-append
                            _src4205_
                            '"__"
                            (number->string _n4204_))))
                      (begin
                        (##structure-set!
                         _state4186_
                         (fx+ _n4204_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4203_
                         _phi4187_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4187_
                          _n4204_
                          '()))
                        _block-ref4207_))))))
        (if (##structure-instance-of?
             _state41884196_
             (##type-id gxc#meta-state::t))
            (let* ((_e41924212_ (##vector-ref _state41884196_ '1))
                   (_src4215_ _e41924212_)
                   (_e41934217_ (##vector-ref _state41884196_ '2))
                   (_n4220_ _e41934217_)
                   (_e41944222_ (##vector-ref _state41884196_ '3))
                   (_open4225_ _e41944222_))
              (_K41914209_ _open4225_ _n4220_ _src4215_))
            (_E41904200_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4180_ _phi4181_ _stx4182_)
      (let ((_block4184_
             (table-ref
              (##structure-ref _state4180_ '3 gxc#meta-state::t '#f)
              _phi4181_
              '#f)))
        (##structure-set!
         _block4184_
         (cons _stx4182_
               (##structure-ref _block4184_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4175_)
      (begin
        (##structure-set!
         _state4175_
         (hash-fold
          (lambda (_g12369_ _block4177_ _r4178_) (cons _block4177_ _r4178_))
          (##structure-ref _state4175_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4175_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4175_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4127_)
      (begin
        (gxc#meta-state-end-phi! _state4127_)
        (foldl1 (lambda (_block4129_ _r4130_)
                  (let* ((_block41314140_ _block4129_)
                         (_E41334144_
                          (lambda ()
                            (error '"No clause matching" _block41314140_)))
                         (_K41344152_
                          (lambda (_code4147_ _n4148_ _phi4149_ _ctx4150_)
                            (if (null? _code4147_)
                                _r4130_
                                (cons (cons _ctx4150_
                                            (cons _phi4149_
                                                  (cons _n4148_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4147_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4130_)))))
                    (if (##structure-instance-of?
                         _block41314140_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e41354155_ (##vector-ref _block41314140_ '1))
                               (_ctx4158_ _e41354155_)
                               (_e41364160_ (##vector-ref _block41314140_ '2))
                               (_phi4163_ _e41364160_)
                               (_e41374165_ (##vector-ref _block41314140_ '3))
                               (_n4168_ _e41374165_)
                               (_e41384170_ (##vector-ref _block41314140_ '4))
                               (_code4173_ _e41384170_))
                          (_K41344152_ _code4173_ _n4168_ _phi4163_ _ctx4158_))
                        (_E41334144_))))
                '()
                (##structure-ref _state4127_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4123_)
      (let ((_ht4125_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4123_ _ht4125_)
          _ht4125_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4066_ _ht4067_)
      (let* ((_g40694082_
              (lambda (_g40704079_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40704079_)))
             (_g40684120_
              (lambda (_g40704085_)
                (if (gx#stx-pair? _g40704085_)
                    (let ((_e40724087_ (gx#stx-e _g40704085_)))
                      (let ((_hd40734090_ (##car _e40724087_))
                            (_tl40744092_ (##cdr _e40724087_)))
                        (if (gx#stx-pair? _tl40744092_)
                            (let ((_e40754095_ (gx#stx-e _tl40744092_)))
                              (let ((_hd40764098_ (##car _e40754095_))
                                    (_tl40774100_ (##cdr _e40754095_)))
                                (if (gx#stx-null? _tl40774100_)
                                    ((lambda (_L4103_)
                                       (let* ((_bind4115_
                                               (gx#resolve-identifier__0
                                                _L4103_))
                                              (_eid4117_
                                               (if _bind4115_
                                                   (##structure-ref
                                                    _bind4115_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4103_))))
                                         (table-set!
                                          _ht4067_
                                          _eid4117_
                                          _eid4117_)))
                                     _hd40764098_)
                                    (_g40694082_ _g40704085_))))
                            (_g40694082_ _g40704085_))))
                    (_g40694082_ _g40704085_)))))
        (_g40684120_ _stx4066_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3993_ _ht3994_)
      (let* ((_g39964013_
              (lambda (_g39974010_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39974010_)))
             (_g39954063_
              (lambda (_g39974016_)
                (if (gx#stx-pair? _g39974016_)
                    (let ((_e40004018_ (gx#stx-e _g39974016_)))
                      (let ((_hd40014021_ (##car _e40004018_))
                            (_tl40024023_ (##cdr _e40004018_)))
                        (if (gx#stx-pair? _tl40024023_)
                            (let ((_e40034026_ (gx#stx-e _tl40024023_)))
                              (let ((_hd40044029_ (##car _e40034026_))
                                    (_tl40054031_ (##cdr _e40034026_)))
                                (if (gx#stx-pair? _tl40054031_)
                                    (let ((_e40064034_
                                           (gx#stx-e _tl40054031_)))
                                      (let ((_hd40074037_ (##car _e40064034_))
                                            (_tl40084039_ (##cdr _e40064034_)))
                                        (if (gx#stx-null? _tl40084039_)
                                            ((lambda (_L4042_ _L4043_)
                                               (let* ((_bind4058_
                                                       (gx#resolve-identifier__0
                                                        _L4043_))
                                                      (_eid4060_
                                                       (if _bind4058_
                                                           (##structure-ref
                                                            _bind4058_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4043_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3994_
                                                    _eid4060_
                                                    _eid4060_)
                                                   (gxc#compile-e
                                                    _L4042_
                                                    _ht3994_))))
                                             _hd40074037_
                                             _hd40044029_)
                                            (_g39964013_ _g39974016_))))
                                    (_g39964013_ _g39974016_))))
                            (_g39964013_ _g39974016_))))
                    (_g39964013_ _g39974016_)))))
        (_g39954063_ _stx3993_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3955_)
      (let* ((_g39573967_
              (lambda (_g39583964_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39583964_)))
             (_g39563990_
              (lambda (_g39583970_)
                (if (gx#stx-pair? _g39583970_)
                    (let ((_e39603972_ (gx#stx-e _g39583970_)))
                      (let ((_hd39613975_ (##car _e39603972_))
                            (_tl39623977_ (##cdr _e39603972_)))
                        ((lambda (_L3980_) (ormap1 gxc#compile-e _L3980_))
                         _tl39623977_)))
                    (_g39573967_ _g39583970_)))))
        (_g39563990_ _stx3955_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3917_)
      (let* ((_g39193929_
              (lambda (_g39203926_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39203926_)))
             (_g39183952_
              (lambda (_g39203932_)
                (if (gx#stx-pair? _g39203932_)
                    (let ((_e39223934_ (gx#stx-e _g39203932_)))
                      (let ((_hd39233937_ (##car _e39223934_))
                            (_tl39243939_ (##cdr _e39223934_)))
                        ((lambda (_L3942_) (gxc#compile-e (last _L3942_)))
                         _tl39243939_)))
                    (_g39193929_ _g39203932_)))))
        (_g39183952_ _stx3917_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3850_)
      (let* ((_g38523869_
              (lambda (_g38533866_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38533866_)))
             (_g38513914_
              (lambda (_g38533872_)
                (if (gx#stx-pair? _g38533872_)
                    (let ((_e38563874_ (gx#stx-e _g38533872_)))
                      (let ((_hd38573877_ (##car _e38563874_))
                            (_tl38583879_ (##cdr _e38563874_)))
                        (if (gx#stx-pair? _tl38583879_)
                            (let ((_e38593882_ (gx#stx-e _tl38583879_)))
                              (let ((_hd38603885_ (##car _e38593882_))
                                    (_tl38613887_ (##cdr _e38593882_)))
                                (if (gx#stx-pair? _tl38613887_)
                                    (let ((_e38623890_
                                           (gx#stx-e _tl38613887_)))
                                      (let ((_hd38633893_ (##car _e38623890_))
                                            (_tl38643895_ (##cdr _e38623890_)))
                                        (if (gx#stx-null? _tl38643895_)
                                            ((lambda (_L3898_ _L3899_)
                                               (gxc#compile-e _L3898_))
                                             _hd38633893_
                                             _hd38603885_)
                                            (_g38523869_ _g38533872_))))
                                    (_g38523869_ _g38533872_))))
                            (_g38523869_ _g38533872_))))
                    (_g38523869_ _g38533872_)))))
        (_g38513914_ _stx3850_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3783_)
      (let* ((_g37853802_
              (lambda (_g37863799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37863799_)))
             (_g37843847_
              (lambda (_g37863805_)
                (if (gx#stx-pair? _g37863805_)
                    (let ((_e37893807_ (gx#stx-e _g37863805_)))
                      (let ((_hd37903810_ (##car _e37893807_))
                            (_tl37913812_ (##cdr _e37893807_)))
                        (if (gx#stx-pair? _tl37913812_)
                            (let ((_e37923815_ (gx#stx-e _tl37913812_)))
                              (let ((_hd37933818_ (##car _e37923815_))
                                    (_tl37943820_ (##cdr _e37923815_)))
                                (if (gx#stx-pair? _tl37943820_)
                                    (let ((_e37953823_
                                           (gx#stx-e _tl37943820_)))
                                      (let ((_hd37963826_ (##car _e37953823_))
                                            (_tl37973828_ (##cdr _e37953823_)))
                                        (if (gx#stx-null? _tl37973828_)
                                            ((lambda (_L3831_ _L3832_)
                                               (gxc#compile-e _L3831_))
                                             _hd37963826_
                                             _hd37933818_)
                                            (_g37853802_ _g37863805_))))
                                    (_g37853802_ _g37863805_))))
                            (_g37853802_ _g37863805_))))
                    (_g37853802_ _g37863805_)))))
        (_g37843847_ _stx3783_)))))
