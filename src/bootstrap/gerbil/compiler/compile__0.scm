(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#current-compile-identifiers (make-parameter '#f))
  (define gxc#make-bound-identifier-table
    (lambda ()
      (letrec ((_hash-e13091_
                (lambda (_id13093_) (symbol-hash (gx#stx-e _id13093_)))))
        (make-table 'test: gx#bound-identifier=? 'hash: _hash-e13091_))))
  (define gxc#compile-e
    (lambda (_stx13046_ . _args13047_)
      (let* ((_g1304913059_
              (lambda (_g1305013056_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1305013056_)))
             (_g1304813087_
              (lambda (_g1305013062_)
                (if (gx#stx-pair? _g1305013062_)
                    (let ((_e1305213064_ (gx#stx-e _g1305013062_)))
                      (let ((_hd1305313067_ (##car _e1305213064_))
                            (_tl1305413069_ (##cdr _e1305213064_)))
                        ((lambda (_L13072_)
                           (let ((_$e13082_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L13072_)
                                   '#f)))
                             (if _$e13082_
                                 ((lambda (_method13085_)
                                    (apply _method13085_
                                           _stx13046_
                                           _args13047_))
                                  _$e13082_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx13046_
                                  _L13072_))))
                         _hd1305313067_)))
                    (_g1304913059_ _g1305013062_)))))
        (_g1304813087_ _stx13046_))))
  (define gxc#&void-expression
    (##make-promise
     (lambda ()
       (let ((_tbl13043_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13043_ '%#begin-annotation void)
           (table-set! _tbl13043_ '%#lambda void)
           (table-set! _tbl13043_ '%#case-lambda void)
           (table-set! _tbl13043_ '%#let-values void)
           (table-set! _tbl13043_ '%#letrec-values void)
           (table-set! _tbl13043_ '%#letrec*-values void)
           (table-set! _tbl13043_ '%#quote void)
           (table-set! _tbl13043_ '%#quote-syntax void)
           (table-set! _tbl13043_ '%#call void)
           (table-set! _tbl13043_ '%#if void)
           (table-set! _tbl13043_ '%#ref void)
           (table-set! _tbl13043_ '%#set! void)
           (table-set! _tbl13043_ '%#struct-instance? void)
           (table-set! _tbl13043_ '%#struct-direct-instance? void)
           (table-set! _tbl13043_ '%#struct-ref void)
           (table-set! _tbl13043_ '%#struct-set! void)
           (table-set! _tbl13043_ '%#struct-direct-ref void)
           (table-set! _tbl13043_ '%#struct-direct-set! void)
           (table-set! _tbl13043_ '%#struct-unchecked-ref void)
           (table-set! _tbl13043_ '%#struct-unchecked-set! void)
           _tbl13043_)))))
  (define gxc#&void-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl13039_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13039_ '%#begin void)
           (table-set! _tbl13039_ '%#begin-syntax void)
           (table-set! _tbl13039_ '%#begin-foreign void)
           (table-set! _tbl13039_ '%#module void)
           (table-set! _tbl13039_ '%#import void)
           (table-set! _tbl13039_ '%#export void)
           (table-set! _tbl13039_ '%#provide void)
           (table-set! _tbl13039_ '%#extern void)
           (table-set! _tbl13039_ '%#define-values void)
           (table-set! _tbl13039_ '%#define-syntax void)
           (table-set! _tbl13039_ '%#define-alias void)
           (table-set! _tbl13039_ '%#declare void)
           _tbl13039_)))))
  (define gxc#&void
    (##make-promise
     (lambda ()
       (let ((_tbl13035_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13035_ (force gxc#&void-special-form))
           (hash-copy! _tbl13035_ (force gxc#&void-expression))
           _tbl13035_)))))
  (define gxc#&false-expression
    (##make-promise
     (lambda ()
       (let ((_tbl13031_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13031_ '%#begin-annotation false)
           (table-set! _tbl13031_ '%#lambda false)
           (table-set! _tbl13031_ '%#case-lambda false)
           (table-set! _tbl13031_ '%#let-values false)
           (table-set! _tbl13031_ '%#letrec-values false)
           (table-set! _tbl13031_ '%#letrec*-values false)
           (table-set! _tbl13031_ '%#quote false)
           (table-set! _tbl13031_ '%#quote-syntax false)
           (table-set! _tbl13031_ '%#call false)
           (table-set! _tbl13031_ '%#if false)
           (table-set! _tbl13031_ '%#ref false)
           (table-set! _tbl13031_ '%#set! false)
           (table-set! _tbl13031_ '%#struct-instance? false)
           (table-set! _tbl13031_ '%#struct-direct-instance? false)
           (table-set! _tbl13031_ '%#struct-ref false)
           (table-set! _tbl13031_ '%#struct-set! false)
           (table-set! _tbl13031_ '%#struct-direct-ref false)
           (table-set! _tbl13031_ '%#struct-direct-set! false)
           (table-set! _tbl13031_ '%#struct-unchecked-ref false)
           (table-set! _tbl13031_ '%#struct-unchecked-set! false)
           _tbl13031_)))))
  (define gxc#&false-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl13027_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13027_ '%#begin false)
           (table-set! _tbl13027_ '%#begin-syntax false)
           (table-set! _tbl13027_ '%#begin-foreign false)
           (table-set! _tbl13027_ '%#module false)
           (table-set! _tbl13027_ '%#import false)
           (table-set! _tbl13027_ '%#export false)
           (table-set! _tbl13027_ '%#provide false)
           (table-set! _tbl13027_ '%#extern false)
           (table-set! _tbl13027_ '%#define-values false)
           (table-set! _tbl13027_ '%#define-syntax false)
           (table-set! _tbl13027_ '%#define-alias false)
           (table-set! _tbl13027_ '%#declare false)
           _tbl13027_)))))
  (define gxc#&false
    (##make-promise
     (lambda ()
       (let ((_tbl13023_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13023_ (force gxc#&false-special-form))
           (hash-copy! _tbl13023_ (force gxc#&false-expression))
           _tbl13023_)))))
  (define gxc#&collect-bindings
    (##make-promise
     (lambda ()
       (let ((_tbl13019_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13019_ (force gxc#&void-expression))
           (hash-copy! _tbl13019_ (force gxc#&void-special-form))
           (table-set! _tbl13019_ '%#begin gxc#collect-begin%)
           (table-set! _tbl13019_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl13019_ '%#module gxc#collect-module%)
           (table-set!
            _tbl13019_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl13019_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl13019_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx13012_ . _args13014_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13012_ _args13014_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (##make-promise
     (lambda ()
       (let ((_tbl13009_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13009_ (force gxc#&void))
           (table-set! _tbl13009_ '%#begin gxc#collect-begin%)
           (table-set! _tbl13009_ '%#module gxc#lift-modules-module%)
           _tbl13009_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx13002_ . _args13004_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13002_ _args13004_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (##make-promise
     (lambda ()
       (let ((_tbl12999_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12999_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12999_ '%#begin-syntax false)
           (table-set! _tbl12999_ '%#begin-foreign true)
           (table-set! _tbl12999_ '%#begin-annotation true)
           (table-set! _tbl12999_ '%#module false)
           (table-set! _tbl12999_ '%#import false)
           (table-set! _tbl12999_ '%#export false)
           (table-set! _tbl12999_ '%#provide false)
           (table-set! _tbl12999_ '%#extern false)
           (table-set! _tbl12999_ '%#define-values true)
           (table-set! _tbl12999_ '%#define-syntax false)
           (table-set! _tbl12999_ '%#define-alias false)
           (table-set! _tbl12999_ '%#declare false)
           (table-set! _tbl12999_ '%#lambda true)
           (table-set! _tbl12999_ '%#case-lambda true)
           (table-set! _tbl12999_ '%#let-values true)
           (table-set! _tbl12999_ '%#letrec-values true)
           (table-set! _tbl12999_ '%#letrec*-values true)
           (table-set! _tbl12999_ '%#quote true)
           (table-set! _tbl12999_ '%#call true)
           (table-set! _tbl12999_ '%#if true)
           (table-set! _tbl12999_ '%#ref true)
           (table-set! _tbl12999_ '%#set! true)
           (table-set! _tbl12999_ '%#struct-instance? true)
           (table-set! _tbl12999_ '%#struct-direct-instance? true)
           (table-set! _tbl12999_ '%#struct-ref true)
           (table-set! _tbl12999_ '%#struct-set! true)
           (table-set! _tbl12999_ '%#struct-direct-ref true)
           (table-set! _tbl12999_ '%#struct-direct-set! true)
           (table-set! _tbl12999_ '%#struct-unchecked-ref true)
           (table-set! _tbl12999_ '%#struct-unchecked-set! true)
           _tbl12999_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12992_ . _args12994_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12992_ _args12994_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (##make-promise
     (lambda ()
       (let ((_tbl12989_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12989_ (force gxc#&false))
           (table-set! _tbl12989_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12989_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12989_ '%#lambda values)
           (table-set! _tbl12989_ '%#case-lambda values)
           (table-set!
            _tbl12989_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12989_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12989_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12989_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12982_ . _args12984_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12982_ _args12984_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (##make-promise
     (lambda ()
       (let ((_tbl12979_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12979_ (force gxc#&false-expression))
           (table-set! _tbl12979_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12979_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12979_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12979_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12979_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12979_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12979_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12979_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12979_ '%#call gxc#count-values-call%)
           (table-set! _tbl12979_ '%#if gxc#count-values-if%)
           _tbl12979_)))))
  (define gxc#apply-count-values
    (lambda (_stx12972_ . _args12974_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12972_ _args12974_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (##make-promise
     (lambda ()
       (let ((_tbl12969_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12969_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12969_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12969_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12969_)))))
  (define gxc#&generate-loader
    (##make-promise
     (lambda ()
       (let ((_tbl12965_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12965_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12965_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12965_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12965_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12958_ . _args12960_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12958_ _args12960_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (##make-promise
     (lambda ()
       (let ((_tbl12955_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12955_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12955_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12955_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12955_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12955_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12955_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12955_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12955_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12955_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12955_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12955_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12955_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12955_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12955_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12955_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12955_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12955_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12955_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12955_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12955_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12955_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12955_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12955_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12955_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12955_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12955_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12948_ . _args12950_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12948_ _args12950_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (##make-promise
     (lambda ()
       (let ((_tbl12945_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12945_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12945_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12945_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12938_ . _args12940_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12938_ _args12940_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (##make-promise
     (lambda ()
       (let ((_tbl12935_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12935_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12935_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12935_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12935_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12935_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12935_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12935_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12935_ '%#quote void)
           (table-set! _tbl12935_ '%#quote-syntax void)
           (table-set! _tbl12935_ '%#call gxc#collect-operands)
           (table-set! _tbl12935_ '%#if gxc#collect-operands)
           (table-set! _tbl12935_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12935_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12935_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12935_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12935_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12935_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12935_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12935_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12935_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12935_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12935_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12928_ . _args12930_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12928_ _args12930_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (##make-promise
     (lambda ()
       (let ((_tbl12925_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12925_ (force gxc#&void-expression))
           (table-set! _tbl12925_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12925_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12925_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12925_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12925_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12925_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12925_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12925_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12925_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12925_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12925_ '%#begin-foreign void)
           (table-set! _tbl12925_ '%#declare void)
           _tbl12925_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12918_ . _args12920_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12918_ _args12920_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (##make-promise
     (lambda ()
       (let ((_tbl12915_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12915_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12915_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12915_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12915_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12915_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12915_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12915_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12915_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12915_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12915_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12915_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12915_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12915_ '%#declare void)
           _tbl12915_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12908_ . _args12910_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12908_ _args12910_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12865_ . _args12866_)
      (let* ((_g1286812878_
              (lambda (_g1286912875_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1286912875_)))
             (_g1286712905_
              (lambda (_g1286912881_)
                (if (gx#stx-pair? _g1286912881_)
                    (let ((_e1287112883_ (gx#stx-e _g1286912881_)))
                      (let ((_hd1287212886_ (##car _e1287112883_))
                            (_tl1287312888_ (##cdr _e1287112883_)))
                        ((lambda (_L12891_)
                           (for-each
                            (lambda (_g1290012902_)
                              (apply gxc#compile-e _g1290012902_ _args12866_))
                            (gx#stx-e _L12891_)))
                         _tl1287312888_)))
                    (_g1286812878_ _g1286912881_)))))
        (_g1286712905_ _stx12865_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12861_ . _args12862_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx12861_ _args12862_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx12803_ . _args12804_)
      (let* ((_g1280612820_
              (lambda (_g1280712817_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1280712817_)))
             (_g1280512858_
              (lambda (_g1280712823_)
                (if (gx#stx-pair? _g1280712823_)
                    (let ((_e1281012825_ (gx#stx-e _g1280712823_)))
                      (let ((_hd1281112828_ (##car _e1281012825_))
                            (_tl1281212830_ (##cdr _e1281012825_)))
                        (if (gx#stx-pair? _tl1281212830_)
                            (let ((_e1281312833_ (gx#stx-e _tl1281212830_)))
                              (let ((_hd1281412836_ (##car _e1281312833_))
                                    (_tl1281512838_ (##cdr _e1281312833_)))
                                ((lambda (_L12841_ _L12842_)
                                   (let ((_ctx12855_
                                          (gx#syntax-local-e__0 _L12842_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12855_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12804_))
                                      gx#current-expander-context
                                      _ctx12855_)))
                                 _tl1281512838_
                                 _hd1281412836_)))
                            (_g1280612820_ _g1280712823_))))
                    (_g1280612820_ _g1280712823_)))))
        (_g1280512858_ _stx12803_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12735_ . _args12736_)
      (let* ((_g1273812755_
              (lambda (_g1273912752_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1273912752_)))
             (_g1273712800_
              (lambda (_g1273912758_)
                (if (gx#stx-pair? _g1273912758_)
                    (let ((_e1274212760_ (gx#stx-e _g1273912758_)))
                      (let ((_hd1274312763_ (##car _e1274212760_))
                            (_tl1274412765_ (##cdr _e1274212760_)))
                        (if (gx#stx-pair? _tl1274412765_)
                            (let ((_e1274512768_ (gx#stx-e _tl1274412765_)))
                              (let ((_hd1274612771_ (##car _e1274512768_))
                                    (_tl1274712773_ (##cdr _e1274512768_)))
                                (if (gx#stx-pair? _tl1274712773_)
                                    (let ((_e1274812776_
                                           (gx#stx-e _tl1274712773_)))
                                      (let ((_hd1274912779_
                                             (##car _e1274812776_))
                                            (_tl1275012781_
                                             (##cdr _e1274812776_)))
                                        (if (gx#stx-null? _tl1275012781_)
                                            ((lambda (_L12784_ _L12785_)
                                               (apply gxc#compile-e
                                                      _L12784_
                                                      _args12736_))
                                             _hd1274912779_
                                             _hd1274612771_)
                                            (_g1273812755_ _g1273912758_))))
                                    (_g1273812755_ _g1273912758_))))
                            (_g1273812755_ _g1273912758_))))
                    (_g1273812755_ _g1273912758_)))))
        (_g1273712800_ _stx12735_))))
  (define gxc#collect-define-values%
    (lambda (_stx12667_ . _args12668_)
      (let* ((_g1267012687_
              (lambda (_g1267112684_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1267112684_)))
             (_g1266912732_
              (lambda (_g1267112690_)
                (if (gx#stx-pair? _g1267112690_)
                    (let ((_e1267412692_ (gx#stx-e _g1267112690_)))
                      (let ((_hd1267512695_ (##car _e1267412692_))
                            (_tl1267612697_ (##cdr _e1267412692_)))
                        (if (gx#stx-pair? _tl1267612697_)
                            (let ((_e1267712700_ (gx#stx-e _tl1267612697_)))
                              (let ((_hd1267812703_ (##car _e1267712700_))
                                    (_tl1267912705_ (##cdr _e1267712700_)))
                                (if (gx#stx-pair? _tl1267912705_)
                                    (let ((_e1268012708_
                                           (gx#stx-e _tl1267912705_)))
                                      (let ((_hd1268112711_
                                             (##car _e1268012708_))
                                            (_tl1268212713_
                                             (##cdr _e1268012708_)))
                                        (if (gx#stx-null? _tl1268212713_)
                                            ((lambda (_L12716_ _L12717_)
                                               (apply gxc#compile-e
                                                      _L12716_
                                                      _args12668_))
                                             _hd1268112711_
                                             _hd1267812703_)
                                            (_g1267012687_ _g1267112690_))))
                                    (_g1267012687_ _g1267112690_))))
                            (_g1267012687_ _g1267112690_))))
                    (_g1267012687_ _g1267112690_)))))
        (_g1266912732_ _stx12667_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx12598_ . _args12599_)
      (let* ((_g1260112618_
              (lambda (_g1260212615_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1260212615_)))
             (_g1260012664_
              (lambda (_g1260212621_)
                (if (gx#stx-pair? _g1260212621_)
                    (let ((_e1260512623_ (gx#stx-e _g1260212621_)))
                      (let ((_hd1260612626_ (##car _e1260512623_))
                            (_tl1260712628_ (##cdr _e1260512623_)))
                        (if (gx#stx-pair? _tl1260712628_)
                            (let ((_e1260812631_ (gx#stx-e _tl1260712628_)))
                              (let ((_hd1260912634_ (##car _e1260812631_))
                                    (_tl1261012636_ (##cdr _e1260812631_)))
                                (if (gx#stx-pair? _tl1261012636_)
                                    (let ((_e1261112639_
                                           (gx#stx-e _tl1261012636_)))
                                      (let ((_hd1261212642_
                                             (##car _e1261112639_))
                                            (_tl1261312644_
                                             (##cdr _e1261112639_)))
                                        (if (gx#stx-null? _tl1261312644_)
                                            ((lambda (_L12647_ _L12648_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L12647_
                                                         _args12599_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1261212642_
                                             _hd1260912634_)
                                            (_g1260112618_ _g1260212621_))))
                                    (_g1260112618_ _g1260212621_))))
                            (_g1260112618_ _g1260212621_))))
                    (_g1260112618_ _g1260212621_)))))
        (_g1260012664_ _stx12598_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12530_ . _args12531_)
      (let* ((_g1253312550_
              (lambda (_g1253412547_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1253412547_)))
             (_g1253212595_
              (lambda (_g1253412553_)
                (if (gx#stx-pair? _g1253412553_)
                    (let ((_e1253712555_ (gx#stx-e _g1253412553_)))
                      (let ((_hd1253812558_ (##car _e1253712555_))
                            (_tl1253912560_ (##cdr _e1253712555_)))
                        (if (gx#stx-pair? _tl1253912560_)
                            (let ((_e1254012563_ (gx#stx-e _tl1253912560_)))
                              (let ((_hd1254112566_ (##car _e1254012563_))
                                    (_tl1254212568_ (##cdr _e1254012563_)))
                                (if (gx#stx-pair? _tl1254212568_)
                                    (let ((_e1254312571_
                                           (gx#stx-e _tl1254212568_)))
                                      (let ((_hd1254412574_
                                             (##car _e1254312571_))
                                            (_tl1254512576_
                                             (##cdr _e1254312571_)))
                                        (if (gx#stx-null? _tl1254512576_)
                                            ((lambda (_L12579_ _L12580_)
                                               (apply gxc#compile-e
                                                      _L12579_
                                                      _args12531_))
                                             _hd1254412574_
                                             _hd1254112566_)
                                            (_g1253312550_ _g1253412553_))))
                                    (_g1253312550_ _g1253412553_))))
                            (_g1253312550_ _g1253412553_))))
                    (_g1253312550_ _g1253412553_)))))
        (_g1253212595_ _stx12530_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12412_ . _args12413_)
      (let* ((_g1241512443_
              (lambda (_g1241612440_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1241612440_)))
             (_g1241412527_
              (lambda (_g1241612446_)
                (if (gx#stx-pair? _g1241612446_)
                    (let ((_e1241912448_ (gx#stx-e _g1241612446_)))
                      (let ((_hd1242012451_ (##car _e1241912448_))
                            (_tl1242112453_ (##cdr _e1241912448_)))
                        (if (gx#stx-pair/null? _tl1242112453_)
                            (let ((_g14267_
                                   (gx#syntax-split-splice _tl1242112453_ '0)))
                              (begin
                                (let ((_g14268_
                                       (if (##values? _g14267_)
                                           (##vector-length _g14267_)
                                           1)))
                                  (if (not (##fx= _g14268_ 2))
                                      (error "Context expects 2 values"
                                             _g14268_)))
                                (let ((_target1242212456_
                                       (##vector-ref _g14267_ 0))
                                      (_tl1242412458_
                                       (##vector-ref _g14267_ 1)))
                                  (if (gx#stx-null? _tl1242412458_)
                                      (letrec ((_loop1242512461_
                                                (lambda (_hd1242312464_
                                                         _body1242912466_
                                                         _hd1243012468_)
                                                  (if (gx#stx-pair?
                                                       _hd1242312464_)
                                                      (let ((_e1242612471_
                                                             (gx#stx-e
                                                              _hd1242312464_)))
                                                        (let ((_lp-hd1242712474_
                                                               (##car _e1242612471_))
                                                              (_lp-tl1242812476_
                                                               (##cdr _e1242612471_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1242712474_)
                                                              (let ((_e1243312479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1242712474_)))
                        (let ((_hd1243412482_ (##car _e1243312479_))
                              (_tl1243512484_ (##cdr _e1243312479_)))
                          (if (gx#stx-pair? _tl1243512484_)
                              (let ((_e1243612487_ (gx#stx-e _tl1243512484_)))
                                (let ((_hd1243712490_ (##car _e1243612487_))
                                      (_tl1243812492_ (##cdr _e1243612487_)))
                                  (if (gx#stx-null? _tl1243812492_)
                                      (_loop1242512461_
                                       _lp-tl1242812476_
                                       (cons _hd1243712490_ _body1242912466_)
                                       (cons _hd1243412482_ _hd1243012468_))
                                      (_g1241512443_ _g1241612446_))))
                              (_g1241512443_ _g1241612446_))))
                      (_g1241512443_ _g1241612446_))))
              (let ((_body1243112495_ (reverse _body1242912466_))
                    (_hd1243212497_ (reverse _hd1243012468_)))
                ((lambda (_L12500_ _L12501_)
                   (for-each
                    (lambda (_g1251512517_)
                      (apply gxc#compile-e _g1251512517_ _args12413_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1251912522_ _g1252012524_)
                                (cons _g1251912522_ _g1252012524_))
                              '()
                              _L12500_))))
                 _body1243112495_
                 _hd1243212497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1242512461_
                                         _target1242212456_
                                         '()
                                         '()))
                                      (_g1241512443_ _g1241612446_)))))
                            (_g1241512443_ _g1241612446_))))
                    (_g1241512443_ _g1241612446_)))))
        (_g1241412527_ _stx12412_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12265_ . _args12266_)
      (let* ((_g1226812303_
              (lambda (_g1226912300_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1226912300_)))
             (_g1226712409_
              (lambda (_g1226912306_)
                (if (gx#stx-pair? _g1226912306_)
                    (let ((_e1227312308_ (gx#stx-e _g1226912306_)))
                      (let ((_hd1227412311_ (##car _e1227312308_))
                            (_tl1227512313_ (##cdr _e1227312308_)))
                        (if (gx#stx-pair? _tl1227512313_)
                            (let ((_e1227612316_ (gx#stx-e _tl1227512313_)))
                              (let ((_hd1227712319_ (##car _e1227612316_))
                                    (_tl1227812321_ (##cdr _e1227612316_)))
                                (if (gx#stx-pair/null? _hd1227712319_)
                                    (let ((_g14269_
                                           (gx#syntax-split-splice
                                            _hd1227712319_
                                            '0)))
                                      (begin
                                        (let ((_g14270_
                                               (if (##values? _g14269_)
                                                   (##vector-length _g14269_)
                                                   1)))
                                          (if (not (##fx= _g14270_ 2))
                                              (error "Context expects 2 values"
                                                     _g14270_)))
                                        (let ((_target1227912324_
                                               (##vector-ref _g14269_ 0))
                                              (_tl1228112326_
                                               (##vector-ref _g14269_ 1)))
                                          (if (gx#stx-null? _tl1228112326_)
                                              (letrec ((_loop1228212329_
                                                        (lambda (_hd1228012332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1228612334_
                         _hd1228712336_)
                  (if (gx#stx-pair? _hd1228012332_)
                      (let ((_e1228312339_ (gx#stx-e _hd1228012332_)))
                        (let ((_lp-hd1228412342_ (##car _e1228312339_))
                              (_lp-tl1228512344_ (##cdr _e1228312339_)))
                          (if (gx#stx-pair? _lp-hd1228412342_)
                              (let ((_e1229012347_
                                     (gx#stx-e _lp-hd1228412342_)))
                                (let ((_hd1229112350_ (##car _e1229012347_))
                                      (_tl1229212352_ (##cdr _e1229012347_)))
                                  (if (gx#stx-pair? _tl1229212352_)
                                      (let ((_e1229312355_
                                             (gx#stx-e _tl1229212352_)))
                                        (let ((_hd1229412358_
                                               (##car _e1229312355_))
                                              (_tl1229512360_
                                               (##cdr _e1229312355_)))
                                          (if (gx#stx-null? _tl1229512360_)
                                              (_loop1228212329_
                                               _lp-tl1228512344_
                                               (cons _hd1229412358_
                                                     _expr1228612334_)
                                               (cons _hd1229112350_
                                                     _hd1228712336_))
                                              (_g1226812303_ _g1226912306_))))
                                      (_g1226812303_ _g1226912306_))))
                              (_g1226812303_ _g1226912306_))))
                      (let ((_expr1228812363_ (reverse _expr1228612334_))
                            (_hd1228912365_ (reverse _hd1228712336_)))
                        (if (gx#stx-pair? _tl1227812321_)
                            (let ((_e1229612368_ (gx#stx-e _tl1227812321_)))
                              (let ((_hd1229712371_ (##car _e1229612368_))
                                    (_tl1229812373_ (##cdr _e1229612368_)))
                                (if (gx#stx-null? _tl1229812373_)
                                    ((lambda (_L12376_ _L12377_ _L12378_)
                                       (for-each
                                        (lambda (_g1239712399_)
                                          (apply gxc#compile-e
                                                 _g1239712399_
                                                 _args12266_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1240112404_
                                                           _g1240212406_)
                                                    (cons _g1240112404_
                                                          _g1240212406_))
                                                  (cons _L12376_ '())
                                                  _L12377_))))
                                     _hd1229712371_
                                     _expr1228812363_
                                     _hd1228912365_)
                                    (_g1226812303_ _g1226912306_))))
                            (_g1226812303_ _g1226912306_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1228212329_
                                                 _target1227912324_
                                                 '()
                                                 '()))
                                              (_g1226812303_ _g1226912306_)))))
                                    (_g1226812303_ _g1226912306_))))
                            (_g1226812303_ _g1226912306_))))
                    (_g1226812303_ _g1226912306_)))))
        (_g1226712409_ _stx12265_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12197_ . _args12198_)
      (let* ((_g1220012217_
              (lambda (_g1220112214_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1220112214_)))
             (_g1219912262_
              (lambda (_g1220112220_)
                (if (gx#stx-pair? _g1220112220_)
                    (let ((_e1220412222_ (gx#stx-e _g1220112220_)))
                      (let ((_hd1220512225_ (##car _e1220412222_))
                            (_tl1220612227_ (##cdr _e1220412222_)))
                        (if (gx#stx-pair? _tl1220612227_)
                            (let ((_e1220712230_ (gx#stx-e _tl1220612227_)))
                              (let ((_hd1220812233_ (##car _e1220712230_))
                                    (_tl1220912235_ (##cdr _e1220712230_)))
                                (if (gx#stx-pair? _tl1220912235_)
                                    (let ((_e1221012238_
                                           (gx#stx-e _tl1220912235_)))
                                      (let ((_hd1221112241_
                                             (##car _e1221012238_))
                                            (_tl1221212243_
                                             (##cdr _e1221012238_)))
                                        (if (gx#stx-null? _tl1221212243_)
                                            ((lambda (_L12246_ _L12247_)
                                               (apply gxc#compile-e
                                                      _L12246_
                                                      _args12198_))
                                             _hd1221112241_
                                             _hd1220812233_)
                                            (_g1220012217_ _g1220112220_))))
                                    (_g1220012217_ _g1220112220_))))
                            (_g1220012217_ _g1220112220_))))
                    (_g1220012217_ _g1220112220_)))))
        (_g1219912262_ _stx12197_))))
  (define gxc#collect-operands
    (lambda (_stx12110_ . _args12111_)
      (let* ((_g1211312132_
              (lambda (_g1211412129_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1211412129_)))
             (_g1211212194_
              (lambda (_g1211412135_)
                (if (gx#stx-pair? _g1211412135_)
                    (let ((_e1211612137_ (gx#stx-e _g1211412135_)))
                      (let ((_hd1211712140_ (##car _e1211612137_))
                            (_tl1211812142_ (##cdr _e1211612137_)))
                        (if (gx#stx-pair/null? _tl1211812142_)
                            (let ((_g14271_
                                   (gx#syntax-split-splice _tl1211812142_ '0)))
                              (begin
                                (let ((_g14272_
                                       (if (##values? _g14271_)
                                           (##vector-length _g14271_)
                                           1)))
                                  (if (not (##fx= _g14272_ 2))
                                      (error "Context expects 2 values"
                                             _g14272_)))
                                (let ((_target1211912145_
                                       (##vector-ref _g14271_ 0))
                                      (_tl1212112147_
                                       (##vector-ref _g14271_ 1)))
                                  (if (gx#stx-null? _tl1212112147_)
                                      (letrec ((_loop1212212150_
                                                (lambda (_hd1212012153_
                                                         _rands1212612155_)
                                                  (if (gx#stx-pair?
                                                       _hd1212012153_)
                                                      (let ((_e1212312158_
                                                             (gx#stx-e
                                                              _hd1212012153_)))
                                                        (let ((_lp-hd1212412161_
                                                               (##car _e1212312158_))
                                                              (_lp-tl1212512163_
                                                               (##cdr _e1212312158_)))
                                                          (_loop1212212150_
                                                           _lp-tl1212512163_
                                                           (cons _lp-hd1212412161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1212612155_))))
              (let ((_rands1212712166_ (reverse _rands1212612155_)))
                ((lambda (_L12169_)
                   (for-each
                    (lambda (_g1218212184_)
                      (apply gxc#compile-e _g1218212184_ _args12111_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1218612189_ _g1218712191_)
                                (cons _g1218612189_ _g1218712191_))
                              '()
                              _L12169_))))
                 _rands1212712166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1212212150_
                                         _target1211912145_
                                         '()))
                                      (_g1211312132_ _g1211412135_)))))
                            (_g1211312132_ _g1211412135_))))
                    (_g1211312132_ _g1211412135_)))))
        (_g1211212194_ _stx12110_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx12041_)
      (let* ((_g1204312060_
              (lambda (_g1204412057_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1204412057_)))
             (_g1204212107_
              (lambda (_g1204412063_)
                (if (gx#stx-pair? _g1204412063_)
                    (let ((_e1204712065_ (gx#stx-e _g1204412063_)))
                      (let ((_hd1204812068_ (##car _e1204712065_))
                            (_tl1204912070_ (##cdr _e1204712065_)))
                        (if (gx#stx-pair? _tl1204912070_)
                            (let ((_e1205012073_ (gx#stx-e _tl1204912070_)))
                              (let ((_hd1205112076_ (##car _e1205012073_))
                                    (_tl1205212078_ (##cdr _e1205012073_)))
                                (if (gx#stx-pair? _tl1205212078_)
                                    (let ((_e1205312081_
                                           (gx#stx-e _tl1205212078_)))
                                      (let ((_hd1205412084_
                                             (##car _e1205312081_))
                                            (_tl1205512086_
                                             (##cdr _e1205312081_)))
                                        (if (gx#stx-null? _tl1205512086_)
                                            ((lambda (_L12089_ _L12090_)
                                               (gx#stx-for-each1
                                                (lambda (_bind12105_)
                                                  (if (gx#identifier?
                                                       _bind12105_)
                                                      (gxc#add-module-binding!
                                                       _bind12105_
                                                       '#f)
                                                      '#!void))
                                                _L12090_))
                                             _hd1205412084_
                                             _hd1205112076_)
                                            (_g1204312060_ _g1204412063_))))
                                    (_g1204312060_ _g1204412063_))))
                            (_g1204312060_ _g1204412063_))))
                    (_g1204312060_ _g1204412063_)))))
        (_g1204212107_ _stx12041_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11974_)
      (let* ((_g1197611993_
              (lambda (_g1197711990_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1197711990_)))
             (_g1197512038_
              (lambda (_g1197711996_)
                (if (gx#stx-pair? _g1197711996_)
                    (let ((_e1198011998_ (gx#stx-e _g1197711996_)))
                      (let ((_hd1198112001_ (##car _e1198011998_))
                            (_tl1198212003_ (##cdr _e1198011998_)))
                        (if (gx#stx-pair? _tl1198212003_)
                            (let ((_e1198312006_ (gx#stx-e _tl1198212003_)))
                              (let ((_hd1198412009_ (##car _e1198312006_))
                                    (_tl1198512011_ (##cdr _e1198312006_)))
                                (if (gx#stx-pair? _tl1198512011_)
                                    (let ((_e1198612014_
                                           (gx#stx-e _tl1198512011_)))
                                      (let ((_hd1198712017_
                                             (##car _e1198612014_))
                                            (_tl1198812019_
                                             (##cdr _e1198612014_)))
                                        (if (gx#stx-null? _tl1198812019_)
                                            ((lambda (_L12022_ _L12023_)
                                               (gxc#add-module-binding!
                                                _L12023_
                                                '#t))
                                             _hd1198712017_
                                             _hd1198412009_)
                                            (_g1197611993_ _g1197711996_))))
                                    (_g1197611993_ _g1197711996_))))
                            (_g1197611993_ _g1197711996_))))
                    (_g1197611993_ _g1197711996_)))))
        (_g1197512038_ _stx11974_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11916_ _modules11917_)
      (let* ((_g1191911933_
              (lambda (_g1192011930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1192011930_)))
             (_g1191811971_
              (lambda (_g1192011936_)
                (if (gx#stx-pair? _g1192011936_)
                    (let ((_e1192311938_ (gx#stx-e _g1192011936_)))
                      (let ((_hd1192411941_ (##car _e1192311938_))
                            (_tl1192511943_ (##cdr _e1192311938_)))
                        (if (gx#stx-pair? _tl1192511943_)
                            (let ((_e1192611946_ (gx#stx-e _tl1192511943_)))
                              (let ((_hd1192711949_ (##car _e1192611946_))
                                    (_tl1192811951_ (##cdr _e1192611946_)))
                                ((lambda (_L11954_ _L11955_)
                                   (let ((_ctx11968_
                                          (gx#syntax-local-e__0 _L11955_)))
                                     (begin
                                       (set-box!
                                        _modules11917_
                                        (cons _ctx11968_
                                              (unbox _modules11917_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11968_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11917_))
                                        gx#current-expander-context
                                        _ctx11968_))))
                                 _tl1192811951_
                                 _hd1192711949_)))
                            (_g1191911933_ _g1192011936_))))
                    (_g1191911933_ _g1192011936_)))))
        (_g1191811971_ _stx11916_))))
  (define gxc#add-module-binding!
    (lambda (_id11910_ _syntax?11911_)
      (let ((_eid11913_
             (##structure-ref
              (gx#resolve-identifier__0 _id11910_)
              '1
              gx#binding::t
              '#f))
            (_ht11914_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11913_)
            '#!void
            (table-set!
             _ht11914_
             _eid11913_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11913_)
              _syntax?11911_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id111903_ _id211904_)
      (letrec ((_symbol-e11906_
                (lambda (_id11908_)
                  (if (symbol? _id11908_)
                      _id11908_
                      (gxc#generate-runtime-binding-id _id11908_)))))
        (eq? (_symbol-e11906_ _id111903_) (_symbol-e11906_ _id211904_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11881_)
      (let ((_$e11883_
             (if (##structure-direct-instance-of?
                  _id11881_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11881_)
                 '#f)))
        (if _$e11883_
            ((lambda (_bind11886_)
               (let ((_eid11888_
                      (##structure-ref _bind11886_ '1 gx#binding::t '#f))
                     (_ht11889_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11888_)
                     _eid11888_
                     (let ((_$e11891_ (table-ref _ht11889_ _eid11888_ '#f)))
                       (if _$e11891_
                           (values _$e11891_)
                           (if (##structure-instance-of?
                                _bind11886_
                                'gx#local-binding::t)
                               (let ((_gid11894_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11888_)))
                                 (begin
                                   (table-set! _ht11889_ _eid11888_ _gid11894_)
                                   _gid11894_))
                               (if (##structure-instance-of?
                                    _bind11886_
                                    'gx#module-binding::t)
                                   (let ((_gid11901_
                                          (let ((_$e11896_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11886_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11896_
                                                ((lambda (_ns11899_)
                                                   (make-symbol
                                                    _ns11899_
                                                    '"#"
                                                    _eid11888_))
                                                 _$e11896_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11888_)))))
                                     (begin
                                       (table-set!
                                        _ht11889_
                                        _eid11888_
                                        _gid11901_)
                                       _gid11901_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11881_
                                    _eid11888_
                                    _bind11886_))))))))
             _$e11883_)
            (if (interned-symbol? (gx#stx-e _id11881_))
                (gx#stx-e _id11881_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11881_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11879_)
      (if (gx#identifier? _id11879_)
          (gxc#generate-runtime-binding-id _id11879_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11859_ _quote?11860_)
        (let* ((_ht11862_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11864_ (table-ref _ht11862_ _sym11859_ '#f)))
          (if _$e11864_
              (values _$e11864_)
              (let ((_g11867_
                     (if _quote?11860_
                         (make-symbol
                          '"__"
                          _sym11859_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11859_ '"_"))))
                (begin
                  (table-set! _ht11862_ _sym11859_ _g11867_)
                  _g11867_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11872_)
          (let ((_quote?11874_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11872_
             _quote?11874_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g14274_
          (let ((_g14273_ (length _g14274_)))
            (cond ((##fx= _g14273_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g14274_))
                  ((##fx= _g14273_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g14274_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g14274_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11856_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11856_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11816_)
      (if (interned-symbol? _key11816_)
          _key11816_
          (if (uninterned-symbol? _key11816_)
              (gxc#generate-runtime-gensym-reference__0 _key11816_)
              (let* ((_key1181711824_ _key11816_)
                     (_E1181911828_
                      (lambda ()
                        (error '"No clause matching" _key1181711824_)))
                     (_K1182011844_
                      (lambda (_mark11831_ _eid11832_)
                        (let ((_$e11834_
                               (##structure-ref
                                _mark11831_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11834_
                              ((lambda (_ht11837_)
                                 (let ((_$e11839_
                                        (table-ref _ht11837_ _eid11832_ '#f)))
                                   (if _$e11839_
                                       ((lambda (_id11842_)
                                          (if (interned-symbol? _id11842_)
                                              _id11842_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11842_)))
                                        _$e11839_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11832_))))
                               _$e11834_)
                              (gxc#generate-runtime-identifier-key
                               _eid11832_))))))
                (if (##pair? _key1181711824_)
                    (let ((_hd1182111847_ (##car _key1181711824_))
                          (_tl1182211849_ (##cdr _key1181711824_)))
                      (let* ((_eid11852_ _hd1182111847_)
                             (_mark11854_ _tl1182211849_))
                        (_K1182011844_ _mark11854_ _eid11852_)))
                    (_E1181911828_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11803_)
        (if _top11803_
            (let ((_ns11805_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11806_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11806_)
                  (make-symbol
                   _ns11805_
                   '"["
                   (number->string _phi11806_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11805_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11812_ '#f))
            (gxc#generate-runtime-temporary__% _top11812_))))
      (define gxc#generate-runtime-temporary
        (lambda _g14276_
          (let ((_g14275_ (length _g14276_)))
            (cond ((##fx= _g14275_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g14276_))
                  ((##fx= _g14275_ 1)
                   (apply gxc#generate-runtime-temporary__% _g14276_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g14276_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11800_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11720_)
      (let* ((_g1172211732_
              (lambda (_g1172311729_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1172311729_)))
             (_g1172111797_
              (lambda (_g1172311735_)
                (if (gx#stx-pair? _g1172311735_)
                    (let ((_e1172511737_ (gx#stx-e _g1172311735_)))
                      (let ((_hd1172611740_ (##car _e1172511737_))
                            (_tl1172711742_ (##cdr _e1172511737_)))
                        ((lambda (_L11745_)
                           (let* ((_body11755_
                                   (gx#stx-map1 gxc#compile-e _L11745_))
                                  (_body11794_
                                   (filter (lambda (_stx11757_)
                                             (let* ((___stx1319113192_
                                                     _stx11757_)
                                                    (_g1176011769_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1319113192_))))
                                               (let ((___kont1319313194_
                                                      (lambda () '#f))
                                                     (___kont1319513196_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1319113192_)
                                                     (let ((_e1176211781_
                                                            (gx#stx-e
                                                             ___stx1319113192_)))
                                                       (let ((_tl1176411786_
                                                              (##cdr _e1176211781_))
                                                             (_hd1176311784_
                                                              (##car _e1176211781_)))
                                                         (if (gx#identifier?
                                                              _hd1176311784_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1176311784_)
                         (if (gx#stx-null? _tl1176411786_)
                             (___kont1319313194_)
                             (___kont1319513196_))
                         (___kont1319513196_))
                     (___kont1319513196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1319513196_)))))
                                           _body11755_)))
                             (if (fx= (length _body11794_) '1)
                                 (car _body11794_)
                                 (cons 'begin _body11794_))))
                         _tl1172711742_)))
                    (_g1172211732_ _g1172311735_)))))
        (_g1172111797_ _stx11720_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11682_)
      (let* ((_g1168411694_
              (lambda (_g1168511691_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1168511691_)))
             (_g1168311717_
              (lambda (_g1168511697_)
                (if (gx#stx-pair? _g1168511697_)
                    (let ((_e1168711699_ (gx#stx-e _g1168511697_)))
                      (let ((_hd1168811702_ (##car _e1168711699_))
                            (_tl1168911704_ (##cdr _e1168711699_)))
                        ((lambda (_L11707_)
                           (cons 'begin (gx#syntax->datum _L11707_)))
                         _tl1168911704_)))
                    (_g1168411694_ _g1168511697_)))))
        (_g1168311717_ _stx11682_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11559_)
      (let* ((___stx1321113212_ _stx11559_)
             (_g1156211590_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1321113212_))))
        (let ((___kont1321313214_
               (lambda (_L11664_ _L11665_) (gxc#compile-e _L11664_)))
              (___kont1321513216_
               (lambda (_L11619_ _L11620_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L11620_))
                             (cons (gxc#compile-e _L11619_) '()))))))
          (let ((___match1323613237_
                 (lambda (_e1156611640_
                          _hd1156711643_
                          _tl1156811645_
                          _e1156911648_
                          _hd1157011651_
                          _tl1157111653_
                          _e1157211656_
                          _hd1157311659_
                          _tl1157411661_)
                   (let ((_L11664_ _hd1157311659_) (_L11665_ _hd1157011651_))
                     (if (gx#identifier? _L11665_)
                         (___kont1321313214_ _L11664_ _L11665_)
                         (___kont1321513216_
                          _hd1157311659_
                          _hd1157011651_))))))
            (if (gx#stx-pair? ___stx1321113212_)
                (let ((_e1156611640_ (gx#stx-e ___stx1321113212_)))
                  (let ((_tl1156811645_ (##cdr _e1156611640_))
                        (_hd1156711643_ (##car _e1156611640_)))
                    (if (gx#stx-pair? _tl1156811645_)
                        (let ((_e1156911648_ (gx#stx-e _tl1156811645_)))
                          (let ((_tl1157111653_ (##cdr _e1156911648_))
                                (_hd1157011651_ (##car _e1156911648_)))
                            (if (gx#stx-pair? _tl1157111653_)
                                (let ((_e1157211656_
                                       (gx#stx-e _tl1157111653_)))
                                  (let ((_tl1157411661_ (##cdr _e1157211656_))
                                        (_hd1157311659_ (##car _e1157211656_)))
                                    (if (gx#stx-null? _tl1157411661_)
                                        (___match1323613237_
                                         _e1156611640_
                                         _hd1156711643_
                                         _tl1156811645_
                                         _e1156911648_
                                         _hd1157011651_
                                         _tl1157111653_
                                         _e1157211656_
                                         _hd1157311659_
                                         _tl1157411661_)
                                        (_g1156211590_))))
                                (_g1156211590_))))
                        (_g1156211590_))))
                (_g1156211590_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11521_)
      (let* ((_g1152311533_
              (lambda (_g1152411530_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1152411530_)))
             (_g1152211556_
              (lambda (_g1152411536_)
                (if (gx#stx-pair? _g1152411536_)
                    (let ((_e1152611538_ (gx#stx-e _g1152411536_)))
                      (let ((_hd1152711541_ (##car _e1152611538_))
                            (_tl1152811543_ (##cdr _e1152611538_)))
                        ((lambda (_L11546_)
                           (cons 'declare (map gx#syntax->datum _L11546_)))
                         _tl1152811543_)))
                    (_g1152311533_ _g1152411536_)))))
        (_g1152211556_ _stx11521_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11268_)
      (let* ((_g1127011287_
              (lambda (_g1127111284_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1127111284_)))
             (_g1126911518_
              (lambda (_g1127111290_)
                (if (gx#stx-pair? _g1127111290_)
                    (let ((_e1127411292_ (gx#stx-e _g1127111290_)))
                      (let ((_hd1127511295_ (##car _e1127411292_))
                            (_tl1127611297_ (##cdr _e1127411292_)))
                        (if (gx#stx-pair? _tl1127611297_)
                            (let ((_e1127711300_ (gx#stx-e _tl1127611297_)))
                              (let ((_hd1127811303_ (##car _e1127711300_))
                                    (_tl1127911305_ (##cdr _e1127711300_)))
                                (if (gx#stx-pair? _tl1127911305_)
                                    (let ((_e1128011308_
                                           (gx#stx-e _tl1127911305_)))
                                      (let ((_hd1128111311_
                                             (##car _e1128011308_))
                                            (_tl1128211313_
                                             (##cdr _e1128011308_)))
                                        (if (gx#stx-null? _tl1128211313_)
                                            ((lambda (_L11316_ _L11317_)
                                               (let* ((___stx1328913290_
                                                       _L11317_)
                                                      (_g1133411348_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1328913290_))))
                                                 (let ((___kont1329113292_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L11316_)))
                                                       (___kont1329313294_
                                                        (lambda (_L11480_)
                                                          (let ((_eid11489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L11480_)))
                    (begin
                      (let ((_lambda-expr1149011492_
                             (gxc#apply-find-lambda-expression _L11316_)))
                        (if _lambda-expr1149011492_
                            (let ((_lambda-expr11495_ _lambda-expr1149011492_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr11495_
                               _eid11489_))
                            '#f))
                      (cons 'define
                            (cons _eid11489_
                                  (cons (gxc#compile-e _L11316_) '())))))))
               (___kont1329513296_
                (lambda ()
                  (let* ((_tmp11355_ (gxc#generate-runtime-temporary__% '#t))
                         (_body11464_
                          (let _lp11357_ ((_rest11359_ _L11317_)
                                          (_k11360_ '0)
                                          (_r11361_ '()))
                            (let* ((___stx1325913260_ _rest11359_)
                                   (_g1136611383_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1325913260_))))
                              (let ((___kont1326113262_
                                     (lambda (_L11451_)
                                       (_lp11357_
                                        _L11451_
                                        (fx+ _k11360_ '1)
                                        _r11361_)))
                                    (___kont1326313264_
                                     (lambda (_L11424_ _L11425_)
                                       (_lp11357_
                                        _L11424_
                                        (fx+ _k11360_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L11425_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp11355_
                         _k11360_
                         _L11424_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r11361_))))
                                    (___kont1326513266_
                                     (lambda (_L11395_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11395_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp11355_
                                _k11360_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r11361_)))
                                    (___kont1326713268_
                                     (lambda () (reverse _r11361_))))
                                (let ((_g1136411411_
                                       (lambda ()
                                         (let ((_L11395_ ___stx1325913260_))
                                           (if (gx#identifier? _L11395_)
                                               (___kont1326513266_ _L11395_)
                                               (___kont1326713268_))))))
                                  (if (gx#stx-pair? ___stx1325913260_)
                                      (let ((_e1136911440_
                                             (gx#stx-e ___stx1325913260_)))
                                        (let ((_tl1137111445_
                                               (##cdr _e1136911440_))
                                              (_hd1137011443_
                                               (##car _e1136911440_)))
                                          (if (gx#stx-datum? _hd1137011443_)
                                              (let ((_e1137211448_
                                                     (gx#stx-e
                                                      _hd1137011443_)))
                                                (if (equal? _e1137211448_ '#f)
                                                    (___kont1326113262_
                                                     _tl1137111445_)
                                                    (___kont1326313264_
                                                     _tl1137111445_
                                                     _hd1137011443_)))
                                              (___kont1326313264_
                                               _tl1137111445_
                                               _hd1137011443_))))
                                      (_g1136411411_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp11355_
                                            (cons (gxc#compile-e _L11316_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp11355_
                                       _L11317_
                                       _L11316_)
                                      _body11464_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1328913290_)
                                                       (let ((_e1133611502_
                                                              (gx#stx-e
                                                               ___stx1328913290_)))
                                                         (let ((_tl1133811507_
                                                                (##cdr _e1133611502_))
                                                               (_hd1133711505_
                                                                (##car _e1133611502_)))
                                                           (if (gx#stx-datum?
                                                                _hd1133711505_)
                                                               (let ((_e1133911510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1133711505_)))
                         (if (equal? _e1133911510_ '#f)
                             (if (gx#stx-null? _tl1133811507_)
                                 (___kont1329113292_)
                                 (___kont1329513296_))
                             (if (gx#stx-null? _tl1133811507_)
                                 (___kont1329313294_ _hd1133711505_)
                                 (___kont1329513296_))))
                       (if (gx#stx-null? _tl1133811507_)
                           (___kont1329313294_ _hd1133711505_)
                           (___kont1329513296_)))))
               (___kont1329513296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1128111311_
                                             _hd1127811303_)
                                            (_g1127011287_ _g1127111290_))))
                                    (_g1127011287_ _g1127111290_))))
                            (_g1127011287_ _g1127111290_))))
                    (_g1127011287_ _g1127111290_)))))
        (_g1126911518_ _stx11268_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11244_ _hd11245_ _expr11246_)
      (let ((_$e11248_ (gxc#apply-count-values _expr11246_)))
        (if _$e11248_
            ((lambda (_count11251_)
               (let ((_len11253_ (gx#stx-length _hd11245_))
                     (_cmp11254_ (if (gx#stx-list? _hd11245_) fx= fx>=)))
                 (if (let ((_$e11256_ (fx= _len11253_ '0)))
                       (if _$e11256_
                           _$e11256_
                           (_cmp11254_ _count11251_ _len11253_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11246_
                      _hd11245_))))
             _$e11248_)
            (let* ((_len11259_ (gx#stx-length _hd11245_))
                   (_cmp11261_ (if (gx#stx-list? _hd11245_) '##fx= '##fx>=))
                   (_errmsg11263_
                    (string-append
                     (if (gx#stx-list? _hd11245_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11259_)
                     '" values"))
                   (_count11265_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11245_)) (fx= _len11259_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11265_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11244_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11265_ (cons _len11259_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11265_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11242_)
      (cons 'if
            (cons (cons '##values? (cons _var11242_ '()))
                  (cons (cons '##vector-length (cons _var11242_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11238_ _i11239_ _rest11240_)
      (if (if (fx= _i11239_ '0) (not (gx#stx-pair? _rest11240_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11238_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11238_ (cons '0 '())))
                            (cons _var11238_ '()))))
          (cons '##vector-ref (cons _var11238_ (cons _i11239_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11235_ _i11236_)
      (if (fx= _i11236_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11235_ '()))
                      (cons (cons '##vector->list (cons _var11235_ '()))
                            (cons (cons 'list (cons _var11235_ '())) '()))))
          (if (fx= _i11236_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11235_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11235_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11235_ '()))
                          (cons _i11236_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11168_)
      (let* ((_g1117011187_
              (lambda (_g1117111184_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1117111184_)))
             (_g1116911232_
              (lambda (_g1117111190_)
                (if (gx#stx-pair? _g1117111190_)
                    (let ((_e1117411192_ (gx#stx-e _g1117111190_)))
                      (let ((_hd1117511195_ (##car _e1117411192_))
                            (_tl1117611197_ (##cdr _e1117411192_)))
                        (if (gx#stx-pair? _tl1117611197_)
                            (let ((_e1117711200_ (gx#stx-e _tl1117611197_)))
                              (let ((_hd1117811203_ (##car _e1117711200_))
                                    (_tl1117911205_ (##cdr _e1117711200_)))
                                (if (gx#stx-pair? _tl1117911205_)
                                    (let ((_e1118011208_
                                           (gx#stx-e _tl1117911205_)))
                                      (let ((_hd1118111211_
                                             (##car _e1118011208_))
                                            (_tl1118211213_
                                             (##cdr _e1118011208_)))
                                        (if (gx#stx-null? _tl1118211213_)
                                            ((lambda (_L11216_ _L11217_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11217_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11216_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1118111211_
                                             _hd1117811203_)
                                            (_g1117011187_ _g1117111190_))))
                                    (_g1117011187_ _g1117111190_))))
                            (_g1117011187_ _g1117111190_))))
                    (_g1117011187_ _g1117111190_)))))
        (_g1116911232_ _stx11168_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11166_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11166_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9709_)
      (letrec ((_dispatch-case?9711_
                (lambda (_hd10396_ _body10397_)
                  (let* ((_form10399_ (cons _hd10396_ (cons _body10397_ '())))
                         (___stx1332113322_ _form10399_)
                         (_g1040410561_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1332113322_))))
                    (let ((___kont1332313324_
                           (lambda (_L11086_ _L11087_ _L11088_) '#t))
                          (___kont1332913330_
                           (lambda (_L10874_
                                    _L10875_
                                    _L10876_
                                    _L10877_
                                    _L10878_
                                    _L10879_)
                             '#t))
                          (___kont1333513336_
                           (lambda (_L10669_ _L10670_ _L10671_ _L10672_) '#t))
                          (___kont1333713338_ (lambda () '#f)))
                      (let* ((___match1346213463_
                              (lambda (_e1052110573_
                                       _hd1052210576_
                                       _tl1052310578_
                                       _e1052410581_
                                       _hd1052510584_
                                       _tl1052610586_
                                       _e1052710589_
                                       _hd1052810592_
                                       _tl1052910594_
                                       _e1053010597_
                                       _hd1053110600_
                                       _tl1053210602_
                                       _e1053310605_
                                       _hd1053410608_
                                       _tl1053510610_
                                       _e1053610613_
                                       _hd1053710616_
                                       _tl1053810618_
                                       _e1053910621_
                                       _hd1054010624_
                                       _tl1054110626_
                                       _e1054210629_
                                       _hd1054310632_
                                       _tl1054410634_
                                       _e1054510637_
                                       _hd1054610640_
                                       _tl1054710642_
                                       _e1054810645_
                                       _hd1054910648_
                                       _tl1055010650_
                                       _e1055110653_
                                       _hd1055210656_
                                       _tl1055310658_
                                       _e1055410661_
                                       _hd1055510664_
                                       _tl1055610666_)
                                (let ((_L10669_ _hd1055510664_)
                                      (_L10670_ _hd1054610640_)
                                      (_L10671_ _hd1053710616_)
                                      (_L10672_ _hd1052210576_))
                                  (if (if (gx#identifier? _L10672_)
                                          (if (gxc#runtime-identifier=?
                                               _L10671_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L10672_
                                                   _L10669_)
                                                  (not (gx#free-identifier=?
                                                        _L10670_
                                                        _L10672_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1333513336_
                                       _L10669_
                                       _L10670_
                                       _L10671_
                                       _L10672_)
                                      (___kont1333713338_)))))
                             (___match1343413435_
                              (lambda (_e1052110573_
                                       _hd1052210576_
                                       _tl1052310578_
                                       _e1052410581_
                                       _hd1052510584_
                                       _tl1052610586_
                                       _e1052710589_
                                       _hd1052810592_
                                       _tl1052910594_
                                       _e1053010597_
                                       _hd1053110600_
                                       _tl1053210602_
                                       _e1053310605_
                                       _hd1053410608_
                                       _tl1053510610_
                                       _e1053610613_
                                       _hd1053710616_
                                       _tl1053810618_
                                       _e1053910621_
                                       _hd1054010624_
                                       _tl1054110626_
                                       _e1054210629_
                                       _hd1054310632_
                                       _tl1054410634_
                                       _e1054510637_
                                       _hd1054610640_
                                       _tl1054710642_)
                                (if (gx#stx-pair? _tl1054110626_)
                                    (let ((_e1054810645_
                                           (gx#stx-e _tl1054110626_)))
                                      (let ((_tl1055010650_
                                             (##cdr _e1054810645_))
                                            (_hd1054910648_
                                             (##car _e1054810645_)))
                                        (if (gx#stx-pair? _hd1054910648_)
                                            (let ((_e1055110653_
                                                   (gx#stx-e _hd1054910648_)))
                                              (let ((_tl1055310658_
                                                     (##cdr _e1055110653_))
                                                    (_hd1055210656_
                                                     (##car _e1055110653_)))
                                                (if (gx#identifier?
                                                     _hd1055210656_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1055210656_)
                                                        (if (gx#stx-pair?
                                                             _tl1055310658_)
                                                            (let ((_e1055410661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1055310658_)))
                      (let ((_tl1055610666_ (##cdr _e1055410661_))
                            (_hd1055510664_ (##car _e1055410661_)))
                        (if (gx#stx-null? _tl1055610666_)
                            (if (gx#stx-null? _tl1055010650_)
                                (if (gx#stx-null? _tl1052610586_)
                                    (___match1346213463_
                                     _e1052110573_
                                     _hd1052210576_
                                     _tl1052310578_
                                     _e1052410581_
                                     _hd1052510584_
                                     _tl1052610586_
                                     _e1052710589_
                                     _hd1052810592_
                                     _tl1052910594_
                                     _e1053010597_
                                     _hd1053110600_
                                     _tl1053210602_
                                     _e1053310605_
                                     _hd1053410608_
                                     _tl1053510610_
                                     _e1053610613_
                                     _hd1053710616_
                                     _tl1053810618_
                                     _e1053910621_
                                     _hd1054010624_
                                     _tl1054110626_
                                     _e1054210629_
                                     _hd1054310632_
                                     _tl1054410634_
                                     _e1054510637_
                                     _hd1054610640_
                                     _tl1054710642_
                                     _e1054810645_
                                     _hd1054910648_
                                     _tl1055010650_
                                     _e1055110653_
                                     _hd1055210656_
                                     _tl1055310658_
                                     _e1055410661_
                                     _hd1055510664_
                                     _tl1055610666_)
                                    (___kont1333713338_))
                                (___kont1333713338_))
                            (___kont1333713338_))))
                    (___kont1333713338_))
                (___kont1333713338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1333713338_))))
                                            (___kont1333713338_))))
                                    (___kont1333713338_))))
                             (___match1336413365_
                              (lambda (_e1045710714_
                                       _hd1045810717_
                                       _tl1045910719_
                                       ___splice1333113332_
                                       _target1046010722_
                                       _tl1046210724_)
                                (letrec ((_loop1046310727_
                                          (lambda (_hd1046110730_
                                                   _arg1046710732_)
                                            (if (gx#stx-pair? _hd1046110730_)
                                                (let ((_e1046410735_
                                                       (gx#stx-e
                                                        _hd1046110730_)))
                                                  (let ((_lp-tl1046610740_
                                                         (##cdr _e1046410735_))
                                                        (_lp-hd1046510738_
                                                         (##car _e1046410735_)))
                                                    (_loop1046310727_
                                                     _lp-tl1046610740_
                                                     (cons _lp-hd1046510738_
                                                           _arg1046710732_))))
                                                (let ((_arg1046810743_
                                                       (reverse _arg1046710732_)))
                                                  (if (gx#stx-pair?
                                                       _tl1045910719_)
                                                      (let ((_e1046910746_
                                                             (gx#stx-e
                                                              _tl1045910719_)))
                                                        (let ((_tl1047110751_
                                                               (##cdr _e1046910746_))
                                                              (_hd1047010749_
                                                               (##car _e1046910746_)))
                                                          (if (gx#stx-pair?
                                                               _hd1047010749_)
                                                              (let ((_e1047210754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1047010749_)))
                        (let ((_tl1047410759_ (##cdr _e1047210754_))
                              (_hd1047310757_ (##car _e1047210754_)))
                          (if (gx#identifier? _hd1047310757_)
                              (if (gx#stx-eq? '%#call _hd1047310757_)
                                  (if (gx#stx-pair? _tl1047410759_)
                                      (let ((_e1047510762_
                                             (gx#stx-e _tl1047410759_)))
                                        (let ((_tl1047710767_
                                               (##cdr _e1047510762_))
                                              (_hd1047610765_
                                               (##car _e1047510762_)))
                                          (if (gx#stx-pair? _hd1047610765_)
                                              (let ((_e1047810770_
                                                     (gx#stx-e
                                                      _hd1047610765_)))
                                                (let ((_tl1048010775_
                                                       (##cdr _e1047810770_))
                                                      (_hd1047910773_
                                                       (##car _e1047810770_)))
                                                  (if (gx#identifier?
                                                       _hd1047910773_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1047910773_)
                                                          (if (gx#stx-pair?
                                                               _tl1048010775_)
                                                              (let ((_e1048110778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1048010775_)))
                        (let ((_tl1048310783_ (##cdr _e1048110778_))
                              (_hd1048210781_ (##car _e1048110778_)))
                          (if (gx#stx-null? _tl1048310783_)
                              (if (gx#stx-pair? _tl1047710767_)
                                  (let ((_e1048410786_
                                         (gx#stx-e _tl1047710767_)))
                                    (let ((_tl1048610791_
                                           (##cdr _e1048410786_))
                                          (_hd1048510789_
                                           (##car _e1048410786_)))
                                      (if (gx#stx-pair? _hd1048510789_)
                                          (let ((_e1048710794_
                                                 (gx#stx-e _hd1048510789_)))
                                            (let ((_tl1048910799_
                                                   (##cdr _e1048710794_))
                                                  (_hd1048810797_
                                                   (##car _e1048710794_)))
                                              (if (gx#identifier?
                                                   _hd1048810797_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1048810797_)
                                                      (if (gx#stx-pair?
                                                           _tl1048910799_)
                                                          (let ((_e1049010802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1048910799_)))
                    (let ((_tl1049210807_ (##cdr _e1049010802_))
                          (_hd1049110805_ (##car _e1049010802_)))
                      (if (gx#stx-null? _tl1049210807_)
                          (if (gx#stx-pair/null? _tl1048610791_)
                              (if (fx>= (gx#stx-length _tl1048610791_) '1)
                                  (let ((___splice1333313334_
                                         (gx#syntax-split-splice
                                          _tl1048610791_
                                          '1)))
                                    (let ((_tl1049510812_
                                           (##vector-ref
                                            ___splice1333313334_
                                            '1))
                                          (_target1049310810_
                                           (##vector-ref
                                            ___splice1333313334_
                                            '0)))
                                      (if (gx#stx-pair? _tl1049510812_)
                                          (let ((_e1050210815_
                                                 (gx#stx-e _tl1049510812_)))
                                            (let ((_tl1050410820_
                                                   (##cdr _e1050210815_))
                                                  (_hd1050310818_
                                                   (##car _e1050210815_)))
                                              (if (gx#stx-pair? _hd1050310818_)
                                                  (let ((_e1050510823_
                                                         (gx#stx-e
                                                          _hd1050310818_)))
                                                    (let ((_tl1050710828_
                                                           (##cdr _e1050510823_))
                                                          (_hd1050610826_
                                                           (##car _e1050510823_)))
                                                      (if (gx#identifier?
                                                           _hd1050610826_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1050610826_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1050710828_)
                          (let ((_e1050810831_ (gx#stx-e _tl1050710828_)))
                            (let ((_tl1051010836_ (##cdr _e1050810831_))
                                  (_hd1050910834_ (##car _e1050810831_)))
                              (if (gx#stx-null? _tl1051010836_)
                                  (if (gx#stx-null? _tl1050410820_)
                                      (letrec ((_loop1049610839_
                                                (lambda (_hd1049410842_
                                                         _xarg1050010844_)
                                                  (if (gx#stx-pair?
                                                       _hd1049410842_)
                                                      (let ((_e1049710847_
                                                             (gx#stx-e
                                                              _hd1049410842_)))
                                                        (let ((_lp-tl1049910852_
                                                               (##cdr _e1049710847_))
                                                              (_lp-hd1049810850_
                                                               (##car _e1049710847_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1049810850_)
                                                              (let ((_e1051110855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1049810850_)))
                        (let ((_tl1051310860_ (##cdr _e1051110855_))
                              (_hd1051210858_ (##car _e1051110855_)))
                          (if (gx#identifier? _hd1051210858_)
                              (if (gx#stx-eq? '%#ref _hd1051210858_)
                                  (if (gx#stx-pair? _tl1051310860_)
                                      (let ((_e1051410863_
                                             (gx#stx-e _tl1051310860_)))
                                        (let ((_tl1051610868_
                                               (##cdr _e1051410863_))
                                              (_hd1051510866_
                                               (##car _e1051410863_)))
                                          (if (gx#stx-null? _tl1051610868_)
                                              (_loop1049610839_
                                               _lp-tl1049910852_
                                               (cons _hd1051510866_
                                                     _xarg1050010844_))
                                              (___match1343413435_
                                               _e1045710714_
                                               _hd1045810717_
                                               _tl1045910719_
                                               _e1046910746_
                                               _hd1047010749_
                                               _tl1047110751_
                                               _e1047210754_
                                               _hd1047310757_
                                               _tl1047410759_
                                               _e1047510762_
                                               _hd1047610765_
                                               _tl1047710767_
                                               _e1047810770_
                                               _hd1047910773_
                                               _tl1048010775_
                                               _e1048110778_
                                               _hd1048210781_
                                               _tl1048310783_
                                               _e1048410786_
                                               _hd1048510789_
                                               _tl1048610791_
                                               _e1048710794_
                                               _hd1048810797_
                                               _tl1048910799_
                                               _e1049010802_
                                               _hd1049110805_
                                               _tl1049210807_))))
                                      (___match1343413435_
                                       _e1045710714_
                                       _hd1045810717_
                                       _tl1045910719_
                                       _e1046910746_
                                       _hd1047010749_
                                       _tl1047110751_
                                       _e1047210754_
                                       _hd1047310757_
                                       _tl1047410759_
                                       _e1047510762_
                                       _hd1047610765_
                                       _tl1047710767_
                                       _e1047810770_
                                       _hd1047910773_
                                       _tl1048010775_
                                       _e1048110778_
                                       _hd1048210781_
                                       _tl1048310783_
                                       _e1048410786_
                                       _hd1048510789_
                                       _tl1048610791_
                                       _e1048710794_
                                       _hd1048810797_
                                       _tl1048910799_
                                       _e1049010802_
                                       _hd1049110805_
                                       _tl1049210807_))
                                  (___match1343413435_
                                   _e1045710714_
                                   _hd1045810717_
                                   _tl1045910719_
                                   _e1046910746_
                                   _hd1047010749_
                                   _tl1047110751_
                                   _e1047210754_
                                   _hd1047310757_
                                   _tl1047410759_
                                   _e1047510762_
                                   _hd1047610765_
                                   _tl1047710767_
                                   _e1047810770_
                                   _hd1047910773_
                                   _tl1048010775_
                                   _e1048110778_
                                   _hd1048210781_
                                   _tl1048310783_
                                   _e1048410786_
                                   _hd1048510789_
                                   _tl1048610791_
                                   _e1048710794_
                                   _hd1048810797_
                                   _tl1048910799_
                                   _e1049010802_
                                   _hd1049110805_
                                   _tl1049210807_))
                              (___match1343413435_
                               _e1045710714_
                               _hd1045810717_
                               _tl1045910719_
                               _e1046910746_
                               _hd1047010749_
                               _tl1047110751_
                               _e1047210754_
                               _hd1047310757_
                               _tl1047410759_
                               _e1047510762_
                               _hd1047610765_
                               _tl1047710767_
                               _e1047810770_
                               _hd1047910773_
                               _tl1048010775_
                               _e1048110778_
                               _hd1048210781_
                               _tl1048310783_
                               _e1048410786_
                               _hd1048510789_
                               _tl1048610791_
                               _e1048710794_
                               _hd1048810797_
                               _tl1048910799_
                               _e1049010802_
                               _hd1049110805_
                               _tl1049210807_))))
                      (___match1343413435_
                       _e1045710714_
                       _hd1045810717_
                       _tl1045910719_
                       _e1046910746_
                       _hd1047010749_
                       _tl1047110751_
                       _e1047210754_
                       _hd1047310757_
                       _tl1047410759_
                       _e1047510762_
                       _hd1047610765_
                       _tl1047710767_
                       _e1047810770_
                       _hd1047910773_
                       _tl1048010775_
                       _e1048110778_
                       _hd1048210781_
                       _tl1048310783_
                       _e1048410786_
                       _hd1048510789_
                       _tl1048610791_
                       _e1048710794_
                       _hd1048810797_
                       _tl1048910799_
                       _e1049010802_
                       _hd1049110805_
                       _tl1049210807_))))
              (let ((_xarg1050110871_ (reverse _xarg1050010844_)))
                (if (gx#stx-null? _tl1047110751_)
                    (let ((_L10874_ _hd1050910834_)
                          (_L10875_ _xarg1050110871_)
                          (_L10876_ _hd1049110805_)
                          (_L10877_ _hd1048210781_)
                          (_L10878_ _tl1046210724_)
                          (_L10879_ _arg1046810743_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1092210925_ _g1092310927_)
                                           (cons _g1092210925_ _g1092310927_))
                                         '()
                                         _L10879_)))
                              (if (gx#identifier? _L10878_)
                                  (if (gxc#runtime-identifier=?
                                       _L10877_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1092910932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1093010934_)
                           (cons _g1092910932_ _g1093010934_))
                         '()
                         _L10879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1093610939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1093710941_)
                           (cons _g1093610939_ _g1093710941_))
                         '()
                         _L10875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1094310946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1094410948_)
                           (cons _g1094310946_ _g1094410948_))
                         '()
                         _L10879_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1095010953_ _g1095110955_)
                           (cons _g1095010953_ _g1095110955_))
                         '()
                         _L10875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L10878_
                                                   _L10874_)
                                                  (not (find (lambda (_g1095710959_)
                                                               (gx#free-identifier=?
                                                                _g1095710959_
                                                                _L10876_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1096110964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1096210966_)
                                 (cons _g1096110964_ _g1096210966_))
                               (cons _L10878_ '())
                               _L10879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1332913330_
                           _L10874_
                           _L10875_
                           _L10876_
                           _L10877_
                           _L10878_
                           _L10879_)
                          (___match1343413435_
                           _e1045710714_
                           _hd1045810717_
                           _tl1045910719_
                           _e1046910746_
                           _hd1047010749_
                           _tl1047110751_
                           _e1047210754_
                           _hd1047310757_
                           _tl1047410759_
                           _e1047510762_
                           _hd1047610765_
                           _tl1047710767_
                           _e1047810770_
                           _hd1047910773_
                           _tl1048010775_
                           _e1048110778_
                           _hd1048210781_
                           _tl1048310783_
                           _e1048410786_
                           _hd1048510789_
                           _tl1048610791_
                           _e1048710794_
                           _hd1048810797_
                           _tl1048910799_
                           _e1049010802_
                           _hd1049110805_
                           _tl1049210807_)))
                    (___match1343413435_
                     _e1045710714_
                     _hd1045810717_
                     _tl1045910719_
                     _e1046910746_
                     _hd1047010749_
                     _tl1047110751_
                     _e1047210754_
                     _hd1047310757_
                     _tl1047410759_
                     _e1047510762_
                     _hd1047610765_
                     _tl1047710767_
                     _e1047810770_
                     _hd1047910773_
                     _tl1048010775_
                     _e1048110778_
                     _hd1048210781_
                     _tl1048310783_
                     _e1048410786_
                     _hd1048510789_
                     _tl1048610791_
                     _e1048710794_
                     _hd1048810797_
                     _tl1048910799_
                     _e1049010802_
                     _hd1049110805_
                     _tl1049210807_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1049610839_
                                         _target1049310810_
                                         '()))
                                      (___match1343413435_
                                       _e1045710714_
                                       _hd1045810717_
                                       _tl1045910719_
                                       _e1046910746_
                                       _hd1047010749_
                                       _tl1047110751_
                                       _e1047210754_
                                       _hd1047310757_
                                       _tl1047410759_
                                       _e1047510762_
                                       _hd1047610765_
                                       _tl1047710767_
                                       _e1047810770_
                                       _hd1047910773_
                                       _tl1048010775_
                                       _e1048110778_
                                       _hd1048210781_
                                       _tl1048310783_
                                       _e1048410786_
                                       _hd1048510789_
                                       _tl1048610791_
                                       _e1048710794_
                                       _hd1048810797_
                                       _tl1048910799_
                                       _e1049010802_
                                       _hd1049110805_
                                       _tl1049210807_))
                                  (___match1343413435_
                                   _e1045710714_
                                   _hd1045810717_
                                   _tl1045910719_
                                   _e1046910746_
                                   _hd1047010749_
                                   _tl1047110751_
                                   _e1047210754_
                                   _hd1047310757_
                                   _tl1047410759_
                                   _e1047510762_
                                   _hd1047610765_
                                   _tl1047710767_
                                   _e1047810770_
                                   _hd1047910773_
                                   _tl1048010775_
                                   _e1048110778_
                                   _hd1048210781_
                                   _tl1048310783_
                                   _e1048410786_
                                   _hd1048510789_
                                   _tl1048610791_
                                   _e1048710794_
                                   _hd1048810797_
                                   _tl1048910799_
                                   _e1049010802_
                                   _hd1049110805_
                                   _tl1049210807_))))
                          (___match1343413435_
                           _e1045710714_
                           _hd1045810717_
                           _tl1045910719_
                           _e1046910746_
                           _hd1047010749_
                           _tl1047110751_
                           _e1047210754_
                           _hd1047310757_
                           _tl1047410759_
                           _e1047510762_
                           _hd1047610765_
                           _tl1047710767_
                           _e1047810770_
                           _hd1047910773_
                           _tl1048010775_
                           _e1048110778_
                           _hd1048210781_
                           _tl1048310783_
                           _e1048410786_
                           _hd1048510789_
                           _tl1048610791_
                           _e1048710794_
                           _hd1048810797_
                           _tl1048910799_
                           _e1049010802_
                           _hd1049110805_
                           _tl1049210807_))
                      (___match1343413435_
                       _e1045710714_
                       _hd1045810717_
                       _tl1045910719_
                       _e1046910746_
                       _hd1047010749_
                       _tl1047110751_
                       _e1047210754_
                       _hd1047310757_
                       _tl1047410759_
                       _e1047510762_
                       _hd1047610765_
                       _tl1047710767_
                       _e1047810770_
                       _hd1047910773_
                       _tl1048010775_
                       _e1048110778_
                       _hd1048210781_
                       _tl1048310783_
                       _e1048410786_
                       _hd1048510789_
                       _tl1048610791_
                       _e1048710794_
                       _hd1048810797_
                       _tl1048910799_
                       _e1049010802_
                       _hd1049110805_
                       _tl1049210807_))
                  (___match1343413435_
                   _e1045710714_
                   _hd1045810717_
                   _tl1045910719_
                   _e1046910746_
                   _hd1047010749_
                   _tl1047110751_
                   _e1047210754_
                   _hd1047310757_
                   _tl1047410759_
                   _e1047510762_
                   _hd1047610765_
                   _tl1047710767_
                   _e1047810770_
                   _hd1047910773_
                   _tl1048010775_
                   _e1048110778_
                   _hd1048210781_
                   _tl1048310783_
                   _e1048410786_
                   _hd1048510789_
                   _tl1048610791_
                   _e1048710794_
                   _hd1048810797_
                   _tl1048910799_
                   _e1049010802_
                   _hd1049110805_
                   _tl1049210807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1343413435_
                                                   _e1045710714_
                                                   _hd1045810717_
                                                   _tl1045910719_
                                                   _e1046910746_
                                                   _hd1047010749_
                                                   _tl1047110751_
                                                   _e1047210754_
                                                   _hd1047310757_
                                                   _tl1047410759_
                                                   _e1047510762_
                                                   _hd1047610765_
                                                   _tl1047710767_
                                                   _e1047810770_
                                                   _hd1047910773_
                                                   _tl1048010775_
                                                   _e1048110778_
                                                   _hd1048210781_
                                                   _tl1048310783_
                                                   _e1048410786_
                                                   _hd1048510789_
                                                   _tl1048610791_
                                                   _e1048710794_
                                                   _hd1048810797_
                                                   _tl1048910799_
                                                   _e1049010802_
                                                   _hd1049110805_
                                                   _tl1049210807_))))
                                          (___match1343413435_
                                           _e1045710714_
                                           _hd1045810717_
                                           _tl1045910719_
                                           _e1046910746_
                                           _hd1047010749_
                                           _tl1047110751_
                                           _e1047210754_
                                           _hd1047310757_
                                           _tl1047410759_
                                           _e1047510762_
                                           _hd1047610765_
                                           _tl1047710767_
                                           _e1047810770_
                                           _hd1047910773_
                                           _tl1048010775_
                                           _e1048110778_
                                           _hd1048210781_
                                           _tl1048310783_
                                           _e1048410786_
                                           _hd1048510789_
                                           _tl1048610791_
                                           _e1048710794_
                                           _hd1048810797_
                                           _tl1048910799_
                                           _e1049010802_
                                           _hd1049110805_
                                           _tl1049210807_))))
                                  (___match1343413435_
                                   _e1045710714_
                                   _hd1045810717_
                                   _tl1045910719_
                                   _e1046910746_
                                   _hd1047010749_
                                   _tl1047110751_
                                   _e1047210754_
                                   _hd1047310757_
                                   _tl1047410759_
                                   _e1047510762_
                                   _hd1047610765_
                                   _tl1047710767_
                                   _e1047810770_
                                   _hd1047910773_
                                   _tl1048010775_
                                   _e1048110778_
                                   _hd1048210781_
                                   _tl1048310783_
                                   _e1048410786_
                                   _hd1048510789_
                                   _tl1048610791_
                                   _e1048710794_
                                   _hd1048810797_
                                   _tl1048910799_
                                   _e1049010802_
                                   _hd1049110805_
                                   _tl1049210807_))
                              (___match1343413435_
                               _e1045710714_
                               _hd1045810717_
                               _tl1045910719_
                               _e1046910746_
                               _hd1047010749_
                               _tl1047110751_
                               _e1047210754_
                               _hd1047310757_
                               _tl1047410759_
                               _e1047510762_
                               _hd1047610765_
                               _tl1047710767_
                               _e1047810770_
                               _hd1047910773_
                               _tl1048010775_
                               _e1048110778_
                               _hd1048210781_
                               _tl1048310783_
                               _e1048410786_
                               _hd1048510789_
                               _tl1048610791_
                               _e1048710794_
                               _hd1048810797_
                               _tl1048910799_
                               _e1049010802_
                               _hd1049110805_
                               _tl1049210807_))
                          (___kont1333713338_))))
                  (___kont1333713338_))
              (___kont1333713338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1333713338_))))
                                          (___kont1333713338_))))
                                  (___kont1333713338_))
                              (___kont1333713338_))))
                      (___kont1333713338_))
                  (___kont1333713338_))
              (___kont1333713338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1333713338_))))
                                      (___kont1333713338_))
                                  (___kont1333713338_))
                              (___kont1333713338_))))
                      (___kont1333713338_))))
              (___kont1333713338_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1046310727_ _target1046010722_ '()))))
                             (___match1335213353_
                              (lambda (_e1040910974_
                                       _hd1041010977_
                                       _tl1041110979_
                                       ___splice1332513326_
                                       _target1041210982_
                                       _tl1041410984_)
                                (letrec ((_loop1041510987_
                                          (lambda (_hd1041310990_
                                                   _arg1041910992_)
                                            (if (gx#stx-pair? _hd1041310990_)
                                                (let ((_e1041610995_
                                                       (gx#stx-e
                                                        _hd1041310990_)))
                                                  (let ((_lp-tl1041811000_
                                                         (##cdr _e1041610995_))
                                                        (_lp-hd1041710998_
                                                         (##car _e1041610995_)))
                                                    (_loop1041510987_
                                                     _lp-tl1041811000_
                                                     (cons _lp-hd1041710998_
                                                           _arg1041910992_))))
                                                (let ((_arg1042011003_
                                                       (reverse _arg1041910992_)))
                                                  (if (gx#stx-pair?
                                                       _tl1041110979_)
                                                      (let ((_e1042111006_
                                                             (gx#stx-e
                                                              _tl1041110979_)))
                                                        (let ((_tl1042311011_
                                                               (##cdr _e1042111006_))
                                                              (_hd1042211009_
                                                               (##car _e1042111006_)))
                                                          (if (gx#stx-pair?
                                                               _hd1042211009_)
                                                              (let ((_e1042411014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1042211009_)))
                        (let ((_tl1042611019_ (##cdr _e1042411014_))
                              (_hd1042511017_ (##car _e1042411014_)))
                          (if (gx#identifier? _hd1042511017_)
                              (if (gx#stx-eq? '%#call _hd1042511017_)
                                  (if (gx#stx-pair? _tl1042611019_)
                                      (let ((_e1042711022_
                                             (gx#stx-e _tl1042611019_)))
                                        (let ((_tl1042911027_
                                               (##cdr _e1042711022_))
                                              (_hd1042811025_
                                               (##car _e1042711022_)))
                                          (if (gx#stx-pair? _hd1042811025_)
                                              (let ((_e1043011030_
                                                     (gx#stx-e
                                                      _hd1042811025_)))
                                                (let ((_tl1043211035_
                                                       (##cdr _e1043011030_))
                                                      (_hd1043111033_
                                                       (##car _e1043011030_)))
                                                  (if (gx#identifier?
                                                       _hd1043111033_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1043111033_)
                                                          (if (gx#stx-pair?
                                                               _tl1043211035_)
                                                              (let ((_e1043311038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1043211035_)))
                        (let ((_tl1043511043_ (##cdr _e1043311038_))
                              (_hd1043411041_ (##car _e1043311038_)))
                          (if (gx#stx-null? _tl1043511043_)
                              (if (gx#stx-pair/null? _tl1042911027_)
                                  (let ((___splice1332713328_
                                         (gx#syntax-split-splice
                                          _tl1042911027_
                                          '0)))
                                    (let ((_tl1043811048_
                                           (##vector-ref
                                            ___splice1332713328_
                                            '1))
                                          (_target1043611046_
                                           (##vector-ref
                                            ___splice1332713328_
                                            '0)))
                                      (if (gx#stx-null? _tl1043811048_)
                                          (letrec ((_loop1043911051_
                                                    (lambda (_hd1043711054_
                                                             _xarg1044311056_)
                                                      (if (gx#stx-pair?
                                                           _hd1043711054_)
                                                          (let ((_e1044011059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1043711054_)))
                    (let ((_lp-tl1044211064_ (##cdr _e1044011059_))
                          (_lp-hd1044111062_ (##car _e1044011059_)))
                      (if (gx#stx-pair? _lp-hd1044111062_)
                          (let ((_e1044511067_ (gx#stx-e _lp-hd1044111062_)))
                            (let ((_tl1044711072_ (##cdr _e1044511067_))
                                  (_hd1044611070_ (##car _e1044511067_)))
                              (if (gx#identifier? _hd1044611070_)
                                  (if (gx#stx-eq? '%#ref _hd1044611070_)
                                      (if (gx#stx-pair? _tl1044711072_)
                                          (let ((_e1044811075_
                                                 (gx#stx-e _tl1044711072_)))
                                            (let ((_tl1045011080_
                                                   (##cdr _e1044811075_))
                                                  (_hd1044911078_
                                                   (##car _e1044811075_)))
                                              (if (gx#stx-null? _tl1045011080_)
                                                  (_loop1043911051_
                                                   _lp-tl1044211064_
                                                   (cons _hd1044911078_
                                                         _xarg1044311056_))
                                                  (___match1336413365_
                                                   _e1040910974_
                                                   _hd1041010977_
                                                   _tl1041110979_
                                                   ___splice1332513326_
                                                   _target1041210982_
                                                   _tl1041410984_))))
                                          (___match1336413365_
                                           _e1040910974_
                                           _hd1041010977_
                                           _tl1041110979_
                                           ___splice1332513326_
                                           _target1041210982_
                                           _tl1041410984_))
                                      (___match1336413365_
                                       _e1040910974_
                                       _hd1041010977_
                                       _tl1041110979_
                                       ___splice1332513326_
                                       _target1041210982_
                                       _tl1041410984_))
                                  (___match1336413365_
                                   _e1040910974_
                                   _hd1041010977_
                                   _tl1041110979_
                                   ___splice1332513326_
                                   _target1041210982_
                                   _tl1041410984_))))
                          (___match1336413365_
                           _e1040910974_
                           _hd1041010977_
                           _tl1041110979_
                           ___splice1332513326_
                           _target1041210982_
                           _tl1041410984_))))
                  (let ((_xarg1044411083_ (reverse _xarg1044311056_)))
                    (if (gx#stx-null? _tl1042311011_)
                        (let ((_L11086_ _xarg1044411083_)
                              (_L11087_ _hd1043411041_)
                              (_L11088_ _arg1042011003_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1111611119_
                                                      _g1111711121_)
                                               (cons _g1111611119_
                                                     _g1111711121_))
                                             '()
                                             _L11088_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1112311126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1112411128_)
                       (cons _g1112311126_ _g1112411128_))
                     '()
                     _L11088_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1113011133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1113111135_)
                       (cons _g1113011133_ _g1113111135_))
                     '()
                     _L11086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1113711140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1113811142_)
                       (cons _g1113711140_ _g1113811142_))
                     '()
                     _L11088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1114411147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1114511149_)
                       (cons _g1114411147_ _g1114511149_))
                     '()
                     _L11086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1115111153_)
                                                       (gx#free-identifier=?
                                                        _g1115111153_
                                                        _L11087_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1115511158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1115611160_)
                         (cons _g1115511158_ _g1115611160_))
                       '()
                       _L11088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1332313324_ _L11086_ _L11087_ _L11088_)
                              (___match1336413365_
                               _e1040910974_
                               _hd1041010977_
                               _tl1041110979_
                               ___splice1332513326_
                               _target1041210982_
                               _tl1041410984_)))
                        (___match1336413365_
                         _e1040910974_
                         _hd1041010977_
                         _tl1041110979_
                         ___splice1332513326_
                         _target1041210982_
                         _tl1041410984_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1043911051_
                                             _target1043611046_
                                             '()))
                                          (___match1336413365_
                                           _e1040910974_
                                           _hd1041010977_
                                           _tl1041110979_
                                           ___splice1332513326_
                                           _target1041210982_
                                           _tl1041410984_))))
                                  (___match1336413365_
                                   _e1040910974_
                                   _hd1041010977_
                                   _tl1041110979_
                                   ___splice1332513326_
                                   _target1041210982_
                                   _tl1041410984_))
                              (___match1336413365_
                               _e1040910974_
                               _hd1041010977_
                               _tl1041110979_
                               ___splice1332513326_
                               _target1041210982_
                               _tl1041410984_))))
                      (___match1336413365_
                       _e1040910974_
                       _hd1041010977_
                       _tl1041110979_
                       ___splice1332513326_
                       _target1041210982_
                       _tl1041410984_))
                  (___match1336413365_
                   _e1040910974_
                   _hd1041010977_
                   _tl1041110979_
                   ___splice1332513326_
                   _target1041210982_
                   _tl1041410984_))
              (___match1336413365_
               _e1040910974_
               _hd1041010977_
               _tl1041110979_
               ___splice1332513326_
               _target1041210982_
               _tl1041410984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1336413365_
                                               _e1040910974_
                                               _hd1041010977_
                                               _tl1041110979_
                                               ___splice1332513326_
                                               _target1041210982_
                                               _tl1041410984_))))
                                      (___match1336413365_
                                       _e1040910974_
                                       _hd1041010977_
                                       _tl1041110979_
                                       ___splice1332513326_
                                       _target1041210982_
                                       _tl1041410984_))
                                  (___match1336413365_
                                   _e1040910974_
                                   _hd1041010977_
                                   _tl1041110979_
                                   ___splice1332513326_
                                   _target1041210982_
                                   _tl1041410984_))
                              (___match1336413365_
                               _e1040910974_
                               _hd1041010977_
                               _tl1041110979_
                               ___splice1332513326_
                               _target1041210982_
                               _tl1041410984_))))
                      (___match1336413365_
                       _e1040910974_
                       _hd1041010977_
                       _tl1041110979_
                       ___splice1332513326_
                       _target1041210982_
                       _tl1041410984_))))
              (___match1336413365_
               _e1040910974_
               _hd1041010977_
               _tl1041110979_
               ___splice1332513326_
               _target1041210982_
               _tl1041410984_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1041510987_ _target1041210982_ '())))))
                        (if (gx#stx-pair? ___stx1332113322_)
                            (let ((_e1040910974_ (gx#stx-e ___stx1332113322_)))
                              (let ((_tl1041110979_ (##cdr _e1040910974_))
                                    (_hd1041010977_ (##car _e1040910974_)))
                                (if (gx#stx-pair/null? _hd1041010977_)
                                    (let ((___splice1332513326_
                                           (gx#syntax-split-splice
                                            _hd1041010977_
                                            '0)))
                                      (let ((_tl1041410984_
                                             (##vector-ref
                                              ___splice1332513326_
                                              '1))
                                            (_target1041210982_
                                             (##vector-ref
                                              ___splice1332513326_
                                              '0)))
                                        (if (gx#stx-null? _tl1041410984_)
                                            (___match1335213353_
                                             _e1040910974_
                                             _hd1041010977_
                                             _tl1041110979_
                                             ___splice1332513326_
                                             _target1041210982_
                                             _tl1041410984_)
                                            (___match1336413365_
                                             _e1040910974_
                                             _hd1041010977_
                                             _tl1041110979_
                                             ___splice1332513326_
                                             _target1041210982_
                                             _tl1041410984_))))
                                    (if (gx#stx-pair? _tl1041110979_)
                                        (let ((_e1052410581_
                                               (gx#stx-e _tl1041110979_)))
                                          (let ((_tl1052610586_
                                                 (##cdr _e1052410581_))
                                                (_hd1052510584_
                                                 (##car _e1052410581_)))
                                            (if (gx#stx-pair? _hd1052510584_)
                                                (let ((_e1052710589_
                                                       (gx#stx-e
                                                        _hd1052510584_)))
                                                  (let ((_tl1052910594_
                                                         (##cdr _e1052710589_))
                                                        (_hd1052810592_
                                                         (##car _e1052710589_)))
                                                    (if (gx#identifier?
                                                         _hd1052810592_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1052810592_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1052910594_)
                        (let ((_e1053010597_ (gx#stx-e _tl1052910594_)))
                          (let ((_tl1053210602_ (##cdr _e1053010597_))
                                (_hd1053110600_ (##car _e1053010597_)))
                            (if (gx#stx-pair? _hd1053110600_)
                                (let ((_e1053310605_
                                       (gx#stx-e _hd1053110600_)))
                                  (let ((_tl1053510610_ (##cdr _e1053310605_))
                                        (_hd1053410608_ (##car _e1053310605_)))
                                    (if (gx#identifier? _hd1053410608_)
                                        (if (gx#stx-eq? '%#ref _hd1053410608_)
                                            (if (gx#stx-pair? _tl1053510610_)
                                                (let ((_e1053610613_
                                                       (gx#stx-e
                                                        _tl1053510610_)))
                                                  (let ((_tl1053810618_
                                                         (##cdr _e1053610613_))
                                                        (_hd1053710616_
                                                         (##car _e1053610613_)))
                                                    (if (gx#stx-null?
                                                         _tl1053810618_)
                                                        (if (gx#stx-pair?
                                                             _tl1053210602_)
                                                            (let ((_e1053910621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1053210602_)))
                      (let ((_tl1054110626_ (##cdr _e1053910621_))
                            (_hd1054010624_ (##car _e1053910621_)))
                        (if (gx#stx-pair? _hd1054010624_)
                            (let ((_e1054210629_ (gx#stx-e _hd1054010624_)))
                              (let ((_tl1054410634_ (##cdr _e1054210629_))
                                    (_hd1054310632_ (##car _e1054210629_)))
                                (if (gx#identifier? _hd1054310632_)
                                    (if (gx#stx-eq? '%#ref _hd1054310632_)
                                        (if (gx#stx-pair? _tl1054410634_)
                                            (let ((_e1054510637_
                                                   (gx#stx-e _tl1054410634_)))
                                              (let ((_tl1054710642_
                                                     (##cdr _e1054510637_))
                                                    (_hd1054610640_
                                                     (##car _e1054510637_)))
                                                (if (gx#stx-null?
                                                     _tl1054710642_)
                                                    (if (gx#stx-pair?
                                                         _tl1054110626_)
                                                        (let ((_e1054810645_
                                                               (gx#stx-e
                                                                _tl1054110626_)))
                                                          (let ((_tl1055010650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1054810645_))
                        (_hd1054910648_ (##car _e1054810645_)))
                    (if (gx#stx-pair? _hd1054910648_)
                        (let ((_e1055110653_ (gx#stx-e _hd1054910648_)))
                          (let ((_tl1055310658_ (##cdr _e1055110653_))
                                (_hd1055210656_ (##car _e1055110653_)))
                            (if (gx#identifier? _hd1055210656_)
                                (if (gx#stx-eq? '%#ref _hd1055210656_)
                                    (if (gx#stx-pair? _tl1055310658_)
                                        (let ((_e1055410661_
                                               (gx#stx-e _tl1055310658_)))
                                          (let ((_tl1055610666_
                                                 (##cdr _e1055410661_))
                                                (_hd1055510664_
                                                 (##car _e1055410661_)))
                                            (if (gx#stx-null? _tl1055610666_)
                                                (if (gx#stx-null?
                                                     _tl1055010650_)
                                                    (if (gx#stx-null?
                                                         _tl1052610586_)
                                                        (___match1346213463_
                                                         _e1040910974_
                                                         _hd1041010977_
                                                         _tl1041110979_
                                                         _e1052410581_
                                                         _hd1052510584_
                                                         _tl1052610586_
                                                         _e1052710589_
                                                         _hd1052810592_
                                                         _tl1052910594_
                                                         _e1053010597_
                                                         _hd1053110600_
                                                         _tl1053210602_
                                                         _e1053310605_
                                                         _hd1053410608_
                                                         _tl1053510610_
                                                         _e1053610613_
                                                         _hd1053710616_
                                                         _tl1053810618_
                                                         _e1053910621_
                                                         _hd1054010624_
                                                         _tl1054110626_
                                                         _e1054210629_
                                                         _hd1054310632_
                                                         _tl1054410634_
                                                         _e1054510637_
                                                         _hd1054610640_
                                                         _tl1054710642_
                                                         _e1054810645_
                                                         _hd1054910648_
                                                         _tl1055010650_
                                                         _e1055110653_
                                                         _hd1055210656_
                                                         _tl1055310658_
                                                         _e1055410661_
                                                         _hd1055510664_
                                                         _tl1055610666_)
                                                        (___kont1333713338_))
                                                    (___kont1333713338_))
                                                (___kont1333713338_))))
                                        (___kont1333713338_))
                                    (___kont1333713338_))
                                (___kont1333713338_))))
                        (___kont1333713338_))))
                (___kont1333713338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1333713338_))))
                                            (___kont1333713338_))
                                        (___kont1333713338_))
                                    (___kont1333713338_))))
                            (___kont1333713338_))))
                    (___kont1333713338_))
                (___kont1333713338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1333713338_))
                                            (___kont1333713338_))
                                        (___kont1333713338_))))
                                (___kont1333713338_))))
                        (___kont1333713338_))
                    (___kont1333713338_))
                (___kont1333713338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1333713338_))))
                                        (___kont1333713338_)))))
                            (___kont1333713338_)))))))
               (_dispatch-case-e9712_
                (lambda (_hd9860_ _body9861_)
                  (let* ((_form9863_ (cons _hd9860_ (cons _body9861_ '())))
                         (___stx1346513466_ _form9863_)
                         (_g98679991_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1346513466_))))
                    (let ((___kont1346713468_
                           (lambda (_L10362_ _L10363_ _L10364_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10363_ '())))))
                          (___kont1347313474_
                           (lambda (_L10210_ _L10211_ _L10212_ _L10213_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10210_ '())))))
                          (___kont1347713478_
                           (lambda (_L10076_ _L10077_ _L10078_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10076_ '()))))))
                      (let* ((___match1357413575_
                              (lambda (_e99579996_
                                       _hd99589999_
                                       _tl995910001_
                                       _e996010004_
                                       _hd996110007_
                                       _tl996210009_
                                       _e996310012_
                                       _hd996410015_
                                       _tl996510017_
                                       _e996610020_
                                       _hd996710023_
                                       _tl996810025_
                                       _e996910028_
                                       _hd997010031_
                                       _tl997110033_
                                       _e997210036_
                                       _hd997310039_
                                       _tl997410041_
                                       _e997510044_
                                       _hd997610047_
                                       _tl997710049_
                                       _e997810052_
                                       _hd997910055_
                                       _tl998010057_
                                       _e998110060_
                                       _hd998210063_
                                       _tl998310065_)
                                (if (gx#stx-pair? _tl997710049_)
                                    (let ((_e998410068_
                                           (gx#stx-e _tl997710049_)))
                                      (let ((_tl998610073_
                                             (##cdr _e998410068_))
                                            (_hd998510071_
                                             (##car _e998410068_)))
                                        (if (gx#stx-null? _tl998610073_)
                                            (if (gx#stx-null? _tl996210009_)
                                                (___kont1347713478_
                                                 _hd998210063_
                                                 _hd997310039_
                                                 _hd99589999_)
                                                (_g98679991_))
                                            (_g98679991_))))
                                    (_g98679991_))))
                             (___match1350413505_
                              (lambda (_e991810114_
                                       _hd991910117_
                                       _tl992010119_
                                       ___splice1347513476_
                                       _target992110122_
                                       _tl992310124_)
                                (letrec ((_loop992410127_
                                          (lambda (_hd992210130_
                                                   _arg992810132_)
                                            (if (gx#stx-pair? _hd992210130_)
                                                (let ((_e992510135_
                                                       (gx#stx-e
                                                        _hd992210130_)))
                                                  (let ((_lp-tl992710140_
                                                         (##cdr _e992510135_))
                                                        (_lp-hd992610138_
                                                         (##car _e992510135_)))
                                                    (_loop992410127_
                                                     _lp-tl992710140_
                                                     (cons _lp-hd992610138_
                                                           _arg992810132_))))
                                                (let ((_arg992910143_
                                                       (reverse _arg992810132_)))
                                                  (if (gx#stx-pair?
                                                       _tl992010119_)
                                                      (let ((_e993010146_
                                                             (gx#stx-e
                                                              _tl992010119_)))
                                                        (let ((_tl993210151_
                                                               (##cdr _e993010146_))
                                                              (_hd993110149_
                                                               (##car _e993010146_)))
                                                          (if (gx#stx-pair?
                                                               _hd993110149_)
                                                              (let ((_e993310154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd993110149_)))
                        (let ((_tl993510159_ (##cdr _e993310154_))
                              (_hd993410157_ (##car _e993310154_)))
                          (if (gx#identifier? _hd993410157_)
                              (if (gx#stx-eq? '%#call _hd993410157_)
                                  (if (gx#stx-pair? _tl993510159_)
                                      (let ((_e993610162_
                                             (gx#stx-e _tl993510159_)))
                                        (let ((_tl993810167_
                                               (##cdr _e993610162_))
                                              (_hd993710165_
                                               (##car _e993610162_)))
                                          (if (gx#stx-pair? _hd993710165_)
                                              (let ((_e993910170_
                                                     (gx#stx-e _hd993710165_)))
                                                (let ((_tl994110175_
                                                       (##cdr _e993910170_))
                                                      (_hd994010173_
                                                       (##car _e993910170_)))
                                                  (if (gx#identifier?
                                                       _hd994010173_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd994010173_)
                                                          (if (gx#stx-pair?
                                                               _tl994110175_)
                                                              (let ((_e994210178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl994110175_)))
                        (let ((_tl994410183_ (##cdr _e994210178_))
                              (_hd994310181_ (##car _e994210178_)))
                          (if (gx#stx-null? _tl994410183_)
                              (if (gx#stx-pair? _tl993810167_)
                                  (let ((_e994510186_
                                         (gx#stx-e _tl993810167_)))
                                    (let ((_tl994710191_ (##cdr _e994510186_))
                                          (_hd994610189_ (##car _e994510186_)))
                                      (if (gx#stx-pair? _hd994610189_)
                                          (let ((_e994810194_
                                                 (gx#stx-e _hd994610189_)))
                                            (let ((_tl995010199_
                                                   (##cdr _e994810194_))
                                                  (_hd994910197_
                                                   (##car _e994810194_)))
                                              (if (gx#identifier?
                                                   _hd994910197_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd994910197_)
                                                      (if (gx#stx-pair?
                                                           _tl995010199_)
                                                          (let ((_e995110202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl995010199_)))
                    (let ((_tl995310207_ (##cdr _e995110202_))
                          (_hd995210205_ (##car _e995110202_)))
                      (if (gx#stx-null? _tl995310207_)
                          (if (gx#stx-null? _tl993210151_)
                              (___kont1347313474_
                               _hd995210205_
                               _hd994310181_
                               _tl992310124_
                               _arg992910143_)
                              (___match1357413575_
                               _e991810114_
                               _hd991910117_
                               _tl992010119_
                               _e993010146_
                               _hd993110149_
                               _tl993210151_
                               _e993310154_
                               _hd993410157_
                               _tl993510159_
                               _e993610162_
                               _hd993710165_
                               _tl993810167_
                               _e993910170_
                               _hd994010173_
                               _tl994110175_
                               _e994210178_
                               _hd994310181_
                               _tl994410183_
                               _e994510186_
                               _hd994610189_
                               _tl994710191_
                               _e994810194_
                               _hd994910197_
                               _tl995010199_
                               _e995110202_
                               _hd995210205_
                               _tl995310207_))
                          (_g98679991_))))
                  (_g98679991_))
              (_g98679991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g98679991_))))
                                          (_g98679991_))))
                                  (_g98679991_))
                              (_g98679991_))))
                      (_g98679991_))
                  (_g98679991_))
              (_g98679991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98679991_))))
                                      (_g98679991_))
                                  (_g98679991_))
                              (_g98679991_))))
                      (_g98679991_))))
              (_g98679991_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop992410127_ _target992110122_ '()))))
                             (___match1349213493_
                              (lambda (_e987210250_
                                       _hd987310253_
                                       _tl987410255_
                                       ___splice1346913470_
                                       _target987510258_
                                       _tl987710260_)
                                (letrec ((_loop987810263_
                                          (lambda (_hd987610266_
                                                   _arg988210268_)
                                            (if (gx#stx-pair? _hd987610266_)
                                                (let ((_e987910271_
                                                       (gx#stx-e
                                                        _hd987610266_)))
                                                  (let ((_lp-tl988110276_
                                                         (##cdr _e987910271_))
                                                        (_lp-hd988010274_
                                                         (##car _e987910271_)))
                                                    (_loop987810263_
                                                     _lp-tl988110276_
                                                     (cons _lp-hd988010274_
                                                           _arg988210268_))))
                                                (let ((_arg988310279_
                                                       (reverse _arg988210268_)))
                                                  (if (gx#stx-pair?
                                                       _tl987410255_)
                                                      (let ((_e988410282_
                                                             (gx#stx-e
                                                              _tl987410255_)))
                                                        (let ((_tl988610287_
                                                               (##cdr _e988410282_))
                                                              (_hd988510285_
                                                               (##car _e988410282_)))
                                                          (if (gx#stx-pair?
                                                               _hd988510285_)
                                                              (let ((_e988710290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd988510285_)))
                        (let ((_tl988910295_ (##cdr _e988710290_))
                              (_hd988810293_ (##car _e988710290_)))
                          (if (gx#identifier? _hd988810293_)
                              (if (gx#stx-eq? '%#call _hd988810293_)
                                  (if (gx#stx-pair? _tl988910295_)
                                      (let ((_e989010298_
                                             (gx#stx-e _tl988910295_)))
                                        (let ((_tl989210303_
                                               (##cdr _e989010298_))
                                              (_hd989110301_
                                               (##car _e989010298_)))
                                          (if (gx#stx-pair? _hd989110301_)
                                              (let ((_e989310306_
                                                     (gx#stx-e _hd989110301_)))
                                                (let ((_tl989510311_
                                                       (##cdr _e989310306_))
                                                      (_hd989410309_
                                                       (##car _e989310306_)))
                                                  (if (gx#identifier?
                                                       _hd989410309_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd989410309_)
                                                          (if (gx#stx-pair?
                                                               _tl989510311_)
                                                              (let ((_e989610314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl989510311_)))
                        (let ((_tl989810319_ (##cdr _e989610314_))
                              (_hd989710317_ (##car _e989610314_)))
                          (if (gx#stx-null? _tl989810319_)
                              (if (gx#stx-pair/null? _tl989210303_)
                                  (let ((___splice1347113472_
                                         (gx#syntax-split-splice
                                          _tl989210303_
                                          '0)))
                                    (let ((_tl990110324_
                                           (##vector-ref
                                            ___splice1347113472_
                                            '1))
                                          (_target989910322_
                                           (##vector-ref
                                            ___splice1347113472_
                                            '0)))
                                      (if (gx#stx-null? _tl990110324_)
                                          (letrec ((_loop990210327_
                                                    (lambda (_hd990010330_
                                                             _xarg990610332_)
                                                      (if (gx#stx-pair?
                                                           _hd990010330_)
                                                          (let ((_e990310335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd990010330_)))
                    (let ((_lp-tl990510340_ (##cdr _e990310335_))
                          (_lp-hd990410338_ (##car _e990310335_)))
                      (if (gx#stx-pair? _lp-hd990410338_)
                          (let ((_e990810343_ (gx#stx-e _lp-hd990410338_)))
                            (let ((_tl991010348_ (##cdr _e990810343_))
                                  (_hd990910346_ (##car _e990810343_)))
                              (if (gx#identifier? _hd990910346_)
                                  (if (gx#stx-eq? '%#ref _hd990910346_)
                                      (if (gx#stx-pair? _tl991010348_)
                                          (let ((_e991110351_
                                                 (gx#stx-e _tl991010348_)))
                                            (let ((_tl991310356_
                                                   (##cdr _e991110351_))
                                                  (_hd991210354_
                                                   (##car _e991110351_)))
                                              (if (gx#stx-null? _tl991310356_)
                                                  (_loop990210327_
                                                   _lp-tl990510340_
                                                   (cons _hd991210354_
                                                         _xarg990610332_))
                                                  (___match1350413505_
                                                   _e987210250_
                                                   _hd987310253_
                                                   _tl987410255_
                                                   ___splice1346913470_
                                                   _target987510258_
                                                   _tl987710260_))))
                                          (___match1350413505_
                                           _e987210250_
                                           _hd987310253_
                                           _tl987410255_
                                           ___splice1346913470_
                                           _target987510258_
                                           _tl987710260_))
                                      (___match1350413505_
                                       _e987210250_
                                       _hd987310253_
                                       _tl987410255_
                                       ___splice1346913470_
                                       _target987510258_
                                       _tl987710260_))
                                  (___match1350413505_
                                   _e987210250_
                                   _hd987310253_
                                   _tl987410255_
                                   ___splice1346913470_
                                   _target987510258_
                                   _tl987710260_))))
                          (___match1350413505_
                           _e987210250_
                           _hd987310253_
                           _tl987410255_
                           ___splice1346913470_
                           _target987510258_
                           _tl987710260_))))
                  (let ((_xarg990710359_ (reverse _xarg990610332_)))
                    (if (gx#stx-null? _tl988610287_)
                        (___kont1346713468_
                         _xarg990710359_
                         _hd989710317_
                         _arg988310279_)
                        (___match1350413505_
                         _e987210250_
                         _hd987310253_
                         _tl987410255_
                         ___splice1346913470_
                         _target987510258_
                         _tl987710260_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop990210327_
                                             _target989910322_
                                             '()))
                                          (___match1350413505_
                                           _e987210250_
                                           _hd987310253_
                                           _tl987410255_
                                           ___splice1346913470_
                                           _target987510258_
                                           _tl987710260_))))
                                  (___match1350413505_
                                   _e987210250_
                                   _hd987310253_
                                   _tl987410255_
                                   ___splice1346913470_
                                   _target987510258_
                                   _tl987710260_))
                              (___match1350413505_
                               _e987210250_
                               _hd987310253_
                               _tl987410255_
                               ___splice1346913470_
                               _target987510258_
                               _tl987710260_))))
                      (___match1350413505_
                       _e987210250_
                       _hd987310253_
                       _tl987410255_
                       ___splice1346913470_
                       _target987510258_
                       _tl987710260_))
                  (___match1350413505_
                   _e987210250_
                   _hd987310253_
                   _tl987410255_
                   ___splice1346913470_
                   _target987510258_
                   _tl987710260_))
              (___match1350413505_
               _e987210250_
               _hd987310253_
               _tl987410255_
               ___splice1346913470_
               _target987510258_
               _tl987710260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1350413505_
                                               _e987210250_
                                               _hd987310253_
                                               _tl987410255_
                                               ___splice1346913470_
                                               _target987510258_
                                               _tl987710260_))))
                                      (___match1350413505_
                                       _e987210250_
                                       _hd987310253_
                                       _tl987410255_
                                       ___splice1346913470_
                                       _target987510258_
                                       _tl987710260_))
                                  (___match1350413505_
                                   _e987210250_
                                   _hd987310253_
                                   _tl987410255_
                                   ___splice1346913470_
                                   _target987510258_
                                   _tl987710260_))
                              (___match1350413505_
                               _e987210250_
                               _hd987310253_
                               _tl987410255_
                               ___splice1346913470_
                               _target987510258_
                               _tl987710260_))))
                      (___match1350413505_
                       _e987210250_
                       _hd987310253_
                       _tl987410255_
                       ___splice1346913470_
                       _target987510258_
                       _tl987710260_))))
              (___match1350413505_
               _e987210250_
               _hd987310253_
               _tl987410255_
               ___splice1346913470_
               _target987510258_
               _tl987710260_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop987810263_ _target987510258_ '())))))
                        (if (gx#stx-pair? ___stx1346513466_)
                            (let ((_e987210250_ (gx#stx-e ___stx1346513466_)))
                              (let ((_tl987410255_ (##cdr _e987210250_))
                                    (_hd987310253_ (##car _e987210250_)))
                                (if (gx#stx-pair/null? _hd987310253_)
                                    (let ((___splice1346913470_
                                           (gx#syntax-split-splice
                                            _hd987310253_
                                            '0)))
                                      (let ((_tl987710260_
                                             (##vector-ref
                                              ___splice1346913470_
                                              '1))
                                            (_target987510258_
                                             (##vector-ref
                                              ___splice1346913470_
                                              '0)))
                                        (if (gx#stx-null? _tl987710260_)
                                            (___match1349213493_
                                             _e987210250_
                                             _hd987310253_
                                             _tl987410255_
                                             ___splice1346913470_
                                             _target987510258_
                                             _tl987710260_)
                                            (___match1350413505_
                                             _e987210250_
                                             _hd987310253_
                                             _tl987410255_
                                             ___splice1346913470_
                                             _target987510258_
                                             _tl987710260_))))
                                    (if (gx#stx-pair? _tl987410255_)
                                        (let ((_e996010004_
                                               (gx#stx-e _tl987410255_)))
                                          (let ((_tl996210009_
                                                 (##cdr _e996010004_))
                                                (_hd996110007_
                                                 (##car _e996010004_)))
                                            (if (gx#stx-pair? _hd996110007_)
                                                (let ((_e996310012_
                                                       (gx#stx-e
                                                        _hd996110007_)))
                                                  (let ((_tl996510017_
                                                         (##cdr _e996310012_))
                                                        (_hd996410015_
                                                         (##car _e996310012_)))
                                                    (if (gx#identifier?
                                                         _hd996410015_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd996410015_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl996510017_)
                        (let ((_e996610020_ (gx#stx-e _tl996510017_)))
                          (let ((_tl996810025_ (##cdr _e996610020_))
                                (_hd996710023_ (##car _e996610020_)))
                            (if (gx#stx-pair? _hd996710023_)
                                (let ((_e996910028_ (gx#stx-e _hd996710023_)))
                                  (let ((_tl997110033_ (##cdr _e996910028_))
                                        (_hd997010031_ (##car _e996910028_)))
                                    (if (gx#identifier? _hd997010031_)
                                        (if (gx#stx-eq? '%#ref _hd997010031_)
                                            (if (gx#stx-pair? _tl997110033_)
                                                (let ((_e997210036_
                                                       (gx#stx-e
                                                        _tl997110033_)))
                                                  (let ((_tl997410041_
                                                         (##cdr _e997210036_))
                                                        (_hd997310039_
                                                         (##car _e997210036_)))
                                                    (if (gx#stx-null?
                                                         _tl997410041_)
                                                        (if (gx#stx-pair?
                                                             _tl996810025_)
                                                            (let ((_e997510044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl996810025_)))
                      (let ((_tl997710049_ (##cdr _e997510044_))
                            (_hd997610047_ (##car _e997510044_)))
                        (if (gx#stx-pair? _hd997610047_)
                            (let ((_e997810052_ (gx#stx-e _hd997610047_)))
                              (let ((_tl998010057_ (##cdr _e997810052_))
                                    (_hd997910055_ (##car _e997810052_)))
                                (if (gx#identifier? _hd997910055_)
                                    (if (gx#stx-eq? '%#ref _hd997910055_)
                                        (if (gx#stx-pair? _tl998010057_)
                                            (let ((_e998110060_
                                                   (gx#stx-e _tl998010057_)))
                                              (let ((_tl998310065_
                                                     (##cdr _e998110060_))
                                                    (_hd998210063_
                                                     (##car _e998110060_)))
                                                (if (gx#stx-null?
                                                     _tl998310065_)
                                                    (if (gx#stx-pair?
                                                         _tl997710049_)
                                                        (let ((_e998410068_
                                                               (gx#stx-e
                                                                _tl997710049_)))
                                                          (let ((_tl998610073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e998410068_))
                        (_hd998510071_ (##car _e998410068_)))
                    (if (gx#stx-null? _tl998610073_)
                        (if (gx#stx-null? _tl996210009_)
                            (___kont1347713478_
                             _hd998210063_
                             _hd997310039_
                             _hd987310253_)
                            (_g98679991_))
                        (_g98679991_))))
                (_g98679991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98679991_))))
                                            (_g98679991_))
                                        (_g98679991_))
                                    (_g98679991_))))
                            (_g98679991_))))
                    (_g98679991_))
                (_g98679991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98679991_))
                                            (_g98679991_))
                                        (_g98679991_))))
                                (_g98679991_))))
                        (_g98679991_))
                    (_g98679991_))
                (_g98679991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98679991_))))
                                        (_g98679991_)))))
                            (_g98679991_)))))))
               (_generate19713_
                (lambda (_args9848_ _arglen9849_ _hd9850_ _body9851_)
                  (let* ((_len9853_ (gx#stx-length _hd9850_))
                         (_condition9855_
                          (if (gx#stx-list? _hd9850_)
                              (cons '##fx=
                                    (cons _arglen9849_ (cons _len9853_ '())))
                              (if (> _len9853_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9849_
                                              (cons _len9853_ '())))
                                  '#t)))
                         (_dispatch9857_
                          (if (_dispatch-case?9711_ _hd9850_ _body9851_)
                              (_dispatch-case-e9712_ _hd9850_ _body9851_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9850_)
                                          (cons (gxc#compile-e _body9851_)
                                                '()))))))
                    (cons _condition9855_
                          (cons (cons 'apply
                                      (cons _dispatch9857_
                                            (cons _args9848_ '())))
                                '()))))))
        (let* ((_g97159743_
                (lambda (_g97169740_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g97169740_)))
               (_g97149845_
                (lambda (_g97169746_)
                  (if (gx#stx-pair? _g97169746_)
                      (let ((_e97199748_ (gx#stx-e _g97169746_)))
                        (let ((_hd97209751_ (##car _e97199748_))
                              (_tl97219753_ (##cdr _e97199748_)))
                          (if (gx#stx-pair/null? _tl97219753_)
                              (let ((_g14277_
                                     (gx#syntax-split-splice _tl97219753_ '0)))
                                (begin
                                  (let ((_g14278_
                                         (if (##values? _g14277_)
                                             (##vector-length _g14277_)
                                             1)))
                                    (if (not (##fx= _g14278_ 2))
                                        (error "Context expects 2 values"
                                               _g14278_)))
                                  (let ((_target97229756_
                                         (##vector-ref _g14277_ 0))
                                        (_tl97249758_
                                         (##vector-ref _g14277_ 1)))
                                    (if (gx#stx-null? _tl97249758_)
                                        (letrec ((_loop97259761_
                                                  (lambda (_hd97239764_
                                                           _body97299766_
                                                           _hd97309768_)
                                                    (if (gx#stx-pair?
                                                         _hd97239764_)
                                                        (let ((_e97269771_
                                                               (gx#stx-e
                                                                _hd97239764_)))
                                                          (let ((_lp-hd97279774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97269771_))
                        (_lp-tl97289776_ (##cdr _e97269771_)))
                    (if (gx#stx-pair? _lp-hd97279774_)
                        (let ((_e97339779_ (gx#stx-e _lp-hd97279774_)))
                          (let ((_hd97349782_ (##car _e97339779_))
                                (_tl97359784_ (##cdr _e97339779_)))
                            (if (gx#stx-pair? _tl97359784_)
                                (let ((_e97369787_ (gx#stx-e _tl97359784_)))
                                  (let ((_hd97379790_ (##car _e97369787_))
                                        (_tl97389792_ (##cdr _e97369787_)))
                                    (if (gx#stx-null? _tl97389792_)
                                        (_loop97259761_
                                         _lp-tl97289776_
                                         (cons _hd97379790_ _body97299766_)
                                         (cons _hd97349782_ _hd97309768_))
                                        (_g97159743_ _g97169746_))))
                                (_g97159743_ _g97169746_))))
                        (_g97159743_ _g97169746_))))
                (let ((_body97319795_ (reverse _body97299766_))
                      (_hd97329797_ (reverse _hd97309768_)))
                  ((lambda (_L9800_ _L9801_)
                     (let ((_args9820_ (gxc#generate-runtime-temporary__0))
                           (_arglen9821_ (gxc#generate-runtime-temporary__0))
                           (_name9822_
                            (let ((_$e9817_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx9709_
                                    '#f)))
                              (if _$e9817_ _$e9817_ ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args9820_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen9821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args9820_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name9822_
                                                               (cons _args9820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g98239826_ _g98249828_)
                                        (_generate19713_
                                         _args9820_
                                         _arglen9821_
                                         _g98239826_
                                         _g98249828_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g98309833_
                                                         _g98319835_)
                                                  (cons _g98309833_
                                                        _g98319835_))
                                                '()
                                                _L9801_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g98379840_
                                                         _g98389842_)
                                                  (cons _g98379840_
                                                        _g98389842_))
                                                '()
                                                _L9800_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body97319795_
                   _hd97329797_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop97259761_
                                           _target97229756_
                                           '()
                                           '()))
                                        (_g97159743_ _g97169746_)))))
                              (_g97159743_ _g97169746_))))
                      (_g97159743_ _g97169746_)))))
          (_g97149845_ _stx9709_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8774_ _compiled-body?8775_)
        (letrec ((_generate-simple8777_
                  (lambda (_hd9696_ _body9697_)
                    (_coalesce-let*8778_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9696_
                      _body9697_
                      _compiled-body?8775_))))
                 (_coalesce-let*8778_
                  (lambda (_code9080_)
                    (let* ((___stx1358713588_ _code9080_)
                           (_g90859220_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1358713588_))))
                      (let ((___kont1358913590_
                             (lambda (_L9655_ _L9656_ _L9657_)
                               (cons 'let
                                     (cons (cons (cons _L9657_
                                                       (cons _L9656_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g96859688_
                                                              _g96869690_)
                                                       (cons _g96859688_
                                                             _g96869690_))
                                                     '()
                                                     _L9655_))))))
                            (___kont1359313594_
                             (lambda (_L9514_ _L9515_ _L9516_ _L9517_ _L9518_)
                               (cons 'let*
                                     (cons (cons (cons _L9518_
                                                       (cons _L9517_ '()))
                                                 (cons (cons _L9516_
                                                             (cons _L9515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g95549557_
                                                              _g95559559_)
                                                       (cons _g95549557_
                                                             _g95559559_))
                                                     '()
                                                     _L9514_))))))
                            (___kont1359713598_
                             (lambda (_L9344_ _L9345_ _L9346_ _L9347_)
                               (cons 'let*
                                     (cons (cons (cons _L9347_
                                                       (cons _L9346_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g93829385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g93839387_)
                     (cons _g93829385_ _g93839387_))
                   '()
                   _L9345_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g93899392_
                                                              _g93909394_)
                                                       (cons _g93899392_
                                                             _g93909394_))
                                                     '()
                                                     _L9344_))))))
                            (___kont1360313604_ (lambda () _code9080_)))
                        (let* ((___match1383213833_
                                (lambda (_e91749232_
                                         _hd91759235_
                                         _tl91769237_
                                         _e91779240_
                                         _hd91789243_
                                         _tl91799245_
                                         _e91809248_
                                         _hd91819251_
                                         _tl91829253_
                                         _e91839256_
                                         _hd91849259_
                                         _tl91859261_
                                         _e91869264_
                                         _hd91879267_
                                         _tl91889269_
                                         _e91899272_
                                         _hd91909275_
                                         _tl91919277_
                                         _e91929280_
                                         _hd91939283_
                                         _tl91949285_
                                         _e91959288_
                                         _hd91969291_
                                         _tl91979293_
                                         ___splice1359913600_
                                         _target91989296_
                                         _tl92009298_)
                                  (letrec ((_loop92019301_
                                            (lambda (_hd91999304_
                                                     _bind92059306_)
                                              (if (gx#stx-pair? _hd91999304_)
                                                  (let ((_e92029309_
                                                         (gx#stx-e
                                                          _hd91999304_)))
                                                    (let ((_lp-tl92049314_
                                                           (##cdr _e92029309_))
                                                          (_lp-hd92039312_
                                                           (##car _e92029309_)))
                                                      (_loop92019301_
                                                       _lp-tl92049314_
                                                       (cons _lp-hd92039312_
                                                             _bind92059306_))))
                                                  (let ((_bind92069317_
                                                         (reverse _bind92059306_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl91979293_)
                                                        (let ((___splice1360113602_
                                                               (gx#syntax-split-splice
                                                                _tl91979293_
                                                                '0)))
                                                          (let ((_tl92099322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1360113602_ '1))
                        (_target92079320_
                         (##vector-ref ___splice1360113602_ '0)))
                    (if (gx#stx-null? _tl92099322_)
                        (letrec ((_loop92109325_
                                  (lambda (_hd92089328_ _body92149330_)
                                    (if (gx#stx-pair? _hd92089328_)
                                        (let ((_e92119333_
                                               (gx#stx-e _hd92089328_)))
                                          (let ((_lp-tl92139338_
                                                 (##cdr _e92119333_))
                                                (_lp-hd92129336_
                                                 (##car _e92119333_)))
                                            (_loop92109325_
                                             _lp-tl92139338_
                                             (cons _lp-hd92129336_
                                                   _body92149330_))))
                                        (let ((_body92159341_
                                               (reverse _body92149330_)))
                                          (if (gx#stx-null? _tl91919277_)
                                              (___kont1359713598_
                                               _body92159341_
                                               _bind92069317_
                                               _hd91879267_
                                               _hd91849259_)
                                              (___kont1360313604_)))))))
                          (_loop92109325_ _target92079320_ '()))
                        (___kont1360313604_))))
                (___kont1360313604_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop92019301_ _target91989296_ '()))))
                               (___match1376413765_
                                (lambda (_e91289402_
                                         _hd91299405_
                                         _tl91309407_
                                         _e91319410_
                                         _hd91329413_
                                         _tl91339415_
                                         _e91349418_
                                         _hd91359421_
                                         _tl91369423_
                                         _e91379426_
                                         _hd91389429_
                                         _tl91399431_
                                         _e91409434_
                                         _hd91419437_
                                         _tl91429439_
                                         _e91439442_
                                         _hd91449445_
                                         _tl91459447_
                                         _e91469450_
                                         _hd91479453_
                                         _tl91489455_
                                         _e91499458_
                                         _hd91509461_
                                         _tl91519463_
                                         _e91529466_
                                         _hd91539469_
                                         _tl91549471_
                                         _e91559474_
                                         _hd91569477_
                                         _tl91579479_
                                         _e91589482_
                                         _hd91599485_
                                         _tl91609487_
                                         ___splice1359513596_
                                         _target91619490_
                                         _tl91639492_)
                                  (letrec ((_loop91649495_
                                            (lambda (_hd91629498_
                                                     _body91689500_)
                                              (if (gx#stx-pair? _hd91629498_)
                                                  (let ((_e91659503_
                                                         (gx#stx-e
                                                          _hd91629498_)))
                                                    (let ((_lp-tl91679508_
                                                           (##cdr _e91659503_))
                                                          (_lp-hd91669506_
                                                           (##car _e91659503_)))
                                                      (_loop91649495_
                                                       _lp-tl91679508_
                                                       (cons _lp-hd91669506_
                                                             _body91689500_))))
                                                  (let ((_body91699511_
                                                         (reverse _body91689500_)))
                                                    (if (gx#stx-null?
                                                         _tl91459447_)
                                                        (___kont1359313594_
                                                         _body91699511_
                                                         _hd91599485_
                                                         _hd91569477_
                                                         _hd91419437_
                                                         _hd91389429_)
                                                        (___kont1360313604_)))))))
                                    (_loop91649495_ _target91619490_ '()))))
                               (___match1367413675_
                                (lambda (_e90909567_
                                         _hd90919570_
                                         _tl90929572_
                                         _e90939575_
                                         _hd90949578_
                                         _tl90959580_
                                         _e90969583_
                                         _hd90979586_
                                         _tl90989588_
                                         _e90999591_
                                         _hd91009594_
                                         _tl91019596_
                                         _e91029599_
                                         _hd91039602_
                                         _tl91049604_
                                         _e91059607_
                                         _hd91069610_
                                         _tl91079612_
                                         _e91089615_
                                         _hd91099618_
                                         _tl91109620_
                                         _e91119623_
                                         _hd91129626_
                                         _tl91139628_
                                         ___splice1359113592_
                                         _target91149631_
                                         _tl91169633_)
                                  (letrec ((_loop91179636_
                                            (lambda (_hd91159639_
                                                     _body91219641_)
                                              (if (gx#stx-pair? _hd91159639_)
                                                  (let ((_e91189644_
                                                         (gx#stx-e
                                                          _hd91159639_)))
                                                    (let ((_lp-tl91209649_
                                                           (##cdr _e91189644_))
                                                          (_lp-hd91199647_
                                                           (##car _e91189644_)))
                                                      (_loop91179636_
                                                       _lp-tl91209649_
                                                       (cons _lp-hd91199647_
                                                             _body91219641_))))
                                                  (let ((_body91229652_
                                                         (reverse _body91219641_)))
                                                    (if (gx#stx-null?
                                                         _tl91079612_)
                                                        (___kont1358913590_
                                                         _body91229652_
                                                         _hd91039602_
                                                         _hd91009594_)
                                                        (___kont1360313604_)))))))
                                    (_loop91179636_ _target91149631_ '())))))
                          (if (gx#stx-pair? ___stx1358713588_)
                              (let ((_e90909567_ (gx#stx-e ___stx1358713588_)))
                                (let ((_tl90929572_ (##cdr _e90909567_))
                                      (_hd90919570_ (##car _e90909567_)))
                                  (if (gx#identifier? _hd90919570_)
                                      (if (gx#stx-eq? 'let _hd90919570_)
                                          (if (gx#stx-pair? _tl90929572_)
                                              (let ((_e90939575_
                                                     (gx#stx-e _tl90929572_)))
                                                (let ((_tl90959580_
                                                       (##cdr _e90939575_))
                                                      (_hd90949578_
                                                       (##car _e90939575_)))
                                                  (if (gx#stx-pair?
                                                       _hd90949578_)
                                                      (let ((_e90969583_
                                                             (gx#stx-e
                                                              _hd90949578_)))
                                                        (let ((_tl90989588_
                                                               (##cdr _e90969583_))
                                                              (_hd90979586_
                                                               (##car _e90969583_)))
                                                          (if (gx#stx-pair?
                                                               _hd90979586_)
                                                              (let ((_e90999591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd90979586_)))
                        (let ((_tl91019596_ (##cdr _e90999591_))
                              (_hd91009594_ (##car _e90999591_)))
                          (if (gx#stx-pair? _tl91019596_)
                              (let ((_e91029599_ (gx#stx-e _tl91019596_)))
                                (let ((_tl91049604_ (##cdr _e91029599_))
                                      (_hd91039602_ (##car _e91029599_)))
                                  (if (gx#stx-null? _tl91049604_)
                                      (if (gx#stx-null? _tl90989588_)
                                          (if (gx#stx-pair? _tl90959580_)
                                              (let ((_e91059607_
                                                     (gx#stx-e _tl90959580_)))
                                                (let ((_tl91079612_
                                                       (##cdr _e91059607_))
                                                      (_hd91069610_
                                                       (##car _e91059607_)))
                                                  (if (gx#stx-pair?
                                                       _hd91069610_)
                                                      (let ((_e91089615_
                                                             (gx#stx-e
                                                              _hd91069610_)))
                                                        (let ((_tl91109620_
                                                               (##cdr _e91089615_))
                                                              (_hd91099618_
                                                               (##car _e91089615_)))
                                                          (if (gx#identifier?
                                                               _hd91099618_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd91099618_)
                          (if (gx#stx-pair? _tl91109620_)
                              (let ((_e91119623_ (gx#stx-e _tl91109620_)))
                                (let ((_tl91139628_ (##cdr _e91119623_))
                                      (_hd91129626_ (##car _e91119623_)))
                                  (if (gx#stx-null? _hd91129626_)
                                      (if (gx#stx-pair/null? _tl91139628_)
                                          (let ((___splice1359113592_
                                                 (gx#syntax-split-splice
                                                  _tl91139628_
                                                  '0)))
                                            (let ((_tl91169633_
                                                   (##vector-ref
                                                    ___splice1359113592_
                                                    '1))
                                                  (_target91149631_
                                                   (##vector-ref
                                                    ___splice1359113592_
                                                    '0)))
                                              (if (gx#stx-null? _tl91169633_)
                                                  (___match1367413675_
                                                   _e90909567_
                                                   _hd90919570_
                                                   _tl90929572_
                                                   _e90939575_
                                                   _hd90949578_
                                                   _tl90959580_
                                                   _e90969583_
                                                   _hd90979586_
                                                   _tl90989588_
                                                   _e90999591_
                                                   _hd91009594_
                                                   _tl91019596_
                                                   _e91029599_
                                                   _hd91039602_
                                                   _tl91049604_
                                                   _e91059607_
                                                   _hd91069610_
                                                   _tl91079612_
                                                   _e91089615_
                                                   _hd91099618_
                                                   _tl91109620_
                                                   _e91119623_
                                                   _hd91129626_
                                                   _tl91139628_
                                                   ___splice1359113592_
                                                   _target91149631_
                                                   _tl91169633_)
                                                  (___kont1360313604_))))
                                          (___kont1360313604_))
                                      (if (gx#stx-pair? _hd91129626_)
                                          (let ((_e91529466_
                                                 (gx#stx-e _hd91129626_)))
                                            (let ((_tl91549471_
                                                   (##cdr _e91529466_))
                                                  (_hd91539469_
                                                   (##car _e91529466_)))
                                              (if (gx#stx-pair? _hd91539469_)
                                                  (let ((_e91559474_
                                                         (gx#stx-e
                                                          _hd91539469_)))
                                                    (let ((_tl91579479_
                                                           (##cdr _e91559474_))
                                                          (_hd91569477_
                                                           (##car _e91559474_)))
                                                      (if (gx#stx-pair?
                                                           _tl91579479_)
                                                          (let ((_e91589482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl91579479_)))
                    (let ((_tl91609487_ (##cdr _e91589482_))
                          (_hd91599485_ (##car _e91589482_)))
                      (if (gx#stx-null? _tl91609487_)
                          (if (gx#stx-null? _tl91549471_)
                              (if (gx#stx-pair/null? _tl91139628_)
                                  (let ((___splice1359513596_
                                         (gx#syntax-split-splice
                                          _tl91139628_
                                          '0)))
                                    (let ((_tl91639492_
                                           (##vector-ref
                                            ___splice1359513596_
                                            '1))
                                          (_target91619490_
                                           (##vector-ref
                                            ___splice1359513596_
                                            '0)))
                                      (if (gx#stx-null? _tl91639492_)
                                          (___match1376413765_
                                           _e90909567_
                                           _hd90919570_
                                           _tl90929572_
                                           _e90939575_
                                           _hd90949578_
                                           _tl90959580_
                                           _e90969583_
                                           _hd90979586_
                                           _tl90989588_
                                           _e90999591_
                                           _hd91009594_
                                           _tl91019596_
                                           _e91029599_
                                           _hd91039602_
                                           _tl91049604_
                                           _e91059607_
                                           _hd91069610_
                                           _tl91079612_
                                           _e91089615_
                                           _hd91099618_
                                           _tl91109620_
                                           _e91119623_
                                           _hd91129626_
                                           _tl91139628_
                                           _e91529466_
                                           _hd91539469_
                                           _tl91549471_
                                           _e91559474_
                                           _hd91569477_
                                           _tl91579479_
                                           _e91589482_
                                           _hd91599485_
                                           _tl91609487_
                                           ___splice1359513596_
                                           _target91619490_
                                           _tl91639492_)
                                          (___kont1360313604_))))
                                  (___kont1360313604_))
                              (___kont1360313604_))
                          (___kont1360313604_))))
                  (___kont1360313604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1360313604_))))
                                          (___kont1360313604_)))))
                              (___kont1360313604_))
                          (if (gx#stx-eq? 'let* _hd91099618_)
                              (if (gx#stx-pair? _tl91109620_)
                                  (let ((_e91959288_ (gx#stx-e _tl91109620_)))
                                    (let ((_tl91979293_ (##cdr _e91959288_))
                                          (_hd91969291_ (##car _e91959288_)))
                                      (if (gx#stx-pair/null? _hd91969291_)
                                          (let ((___splice1359913600_
                                                 (gx#syntax-split-splice
                                                  _hd91969291_
                                                  '0)))
                                            (let ((_tl92009298_
                                                   (##vector-ref
                                                    ___splice1359913600_
                                                    '1))
                                                  (_target91989296_
                                                   (##vector-ref
                                                    ___splice1359913600_
                                                    '0)))
                                              (if (gx#stx-null? _tl92009298_)
                                                  (___match1383213833_
                                                   _e90909567_
                                                   _hd90919570_
                                                   _tl90929572_
                                                   _e90939575_
                                                   _hd90949578_
                                                   _tl90959580_
                                                   _e90969583_
                                                   _hd90979586_
                                                   _tl90989588_
                                                   _e90999591_
                                                   _hd91009594_
                                                   _tl91019596_
                                                   _e91029599_
                                                   _hd91039602_
                                                   _tl91049604_
                                                   _e91059607_
                                                   _hd91069610_
                                                   _tl91079612_
                                                   _e91089615_
                                                   _hd91099618_
                                                   _tl91109620_
                                                   _e91959288_
                                                   _hd91969291_
                                                   _tl91979293_
                                                   ___splice1359913600_
                                                   _target91989296_
                                                   _tl92009298_)
                                                  (___kont1360313604_))))
                                          (___kont1360313604_))))
                                  (___kont1360313604_))
                              (___kont1360313604_)))
                      (___kont1360313604_))))
              (___kont1360313604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1360313604_))
                                          (___kont1360313604_))
                                      (___kont1360313604_))))
                              (___kont1360313604_))))
                      (___kont1360313604_))))
              (___kont1360313604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1360313604_))
                                          (___kont1360313604_))
                                      (___kont1360313604_))))
                              (___kont1360313604_)))))))
                 (_generate-values8779_
                  (lambda (_hd8893_ _body8894_)
                    (let _lp8896_ ((_rest8898_ _hd8893_)
                                   (_bind8899_ '())
                                   (_check8900_ '())
                                   (_post8901_ '()))
                      (let* ((___stx1387913880_ _rest8898_)
                             (_g89048915_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1387913880_))))
                        (let ((___kont1388113882_
                               (lambda (_L8942_ _L8943_)
                                 (let* ((___stx1383513836_ _L8943_)
                                        (_g89588983_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1383513836_))))
                                   (let ((___kont1383713838_
                                          (lambda (_L9056_ _L9057_)
                                            (let ((_eid9071_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9057_))
                                                  (_expr9072_
                                                   (gxc#compile-e _L9056_)))
                                              (_lp8896_
                                               _L8942_
                                               (cons (cons _eid9071_
                                                           (cons _expr9072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8899_)
                                               _check8900_
                                               _post8901_))))
                                         (___kont1383913840_
                                          (lambda (_L9004_ _L9005_)
                                            (let* ((_vals9018_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values9020_
                                                    (gxc#generate-runtime-check-values
                                                     _vals9018_
                                                     _L9005_
                                                     _L9004_))
                                                   (_refs9022_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals9018_
                                                     _L9005_))
                                                   (_expr9024_
                                                    (gxc#compile-e _L9004_)))
                                              (_lp8896_
                                               _L8942_
                                               (cons (cons _vals9018_
                                                           (cons _expr9024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8899_)
                                               (cons _check-values9020_
                                                     _check8900_)
                                               (cons _refs9022_
                                                     _post8901_))))))
                                     (if (gx#stx-pair? ___stx1383513836_)
                                         (let ((_e89629032_
                                                (gx#stx-e ___stx1383513836_)))
                                           (let ((_tl89649037_
                                                  (##cdr _e89629032_))
                                                 (_hd89639035_
                                                  (##car _e89629032_)))
                                             (if (gx#stx-pair? _hd89639035_)
                                                 (let ((_e89659040_
                                                        (gx#stx-e
                                                         _hd89639035_)))
                                                   (let ((_tl89679045_
                                                          (##cdr _e89659040_))
                                                         (_hd89669043_
                                                          (##car _e89659040_)))
                                                     (if (gx#stx-null?
                                                          _tl89679045_)
                                                         (if (gx#stx-pair?
                                                              _tl89649037_)
                                                             (let ((_e89689048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl89649037_)))
                       (let ((_tl89709053_ (##cdr _e89689048_))
                             (_hd89699051_ (##car _e89689048_)))
                         (if (gx#stx-null? _tl89709053_)
                             (___kont1383713838_ _hd89699051_ _hd89669043_)
                             (_g89588983_))))
                     (_g89588983_))
                 (if (gx#stx-pair? _tl89649037_)
                     (let ((_e89768996_ (gx#stx-e _tl89649037_)))
                       (let ((_tl89789001_ (##cdr _e89768996_))
                             (_hd89778999_ (##car _e89768996_)))
                         (if (gx#stx-null? _tl89789001_)
                             (___kont1383913840_ _hd89778999_ _hd89639035_)
                             (_g89588983_))))
                     (_g89588983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl89649037_)
                                                     (let ((_e89768996_
                                                            (gx#stx-e
                                                             _tl89649037_)))
                                                       (let ((_tl89789001_
                                                              (##cdr _e89768996_))
                                                             (_hd89778999_
                                                              (##car _e89768996_)))
                                                         (if (gx#stx-null?
                                                              _tl89789001_)
                                                             (___kont1383913840_
                                                              _hd89778999_
                                                              _hd89639035_)
                                                             (_g89588983_))))
                                                     (_g89588983_)))))
                                         (_g89588983_))))))
                              (___kont1388313884_
                               (lambda ()
                                 (let* ((_body8922_
                                         (if _compiled-body?8775_
                                             _body8894_
                                             (gxc#compile-e _body8894_)))
                                        (_body8924_
                                         (_generate-values-post8780_
                                          _post8901_
                                          _body8922_))
                                        (_body8926_
                                         (_generate-values-check8781_
                                          _check8900_
                                          _body8924_)))
                                   (cons 'let
                                         (cons (reverse _bind8899_)
                                               (cons _body8926_ '())))))))
                          (if (gx#stx-pair? ___stx1387913880_)
                              (let ((_e89088934_ (gx#stx-e ___stx1387913880_)))
                                (let ((_tl89108939_ (##cdr _e89088934_))
                                      (_hd89098937_ (##car _e89088934_)))
                                  (___kont1388113882_
                                   _tl89108939_
                                   _hd89098937_)))
                              (___kont1388313884_)))))))
                 (_generate-values-post8780_
                  (lambda (_post8852_ _body8853_)
                    (let _lp8855_ ((_rest8857_ _post8852_)
                                   (_body8858_ _body8853_))
                      (let* ((_rest88598867_ _rest8857_)
                             (_else88618875_ (lambda () _body8858_))
                             (_K88638881_
                              (lambda (_rest8878_ _bind8879_)
                                (_lp8855_
                                 _rest8878_
                                 (cons 'let
                                       (cons _bind8879_
                                             (cons _body8858_ '())))))))
                        (if (##pair? _rest88598867_)
                            (let ((_hd88648884_ (##car _rest88598867_))
                                  (_tl88658886_ (##cdr _rest88598867_)))
                              (let* ((_bind8889_ _hd88648884_)
                                     (_rest8891_ _tl88658886_))
                                (_K88638881_ _rest8891_ _bind8889_)))
                            (_else88618875_))))))
                 (_generate-values-check8781_
                  (lambda (_check8849_ _body8850_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8850_ '())
                                  (reverse _check8849_))))))
          (let* ((_g87838800_
                  (lambda (_g87848797_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g87848797_)))
                 (_g87828846_
                  (lambda (_g87848803_)
                    (if (gx#stx-pair? _g87848803_)
                        (let ((_e87878805_ (gx#stx-e _g87848803_)))
                          (let ((_hd87888808_ (##car _e87878805_))
                                (_tl87898810_ (##cdr _e87878805_)))
                            (if (gx#stx-pair? _tl87898810_)
                                (let ((_e87908813_ (gx#stx-e _tl87898810_)))
                                  (let ((_hd87918816_ (##car _e87908813_))
                                        (_tl87928818_ (##cdr _e87908813_)))
                                    (if (gx#stx-pair? _tl87928818_)
                                        (let ((_e87938821_
                                               (gx#stx-e _tl87928818_)))
                                          (let ((_hd87948824_
                                                 (##car _e87938821_))
                                                (_tl87958826_
                                                 (##cdr _e87938821_)))
                                            (if (gx#stx-null? _tl87958826_)
                                                ((lambda (_L8829_ _L8830_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8830_)
                                                       (_generate-simple8777_
                                                        _L8830_
                                                        _L8829_)
                                                       (_generate-values8779_
                                                        _L8830_
                                                        _L8829_)))
                                                 _hd87948824_
                                                 _hd87918816_)
                                                (_g87838800_ _g87848803_))))
                                        (_g87838800_ _g87848803_))))
                                (_g87838800_ _g87848803_))))
                        (_g87838800_ _g87848803_)))))
            (_g87828846_ _stx8774_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9702_)
          (let ((_compiled-body?9704_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9702_
             _compiled-body?9704_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g14280_
          (let ((_g14279_ (length _g14280_)))
            (cond ((##fx= _g14279_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g14280_))
                  ((##fx= _g14279_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g14280_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g14280_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8668_ _hd8669_)
      (let _lp8671_ ((_rest8673_ _hd8669_) (_k8674_ '0) (_r8675_ '()))
        (let* ((___stx1389313894_ _rest8673_)
               (_g86808697_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1389313894_))))
          (let ((___kont1389513896_
                 (lambda (_L8760_)
                   (_lp8671_ _L8760_ (fx+ _k8674_ '1) _r8675_)))
                (___kont1389713898_
                 (lambda (_L8733_ _L8734_)
                   (_lp8671_
                    _L8733_
                    (fx+ _k8674_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L8734_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals8668_
                                       _k8674_
                                       _L8733_)
                                      '()))
                          _r8675_))))
                (___kont1389913900_
                 (lambda (_L8709_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L8709_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals8668_
                                              _k8674_)
                                             '()))
                                 '())
                           _r8675_)))
                (___kont1390113902_ (lambda () (reverse _r8675_))))
            (let ((_g86788720_
                   (lambda ()
                     (let ((_L8709_ ___stx1389313894_))
                       (if (gx#identifier? _L8709_)
                           (___kont1389913900_ _L8709_)
                           (___kont1390113902_))))))
              (if (gx#stx-pair? ___stx1389313894_)
                  (let ((_e86838749_ (gx#stx-e ___stx1389313894_)))
                    (let ((_tl86858754_ (##cdr _e86838749_))
                          (_hd86848752_ (##car _e86838749_)))
                      (if (gx#stx-datum? _hd86848752_)
                          (let ((_e86868757_ (gx#stx-e _hd86848752_)))
                            (if (equal? _e86868757_ '#f)
                                (___kont1389513896_ _tl86858754_)
                                (___kont1389713898_
                                 _tl86858754_
                                 _hd86848752_)))
                          (___kont1389713898_ _tl86858754_ _hd86848752_))))
                  (_g86788720_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8350_ _compiled-body?8351_)
        (letrec ((_generate-simple8353_
                  (lambda (_hd8655_ _body8656_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8655_
                     _body8656_
                     _compiled-body?8351_)))
                 (_generate-values8354_
                  (lambda (_hd8434_ _body8435_)
                    (let _lp8437_ ((_rest8439_ _hd8434_)
                                   (_bind8440_ '())
                                   (_check8441_ '())
                                   (_post8442_ '()))
                      (let* ((___stx1396713968_ _rest8439_)
                             (_g84458456_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1396713968_))))
                        (let ((___kont1396913970_
                               (lambda (_L8483_ _L8484_)
                                 (let* ((___stx1392313924_ _L8484_)
                                        (_g84998524_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1392313924_))))
                                   (let ((___kont1392513926_
                                          (lambda (_L8631_ _L8632_)
                                            (let ((_eid8646_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L8632_))
                                                  (_expr8647_
                                                   (gxc#compile-e _L8631_)))
                                              (_lp8437_
                                               _L8483_
                                               (cons (cons _eid8646_
                                                           (cons _expr8647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8440_)
                                               _check8441_
                                               _post8442_))))
                                         (___kont1392713928_
                                          (lambda (_L8545_ _L8546_)
                                            (let* ((_vals8559_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values8561_
                                                    (gxc#generate-runtime-check-values
                                                     _vals8559_
                                                     _L8546_
                                                     _L8545_))
                                                   (_refs8563_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals8559_
                                                     _L8546_))
                                                   (_expr8565_
                                                    (gxc#compile-e _L8545_)))
                                              (_lp8437_
                                               _L8483_
                                               (foldl1 cons
                                                       (cons (cons _vals8559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr8565_ '()))
                     _bind8440_)
               (map (lambda (_e85678569_)
                      (let* ((_g85718580_ _e85678569_)
                             (_E85738584_
                              (lambda ()
                                (error '"No clause matching" _g85718580_)))
                             (_K85748589_
                              (lambda (_eid8587_)
                                (cons _eid8587_ (cons '#!void '())))))
                        (if (##pair? _g85718580_)
                            (let ((_hd85758592_ (##car _g85718580_))
                                  (_tl85768594_ (##cdr _g85718580_)))
                              (let ((_eid8597_ _hd85758592_))
                                (if (##pair? _tl85768594_)
                                    (let ((_tl85788599_ (##cdr _tl85768594_)))
                                      (if (##null? _tl85788599_)
                                          (_K85748589_ _eid8597_)
                                          (_E85738584_)))
                                    (_E85738584_))))
                            (_E85738584_))))
                    _refs8563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values8561_
                                                     _check8441_)
                                               (foldl1 cons
                                                       _refs8563_
                                                       _post8442_))))))
                                     (if (gx#stx-pair? ___stx1392313924_)
                                         (let ((_e85038607_
                                                (gx#stx-e ___stx1392313924_)))
                                           (let ((_tl85058612_
                                                  (##cdr _e85038607_))
                                                 (_hd85048610_
                                                  (##car _e85038607_)))
                                             (if (gx#stx-pair? _hd85048610_)
                                                 (let ((_e85068615_
                                                        (gx#stx-e
                                                         _hd85048610_)))
                                                   (let ((_tl85088620_
                                                          (##cdr _e85068615_))
                                                         (_hd85078618_
                                                          (##car _e85068615_)))
                                                     (if (gx#stx-null?
                                                          _tl85088620_)
                                                         (if (gx#stx-pair?
                                                              _tl85058612_)
                                                             (let ((_e85098623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl85058612_)))
                       (let ((_tl85118628_ (##cdr _e85098623_))
                             (_hd85108626_ (##car _e85098623_)))
                         (if (gx#stx-null? _tl85118628_)
                             (___kont1392513926_ _hd85108626_ _hd85078618_)
                             (_g84998524_))))
                     (_g84998524_))
                 (if (gx#stx-pair? _tl85058612_)
                     (let ((_e85178537_ (gx#stx-e _tl85058612_)))
                       (let ((_tl85198542_ (##cdr _e85178537_))
                             (_hd85188540_ (##car _e85178537_)))
                         (if (gx#stx-null? _tl85198542_)
                             (___kont1392713928_ _hd85188540_ _hd85048610_)
                             (_g84998524_))))
                     (_g84998524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl85058612_)
                                                     (let ((_e85178537_
                                                            (gx#stx-e
                                                             _tl85058612_)))
                                                       (let ((_tl85198542_
                                                              (##cdr _e85178537_))
                                                             (_hd85188540_
                                                              (##car _e85178537_)))
                                                         (if (gx#stx-null?
                                                              _tl85198542_)
                                                             (___kont1392713928_
                                                              _hd85188540_
                                                              _hd85048610_)
                                                             (_g84998524_))))
                                                     (_g84998524_)))))
                                         (_g84998524_))))))
                              (___kont1397113972_
                               (lambda ()
                                 (let* ((_body8463_
                                         (if _compiled-body?8351_
                                             _body8435_
                                             (gxc#compile-e _body8435_)))
                                        (_body8465_
                                         (_generate-values-post8356_
                                          _post8442_
                                          _body8463_))
                                        (_body8467_
                                         (_generate-values-check8355_
                                          _check8441_
                                          _body8465_)))
                                   (cons 'letrec
                                         (cons (reverse _bind8440_)
                                               (cons _body8467_ '())))))))
                          (if (gx#stx-pair? ___stx1396713968_)
                              (let ((_e84498475_ (gx#stx-e ___stx1396713968_)))
                                (let ((_tl84518480_ (##cdr _e84498475_))
                                      (_hd84508478_ (##car _e84498475_)))
                                  (___kont1396913970_
                                   _tl84518480_
                                   _hd84508478_)))
                              (___kont1397113972_)))))))
                 (_generate-values-check8355_
                  (lambda (_check8431_ _body8432_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8432_ '())
                                  (reverse _check8431_)))))
                 (_generate-values-post8356_
                  (lambda (_post8424_ _body8425_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8425_ '())
                                  (map (lambda (_g84268428_)
                                         (cons 'set! _g84268428_))
                                       (reverse _post8424_)))))))
          (let* ((_g83588375_
                  (lambda (_g83598372_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g83598372_)))
                 (_g83578421_
                  (lambda (_g83598378_)
                    (if (gx#stx-pair? _g83598378_)
                        (let ((_e83628380_ (gx#stx-e _g83598378_)))
                          (let ((_hd83638383_ (##car _e83628380_))
                                (_tl83648385_ (##cdr _e83628380_)))
                            (if (gx#stx-pair? _tl83648385_)
                                (let ((_e83658388_ (gx#stx-e _tl83648385_)))
                                  (let ((_hd83668391_ (##car _e83658388_))
                                        (_tl83678393_ (##cdr _e83658388_)))
                                    (if (gx#stx-pair? _tl83678393_)
                                        (let ((_e83688396_
                                               (gx#stx-e _tl83678393_)))
                                          (let ((_hd83698399_
                                                 (##car _e83688396_))
                                                (_tl83708401_
                                                 (##cdr _e83688396_)))
                                            (if (gx#stx-null? _tl83708401_)
                                                ((lambda (_L8404_ _L8405_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8405_)
                                                       (_generate-simple8353_
                                                        _L8405_
                                                        _L8404_)
                                                       (_generate-values8354_
                                                        _L8405_
                                                        _L8404_)))
                                                 _hd83698399_
                                                 _hd83668391_)
                                                (_g83588375_ _g83598378_))))
                                        (_g83588375_ _g83598378_))))
                                (_g83588375_ _g83598378_))))
                        (_g83588375_ _g83598378_)))))
            (_g83578421_ _stx8350_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8661_)
          (let ((_compiled-body?8663_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8661_
             _compiled-body?8663_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g14282_
          (let ((_g14281_ (length _g14282_)))
            (cond ((##fx= _g14281_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g14282_))
                  ((##fx= _g14281_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g14282_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g14282_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7932_)
      (letrec ((_generate-values7934_
                (lambda (_hd8177_ _body8178_)
                  (let _lp8180_ ((_rest8182_ _hd8177_) (_bind8183_ '()))
                    (let* ((_rest81848192_ _rest8182_)
                           (_else81868203_
                            (lambda ()
                              (let ((_bind8200_ (reverse _bind8183_))
                                    (_body8201_ (gxc#compile-e _body8178_)))
                                (cons 'letrec*
                                      (cons _bind8200_
                                            (cons _body8201_ '()))))))
                           (_K81888337_
                            (lambda (_rest8206_ _hd-bind8207_)
                              (let* ((___stx1398113982_ _hd-bind8207_)
                                     (_g82108235_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1398113982_))))
                                (let ((___kont1398313984_
                                       (lambda (_L8316_ _L8317_)
                                         (let ((_eid8331_
                                                (gxc#generate-runtime-binding-id*
                                                 _L8317_))
                                               (_expr8332_
                                                (gxc#compile-e _L8316_)))
                                           (_lp8180_
                                            _rest8206_
                                            (cons (cons _eid8331_
                                                        (cons _expr8332_ '()))
                                                  _bind8183_)))))
                                      (___kont1398513986_
                                       (lambda (_L8256_ _L8257_)
                                         (let* ((_vals8276_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp8278_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values8280_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp8278_
                                                  _L8257_
                                                  _L8256_))
                                                (_refs8282_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals8276_
                                                  _L8257_))
                                                (_expr8284_
                                                 (gxc#compile-e _L8256_)))
                                           (_lp8180_
                                            _rest8206_
                                            (foldl1 cons
                                                    (cons (cons _vals8276_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp8278_
                                                      (cons _expr8284_ '()))
                                                '())
                                          (cons _check-values8280_
                                                (cons _tmp8278_ '()))))
                              '()))
                  _bind8183_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8282_))))))
                                  (if (gx#stx-pair? ___stx1398113982_)
                                      (let ((_e82148292_
                                             (gx#stx-e ___stx1398113982_)))
                                        (let ((_tl82168297_
                                               (##cdr _e82148292_))
                                              (_hd82158295_
                                               (##car _e82148292_)))
                                          (if (gx#stx-pair? _hd82158295_)
                                              (let ((_e82178300_
                                                     (gx#stx-e _hd82158295_)))
                                                (let ((_tl82198305_
                                                       (##cdr _e82178300_))
                                                      (_hd82188303_
                                                       (##car _e82178300_)))
                                                  (if (gx#stx-null?
                                                       _tl82198305_)
                                                      (if (gx#stx-pair?
                                                           _tl82168297_)
                                                          (let ((_e82208308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl82168297_)))
                    (let ((_tl82228313_ (##cdr _e82208308_))
                          (_hd82218311_ (##car _e82208308_)))
                      (if (gx#stx-null? _tl82228313_)
                          (___kont1398313984_ _hd82218311_ _hd82188303_)
                          (_g82108235_))))
                  (_g82108235_))
              (if (gx#stx-pair? _tl82168297_)
                  (let ((_e82288248_ (gx#stx-e _tl82168297_)))
                    (let ((_tl82308253_ (##cdr _e82288248_))
                          (_hd82298251_ (##car _e82288248_)))
                      (if (gx#stx-null? _tl82308253_)
                          (___kont1398513986_ _hd82298251_ _hd82158295_)
                          (_g82108235_))))
                  (_g82108235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl82168297_)
                                                  (let ((_e82288248_
                                                         (gx#stx-e
                                                          _tl82168297_)))
                                                    (let ((_tl82308253_
                                                           (##cdr _e82288248_))
                                                          (_hd82298251_
                                                           (##car _e82288248_)))
                                                      (if (gx#stx-null?
                                                           _tl82308253_)
                                                          (___kont1398513986_
                                                           _hd82298251_
                                                           _hd82158295_)
                                                          (_g82108235_))))
                                                  (_g82108235_)))))
                                      (_g82108235_)))))))
                      (if (##pair? _rest81848192_)
                          (let ((_hd81898340_ (##car _rest81848192_))
                                (_tl81908342_ (##cdr _rest81848192_)))
                            (let* ((_hd-bind8345_ _hd81898340_)
                                   (_rest8347_ _tl81908342_))
                              (_K81888337_ _rest8347_ _hd-bind8345_)))
                          (_else81868203_))))))
               (_generate-letrec?7935_
                (lambda (_hd8067_)
                  (let _lp8069_ ((_rest8071_ _hd8067_))
                    (let* ((_rest80728080_ _rest8071_)
                           (_else80748088_ (lambda () '#t))
                           (_K80768165_
                            (lambda (_rest8091_ _hd-bind8092_)
                              (let* ((_g80948111_
                                      (lambda (_g80958108_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g80958108_)))
                                     (_g80938162_
                                      (lambda (_g80958114_)
                                        (if (gx#stx-pair? _g80958114_)
                                            (let ((_e80988116_
                                                   (gx#stx-e _g80958114_)))
                                              (let ((_hd80998119_
                                                     (##car _e80988116_))
                                                    (_tl81008121_
                                                     (##cdr _e80988116_)))
                                                (if (gx#stx-pair? _hd80998119_)
                                                    (let ((_e81018124_
                                                           (gx#stx-e
                                                            _hd80998119_)))
                                                      (let ((_hd81028127_
                                                             (##car _e81018124_))
                                                            (_tl81038129_
                                                             (##cdr _e81018124_)))
                                                        (if (gx#stx-null?
                                                             _tl81038129_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81008121_)
                        (let ((_e81048132_ (gx#stx-e _tl81008121_)))
                          (let ((_hd81058135_ (##car _e81048132_))
                                (_tl81068137_ (##cdr _e81048132_)))
                            (if (gx#stx-null? _tl81068137_)
                                ((lambda (_L8140_ _L8141_)
                                   (if (_is-lambda-expr?7936_ _L8140_)
                                       (_lp8069_ _rest8091_)
                                       '#f))
                                 _hd81058135_
                                 _hd81028127_)
                                (_g80948111_ _g80958114_))))
                        (_g80948111_ _g80958114_))
                    (_g80948111_ _g80958114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80948111_
                                                     _g80958114_))))
                                            (_g80948111_ _g80958114_)))))
                                (_g80938162_ _hd-bind8092_)))))
                      (if (##pair? _rest80728080_)
                          (let ((_hd80778168_ (##car _rest80728080_))
                                (_tl80788170_ (##cdr _rest80728080_)))
                            (let* ((_hd-bind8173_ _hd80778168_)
                                   (_rest8175_ _tl80788170_))
                              (_K80768165_ _rest8175_ _hd-bind8173_)))
                          (_else80748088_))))))
               (_is-lambda-expr?7936_
                (lambda (_expr8004_)
                  (let* ((___stx1402514026_ _expr8004_)
                         (_g80078021_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1402514026_))))
                    (let ((___kont1402714028_ (lambda (_L8049_ _L8050_) '#t))
                          (___kont1402914030_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1402514026_)
                          (let ((_e80118033_ (gx#stx-e ___stx1402514026_)))
                            (let ((_tl80138038_ (##cdr _e80118033_))
                                  (_hd80128036_ (##car _e80118033_)))
                              (if (gx#identifier? _hd80128036_)
                                  (if (gx#stx-eq? '%#lambda _hd80128036_)
                                      (if (gx#stx-pair? _tl80138038_)
                                          (let ((_e80148041_
                                                 (gx#stx-e _tl80138038_)))
                                            (let ((_tl80168046_
                                                   (##cdr _e80148041_))
                                                  (_hd80158044_
                                                   (##car _e80148041_)))
                                              (___kont1402714028_
                                               _tl80168046_
                                               _hd80158044_)))
                                          (___kont1402914030_))
                                      (___kont1402914030_))
                                  (___kont1402914030_))))
                          (___kont1402914030_)))))))
        (let* ((_g79387955_
                (lambda (_g79397952_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g79397952_)))
               (_g79378001_
                (lambda (_g79397958_)
                  (if (gx#stx-pair? _g79397958_)
                      (let ((_e79427960_ (gx#stx-e _g79397958_)))
                        (let ((_hd79437963_ (##car _e79427960_))
                              (_tl79447965_ (##cdr _e79427960_)))
                          (if (gx#stx-pair? _tl79447965_)
                              (let ((_e79457968_ (gx#stx-e _tl79447965_)))
                                (let ((_hd79467971_ (##car _e79457968_))
                                      (_tl79477973_ (##cdr _e79457968_)))
                                  (if (gx#stx-pair? _tl79477973_)
                                      (let ((_e79487976_
                                             (gx#stx-e _tl79477973_)))
                                        (let ((_hd79497979_
                                               (##car _e79487976_))
                                              (_tl79507981_
                                               (##cdr _e79487976_)))
                                          (if (gx#stx-null? _tl79507981_)
                                              ((lambda (_L7984_ _L7985_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7985_)
                                                     (if (_generate-letrec?7935_
                                                          _L7985_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7985_
                                                          _L7984_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7985_
                                                          _L7984_
                                                          '#f))
                                                     (_generate-values7934_
                                                      _L7985_
                                                      _L7984_)))
                                               _hd79497979_
                                               _hd79467971_)
                                              (_g79387955_ _g79397958_))))
                                      (_g79387955_ _g79397958_))))
                              (_g79387955_ _g79397958_))))
                      (_g79387955_ _g79397958_)))))
          (_g79378001_ _stx7932_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7825_)
      (let _lp7827_ ((_rest7829_ _hd7825_))
        (let* ((___stx1404914050_ _rest7829_)
               (_g78337854_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1404914050_))))
          (let ((___kont1405114052_
                 (lambda (_L7905_ _L7906_ _L7907_) (_lp7827_ _L7905_)))
                (___kont1405314054_ (lambda () '#t))
                (___kont1405514056_ (lambda () '#f)))
            (let ((_g78317868_
                   (lambda ()
                     (if (gx#stx-null? ___stx1404914050_)
                         (___kont1405314054_)
                         (___kont1405514056_)))))
              (if (gx#stx-pair? ___stx1404914050_)
                  (let ((_e78387873_ (gx#stx-e ___stx1404914050_)))
                    (let ((_tl78407878_ (##cdr _e78387873_))
                          (_hd78397876_ (##car _e78387873_)))
                      (if (gx#stx-pair? _hd78397876_)
                          (let ((_e78417881_ (gx#stx-e _hd78397876_)))
                            (let ((_tl78437886_ (##cdr _e78417881_))
                                  (_hd78427884_ (##car _e78417881_)))
                              (if (gx#stx-pair? _hd78427884_)
                                  (let ((_e78447889_ (gx#stx-e _hd78427884_)))
                                    (let ((_tl78467894_ (##cdr _e78447889_))
                                          (_hd78457892_ (##car _e78447889_)))
                                      (if (gx#stx-null? _tl78467894_)
                                          (if (gx#stx-pair? _tl78437886_)
                                              (let ((_e78477897_
                                                     (gx#stx-e _tl78437886_)))
                                                (let ((_tl78497902_
                                                       (##cdr _e78477897_))
                                                      (_hd78487900_
                                                       (##car _e78477897_)))
                                                  (if (gx#stx-null?
                                                       _tl78497902_)
                                                      (___kont1405114052_
                                                       _tl78407878_
                                                       _hd78487900_
                                                       _hd78457892_)
                                                      (___kont1405514056_))))
                                              (___kont1405514056_))
                                          (___kont1405514056_))))
                                  (___kont1405514056_))))
                          (___kont1405514056_))))
                  (_g78317868_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7749_ _hd7750_ _body7751_ _compiled-body?7752_)
      (letrec ((_generate17754_
                (lambda (_bind7756_)
                  (let* ((_g77587775_
                          (lambda (_g77597772_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g77597772_)))
                         (_g77577822_
                          (lambda (_g77597778_)
                            (if (gx#stx-pair? _g77597778_)
                                (let ((_e77627780_ (gx#stx-e _g77597778_)))
                                  (let ((_hd77637783_ (##car _e77627780_))
                                        (_tl77647785_ (##cdr _e77627780_)))
                                    (if (gx#stx-pair? _hd77637783_)
                                        (let ((_e77657788_
                                               (gx#stx-e _hd77637783_)))
                                          (let ((_hd77667791_
                                                 (##car _e77657788_))
                                                (_tl77677793_
                                                 (##cdr _e77657788_)))
                                            (if (gx#stx-null? _tl77677793_)
                                                (if (gx#stx-pair? _tl77647785_)
                                                    (let ((_e77687796_
                                                           (gx#stx-e
                                                            _tl77647785_)))
                                                      (let ((_hd77697799_
                                                             (##car _e77687796_))
                                                            (_tl77707801_
                                                             (##cdr _e77687796_)))
                                                        (if (gx#stx-null?
                                                             _tl77707801_)
                                                            ((lambda (_L7804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7805_)
                       (cons (gxc#generate-runtime-binding-id* _L7805_)
                             (cons (gxc#compile-e _L7804_) '())))
                     _hd77697799_
                     _hd77667791_)
                    (_g77587775_ _g77597778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77587775_ _g77597778_))
                                                (_g77587775_ _g77597778_))))
                                        (_g77587775_ _g77597778_))))
                                (_g77587775_ _g77597778_)))))
                    (_g77577822_ _bind7756_)))))
        (cons _form7749_
              (cons (map _generate17754_ _hd7750_)
                    (cons (if _compiled-body?7752_
                              _body7751_
                              (gxc#compile-e _body7751_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7657_)
      (letrec ((_generate17659_
                (lambda (_datum7711_)
                  (if (let ((_$e7713_ (null? _datum7711_)))
                        (if _$e7713_
                            _$e7713_
                            (let ((_$e7716_ (interned-symbol? _datum7711_)))
                              (if _$e7716_
                                  _$e7716_
                                  (let ((_$e7719_
                                         (gx#self-quoting? _datum7711_)))
                                    (if _$e7719_
                                        _$e7719_
                                        (eof-object? _datum7711_)))))))
                      _datum7711_
                      (if (uninterned-symbol? _datum7711_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7711_
                           '#t)
                          (if (pair? _datum7711_)
                              (cons (_generate17659_ (car _datum7711_))
                                    (_generate17659_ (cdr _datum7711_)))
                              (if (box? _datum7711_)
                                  (box (_generate17659_ (unbox _datum7711_)))
                                  (if (vector? _datum7711_)
                                      (vector-map _generate17659_ _datum7711_)
                                      (if (let ((_$e7722_
                                                 (s8vector? _datum7711_)))
                                            (if _$e7722_
                                                _$e7722_
                                                (let ((_$e7725_
                                                       (u8vector?
                                                        _datum7711_)))
                                                  (if _$e7725_
                                                      _$e7725_
                                                      (let ((_$e7728_
                                                             (s16vector?
                                                              _datum7711_)))
                                                        (if _$e7728_
                                                            _$e7728_
                                                            (let ((_$e7731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7711_)))
                      (if _$e7731_
                          _$e7731_
                          (let ((_$e7734_ (s32vector? _datum7711_)))
                            (if _$e7734_
                                _$e7734_
                                (let ((_$e7737_ (u32vector? _datum7711_)))
                                  (if _$e7737_
                                      _$e7737_
                                      (let ((_$e7740_
                                             (s64vector? _datum7711_)))
                                        (if _$e7740_
                                            _$e7740_
                                            (let ((_$e7743_
                                                   (u64vector? _datum7711_)))
                                              (if _$e7743_
                                                  _$e7743_
                                                  (let ((_$e7746_
                                                         (f32vector?
                                                          _datum7711_)))
                                                    (if _$e7746_
                                                        _$e7746_
                                                        (f64vector?
                                                         _datum7711_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7711_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7657_))))))))))
        (let* ((_g76617674_
                (lambda (_g76627671_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76627671_)))
               (_g76607708_
                (lambda (_g76627677_)
                  (if (gx#stx-pair? _g76627677_)
                      (let ((_e76647679_ (gx#stx-e _g76627677_)))
                        (let ((_hd76657682_ (##car _e76647679_))
                              (_tl76667684_ (##cdr _e76647679_)))
                          (if (gx#stx-pair? _tl76667684_)
                              (let ((_e76677687_ (gx#stx-e _tl76667684_)))
                                (let ((_hd76687690_ (##car _e76677687_))
                                      (_tl76697692_ (##cdr _e76677687_)))
                                  (if (gx#stx-null? _tl76697692_)
                                      ((lambda (_L7695_)
                                         (cons 'quote
                                               (cons (_generate17659_
                                                      (gx#stx-e _L7695_))
                                                     '())))
                                       _hd76687690_)
                                      (_g76617674_ _g76627677_))))
                              (_g76617674_ _g76627677_))))
                      (_g76617674_ _g76627677_)))))
          (_g76607708_ _stx7657_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7350_)
      (let* ((_g73527366_
              (lambda (_g73537363_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g73537363_)))
             (_g73517654_
              (lambda (_g73537369_)
                (if (gx#stx-pair? _g73537369_)
                    (let ((_e73567371_ (gx#stx-e _g73537369_)))
                      (let ((_hd73577374_ (##car _e73567371_))
                            (_tl73587376_ (##cdr _e73567371_)))
                        (if (gx#stx-pair? _tl73587376_)
                            (let ((_e73597379_ (gx#stx-e _tl73587376_)))
                              (let ((_hd73607382_ (##car _e73597379_))
                                    (_tl73617384_ (##cdr _e73597379_)))
                                ((lambda (_L7387_ _L7388_)
                                   (let ((_rator7401_ (gxc#compile-e _L7388_))
                                         (_rands7402_
                                          (map gxc#compile-e _L7387_)))
                                     (let* ((___stx1408914090_ _rator7401_)
                                            (_g74057457_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1408914090_))))
                                       (let ((___kont1409114092_
                                              (lambda (_L7581_
                                                       _L7582_
                                                       _L7583_
                                                       _L7584_)
                                                (if (fx= (length _rands7402_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g76207623_ _g76217625_)
                                     (cons _g76207623_ _g76217625_))
                                   '()
                                   _L7583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id7628_ _L7584_)
                                                           (_args7637_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g76297632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g76307634_)
                                (cons _g76297632_ _g76307634_))
                              '()
                              _L7583_)))
                   (_body7646_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g76387641_ _g76397643_)
                                (cons _g76387641_ _g76397643_))
                              '()
                              _L7582_)))
                   (_init7648_ (map list _args7637_ _rands7402_)))
              (cons 'let (cons _id7628_ (cons _init7648_ _body7646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx7350_))))
                                             (___kont1409714098_
                                              (lambda ()
                                                (cons _rator7401_
                                                      _rands7402_))))
                                         (let ((___match1415614157_
                                                (lambda (_e74117469_
                                                         _hd74127472_
                                                         _tl74137474_
                                                         _e74147477_
                                                         _hd74157480_
                                                         _tl74167482_
                                                         _e74177485_
                                                         _hd74187488_
                                                         _tl74197490_
                                                         _e74207493_
                                                         _hd74217496_
                                                         _tl74227498_
                                                         _e74237501_
                                                         _hd74247504_
                                                         _tl74257506_
                                                         _e74267509_
                                                         _hd74277512_
                                                         _tl74287514_
                                                         _e74297517_
                                                         _hd74307520_
                                                         _tl74317522_
                                                         ___splice1409314094_
                                                         _target74327525_
                                                         _tl74347527_)
                                                  (letrec ((_loop74357530_
                                                            (lambda (_hd74337533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg74397535_)
                      (if (gx#stx-pair? _hd74337533_)
                          (let ((_e74367538_ (gx#stx-e _hd74337533_)))
                            (let ((_lp-tl74387543_ (##cdr _e74367538_))
                                  (_lp-hd74377541_ (##car _e74367538_)))
                              (_loop74357530_
                               _lp-tl74387543_
                               (cons _lp-hd74377541_ _arg74397535_))))
                          (let ((_arg74407546_ (reverse _arg74397535_)))
                            (if (gx#stx-pair/null? _tl74317522_)
                                (let ((___splice1409514096_
                                       (gx#syntax-split-splice
                                        _tl74317522_
                                        '0)))
                                  (let ((_tl74437551_
                                         (##vector-ref
                                          ___splice1409514096_
                                          '1))
                                        (_target74417549_
                                         (##vector-ref
                                          ___splice1409514096_
                                          '0)))
                                    (if (gx#stx-null? _tl74437551_)
                                        (letrec ((_loop74447554_
                                                  (lambda (_hd74427557_
                                                           _body74487559_)
                                                    (if (gx#stx-pair?
                                                         _hd74427557_)
                                                        (let ((_e74457562_
                                                               (gx#stx-e
                                                                _hd74427557_)))
                                                          (let ((_lp-tl74477567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e74457562_))
                        (_lp-hd74467565_ (##car _e74457562_)))
                    (_loop74447554_
                     _lp-tl74477567_
                     (cons _lp-hd74467565_ _body74487559_))))
                (let ((_body74497570_ (reverse _body74487559_)))
                  (if (gx#stx-null? _tl74257506_)
                      (if (gx#stx-null? _tl74197490_)
                          (if (gx#stx-pair? _tl74167482_)
                              (let ((_e74507573_ (gx#stx-e _tl74167482_)))
                                (let ((_tl74527578_ (##cdr _e74507573_))
                                      (_hd74517576_ (##car _e74507573_)))
                                  (if (gx#stx-null? _tl74527578_)
                                      (let ((_L7581_ _hd74517576_)
                                            (_L7582_ _body74497570_)
                                            (_L7583_ _arg74407546_)
                                            (_L7584_ _hd74217496_))
                                        (if (eq? _L7584_ _L7581_)
                                            (___kont1409114092_
                                             _L7581_
                                             _L7582_
                                             _L7583_
                                             _L7584_)
                                            (___kont1409714098_)))
                                      (___kont1409714098_))))
                              (___kont1409714098_))
                          (___kont1409714098_))
                      (___kont1409714098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop74447554_
                                           _target74417549_
                                           '()))
                                        (___kont1409714098_))))
                                (___kont1409714098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop74357530_
                                                     _target74327525_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1408914090_)
                                               (let ((_e74117469_
                                                      (gx#stx-e
                                                       ___stx1408914090_)))
                                                 (let ((_tl74137474_
                                                        (##cdr _e74117469_))
                                                       (_hd74127472_
                                                        (##car _e74117469_)))
                                                   (if (gx#identifier?
                                                        _hd74127472_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd74127472_)
                                                           (if (gx#stx-pair?
                                                                _tl74137474_)
                                                               (let ((_e74147477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl74137474_)))
                         (let ((_tl74167482_ (##cdr _e74147477_))
                               (_hd74157480_ (##car _e74147477_)))
                           (if (gx#stx-pair? _hd74157480_)
                               (let ((_e74177485_ (gx#stx-e _hd74157480_)))
                                 (let ((_tl74197490_ (##cdr _e74177485_))
                                       (_hd74187488_ (##car _e74177485_)))
                                   (if (gx#stx-pair? _hd74187488_)
                                       (let ((_e74207493_
                                              (gx#stx-e _hd74187488_)))
                                         (let ((_tl74227498_
                                                (##cdr _e74207493_))
                                               (_hd74217496_
                                                (##car _e74207493_)))
                                           (if (gx#stx-pair? _tl74227498_)
                                               (let ((_e74237501_
                                                      (gx#stx-e _tl74227498_)))
                                                 (let ((_tl74257506_
                                                        (##cdr _e74237501_))
                                                       (_hd74247504_
                                                        (##car _e74237501_)))
                                                   (if (gx#stx-pair?
                                                        _hd74247504_)
                                                       (let ((_e74267509_
                                                              (gx#stx-e
                                                               _hd74247504_)))
                                                         (let ((_tl74287514_
                                                                (##cdr _e74267509_))
                                                               (_hd74277512_
                                                                (##car _e74267509_)))
                                                           (if (gx#identifier?
                                                                _hd74277512_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd74277512_)
                           (if (gx#stx-pair? _tl74287514_)
                               (let ((_e74297517_ (gx#stx-e _tl74287514_)))
                                 (let ((_tl74317522_ (##cdr _e74297517_))
                                       (_hd74307520_ (##car _e74297517_)))
                                   (if (gx#stx-pair/null? _hd74307520_)
                                       (let ((___splice1409314094_
                                              (gx#syntax-split-splice
                                               _hd74307520_
                                               '0)))
                                         (let ((_tl74347527_
                                                (##vector-ref
                                                 ___splice1409314094_
                                                 '1))
                                               (_target74327525_
                                                (##vector-ref
                                                 ___splice1409314094_
                                                 '0)))
                                           (if (gx#stx-null? _tl74347527_)
                                               (___match1415614157_
                                                _e74117469_
                                                _hd74127472_
                                                _tl74137474_
                                                _e74147477_
                                                _hd74157480_
                                                _tl74167482_
                                                _e74177485_
                                                _hd74187488_
                                                _tl74197490_
                                                _e74207493_
                                                _hd74217496_
                                                _tl74227498_
                                                _e74237501_
                                                _hd74247504_
                                                _tl74257506_
                                                _e74267509_
                                                _hd74277512_
                                                _tl74287514_
                                                _e74297517_
                                                _hd74307520_
                                                _tl74317522_
                                                ___splice1409314094_
                                                _target74327525_
                                                _tl74347527_)
                                               (___kont1409714098_))))
                                       (___kont1409714098_))))
                               (___kont1409714098_))
                           (___kont1409714098_))
                       (___kont1409714098_))))
               (___kont1409714098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1409714098_))))
                                       (___kont1409714098_))))
                               (___kont1409714098_))))
                       (___kont1409714098_))
                   (___kont1409714098_))
               (___kont1409714098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1409714098_)))))))
                                 _tl73617384_
                                 _hd73607382_)))
                            (_g73527366_ _g73537369_))))
                    (_g73527366_ _g73537369_)))))
        (_g73517654_ _stx7350_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7267_)
      (let* ((_g72697290_
              (lambda (_g72707287_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72707287_)))
             (_g72687347_
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
                                      (let ((_hd72817314_ (##car _e72807311_))
                                            (_tl72827316_ (##cdr _e72807311_)))
                                        (if (gx#stx-pair? _tl72827316_)
                                            (let ((_e72837319_
                                                   (gx#stx-e _tl72827316_)))
                                              (let ((_hd72847322_
                                                     (##car _e72837319_))
                                                    (_tl72857324_
                                                     (##cdr _e72837319_)))
                                                (if (gx#stx-null? _tl72857324_)
                                                    ((lambda (_L7327_
                                                              _L7328_
                                                              _L7329_)
                                                       (cons 'if
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7329_)
                           (cons (gxc#compile-e _L7328_)
                                 (cons (gxc#compile-e _L7327_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd72847322_
                                                     _hd72817314_
                                                     _hd72787306_)
                                                    (_g72697290_
                                                     _g72707293_))))
                                            (_g72697290_ _g72707293_))))
                                    (_g72697290_ _g72707293_))))
                            (_g72697290_ _g72707293_))))
                    (_g72697290_ _g72707293_)))))
        (_g72687347_ _stx7267_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7216_)
      (let* ((_g72187231_
              (lambda (_g72197228_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72197228_)))
             (_g72177264_
              (lambda (_g72197234_)
                (if (gx#stx-pair? _g72197234_)
                    (let ((_e72217236_ (gx#stx-e _g72197234_)))
                      (let ((_hd72227239_ (##car _e72217236_))
                            (_tl72237241_ (##cdr _e72217236_)))
                        (if (gx#stx-pair? _tl72237241_)
                            (let ((_e72247244_ (gx#stx-e _tl72237241_)))
                              (let ((_hd72257247_ (##car _e72247244_))
                                    (_tl72267249_ (##cdr _e72247244_)))
                                (if (gx#stx-null? _tl72267249_)
                                    ((lambda (_L7252_)
                                       (gxc#generate-runtime-binding-id
                                        _L7252_))
                                     _hd72257247_)
                                    (_g72187231_ _g72197234_))))
                            (_g72187231_ _g72197234_))))
                    (_g72187231_ _g72197234_)))))
        (_g72177264_ _stx7216_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7149_)
      (let* ((_g71517168_
              (lambda (_g71527165_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71527165_)))
             (_g71507213_
              (lambda (_g71527171_)
                (if (gx#stx-pair? _g71527171_)
                    (let ((_e71557173_ (gx#stx-e _g71527171_)))
                      (let ((_hd71567176_ (##car _e71557173_))
                            (_tl71577178_ (##cdr _e71557173_)))
                        (if (gx#stx-pair? _tl71577178_)
                            (let ((_e71587181_ (gx#stx-e _tl71577178_)))
                              (let ((_hd71597184_ (##car _e71587181_))
                                    (_tl71607186_ (##cdr _e71587181_)))
                                (if (gx#stx-pair? _tl71607186_)
                                    (let ((_e71617189_
                                           (gx#stx-e _tl71607186_)))
                                      (let ((_hd71627192_ (##car _e71617189_))
                                            (_tl71637194_ (##cdr _e71617189_)))
                                        (if (gx#stx-null? _tl71637194_)
                                            ((lambda (_L7197_ _L7198_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7198_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7197_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71627192_
                                             _hd71597184_)
                                            (_g71517168_ _g71527171_))))
                                    (_g71517168_ _g71527171_))))
                            (_g71517168_ _g71527171_))))
                    (_g71517168_ _g71527171_)))))
        (_g71507213_ _stx7149_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7082_)
      (let* ((_g70847101_
              (lambda (_g70857098_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70857098_)))
             (_g70837146_
              (lambda (_g70857104_)
                (if (gx#stx-pair? _g70857104_)
                    (let ((_e70887106_ (gx#stx-e _g70857104_)))
                      (let ((_hd70897109_ (##car _e70887106_))
                            (_tl70907111_ (##cdr _e70887106_)))
                        (if (gx#stx-pair? _tl70907111_)
                            (let ((_e70917114_ (gx#stx-e _tl70907111_)))
                              (let ((_hd70927117_ (##car _e70917114_))
                                    (_tl70937119_ (##cdr _e70917114_)))
                                (if (gx#stx-pair? _tl70937119_)
                                    (let ((_e70947122_
                                           (gx#stx-e _tl70937119_)))
                                      (let ((_hd70957125_ (##car _e70947122_))
                                            (_tl70967127_ (##cdr _e70947122_)))
                                        (if (gx#stx-null? _tl70967127_)
                                            ((lambda (_L7130_ _L7131_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7130_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7131_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70957125_
                                             _hd70927117_)
                                            (_g70847101_ _g70857104_))))
                                    (_g70847101_ _g70857104_))))
                            (_g70847101_ _g70857104_))))
                    (_g70847101_ _g70857104_)))))
        (_g70837146_ _stx7082_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx7015_)
      (let* ((_g70177034_
              (lambda (_g70187031_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70187031_)))
             (_g70167079_
              (lambda (_g70187037_)
                (if (gx#stx-pair? _g70187037_)
                    (let ((_e70217039_ (gx#stx-e _g70187037_)))
                      (let ((_hd70227042_ (##car _e70217039_))
                            (_tl70237044_ (##cdr _e70217039_)))
                        (if (gx#stx-pair? _tl70237044_)
                            (let ((_e70247047_ (gx#stx-e _tl70237044_)))
                              (let ((_hd70257050_ (##car _e70247047_))
                                    (_tl70267052_ (##cdr _e70247047_)))
                                (if (gx#stx-pair? _tl70267052_)
                                    (let ((_e70277055_
                                           (gx#stx-e _tl70267052_)))
                                      (let ((_hd70287058_ (##car _e70277055_))
                                            (_tl70297060_ (##cdr _e70277055_)))
                                        (if (gx#stx-null? _tl70297060_)
                                            ((lambda (_L7063_ _L7064_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7063_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7064_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70287058_
                                             _hd70257050_)
                                            (_g70177034_ _g70187037_))))
                                    (_g70177034_ _g70187037_))))
                            (_g70177034_ _g70187037_))))
                    (_g70177034_ _g70187037_)))))
        (_g70167079_ _stx7015_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6932_)
      (let* ((_g69346955_
              (lambda (_g69356952_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69356952_)))
             (_g69337012_
              (lambda (_g69356958_)
                (if (gx#stx-pair? _g69356958_)
                    (let ((_e69396960_ (gx#stx-e _g69356958_)))
                      (let ((_hd69406963_ (##car _e69396960_))
                            (_tl69416965_ (##cdr _e69396960_)))
                        (if (gx#stx-pair? _tl69416965_)
                            (let ((_e69426968_ (gx#stx-e _tl69416965_)))
                              (let ((_hd69436971_ (##car _e69426968_))
                                    (_tl69446973_ (##cdr _e69426968_)))
                                (if (gx#stx-pair? _tl69446973_)
                                    (let ((_e69456976_
                                           (gx#stx-e _tl69446973_)))
                                      (let ((_hd69466979_ (##car _e69456976_))
                                            (_tl69476981_ (##cdr _e69456976_)))
                                        (if (gx#stx-pair? _tl69476981_)
                                            (let ((_e69486984_
                                                   (gx#stx-e _tl69476981_)))
                                              (let ((_hd69496987_
                                                     (##car _e69486984_))
                                                    (_tl69506989_
                                                     (##cdr _e69486984_)))
                                                (if (gx#stx-null? _tl69506989_)
                                                    ((lambda (_L6992_
                                                              _L6993_
                                                              _L6994_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6992_)
                           (cons (gxc#compile-e _L6993_)
                                 (cons (gxc#compile-e _L6994_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd69496987_
                                                     _hd69466979_
                                                     _hd69436971_)
                                                    (_g69346955_
                                                     _g69356958_))))
                                            (_g69346955_ _g69356958_))))
                                    (_g69346955_ _g69356958_))))
                            (_g69346955_ _g69356958_))))
                    (_g69346955_ _g69356958_)))))
        (_g69337012_ _stx6932_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6833_)
      (let* ((_g68356860_
              (lambda (_g68366857_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68366857_)))
             (_g68346929_
              (lambda (_g68366863_)
                (if (gx#stx-pair? _g68366863_)
                    (let ((_e68416865_ (gx#stx-e _g68366863_)))
                      (let ((_hd68426868_ (##car _e68416865_))
                            (_tl68436870_ (##cdr _e68416865_)))
                        (if (gx#stx-pair? _tl68436870_)
                            (let ((_e68446873_ (gx#stx-e _tl68436870_)))
                              (let ((_hd68456876_ (##car _e68446873_))
                                    (_tl68466878_ (##cdr _e68446873_)))
                                (if (gx#stx-pair? _tl68466878_)
                                    (let ((_e68476881_
                                           (gx#stx-e _tl68466878_)))
                                      (let ((_hd68486884_ (##car _e68476881_))
                                            (_tl68496886_ (##cdr _e68476881_)))
                                        (if (gx#stx-pair? _tl68496886_)
                                            (let ((_e68506889_
                                                   (gx#stx-e _tl68496886_)))
                                              (let ((_hd68516892_
                                                     (##car _e68506889_))
                                                    (_tl68526894_
                                                     (##cdr _e68506889_)))
                                                (if (gx#stx-pair? _tl68526894_)
                                                    (let ((_e68536897_
                                                           (gx#stx-e
                                                            _tl68526894_)))
                                                      (let ((_hd68546900_
                                                             (##car _e68536897_))
                                                            (_tl68556902_
                                                             (##cdr _e68536897_)))
                                                        (if (gx#stx-null?
                                                             _tl68556902_)
                                                            ((lambda (_L6905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6906_
                              _L6907_
                              _L6908_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6906_)
                                   (cons (gxc#compile-e _L6905_)
                                         (cons (gxc#compile-e _L6907_)
                                               (cons (gxc#compile-e _L6908_)
                                                     (cons ''#f '())))))))
                     _hd68546900_
                     _hd68516892_
                     _hd68486884_
                     _hd68456876_)
                    (_g68356860_ _g68366863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g68356860_
                                                     _g68366863_))))
                                            (_g68356860_ _g68366863_))))
                                    (_g68356860_ _g68366863_))))
                            (_g68356860_ _g68366863_))))
                    (_g68356860_ _g68366863_)))))
        (_g68346929_ _stx6833_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6750_)
      (let* ((_g67526773_
              (lambda (_g67536770_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67536770_)))
             (_g67516830_
              (lambda (_g67536776_)
                (if (gx#stx-pair? _g67536776_)
                    (let ((_e67576778_ (gx#stx-e _g67536776_)))
                      (let ((_hd67586781_ (##car _e67576778_))
                            (_tl67596783_ (##cdr _e67576778_)))
                        (if (gx#stx-pair? _tl67596783_)
                            (let ((_e67606786_ (gx#stx-e _tl67596783_)))
                              (let ((_hd67616789_ (##car _e67606786_))
                                    (_tl67626791_ (##cdr _e67606786_)))
                                (if (gx#stx-pair? _tl67626791_)
                                    (let ((_e67636794_
                                           (gx#stx-e _tl67626791_)))
                                      (let ((_hd67646797_ (##car _e67636794_))
                                            (_tl67656799_ (##cdr _e67636794_)))
                                        (if (gx#stx-pair? _tl67656799_)
                                            (let ((_e67666802_
                                                   (gx#stx-e _tl67656799_)))
                                              (let ((_hd67676805_
                                                     (##car _e67666802_))
                                                    (_tl67686807_
                                                     (##cdr _e67666802_)))
                                                (if (gx#stx-null? _tl67686807_)
                                                    ((lambda (_L6810_
                                                              _L6811_
                                                              _L6812_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6810_)
                           (cons (gxc#compile-e _L6811_)
                                 (cons (gxc#compile-e _L6812_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67676805_
                                                     _hd67646797_
                                                     _hd67616789_)
                                                    (_g67526773_
                                                     _g67536776_))))
                                            (_g67526773_ _g67536776_))))
                                    (_g67526773_ _g67536776_))))
                            (_g67526773_ _g67536776_))))
                    (_g67526773_ _g67536776_)))))
        (_g67516830_ _stx6750_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6651_)
      (let* ((_g66536678_
              (lambda (_g66546675_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66546675_)))
             (_g66526747_
              (lambda (_g66546681_)
                (if (gx#stx-pair? _g66546681_)
                    (let ((_e66596683_ (gx#stx-e _g66546681_)))
                      (let ((_hd66606686_ (##car _e66596683_))
                            (_tl66616688_ (##cdr _e66596683_)))
                        (if (gx#stx-pair? _tl66616688_)
                            (let ((_e66626691_ (gx#stx-e _tl66616688_)))
                              (let ((_hd66636694_ (##car _e66626691_))
                                    (_tl66646696_ (##cdr _e66626691_)))
                                (if (gx#stx-pair? _tl66646696_)
                                    (let ((_e66656699_
                                           (gx#stx-e _tl66646696_)))
                                      (let ((_hd66666702_ (##car _e66656699_))
                                            (_tl66676704_ (##cdr _e66656699_)))
                                        (if (gx#stx-pair? _tl66676704_)
                                            (let ((_e66686707_
                                                   (gx#stx-e _tl66676704_)))
                                              (let ((_hd66696710_
                                                     (##car _e66686707_))
                                                    (_tl66706712_
                                                     (##cdr _e66686707_)))
                                                (if (gx#stx-pair? _tl66706712_)
                                                    (let ((_e66716715_
                                                           (gx#stx-e
                                                            _tl66706712_)))
                                                      (let ((_hd66726718_
                                                             (##car _e66716715_))
                                                            (_tl66736720_
                                                             (##cdr _e66716715_)))
                                                        (if (gx#stx-null?
                                                             _tl66736720_)
                                                            ((lambda (_L6723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6724_
                              _L6725_
                              _L6726_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6724_)
                                   (cons (gxc#compile-e _L6723_)
                                         (cons (gxc#compile-e _L6725_)
                                               (cons (gxc#compile-e _L6726_)
                                                     (cons ''#f '())))))))
                     _hd66726718_
                     _hd66696710_
                     _hd66666702_
                     _hd66636694_)
                    (_g66536678_ _g66546681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66536678_
                                                     _g66546681_))))
                                            (_g66536678_ _g66546681_))))
                                    (_g66536678_ _g66546681_))))
                            (_g66536678_ _g66546681_))))
                    (_g66536678_ _g66546681_)))))
        (_g66526747_ _stx6651_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6568_)
      (let* ((_g65706591_
              (lambda (_g65716588_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65716588_)))
             (_g65696648_
              (lambda (_g65716594_)
                (if (gx#stx-pair? _g65716594_)
                    (let ((_e65756596_ (gx#stx-e _g65716594_)))
                      (let ((_hd65766599_ (##car _e65756596_))
                            (_tl65776601_ (##cdr _e65756596_)))
                        (if (gx#stx-pair? _tl65776601_)
                            (let ((_e65786604_ (gx#stx-e _tl65776601_)))
                              (let ((_hd65796607_ (##car _e65786604_))
                                    (_tl65806609_ (##cdr _e65786604_)))
                                (if (gx#stx-pair? _tl65806609_)
                                    (let ((_e65816612_
                                           (gx#stx-e _tl65806609_)))
                                      (let ((_hd65826615_ (##car _e65816612_))
                                            (_tl65836617_ (##cdr _e65816612_)))
                                        (if (gx#stx-pair? _tl65836617_)
                                            (let ((_e65846620_
                                                   (gx#stx-e _tl65836617_)))
                                              (let ((_hd65856623_
                                                     (##car _e65846620_))
                                                    (_tl65866625_
                                                     (##cdr _e65846620_)))
                                                (if (gx#stx-null? _tl65866625_)
                                                    ((lambda (_L6628_
                                                              _L6629_
                                                              _L6630_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6628_)
                           (cons (gxc#compile-e _L6629_)
                                 (cons (gxc#compile-e _L6630_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65856623_
                                                     _hd65826615_
                                                     _hd65796607_)
                                                    (_g65706591_
                                                     _g65716594_))))
                                            (_g65706591_ _g65716594_))))
                                    (_g65706591_ _g65716594_))))
                            (_g65706591_ _g65716594_))))
                    (_g65706591_ _g65716594_)))))
        (_g65696648_ _stx6568_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6469_)
      (let* ((_g64716496_
              (lambda (_g64726493_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64726493_)))
             (_g64706565_
              (lambda (_g64726499_)
                (if (gx#stx-pair? _g64726499_)
                    (let ((_e64776501_ (gx#stx-e _g64726499_)))
                      (let ((_hd64786504_ (##car _e64776501_))
                            (_tl64796506_ (##cdr _e64776501_)))
                        (if (gx#stx-pair? _tl64796506_)
                            (let ((_e64806509_ (gx#stx-e _tl64796506_)))
                              (let ((_hd64816512_ (##car _e64806509_))
                                    (_tl64826514_ (##cdr _e64806509_)))
                                (if (gx#stx-pair? _tl64826514_)
                                    (let ((_e64836517_
                                           (gx#stx-e _tl64826514_)))
                                      (let ((_hd64846520_ (##car _e64836517_))
                                            (_tl64856522_ (##cdr _e64836517_)))
                                        (if (gx#stx-pair? _tl64856522_)
                                            (let ((_e64866525_
                                                   (gx#stx-e _tl64856522_)))
                                              (let ((_hd64876528_
                                                     (##car _e64866525_))
                                                    (_tl64886530_
                                                     (##cdr _e64866525_)))
                                                (if (gx#stx-pair? _tl64886530_)
                                                    (let ((_e64896533_
                                                           (gx#stx-e
                                                            _tl64886530_)))
                                                      (let ((_hd64906536_
                                                             (##car _e64896533_))
                                                            (_tl64916538_
                                                             (##cdr _e64896533_)))
                                                        (if (gx#stx-null?
                                                             _tl64916538_)
                                                            ((lambda (_L6541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6542_
                              _L6543_
                              _L6544_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6542_)
                                   (cons (gxc#compile-e _L6541_)
                                         (cons (gxc#compile-e _L6543_)
                                               (cons (gxc#compile-e _L6544_)
                                                     (cons ''#f '())))))))
                     _hd64906536_
                     _hd64876528_
                     _hd64846520_
                     _hd64816512_)
                    (_g64716496_ _g64726499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64716496_
                                                     _g64726499_))))
                                            (_g64716496_ _g64726499_))))
                                    (_g64716496_ _g64726499_))))
                            (_g64716496_ _g64726499_))))
                    (_g64716496_ _g64726499_)))))
        (_g64706565_ _stx6469_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6323_)
      (letrec ((_import-set-template6325_
                (lambda (_in6421_ _phi6422_)
                  (let ((_iphi6424_
                         (fx+ _phi6422_
                              (##direct-structure-ref
                               _in6421_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6425_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6421_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6427_ ((_rest6429_ _imports6425_) (_r6430_ '()))
                      (let* ((_rest64316439_ _rest6429_)
                             (_else64336447_ (lambda () _r6430_))
                             (_K64356457_
                              (lambda (_rest6450_ _in6451_)
                                (if (##structure-instance-of?
                                     _in6451_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6424_)
                                        (_lp6427_
                                         _rest6450_
                                         (cons _in6451_ _r6430_))
                                        (_lp6427_ _rest6450_ _r6430_))
                                    (if (##structure-direct-instance-of?
                                         _in6451_
                                         'gx#module-import::t)
                                        (let ((_iphi6453_
                                               (fx+ _phi6422_
                                                    (##direct-structure-ref
                                                     _in6451_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6453_)
                                              (_lp6427_
                                               _rest6450_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6451_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6430_))
                                              (_lp6427_ _rest6450_ _r6430_)))
                                        (if (##structure-direct-instance-of?
                                             _in6451_
                                             'gx#import-set::t)
                                            (let ((_xphi6455_
                                                   (fx+ _iphi6424_
                                                        (##direct-structure-ref
                                                         _in6451_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6455_)
                                                  (_lp6427_
                                                   _rest6450_
                                                   (cons (##direct-structure-ref
                                                          _in6451_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6430_))
                                                  (if (fxpositive? _xphi6455_)
                                                      (_lp6427_
                                                       _rest6450_
                                                       (foldl1 cons
                                                               _r6430_
                                                               (_import-set-template6325_
                                                                _in6451_
                                                                _iphi6424_)))
                                                      (_lp6427_
                                                       _rest6450_
                                                       _r6430_))))
                                            (_lp6427_ _rest6450_ _r6430_)))))))
                        (if (##pair? _rest64316439_)
                            (let ((_hd64366460_ (##car _rest64316439_))
                                  (_tl64376462_ (##cdr _rest64316439_)))
                              (let* ((_in6465_ _hd64366460_)
                                     (_rest6467_ _tl64376462_))
                                (_K64356457_ _rest6467_ _in6465_)))
                            (_else64336447_))))))))
        (let* ((_g63276337_
                (lambda (_g63286334_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63286334_)))
               (_g63266418_
                (lambda (_g63286340_)
                  (if (gx#stx-pair? _g63286340_)
                      (let ((_e63306342_ (gx#stx-e _g63286340_)))
                        (let ((_hd63316345_ (##car _e63306342_))
                              (_tl63326347_ (##cdr _e63306342_)))
                          ((lambda (_L6350_)
                             (let ((_ht6361_ (make-hash-table-eq)))
                               (let _lp6363_ ((_rest6365_ _L6350_)
                                              (_loads6366_ '()))
                                 (letrec ((_K6368_ (lambda (_ctx6411_
                                                            _rest6412_)
                                                     (let ((_id6414_
                                                            (##structure-ref
                                                             _ctx6411_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6361_
                                                            _id6414_
                                                            '#f)
                                                           (_lp6363_
                                                            _rest6412_
                                                            _loads6366_)
                                                           (let ((_rt6416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6414_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6361_ _id6414_ _rt6416_)
                       (_lp6363_ _rest6412_ (cons _rt6416_ _loads6366_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63696377_ _rest6365_)
                                          (_else63716389_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63846386_)
                                                          (list 'load-module
                                                                _g63846386_))
                                                        (reverse _loads6366_)))))
                                          (_K63736399_
                                           (lambda (_rest6392_ _in6393_)
                                             (if (##structure-instance-of?
                                                  _in6393_
                                                  'gx#module-context::t)
                                                 (_K6368_ _in6393_ _rest6392_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6393_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6393_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6368_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6393_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6392_)
                 (_lp6363_ _rest6392_ _loads6366_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6393_
                                                          'gx#import-set::t)
                                                         (let ((_phi6395_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6393_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6395_)
                       (_K6368_ (##direct-structure-ref
                                 _in6393_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6392_)
                       (if (fxpositive? _phi6395_)
                           (let ((_deps6397_
                                  (_import-set-template6325_ _in6393_ '0)))
                             (_lp6363_
                              (foldl1 cons _rest6392_ _deps6397_)
                              _loads6366_))
                           (_lp6363_ _rest6392_ _loads6366_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6323_
                  _in6393_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63696377_)
                                         (let ((_hd63746402_
                                                (##car _rest63696377_))
                                               (_tl63756404_
                                                (##cdr _rest63696377_)))
                                           (let* ((_in6407_ _hd63746402_)
                                                  (_rest6409_ _tl63756404_))
                                             (_K63736399_
                                              _rest6409_
                                              _in6407_)))
                                         (_else63716389_)))))))
                           _tl63326347_)))
                      (_g63276337_ _g63286340_)))))
          (_g63266418_ _stx6323_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6143_)
      (letrec ((_add-lift!6145_
                (lambda (_expr6321_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6321_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6146_
                (lambda (_stxq6316_)
                  (let ((_gid6318_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6319_
                         (gxc#generate-runtime-identifier _stxq6316_)))
                    (begin
                      (_add-lift!6145_
                       (cons 'define
                             (cons _gid6318_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6319_
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
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq6316_
                       _gid6318_)
                      _gid6318_))))
               (_generate-serialized6147_
                (lambda (_stxq6306_ _marks6307_)
                  (let* ((_mark-refs6309_
                          (map _generate-mark6148_ _marks6307_))
                         (_gid6311_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6313_
                          (gxc#generate-runtime-identifier _stxq6306_)))
                    (begin
                      (_add-lift!6145_
                       (cons 'define
                             (cons _gid6311_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6309_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq6306_
                       _gid6311_)
                      _gid6311_))))
               (_generate-mark6148_
                (lambda (_mark6292_)
                  (let ((_$e6294_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6292_
                          '#f)))
                    (if _$e6294_
                        (values _$e6294_)
                        (let* ((_gid6297_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6299_ (_serialize-mark6149_ _mark6292_))
                               (_ctx6301_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6292_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6303_
                                (if (eq? _ctx6301_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6150_
                                                             _ctx6301_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6292_
                             _gid6297_)
                            (_add-lift!6145_
                             (cons 'define
                                   (cons _gid6297_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6299_ '()))
                   (cons _ctx-ref6303_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6297_))))))
               (_serialize-mark6149_
                (lambda (_mark6239_)
                  (letrec ((_quote-e6241_
                            (lambda (_sym6290_)
                              (if (interned-symbol? _sym6290_)
                                  _sym6290_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6290_)))))
                    (let* ((_mark62426251_ _mark6239_)
                           (_E62446255_
                            (lambda ()
                              (error '"No clause matching" _mark62426251_)))
                           (_K62456267_
                            (lambda (_trace6258_
                                     _phi6259_
                                     _ctx6260_
                                     _subst6261_)
                              (let ((_subs6263_
                                     (if _subst6261_
                                         (table->list _subst6261_)
                                         '())))
                                (cons _phi6259_
                                      (map (lambda (_pair6265_)
                                             (cons (_quote-e6241_
                                                    (car _pair6265_))
                                                   (_quote-e6241_
                                                    (cdr _pair6265_))))
                                           _subs6263_))))))
                      (if (##structure-instance-of?
                           _mark62426251_
                           'gx#expander-mark::t)
                          (let* ((_e62466270_ (##vector-ref _mark62426251_ '1))
                                 (_subst6273_ _e62466270_)
                                 (_e62476275_ (##vector-ref _mark62426251_ '2))
                                 (_ctx6278_ _e62476275_)
                                 (_e62486280_ (##vector-ref _mark62426251_ '3))
                                 (_phi6283_ _e62486280_)
                                 (_e62496285_ (##vector-ref _mark62426251_ '4))
                                 (_trace6288_ _e62496285_))
                            (_K62456267_
                             _trace6288_
                             _phi6283_
                             _ctx6278_
                             _subst6273_))
                          (_E62446255_))))))
               (_context-ref6150_
                (lambda (_ctx6226_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6226_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6228_
                             (_context-ref-nested6152_ _ctx6226_))
                            (_ctx-origin6229_
                             (_context-ref-origin6151_ _ctx6226_))
                            (_origin6230_
                             (_context-ref-origin6151_
                              (gx#current-expander-context))))
                        (if (eq? _origin6230_ _ctx-origin6229_)
                            (let ((_ref6232_
                                   (_context-ref-nested6152_
                                    (gx#current-expander-context))))
                              (let _lp6234_ ((_ref6236_ (cdr _ref6232_))
                                             (_ctx-ref6237_
                                              (cdr _ctx-ref6228_)))
                                (if (if (pair? _ref6236_)
                                        (eq? (car _ref6236_)
                                             (car _ctx-ref6237_))
                                        '#f)
                                    (_lp6234_
                                     (cdr _ref6236_)
                                     (cdr _ctx-ref6237_))
                                    (cons '#f _ctx-ref6237_))))
                            _ctx-ref6228_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6226_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6151_
                (lambda (_ctx6218_)
                  (let _lp6220_ ((_ctx6222_ _ctx6218_))
                    (let ((_super6224_
                           (##structure-ref
                            _ctx6222_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6224_
                           'gx#module-context::t)
                          (_lp6220_ _super6224_)
                          _ctx6222_)))))
               (_context-ref-nested6152_
                (lambda (_ctx6209_)
                  (let _lp6211_ ((_ctx6213_ _ctx6209_) (_r6214_ '()))
                    (let ((_super6216_
                           (##structure-ref
                            _ctx6213_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6216_
                           'gx#module-context::t)
                          (_lp6211_
                           _super6216_
                           (cons (car (##structure-ref
                                       _ctx6213_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6214_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6213_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6214_)))))))
        (let* ((_g61546167_
                (lambda (_g61556164_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61556164_)))
               (_g61536206_
                (lambda (_g61556170_)
                  (if (gx#stx-pair? _g61556170_)
                      (let ((_e61576172_ (gx#stx-e _g61556170_)))
                        (let ((_hd61586175_ (##car _e61576172_))
                              (_tl61596177_ (##cdr _e61576172_)))
                          (if (gx#stx-pair? _tl61596177_)
                              (let ((_e61606180_ (gx#stx-e _tl61596177_)))
                                (let ((_hd61616183_ (##car _e61606180_))
                                      (_tl61626185_ (##cdr _e61606180_)))
                                  (if (gx#stx-null? _tl61626185_)
                                      ((lambda (_L6188_)
                                         (if (gx#identifier? _L6188_)
                                             (let ((_$e6201_
                                                    (table-ref
                                                     (gxc#current-compile-identifiers)
                                                     _L6188_
                                                     '#f)))
                                               (if _$e6201_
                                                   (values _$e6201_)
                                                   (let ((_marks6204_
                                                          (##direct-structure-ref
                                                           _L6188_
                                                           '4
                                                           gx#syntax-quote::t
                                                           '#f)))
                                                     (if (null? _marks6204_)
                                                         (_generate-simple6146_
                                                          _L6188_)
                                                         (_generate-serialized6147_
                                                          _L6188_
                                                          _marks6204_)))))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6188_)))
                                       _hd61616183_)
                                      (_g61546167_ _g61556170_))))
                              (_g61546167_ _g61556170_))))
                      (_g61546167_ _g61556170_)))))
          (_g61536206_ _stx6143_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6076_)
      (let* ((_g60786095_
              (lambda (_g60796092_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60796092_)))
             (_g60776140_
              (lambda (_g60796098_)
                (if (gx#stx-pair? _g60796098_)
                    (let ((_e60826100_ (gx#stx-e _g60796098_)))
                      (let ((_hd60836103_ (##car _e60826100_))
                            (_tl60846105_ (##cdr _e60826100_)))
                        (if (gx#stx-pair? _tl60846105_)
                            (let ((_e60856108_ (gx#stx-e _tl60846105_)))
                              (let ((_hd60866111_ (##car _e60856108_))
                                    (_tl60876113_ (##cdr _e60856108_)))
                                (if (gx#stx-pair? _tl60876113_)
                                    (let ((_e60886116_
                                           (gx#stx-e _tl60876113_)))
                                      (let ((_hd60896119_ (##car _e60886116_))
                                            (_tl60906121_ (##cdr _e60886116_)))
                                        (if (gx#stx-null? _tl60906121_)
                                            ((lambda (_L6124_ _L6125_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6125_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6124_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60896119_
                                             _hd60866111_)
                                            (_g60786095_ _g60796098_))))
                                    (_g60786095_ _g60796098_))))
                            (_g60786095_ _g60796098_))))
                    (_g60786095_ _g60796098_)))))
        (_g60776140_ _stx6076_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx6025_ _state6026_)
      (let* ((_g60286038_
              (lambda (_g60296035_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60296035_)))
             (_g60276073_
              (lambda (_g60296041_)
                (if (gx#stx-pair? _g60296041_)
                    (let ((_e60316043_ (gx#stx-e _g60296041_)))
                      (let ((_hd60326046_ (##car _e60316043_))
                            (_tl60336048_ (##cdr _e60316043_)))
                        ((lambda (_L6051_)
                           (let* ((_c-body6065_
                                   (map (lambda (_g60606062_)
                                          (gxc#compile-e
                                           _g60606062_
                                           _state6026_))
                                        _L6051_))
                                  (_c-body6070_
                                   (filter (lambda (_$obj6067_)
                                             (not (eq? _$obj6067_ '#!void)))
                                           _c-body6065_)))
                             (cons '%#begin _c-body6070_)))
                         _tl60336048_)))
                    (_g60286038_ _g60296041_)))))
        (_g60276073_ _stx6025_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5933_ _state5934_)
      (let* ((_g59365946_
              (lambda (_g59375943_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59375943_)))
             (_g59356022_
              (lambda (_g59375949_)
                (if (gx#stx-pair? _g59375949_)
                    (let ((_e59395951_ (gx#stx-e _g59375949_)))
                      (let ((_hd59405954_ (##car _e59395951_))
                            (_tl59415956_ (##cdr _e59395951_)))
                        ((lambda (_L5959_)
                           (let* ((_phi5969_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5971_
                                   (gxc#meta-state-begin-phi!
                                    _state5934_
                                    _phi5969_))
                                  (_compiled5974_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5959_)
                                       _state5934_))
                                    gx#current-expander-phi
                                    _phi5969_)))
                             (let* ((_g59775987_
                                     (lambda (_g59785984_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59785984_)))
                                    (_g59766019_
                                     (lambda (_g59785990_)
                                       (if (gx#stx-pair? _g59785990_)
                                           (let ((_e59805992_
                                                  (gx#stx-e _g59785990_)))
                                             (let ((_hd59815995_
                                                    (##car _e59805992_))
                                                   (_tl59825997_
                                                    (##cdr _e59805992_)))
                                               (if (gx#identifier?
                                                    _hd59815995_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59815995_)
                                                       ((lambda (_L6000_)
                                                          (let ((_c-body6017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj6014_)
                                   (not (eq? _$obj6014_ '#!void)))
                                 _L6000_)))
                    (if _block5971_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body6017_))
                        (if (null? _c-body6017_)
                            '#!void
                            (cons '%#begin-syntax _c-body6017_)))))
                _tl59825997_)
               (_g59775987_ _g59785990_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59775987_ _g59785990_))))
                                           (_g59775987_ _g59785990_)))))
                               (_g59766019_ _compiled5974_))))
                         _tl59415956_)))
                    (_g59365946_ _g59375949_)))))
        (_g59356022_ _stx5933_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5864_ _state5865_)
      (begin
        (gxc#meta-state-end-phi! _state5865_)
        (let* ((_g58675881_
                (lambda (_g58685878_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58685878_)))
               (_g58665930_
                (lambda (_g58685884_)
                  (if (gx#stx-pair? _g58685884_)
                      (let ((_e58715886_ (gx#stx-e _g58685884_)))
                        (let ((_hd58725889_ (##car _e58715886_))
                              (_tl58735891_ (##cdr _e58715886_)))
                          (if (gx#stx-pair? _tl58735891_)
                              (let ((_e58745894_ (gx#stx-e _tl58735891_)))
                                (let ((_hd58755897_ (##car _e58745894_))
                                      (_tl58765899_ (##cdr _e58745894_)))
                                  ((lambda (_L5902_ _L5903_)
                                     (let ((_key5916_
                                            (gx#core-identifier-key _L5903_)))
                                       (begin
                                         (if (interned-symbol? _key5916_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5864_
                                              _L5903_
                                              _key5916_))
                                         (let* ((_ctx5918_
                                                 (gx#syntax-local-e__0
                                                  _L5903_))
                                                (_code5921_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5918_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5865_))
                                                  gx#current-expander-context
                                                  _ctx5918_))
                                                (_rt5923_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5918_
                                                  '#f))
                                                (_loader5925_
                                                 (if _rt5923_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5923_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5927_
                                                 (gx#stx-e _L5903_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5865_)
                                             (cons '%#module
                                                   (cons _modid5927_
                                                         (cons _code5921_
                                                               _loader5925_))))))))
                                   _tl58765899_
                                   _hd58755897_)))
                              (_g58675881_ _g58685884_))))
                      (_g58675881_ _g58685884_)))))
          (_g58665930_ _stx5864_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5854_ _context-chain5855_)
      (let _lp5857_ ((_ctx5859_ _ctx5854_) (_path5860_ '()))
        (let ((_super5862_
               (##structure-ref _ctx5859_ '3 gx#phi-context::t '#f)))
          (if (memq _super5862_ _context-chain5855_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5859_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5860_))
              (if (##structure-instance-of? _super5862_ 'gx#module-context::t)
                  (_lp5857_
                   _super5862_
                   (cons (car (##structure-ref
                               _ctx5859_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5860_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5859_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5860_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5849_ ((_ctx5851_ (gx#current-expander-context)) (_r5852_ '()))
        (if (##structure-instance-of? _ctx5851_ 'gx#module-context::t)
            (_lp5849_
             (##structure-ref _ctx5851_ '3 gx#phi-context::t '#f)
             (cons _ctx5851_ _r5852_))
            _r5852_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5618_ _state5619_)
      (letrec* ((_context-chain5621_ (gxc#current-context-chain))
                (_make-import-spec5622_
                 (lambda (_in5785_)
                   (let* ((_in57865798_ _in5785_)
                          (_E57885802_
                           (lambda ()
                             (error '"No clause matching" _in57865798_)))
                          (_K57895812_
                           (lambda (_phi5805_
                                    _name5806_
                                    _src-name5807_
                                    _src-phi5808_
                                    _src-key5809_
                                    _src-ctx5810_)
                             (cons _phi5805_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5806_)
                                         (cons _src-phi5808_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5807_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57865798_
                          'gx#module-import::t)
                         (let ((_e57905815_ (##vector-ref _in57865798_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57905815_
                                'gx#module-export::t)
                               (let* ((_e57935818_
                                       (##vector-ref _e57905815_ '1))
                                      (_src-ctx5821_ _e57935818_)
                                      (_e57945823_
                                       (##vector-ref _e57905815_ '2))
                                      (_src-key5826_ _e57945823_)
                                      (_e57955828_
                                       (##vector-ref _e57905815_ '3))
                                      (_src-phi5831_ _e57955828_)
                                      (_e57965833_
                                       (##vector-ref _e57905815_ '4))
                                      (_src-name5836_ _e57965833_)
                                      (_e57915838_
                                       (##vector-ref _in57865798_ '2))
                                      (_name5841_ _e57915838_)
                                      (_e57925843_
                                       (##vector-ref _in57865798_ '3))
                                      (_phi5846_ _e57925843_))
                                 (_K57895812_
                                  _phi5846_
                                  _name5841_
                                  _src-name5836_
                                  _src-phi5831_
                                  _src-key5826_
                                  _src-ctx5821_))
                               (_E57885802_)))
                         (_E57885802_)))))
                (_make-import-path5623_
                 (lambda (_ctx5783_)
                   (gxc#generate-meta-import-path
                    _ctx5783_
                    _context-chain5621_)))
                (_make-import-spec-in5624_
                 (lambda (_ctx5780_ _in5781_)
                   (cons 'spec:
                         (cons (_make-import-path5623_ _ctx5780_)
                               (reverse _in5781_))))))
        (begin
          (gxc#meta-state-end-phi! _state5619_)
          (let* ((_g56265636_
                  (lambda (_g56275633_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g56275633_)))
                 (_g56255777_
                  (lambda (_g56275639_)
                    (if (gx#stx-pair? _g56275639_)
                        (let ((_e56295641_ (gx#stx-e _g56275639_)))
                          (let ((_hd56305644_ (##car _e56295641_))
                                (_tl56315646_ (##cdr _e56295641_)))
                            ((lambda (_L5649_)
                               (let _lp5660_ ((_rest5662_ _L5649_)
                                              (_current-src5663_ '#f)
                                              (_current-in5664_ '())
                                              (_r5665_ '()))
                                 (let* ((_rest56665674_ _rest5662_)
                                        (_else56685684_
                                         (lambda ()
                                           (let ((_r5682_ (if _current-src5663_
                                                              (cons (_make-import-spec-in5624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5663_
                             _current-in5664_)
                            _r5665_)
                      _r5665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5682_)))))
                                        (_K56705765_
                                         (lambda (_rest5687_ _in5688_)
                                           (if (##structure-direct-instance-of?
                                                _in5688_
                                                'gx#module-import::t)
                                               (let* ((_in56895696_ _in5688_)
                                                      (_E56915700_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56895696_)))
                                                      (_K56925705_
                                                       (lambda (_src-ctx5703_)
                                                         (if (eq? _current-src5663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5703_)
                     (_lp5660_
                      _rest5687_
                      _current-src5663_
                      (cons (_make-import-spec5622_ _in5688_) _current-in5664_)
                      _r5665_)
                     (if _current-src5663_
                         (_lp5660_
                          _rest5687_
                          _src-ctx5703_
                          (cons (_make-import-spec5622_ _in5688_) '())
                          (cons (_make-import-spec-in5624_
                                 _current-src5663_
                                 _current-in5664_)
                                _r5665_))
                         (_lp5660_
                          _rest5687_
                          _src-ctx5703_
                          (cons (_make-import-spec5622_ _in5688_) '())
                          _r5665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56895696_
                                                      'gx#module-import::t)
                                                     (let ((_e56935708_
                                                            (##vector-ref
                                                             _in56895696_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56935708_
                                                            'gx#module-export::t)
                                                           (let* ((_e56945711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56935708_ '1))
                          (_src-ctx5714_ _e56945711_))
                     (_K56925705_ _src-ctx5714_))
                   (_E56915700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56915700_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5688_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5716_
                                                           (##direct-structure-ref
                                                            _in5688_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5718_
                                                           (##direct-structure-ref
                                                            _in5688_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5758_
                                                           (let* ((_g57195728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5623_ _src5718_))
                          (_E57225732_
                           (lambda ()
                             (error '"No clause matching" _g57195728_))))
                     (let ((_K57245748_ (lambda (_path5746_) _path5746_))
                           (_K57235738_
                            (lambda (_path5736_) (cons 'in: _path5736_))))
                       (if (##pair? _g57195728_)
                           (let ((_tl57265753_ (##cdr _g57195728_))
                                 (_hd57255751_ (##car _g57195728_)))
                             (if (##null? _tl57265753_)
                                 (let ((_path5756_ _hd57255751_))
                                   (_K57245748_ _path5756_))
                                 (let ((_path5741_ _g57195728_))
                                   (_K57235738_ _path5741_))))
                           (let ((_path5741_ _g57195728_))
                             (_K57235738_ _path5741_))))))
                  (_r5760_ (if _current-src5663_
                               (cons (_make-import-spec-in5624_
                                      _current-src5663_
                                      _current-in5664_)
                                     _r5665_)
                               _r5665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5660_
                                                      _rest5687_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5716_)
                                                                _src-in5758_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5716_ (cons _src-in5758_ '()))))
                    _r5760_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5688_
                                                        'gx#module-context::t)
                                                       (let ((_r5763_ (if _current-src5663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5624_
                                         _current-src5663_
                                         _current-in5664_)
                                        _r5665_)
                                  _r5665_)))
                 (_lp5660_
                  _rest5687_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5623_ _in5688_))
                        _r5763_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56665674_)
                                       (let ((_hd56715768_
                                              (##car _rest56665674_))
                                             (_tl56725770_
                                              (##cdr _rest56665674_)))
                                         (let* ((_in5773_ _hd56715768_)
                                                (_rest5775_ _tl56725770_))
                                           (_K56705765_ _rest5775_ _in5773_)))
                                       (_else56685684_)))))
                             _tl56315646_)))
                        (_g56265636_ _g56275639_)))))
            (_g56255777_ _stx5618_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5428_ _state5429_)
      (letrec* ((_context-chain5431_ (gxc#current-context-chain))
                (_make-import-path5432_
                 (lambda (_ctx5616_)
                   (gxc#generate-meta-import-path
                    _ctx5616_
                    _context-chain5431_))))
        (let* ((_g54345444_
                (lambda (_g54355441_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54355441_)))
               (_g54335613_
                (lambda (_g54355447_)
                  (if (gx#stx-pair? _g54355447_)
                      (let ((_e54375449_ (gx#stx-e _g54355447_)))
                        (let ((_hd54385452_ (##car _e54375449_))
                              (_tl54395454_ (##cdr _e54375449_)))
                          ((lambda (_L5457_)
                             (let _lp5468_ ((_rest5470_ _L5457_) (_r5471_ '()))
                               (let* ((_rest54725480_ _rest5470_)
                                      (_else54745488_
                                       (lambda ()
                                         (cons '%#export (reverse _r5471_))))
                                      (_K54765601_
                                       (lambda (_rest5491_ _out5492_)
                                         (let* ((_out54935506_ _out5492_)
                                                (_E54965510_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54935506_))))
                                           (let ((_K55005580_
                                                  (lambda (_name5576_
                                                           _phi5577_
                                                           _key5578_)
                                                    (_lp5468_
                                                     _rest5491_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi5577_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key5578_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name5576_)
                                           '()))))
                   _r5471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K54975560_
                                                  (lambda (_phi5514_ _src5515_)
                                                    (let* ((_out5555_
                                                            (if _src5515_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g55165525_
                                            (_make-import-path5432_ _src5515_))
                                           (_E55195529_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g55165525_))))
                                      (let ((_K55215545_
                                             (lambda (_path5543_) _path5543_))
                                            (_K55205535_
                                             (lambda (_path5533_)
                                               (cons 'in: _path5533_))))
                                        (if (##pair? _g55165525_)
                                            (let ((_tl55235550_
                                                   (##cdr _g55165525_))
                                                  (_hd55225548_
                                                   (##car _g55165525_)))
                                              (if (##null? _tl55235550_)
                                                  (let ((_path5553_
                                                         _hd55225548_))
                                                    (_K55215545_ _path5553_))
                                                  (let ((_path5538_
                                                         _g55165525_))
                                                    (_K55205535_ _path5538_))))
                                            (let ((_path5538_ _g55165525_))
                                              (_K55205535_ _path5538_)))))
                                    '()))
                        '#t))
                   (_out5557_
                    (if (fxzero? _phi5514_)
                        _out5555_
                        (cons 'phi: (cons _phi5514_ (cons _out5555_ '()))))))
              (_lp5468_ _rest5491_ (cons _out5557_ _r5471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match54955573_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out54935506_
                                                           'gx#export-set::t)
                                                          (let* ((_e54985563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out54935506_ '1))
                         (_e54995568_ (##vector-ref _out54935506_ '2)))
                    (let ((_src5566_ _e54985563_) (_phi5571_ _e54995568_))
                      (_K54975560_ _phi5571_ _src5566_)))
                  (_E54965510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out54935506_
                                                    'gx#module-export::t)
                                                   (let* ((_e55015583_
                                                           (##vector-ref
                                                            _out54935506_
                                                            '1))
                                                          (_e55025586_
                                                           (##vector-ref
                                                            _out54935506_
                                                            '2))
                                                          (_e55035591_
                                                           (##vector-ref
                                                            _out54935506_
                                                            '3))
                                                          (_e55045596_
                                                           (##vector-ref
                                                            _out54935506_
                                                            '4)))
                                                     (let ((_key5589_
                                                            _e55025586_)
                                                           (_phi5594_
                                                            _e55035591_)
                                                           (_name5599_
                                                            _e55045596_))
                                                       (_K55005580_
                                                        _name5599_
                                                        _phi5594_
                                                        _key5589_)))
                                                   (_try-match54955573_))))))))
                                 (if (##pair? _rest54725480_)
                                     (let ((_hd54775604_
                                            (##car _rest54725480_))
                                           (_tl54785606_
                                            (##cdr _rest54725480_)))
                                       (let* ((_out5609_ _hd54775604_)
                                              (_rest5611_ _tl54785606_))
                                         (_K54765601_ _rest5611_ _out5609_)))
                                     (_else54745488_)))))
                           _tl54395454_)))
                      (_g54345444_ _g54355447_)))))
          (_g54335613_ _stx5428_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5389_ _state5390_)
      (begin
        (gxc#meta-state-end-phi! _state5390_)
        (let* ((_g53925402_
                (lambda (_g53935399_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53935399_)))
               (_g53915425_
                (lambda (_g53935405_)
                  (if (gx#stx-pair? _g53935405_)
                      (let ((_e53955407_ (gx#stx-e _g53935405_)))
                        (let ((_hd53965410_ (##car _e53955407_))
                              (_tl53975412_ (##cdr _e53955407_)))
                          ((lambda (_L5415_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5415_)))
                           _tl53975412_)))
                      (_g53925402_ _g53935405_)))))
          (_g53915425_ _stx5389_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5260_ _state5261_)
      (letrec ((_generate15263_
                (lambda (_id5384_ _eid5385_)
                  (let ((_eid5387_ (gx#stx-e _eid5385_)))
                    (begin
                      (if (interned-symbol? _eid5387_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5260_
                           _eid5387_))
                      (cons (gxc#generate-runtime-identifier _id5384_)
                            (cons _eid5387_ '())))))))
        (let* ((_g52655293_
                (lambda (_g52665290_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52665290_)))
               (_g52645381_
                (lambda (_g52665296_)
                  (if (gx#stx-pair? _g52665296_)
                      (let ((_e52695298_ (gx#stx-e _g52665296_)))
                        (let ((_hd52705301_ (##car _e52695298_))
                              (_tl52715303_ (##cdr _e52695298_)))
                          (if (gx#stx-pair/null? _tl52715303_)
                              (let ((_g14283_
                                     (gx#syntax-split-splice _tl52715303_ '0)))
                                (begin
                                  (let ((_g14284_
                                         (if (##values? _g14283_)
                                             (##vector-length _g14283_)
                                             1)))
                                    (if (not (##fx= _g14284_ 2))
                                        (error "Context expects 2 values"
                                               _g14284_)))
                                  (let ((_target52725306_
                                         (##vector-ref _g14283_ 0))
                                        (_tl52745308_
                                         (##vector-ref _g14283_ 1)))
                                    (if (gx#stx-null? _tl52745308_)
                                        (letrec ((_loop52755311_
                                                  (lambda (_hd52735314_
                                                           _eid52795316_
                                                           _id52805318_)
                                                    (if (gx#stx-pair?
                                                         _hd52735314_)
                                                        (let ((_e52765321_
                                                               (gx#stx-e
                                                                _hd52735314_)))
                                                          (let ((_lp-hd52775324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e52765321_))
                        (_lp-tl52785326_ (##cdr _e52765321_)))
                    (if (gx#stx-pair? _lp-hd52775324_)
                        (let ((_e52835329_ (gx#stx-e _lp-hd52775324_)))
                          (let ((_hd52845332_ (##car _e52835329_))
                                (_tl52855334_ (##cdr _e52835329_)))
                            (if (gx#stx-pair? _tl52855334_)
                                (let ((_e52865337_ (gx#stx-e _tl52855334_)))
                                  (let ((_hd52875340_ (##car _e52865337_))
                                        (_tl52885342_ (##cdr _e52865337_)))
                                    (if (gx#stx-null? _tl52885342_)
                                        (_loop52755311_
                                         _lp-tl52785326_
                                         (cons _hd52875340_ _eid52795316_)
                                         (cons _hd52845332_ _id52805318_))
                                        (_g52655293_ _g52665296_))))
                                (_g52655293_ _g52665296_))))
                        (_g52655293_ _g52665296_))))
                (let ((_eid52815345_ (reverse _eid52795316_))
                      (_id52825347_ (reverse _id52805318_)))
                  ((lambda (_L5350_ _L5351_)
                     (cons '%#extern
                           (map _generate15263_
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g53665369_ _g53675371_)
                                            (cons _g53665369_ _g53675371_))
                                          '()
                                          _L5351_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g53735376_ _g53745378_)
                                            (cons _g53735376_ _g53745378_))
                                          '()
                                          _L5350_)))))
                   _eid52815345_
                   _id52825347_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop52755311_
                                           _target52725306_
                                           '()
                                           '()))
                                        (_g52655293_ _g52665296_)))))
                              (_g52655293_ _g52665296_))))
                      (_g52655293_ _g52665296_)))))
          (_g52645381_ _stx5260_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5050_ _state5051_)
      (letrec ((_generate15053_
                (lambda (_id5255_)
                  (let ((_eid5257_ (gxc#generate-runtime-binding-id _id5255_))
                        (_ident5258_
                         (gxc#generate-runtime-identifier _id5255_)))
                    (cons '%#define-runtime
                          (cons _ident5258_ (cons _eid5257_ '()))))))
               (_generate*5054_
                (lambda (_all5223_)
                  (let* ((_all52245232_ _all5223_)
                         (_else52265240_ (lambda () (cons '%#begin _all5223_)))
                         (_K52285245_ (lambda (_one5243_) _one5243_)))
                    (if (##pair? _all52245232_)
                        (let ((_hd52295248_ (##car _all52245232_))
                              (_tl52305250_ (##cdr _all52245232_)))
                          (let ((_one5253_ _hd52295248_))
                            (if (##null? _tl52305250_)
                                (_K52285245_ _one5253_)
                                (_else52265240_))))
                        (_else52265240_))))))
        (let* ((_g50565073_
                (lambda (_g50575070_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50575070_)))
               (_g50555220_
                (lambda (_g50575076_)
                  (if (gx#stx-pair? _g50575076_)
                      (let ((_e50605078_ (gx#stx-e _g50575076_)))
                        (let ((_hd50615081_ (##car _e50605078_))
                              (_tl50625083_ (##cdr _e50605078_)))
                          (if (gx#stx-pair? _tl50625083_)
                              (let ((_e50635086_ (gx#stx-e _tl50625083_)))
                                (let ((_hd50645089_ (##car _e50635086_))
                                      (_tl50655091_ (##cdr _e50635086_)))
                                  (if (gx#stx-pair? _tl50655091_)
                                      (let ((_e50665094_
                                             (gx#stx-e _tl50655091_)))
                                        (let ((_hd50675097_
                                               (##car _e50665094_))
                                              (_tl50685099_
                                               (##cdr _e50665094_)))
                                          (if (gx#stx-null? _tl50685099_)
                                              ((lambda (_L5102_ _L5103_)
                                                 (let _lp5119_ ((_rest5121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5103_)
                        (_r5122_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((___stx1419014191_
                                                           _rest5121_)
                                                          (_g51275144_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1419014191_))))
                                                     (let ((___kont1419214193_
                                                            (lambda (_L5207_)
                                                              (_lp5119_
                                                               _L5207_
                                                               _r5122_)))
                                                           (___kont1419414195_
                                                            (lambda (_L5180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5181_)
                      (_lp5119_
                       _L5180_
                       (cons (_generate15053_ _L5181_) _r5122_))))
                   (___kont1419614197_
                    (lambda (_L5156_)
                      (_generate*5054_
                       (foldl1 cons
                               (cons (_generate15053_ _L5156_) '())
                               _r5122_))))
                   (___kont1419814199_
                    (lambda () (_generate*5054_ (reverse _r5122_)))))
               (let ((_g51255167_
                      (lambda ()
                        (let ((_L5156_ ___stx1419014191_))
                          (if (gx#identifier? _L5156_)
                              (___kont1419614197_ _L5156_)
                              (___kont1419814199_))))))
                 (if (gx#stx-pair? ___stx1419014191_)
                     (let ((_e51305196_ (gx#stx-e ___stx1419014191_)))
                       (let ((_tl51325201_ (##cdr _e51305196_))
                             (_hd51315199_ (##car _e51305196_)))
                         (if (gx#stx-datum? _hd51315199_)
                             (let ((_e51335204_ (gx#stx-e _hd51315199_)))
                               (if (equal? _e51335204_ '#f)
                                   (___kont1419214193_ _tl51325201_)
                                   (___kont1419414195_
                                    _tl51325201_
                                    _hd51315199_)))
                             (___kont1419414195_ _tl51325201_ _hd51315199_))))
                     (_g51255167_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd50675097_
                                               _hd50645089_)
                                              (_g50565073_ _g50575076_))))
                                      (_g50565073_ _g50575076_))))
                              (_g50565073_ _g50575076_))))
                      (_g50565073_ _g50575076_)))))
          (_g50555220_ _stx5050_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4947_ _state4948_)
      (let* ((_g49504967_
              (lambda (_g49514964_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49514964_)))
             (_g49495047_
              (lambda (_g49514970_)
                (if (gx#stx-pair? _g49514970_)
                    (let ((_e49544972_ (gx#stx-e _g49514970_)))
                      (let ((_hd49554975_ (##car _e49544972_))
                            (_tl49564977_ (##cdr _e49544972_)))
                        (if (gx#stx-pair? _tl49564977_)
                            (let ((_e49574980_ (gx#stx-e _tl49564977_)))
                              (let ((_hd49584983_ (##car _e49574980_))
                                    (_tl49594985_ (##cdr _e49574980_)))
                                (if (gx#stx-pair? _tl49594985_)
                                    (let ((_e49604988_
                                           (gx#stx-e _tl49594985_)))
                                      (let ((_hd49614991_ (##car _e49604988_))
                                            (_tl49624993_ (##cdr _e49604988_)))
                                        (if (gx#stx-null? _tl49624993_)
                                            ((lambda (_L4996_ _L4997_)
                                               (let* ((_eid5012_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4997_))
                                                      (_phi5014_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block5016_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4948_
                                                        _phi5014_)))
                                                 (begin
                                                   (let* ((_g50195026_
                                                           (lambda (_g50205023_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50205023_)))
                                                          (_g50185044_
                                                           (lambda (_g50205029_)
                                                             ((lambda (_L5031_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4948_
                           _phi5014_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L5031_ (cons _L4996_ '()))))))
                      _g50205029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50185044_ _eid5012_))
                                                   (if _block5016_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block5016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4997_)
                                             (cons _eid5012_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4997_)
                           (cons _eid5012_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49614991_
                                             _hd49584983_)
                                            (_g49504967_ _g49514970_))))
                                    (_g49504967_ _g49514970_))))
                            (_g49504967_ _g49514970_))))
                    (_g49504967_ _g49514970_)))))
        (_g49495047_ _stx4947_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4879_ _state4880_)
      (let* ((_g48824899_
              (lambda (_g48834896_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48834896_)))
             (_g48814944_
              (lambda (_g48834902_)
                (if (gx#stx-pair? _g48834902_)
                    (let ((_e48864904_ (gx#stx-e _g48834902_)))
                      (let ((_hd48874907_ (##car _e48864904_))
                            (_tl48884909_ (##cdr _e48864904_)))
                        (if (gx#stx-pair? _tl48884909_)
                            (let ((_e48894912_ (gx#stx-e _tl48884909_)))
                              (let ((_hd48904915_ (##car _e48894912_))
                                    (_tl48914917_ (##cdr _e48894912_)))
                                (if (gx#stx-pair? _tl48914917_)
                                    (let ((_e48924920_
                                           (gx#stx-e _tl48914917_)))
                                      (let ((_hd48934923_ (##car _e48924920_))
                                            (_tl48944925_ (##cdr _e48924920_)))
                                        (if (gx#stx-null? _tl48944925_)
                                            ((lambda (_L4928_ _L4929_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4929_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4928_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48934923_
                                             _hd48904915_)
                                            (_g48824899_ _g48834902_))))
                                    (_g48824899_ _g48834902_))))
                            (_g48824899_ _g48834902_))))
                    (_g48824899_ _g48834902_)))))
        (_g48814944_ _stx4879_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4876_ _state4877_)
      (begin
        (gxc#meta-state-add-phi!
         _state4877_
         (gx#current-expander-phi)
         _stx4876_)
        (gxc#generate-meta-define-values% _stx4876_ _state4877_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4873_ _state4874_)
      (begin
        (gxc#meta-state-add-phi!
         _state4874_
         (gx#current-expander-phi)
         _stx4873_)
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
    (lambda _$args4870_
      (apply make-struct-instance gxc#meta-state::t _$args4870_)))
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
    (lambda (_self4867_ _ctx4868_)
      (if (##fx< '4 (##vector-length _self4867_))
          (begin
            (##vector-set!
             _self4867_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4868_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4867_ '2 '1)
            (##vector-set! _self4867_ '3 (make-hash-table-eq))
            (##vector-set! _self4867_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4867_))))
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
    (lambda _$args4742_
      (apply make-struct-instance gxc#meta-state-block::t _$args4742_)))
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
    (lambda (_state4701_ _phi4702_)
      (let* ((_state47034711_ _state4701_)
             (_E47054715_
              (lambda () (error '"No clause matching" _state47034711_)))
             (_K47064724_
              (lambda (_open4718_ _n4719_ _src4720_)
                (if (table-ref _open4718_ _phi4702_ '#f)
                    '#f
                    (let ((_block-ref4722_
                           (string-append
                            _src4720_
                            '"__"
                            (number->string _n4719_))))
                      (begin
                        (##structure-set!
                         _state4701_
                         (fx+ _n4719_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4718_
                         _phi4702_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4702_
                          _n4719_
                          '()))
                        _block-ref4722_))))))
        (if (##structure-instance-of? _state47034711_ 'gxc#meta-state::t)
            (let* ((_e47074727_ (##vector-ref _state47034711_ '1))
                   (_src4730_ _e47074727_)
                   (_e47084732_ (##vector-ref _state47034711_ '2))
                   (_n4735_ _e47084732_)
                   (_e47094737_ (##vector-ref _state47034711_ '3))
                   (_open4740_ _e47094737_))
              (_K47064724_ _open4740_ _n4735_ _src4730_))
            (_E47054715_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4695_ _phi4696_ _stx4697_)
      (let ((_block4699_
             (table-ref
              (##structure-ref _state4695_ '3 gxc#meta-state::t '#f)
              _phi4696_
              '#f)))
        (##structure-set!
         _block4699_
         (cons _stx4697_
               (##structure-ref _block4699_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4690_)
      (begin
        (##structure-set!
         _state4690_
         (hash-fold
          (lambda (_g14285_ _block4692_ _r4693_) (cons _block4692_ _r4693_))
          (##structure-ref _state4690_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4690_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4690_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4642_)
      (begin
        (gxc#meta-state-end-phi! _state4642_)
        (foldl1 (lambda (_block4644_ _r4645_)
                  (let* ((_block46464655_ _block4644_)
                         (_E46484659_
                          (lambda ()
                            (error '"No clause matching" _block46464655_)))
                         (_K46494667_
                          (lambda (_code4662_ _n4663_ _phi4664_ _ctx4665_)
                            (if (null? _code4662_)
                                _r4645_
                                (cons (cons _ctx4665_
                                            (cons _phi4664_
                                                  (cons _n4663_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4662_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4645_)))))
                    (if (##structure-instance-of?
                         _block46464655_
                         'gxc#meta-state-block::t)
                        (let* ((_e46504670_ (##vector-ref _block46464655_ '1))
                               (_ctx4673_ _e46504670_)
                               (_e46514675_ (##vector-ref _block46464655_ '2))
                               (_phi4678_ _e46514675_)
                               (_e46524680_ (##vector-ref _block46464655_ '3))
                               (_n4683_ _e46524680_)
                               (_e46534685_ (##vector-ref _block46464655_ '4))
                               (_code4688_ _e46534685_))
                          (_K46494667_ _code4688_ _n4683_ _phi4678_ _ctx4673_))
                        (_E46484659_))))
                '()
                (##structure-ref _state4642_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4638_)
      (let ((_ht4640_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4638_ _ht4640_)
          _ht4640_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4581_ _ht4582_)
      (let* ((_g45844597_
              (lambda (_g45854594_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45854594_)))
             (_g45834635_
              (lambda (_g45854600_)
                (if (gx#stx-pair? _g45854600_)
                    (let ((_e45874602_ (gx#stx-e _g45854600_)))
                      (let ((_hd45884605_ (##car _e45874602_))
                            (_tl45894607_ (##cdr _e45874602_)))
                        (if (gx#stx-pair? _tl45894607_)
                            (let ((_e45904610_ (gx#stx-e _tl45894607_)))
                              (let ((_hd45914613_ (##car _e45904610_))
                                    (_tl45924615_ (##cdr _e45904610_)))
                                (if (gx#stx-null? _tl45924615_)
                                    ((lambda (_L4618_)
                                       (let* ((_bind4630_
                                               (gx#resolve-identifier__0
                                                _L4618_))
                                              (_eid4632_
                                               (if _bind4630_
                                                   (##structure-ref
                                                    _bind4630_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4618_))))
                                         (table-set!
                                          _ht4582_
                                          _eid4632_
                                          _eid4632_)))
                                     _hd45914613_)
                                    (_g45844597_ _g45854600_))))
                            (_g45844597_ _g45854600_))))
                    (_g45844597_ _g45854600_)))))
        (_g45834635_ _stx4581_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4508_ _ht4509_)
      (let* ((_g45114528_
              (lambda (_g45124525_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45124525_)))
             (_g45104578_
              (lambda (_g45124531_)
                (if (gx#stx-pair? _g45124531_)
                    (let ((_e45154533_ (gx#stx-e _g45124531_)))
                      (let ((_hd45164536_ (##car _e45154533_))
                            (_tl45174538_ (##cdr _e45154533_)))
                        (if (gx#stx-pair? _tl45174538_)
                            (let ((_e45184541_ (gx#stx-e _tl45174538_)))
                              (let ((_hd45194544_ (##car _e45184541_))
                                    (_tl45204546_ (##cdr _e45184541_)))
                                (if (gx#stx-pair? _tl45204546_)
                                    (let ((_e45214549_
                                           (gx#stx-e _tl45204546_)))
                                      (let ((_hd45224552_ (##car _e45214549_))
                                            (_tl45234554_ (##cdr _e45214549_)))
                                        (if (gx#stx-null? _tl45234554_)
                                            ((lambda (_L4557_ _L4558_)
                                               (let* ((_bind4573_
                                                       (gx#resolve-identifier__0
                                                        _L4558_))
                                                      (_eid4575_
                                                       (if _bind4573_
                                                           (##structure-ref
                                                            _bind4573_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4558_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4509_
                                                    _eid4575_
                                                    _eid4575_)
                                                   (gxc#compile-e
                                                    _L4557_
                                                    _ht4509_))))
                                             _hd45224552_
                                             _hd45194544_)
                                            (_g45114528_ _g45124531_))))
                                    (_g45114528_ _g45124531_))))
                            (_g45114528_ _g45124531_))))
                    (_g45114528_ _g45124531_)))))
        (_g45104578_ _stx4508_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4470_)
      (let* ((_g44724482_
              (lambda (_g44734479_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44734479_)))
             (_g44714505_
              (lambda (_g44734485_)
                (if (gx#stx-pair? _g44734485_)
                    (let ((_e44754487_ (gx#stx-e _g44734485_)))
                      (let ((_hd44764490_ (##car _e44754487_))
                            (_tl44774492_ (##cdr _e44754487_)))
                        ((lambda (_L4495_) (ormap1 gxc#compile-e _L4495_))
                         _tl44774492_)))
                    (_g44724482_ _g44734485_)))))
        (_g44714505_ _stx4470_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4432_)
      (let* ((_g44344444_
              (lambda (_g44354441_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44354441_)))
             (_g44334467_
              (lambda (_g44354447_)
                (if (gx#stx-pair? _g44354447_)
                    (let ((_e44374449_ (gx#stx-e _g44354447_)))
                      (let ((_hd44384452_ (##car _e44374449_))
                            (_tl44394454_ (##cdr _e44374449_)))
                        ((lambda (_L4457_) (gxc#compile-e (last _L4457_)))
                         _tl44394454_)))
                    (_g44344444_ _g44354447_)))))
        (_g44334467_ _stx4432_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4365_)
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
                                               (gxc#compile-e _L4413_))
                                             _hd43784408_
                                             _hd43754400_)
                                            (_g43674384_ _g43684387_))))
                                    (_g43674384_ _g43684387_))))
                            (_g43674384_ _g43684387_))))
                    (_g43674384_ _g43684387_)))))
        (_g43664429_ _stx4365_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4298_)
      (let* ((_g43004317_
              (lambda (_g43014314_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43014314_)))
             (_g42994362_
              (lambda (_g43014320_)
                (if (gx#stx-pair? _g43014320_)
                    (let ((_e43044322_ (gx#stx-e _g43014320_)))
                      (let ((_hd43054325_ (##car _e43044322_))
                            (_tl43064327_ (##cdr _e43044322_)))
                        (if (gx#stx-pair? _tl43064327_)
                            (let ((_e43074330_ (gx#stx-e _tl43064327_)))
                              (let ((_hd43084333_ (##car _e43074330_))
                                    (_tl43094335_ (##cdr _e43074330_)))
                                (if (gx#stx-pair? _tl43094335_)
                                    (let ((_e43104338_
                                           (gx#stx-e _tl43094335_)))
                                      (let ((_hd43114341_ (##car _e43104338_))
                                            (_tl43124343_ (##cdr _e43104338_)))
                                        (if (gx#stx-null? _tl43124343_)
                                            ((lambda (_L4346_ _L4347_)
                                               (gxc#compile-e _L4346_))
                                             _hd43114341_
                                             _hd43084333_)
                                            (_g43004317_ _g43014320_))))
                                    (_g43004317_ _g43014320_))))
                            (_g43004317_ _g43014320_))))
                    (_g43004317_ _g43014320_)))))
        (_g42994362_ _stx4298_))))
  (define gxc#count-values-single% (lambda (_stx4296_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4214_)
      (let* ((_g42164235_
              (lambda (_g42174232_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42174232_)))
             (_g42154293_
              (lambda (_g42174238_)
                (if (gx#stx-pair? _g42174238_)
                    (let ((_e42194240_ (gx#stx-e _g42174238_)))
                      (let ((_hd42204243_ (##car _e42194240_))
                            (_tl42214245_ (##cdr _e42194240_)))
                        (if (gx#stx-pair/null? _tl42214245_)
                            (let ((_g14286_
                                   (gx#syntax-split-splice _tl42214245_ '0)))
                              (begin
                                (let ((_g14287_
                                       (if (##values? _g14286_)
                                           (##vector-length _g14286_)
                                           1)))
                                  (if (not (##fx= _g14287_ 2))
                                      (error "Context expects 2 values"
                                             _g14287_)))
                                (let ((_target42224248_
                                       (##vector-ref _g14286_ 0))
                                      (_tl42244250_ (##vector-ref _g14286_ 1)))
                                  (if (gx#stx-null? _tl42244250_)
                                      (letrec ((_loop42254253_
                                                (lambda (_hd42234256_
                                                         _expr42294258_)
                                                  (if (gx#stx-pair?
                                                       _hd42234256_)
                                                      (let ((_e42264261_
                                                             (gx#stx-e
                                                              _hd42234256_)))
                                                        (let ((_lp-hd42274264_
                                                               (##car _e42264261_))
                                                              (_lp-tl42284266_
                                                               (##cdr _e42264261_)))
                                                          (_loop42254253_
                                                           _lp-tl42284266_
                                                           (cons _lp-hd42274264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr42294258_))))
              (let ((_expr42304269_ (reverse _expr42294258_)))
                ((lambda (_L4272_)
                   (gxc#compile-e
                    (last (begin
                            '#!void
                            (foldr1 (lambda (_g42854288_ _g42864290_)
                                      (cons _g42854288_ _g42864290_))
                                    '()
                                    _L4272_)))))
                 _expr42304269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop42254253_ _target42224248_ '()))
                                      (_g42164235_ _g42174238_)))))
                            (_g42164235_ _g42174238_))))
                    (_g42164235_ _g42174238_)))))
        (_g42154293_ _stx4214_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4147_)
      (let* ((_g41494166_
              (lambda (_g41504163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41504163_)))
             (_g41484211_
              (lambda (_g41504169_)
                (if (gx#stx-pair? _g41504169_)
                    (let ((_e41534171_ (gx#stx-e _g41504169_)))
                      (let ((_hd41544174_ (##car _e41534171_))
                            (_tl41554176_ (##cdr _e41534171_)))
                        (if (gx#stx-pair? _tl41554176_)
                            (let ((_e41564179_ (gx#stx-e _tl41554176_)))
                              (let ((_hd41574182_ (##car _e41564179_))
                                    (_tl41584184_ (##cdr _e41564179_)))
                                (if (gx#stx-pair? _tl41584184_)
                                    (let ((_e41594187_
                                           (gx#stx-e _tl41584184_)))
                                      (let ((_hd41604190_ (##car _e41594187_))
                                            (_tl41614192_ (##cdr _e41594187_)))
                                        (if (gx#stx-null? _tl41614192_)
                                            ((lambda (_L4195_ _L4196_)
                                               (gxc#compile-e _L4195_))
                                             _hd41604190_
                                             _hd41574182_)
                                            (_g41494166_ _g41504169_))))
                                    (_g41494166_ _g41504169_))))
                            (_g41494166_ _g41504169_))))
                    (_g41494166_ _g41504169_)))))
        (_g41484211_ _stx4147_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4080_)
      (let* ((_g40824099_
              (lambda (_g40834096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40834096_)))
             (_g40814144_
              (lambda (_g40834102_)
                (if (gx#stx-pair? _g40834102_)
                    (let ((_e40864104_ (gx#stx-e _g40834102_)))
                      (let ((_hd40874107_ (##car _e40864104_))
                            (_tl40884109_ (##cdr _e40864104_)))
                        (if (gx#stx-pair? _tl40884109_)
                            (let ((_e40894112_ (gx#stx-e _tl40884109_)))
                              (let ((_hd40904115_ (##car _e40894112_))
                                    (_tl40914117_ (##cdr _e40894112_)))
                                (if (gx#stx-pair? _tl40914117_)
                                    (let ((_e40924120_
                                           (gx#stx-e _tl40914117_)))
                                      (let ((_hd40934123_ (##car _e40924120_))
                                            (_tl40944125_ (##cdr _e40924120_)))
                                        (if (gx#stx-null? _tl40944125_)
                                            ((lambda (_L4128_ _L4129_)
                                               (gxc#compile-e _L4128_))
                                             _hd40934123_
                                             _hd40904115_)
                                            (_g40824099_ _g40834102_))))
                                    (_g40824099_ _g40834102_))))
                            (_g40824099_ _g40834102_))))
                    (_g40824099_ _g40834102_)))))
        (_g40814144_ _stx4080_))))
  (define gxc#count-values-call%
    (lambda (_stx3947_)
      (let* ((___stx1422014221_ _stx3947_)
             (_g39503979_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1422014221_))))
        (let ((___kont1422214223_
               (lambda (_L4047_ _L4048_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g40694072_ _g40704074_)
                                     (cons _g40694072_ _g40704074_))
                                   '()
                                   _L4047_)))))
              (___kont1422614227_ (lambda () '#f)))
          (let ((___match1426514266_
                 (lambda (_e39543991_
                          _hd39553994_
                          _tl39563996_
                          _e39573999_
                          _hd39584002_
                          _tl39594004_
                          _e39604007_
                          _hd39614010_
                          _tl39624012_
                          _e39634015_
                          _hd39644018_
                          _tl39654020_
                          ___splice1422414225_
                          _target39664023_
                          _tl39684025_)
                   (letrec ((_loop39694028_
                             (lambda (_hd39674031_ _rand39734033_)
                               (if (gx#stx-pair? _hd39674031_)
                                   (let ((_e39704036_ (gx#stx-e _hd39674031_)))
                                     (let ((_lp-tl39724041_
                                            (##cdr _e39704036_))
                                           (_lp-hd39714039_
                                            (##car _e39704036_)))
                                       (_loop39694028_
                                        _lp-tl39724041_
                                        (cons _lp-hd39714039_
                                              _rand39734033_))))
                                   (let ((_rand39744044_
                                          (reverse _rand39734033_)))
                                     (let ((_L4047_ _rand39744044_)
                                           (_L4048_ _hd39644018_))
                                       (if (gx#free-identifier=?
                                            _L4048_
                                            'values)
                                           (___kont1422214223_ _L4047_ _L4048_)
                                           (___kont1422614227_))))))))
                     (_loop39694028_ _target39664023_ '())))))
            (if (gx#stx-pair? ___stx1422014221_)
                (let ((_e39543991_ (gx#stx-e ___stx1422014221_)))
                  (let ((_tl39563996_ (##cdr _e39543991_))
                        (_hd39553994_ (##car _e39543991_)))
                    (if (gx#stx-pair? _tl39563996_)
                        (let ((_e39573999_ (gx#stx-e _tl39563996_)))
                          (let ((_tl39594004_ (##cdr _e39573999_))
                                (_hd39584002_ (##car _e39573999_)))
                            (if (gx#stx-pair? _hd39584002_)
                                (let ((_e39604007_ (gx#stx-e _hd39584002_)))
                                  (let ((_tl39624012_ (##cdr _e39604007_))
                                        (_hd39614010_ (##car _e39604007_)))
                                    (if (gx#identifier? _hd39614010_)
                                        (if (gx#stx-eq? '%#ref _hd39614010_)
                                            (if (gx#stx-pair? _tl39624012_)
                                                (let ((_e39634015_
                                                       (gx#stx-e
                                                        _tl39624012_)))
                                                  (let ((_tl39654020_
                                                         (##cdr _e39634015_))
                                                        (_hd39644018_
                                                         (##car _e39634015_)))
                                                    (if (gx#stx-null?
                                                         _tl39654020_)
                                                        (if (gx#stx-pair/null?
                                                             _tl39594004_)
                                                            (let ((___splice1422414225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl39594004_ '0)))
                      (let ((_tl39684025_
                             (##vector-ref ___splice1422414225_ '1))
                            (_target39664023_
                             (##vector-ref ___splice1422414225_ '0)))
                        (if (gx#stx-null? _tl39684025_)
                            (___match1426514266_
                             _e39543991_
                             _hd39553994_
                             _tl39563996_
                             _e39573999_
                             _hd39584002_
                             _tl39594004_
                             _e39604007_
                             _hd39614010_
                             _tl39624012_
                             _e39634015_
                             _hd39644018_
                             _tl39654020_
                             ___splice1422414225_
                             _target39664023_
                             _tl39684025_)
                            (___kont1422614227_))))
                    (___kont1422614227_))
                (___kont1422614227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1422614227_))
                                            (___kont1422614227_))
                                        (___kont1422614227_))))
                                (___kont1422614227_))))
                        (___kont1422614227_))))
                (___kont1422614227_)))))))
  (define gxc#count-values-if%
    (lambda (_stx3851_)
      (let* ((_g38533874_
              (lambda (_g38543871_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38543871_)))
             (_g38523944_
              (lambda (_g38543877_)
                (if (gx#stx-pair? _g38543877_)
                    (let ((_e38583879_ (gx#stx-e _g38543877_)))
                      (let ((_hd38593882_ (##car _e38583879_))
                            (_tl38603884_ (##cdr _e38583879_)))
                        (if (gx#stx-pair? _tl38603884_)
                            (let ((_e38613887_ (gx#stx-e _tl38603884_)))
                              (let ((_hd38623890_ (##car _e38613887_))
                                    (_tl38633892_ (##cdr _e38613887_)))
                                (if (gx#stx-pair? _tl38633892_)
                                    (let ((_e38643895_
                                           (gx#stx-e _tl38633892_)))
                                      (let ((_hd38653898_ (##car _e38643895_))
                                            (_tl38663900_ (##cdr _e38643895_)))
                                        (if (gx#stx-pair? _tl38663900_)
                                            (let ((_e38673903_
                                                   (gx#stx-e _tl38663900_)))
                                              (let ((_hd38683906_
                                                     (##car _e38673903_))
                                                    (_tl38693908_
                                                     (##cdr _e38673903_)))
                                                (if (gx#stx-null? _tl38693908_)
                                                    ((lambda (_L3911_
                                                              _L3912_
                                                              _L3913_)
                                                       (let ((_c139303932_
                                                              (gxc#compile-e
                                                               _L3912_)))
                                                         (if _c139303932_
                                                             (let* ((_c13935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c139303932_)
                            (_c239363938_ (gxc#compile-e _L3911_)))
                       (if _c239363938_
                           (let ((_c23941_ _c239363938_))
                             (if (fx= _c13935_ _c23941_) _c13935_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38683906_
                                                     _hd38653898_
                                                     _hd38623890_)
                                                    (_g38533874_
                                                     _g38543877_))))
                                            (_g38533874_ _g38543877_))))
                                    (_g38533874_ _g38543877_))))
                            (_g38533874_ _g38543877_))))
                    (_g38533874_ _g38543877_)))))
        (_g38523944_ _stx3851_)))))
