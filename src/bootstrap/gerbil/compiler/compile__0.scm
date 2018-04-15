(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#current-compile-identifiers (make-parameter '#f))
  (define gxc#current-compile-boolean-context (make-parameter '#f))
  (define gxc#make-bound-identifier-table
    (lambda ()
      (letrec ((_hash-e15009_
                (lambda (_id15011_) (symbol-hash (gx#stx-e _id15011_)))))
        (make-table 'test: gx#bound-identifier=? 'hash: _hash-e15009_))))
  (define gxc#compile-e
    (lambda (_stx14964_ . _args14965_)
      (let* ((_g1496714977_
              (lambda (_g1496814974_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1496814974_)))
             (_g1496615005_
              (lambda (_g1496814980_)
                (if (gx#stx-pair? _g1496814980_)
                    (let ((_e1497014982_ (gx#stx-e _g1496814980_)))
                      (let ((_hd1497114985_ (##car _e1497014982_))
                            (_tl1497214987_ (##cdr _e1497014982_)))
                        ((lambda (_L14990_)
                           (let ((_$e15000_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L14990_)
                                   '#f)))
                             (if _$e15000_
                                 ((lambda (_method15003_)
                                    (apply _method15003_
                                           _stx14964_
                                           _args14965_))
                                  _$e15000_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx14964_
                                  _L14990_))))
                         _hd1497114985_)))
                    (_g1496714977_ _g1496814980_)))))
        (_g1496615005_ _stx14964_))))
  (define gxc#&void-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14961_ (make-table 'test: eq?)))
         (table-set! _tbl14961_ '%#begin-annotation void)
         (table-set! _tbl14961_ '%#lambda void)
         (table-set! _tbl14961_ '%#case-lambda void)
         (table-set! _tbl14961_ '%#let-values void)
         (table-set! _tbl14961_ '%#letrec-values void)
         (table-set! _tbl14961_ '%#letrec*-values void)
         (table-set! _tbl14961_ '%#quote void)
         (table-set! _tbl14961_ '%#quote-syntax void)
         (table-set! _tbl14961_ '%#call void)
         (table-set! _tbl14961_ '%#if void)
         (table-set! _tbl14961_ '%#ref void)
         (table-set! _tbl14961_ '%#set! void)
         (table-set! _tbl14961_ '%#struct-instance? void)
         (table-set! _tbl14961_ '%#struct-direct-instance? void)
         (table-set! _tbl14961_ '%#struct-ref void)
         (table-set! _tbl14961_ '%#struct-set! void)
         (table-set! _tbl14961_ '%#struct-direct-ref void)
         (table-set! _tbl14961_ '%#struct-direct-set! void)
         (table-set! _tbl14961_ '%#struct-unchecked-ref void)
         (table-set! _tbl14961_ '%#struct-unchecked-set! void)
         _tbl14961_))))
  (define gxc#&void-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14957_ (make-table 'test: eq?)))
         (table-set! _tbl14957_ '%#begin void)
         (table-set! _tbl14957_ '%#begin-syntax void)
         (table-set! _tbl14957_ '%#begin-foreign void)
         (table-set! _tbl14957_ '%#module void)
         (table-set! _tbl14957_ '%#import void)
         (table-set! _tbl14957_ '%#export void)
         (table-set! _tbl14957_ '%#provide void)
         (table-set! _tbl14957_ '%#extern void)
         (table-set! _tbl14957_ '%#define-values void)
         (table-set! _tbl14957_ '%#define-syntax void)
         (table-set! _tbl14957_ '%#define-alias void)
         (table-set! _tbl14957_ '%#declare void)
         _tbl14957_))))
  (define gxc#&void
    (##make-promise
     (lambda ()
       (let ((_tbl14953_ (make-table 'test: eq?)))
         (hash-copy! _tbl14953_ (force gxc#&void-special-form))
         (hash-copy! _tbl14953_ (force gxc#&void-expression))
         _tbl14953_))))
  (define gxc#&false-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14949_ (make-table 'test: eq?)))
         (table-set! _tbl14949_ '%#begin-annotation false)
         (table-set! _tbl14949_ '%#lambda false)
         (table-set! _tbl14949_ '%#case-lambda false)
         (table-set! _tbl14949_ '%#let-values false)
         (table-set! _tbl14949_ '%#letrec-values false)
         (table-set! _tbl14949_ '%#letrec*-values false)
         (table-set! _tbl14949_ '%#quote false)
         (table-set! _tbl14949_ '%#quote-syntax false)
         (table-set! _tbl14949_ '%#call false)
         (table-set! _tbl14949_ '%#if false)
         (table-set! _tbl14949_ '%#ref false)
         (table-set! _tbl14949_ '%#set! false)
         (table-set! _tbl14949_ '%#struct-instance? false)
         (table-set! _tbl14949_ '%#struct-direct-instance? false)
         (table-set! _tbl14949_ '%#struct-ref false)
         (table-set! _tbl14949_ '%#struct-set! false)
         (table-set! _tbl14949_ '%#struct-direct-ref false)
         (table-set! _tbl14949_ '%#struct-direct-set! false)
         (table-set! _tbl14949_ '%#struct-unchecked-ref false)
         (table-set! _tbl14949_ '%#struct-unchecked-set! false)
         _tbl14949_))))
  (define gxc#&false-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14945_ (make-table 'test: eq?)))
         (table-set! _tbl14945_ '%#begin false)
         (table-set! _tbl14945_ '%#begin-syntax false)
         (table-set! _tbl14945_ '%#begin-foreign false)
         (table-set! _tbl14945_ '%#module false)
         (table-set! _tbl14945_ '%#import false)
         (table-set! _tbl14945_ '%#export false)
         (table-set! _tbl14945_ '%#provide false)
         (table-set! _tbl14945_ '%#extern false)
         (table-set! _tbl14945_ '%#define-values false)
         (table-set! _tbl14945_ '%#define-syntax false)
         (table-set! _tbl14945_ '%#define-alias false)
         (table-set! _tbl14945_ '%#declare false)
         _tbl14945_))))
  (define gxc#&false
    (##make-promise
     (lambda ()
       (let ((_tbl14941_ (make-table 'test: eq?)))
         (hash-copy! _tbl14941_ (force gxc#&false-special-form))
         (hash-copy! _tbl14941_ (force gxc#&false-expression))
         _tbl14941_))))
  (define gxc#&collect-bindings
    (##make-promise
     (lambda ()
       (let ((_tbl14937_ (make-table 'test: eq?)))
         (hash-copy! _tbl14937_ (force gxc#&void-expression))
         (hash-copy! _tbl14937_ (force gxc#&void-special-form))
         (table-set! _tbl14937_ '%#begin gxc#collect-begin%)
         (table-set! _tbl14937_ '%#begin-syntax gxc#collect-begin-syntax%)
         (table-set! _tbl14937_ '%#module gxc#collect-module%)
         (table-set!
          _tbl14937_
          '%#define-values
          gxc#collect-bindings-define-values%)
         (table-set!
          _tbl14937_
          '%#define-syntax
          gxc#collect-bindings-define-syntax%)
         _tbl14937_))))
  (define gxc#apply-collect-bindings
    (lambda (_stx14930_ . _args14932_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14930_ _args14932_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (##make-promise
     (lambda ()
       (let ((_tbl14927_ (make-table 'test: eq?)))
         (hash-copy! _tbl14927_ (force gxc#&void))
         (table-set! _tbl14927_ '%#begin gxc#collect-begin%)
         (table-set! _tbl14927_ '%#module gxc#lift-modules-module%)
         _tbl14927_))))
  (define gxc#apply-lift-modules
    (lambda (_stx14920_ . _args14922_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14920_ _args14922_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (##make-promise
     (lambda ()
       (let ((_tbl14917_ (make-table 'test: eq?)))
         (table-set! _tbl14917_ '%#begin gxc#find-runtime-begin%)
         (table-set! _tbl14917_ '%#begin-syntax false)
         (table-set! _tbl14917_ '%#begin-foreign true)
         (table-set! _tbl14917_ '%#begin-annotation true)
         (table-set! _tbl14917_ '%#module false)
         (table-set! _tbl14917_ '%#import false)
         (table-set! _tbl14917_ '%#export false)
         (table-set! _tbl14917_ '%#provide false)
         (table-set! _tbl14917_ '%#extern false)
         (table-set! _tbl14917_ '%#define-values true)
         (table-set! _tbl14917_ '%#define-syntax false)
         (table-set! _tbl14917_ '%#define-alias false)
         (table-set! _tbl14917_ '%#declare false)
         (table-set! _tbl14917_ '%#lambda true)
         (table-set! _tbl14917_ '%#case-lambda true)
         (table-set! _tbl14917_ '%#let-values true)
         (table-set! _tbl14917_ '%#letrec-values true)
         (table-set! _tbl14917_ '%#letrec*-values true)
         (table-set! _tbl14917_ '%#quote true)
         (table-set! _tbl14917_ '%#call true)
         (table-set! _tbl14917_ '%#if true)
         (table-set! _tbl14917_ '%#ref true)
         (table-set! _tbl14917_ '%#set! true)
         (table-set! _tbl14917_ '%#struct-instance? true)
         (table-set! _tbl14917_ '%#struct-direct-instance? true)
         (table-set! _tbl14917_ '%#struct-ref true)
         (table-set! _tbl14917_ '%#struct-set! true)
         (table-set! _tbl14917_ '%#struct-direct-ref true)
         (table-set! _tbl14917_ '%#struct-direct-set! true)
         (table-set! _tbl14917_ '%#struct-unchecked-ref true)
         (table-set! _tbl14917_ '%#struct-unchecked-set! true)
         _tbl14917_))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx14910_ . _args14912_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14910_ _args14912_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14907_ (make-table 'test: eq?)))
         (hash-copy! _tbl14907_ (force gxc#&false))
         (table-set! _tbl14907_ '%#begin gxc#find-lambda-expression-begin%)
         (table-set!
          _tbl14907_
          '%#begin-annotation
          gxc#find-lambda-expression-begin-annotation%)
         (table-set! _tbl14907_ '%#lambda values)
         (table-set! _tbl14907_ '%#case-lambda values)
         (table-set!
          _tbl14907_
          '%#let-values
          gxc#find-lambda-expression-let-values%)
         (table-set!
          _tbl14907_
          '%#letrec-values
          gxc#find-lambda-expression-let-values%)
         (table-set!
          _tbl14907_
          '%#letrec*-values
          gxc#find-lambda-expression-let-values%)
         _tbl14907_))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx14900_ . _args14902_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14900_ _args14902_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (##make-promise
     (lambda ()
       (let ((_tbl14897_ (make-table 'test: eq?)))
         (hash-copy! _tbl14897_ (force gxc#&false-expression))
         (table-set! _tbl14897_ '%#begin gxc#count-values-begin%)
         (table-set!
          _tbl14897_
          '%#begin-annotation
          gxc#count-values-begin-annotation%)
         (table-set! _tbl14897_ '%#lambda gxc#count-values-single%)
         (table-set! _tbl14897_ '%#case-lambda gxc#count-values-single%)
         (table-set! _tbl14897_ '%#let-values gxc#count-values-let-values%)
         (table-set! _tbl14897_ '%#letrec-values gxc#count-values-let-values%)
         (table-set! _tbl14897_ '%#letrec*-values gxc#count-values-let-values%)
         (table-set! _tbl14897_ '%#quote gxc#count-values-single%)
         (table-set! _tbl14897_ '%#call gxc#count-values-call%)
         (table-set! _tbl14897_ '%#if gxc#count-values-if%)
         _tbl14897_))))
  (define gxc#apply-count-values
    (lambda (_stx14890_ . _args14892_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14890_ _args14892_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (##make-promise
     (lambda ()
       (let ((_tbl14887_ (make-table 'test: eq?)))
         (table-set! _tbl14887_ '%#begin gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#begin-syntax gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#begin-foreign gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#begin-annotation gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#module gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#import gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#export gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#provide gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#extern gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#define-values gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#define-syntax gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#define-alias gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#declare gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#lambda gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#case-lambda gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#let-values gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#letrec-values gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#letrec*-values gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#quote gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#call gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#if gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#ref gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#set! gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#struct-instance? gxc#generate-runtime-empty)
         (table-set!
          _tbl14887_
          '%#struct-direct-instance?
          gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#struct-ref gxc#generate-runtime-empty)
         (table-set! _tbl14887_ '%#struct-set! gxc#generate-runtime-empty)
         (table-set!
          _tbl14887_
          '%#struct-direct-ref
          gxc#generate-runtime-empty)
         (table-set!
          _tbl14887_
          '%#struct-direct-set!
          gxc#generate-runtime-empty)
         (table-set!
          _tbl14887_
          '%#struct-unchecked-ref
          gxc#generate-runtime-empty)
         (table-set!
          _tbl14887_
          '%#struct-unchecked-set!
          gxc#generate-runtime-empty)
         _tbl14887_))))
  (define gxc#&generate-loader
    (##make-promise
     (lambda ()
       (let ((_tbl14883_ (make-table 'test: eq?)))
         (hash-copy! _tbl14883_ (force gxc#&generate-runtime-empty))
         (table-set! _tbl14883_ '%#begin gxc#generate-runtime-begin%)
         (table-set! _tbl14883_ '%#import gxc#generate-runtime-loader-import%)
         _tbl14883_))))
  (define gxc#apply-generate-loader
    (lambda (_stx14876_ . _args14878_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14876_ _args14878_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (##make-promise
     (lambda ()
       (let ((_tbl14873_ (make-table 'test: eq?)))
         (hash-copy! _tbl14873_ (force gxc#&generate-runtime-empty))
         (table-set! _tbl14873_ '%#begin gxc#generate-runtime-begin%)
         (table-set!
          _tbl14873_
          '%#begin-foreign
          gxc#generate-runtime-begin-foreign%)
         (table-set!
          _tbl14873_
          '%#begin-annotation
          gxc#generate-runtime-begin-annotation%)
         (table-set!
          _tbl14873_
          '%#define-values
          gxc#generate-runtime-define-values%)
         (table-set! _tbl14873_ '%#declare gxc#generate-runtime-declare%)
         (table-set! _tbl14873_ '%#lambda gxc#generate-runtime-lambda%)
         (table-set!
          _tbl14873_
          '%#case-lambda
          gxc#generate-runtime-case-lambda%)
         (table-set! _tbl14873_ '%#let-values gxc#generate-runtime-let-values%)
         (table-set!
          _tbl14873_
          '%#letrec-values
          gxc#generate-runtime-letrec-values%)
         (table-set!
          _tbl14873_
          '%#letrec*-values
          gxc#generate-runtime-letrec*-values%)
         (table-set! _tbl14873_ '%#quote gxc#generate-runtime-quote%)
         (table-set!
          _tbl14873_
          '%#quote-syntax
          gxc#generate-runtime-quote-syntax%)
         (table-set! _tbl14873_ '%#call gxc#generate-runtime-call%)
         (table-set! _tbl14873_ '%#if gxc#generate-runtime-if%)
         (table-set! _tbl14873_ '%#ref gxc#generate-runtime-ref%)
         (table-set! _tbl14873_ '%#set! gxc#generate-runtime-setq%)
         (table-set!
          _tbl14873_
          '%#struct-instance?
          gxc#generate-runtime-struct-instancep%)
         (table-set!
          _tbl14873_
          '%#struct-direct-instance?
          gxc#generate-runtime-struct-direct-instancep%)
         (table-set! _tbl14873_ '%#struct-ref gxc#generate-runtime-struct-ref%)
         (table-set!
          _tbl14873_
          '%#struct-set!
          gxc#generate-runtime-struct-setq%)
         (table-set!
          _tbl14873_
          '%#struct-direct-ref
          gxc#generate-runtime-struct-direct-ref%)
         (table-set!
          _tbl14873_
          '%#struct-direct-set!
          gxc#generate-runtime-struct-direct-setq%)
         (table-set!
          _tbl14873_
          '%#struct-unchecked-ref
          gxc#generate-runtime-struct-unchecked-ref%)
         (table-set!
          _tbl14873_
          '%#struct-unchecked-set!
          gxc#generate-runtime-struct-unchecked-setq%)
         _tbl14873_))))
  (define gxc#apply-generate-runtime
    (lambda (_stx14866_ . _args14868_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14866_ _args14868_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14863_ (make-table 'test: eq?)))
         (hash-copy! _tbl14863_ (force gxc#&generate-runtime))
         (table-set!
          _tbl14863_
          '%#define-runtime
          gxc#generate-runtime-phi-define-runtime%)
         _tbl14863_))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx14856_ . _args14858_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14856_ _args14858_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (##make-promise
     (lambda ()
       (let ((_tbl14853_ (make-table 'test: eq?)))
         (table-set! _tbl14853_ '%#begin gxc#collect-begin%)
         (table-set!
          _tbl14853_
          '%#begin-annotation
          gxc#collect-begin-annotation%)
         (table-set! _tbl14853_ '%#lambda gxc#collect-body-lambda%)
         (table-set! _tbl14853_ '%#case-lambda gxc#collect-body-case-lambda%)
         (table-set! _tbl14853_ '%#let-values gxc#collect-body-let-values%)
         (table-set! _tbl14853_ '%#letrec-values gxc#collect-body-let-values%)
         (table-set! _tbl14853_ '%#letrec*-values gxc#collect-body-let-values%)
         (table-set! _tbl14853_ '%#quote void)
         (table-set! _tbl14853_ '%#quote-syntax void)
         (table-set! _tbl14853_ '%#call gxc#collect-operands)
         (table-set! _tbl14853_ '%#if gxc#collect-operands)
         (table-set! _tbl14853_ '%#ref gxc#collect-refs-ref%)
         (table-set! _tbl14853_ '%#set! gxc#collect-refs-setq%)
         (table-set! _tbl14853_ '%#struct-instance? gxc#collect-operands)
         (table-set!
          _tbl14853_
          '%#struct-direct-instance?
          gxc#collect-operands)
         (table-set! _tbl14853_ '%#struct-ref gxc#collect-operands)
         (table-set! _tbl14853_ '%#struct-set! gxc#collect-operands)
         (table-set! _tbl14853_ '%#struct-direct-ref gxc#collect-operands)
         (table-set! _tbl14853_ '%#struct-direct-set! gxc#collect-operands)
         (table-set! _tbl14853_ '%#struct-unchecked-ref gxc#collect-operands)
         (table-set! _tbl14853_ '%#struct-unchecked-set! gxc#collect-operands)
         _tbl14853_))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx14846_ . _args14848_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14846_ _args14848_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (##make-promise
     (lambda ()
       (let ((_tbl14843_ (make-table 'test: eq?)))
         (hash-copy! _tbl14843_ (force gxc#&void-expression))
         (table-set! _tbl14843_ '%#begin gxc#generate-meta-begin%)
         (table-set!
          _tbl14843_
          '%#begin-syntax
          gxc#generate-meta-begin-syntax%)
         (table-set! _tbl14843_ '%#module gxc#generate-meta-module%)
         (table-set! _tbl14843_ '%#import gxc#generate-meta-import%)
         (table-set! _tbl14843_ '%#export gxc#generate-meta-export%)
         (table-set! _tbl14843_ '%#provide gxc#generate-meta-provide%)
         (table-set! _tbl14843_ '%#extern gxc#generate-meta-extern%)
         (table-set!
          _tbl14843_
          '%#define-values
          gxc#generate-meta-define-values%)
         (table-set!
          _tbl14843_
          '%#define-syntax
          gxc#generate-meta-define-syntax%)
         (table-set!
          _tbl14843_
          '%#define-alias
          gxc#generate-meta-define-alias%)
         (table-set! _tbl14843_ '%#begin-foreign void)
         (table-set! _tbl14843_ '%#declare void)
         _tbl14843_))))
  (define gxc#apply-generate-meta
    (lambda (_stx14836_ . _args14838_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14836_ _args14838_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14833_ (make-table 'test: eq?)))
         (table-set! _tbl14833_ '%#begin gxc#generate-meta-begin%)
         (table-set!
          _tbl14833_
          '%#begin-syntax
          gxc#generate-meta-begin-syntax%)
         (table-set!
          _tbl14833_
          '%#define-syntax
          gxc#generate-meta-define-syntax%)
         (table-set!
          _tbl14833_
          '%#define-alias
          gxc#generate-meta-define-alias%)
         (table-set!
          _tbl14833_
          '%#define-values
          gxc#generate-meta-phi-define-values%)
         (table-set! _tbl14833_ '%#begin-annotation gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#lambda gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#case-lambda gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#let-values gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#letrec-values gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#letrec*-values gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#quote gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#quote-syntax gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#call gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#if gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#ref gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#set! gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#struct-instance? gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14833_
          '%#struct-direct-instance?
          gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#struct-ref gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#struct-set! gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14833_
          '%#struct-direct-ref
          gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14833_
          '%#struct-direct-set!
          gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14833_
          '%#struct-unchecked-ref
          gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14833_
          '%#struct-unchecked-set!
          gxc#generate-meta-phi-expr)
         (table-set! _tbl14833_ '%#declare void)
         _tbl14833_))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx14826_ . _args14828_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14826_ _args14828_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx14783_ . _args14784_)
      (let* ((_g1478614796_
              (lambda (_g1478714793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1478714793_)))
             (_g1478514823_
              (lambda (_g1478714799_)
                (if (gx#stx-pair? _g1478714799_)
                    (let ((_e1478914801_ (gx#stx-e _g1478714799_)))
                      (let ((_hd1479014804_ (##car _e1478914801_))
                            (_tl1479114806_ (##cdr _e1478914801_)))
                        ((lambda (_L14809_)
                           (for-each
                            (lambda (_g1481814820_)
                              (apply gxc#compile-e _g1481814820_ _args14784_))
                            (gx#stx-e _L14809_)))
                         _tl1479114806_)))
                    (_g1478614796_ _g1478714799_)))))
        (_g1478514823_ _stx14783_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx14779_ . _args14780_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx14779_ _args14780_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx14721_ . _args14722_)
      (let* ((_g1472414738_
              (lambda (_g1472514735_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1472514735_)))
             (_g1472314776_
              (lambda (_g1472514741_)
                (if (gx#stx-pair? _g1472514741_)
                    (let ((_e1472814743_ (gx#stx-e _g1472514741_)))
                      (let ((_hd1472914746_ (##car _e1472814743_))
                            (_tl1473014748_ (##cdr _e1472814743_)))
                        (if (gx#stx-pair? _tl1473014748_)
                            (let ((_e1473114751_ (gx#stx-e _tl1473014748_)))
                              (let ((_hd1473214754_ (##car _e1473114751_))
                                    (_tl1473314756_ (##cdr _e1473114751_)))
                                ((lambda (_L14759_ _L14760_)
                                   (let ((_ctx14773_
                                          (gx#syntax-local-e__0 _L14760_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx14773_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args14722_))
                                      gx#current-expander-context
                                      _ctx14773_)))
                                 _tl1473314756_
                                 _hd1473214754_)))
                            (_g1472414738_ _g1472514741_))))
                    (_g1472414738_ _g1472514741_)))))
        (_g1472314776_ _stx14721_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx14653_ . _args14654_)
      (let* ((_g1465614673_
              (lambda (_g1465714670_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1465714670_)))
             (_g1465514718_
              (lambda (_g1465714676_)
                (if (gx#stx-pair? _g1465714676_)
                    (let ((_e1466014678_ (gx#stx-e _g1465714676_)))
                      (let ((_hd1466114681_ (##car _e1466014678_))
                            (_tl1466214683_ (##cdr _e1466014678_)))
                        (if (gx#stx-pair? _tl1466214683_)
                            (let ((_e1466314686_ (gx#stx-e _tl1466214683_)))
                              (let ((_hd1466414689_ (##car _e1466314686_))
                                    (_tl1466514691_ (##cdr _e1466314686_)))
                                (if (gx#stx-pair? _tl1466514691_)
                                    (let ((_e1466614694_
                                           (gx#stx-e _tl1466514691_)))
                                      (let ((_hd1466714697_
                                             (##car _e1466614694_))
                                            (_tl1466814699_
                                             (##cdr _e1466614694_)))
                                        (if (gx#stx-null? _tl1466814699_)
                                            ((lambda (_L14702_ _L14703_)
                                               (apply gxc#compile-e
                                                      _L14702_
                                                      _args14654_))
                                             _hd1466714697_
                                             _hd1466414689_)
                                            (_g1465614673_ _g1465714676_))))
                                    (_g1465614673_ _g1465714676_))))
                            (_g1465614673_ _g1465714676_))))
                    (_g1465614673_ _g1465714676_)))))
        (_g1465514718_ _stx14653_))))
  (define gxc#collect-define-values%
    (lambda (_stx14585_ . _args14586_)
      (let* ((_g1458814605_
              (lambda (_g1458914602_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1458914602_)))
             (_g1458714650_
              (lambda (_g1458914608_)
                (if (gx#stx-pair? _g1458914608_)
                    (let ((_e1459214610_ (gx#stx-e _g1458914608_)))
                      (let ((_hd1459314613_ (##car _e1459214610_))
                            (_tl1459414615_ (##cdr _e1459214610_)))
                        (if (gx#stx-pair? _tl1459414615_)
                            (let ((_e1459514618_ (gx#stx-e _tl1459414615_)))
                              (let ((_hd1459614621_ (##car _e1459514618_))
                                    (_tl1459714623_ (##cdr _e1459514618_)))
                                (if (gx#stx-pair? _tl1459714623_)
                                    (let ((_e1459814626_
                                           (gx#stx-e _tl1459714623_)))
                                      (let ((_hd1459914629_
                                             (##car _e1459814626_))
                                            (_tl1460014631_
                                             (##cdr _e1459814626_)))
                                        (if (gx#stx-null? _tl1460014631_)
                                            ((lambda (_L14634_ _L14635_)
                                               (apply gxc#compile-e
                                                      _L14634_
                                                      _args14586_))
                                             _hd1459914629_
                                             _hd1459614621_)
                                            (_g1458814605_ _g1458914608_))))
                                    (_g1458814605_ _g1458914608_))))
                            (_g1458814605_ _g1458914608_))))
                    (_g1458814605_ _g1458914608_)))))
        (_g1458714650_ _stx14585_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx14516_ . _args14517_)
      (let* ((_g1451914536_
              (lambda (_g1452014533_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1452014533_)))
             (_g1451814582_
              (lambda (_g1452014539_)
                (if (gx#stx-pair? _g1452014539_)
                    (let ((_e1452314541_ (gx#stx-e _g1452014539_)))
                      (let ((_hd1452414544_ (##car _e1452314541_))
                            (_tl1452514546_ (##cdr _e1452314541_)))
                        (if (gx#stx-pair? _tl1452514546_)
                            (let ((_e1452614549_ (gx#stx-e _tl1452514546_)))
                              (let ((_hd1452714552_ (##car _e1452614549_))
                                    (_tl1452814554_ (##cdr _e1452614549_)))
                                (if (gx#stx-pair? _tl1452814554_)
                                    (let ((_e1452914557_
                                           (gx#stx-e _tl1452814554_)))
                                      (let ((_hd1453014560_
                                             (##car _e1452914557_))
                                            (_tl1453114562_
                                             (##cdr _e1452914557_)))
                                        (if (gx#stx-null? _tl1453114562_)
                                            ((lambda (_L14565_ _L14566_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L14565_
                                                         _args14517_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1453014560_
                                             _hd1452714552_)
                                            (_g1451914536_ _g1452014539_))))
                                    (_g1451914536_ _g1452014539_))))
                            (_g1451914536_ _g1452014539_))))
                    (_g1451914536_ _g1452014539_)))))
        (_g1451814582_ _stx14516_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx14448_ . _args14449_)
      (let* ((_g1445114468_
              (lambda (_g1445214465_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1445214465_)))
             (_g1445014513_
              (lambda (_g1445214471_)
                (if (gx#stx-pair? _g1445214471_)
                    (let ((_e1445514473_ (gx#stx-e _g1445214471_)))
                      (let ((_hd1445614476_ (##car _e1445514473_))
                            (_tl1445714478_ (##cdr _e1445514473_)))
                        (if (gx#stx-pair? _tl1445714478_)
                            (let ((_e1445814481_ (gx#stx-e _tl1445714478_)))
                              (let ((_hd1445914484_ (##car _e1445814481_))
                                    (_tl1446014486_ (##cdr _e1445814481_)))
                                (if (gx#stx-pair? _tl1446014486_)
                                    (let ((_e1446114489_
                                           (gx#stx-e _tl1446014486_)))
                                      (let ((_hd1446214492_
                                             (##car _e1446114489_))
                                            (_tl1446314494_
                                             (##cdr _e1446114489_)))
                                        (if (gx#stx-null? _tl1446314494_)
                                            ((lambda (_L14497_ _L14498_)
                                               (apply gxc#compile-e
                                                      _L14497_
                                                      _args14449_))
                                             _hd1446214492_
                                             _hd1445914484_)
                                            (_g1445114468_ _g1445214471_))))
                                    (_g1445114468_ _g1445214471_))))
                            (_g1445114468_ _g1445214471_))))
                    (_g1445114468_ _g1445214471_)))))
        (_g1445014513_ _stx14448_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx14330_ . _args14331_)
      (let* ((_g1433314361_
              (lambda (_g1433414358_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1433414358_)))
             (_g1433214445_
              (lambda (_g1433414364_)
                (if (gx#stx-pair? _g1433414364_)
                    (let ((_e1433714366_ (gx#stx-e _g1433414364_)))
                      (let ((_hd1433814369_ (##car _e1433714366_))
                            (_tl1433914371_ (##cdr _e1433714366_)))
                        (if (gx#stx-pair/null? _tl1433914371_)
                            (let ((_g16371_
                                   (gx#syntax-split-splice _tl1433914371_ '0)))
                              (begin
                                (let ((_g16372_
                                       (if (##values? _g16371_)
                                           (##vector-length _g16371_)
                                           1)))
                                  (if (not (##fx= _g16372_ 2))
                                      (error "Context expects 2 values"
                                             _g16372_)))
                                (let ((_target1434014374_
                                       (##vector-ref _g16371_ 0))
                                      (_tl1434214376_
                                       (##vector-ref _g16371_ 1)))
                                  (if (gx#stx-null? _tl1434214376_)
                                      (letrec ((_loop1434314379_
                                                (lambda (_hd1434114382_
                                                         _body1434714384_
                                                         _hd1434814386_)
                                                  (if (gx#stx-pair?
                                                       _hd1434114382_)
                                                      (let ((_e1434414389_
                                                             (gx#stx-e
                                                              _hd1434114382_)))
                                                        (let ((_lp-hd1434514392_
                                                               (##car _e1434414389_))
                                                              (_lp-tl1434614394_
                                                               (##cdr _e1434414389_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1434514392_)
                                                              (let ((_e1435114397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1434514392_)))
                        (let ((_hd1435214400_ (##car _e1435114397_))
                              (_tl1435314402_ (##cdr _e1435114397_)))
                          (if (gx#stx-pair? _tl1435314402_)
                              (let ((_e1435414405_ (gx#stx-e _tl1435314402_)))
                                (let ((_hd1435514408_ (##car _e1435414405_))
                                      (_tl1435614410_ (##cdr _e1435414405_)))
                                  (if (gx#stx-null? _tl1435614410_)
                                      (_loop1434314379_
                                       _lp-tl1434614394_
                                       (cons _hd1435514408_ _body1434714384_)
                                       (cons _hd1435214400_ _hd1434814386_))
                                      (_g1433314361_ _g1433414364_))))
                              (_g1433314361_ _g1433414364_))))
                      (_g1433314361_ _g1433414364_))))
              (let ((_body1434914413_ (reverse _body1434714384_))
                    (_hd1435014415_ (reverse _hd1434814386_)))
                ((lambda (_L14418_ _L14419_)
                   (for-each
                    (lambda (_g1443314435_)
                      (apply gxc#compile-e _g1443314435_ _args14331_))
                    (foldr1 (lambda (_g1443714440_ _g1443814442_)
                              (cons _g1443714440_ _g1443814442_))
                            '()
                            _L14418_)))
                 _body1434914413_
                 _hd1435014415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1434314379_
                                         _target1434014374_
                                         '()
                                         '()))
                                      (_g1433314361_ _g1433414364_)))))
                            (_g1433314361_ _g1433414364_))))
                    (_g1433314361_ _g1433414364_)))))
        (_g1433214445_ _stx14330_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx14183_ . _args14184_)
      (let* ((_g1418614221_
              (lambda (_g1418714218_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1418714218_)))
             (_g1418514327_
              (lambda (_g1418714224_)
                (if (gx#stx-pair? _g1418714224_)
                    (let ((_e1419114226_ (gx#stx-e _g1418714224_)))
                      (let ((_hd1419214229_ (##car _e1419114226_))
                            (_tl1419314231_ (##cdr _e1419114226_)))
                        (if (gx#stx-pair? _tl1419314231_)
                            (let ((_e1419414234_ (gx#stx-e _tl1419314231_)))
                              (let ((_hd1419514237_ (##car _e1419414234_))
                                    (_tl1419614239_ (##cdr _e1419414234_)))
                                (if (gx#stx-pair/null? _hd1419514237_)
                                    (let ((_g16373_
                                           (gx#syntax-split-splice
                                            _hd1419514237_
                                            '0)))
                                      (begin
                                        (let ((_g16374_
                                               (if (##values? _g16373_)
                                                   (##vector-length _g16373_)
                                                   1)))
                                          (if (not (##fx= _g16374_ 2))
                                              (error "Context expects 2 values"
                                                     _g16374_)))
                                        (let ((_target1419714242_
                                               (##vector-ref _g16373_ 0))
                                              (_tl1419914244_
                                               (##vector-ref _g16373_ 1)))
                                          (if (gx#stx-null? _tl1419914244_)
                                              (letrec ((_loop1420014247_
                                                        (lambda (_hd1419814250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1420414252_
                         _hd1420514254_)
                  (if (gx#stx-pair? _hd1419814250_)
                      (let ((_e1420114257_ (gx#stx-e _hd1419814250_)))
                        (let ((_lp-hd1420214260_ (##car _e1420114257_))
                              (_lp-tl1420314262_ (##cdr _e1420114257_)))
                          (if (gx#stx-pair? _lp-hd1420214260_)
                              (let ((_e1420814265_
                                     (gx#stx-e _lp-hd1420214260_)))
                                (let ((_hd1420914268_ (##car _e1420814265_))
                                      (_tl1421014270_ (##cdr _e1420814265_)))
                                  (if (gx#stx-pair? _tl1421014270_)
                                      (let ((_e1421114273_
                                             (gx#stx-e _tl1421014270_)))
                                        (let ((_hd1421214276_
                                               (##car _e1421114273_))
                                              (_tl1421314278_
                                               (##cdr _e1421114273_)))
                                          (if (gx#stx-null? _tl1421314278_)
                                              (_loop1420014247_
                                               _lp-tl1420314262_
                                               (cons _hd1421214276_
                                                     _expr1420414252_)
                                               (cons _hd1420914268_
                                                     _hd1420514254_))
                                              (_g1418614221_ _g1418714224_))))
                                      (_g1418614221_ _g1418714224_))))
                              (_g1418614221_ _g1418714224_))))
                      (let ((_expr1420614281_ (reverse _expr1420414252_))
                            (_hd1420714283_ (reverse _hd1420514254_)))
                        (if (gx#stx-pair? _tl1419614239_)
                            (let ((_e1421414286_ (gx#stx-e _tl1419614239_)))
                              (let ((_hd1421514289_ (##car _e1421414286_))
                                    (_tl1421614291_ (##cdr _e1421414286_)))
                                (if (gx#stx-null? _tl1421614291_)
                                    ((lambda (_L14294_ _L14295_ _L14296_)
                                       (for-each
                                        (lambda (_g1431514317_)
                                          (apply gxc#compile-e
                                                 _g1431514317_
                                                 _args14184_))
                                        (foldr1 (lambda (_g1431914322_
                                                         _g1432014324_)
                                                  (cons _g1431914322_
                                                        _g1432014324_))
                                                (cons _L14294_ '())
                                                _L14295_)))
                                     _hd1421514289_
                                     _expr1420614281_
                                     _hd1420714283_)
                                    (_g1418614221_ _g1418714224_))))
                            (_g1418614221_ _g1418714224_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1420014247_
                                                 _target1419714242_
                                                 '()
                                                 '()))
                                              (_g1418614221_ _g1418714224_)))))
                                    (_g1418614221_ _g1418714224_))))
                            (_g1418614221_ _g1418714224_))))
                    (_g1418614221_ _g1418714224_)))))
        (_g1418514327_ _stx14183_))))
  (define gxc#collect-body-setq%
    (lambda (_stx14115_ . _args14116_)
      (let* ((_g1411814135_
              (lambda (_g1411914132_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1411914132_)))
             (_g1411714180_
              (lambda (_g1411914138_)
                (if (gx#stx-pair? _g1411914138_)
                    (let ((_e1412214140_ (gx#stx-e _g1411914138_)))
                      (let ((_hd1412314143_ (##car _e1412214140_))
                            (_tl1412414145_ (##cdr _e1412214140_)))
                        (if (gx#stx-pair? _tl1412414145_)
                            (let ((_e1412514148_ (gx#stx-e _tl1412414145_)))
                              (let ((_hd1412614151_ (##car _e1412514148_))
                                    (_tl1412714153_ (##cdr _e1412514148_)))
                                (if (gx#stx-pair? _tl1412714153_)
                                    (let ((_e1412814156_
                                           (gx#stx-e _tl1412714153_)))
                                      (let ((_hd1412914159_
                                             (##car _e1412814156_))
                                            (_tl1413014161_
                                             (##cdr _e1412814156_)))
                                        (if (gx#stx-null? _tl1413014161_)
                                            ((lambda (_L14164_ _L14165_)
                                               (apply gxc#compile-e
                                                      _L14164_
                                                      _args14116_))
                                             _hd1412914159_
                                             _hd1412614151_)
                                            (_g1411814135_ _g1411914138_))))
                                    (_g1411814135_ _g1411914138_))))
                            (_g1411814135_ _g1411914138_))))
                    (_g1411814135_ _g1411914138_)))))
        (_g1411714180_ _stx14115_))))
  (define gxc#collect-operands
    (lambda (_stx14028_ . _args14029_)
      (let* ((_g1403114050_
              (lambda (_g1403214047_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1403214047_)))
             (_g1403014112_
              (lambda (_g1403214053_)
                (if (gx#stx-pair? _g1403214053_)
                    (let ((_e1403414055_ (gx#stx-e _g1403214053_)))
                      (let ((_hd1403514058_ (##car _e1403414055_))
                            (_tl1403614060_ (##cdr _e1403414055_)))
                        (if (gx#stx-pair/null? _tl1403614060_)
                            (let ((_g16375_
                                   (gx#syntax-split-splice _tl1403614060_ '0)))
                              (begin
                                (let ((_g16376_
                                       (if (##values? _g16375_)
                                           (##vector-length _g16375_)
                                           1)))
                                  (if (not (##fx= _g16376_ 2))
                                      (error "Context expects 2 values"
                                             _g16376_)))
                                (let ((_target1403714063_
                                       (##vector-ref _g16375_ 0))
                                      (_tl1403914065_
                                       (##vector-ref _g16375_ 1)))
                                  (if (gx#stx-null? _tl1403914065_)
                                      (letrec ((_loop1404014068_
                                                (lambda (_hd1403814071_
                                                         _rands1404414073_)
                                                  (if (gx#stx-pair?
                                                       _hd1403814071_)
                                                      (let ((_e1404114076_
                                                             (gx#stx-e
                                                              _hd1403814071_)))
                                                        (let ((_lp-hd1404214079_
                                                               (##car _e1404114076_))
                                                              (_lp-tl1404314081_
                                                               (##cdr _e1404114076_)))
                                                          (_loop1404014068_
                                                           _lp-tl1404314081_
                                                           (cons _lp-hd1404214079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1404414073_))))
              (let ((_rands1404514084_ (reverse _rands1404414073_)))
                ((lambda (_L14087_)
                   (for-each
                    (lambda (_g1410014102_)
                      (apply gxc#compile-e _g1410014102_ _args14029_))
                    (foldr1 (lambda (_g1410414107_ _g1410514109_)
                              (cons _g1410414107_ _g1410514109_))
                            '()
                            _L14087_)))
                 _rands1404514084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1404014068_
                                         _target1403714063_
                                         '()))
                                      (_g1403114050_ _g1403214053_)))))
                            (_g1403114050_ _g1403214053_))))
                    (_g1403114050_ _g1403214053_)))))
        (_g1403014112_ _stx14028_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx13959_)
      (let* ((_g1396113978_
              (lambda (_g1396213975_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1396213975_)))
             (_g1396014025_
              (lambda (_g1396213981_)
                (if (gx#stx-pair? _g1396213981_)
                    (let ((_e1396513983_ (gx#stx-e _g1396213981_)))
                      (let ((_hd1396613986_ (##car _e1396513983_))
                            (_tl1396713988_ (##cdr _e1396513983_)))
                        (if (gx#stx-pair? _tl1396713988_)
                            (let ((_e1396813991_ (gx#stx-e _tl1396713988_)))
                              (let ((_hd1396913994_ (##car _e1396813991_))
                                    (_tl1397013996_ (##cdr _e1396813991_)))
                                (if (gx#stx-pair? _tl1397013996_)
                                    (let ((_e1397113999_
                                           (gx#stx-e _tl1397013996_)))
                                      (let ((_hd1397214002_
                                             (##car _e1397113999_))
                                            (_tl1397314004_
                                             (##cdr _e1397113999_)))
                                        (if (gx#stx-null? _tl1397314004_)
                                            ((lambda (_L14007_ _L14008_)
                                               (gx#stx-for-each1
                                                (lambda (_bind14023_)
                                                  (if (gx#identifier?
                                                       _bind14023_)
                                                      (gxc#add-module-binding!
                                                       _bind14023_
                                                       '#f)
                                                      '#!void))
                                                _L14008_))
                                             _hd1397214002_
                                             _hd1396913994_)
                                            (_g1396113978_ _g1396213981_))))
                                    (_g1396113978_ _g1396213981_))))
                            (_g1396113978_ _g1396213981_))))
                    (_g1396113978_ _g1396213981_)))))
        (_g1396014025_ _stx13959_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx13892_)
      (let* ((_g1389413911_
              (lambda (_g1389513908_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1389513908_)))
             (_g1389313956_
              (lambda (_g1389513914_)
                (if (gx#stx-pair? _g1389513914_)
                    (let ((_e1389813916_ (gx#stx-e _g1389513914_)))
                      (let ((_hd1389913919_ (##car _e1389813916_))
                            (_tl1390013921_ (##cdr _e1389813916_)))
                        (if (gx#stx-pair? _tl1390013921_)
                            (let ((_e1390113924_ (gx#stx-e _tl1390013921_)))
                              (let ((_hd1390213927_ (##car _e1390113924_))
                                    (_tl1390313929_ (##cdr _e1390113924_)))
                                (if (gx#stx-pair? _tl1390313929_)
                                    (let ((_e1390413932_
                                           (gx#stx-e _tl1390313929_)))
                                      (let ((_hd1390513935_
                                             (##car _e1390413932_))
                                            (_tl1390613937_
                                             (##cdr _e1390413932_)))
                                        (if (gx#stx-null? _tl1390613937_)
                                            ((lambda (_L13940_ _L13941_)
                                               (gxc#add-module-binding!
                                                _L13941_
                                                '#t))
                                             _hd1390513935_
                                             _hd1390213927_)
                                            (_g1389413911_ _g1389513914_))))
                                    (_g1389413911_ _g1389513914_))))
                            (_g1389413911_ _g1389513914_))))
                    (_g1389413911_ _g1389513914_)))))
        (_g1389313956_ _stx13892_))))
  (define gxc#lift-modules-module%
    (lambda (_stx13834_ _modules13835_)
      (let* ((_g1383713851_
              (lambda (_g1383813848_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1383813848_)))
             (_g1383613889_
              (lambda (_g1383813854_)
                (if (gx#stx-pair? _g1383813854_)
                    (let ((_e1384113856_ (gx#stx-e _g1383813854_)))
                      (let ((_hd1384213859_ (##car _e1384113856_))
                            (_tl1384313861_ (##cdr _e1384113856_)))
                        (if (gx#stx-pair? _tl1384313861_)
                            (let ((_e1384413864_ (gx#stx-e _tl1384313861_)))
                              (let ((_hd1384513867_ (##car _e1384413864_))
                                    (_tl1384613869_ (##cdr _e1384413864_)))
                                ((lambda (_L13872_ _L13873_)
                                   (let ((_ctx13886_
                                          (gx#syntax-local-e__0 _L13873_)))
                                     (set-box!
                                      _modules13835_
                                      (cons _ctx13886_ (unbox _modules13835_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#compile-e
                                         (##structure-ref
                                          _ctx13886_
                                          '11
                                          gx#module-context::t
                                          '#f)
                                         _modules13835_))
                                      gx#current-expander-context
                                      _ctx13886_)))
                                 _tl1384613869_
                                 _hd1384513867_)))
                            (_g1383713851_ _g1383813854_))))
                    (_g1383713851_ _g1383813854_)))))
        (_g1383613889_ _stx13834_))))
  (define gxc#add-module-binding!
    (lambda (_id13828_ _syntax?13829_)
      (let ((_eid13831_
             (##structure-ref
              (gx#resolve-identifier__0 _id13828_)
              '1
              gx#binding::t
              '#f))
            (_ht13832_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid13831_)
            '#!void
            (table-set!
             _ht13832_
             _eid13831_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid13831_)
              _syntax?13829_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id113821_ _id213822_)
      (letrec ((_symbol-e13824_
                (lambda (_id13826_)
                  (if (symbol? _id13826_)
                      _id13826_
                      (gxc#generate-runtime-binding-id _id13826_)))))
        (eq? (_symbol-e13824_ _id113821_) (_symbol-e13824_ _id213822_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id13799_)
      (let ((_$e13801_
             (if (##structure-direct-instance-of?
                  _id13799_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id13799_)
                 '#f)))
        (if _$e13801_
            ((lambda (_bind13804_)
               (let ((_eid13806_
                      (##structure-ref _bind13804_ '1 gx#binding::t '#f))
                     (_ht13807_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid13806_)
                     _eid13806_
                     (let ((_$e13809_ (table-ref _ht13807_ _eid13806_ '#f)))
                       (if _$e13809_
                           (values _$e13809_)
                           (if (##structure-instance-of?
                                _bind13804_
                                'gx#local-binding::t)
                               (let ((_gid13812_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid13806_)))
                                 (table-set! _ht13807_ _eid13806_ _gid13812_)
                                 _gid13812_)
                               (if (##structure-instance-of?
                                    _bind13804_
                                    'gx#module-binding::t)
                                   (let ((_gid13819_
                                          (let ((_$e13814_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind13804_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e13814_
                                                ((lambda (_ns13817_)
                                                   (make-symbol
                                                    _ns13817_
                                                    '"#"
                                                    _eid13806_))
                                                 _$e13814_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid13806_)))))
                                     (table-set!
                                      _ht13807_
                                      _eid13806_
                                      _gid13819_)
                                     _gid13819_)
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id13799_
                                    _eid13806_
                                    _bind13804_))))))))
             _$e13801_)
            (if (interned-symbol? (gx#stx-e _id13799_))
                (gx#stx-e _id13799_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id13799_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id13797_)
      (if (gx#identifier? _id13797_)
          (gxc#generate-runtime-binding-id _id13797_)
          (gxc#generate-runtime-temporary__0))))
  (define gxc#generate-runtime-gensym-reference__%
    (lambda (_sym13777_ _quote?13778_)
      (let* ((_ht13780_
              (##structure-ref
               (gxc#current-compile-symbol-table)
               '1
               gxc#symbol-table::t
               '#f))
             (_$e13782_ (table-ref _ht13780_ _sym13777_ '#f)))
        (if _$e13782_
            (values _$e13782_)
            (let ((_g13785_
                   (if _quote?13778_
                       (make-symbol
                        '"__"
                        _sym13777_
                        '"__"
                        (gxc#current-compile-timestamp))
                       (make-symbol '"_" _sym13777_ '"_"))))
              (table-set! _ht13780_ _sym13777_ _g13785_)
              _g13785_)))))
  (define gxc#generate-runtime-gensym-reference__0
    (lambda (_sym13790_)
      (let ((_quote?13792_ '#f))
        (gxc#generate-runtime-gensym-reference__% _sym13790_ _quote?13792_))))
  (define gxc#generate-runtime-gensym-reference
    (lambda _g16378_
      (let ((_g16377_ (length _g16378_)))
        (cond ((##fx= _g16377_ 1)
               (apply gxc#generate-runtime-gensym-reference__0 _g16378_))
              ((##fx= _g16377_ 2)
               (apply gxc#generate-runtime-gensym-reference__% _g16378_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-gensym-reference
                _g16378_))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id13774_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id13774_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key13734_)
      (if (interned-symbol? _key13734_)
          _key13734_
          (if (uninterned-symbol? _key13734_)
              (gxc#generate-runtime-gensym-reference__0 _key13734_)
              (let* ((_key1373513742_ _key13734_)
                     (_E1373713746_
                      (lambda ()
                        (error '"No clause matching" _key1373513742_)))
                     (_K1373813762_
                      (lambda (_mark13749_ _eid13750_)
                        (let ((_$e13752_
                               (##structure-ref
                                _mark13749_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e13752_
                              ((lambda (_ht13755_)
                                 (let ((_$e13757_
                                        (table-ref _ht13755_ _eid13750_ '#f)))
                                   (if _$e13757_
                                       ((lambda (_id13760_)
                                          (if (interned-symbol? _id13760_)
                                              _id13760_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id13760_)))
                                        _$e13757_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid13750_))))
                               _$e13752_)
                              (gxc#generate-runtime-identifier-key
                               _eid13750_))))))
                (if (##pair? _key1373513742_)
                    (let ((_hd1373913765_ (##car _key1373513742_))
                          (_tl1374013767_ (##cdr _key1373513742_)))
                      (let* ((_eid13770_ _hd1373913765_)
                             (_mark13772_ _tl1374013767_))
                        (_K1373813762_ _mark13772_ _eid13770_)))
                    (_E1373713746_)))))))
  (define gxc#generate-runtime-temporary__%
    (lambda (_top13721_)
      (if _top13721_
          (let ((_ns13723_
                 (##structure-ref
                  (gx#core-context-top__1 (gx#current-expander-context))
                  '6
                  gx#module-context::t
                  '#f))
                (_phi13724_ (gx#current-expander-phi)))
            (if (fxpositive? _phi13724_)
                (make-symbol
                 _ns13723_
                 '"["
                 (number->string _phi13724_)
                 '"]#_"
                 (gensym)
                 '"_")
                (make-symbol _ns13723_ '"#_" (gensym) '"_")))
          (make-symbol '"_" (gensym) '"_"))))
  (define gxc#generate-runtime-temporary__0
    (lambda ()
      (let ((_top13730_ '#f)) (gxc#generate-runtime-temporary__% _top13730_))))
  (define gxc#generate-runtime-temporary
    (lambda _g16380_
      (let ((_g16379_ (length _g16380_)))
        (cond ((##fx= _g16379_ 0)
               (apply gxc#generate-runtime-temporary__0 _g16380_))
              ((##fx= _g16379_ 1)
               (apply gxc#generate-runtime-temporary__% _g16380_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-temporary
                _g16380_))))))
  (define gxc#generate-runtime-empty (lambda (_stx13718_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx13570_)
      (letrec ((_simplify13572_
                (lambda (_body13616_)
                  (let _lp13618_ ((_rest13620_ _body13616_) (_r13621_ '()))
                    (let* ((_rest1362213630_ _rest13620_)
                           (_else1362413638_ (lambda () (reverse _r13621_)))
                           (_K1362613706_
                            (lambda (_rest13641_ _hd13642_)
                              (let* ((_hd1364313659_ _hd13642_)
                                     (_else1364713667_
                                      (lambda ()
                                        (_lp13618_
                                         _rest13641_
                                         (cons _hd13642_ _r13621_)))))
                                (let ((_K1365513696_
                                       (lambda (_exprs13694_)
                                         (_lp13618_
                                          (foldr1 cons
                                                  _rest13641_
                                                  _exprs13694_)
                                          _r13621_)))
                                      (_K1365013680_
                                       (lambda ()
                                         (if (null? _rest13641_)
                                             (_lp13618_
                                              _rest13641_
                                              (cons _hd13642_ _r13621_))
                                             (_lp13618_
                                              _rest13641_
                                              _r13621_))))
                                      (_K1364913672_
                                       (lambda ()
                                         (if (null? _rest13641_)
                                             (_lp13618_
                                              _rest13641_
                                              (cons _hd13642_ _r13621_))
                                             (_lp13618_
                                              _rest13641_
                                              _r13621_)))))
                                  (let ((_try-match1364613675_
                                         (lambda ()
                                           (if (symbol? _hd1364313659_)
                                               (_K1364913672_)
                                               (_else1364713667_)))))
                                    (if (##pair? _hd1364313659_)
                                        (let ((_tl1365713701_
                                               (##cdr _hd1364313659_))
                                              (_hd1365613699_
                                               (##car _hd1364313659_)))
                                          (if (##eq? _hd1365613699_ 'begin)
                                              (let ((_exprs13704_
                                                     _tl1365713701_))
                                                (_K1365513696_ _exprs13704_))
                                              (if (##eq? _hd1365613699_ 'quote)
                                                  (if (##pair? _tl1365713701_)
                                                      (let ((_tl1365413688_
                                                             (##cdr _tl1365713701_)))
                                                        (if (##null? _tl1365413688_)
                                                            (_K1365013680_)
                                                            (_try-match1364613675_)))
                                                      (_try-match1364613675_))
                                                  (_try-match1364613675_))))
                                        (_try-match1364613675_))))))))
                      (if (##pair? _rest1362213630_)
                          (let ((_hd1362713709_ (##car _rest1362213630_))
                                (_tl1362813711_ (##cdr _rest1362213630_)))
                            (let* ((_hd13714_ _hd1362713709_)
                                   (_rest13716_ _tl1362813711_))
                              (_K1362613706_ _rest13716_ _hd13714_)))
                          (_else1362413638_)))))))
        (let* ((_g1357413584_
                (lambda (_g1357513581_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1357513581_)))
               (_g1357313613_
                (lambda (_g1357513587_)
                  (if (gx#stx-pair? _g1357513587_)
                      (let ((_e1357713589_ (gx#stx-e _g1357513587_)))
                        (let ((_hd1357813592_ (##car _e1357713589_))
                              (_tl1357913594_ (##cdr _e1357713589_)))
                          ((lambda (_L13597_)
                             (let* ((_body13608_ (map gxc#compile-e _L13597_))
                                    (_body13610_
                                     (_simplify13572_ _body13608_)))
                               (if (fx= (length _body13610_) '1)
                                   (car _body13610_)
                                   (cons 'begin _body13610_))))
                           _tl1357913594_)))
                      (_g1357413584_ _g1357513587_)))))
          (_g1357313613_ _stx13570_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx13532_)
      (let* ((_g1353413544_
              (lambda (_g1353513541_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1353513541_)))
             (_g1353313567_
              (lambda (_g1353513547_)
                (if (gx#stx-pair? _g1353513547_)
                    (let ((_e1353713549_ (gx#stx-e _g1353513547_)))
                      (let ((_hd1353813552_ (##car _e1353713549_))
                            (_tl1353913554_ (##cdr _e1353713549_)))
                        ((lambda (_L13557_)
                           (cons 'begin (gx#syntax->datum _L13557_)))
                         _tl1353913554_)))
                    (_g1353413544_ _g1353513547_)))))
        (_g1353313567_ _stx13532_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx13409_)
      (let* ((___stx1513015131_ _stx13409_)
             (_g1341213440_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1513015131_))))
        (let ((___kont1513215133_
               (lambda (_L13514_ _L13515_) (gxc#compile-e _L13514_)))
              (___kont1513415135_
               (lambda (_L13469_ _L13470_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L13470_))
                             (cons (gxc#compile-e _L13469_) '()))))))
          (let ((___match1515515156_
                 (lambda (_e1341613490_
                          _hd1341713493_
                          _tl1341813495_
                          _e1341913498_
                          _hd1342013501_
                          _tl1342113503_
                          _e1342213506_
                          _hd1342313509_
                          _tl1342413511_)
                   (let ((_L13514_ _hd1342313509_) (_L13515_ _hd1342013501_))
                     (if (gx#identifier? _L13515_)
                         (___kont1513215133_ _L13514_ _L13515_)
                         (___kont1513415135_
                          _hd1342313509_
                          _hd1342013501_))))))
            (if (gx#stx-pair? ___stx1513015131_)
                (let ((_e1341613490_ (gx#stx-e ___stx1513015131_)))
                  (let ((_tl1341813495_ (##cdr _e1341613490_))
                        (_hd1341713493_ (##car _e1341613490_)))
                    (if (gx#stx-pair? _tl1341813495_)
                        (let ((_e1341913498_ (gx#stx-e _tl1341813495_)))
                          (let ((_tl1342113503_ (##cdr _e1341913498_))
                                (_hd1342013501_ (##car _e1341913498_)))
                            (if (gx#stx-pair? _tl1342113503_)
                                (let ((_e1342213506_
                                       (gx#stx-e _tl1342113503_)))
                                  (let ((_tl1342413511_ (##cdr _e1342213506_))
                                        (_hd1342313509_ (##car _e1342213506_)))
                                    (if (gx#stx-null? _tl1342413511_)
                                        (___match1515515156_
                                         _e1341613490_
                                         _hd1341713493_
                                         _tl1341813495_
                                         _e1341913498_
                                         _hd1342013501_
                                         _tl1342113503_
                                         _e1342213506_
                                         _hd1342313509_
                                         _tl1342413511_)
                                        (_g1341213440_))))
                                (_g1341213440_))))
                        (_g1341213440_))))
                (_g1341213440_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx13371_)
      (let* ((_g1337313383_
              (lambda (_g1337413380_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1337413380_)))
             (_g1337213406_
              (lambda (_g1337413386_)
                (if (gx#stx-pair? _g1337413386_)
                    (let ((_e1337613388_ (gx#stx-e _g1337413386_)))
                      (let ((_hd1337713391_ (##car _e1337613388_))
                            (_tl1337813393_ (##cdr _e1337613388_)))
                        ((lambda (_L13396_)
                           (cons 'declare (map gx#syntax->datum _L13396_)))
                         _tl1337813393_)))
                    (_g1337313383_ _g1337413386_)))))
        (_g1337213406_ _stx13371_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx13118_)
      (let* ((_g1312013137_
              (lambda (_g1312113134_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1312113134_)))
             (_g1311913368_
              (lambda (_g1312113140_)
                (if (gx#stx-pair? _g1312113140_)
                    (let ((_e1312413142_ (gx#stx-e _g1312113140_)))
                      (let ((_hd1312513145_ (##car _e1312413142_))
                            (_tl1312613147_ (##cdr _e1312413142_)))
                        (if (gx#stx-pair? _tl1312613147_)
                            (let ((_e1312713150_ (gx#stx-e _tl1312613147_)))
                              (let ((_hd1312813153_ (##car _e1312713150_))
                                    (_tl1312913155_ (##cdr _e1312713150_)))
                                (if (gx#stx-pair? _tl1312913155_)
                                    (let ((_e1313013158_
                                           (gx#stx-e _tl1312913155_)))
                                      (let ((_hd1313113161_
                                             (##car _e1313013158_))
                                            (_tl1313213163_
                                             (##cdr _e1313013158_)))
                                        (if (gx#stx-null? _tl1313213163_)
                                            ((lambda (_L13166_ _L13167_)
                                               (let* ((___stx1520815209_
                                                       _L13167_)
                                                      (_g1318413198_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1520815209_))))
                                                 (let ((___kont1521015211_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L13166_)))
                                                       (___kont1521215213_
                                                        (lambda (_L13330_)
                                                          (let ((_eid13339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L13330_)))
                    (let ((_lambda-expr1334013342_
                           (gxc#apply-find-lambda-expression _L13166_)))
                      (if _lambda-expr1334013342_
                          (let ((_lambda-expr13345_ _lambda-expr1334013342_))
                            (table-set!
                             (gxc#current-compile-runtime-names)
                             _lambda-expr13345_
                             _eid13339_))
                          '#f))
                    (cons 'define
                          (cons _eid13339_
                                (cons (gxc#compile-e _L13166_) '()))))))
               (___kont1521415215_
                (lambda ()
                  (let* ((_tmp13205_ (gxc#generate-runtime-temporary__% '#t))
                         (_body13314_
                          (let _lp13207_ ((_rest13209_ _L13167_)
                                          (_k13210_ '0)
                                          (_r13211_ '()))
                            (let* ((___stx1517815179_ _rest13209_)
                                   (_g1321613233_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1517815179_))))
                              (let ((___kont1518015181_
                                     (lambda (_L13301_)
                                       (_lp13207_
                                        _L13301_
                                        (fx+ _k13210_ '1)
                                        _r13211_)))
                                    (___kont1518215183_
                                     (lambda (_L13274_ _L13275_)
                                       (_lp13207_
                                        _L13274_
                                        (fx+ _k13210_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L13275_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp13205_
                         _k13210_
                         _L13274_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r13211_))))
                                    (___kont1518415185_
                                     (lambda (_L13245_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13245_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp13205_
                                _k13210_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r13211_)))
                                    (___kont1518615187_
                                     (lambda () (reverse _r13211_))))
                                (let ((_g1321413261_
                                       (lambda ()
                                         (let ((_L13245_ ___stx1517815179_))
                                           (if (gx#identifier? _L13245_)
                                               (___kont1518415185_ _L13245_)
                                               (___kont1518615187_))))))
                                  (if (gx#stx-pair? ___stx1517815179_)
                                      (let ((_e1321913290_
                                             (gx#stx-e ___stx1517815179_)))
                                        (let ((_tl1322113295_
                                               (##cdr _e1321913290_))
                                              (_hd1322013293_
                                               (##car _e1321913290_)))
                                          (if (gx#stx-datum? _hd1322013293_)
                                              (let ((_e1322213298_
                                                     (gx#stx-e
                                                      _hd1322013293_)))
                                                (if (equal? _e1322213298_ '#f)
                                                    (___kont1518015181_
                                                     _tl1322113295_)
                                                    (___kont1518215183_
                                                     _tl1322113295_
                                                     _hd1322013293_)))
                                              (___kont1518215183_
                                               _tl1322113295_
                                               _hd1322013293_))))
                                      (_g1321413261_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp13205_
                                            (cons (gxc#compile-e _L13166_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp13205_
                                       _L13167_
                                       _L13166_)
                                      _body13314_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1520815209_)
                                                       (let ((_e1318613352_
                                                              (gx#stx-e
                                                               ___stx1520815209_)))
                                                         (let ((_tl1318813357_
                                                                (##cdr _e1318613352_))
                                                               (_hd1318713355_
                                                                (##car _e1318613352_)))
                                                           (if (gx#stx-datum?
                                                                _hd1318713355_)
                                                               (let ((_e1318913360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1318713355_)))
                         (if (equal? _e1318913360_ '#f)
                             (if (gx#stx-null? _tl1318813357_)
                                 (___kont1521015211_)
                                 (___kont1521415215_))
                             (if (gx#stx-null? _tl1318813357_)
                                 (___kont1521215213_ _hd1318713355_)
                                 (___kont1521415215_))))
                       (if (gx#stx-null? _tl1318813357_)
                           (___kont1521215213_ _hd1318713355_)
                           (___kont1521415215_)))))
               (___kont1521415215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1313113161_
                                             _hd1312813153_)
                                            (_g1312013137_ _g1312113140_))))
                                    (_g1312013137_ _g1312113140_))))
                            (_g1312013137_ _g1312113140_))))
                    (_g1312013137_ _g1312113140_)))))
        (_g1311913368_ _stx13118_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals13094_ _hd13095_ _expr13096_)
      (let ((_$e13098_ (gxc#apply-count-values _expr13096_)))
        (if _$e13098_
            ((lambda (_count13101_)
               (let ((_len13103_ (gx#stx-length _hd13095_))
                     (_cmp13104_ (if (gx#stx-list? _hd13095_) fx= fx>=)))
                 (if (or (fx= _len13103_ '0)
                         (_cmp13104_ _count13101_ _len13103_))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr13096_
                      _hd13095_))))
             _$e13098_)
            (let* ((_len13109_ (gx#stx-length _hd13095_))
                   (_cmp13111_ (if (gx#stx-list? _hd13095_) '##fx= '##fx>=))
                   (_errmsg13113_
                    (string-append
                     (if (gx#stx-list? _hd13095_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len13109_)
                     '" values"))
                   (_count13115_ (gxc#generate-runtime-temporary__0)))
              (if (and (not (gx#stx-list? _hd13095_)) (fx= _len13109_ '0))
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count13115_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals13094_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp13111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count13115_ (cons _len13109_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg13113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count13115_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var13092_)
      (cons 'if
            (cons (cons '##values? (cons _var13092_ '()))
                  (cons (cons '##vector-length (cons _var13092_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var13088_ _i13089_ _rest13090_)
      (if (and (fx= _i13089_ '0) (not (gx#stx-pair? _rest13090_)))
          (cons 'if
                (cons (cons '##values? (cons _var13088_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var13088_ (cons '0 '())))
                            (cons _var13088_ '()))))
          (cons '##vector-ref (cons _var13088_ (cons _i13089_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var13085_ _i13086_)
      (if (fx= _i13086_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var13085_ '()))
                      (cons (cons '##vector->list (cons _var13085_ '()))
                            (cons (cons 'list (cons _var13085_ '())) '()))))
          (if (fx= _i13086_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var13085_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var13085_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var13085_ '()))
                          (cons _i13086_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx13018_)
      (let* ((_g1302013037_
              (lambda (_g1302113034_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1302113034_)))
             (_g1301913082_
              (lambda (_g1302113040_)
                (if (gx#stx-pair? _g1302113040_)
                    (let ((_e1302413042_ (gx#stx-e _g1302113040_)))
                      (let ((_hd1302513045_ (##car _e1302413042_))
                            (_tl1302613047_ (##cdr _e1302413042_)))
                        (if (gx#stx-pair? _tl1302613047_)
                            (let ((_e1302713050_ (gx#stx-e _tl1302613047_)))
                              (let ((_hd1302813053_ (##car _e1302713050_))
                                    (_tl1302913055_ (##cdr _e1302713050_)))
                                (if (gx#stx-pair? _tl1302913055_)
                                    (let ((_e1303013058_
                                           (gx#stx-e _tl1302913055_)))
                                      (let ((_hd1303113061_
                                             (##car _e1303013058_))
                                            (_tl1303213063_
                                             (##cdr _e1303013058_)))
                                        (if (gx#stx-null? _tl1303213063_)
                                            ((lambda (_L13066_ _L13067_)
                                               (gxc#generate-runtime-lambda-form
                                                _L13067_
                                                _L13066_))
                                             _hd1303113061_
                                             _hd1302813053_)
                                            (_g1302013037_ _g1302113040_))))
                                    (_g1302013037_ _g1302113040_))))
                            (_g1302013037_ _g1302113040_))))
                    (_g1302013037_ _g1302113040_)))))
        (_g1301913082_ _stx13018_))))
  (define gxc#generate-runtime-lambda-form
    (lambda (_hd12978_ _body12979_)
      (let* ((_hd12981_ (gxc#generate-runtime-lambda-head _hd12978_))
             (_body12983_ (gxc#compile-e _body12979_))
             (_body13015_
              (let* ((_body1298412992_ _body12983_)
                     (_else1298613000_ (lambda () (cons _body12983_ '())))
                     (_K1298813005_ (lambda (_exprs13003_) _exprs13003_)))
                (if (##pair? _body1298412992_)
                    (let ((_hd1298913008_ (##car _body1298412992_))
                          (_tl1299013010_ (##cdr _body1298412992_)))
                      (if (##eq? _hd1298913008_ 'begin)
                          (let ((_exprs13013_ _tl1299013010_))
                            (_K1298813005_ _exprs13013_))
                          (_else1298613000_)))
                    (_else1298613000_)))))
        (cons 'lambda (cons _hd12981_ _body13015_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd12976_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd12976_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx11519_)
      (letrec ((_dispatch-case?11521_
                (lambda (_hd12206_ _body12207_)
                  (let* ((_form12209_ (cons _hd12206_ (cons _body12207_ '())))
                         (___stx1524015241_ _form12209_)
                         (_g1221412371_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1524015241_))))
                    (let ((___kont1524215243_
                           (lambda (_L12896_ _L12897_ _L12898_) '#t))
                          (___kont1524815249_
                           (lambda (_L12684_
                                    _L12685_
                                    _L12686_
                                    _L12687_
                                    _L12688_
                                    _L12689_)
                             '#t))
                          (___kont1525415255_
                           (lambda (_L12479_ _L12480_ _L12481_ _L12482_) '#t))
                          (___kont1525615257_ (lambda () '#f)))
                      (let* ((___match1538115382_
                              (lambda (_e1233112383_
                                       _hd1233212386_
                                       _tl1233312388_
                                       _e1233412391_
                                       _hd1233512394_
                                       _tl1233612396_
                                       _e1233712399_
                                       _hd1233812402_
                                       _tl1233912404_
                                       _e1234012407_
                                       _hd1234112410_
                                       _tl1234212412_
                                       _e1234312415_
                                       _hd1234412418_
                                       _tl1234512420_
                                       _e1234612423_
                                       _hd1234712426_
                                       _tl1234812428_
                                       _e1234912431_
                                       _hd1235012434_
                                       _tl1235112436_
                                       _e1235212439_
                                       _hd1235312442_
                                       _tl1235412444_
                                       _e1235512447_
                                       _hd1235612450_
                                       _tl1235712452_
                                       _e1235812455_
                                       _hd1235912458_
                                       _tl1236012460_
                                       _e1236112463_
                                       _hd1236212466_
                                       _tl1236312468_
                                       _e1236412471_
                                       _hd1236512474_
                                       _tl1236612476_)
                                (let ((_L12479_ _hd1236512474_)
                                      (_L12480_ _hd1235612450_)
                                      (_L12481_ _hd1234712426_)
                                      (_L12482_ _hd1233212386_))
                                  (if (and (gx#identifier? _L12482_)
                                           (gxc#runtime-identifier=?
                                            _L12481_
                                            'apply)
                                           (gx#free-identifier=?
                                            _L12482_
                                            _L12479_)
                                           (not (gx#free-identifier=?
                                                 _L12480_
                                                 _L12482_)))
                                      (___kont1525415255_
                                       _L12479_
                                       _L12480_
                                       _L12481_
                                       _L12482_)
                                      (___kont1525615257_)))))
                             (___match1535315354_
                              (lambda (_e1233112383_
                                       _hd1233212386_
                                       _tl1233312388_
                                       _e1233412391_
                                       _hd1233512394_
                                       _tl1233612396_
                                       _e1233712399_
                                       _hd1233812402_
                                       _tl1233912404_
                                       _e1234012407_
                                       _hd1234112410_
                                       _tl1234212412_
                                       _e1234312415_
                                       _hd1234412418_
                                       _tl1234512420_
                                       _e1234612423_
                                       _hd1234712426_
                                       _tl1234812428_
                                       _e1234912431_
                                       _hd1235012434_
                                       _tl1235112436_
                                       _e1235212439_
                                       _hd1235312442_
                                       _tl1235412444_
                                       _e1235512447_
                                       _hd1235612450_
                                       _tl1235712452_)
                                (if (gx#stx-pair? _tl1235112436_)
                                    (let ((_e1235812455_
                                           (gx#stx-e _tl1235112436_)))
                                      (let ((_tl1236012460_
                                             (##cdr _e1235812455_))
                                            (_hd1235912458_
                                             (##car _e1235812455_)))
                                        (if (gx#stx-pair? _hd1235912458_)
                                            (let ((_e1236112463_
                                                   (gx#stx-e _hd1235912458_)))
                                              (let ((_tl1236312468_
                                                     (##cdr _e1236112463_))
                                                    (_hd1236212466_
                                                     (##car _e1236112463_)))
                                                (if (gx#identifier?
                                                     _hd1236212466_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1236212466_)
                                                        (if (gx#stx-pair?
                                                             _tl1236312468_)
                                                            (let ((_e1236412471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1236312468_)))
                      (let ((_tl1236612476_ (##cdr _e1236412471_))
                            (_hd1236512474_ (##car _e1236412471_)))
                        (if (gx#stx-null? _tl1236612476_)
                            (if (gx#stx-null? _tl1236012460_)
                                (if (gx#stx-null? _tl1233612396_)
                                    (___match1538115382_
                                     _e1233112383_
                                     _hd1233212386_
                                     _tl1233312388_
                                     _e1233412391_
                                     _hd1233512394_
                                     _tl1233612396_
                                     _e1233712399_
                                     _hd1233812402_
                                     _tl1233912404_
                                     _e1234012407_
                                     _hd1234112410_
                                     _tl1234212412_
                                     _e1234312415_
                                     _hd1234412418_
                                     _tl1234512420_
                                     _e1234612423_
                                     _hd1234712426_
                                     _tl1234812428_
                                     _e1234912431_
                                     _hd1235012434_
                                     _tl1235112436_
                                     _e1235212439_
                                     _hd1235312442_
                                     _tl1235412444_
                                     _e1235512447_
                                     _hd1235612450_
                                     _tl1235712452_
                                     _e1235812455_
                                     _hd1235912458_
                                     _tl1236012460_
                                     _e1236112463_
                                     _hd1236212466_
                                     _tl1236312468_
                                     _e1236412471_
                                     _hd1236512474_
                                     _tl1236612476_)
                                    (___kont1525615257_))
                                (___kont1525615257_))
                            (___kont1525615257_))))
                    (___kont1525615257_))
                (___kont1525615257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1525615257_))))
                                            (___kont1525615257_))))
                                    (___kont1525615257_))))
                             (___match1528315284_
                              (lambda (_e1226712524_
                                       _hd1226812527_
                                       _tl1226912529_
                                       ___splice1525015251_
                                       _target1227012532_
                                       _tl1227212534_)
                                (letrec ((_loop1227312537_
                                          (lambda (_hd1227112540_
                                                   _arg1227712542_)
                                            (if (gx#stx-pair? _hd1227112540_)
                                                (let ((_e1227412545_
                                                       (gx#stx-e
                                                        _hd1227112540_)))
                                                  (let ((_lp-tl1227612550_
                                                         (##cdr _e1227412545_))
                                                        (_lp-hd1227512548_
                                                         (##car _e1227412545_)))
                                                    (_loop1227312537_
                                                     _lp-tl1227612550_
                                                     (cons _lp-hd1227512548_
                                                           _arg1227712542_))))
                                                (let ((_arg1227812553_
                                                       (reverse _arg1227712542_)))
                                                  (if (gx#stx-pair?
                                                       _tl1226912529_)
                                                      (let ((_e1227912556_
                                                             (gx#stx-e
                                                              _tl1226912529_)))
                                                        (let ((_tl1228112561_
                                                               (##cdr _e1227912556_))
                                                              (_hd1228012559_
                                                               (##car _e1227912556_)))
                                                          (if (gx#stx-pair?
                                                               _hd1228012559_)
                                                              (let ((_e1228212564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1228012559_)))
                        (let ((_tl1228412569_ (##cdr _e1228212564_))
                              (_hd1228312567_ (##car _e1228212564_)))
                          (if (gx#identifier? _hd1228312567_)
                              (if (gx#stx-eq? '%#call _hd1228312567_)
                                  (if (gx#stx-pair? _tl1228412569_)
                                      (let ((_e1228512572_
                                             (gx#stx-e _tl1228412569_)))
                                        (let ((_tl1228712577_
                                               (##cdr _e1228512572_))
                                              (_hd1228612575_
                                               (##car _e1228512572_)))
                                          (if (gx#stx-pair? _hd1228612575_)
                                              (let ((_e1228812580_
                                                     (gx#stx-e
                                                      _hd1228612575_)))
                                                (let ((_tl1229012585_
                                                       (##cdr _e1228812580_))
                                                      (_hd1228912583_
                                                       (##car _e1228812580_)))
                                                  (if (gx#identifier?
                                                       _hd1228912583_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1228912583_)
                                                          (if (gx#stx-pair?
                                                               _tl1229012585_)
                                                              (let ((_e1229112588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1229012585_)))
                        (let ((_tl1229312593_ (##cdr _e1229112588_))
                              (_hd1229212591_ (##car _e1229112588_)))
                          (if (gx#stx-null? _tl1229312593_)
                              (if (gx#stx-pair? _tl1228712577_)
                                  (let ((_e1229412596_
                                         (gx#stx-e _tl1228712577_)))
                                    (let ((_tl1229612601_
                                           (##cdr _e1229412596_))
                                          (_hd1229512599_
                                           (##car _e1229412596_)))
                                      (if (gx#stx-pair? _hd1229512599_)
                                          (let ((_e1229712604_
                                                 (gx#stx-e _hd1229512599_)))
                                            (let ((_tl1229912609_
                                                   (##cdr _e1229712604_))
                                                  (_hd1229812607_
                                                   (##car _e1229712604_)))
                                              (if (gx#identifier?
                                                   _hd1229812607_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1229812607_)
                                                      (if (gx#stx-pair?
                                                           _tl1229912609_)
                                                          (let ((_e1230012612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1229912609_)))
                    (let ((_tl1230212617_ (##cdr _e1230012612_))
                          (_hd1230112615_ (##car _e1230012612_)))
                      (if (gx#stx-null? _tl1230212617_)
                          (if (gx#stx-pair/null? _tl1229612601_)
                              (if (fx>= (gx#stx-length _tl1229612601_) '1)
                                  (let ((___splice1525215253_
                                         (gx#syntax-split-splice
                                          _tl1229612601_
                                          '1)))
                                    (let ((_tl1230512622_
                                           (##vector-ref
                                            ___splice1525215253_
                                            '1))
                                          (_target1230312620_
                                           (##vector-ref
                                            ___splice1525215253_
                                            '0)))
                                      (if (gx#stx-pair? _tl1230512622_)
                                          (let ((_e1231212625_
                                                 (gx#stx-e _tl1230512622_)))
                                            (let ((_tl1231412630_
                                                   (##cdr _e1231212625_))
                                                  (_hd1231312628_
                                                   (##car _e1231212625_)))
                                              (if (gx#stx-pair? _hd1231312628_)
                                                  (let ((_e1231512633_
                                                         (gx#stx-e
                                                          _hd1231312628_)))
                                                    (let ((_tl1231712638_
                                                           (##cdr _e1231512633_))
                                                          (_hd1231612636_
                                                           (##car _e1231512633_)))
                                                      (if (gx#identifier?
                                                           _hd1231612636_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1231612636_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1231712638_)
                          (let ((_e1231812641_ (gx#stx-e _tl1231712638_)))
                            (let ((_tl1232012646_ (##cdr _e1231812641_))
                                  (_hd1231912644_ (##car _e1231812641_)))
                              (if (gx#stx-null? _tl1232012646_)
                                  (if (gx#stx-null? _tl1231412630_)
                                      (letrec ((_loop1230612649_
                                                (lambda (_hd1230412652_
                                                         _xarg1231012654_)
                                                  (if (gx#stx-pair?
                                                       _hd1230412652_)
                                                      (let ((_e1230712657_
                                                             (gx#stx-e
                                                              _hd1230412652_)))
                                                        (let ((_lp-tl1230912662_
                                                               (##cdr _e1230712657_))
                                                              (_lp-hd1230812660_
                                                               (##car _e1230712657_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1230812660_)
                                                              (let ((_e1232112665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1230812660_)))
                        (let ((_tl1232312670_ (##cdr _e1232112665_))
                              (_hd1232212668_ (##car _e1232112665_)))
                          (if (gx#identifier? _hd1232212668_)
                              (if (gx#stx-eq? '%#ref _hd1232212668_)
                                  (if (gx#stx-pair? _tl1232312670_)
                                      (let ((_e1232412673_
                                             (gx#stx-e _tl1232312670_)))
                                        (let ((_tl1232612678_
                                               (##cdr _e1232412673_))
                                              (_hd1232512676_
                                               (##car _e1232412673_)))
                                          (if (gx#stx-null? _tl1232612678_)
                                              (_loop1230612649_
                                               _lp-tl1230912662_
                                               (cons _hd1232512676_
                                                     _xarg1231012654_))
                                              (___match1535315354_
                                               _e1226712524_
                                               _hd1226812527_
                                               _tl1226912529_
                                               _e1227912556_
                                               _hd1228012559_
                                               _tl1228112561_
                                               _e1228212564_
                                               _hd1228312567_
                                               _tl1228412569_
                                               _e1228512572_
                                               _hd1228612575_
                                               _tl1228712577_
                                               _e1228812580_
                                               _hd1228912583_
                                               _tl1229012585_
                                               _e1229112588_
                                               _hd1229212591_
                                               _tl1229312593_
                                               _e1229412596_
                                               _hd1229512599_
                                               _tl1229612601_
                                               _e1229712604_
                                               _hd1229812607_
                                               _tl1229912609_
                                               _e1230012612_
                                               _hd1230112615_
                                               _tl1230212617_))))
                                      (___match1535315354_
                                       _e1226712524_
                                       _hd1226812527_
                                       _tl1226912529_
                                       _e1227912556_
                                       _hd1228012559_
                                       _tl1228112561_
                                       _e1228212564_
                                       _hd1228312567_
                                       _tl1228412569_
                                       _e1228512572_
                                       _hd1228612575_
                                       _tl1228712577_
                                       _e1228812580_
                                       _hd1228912583_
                                       _tl1229012585_
                                       _e1229112588_
                                       _hd1229212591_
                                       _tl1229312593_
                                       _e1229412596_
                                       _hd1229512599_
                                       _tl1229612601_
                                       _e1229712604_
                                       _hd1229812607_
                                       _tl1229912609_
                                       _e1230012612_
                                       _hd1230112615_
                                       _tl1230212617_))
                                  (___match1535315354_
                                   _e1226712524_
                                   _hd1226812527_
                                   _tl1226912529_
                                   _e1227912556_
                                   _hd1228012559_
                                   _tl1228112561_
                                   _e1228212564_
                                   _hd1228312567_
                                   _tl1228412569_
                                   _e1228512572_
                                   _hd1228612575_
                                   _tl1228712577_
                                   _e1228812580_
                                   _hd1228912583_
                                   _tl1229012585_
                                   _e1229112588_
                                   _hd1229212591_
                                   _tl1229312593_
                                   _e1229412596_
                                   _hd1229512599_
                                   _tl1229612601_
                                   _e1229712604_
                                   _hd1229812607_
                                   _tl1229912609_
                                   _e1230012612_
                                   _hd1230112615_
                                   _tl1230212617_))
                              (___match1535315354_
                               _e1226712524_
                               _hd1226812527_
                               _tl1226912529_
                               _e1227912556_
                               _hd1228012559_
                               _tl1228112561_
                               _e1228212564_
                               _hd1228312567_
                               _tl1228412569_
                               _e1228512572_
                               _hd1228612575_
                               _tl1228712577_
                               _e1228812580_
                               _hd1228912583_
                               _tl1229012585_
                               _e1229112588_
                               _hd1229212591_
                               _tl1229312593_
                               _e1229412596_
                               _hd1229512599_
                               _tl1229612601_
                               _e1229712604_
                               _hd1229812607_
                               _tl1229912609_
                               _e1230012612_
                               _hd1230112615_
                               _tl1230212617_))))
                      (___match1535315354_
                       _e1226712524_
                       _hd1226812527_
                       _tl1226912529_
                       _e1227912556_
                       _hd1228012559_
                       _tl1228112561_
                       _e1228212564_
                       _hd1228312567_
                       _tl1228412569_
                       _e1228512572_
                       _hd1228612575_
                       _tl1228712577_
                       _e1228812580_
                       _hd1228912583_
                       _tl1229012585_
                       _e1229112588_
                       _hd1229212591_
                       _tl1229312593_
                       _e1229412596_
                       _hd1229512599_
                       _tl1229612601_
                       _e1229712604_
                       _hd1229812607_
                       _tl1229912609_
                       _e1230012612_
                       _hd1230112615_
                       _tl1230212617_))))
              (let ((_xarg1231112681_ (reverse _xarg1231012654_)))
                (if (gx#stx-null? _tl1228112561_)
                    (let ((_L12684_ _hd1231912644_)
                          (_L12685_ _xarg1231112681_)
                          (_L12686_ _hd1230112615_)
                          (_L12687_ _hd1229212591_)
                          (_L12688_ _tl1227212534_)
                          (_L12689_ _arg1227812553_))
                      (if (and (gx#identifier-list?
                                (foldr1 (lambda (_g1273212735_ _g1273312737_)
                                          (cons _g1273212735_ _g1273312737_))
                                        '()
                                        _L12689_))
                               (gx#identifier? _L12688_)
                               (gxc#runtime-identifier=? _L12687_ 'apply)
                               (fx= (length (foldr1 (lambda (_g1273912742_
                                                             _g1274012744_)
                                                      (cons _g1273912742_
                                                            _g1274012744_))
                                                    '()
                                                    _L12689_))
                                    (length (foldr1 (lambda (_g1274612749_
                                                             _g1274712751_)
                                                      (cons _g1274612749_
                                                            _g1274712751_))
                                                    '()
                                                    _L12685_)))
                               (andmap2 gx#free-identifier=?
                                        (foldr1 (lambda (_g1275312756_
                                                         _g1275412758_)
                                                  (cons _g1275312756_
                                                        _g1275412758_))
                                                '()
                                                _L12689_)
                                        (foldr1 (lambda (_g1276012763_
                                                         _g1276112765_)
                                                  (cons _g1276012763_
                                                        _g1276112765_))
                                                '()
                                                _L12685_))
                               (gx#free-identifier=? _L12688_ _L12684_)
                               (not (find (lambda (_g1276712769_)
                                            (gx#free-identifier=?
                                             _g1276712769_
                                             _L12686_))
                                          (foldr1 (lambda (_g1277112774_
                                                           _g1277212776_)
                                                    (cons _g1277112774_
                                                          _g1277212776_))
                                                  (cons _L12688_ '())
                                                  _L12689_))))
                          (___kont1524815249_
                           _L12684_
                           _L12685_
                           _L12686_
                           _L12687_
                           _L12688_
                           _L12689_)
                          (___match1535315354_
                           _e1226712524_
                           _hd1226812527_
                           _tl1226912529_
                           _e1227912556_
                           _hd1228012559_
                           _tl1228112561_
                           _e1228212564_
                           _hd1228312567_
                           _tl1228412569_
                           _e1228512572_
                           _hd1228612575_
                           _tl1228712577_
                           _e1228812580_
                           _hd1228912583_
                           _tl1229012585_
                           _e1229112588_
                           _hd1229212591_
                           _tl1229312593_
                           _e1229412596_
                           _hd1229512599_
                           _tl1229612601_
                           _e1229712604_
                           _hd1229812607_
                           _tl1229912609_
                           _e1230012612_
                           _hd1230112615_
                           _tl1230212617_)))
                    (___match1535315354_
                     _e1226712524_
                     _hd1226812527_
                     _tl1226912529_
                     _e1227912556_
                     _hd1228012559_
                     _tl1228112561_
                     _e1228212564_
                     _hd1228312567_
                     _tl1228412569_
                     _e1228512572_
                     _hd1228612575_
                     _tl1228712577_
                     _e1228812580_
                     _hd1228912583_
                     _tl1229012585_
                     _e1229112588_
                     _hd1229212591_
                     _tl1229312593_
                     _e1229412596_
                     _hd1229512599_
                     _tl1229612601_
                     _e1229712604_
                     _hd1229812607_
                     _tl1229912609_
                     _e1230012612_
                     _hd1230112615_
                     _tl1230212617_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1230612649_
                                         _target1230312620_
                                         '()))
                                      (___match1535315354_
                                       _e1226712524_
                                       _hd1226812527_
                                       _tl1226912529_
                                       _e1227912556_
                                       _hd1228012559_
                                       _tl1228112561_
                                       _e1228212564_
                                       _hd1228312567_
                                       _tl1228412569_
                                       _e1228512572_
                                       _hd1228612575_
                                       _tl1228712577_
                                       _e1228812580_
                                       _hd1228912583_
                                       _tl1229012585_
                                       _e1229112588_
                                       _hd1229212591_
                                       _tl1229312593_
                                       _e1229412596_
                                       _hd1229512599_
                                       _tl1229612601_
                                       _e1229712604_
                                       _hd1229812607_
                                       _tl1229912609_
                                       _e1230012612_
                                       _hd1230112615_
                                       _tl1230212617_))
                                  (___match1535315354_
                                   _e1226712524_
                                   _hd1226812527_
                                   _tl1226912529_
                                   _e1227912556_
                                   _hd1228012559_
                                   _tl1228112561_
                                   _e1228212564_
                                   _hd1228312567_
                                   _tl1228412569_
                                   _e1228512572_
                                   _hd1228612575_
                                   _tl1228712577_
                                   _e1228812580_
                                   _hd1228912583_
                                   _tl1229012585_
                                   _e1229112588_
                                   _hd1229212591_
                                   _tl1229312593_
                                   _e1229412596_
                                   _hd1229512599_
                                   _tl1229612601_
                                   _e1229712604_
                                   _hd1229812607_
                                   _tl1229912609_
                                   _e1230012612_
                                   _hd1230112615_
                                   _tl1230212617_))))
                          (___match1535315354_
                           _e1226712524_
                           _hd1226812527_
                           _tl1226912529_
                           _e1227912556_
                           _hd1228012559_
                           _tl1228112561_
                           _e1228212564_
                           _hd1228312567_
                           _tl1228412569_
                           _e1228512572_
                           _hd1228612575_
                           _tl1228712577_
                           _e1228812580_
                           _hd1228912583_
                           _tl1229012585_
                           _e1229112588_
                           _hd1229212591_
                           _tl1229312593_
                           _e1229412596_
                           _hd1229512599_
                           _tl1229612601_
                           _e1229712604_
                           _hd1229812607_
                           _tl1229912609_
                           _e1230012612_
                           _hd1230112615_
                           _tl1230212617_))
                      (___match1535315354_
                       _e1226712524_
                       _hd1226812527_
                       _tl1226912529_
                       _e1227912556_
                       _hd1228012559_
                       _tl1228112561_
                       _e1228212564_
                       _hd1228312567_
                       _tl1228412569_
                       _e1228512572_
                       _hd1228612575_
                       _tl1228712577_
                       _e1228812580_
                       _hd1228912583_
                       _tl1229012585_
                       _e1229112588_
                       _hd1229212591_
                       _tl1229312593_
                       _e1229412596_
                       _hd1229512599_
                       _tl1229612601_
                       _e1229712604_
                       _hd1229812607_
                       _tl1229912609_
                       _e1230012612_
                       _hd1230112615_
                       _tl1230212617_))
                  (___match1535315354_
                   _e1226712524_
                   _hd1226812527_
                   _tl1226912529_
                   _e1227912556_
                   _hd1228012559_
                   _tl1228112561_
                   _e1228212564_
                   _hd1228312567_
                   _tl1228412569_
                   _e1228512572_
                   _hd1228612575_
                   _tl1228712577_
                   _e1228812580_
                   _hd1228912583_
                   _tl1229012585_
                   _e1229112588_
                   _hd1229212591_
                   _tl1229312593_
                   _e1229412596_
                   _hd1229512599_
                   _tl1229612601_
                   _e1229712604_
                   _hd1229812607_
                   _tl1229912609_
                   _e1230012612_
                   _hd1230112615_
                   _tl1230212617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1535315354_
                                                   _e1226712524_
                                                   _hd1226812527_
                                                   _tl1226912529_
                                                   _e1227912556_
                                                   _hd1228012559_
                                                   _tl1228112561_
                                                   _e1228212564_
                                                   _hd1228312567_
                                                   _tl1228412569_
                                                   _e1228512572_
                                                   _hd1228612575_
                                                   _tl1228712577_
                                                   _e1228812580_
                                                   _hd1228912583_
                                                   _tl1229012585_
                                                   _e1229112588_
                                                   _hd1229212591_
                                                   _tl1229312593_
                                                   _e1229412596_
                                                   _hd1229512599_
                                                   _tl1229612601_
                                                   _e1229712604_
                                                   _hd1229812607_
                                                   _tl1229912609_
                                                   _e1230012612_
                                                   _hd1230112615_
                                                   _tl1230212617_))))
                                          (___match1535315354_
                                           _e1226712524_
                                           _hd1226812527_
                                           _tl1226912529_
                                           _e1227912556_
                                           _hd1228012559_
                                           _tl1228112561_
                                           _e1228212564_
                                           _hd1228312567_
                                           _tl1228412569_
                                           _e1228512572_
                                           _hd1228612575_
                                           _tl1228712577_
                                           _e1228812580_
                                           _hd1228912583_
                                           _tl1229012585_
                                           _e1229112588_
                                           _hd1229212591_
                                           _tl1229312593_
                                           _e1229412596_
                                           _hd1229512599_
                                           _tl1229612601_
                                           _e1229712604_
                                           _hd1229812607_
                                           _tl1229912609_
                                           _e1230012612_
                                           _hd1230112615_
                                           _tl1230212617_))))
                                  (___match1535315354_
                                   _e1226712524_
                                   _hd1226812527_
                                   _tl1226912529_
                                   _e1227912556_
                                   _hd1228012559_
                                   _tl1228112561_
                                   _e1228212564_
                                   _hd1228312567_
                                   _tl1228412569_
                                   _e1228512572_
                                   _hd1228612575_
                                   _tl1228712577_
                                   _e1228812580_
                                   _hd1228912583_
                                   _tl1229012585_
                                   _e1229112588_
                                   _hd1229212591_
                                   _tl1229312593_
                                   _e1229412596_
                                   _hd1229512599_
                                   _tl1229612601_
                                   _e1229712604_
                                   _hd1229812607_
                                   _tl1229912609_
                                   _e1230012612_
                                   _hd1230112615_
                                   _tl1230212617_))
                              (___match1535315354_
                               _e1226712524_
                               _hd1226812527_
                               _tl1226912529_
                               _e1227912556_
                               _hd1228012559_
                               _tl1228112561_
                               _e1228212564_
                               _hd1228312567_
                               _tl1228412569_
                               _e1228512572_
                               _hd1228612575_
                               _tl1228712577_
                               _e1228812580_
                               _hd1228912583_
                               _tl1229012585_
                               _e1229112588_
                               _hd1229212591_
                               _tl1229312593_
                               _e1229412596_
                               _hd1229512599_
                               _tl1229612601_
                               _e1229712604_
                               _hd1229812607_
                               _tl1229912609_
                               _e1230012612_
                               _hd1230112615_
                               _tl1230212617_))
                          (___kont1525615257_))))
                  (___kont1525615257_))
              (___kont1525615257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1525615257_))))
                                          (___kont1525615257_))))
                                  (___kont1525615257_))
                              (___kont1525615257_))))
                      (___kont1525615257_))
                  (___kont1525615257_))
              (___kont1525615257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1525615257_))))
                                      (___kont1525615257_))
                                  (___kont1525615257_))
                              (___kont1525615257_))))
                      (___kont1525615257_))))
              (___kont1525615257_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1227312537_ _target1227012532_ '()))))
                             (___match1527115272_
                              (lambda (_e1221912784_
                                       _hd1222012787_
                                       _tl1222112789_
                                       ___splice1524415245_
                                       _target1222212792_
                                       _tl1222412794_)
                                (letrec ((_loop1222512797_
                                          (lambda (_hd1222312800_
                                                   _arg1222912802_)
                                            (if (gx#stx-pair? _hd1222312800_)
                                                (let ((_e1222612805_
                                                       (gx#stx-e
                                                        _hd1222312800_)))
                                                  (let ((_lp-tl1222812810_
                                                         (##cdr _e1222612805_))
                                                        (_lp-hd1222712808_
                                                         (##car _e1222612805_)))
                                                    (_loop1222512797_
                                                     _lp-tl1222812810_
                                                     (cons _lp-hd1222712808_
                                                           _arg1222912802_))))
                                                (let ((_arg1223012813_
                                                       (reverse _arg1222912802_)))
                                                  (if (gx#stx-pair?
                                                       _tl1222112789_)
                                                      (let ((_e1223112816_
                                                             (gx#stx-e
                                                              _tl1222112789_)))
                                                        (let ((_tl1223312821_
                                                               (##cdr _e1223112816_))
                                                              (_hd1223212819_
                                                               (##car _e1223112816_)))
                                                          (if (gx#stx-pair?
                                                               _hd1223212819_)
                                                              (let ((_e1223412824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1223212819_)))
                        (let ((_tl1223612829_ (##cdr _e1223412824_))
                              (_hd1223512827_ (##car _e1223412824_)))
                          (if (gx#identifier? _hd1223512827_)
                              (if (gx#stx-eq? '%#call _hd1223512827_)
                                  (if (gx#stx-pair? _tl1223612829_)
                                      (let ((_e1223712832_
                                             (gx#stx-e _tl1223612829_)))
                                        (let ((_tl1223912837_
                                               (##cdr _e1223712832_))
                                              (_hd1223812835_
                                               (##car _e1223712832_)))
                                          (if (gx#stx-pair? _hd1223812835_)
                                              (let ((_e1224012840_
                                                     (gx#stx-e
                                                      _hd1223812835_)))
                                                (let ((_tl1224212845_
                                                       (##cdr _e1224012840_))
                                                      (_hd1224112843_
                                                       (##car _e1224012840_)))
                                                  (if (gx#identifier?
                                                       _hd1224112843_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1224112843_)
                                                          (if (gx#stx-pair?
                                                               _tl1224212845_)
                                                              (let ((_e1224312848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1224212845_)))
                        (let ((_tl1224512853_ (##cdr _e1224312848_))
                              (_hd1224412851_ (##car _e1224312848_)))
                          (if (gx#stx-null? _tl1224512853_)
                              (if (gx#stx-pair/null? _tl1223912837_)
                                  (let ((___splice1524615247_
                                         (gx#syntax-split-splice
                                          _tl1223912837_
                                          '0)))
                                    (let ((_tl1224812858_
                                           (##vector-ref
                                            ___splice1524615247_
                                            '1))
                                          (_target1224612856_
                                           (##vector-ref
                                            ___splice1524615247_
                                            '0)))
                                      (if (gx#stx-null? _tl1224812858_)
                                          (letrec ((_loop1224912861_
                                                    (lambda (_hd1224712864_
                                                             _xarg1225312866_)
                                                      (if (gx#stx-pair?
                                                           _hd1224712864_)
                                                          (let ((_e1225012869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1224712864_)))
                    (let ((_lp-tl1225212874_ (##cdr _e1225012869_))
                          (_lp-hd1225112872_ (##car _e1225012869_)))
                      (if (gx#stx-pair? _lp-hd1225112872_)
                          (let ((_e1225512877_ (gx#stx-e _lp-hd1225112872_)))
                            (let ((_tl1225712882_ (##cdr _e1225512877_))
                                  (_hd1225612880_ (##car _e1225512877_)))
                              (if (gx#identifier? _hd1225612880_)
                                  (if (gx#stx-eq? '%#ref _hd1225612880_)
                                      (if (gx#stx-pair? _tl1225712882_)
                                          (let ((_e1225812885_
                                                 (gx#stx-e _tl1225712882_)))
                                            (let ((_tl1226012890_
                                                   (##cdr _e1225812885_))
                                                  (_hd1225912888_
                                                   (##car _e1225812885_)))
                                              (if (gx#stx-null? _tl1226012890_)
                                                  (_loop1224912861_
                                                   _lp-tl1225212874_
                                                   (cons _hd1225912888_
                                                         _xarg1225312866_))
                                                  (___match1528315284_
                                                   _e1221912784_
                                                   _hd1222012787_
                                                   _tl1222112789_
                                                   ___splice1524415245_
                                                   _target1222212792_
                                                   _tl1222412794_))))
                                          (___match1528315284_
                                           _e1221912784_
                                           _hd1222012787_
                                           _tl1222112789_
                                           ___splice1524415245_
                                           _target1222212792_
                                           _tl1222412794_))
                                      (___match1528315284_
                                       _e1221912784_
                                       _hd1222012787_
                                       _tl1222112789_
                                       ___splice1524415245_
                                       _target1222212792_
                                       _tl1222412794_))
                                  (___match1528315284_
                                   _e1221912784_
                                   _hd1222012787_
                                   _tl1222112789_
                                   ___splice1524415245_
                                   _target1222212792_
                                   _tl1222412794_))))
                          (___match1528315284_
                           _e1221912784_
                           _hd1222012787_
                           _tl1222112789_
                           ___splice1524415245_
                           _target1222212792_
                           _tl1222412794_))))
                  (let ((_xarg1225412893_ (reverse _xarg1225312866_)))
                    (if (gx#stx-null? _tl1223312821_)
                        (let ((_L12896_ _xarg1225412893_)
                              (_L12897_ _hd1224412851_)
                              (_L12898_ _arg1223012813_))
                          (if (and (gx#identifier-list?
                                    (foldr1 (lambda (_g1292612929_
                                                     _g1292712931_)
                                              (cons _g1292612929_
                                                    _g1292712931_))
                                            '()
                                            _L12898_))
                                   (fx= (length (foldr1 (lambda (_g1293312936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1293412938_)
                  (cons _g1293312936_ _g1293412938_))
                '()
                _L12898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (foldr1 (lambda (_g1294012943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1294112945_)
                  (cons _g1294012943_ _g1294112945_))
                '()
                _L12896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (andmap2 gx#free-identifier=?
                                            (foldr1 (lambda (_g1294712950_
                                                             _g1294812952_)
                                                      (cons _g1294712950_
                                                            _g1294812952_))
                                                    '()
                                                    _L12898_)
                                            (foldr1 (lambda (_g1295412957_
                                                             _g1295512959_)
                                                      (cons _g1295412957_
                                                            _g1295512959_))
                                                    '()
                                                    _L12896_))
                                   (not (find (lambda (_g1296112963_)
                                                (gx#free-identifier=?
                                                 _g1296112963_
                                                 _L12897_))
                                              (foldr1 (lambda (_g1296512968_
                                                               _g1296612970_)
                                                        (cons _g1296512968_
                                                              _g1296612970_))
                                                      '()
                                                      _L12898_))))
                              (___kont1524215243_ _L12896_ _L12897_ _L12898_)
                              (___match1528315284_
                               _e1221912784_
                               _hd1222012787_
                               _tl1222112789_
                               ___splice1524415245_
                               _target1222212792_
                               _tl1222412794_)))
                        (___match1528315284_
                         _e1221912784_
                         _hd1222012787_
                         _tl1222112789_
                         ___splice1524415245_
                         _target1222212792_
                         _tl1222412794_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1224912861_
                                             _target1224612856_
                                             '()))
                                          (___match1528315284_
                                           _e1221912784_
                                           _hd1222012787_
                                           _tl1222112789_
                                           ___splice1524415245_
                                           _target1222212792_
                                           _tl1222412794_))))
                                  (___match1528315284_
                                   _e1221912784_
                                   _hd1222012787_
                                   _tl1222112789_
                                   ___splice1524415245_
                                   _target1222212792_
                                   _tl1222412794_))
                              (___match1528315284_
                               _e1221912784_
                               _hd1222012787_
                               _tl1222112789_
                               ___splice1524415245_
                               _target1222212792_
                               _tl1222412794_))))
                      (___match1528315284_
                       _e1221912784_
                       _hd1222012787_
                       _tl1222112789_
                       ___splice1524415245_
                       _target1222212792_
                       _tl1222412794_))
                  (___match1528315284_
                   _e1221912784_
                   _hd1222012787_
                   _tl1222112789_
                   ___splice1524415245_
                   _target1222212792_
                   _tl1222412794_))
              (___match1528315284_
               _e1221912784_
               _hd1222012787_
               _tl1222112789_
               ___splice1524415245_
               _target1222212792_
               _tl1222412794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1528315284_
                                               _e1221912784_
                                               _hd1222012787_
                                               _tl1222112789_
                                               ___splice1524415245_
                                               _target1222212792_
                                               _tl1222412794_))))
                                      (___match1528315284_
                                       _e1221912784_
                                       _hd1222012787_
                                       _tl1222112789_
                                       ___splice1524415245_
                                       _target1222212792_
                                       _tl1222412794_))
                                  (___match1528315284_
                                   _e1221912784_
                                   _hd1222012787_
                                   _tl1222112789_
                                   ___splice1524415245_
                                   _target1222212792_
                                   _tl1222412794_))
                              (___match1528315284_
                               _e1221912784_
                               _hd1222012787_
                               _tl1222112789_
                               ___splice1524415245_
                               _target1222212792_
                               _tl1222412794_))))
                      (___match1528315284_
                       _e1221912784_
                       _hd1222012787_
                       _tl1222112789_
                       ___splice1524415245_
                       _target1222212792_
                       _tl1222412794_))))
              (___match1528315284_
               _e1221912784_
               _hd1222012787_
               _tl1222112789_
               ___splice1524415245_
               _target1222212792_
               _tl1222412794_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1222512797_ _target1222212792_ '())))))
                        (if (gx#stx-pair? ___stx1524015241_)
                            (let ((_e1221912784_ (gx#stx-e ___stx1524015241_)))
                              (let ((_tl1222112789_ (##cdr _e1221912784_))
                                    (_hd1222012787_ (##car _e1221912784_)))
                                (if (gx#stx-pair/null? _hd1222012787_)
                                    (let ((___splice1524415245_
                                           (gx#syntax-split-splice
                                            _hd1222012787_
                                            '0)))
                                      (let ((_tl1222412794_
                                             (##vector-ref
                                              ___splice1524415245_
                                              '1))
                                            (_target1222212792_
                                             (##vector-ref
                                              ___splice1524415245_
                                              '0)))
                                        (if (gx#stx-null? _tl1222412794_)
                                            (___match1527115272_
                                             _e1221912784_
                                             _hd1222012787_
                                             _tl1222112789_
                                             ___splice1524415245_
                                             _target1222212792_
                                             _tl1222412794_)
                                            (___match1528315284_
                                             _e1221912784_
                                             _hd1222012787_
                                             _tl1222112789_
                                             ___splice1524415245_
                                             _target1222212792_
                                             _tl1222412794_))))
                                    (if (gx#stx-pair? _tl1222112789_)
                                        (let ((_e1233412391_
                                               (gx#stx-e _tl1222112789_)))
                                          (let ((_tl1233612396_
                                                 (##cdr _e1233412391_))
                                                (_hd1233512394_
                                                 (##car _e1233412391_)))
                                            (if (gx#stx-pair? _hd1233512394_)
                                                (let ((_e1233712399_
                                                       (gx#stx-e
                                                        _hd1233512394_)))
                                                  (let ((_tl1233912404_
                                                         (##cdr _e1233712399_))
                                                        (_hd1233812402_
                                                         (##car _e1233712399_)))
                                                    (if (gx#identifier?
                                                         _hd1233812402_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1233812402_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1233912404_)
                        (let ((_e1234012407_ (gx#stx-e _tl1233912404_)))
                          (let ((_tl1234212412_ (##cdr _e1234012407_))
                                (_hd1234112410_ (##car _e1234012407_)))
                            (if (gx#stx-pair? _hd1234112410_)
                                (let ((_e1234312415_
                                       (gx#stx-e _hd1234112410_)))
                                  (let ((_tl1234512420_ (##cdr _e1234312415_))
                                        (_hd1234412418_ (##car _e1234312415_)))
                                    (if (gx#identifier? _hd1234412418_)
                                        (if (gx#stx-eq? '%#ref _hd1234412418_)
                                            (if (gx#stx-pair? _tl1234512420_)
                                                (let ((_e1234612423_
                                                       (gx#stx-e
                                                        _tl1234512420_)))
                                                  (let ((_tl1234812428_
                                                         (##cdr _e1234612423_))
                                                        (_hd1234712426_
                                                         (##car _e1234612423_)))
                                                    (if (gx#stx-null?
                                                         _tl1234812428_)
                                                        (if (gx#stx-pair?
                                                             _tl1234212412_)
                                                            (let ((_e1234912431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1234212412_)))
                      (let ((_tl1235112436_ (##cdr _e1234912431_))
                            (_hd1235012434_ (##car _e1234912431_)))
                        (if (gx#stx-pair? _hd1235012434_)
                            (let ((_e1235212439_ (gx#stx-e _hd1235012434_)))
                              (let ((_tl1235412444_ (##cdr _e1235212439_))
                                    (_hd1235312442_ (##car _e1235212439_)))
                                (if (gx#identifier? _hd1235312442_)
                                    (if (gx#stx-eq? '%#ref _hd1235312442_)
                                        (if (gx#stx-pair? _tl1235412444_)
                                            (let ((_e1235512447_
                                                   (gx#stx-e _tl1235412444_)))
                                              (let ((_tl1235712452_
                                                     (##cdr _e1235512447_))
                                                    (_hd1235612450_
                                                     (##car _e1235512447_)))
                                                (if (gx#stx-null?
                                                     _tl1235712452_)
                                                    (if (gx#stx-pair?
                                                         _tl1235112436_)
                                                        (let ((_e1235812455_
                                                               (gx#stx-e
                                                                _tl1235112436_)))
                                                          (let ((_tl1236012460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1235812455_))
                        (_hd1235912458_ (##car _e1235812455_)))
                    (if (gx#stx-pair? _hd1235912458_)
                        (let ((_e1236112463_ (gx#stx-e _hd1235912458_)))
                          (let ((_tl1236312468_ (##cdr _e1236112463_))
                                (_hd1236212466_ (##car _e1236112463_)))
                            (if (gx#identifier? _hd1236212466_)
                                (if (gx#stx-eq? '%#ref _hd1236212466_)
                                    (if (gx#stx-pair? _tl1236312468_)
                                        (let ((_e1236412471_
                                               (gx#stx-e _tl1236312468_)))
                                          (let ((_tl1236612476_
                                                 (##cdr _e1236412471_))
                                                (_hd1236512474_
                                                 (##car _e1236412471_)))
                                            (if (gx#stx-null? _tl1236612476_)
                                                (if (gx#stx-null?
                                                     _tl1236012460_)
                                                    (if (gx#stx-null?
                                                         _tl1233612396_)
                                                        (___match1538115382_
                                                         _e1221912784_
                                                         _hd1222012787_
                                                         _tl1222112789_
                                                         _e1233412391_
                                                         _hd1233512394_
                                                         _tl1233612396_
                                                         _e1233712399_
                                                         _hd1233812402_
                                                         _tl1233912404_
                                                         _e1234012407_
                                                         _hd1234112410_
                                                         _tl1234212412_
                                                         _e1234312415_
                                                         _hd1234412418_
                                                         _tl1234512420_
                                                         _e1234612423_
                                                         _hd1234712426_
                                                         _tl1234812428_
                                                         _e1234912431_
                                                         _hd1235012434_
                                                         _tl1235112436_
                                                         _e1235212439_
                                                         _hd1235312442_
                                                         _tl1235412444_
                                                         _e1235512447_
                                                         _hd1235612450_
                                                         _tl1235712452_
                                                         _e1235812455_
                                                         _hd1235912458_
                                                         _tl1236012460_
                                                         _e1236112463_
                                                         _hd1236212466_
                                                         _tl1236312468_
                                                         _e1236412471_
                                                         _hd1236512474_
                                                         _tl1236612476_)
                                                        (___kont1525615257_))
                                                    (___kont1525615257_))
                                                (___kont1525615257_))))
                                        (___kont1525615257_))
                                    (___kont1525615257_))
                                (___kont1525615257_))))
                        (___kont1525615257_))))
                (___kont1525615257_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1525615257_))))
                                            (___kont1525615257_))
                                        (___kont1525615257_))
                                    (___kont1525615257_))))
                            (___kont1525615257_))))
                    (___kont1525615257_))
                (___kont1525615257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1525615257_))
                                            (___kont1525615257_))
                                        (___kont1525615257_))))
                                (___kont1525615257_))))
                        (___kont1525615257_))
                    (___kont1525615257_))
                (___kont1525615257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1525615257_))))
                                        (___kont1525615257_)))))
                            (___kont1525615257_)))))))
               (_dispatch-case-e11522_
                (lambda (_hd11670_ _body11671_)
                  (let* ((_form11673_ (cons _hd11670_ (cons _body11671_ '())))
                         (___stx1538415385_ _form11673_)
                         (_g1167711801_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1538415385_))))
                    (let ((___kont1538615387_
                           (lambda (_L12172_ _L12173_ _L12174_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L12173_ '())))))
                          (___kont1539215393_
                           (lambda (_L12020_ _L12021_ _L12022_ _L12023_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L12020_ '())))))
                          (___kont1539615397_
                           (lambda (_L11886_ _L11887_ _L11888_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11886_ '()))))))
                      (let* ((___match1549315494_
                              (lambda (_e1176711806_
                                       _hd1176811809_
                                       _tl1176911811_
                                       _e1177011814_
                                       _hd1177111817_
                                       _tl1177211819_
                                       _e1177311822_
                                       _hd1177411825_
                                       _tl1177511827_
                                       _e1177611830_
                                       _hd1177711833_
                                       _tl1177811835_
                                       _e1177911838_
                                       _hd1178011841_
                                       _tl1178111843_
                                       _e1178211846_
                                       _hd1178311849_
                                       _tl1178411851_
                                       _e1178511854_
                                       _hd1178611857_
                                       _tl1178711859_
                                       _e1178811862_
                                       _hd1178911865_
                                       _tl1179011867_
                                       _e1179111870_
                                       _hd1179211873_
                                       _tl1179311875_)
                                (if (gx#stx-pair? _tl1178711859_)
                                    (let ((_e1179411878_
                                           (gx#stx-e _tl1178711859_)))
                                      (let ((_tl1179611883_
                                             (##cdr _e1179411878_))
                                            (_hd1179511881_
                                             (##car _e1179411878_)))
                                        (if (gx#stx-null? _tl1179611883_)
                                            (if (gx#stx-null? _tl1177211819_)
                                                (___kont1539615397_
                                                 _hd1179211873_
                                                 _hd1178311849_
                                                 _hd1176811809_)
                                                (_g1167711801_))
                                            (_g1167711801_))))
                                    (_g1167711801_))))
                             (___match1542315424_
                              (lambda (_e1172811924_
                                       _hd1172911927_
                                       _tl1173011929_
                                       ___splice1539415395_
                                       _target1173111932_
                                       _tl1173311934_)
                                (letrec ((_loop1173411937_
                                          (lambda (_hd1173211940_
                                                   _arg1173811942_)
                                            (if (gx#stx-pair? _hd1173211940_)
                                                (let ((_e1173511945_
                                                       (gx#stx-e
                                                        _hd1173211940_)))
                                                  (let ((_lp-tl1173711950_
                                                         (##cdr _e1173511945_))
                                                        (_lp-hd1173611948_
                                                         (##car _e1173511945_)))
                                                    (_loop1173411937_
                                                     _lp-tl1173711950_
                                                     (cons _lp-hd1173611948_
                                                           _arg1173811942_))))
                                                (let ((_arg1173911953_
                                                       (reverse _arg1173811942_)))
                                                  (if (gx#stx-pair?
                                                       _tl1173011929_)
                                                      (let ((_e1174011956_
                                                             (gx#stx-e
                                                              _tl1173011929_)))
                                                        (let ((_tl1174211961_
                                                               (##cdr _e1174011956_))
                                                              (_hd1174111959_
                                                               (##car _e1174011956_)))
                                                          (if (gx#stx-pair?
                                                               _hd1174111959_)
                                                              (let ((_e1174311964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1174111959_)))
                        (let ((_tl1174511969_ (##cdr _e1174311964_))
                              (_hd1174411967_ (##car _e1174311964_)))
                          (if (gx#identifier? _hd1174411967_)
                              (if (gx#stx-eq? '%#call _hd1174411967_)
                                  (if (gx#stx-pair? _tl1174511969_)
                                      (let ((_e1174611972_
                                             (gx#stx-e _tl1174511969_)))
                                        (let ((_tl1174811977_
                                               (##cdr _e1174611972_))
                                              (_hd1174711975_
                                               (##car _e1174611972_)))
                                          (if (gx#stx-pair? _hd1174711975_)
                                              (let ((_e1174911980_
                                                     (gx#stx-e
                                                      _hd1174711975_)))
                                                (let ((_tl1175111985_
                                                       (##cdr _e1174911980_))
                                                      (_hd1175011983_
                                                       (##car _e1174911980_)))
                                                  (if (gx#identifier?
                                                       _hd1175011983_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1175011983_)
                                                          (if (gx#stx-pair?
                                                               _tl1175111985_)
                                                              (let ((_e1175211988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1175111985_)))
                        (let ((_tl1175411993_ (##cdr _e1175211988_))
                              (_hd1175311991_ (##car _e1175211988_)))
                          (if (gx#stx-null? _tl1175411993_)
                              (if (gx#stx-pair? _tl1174811977_)
                                  (let ((_e1175511996_
                                         (gx#stx-e _tl1174811977_)))
                                    (let ((_tl1175712001_
                                           (##cdr _e1175511996_))
                                          (_hd1175611999_
                                           (##car _e1175511996_)))
                                      (if (gx#stx-pair? _hd1175611999_)
                                          (let ((_e1175812004_
                                                 (gx#stx-e _hd1175611999_)))
                                            (let ((_tl1176012009_
                                                   (##cdr _e1175812004_))
                                                  (_hd1175912007_
                                                   (##car _e1175812004_)))
                                              (if (gx#identifier?
                                                   _hd1175912007_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1175912007_)
                                                      (if (gx#stx-pair?
                                                           _tl1176012009_)
                                                          (let ((_e1176112012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1176012009_)))
                    (let ((_tl1176312017_ (##cdr _e1176112012_))
                          (_hd1176212015_ (##car _e1176112012_)))
                      (if (gx#stx-null? _tl1176312017_)
                          (if (gx#stx-null? _tl1174211961_)
                              (___kont1539215393_
                               _hd1176212015_
                               _hd1175311991_
                               _tl1173311934_
                               _arg1173911953_)
                              (___match1549315494_
                               _e1172811924_
                               _hd1172911927_
                               _tl1173011929_
                               _e1174011956_
                               _hd1174111959_
                               _tl1174211961_
                               _e1174311964_
                               _hd1174411967_
                               _tl1174511969_
                               _e1174611972_
                               _hd1174711975_
                               _tl1174811977_
                               _e1174911980_
                               _hd1175011983_
                               _tl1175111985_
                               _e1175211988_
                               _hd1175311991_
                               _tl1175411993_
                               _e1175511996_
                               _hd1175611999_
                               _tl1175712001_
                               _e1175812004_
                               _hd1175912007_
                               _tl1176012009_
                               _e1176112012_
                               _hd1176212015_
                               _tl1176312017_))
                          (_g1167711801_))))
                  (_g1167711801_))
              (_g1167711801_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1167711801_))))
                                          (_g1167711801_))))
                                  (_g1167711801_))
                              (_g1167711801_))))
                      (_g1167711801_))
                  (_g1167711801_))
              (_g1167711801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1167711801_))))
                                      (_g1167711801_))
                                  (_g1167711801_))
                              (_g1167711801_))))
                      (_g1167711801_))))
              (_g1167711801_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1173411937_ _target1173111932_ '()))))
                             (___match1541115412_
                              (lambda (_e1168212060_
                                       _hd1168312063_
                                       _tl1168412065_
                                       ___splice1538815389_
                                       _target1168512068_
                                       _tl1168712070_)
                                (letrec ((_loop1168812073_
                                          (lambda (_hd1168612076_
                                                   _arg1169212078_)
                                            (if (gx#stx-pair? _hd1168612076_)
                                                (let ((_e1168912081_
                                                       (gx#stx-e
                                                        _hd1168612076_)))
                                                  (let ((_lp-tl1169112086_
                                                         (##cdr _e1168912081_))
                                                        (_lp-hd1169012084_
                                                         (##car _e1168912081_)))
                                                    (_loop1168812073_
                                                     _lp-tl1169112086_
                                                     (cons _lp-hd1169012084_
                                                           _arg1169212078_))))
                                                (let ((_arg1169312089_
                                                       (reverse _arg1169212078_)))
                                                  (if (gx#stx-pair?
                                                       _tl1168412065_)
                                                      (let ((_e1169412092_
                                                             (gx#stx-e
                                                              _tl1168412065_)))
                                                        (let ((_tl1169612097_
                                                               (##cdr _e1169412092_))
                                                              (_hd1169512095_
                                                               (##car _e1169412092_)))
                                                          (if (gx#stx-pair?
                                                               _hd1169512095_)
                                                              (let ((_e1169712100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1169512095_)))
                        (let ((_tl1169912105_ (##cdr _e1169712100_))
                              (_hd1169812103_ (##car _e1169712100_)))
                          (if (gx#identifier? _hd1169812103_)
                              (if (gx#stx-eq? '%#call _hd1169812103_)
                                  (if (gx#stx-pair? _tl1169912105_)
                                      (let ((_e1170012108_
                                             (gx#stx-e _tl1169912105_)))
                                        (let ((_tl1170212113_
                                               (##cdr _e1170012108_))
                                              (_hd1170112111_
                                               (##car _e1170012108_)))
                                          (if (gx#stx-pair? _hd1170112111_)
                                              (let ((_e1170312116_
                                                     (gx#stx-e
                                                      _hd1170112111_)))
                                                (let ((_tl1170512121_
                                                       (##cdr _e1170312116_))
                                                      (_hd1170412119_
                                                       (##car _e1170312116_)))
                                                  (if (gx#identifier?
                                                       _hd1170412119_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1170412119_)
                                                          (if (gx#stx-pair?
                                                               _tl1170512121_)
                                                              (let ((_e1170612124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1170512121_)))
                        (let ((_tl1170812129_ (##cdr _e1170612124_))
                              (_hd1170712127_ (##car _e1170612124_)))
                          (if (gx#stx-null? _tl1170812129_)
                              (if (gx#stx-pair/null? _tl1170212113_)
                                  (let ((___splice1539015391_
                                         (gx#syntax-split-splice
                                          _tl1170212113_
                                          '0)))
                                    (let ((_tl1171112134_
                                           (##vector-ref
                                            ___splice1539015391_
                                            '1))
                                          (_target1170912132_
                                           (##vector-ref
                                            ___splice1539015391_
                                            '0)))
                                      (if (gx#stx-null? _tl1171112134_)
                                          (letrec ((_loop1171212137_
                                                    (lambda (_hd1171012140_
                                                             _xarg1171612142_)
                                                      (if (gx#stx-pair?
                                                           _hd1171012140_)
                                                          (let ((_e1171312145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1171012140_)))
                    (let ((_lp-tl1171512150_ (##cdr _e1171312145_))
                          (_lp-hd1171412148_ (##car _e1171312145_)))
                      (if (gx#stx-pair? _lp-hd1171412148_)
                          (let ((_e1171812153_ (gx#stx-e _lp-hd1171412148_)))
                            (let ((_tl1172012158_ (##cdr _e1171812153_))
                                  (_hd1171912156_ (##car _e1171812153_)))
                              (if (gx#identifier? _hd1171912156_)
                                  (if (gx#stx-eq? '%#ref _hd1171912156_)
                                      (if (gx#stx-pair? _tl1172012158_)
                                          (let ((_e1172112161_
                                                 (gx#stx-e _tl1172012158_)))
                                            (let ((_tl1172312166_
                                                   (##cdr _e1172112161_))
                                                  (_hd1172212164_
                                                   (##car _e1172112161_)))
                                              (if (gx#stx-null? _tl1172312166_)
                                                  (_loop1171212137_
                                                   _lp-tl1171512150_
                                                   (cons _hd1172212164_
                                                         _xarg1171612142_))
                                                  (___match1542315424_
                                                   _e1168212060_
                                                   _hd1168312063_
                                                   _tl1168412065_
                                                   ___splice1538815389_
                                                   _target1168512068_
                                                   _tl1168712070_))))
                                          (___match1542315424_
                                           _e1168212060_
                                           _hd1168312063_
                                           _tl1168412065_
                                           ___splice1538815389_
                                           _target1168512068_
                                           _tl1168712070_))
                                      (___match1542315424_
                                       _e1168212060_
                                       _hd1168312063_
                                       _tl1168412065_
                                       ___splice1538815389_
                                       _target1168512068_
                                       _tl1168712070_))
                                  (___match1542315424_
                                   _e1168212060_
                                   _hd1168312063_
                                   _tl1168412065_
                                   ___splice1538815389_
                                   _target1168512068_
                                   _tl1168712070_))))
                          (___match1542315424_
                           _e1168212060_
                           _hd1168312063_
                           _tl1168412065_
                           ___splice1538815389_
                           _target1168512068_
                           _tl1168712070_))))
                  (let ((_xarg1171712169_ (reverse _xarg1171612142_)))
                    (if (gx#stx-null? _tl1169612097_)
                        (___kont1538615387_
                         _xarg1171712169_
                         _hd1170712127_
                         _arg1169312089_)
                        (___match1542315424_
                         _e1168212060_
                         _hd1168312063_
                         _tl1168412065_
                         ___splice1538815389_
                         _target1168512068_
                         _tl1168712070_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1171212137_
                                             _target1170912132_
                                             '()))
                                          (___match1542315424_
                                           _e1168212060_
                                           _hd1168312063_
                                           _tl1168412065_
                                           ___splice1538815389_
                                           _target1168512068_
                                           _tl1168712070_))))
                                  (___match1542315424_
                                   _e1168212060_
                                   _hd1168312063_
                                   _tl1168412065_
                                   ___splice1538815389_
                                   _target1168512068_
                                   _tl1168712070_))
                              (___match1542315424_
                               _e1168212060_
                               _hd1168312063_
                               _tl1168412065_
                               ___splice1538815389_
                               _target1168512068_
                               _tl1168712070_))))
                      (___match1542315424_
                       _e1168212060_
                       _hd1168312063_
                       _tl1168412065_
                       ___splice1538815389_
                       _target1168512068_
                       _tl1168712070_))
                  (___match1542315424_
                   _e1168212060_
                   _hd1168312063_
                   _tl1168412065_
                   ___splice1538815389_
                   _target1168512068_
                   _tl1168712070_))
              (___match1542315424_
               _e1168212060_
               _hd1168312063_
               _tl1168412065_
               ___splice1538815389_
               _target1168512068_
               _tl1168712070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1542315424_
                                               _e1168212060_
                                               _hd1168312063_
                                               _tl1168412065_
                                               ___splice1538815389_
                                               _target1168512068_
                                               _tl1168712070_))))
                                      (___match1542315424_
                                       _e1168212060_
                                       _hd1168312063_
                                       _tl1168412065_
                                       ___splice1538815389_
                                       _target1168512068_
                                       _tl1168712070_))
                                  (___match1542315424_
                                   _e1168212060_
                                   _hd1168312063_
                                   _tl1168412065_
                                   ___splice1538815389_
                                   _target1168512068_
                                   _tl1168712070_))
                              (___match1542315424_
                               _e1168212060_
                               _hd1168312063_
                               _tl1168412065_
                               ___splice1538815389_
                               _target1168512068_
                               _tl1168712070_))))
                      (___match1542315424_
                       _e1168212060_
                       _hd1168312063_
                       _tl1168412065_
                       ___splice1538815389_
                       _target1168512068_
                       _tl1168712070_))))
              (___match1542315424_
               _e1168212060_
               _hd1168312063_
               _tl1168412065_
               ___splice1538815389_
               _target1168512068_
               _tl1168712070_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1168812073_ _target1168512068_ '())))))
                        (if (gx#stx-pair? ___stx1538415385_)
                            (let ((_e1168212060_ (gx#stx-e ___stx1538415385_)))
                              (let ((_tl1168412065_ (##cdr _e1168212060_))
                                    (_hd1168312063_ (##car _e1168212060_)))
                                (if (gx#stx-pair/null? _hd1168312063_)
                                    (let ((___splice1538815389_
                                           (gx#syntax-split-splice
                                            _hd1168312063_
                                            '0)))
                                      (let ((_tl1168712070_
                                             (##vector-ref
                                              ___splice1538815389_
                                              '1))
                                            (_target1168512068_
                                             (##vector-ref
                                              ___splice1538815389_
                                              '0)))
                                        (if (gx#stx-null? _tl1168712070_)
                                            (___match1541115412_
                                             _e1168212060_
                                             _hd1168312063_
                                             _tl1168412065_
                                             ___splice1538815389_
                                             _target1168512068_
                                             _tl1168712070_)
                                            (___match1542315424_
                                             _e1168212060_
                                             _hd1168312063_
                                             _tl1168412065_
                                             ___splice1538815389_
                                             _target1168512068_
                                             _tl1168712070_))))
                                    (if (gx#stx-pair? _tl1168412065_)
                                        (let ((_e1177011814_
                                               (gx#stx-e _tl1168412065_)))
                                          (let ((_tl1177211819_
                                                 (##cdr _e1177011814_))
                                                (_hd1177111817_
                                                 (##car _e1177011814_)))
                                            (if (gx#stx-pair? _hd1177111817_)
                                                (let ((_e1177311822_
                                                       (gx#stx-e
                                                        _hd1177111817_)))
                                                  (let ((_tl1177511827_
                                                         (##cdr _e1177311822_))
                                                        (_hd1177411825_
                                                         (##car _e1177311822_)))
                                                    (if (gx#identifier?
                                                         _hd1177411825_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1177411825_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1177511827_)
                        (let ((_e1177611830_ (gx#stx-e _tl1177511827_)))
                          (let ((_tl1177811835_ (##cdr _e1177611830_))
                                (_hd1177711833_ (##car _e1177611830_)))
                            (if (gx#stx-pair? _hd1177711833_)
                                (let ((_e1177911838_
                                       (gx#stx-e _hd1177711833_)))
                                  (let ((_tl1178111843_ (##cdr _e1177911838_))
                                        (_hd1178011841_ (##car _e1177911838_)))
                                    (if (gx#identifier? _hd1178011841_)
                                        (if (gx#stx-eq? '%#ref _hd1178011841_)
                                            (if (gx#stx-pair? _tl1178111843_)
                                                (let ((_e1178211846_
                                                       (gx#stx-e
                                                        _tl1178111843_)))
                                                  (let ((_tl1178411851_
                                                         (##cdr _e1178211846_))
                                                        (_hd1178311849_
                                                         (##car _e1178211846_)))
                                                    (if (gx#stx-null?
                                                         _tl1178411851_)
                                                        (if (gx#stx-pair?
                                                             _tl1177811835_)
                                                            (let ((_e1178511854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1177811835_)))
                      (let ((_tl1178711859_ (##cdr _e1178511854_))
                            (_hd1178611857_ (##car _e1178511854_)))
                        (if (gx#stx-pair? _hd1178611857_)
                            (let ((_e1178811862_ (gx#stx-e _hd1178611857_)))
                              (let ((_tl1179011867_ (##cdr _e1178811862_))
                                    (_hd1178911865_ (##car _e1178811862_)))
                                (if (gx#identifier? _hd1178911865_)
                                    (if (gx#stx-eq? '%#ref _hd1178911865_)
                                        (if (gx#stx-pair? _tl1179011867_)
                                            (let ((_e1179111870_
                                                   (gx#stx-e _tl1179011867_)))
                                              (let ((_tl1179311875_
                                                     (##cdr _e1179111870_))
                                                    (_hd1179211873_
                                                     (##car _e1179111870_)))
                                                (if (gx#stx-null?
                                                     _tl1179311875_)
                                                    (if (gx#stx-pair?
                                                         _tl1178711859_)
                                                        (let ((_e1179411878_
                                                               (gx#stx-e
                                                                _tl1178711859_)))
                                                          (let ((_tl1179611883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1179411878_))
                        (_hd1179511881_ (##car _e1179411878_)))
                    (if (gx#stx-null? _tl1179611883_)
                        (if (gx#stx-null? _tl1177211819_)
                            (___kont1539615397_
                             _hd1179211873_
                             _hd1178311849_
                             _hd1168312063_)
                            (_g1167711801_))
                        (_g1167711801_))))
                (_g1167711801_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1167711801_))))
                                            (_g1167711801_))
                                        (_g1167711801_))
                                    (_g1167711801_))))
                            (_g1167711801_))))
                    (_g1167711801_))
                (_g1167711801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1167711801_))
                                            (_g1167711801_))
                                        (_g1167711801_))))
                                (_g1167711801_))))
                        (_g1167711801_))
                    (_g1167711801_))
                (_g1167711801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1167711801_))))
                                        (_g1167711801_)))))
                            (_g1167711801_)))))))
               (_generate111523_
                (lambda (_args11658_ _arglen11659_ _hd11660_ _body11661_)
                  (let* ((_len11663_ (gx#stx-length _hd11660_))
                         (_condition11665_
                          (if (gx#stx-list? _hd11660_)
                              (cons '##fx=
                                    (cons _arglen11659_ (cons _len11663_ '())))
                              (if (> _len11663_ '0)
                                  (cons '##fx>=
                                        (cons _arglen11659_
                                              (cons _len11663_ '())))
                                  '#t)))
                         (_dispatch11667_
                          (if (_dispatch-case?11521_ _hd11660_ _body11661_)
                              (_dispatch-case-e11522_ _hd11660_ _body11661_)
                              (gxc#generate-runtime-lambda-form
                               _hd11660_
                               _body11661_))))
                    (cons _condition11665_
                          (cons (cons 'apply
                                      (cons _dispatch11667_
                                            (cons _args11658_ '())))
                                '()))))))
        (let* ((_g1152511553_
                (lambda (_g1152611550_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1152611550_)))
               (_g1152411655_
                (lambda (_g1152611556_)
                  (if (gx#stx-pair? _g1152611556_)
                      (let ((_e1152911558_ (gx#stx-e _g1152611556_)))
                        (let ((_hd1153011561_ (##car _e1152911558_))
                              (_tl1153111563_ (##cdr _e1152911558_)))
                          (if (gx#stx-pair/null? _tl1153111563_)
                              (let ((_g16381_
                                     (gx#syntax-split-splice
                                      _tl1153111563_
                                      '0)))
                                (begin
                                  (let ((_g16382_
                                         (if (##values? _g16381_)
                                             (##vector-length _g16381_)
                                             1)))
                                    (if (not (##fx= _g16382_ 2))
                                        (error "Context expects 2 values"
                                               _g16382_)))
                                  (let ((_target1153211566_
                                         (##vector-ref _g16381_ 0))
                                        (_tl1153411568_
                                         (##vector-ref _g16381_ 1)))
                                    (if (gx#stx-null? _tl1153411568_)
                                        (letrec ((_loop1153511571_
                                                  (lambda (_hd1153311574_
                                                           _body1153911576_
                                                           _hd1154011578_)
                                                    (if (gx#stx-pair?
                                                         _hd1153311574_)
                                                        (let ((_e1153611581_
                                                               (gx#stx-e
                                                                _hd1153311574_)))
                                                          (let ((_lp-hd1153711584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1153611581_))
                        (_lp-tl1153811586_ (##cdr _e1153611581_)))
                    (if (gx#stx-pair? _lp-hd1153711584_)
                        (let ((_e1154311589_ (gx#stx-e _lp-hd1153711584_)))
                          (let ((_hd1154411592_ (##car _e1154311589_))
                                (_tl1154511594_ (##cdr _e1154311589_)))
                            (if (gx#stx-pair? _tl1154511594_)
                                (let ((_e1154611597_
                                       (gx#stx-e _tl1154511594_)))
                                  (let ((_hd1154711600_ (##car _e1154611597_))
                                        (_tl1154811602_ (##cdr _e1154611597_)))
                                    (if (gx#stx-null? _tl1154811602_)
                                        (_loop1153511571_
                                         _lp-tl1153811586_
                                         (cons _hd1154711600_ _body1153911576_)
                                         (cons _hd1154411592_ _hd1154011578_))
                                        (_g1152511553_ _g1152611556_))))
                                (_g1152511553_ _g1152611556_))))
                        (_g1152511553_ _g1152611556_))))
                (let ((_body1154111605_ (reverse _body1153911576_))
                      (_hd1154211607_ (reverse _hd1154011578_)))
                  ((lambda (_L11610_ _L11611_)
                     (let ((_args11630_ (gxc#generate-runtime-temporary__0))
                           (_arglen11631_ (gxc#generate-runtime-temporary__0))
                           (_name11632_
                            (let ((_$e11627_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx11519_
                                    '#f)))
                              (if _$e11627_
                                  _$e11627_
                                  ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args11630_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen11631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args11630_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name11632_
                                                               (cons _args11630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g1163311636_ _g1163411638_)
                                        (_generate111523_
                                         _args11630_
                                         _arglen11631_
                                         _g1163311636_
                                         _g1163411638_))
                                      (foldr1 (lambda (_g1164011643_
                                                       _g1164111645_)
                                                (cons _g1164011643_
                                                      _g1164111645_))
                                              '()
                                              _L11611_)
                                      (foldr1 (lambda (_g1164711650_
                                                       _g1164811652_)
                                                (cons _g1164711650_
                                                      _g1164811652_))
                                              '()
                                              _L11610_))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body1154111605_
                   _hd1154211607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1153511571_
                                           _target1153211566_
                                           '()
                                           '()))
                                        (_g1152511553_ _g1152611556_)))))
                              (_g1152511553_ _g1152611556_))))
                      (_g1152511553_ _g1152611556_)))))
          (_g1152411655_ _stx11519_)))))
  (define gxc#generate-runtime-let-values%__%
    (lambda (_stx10318_ _compiled-body?10319_)
      (letrec ((_generate-simple10321_
                (lambda (_hd11506_ _body11507_)
                  (_coalesce-boolean10322_
                   (_coalesce-let*10323_
                    (gxc#generate-runtime-simple-let
                     'let
                     _hd11506_
                     _body11507_
                     _compiled-body?10319_)))))
               (_coalesce-boolean10322_
                (lambda (_code11241_)
                  (if (gxc#current-compile-boolean-context)
                      (let* ((___stx1553415535_ _code11241_)
                             (_g1124411285_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1553415535_))))
                        (let ((___kont1553615537_
                               (lambda (_L11377_
                                        _L11378_
                                        _L11379_
                                        _L11380_
                                        _L11381_)
                                 (let* ((___stx1550615507_ _L11377_)
                                        (_g1141511434_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1550615507_))))
                                   (let ((___kont1550815509_
                                          (lambda (_L11478_)
                                            (cons 'or
                                                  (cons _L11380_
                                                        (foldr1 (lambda (_g1149211495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1149311497_)
                          (cons _g1149211495_ _g1149311497_))
                        '()
                        _L11478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont1551215513_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _L11380_
                                                        (cons _L11377_
                                                              '()))))))
                                     (let ((___match1553115532_
                                            (lambda (_e1141811446_
                                                     _hd1141911449_
                                                     _tl1142011451_
                                                     ___splice1551015511_
                                                     _target1142111454_
                                                     _tl1142311456_)
                                              (letrec ((_loop1142411459_
                                                        (lambda (_hd1142211462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr31142811464_)
                  (if (gx#stx-pair? _hd1142211462_)
                      (let ((_e1142511467_ (gx#stx-e _hd1142211462_)))
                        (let ((_lp-tl1142711472_ (##cdr _e1142511467_))
                              (_lp-hd1142611470_ (##car _e1142511467_)))
                          (_loop1142411459_
                           _lp-tl1142711472_
                           (cons _lp-hd1142611470_ _expr31142811464_))))
                      (let ((_expr31142911475_ (reverse _expr31142811464_)))
                        (___kont1550815509_ _expr31142911475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1142411459_
                                                 _target1142111454_
                                                 '())))))
                                       (if (gx#stx-pair? ___stx1550615507_)
                                           (let ((_e1141811446_
                                                  (gx#stx-e
                                                   ___stx1550615507_)))
                                             (let ((_tl1142011451_
                                                    (##cdr _e1141811446_))
                                                   (_hd1141911449_
                                                    (##car _e1141811446_)))
                                               (if (gx#identifier?
                                                    _hd1141911449_)
                                                   (if (gx#stx-eq?
                                                        'or
                                                        _hd1141911449_)
                                                       (if (gx#stx-pair/null?
                                                            _tl1142011451_)
                                                           (let ((___splice1551015511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _tl1142011451_ '0)))
                     (let ((_tl1142311456_
                            (##vector-ref ___splice1551015511_ '1))
                           (_target1142111454_
                            (##vector-ref ___splice1551015511_ '0)))
                       (if (gx#stx-null? _tl1142311456_)
                           (___match1553115532_
                            _e1141811446_
                            _hd1141911449_
                            _tl1142011451_
                            ___splice1551015511_
                            _target1142111454_
                            _tl1142311456_)
                           (___kont1551215513_))))
                   (___kont1551215513_))
               (___kont1551215513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1551215513_))))
                                           (___kont1551215513_)))))))
                              (___kont1553815539_ (lambda () _code11241_)))
                          (let ((___match1561515616_
                                 (lambda (_e1125111297_
                                          _hd1125211300_
                                          _tl1125311302_
                                          _e1125411305_
                                          _hd1125511308_
                                          _tl1125611310_
                                          _e1125711313_
                                          _hd1125811316_
                                          _tl1125911318_
                                          _e1126011321_
                                          _hd1126111324_
                                          _tl1126211326_
                                          _e1126311329_
                                          _hd1126411332_
                                          _tl1126511334_
                                          _e1126611337_
                                          _hd1126711340_
                                          _tl1126811342_
                                          _e1126911345_
                                          _hd1127011348_
                                          _tl1127111350_
                                          _e1127211353_
                                          _hd1127311356_
                                          _tl1127411358_
                                          _e1127511361_
                                          _hd1127611364_
                                          _tl1127711366_
                                          _e1127811369_
                                          _hd1127911372_
                                          _tl1128011374_)
                                   (let ((_L11377_ _hd1127911372_)
                                         (_L11378_ _hd1127611364_)
                                         (_L11379_ _hd1127311356_)
                                         (_L11380_ _hd1126411332_)
                                         (_L11381_ _hd1126111324_))
                                     (if (and (eq? _L11381_ _L11379_)
                                              (eq? _L11381_ _L11378_))
                                         (___kont1553615537_
                                          _L11377_
                                          _L11378_
                                          _L11379_
                                          _L11380_
                                          _L11381_)
                                         (___kont1553815539_))))))
                            (if (gx#stx-pair? ___stx1553415535_)
                                (let ((_e1125111297_
                                       (gx#stx-e ___stx1553415535_)))
                                  (let ((_tl1125311302_ (##cdr _e1125111297_))
                                        (_hd1125211300_ (##car _e1125111297_)))
                                    (if (gx#identifier? _hd1125211300_)
                                        (if (gx#stx-eq? 'let _hd1125211300_)
                                            (if (gx#stx-pair? _tl1125311302_)
                                                (let ((_e1125411305_
                                                       (gx#stx-e
                                                        _tl1125311302_)))
                                                  (let ((_tl1125611310_
                                                         (##cdr _e1125411305_))
                                                        (_hd1125511308_
                                                         (##car _e1125411305_)))
                                                    (if (gx#stx-pair?
                                                         _hd1125511308_)
                                                        (let ((_e1125711313_
                                                               (gx#stx-e
                                                                _hd1125511308_)))
                                                          (let ((_tl1125911318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1125711313_))
                        (_hd1125811316_ (##car _e1125711313_)))
                    (if (gx#stx-pair? _hd1125811316_)
                        (let ((_e1126011321_ (gx#stx-e _hd1125811316_)))
                          (let ((_tl1126211326_ (##cdr _e1126011321_))
                                (_hd1126111324_ (##car _e1126011321_)))
                            (if (gx#stx-pair? _tl1126211326_)
                                (let ((_e1126311329_
                                       (gx#stx-e _tl1126211326_)))
                                  (let ((_tl1126511334_ (##cdr _e1126311329_))
                                        (_hd1126411332_ (##car _e1126311329_)))
                                    (if (gx#stx-null? _tl1126511334_)
                                        (if (gx#stx-null? _tl1125911318_)
                                            (if (gx#stx-pair? _tl1125611310_)
                                                (let ((_e1126611337_
                                                       (gx#stx-e
                                                        _tl1125611310_)))
                                                  (let ((_tl1126811342_
                                                         (##cdr _e1126611337_))
                                                        (_hd1126711340_
                                                         (##car _e1126611337_)))
                                                    (if (gx#stx-pair?
                                                         _hd1126711340_)
                                                        (let ((_e1126911345_
                                                               (gx#stx-e
                                                                _hd1126711340_)))
                                                          (let ((_tl1127111350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1126911345_))
                        (_hd1127011348_ (##car _e1126911345_)))
                    (if (gx#identifier? _hd1127011348_)
                        (if (gx#stx-eq? 'if _hd1127011348_)
                            (if (gx#stx-pair? _tl1127111350_)
                                (let ((_e1127211353_
                                       (gx#stx-e _tl1127111350_)))
                                  (let ((_tl1127411358_ (##cdr _e1127211353_))
                                        (_hd1127311356_ (##car _e1127211353_)))
                                    (if (gx#stx-pair? _tl1127411358_)
                                        (let ((_e1127511361_
                                               (gx#stx-e _tl1127411358_)))
                                          (let ((_tl1127711366_
                                                 (##cdr _e1127511361_))
                                                (_hd1127611364_
                                                 (##car _e1127511361_)))
                                            (if (gx#stx-pair? _tl1127711366_)
                                                (let ((_e1127811369_
                                                       (gx#stx-e
                                                        _tl1127711366_)))
                                                  (let ((_tl1128011374_
                                                         (##cdr _e1127811369_))
                                                        (_hd1127911372_
                                                         (##car _e1127811369_)))
                                                    (if (gx#stx-null?
                                                         _tl1128011374_)
                                                        (if (gx#stx-null?
                                                             _tl1126811342_)
                                                            (___match1561515616_
                                                             _e1125111297_
                                                             _hd1125211300_
                                                             _tl1125311302_
                                                             _e1125411305_
                                                             _hd1125511308_
                                                             _tl1125611310_
                                                             _e1125711313_
                                                             _hd1125811316_
                                                             _tl1125911318_
                                                             _e1126011321_
                                                             _hd1126111324_
                                                             _tl1126211326_
                                                             _e1126311329_
                                                             _hd1126411332_
                                                             _tl1126511334_
                                                             _e1126611337_
                                                             _hd1126711340_
                                                             _tl1126811342_
                                                             _e1126911345_
                                                             _hd1127011348_
                                                             _tl1127111350_
                                                             _e1127211353_
                                                             _hd1127311356_
                                                             _tl1127411358_
                                                             _e1127511361_
                                                             _hd1127611364_
                                                             _tl1127711366_
                                                             _e1127811369_
                                                             _hd1127911372_
                                                             _tl1128011374_)
                                                            (___kont1553815539_))
                                                        (___kont1553815539_))))
                                                (___kont1553815539_))))
                                        (___kont1553815539_))))
                                (___kont1553815539_))
                            (___kont1553815539_))
                        (___kont1553815539_))))
                (___kont1553815539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1553815539_))
                                            (___kont1553815539_))
                                        (___kont1553815539_))))
                                (___kont1553815539_))))
                        (___kont1553815539_))))
                (___kont1553815539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1553815539_))
                                            (___kont1553815539_))
                                        (___kont1553815539_))))
                                (___kont1553815539_)))))
                      _code11241_)))
               (_coalesce-let*10323_
                (lambda (_code10625_)
                  (let* ((___stx1561815619_ _code10625_)
                         (_g1063010765_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1561815619_))))
                    (let ((___kont1562015621_
                           (lambda (_L11200_ _L11201_ _L11202_)
                             (cons 'let
                                   (cons (cons (cons _L11202_
                                                     (cons _L11201_ '()))
                                               '())
                                         (foldr1 (lambda (_g1123011233_
                                                          _g1123111235_)
                                                   (cons _g1123011233_
                                                         _g1123111235_))
                                                 '()
                                                 _L11200_)))))
                          (___kont1562415625_
                           (lambda (_L11059_
                                    _L11060_
                                    _L11061_
                                    _L11062_
                                    _L11063_)
                             (cons 'let*
                                   (cons (cons (cons _L11063_
                                                     (cons _L11062_ '()))
                                               (cons (cons _L11061_
                                                           (cons _L11060_ '()))
                                                     '()))
                                         (foldr1 (lambda (_g1109911102_
                                                          _g1110011104_)
                                                   (cons _g1109911102_
                                                         _g1110011104_))
                                                 '()
                                                 _L11059_)))))
                          (___kont1562815629_
                           (lambda (_L10889_ _L10890_ _L10891_ _L10892_)
                             (cons 'let*
                                   (cons (cons (cons _L10892_
                                                     (cons _L10891_ '()))
                                               (foldr1 (lambda (_g1092710930_
                                                                _g1092810932_)
                                                         (cons _g1092710930_
                                                               _g1092810932_))
                                                       '()
                                                       _L10890_))
                                         (foldr1 (lambda (_g1093410937_
                                                          _g1093510939_)
                                                   (cons _g1093410937_
                                                         _g1093510939_))
                                                 '()
                                                 _L10889_)))))
                          (___kont1563415635_ (lambda () _code10625_)))
                      (let* ((___match1586315864_
                              (lambda (_e1071910777_
                                       _hd1072010780_
                                       _tl1072110782_
                                       _e1072210785_
                                       _hd1072310788_
                                       _tl1072410790_
                                       _e1072510793_
                                       _hd1072610796_
                                       _tl1072710798_
                                       _e1072810801_
                                       _hd1072910804_
                                       _tl1073010806_
                                       _e1073110809_
                                       _hd1073210812_
                                       _tl1073310814_
                                       _e1073410817_
                                       _hd1073510820_
                                       _tl1073610822_
                                       _e1073710825_
                                       _hd1073810828_
                                       _tl1073910830_
                                       _e1074010833_
                                       _hd1074110836_
                                       _tl1074210838_
                                       ___splice1563015631_
                                       _target1074310841_
                                       _tl1074510843_)
                                (letrec ((_loop1074610846_
                                          (lambda (_hd1074410849_
                                                   _bind1075010851_)
                                            (if (gx#stx-pair? _hd1074410849_)
                                                (let ((_e1074710854_
                                                       (gx#stx-e
                                                        _hd1074410849_)))
                                                  (let ((_lp-tl1074910859_
                                                         (##cdr _e1074710854_))
                                                        (_lp-hd1074810857_
                                                         (##car _e1074710854_)))
                                                    (_loop1074610846_
                                                     _lp-tl1074910859_
                                                     (cons _lp-hd1074810857_
                                                           _bind1075010851_))))
                                                (let ((_bind1075110862_
                                                       (reverse _bind1075010851_)))
                                                  (if (gx#stx-pair/null?
                                                       _tl1074210838_)
                                                      (let ((___splice1563215633_
                                                             (gx#syntax-split-splice
                                                              _tl1074210838_
                                                              '0)))
                                                        (let ((_tl1075410867_
                                                               (##vector-ref
                                                                ___splice1563215633_
                                                                '1))
                                                              (_target1075210865_
                                                               (##vector-ref
                                                                ___splice1563215633_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl1075410867_)
                                                              (letrec ((_loop1075510870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_hd1075310873_ _body1075910875_)
                                  (if (gx#stx-pair? _hd1075310873_)
                                      (let ((_e1075610878_
                                             (gx#stx-e _hd1075310873_)))
                                        (let ((_lp-tl1075810883_
                                               (##cdr _e1075610878_))
                                              (_lp-hd1075710881_
                                               (##car _e1075610878_)))
                                          (_loop1075510870_
                                           _lp-tl1075810883_
                                           (cons _lp-hd1075710881_
                                                 _body1075910875_))))
                                      (let ((_body1076010886_
                                             (reverse _body1075910875_)))
                                        (if (gx#stx-null? _tl1073610822_)
                                            (___kont1562815629_
                                             _body1076010886_
                                             _bind1075110862_
                                             _hd1073210812_
                                             _hd1072910804_)
                                            (___kont1563415635_)))))))
                        (_loop1075510870_ _target1075210865_ '()))
                      (___kont1563415635_))))
              (___kont1563415635_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1074610846_ _target1074310841_ '()))))
                             (___match1579515796_
                              (lambda (_e1067310947_
                                       _hd1067410950_
                                       _tl1067510952_
                                       _e1067610955_
                                       _hd1067710958_
                                       _tl1067810960_
                                       _e1067910963_
                                       _hd1068010966_
                                       _tl1068110968_
                                       _e1068210971_
                                       _hd1068310974_
                                       _tl1068410976_
                                       _e1068510979_
                                       _hd1068610982_
                                       _tl1068710984_
                                       _e1068810987_
                                       _hd1068910990_
                                       _tl1069010992_
                                       _e1069110995_
                                       _hd1069210998_
                                       _tl1069311000_
                                       _e1069411003_
                                       _hd1069511006_
                                       _tl1069611008_
                                       _e1069711011_
                                       _hd1069811014_
                                       _tl1069911016_
                                       _e1070011019_
                                       _hd1070111022_
                                       _tl1070211024_
                                       _e1070311027_
                                       _hd1070411030_
                                       _tl1070511032_
                                       ___splice1562615627_
                                       _target1070611035_
                                       _tl1070811037_)
                                (letrec ((_loop1070911040_
                                          (lambda (_hd1070711043_
                                                   _body1071311045_)
                                            (if (gx#stx-pair? _hd1070711043_)
                                                (let ((_e1071011048_
                                                       (gx#stx-e
                                                        _hd1070711043_)))
                                                  (let ((_lp-tl1071211053_
                                                         (##cdr _e1071011048_))
                                                        (_lp-hd1071111051_
                                                         (##car _e1071011048_)))
                                                    (_loop1070911040_
                                                     _lp-tl1071211053_
                                                     (cons _lp-hd1071111051_
                                                           _body1071311045_))))
                                                (let ((_body1071411056_
                                                       (reverse _body1071311045_)))
                                                  (if (gx#stx-null?
                                                       _tl1069010992_)
                                                      (___kont1562415625_
                                                       _body1071411056_
                                                       _hd1070411030_
                                                       _hd1070111022_
                                                       _hd1068610982_
                                                       _hd1068310974_)
                                                      (___kont1563415635_)))))))
                                  (_loop1070911040_ _target1070611035_ '()))))
                             (___match1570515706_
                              (lambda (_e1063511112_
                                       _hd1063611115_
                                       _tl1063711117_
                                       _e1063811120_
                                       _hd1063911123_
                                       _tl1064011125_
                                       _e1064111128_
                                       _hd1064211131_
                                       _tl1064311133_
                                       _e1064411136_
                                       _hd1064511139_
                                       _tl1064611141_
                                       _e1064711144_
                                       _hd1064811147_
                                       _tl1064911149_
                                       _e1065011152_
                                       _hd1065111155_
                                       _tl1065211157_
                                       _e1065311160_
                                       _hd1065411163_
                                       _tl1065511165_
                                       _e1065611168_
                                       _hd1065711171_
                                       _tl1065811173_
                                       ___splice1562215623_
                                       _target1065911176_
                                       _tl1066111178_)
                                (letrec ((_loop1066211181_
                                          (lambda (_hd1066011184_
                                                   _body1066611186_)
                                            (if (gx#stx-pair? _hd1066011184_)
                                                (let ((_e1066311189_
                                                       (gx#stx-e
                                                        _hd1066011184_)))
                                                  (let ((_lp-tl1066511194_
                                                         (##cdr _e1066311189_))
                                                        (_lp-hd1066411192_
                                                         (##car _e1066311189_)))
                                                    (_loop1066211181_
                                                     _lp-tl1066511194_
                                                     (cons _lp-hd1066411192_
                                                           _body1066611186_))))
                                                (let ((_body1066711197_
                                                       (reverse _body1066611186_)))
                                                  (if (gx#stx-null?
                                                       _tl1065211157_)
                                                      (___kont1562015621_
                                                       _body1066711197_
                                                       _hd1064811147_
                                                       _hd1064511139_)
                                                      (___kont1563415635_)))))))
                                  (_loop1066211181_ _target1065911176_ '())))))
                        (if (gx#stx-pair? ___stx1561815619_)
                            (let ((_e1063511112_ (gx#stx-e ___stx1561815619_)))
                              (let ((_tl1063711117_ (##cdr _e1063511112_))
                                    (_hd1063611115_ (##car _e1063511112_)))
                                (if (gx#identifier? _hd1063611115_)
                                    (if (gx#stx-eq? 'let _hd1063611115_)
                                        (if (gx#stx-pair? _tl1063711117_)
                                            (let ((_e1063811120_
                                                   (gx#stx-e _tl1063711117_)))
                                              (let ((_tl1064011125_
                                                     (##cdr _e1063811120_))
                                                    (_hd1063911123_
                                                     (##car _e1063811120_)))
                                                (if (gx#stx-pair?
                                                     _hd1063911123_)
                                                    (let ((_e1064111128_
                                                           (gx#stx-e
                                                            _hd1063911123_)))
                                                      (let ((_tl1064311133_
                                                             (##cdr _e1064111128_))
                                                            (_hd1064211131_
                                                             (##car _e1064111128_)))
                                                        (if (gx#stx-pair?
                                                             _hd1064211131_)
                                                            (let ((_e1064411136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1064211131_)))
                      (let ((_tl1064611141_ (##cdr _e1064411136_))
                            (_hd1064511139_ (##car _e1064411136_)))
                        (if (gx#stx-pair? _tl1064611141_)
                            (let ((_e1064711144_ (gx#stx-e _tl1064611141_)))
                              (let ((_tl1064911149_ (##cdr _e1064711144_))
                                    (_hd1064811147_ (##car _e1064711144_)))
                                (if (gx#stx-null? _tl1064911149_)
                                    (if (gx#stx-null? _tl1064311133_)
                                        (if (gx#stx-pair? _tl1064011125_)
                                            (let ((_e1065011152_
                                                   (gx#stx-e _tl1064011125_)))
                                              (let ((_tl1065211157_
                                                     (##cdr _e1065011152_))
                                                    (_hd1065111155_
                                                     (##car _e1065011152_)))
                                                (if (gx#stx-pair?
                                                     _hd1065111155_)
                                                    (let ((_e1065311160_
                                                           (gx#stx-e
                                                            _hd1065111155_)))
                                                      (let ((_tl1065511165_
                                                             (##cdr _e1065311160_))
                                                            (_hd1065411163_
                                                             (##car _e1065311160_)))
                                                        (if (gx#identifier?
                                                             _hd1065411163_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'let
                         _hd1065411163_)
                        (if (gx#stx-pair? _tl1065511165_)
                            (let ((_e1065611168_ (gx#stx-e _tl1065511165_)))
                              (let ((_tl1065811173_ (##cdr _e1065611168_))
                                    (_hd1065711171_ (##car _e1065611168_)))
                                (if (gx#stx-null? _hd1065711171_)
                                    (if (gx#stx-pair/null? _tl1065811173_)
                                        (let ((___splice1562215623_
                                               (gx#syntax-split-splice
                                                _tl1065811173_
                                                '0)))
                                          (let ((_tl1066111178_
                                                 (##vector-ref
                                                  ___splice1562215623_
                                                  '1))
                                                (_target1065911176_
                                                 (##vector-ref
                                                  ___splice1562215623_
                                                  '0)))
                                            (if (gx#stx-null? _tl1066111178_)
                                                (___match1570515706_
                                                 _e1063511112_
                                                 _hd1063611115_
                                                 _tl1063711117_
                                                 _e1063811120_
                                                 _hd1063911123_
                                                 _tl1064011125_
                                                 _e1064111128_
                                                 _hd1064211131_
                                                 _tl1064311133_
                                                 _e1064411136_
                                                 _hd1064511139_
                                                 _tl1064611141_
                                                 _e1064711144_
                                                 _hd1064811147_
                                                 _tl1064911149_
                                                 _e1065011152_
                                                 _hd1065111155_
                                                 _tl1065211157_
                                                 _e1065311160_
                                                 _hd1065411163_
                                                 _tl1065511165_
                                                 _e1065611168_
                                                 _hd1065711171_
                                                 _tl1065811173_
                                                 ___splice1562215623_
                                                 _target1065911176_
                                                 _tl1066111178_)
                                                (___kont1563415635_))))
                                        (___kont1563415635_))
                                    (if (gx#stx-pair? _hd1065711171_)
                                        (let ((_e1069711011_
                                               (gx#stx-e _hd1065711171_)))
                                          (let ((_tl1069911016_
                                                 (##cdr _e1069711011_))
                                                (_hd1069811014_
                                                 (##car _e1069711011_)))
                                            (if (gx#stx-pair? _hd1069811014_)
                                                (let ((_e1070011019_
                                                       (gx#stx-e
                                                        _hd1069811014_)))
                                                  (let ((_tl1070211024_
                                                         (##cdr _e1070011019_))
                                                        (_hd1070111022_
                                                         (##car _e1070011019_)))
                                                    (if (gx#stx-pair?
                                                         _tl1070211024_)
                                                        (let ((_e1070311027_
                                                               (gx#stx-e
                                                                _tl1070211024_)))
                                                          (let ((_tl1070511032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1070311027_))
                        (_hd1070411030_ (##car _e1070311027_)))
                    (if (gx#stx-null? _tl1070511032_)
                        (if (gx#stx-null? _tl1069911016_)
                            (if (gx#stx-pair/null? _tl1065811173_)
                                (let ((___splice1562615627_
                                       (gx#syntax-split-splice
                                        _tl1065811173_
                                        '0)))
                                  (let ((_tl1070811037_
                                         (##vector-ref
                                          ___splice1562615627_
                                          '1))
                                        (_target1070611035_
                                         (##vector-ref
                                          ___splice1562615627_
                                          '0)))
                                    (if (gx#stx-null? _tl1070811037_)
                                        (___match1579515796_
                                         _e1063511112_
                                         _hd1063611115_
                                         _tl1063711117_
                                         _e1063811120_
                                         _hd1063911123_
                                         _tl1064011125_
                                         _e1064111128_
                                         _hd1064211131_
                                         _tl1064311133_
                                         _e1064411136_
                                         _hd1064511139_
                                         _tl1064611141_
                                         _e1064711144_
                                         _hd1064811147_
                                         _tl1064911149_
                                         _e1065011152_
                                         _hd1065111155_
                                         _tl1065211157_
                                         _e1065311160_
                                         _hd1065411163_
                                         _tl1065511165_
                                         _e1065611168_
                                         _hd1065711171_
                                         _tl1065811173_
                                         _e1069711011_
                                         _hd1069811014_
                                         _tl1069911016_
                                         _e1070011019_
                                         _hd1070111022_
                                         _tl1070211024_
                                         _e1070311027_
                                         _hd1070411030_
                                         _tl1070511032_
                                         ___splice1562615627_
                                         _target1070611035_
                                         _tl1070811037_)
                                        (___kont1563415635_))))
                                (___kont1563415635_))
                            (___kont1563415635_))
                        (___kont1563415635_))))
                (___kont1563415635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1563415635_))))
                                        (___kont1563415635_)))))
                            (___kont1563415635_))
                        (if (gx#stx-eq? 'let* _hd1065411163_)
                            (if (gx#stx-pair? _tl1065511165_)
                                (let ((_e1074010833_
                                       (gx#stx-e _tl1065511165_)))
                                  (let ((_tl1074210838_ (##cdr _e1074010833_))
                                        (_hd1074110836_ (##car _e1074010833_)))
                                    (if (gx#stx-pair/null? _hd1074110836_)
                                        (let ((___splice1563015631_
                                               (gx#syntax-split-splice
                                                _hd1074110836_
                                                '0)))
                                          (let ((_tl1074510843_
                                                 (##vector-ref
                                                  ___splice1563015631_
                                                  '1))
                                                (_target1074310841_
                                                 (##vector-ref
                                                  ___splice1563015631_
                                                  '0)))
                                            (if (gx#stx-null? _tl1074510843_)
                                                (___match1586315864_
                                                 _e1063511112_
                                                 _hd1063611115_
                                                 _tl1063711117_
                                                 _e1063811120_
                                                 _hd1063911123_
                                                 _tl1064011125_
                                                 _e1064111128_
                                                 _hd1064211131_
                                                 _tl1064311133_
                                                 _e1064411136_
                                                 _hd1064511139_
                                                 _tl1064611141_
                                                 _e1064711144_
                                                 _hd1064811147_
                                                 _tl1064911149_
                                                 _e1065011152_
                                                 _hd1065111155_
                                                 _tl1065211157_
                                                 _e1065311160_
                                                 _hd1065411163_
                                                 _tl1065511165_
                                                 _e1074010833_
                                                 _hd1074110836_
                                                 _tl1074210838_
                                                 ___splice1563015631_
                                                 _target1074310841_
                                                 _tl1074510843_)
                                                (___kont1563415635_))))
                                        (___kont1563415635_))))
                                (___kont1563415635_))
                            (___kont1563415635_)))
                    (___kont1563415635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1563415635_))))
                                            (___kont1563415635_))
                                        (___kont1563415635_))
                                    (___kont1563415635_))))
                            (___kont1563415635_))))
                    (___kont1563415635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1563415635_))))
                                            (___kont1563415635_))
                                        (___kont1563415635_))
                                    (___kont1563415635_))))
                            (___kont1563415635_)))))))
               (_generate-values10324_
                (lambda (_hd10438_ _body10439_)
                  (let _lp10441_ ((_rest10443_ _hd10438_)
                                  (_bind10444_ '())
                                  (_check10445_ '())
                                  (_post10446_ '()))
                    (let* ((___stx1591015911_ _rest10443_)
                           (_g1044910460_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1591015911_))))
                      (let ((___kont1591215913_
                             (lambda (_L10487_ _L10488_)
                               (let* ((___stx1586615867_ _L10488_)
                                      (_g1050310528_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx1586615867_))))
                                 (let ((___kont1586815869_
                                        (lambda (_L10601_ _L10602_)
                                          (let ((_eid10616_
                                                 (gxc#generate-runtime-binding-id*
                                                  _L10602_))
                                                (_expr10617_
                                                 (gxc#compile-e _L10601_)))
                                            (_lp10441_
                                             _L10487_
                                             (cons (cons _eid10616_
                                                         (cons _expr10617_
                                                               '()))
                                                   _bind10444_)
                                             _check10445_
                                             _post10446_))))
                                       (___kont1587015871_
                                        (lambda (_L10549_ _L10550_)
                                          (let* ((_vals10563_
                                                  (gxc#generate-runtime-temporary__0))
                                                 (_check-values10565_
                                                  (gxc#generate-runtime-check-values
                                                   _vals10563_
                                                   _L10550_
                                                   _L10549_))
                                                 (_refs10567_
                                                  (gxc#generate-runtime-let-values-bind
                                                   _vals10563_
                                                   _L10550_))
                                                 (_expr10569_
                                                  (gxc#compile-e _L10549_)))
                                            (_lp10441_
                                             _L10487_
                                             (cons (cons _vals10563_
                                                         (cons _expr10569_
                                                               '()))
                                                   _bind10444_)
                                             (cons _check-values10565_
                                                   _check10445_)
                                             (cons _refs10567_
                                                   _post10446_))))))
                                   (if (gx#stx-pair? ___stx1586615867_)
                                       (let ((_e1050710577_
                                              (gx#stx-e ___stx1586615867_)))
                                         (let ((_tl1050910582_
                                                (##cdr _e1050710577_))
                                               (_hd1050810580_
                                                (##car _e1050710577_)))
                                           (if (gx#stx-pair? _hd1050810580_)
                                               (let ((_e1051010585_
                                                      (gx#stx-e
                                                       _hd1050810580_)))
                                                 (let ((_tl1051210590_
                                                        (##cdr _e1051010585_))
                                                       (_hd1051110588_
                                                        (##car _e1051010585_)))
                                                   (if (gx#stx-null?
                                                        _tl1051210590_)
                                                       (if (gx#stx-pair?
                                                            _tl1050910582_)
                                                           (let ((_e1051310593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1050910582_)))
                     (let ((_tl1051510598_ (##cdr _e1051310593_))
                           (_hd1051410596_ (##car _e1051310593_)))
                       (if (gx#stx-null? _tl1051510598_)
                           (___kont1586815869_ _hd1051410596_ _hd1051110588_)
                           (_g1050310528_))))
                   (_g1050310528_))
               (if (gx#stx-pair? _tl1050910582_)
                   (let ((_e1052110541_ (gx#stx-e _tl1050910582_)))
                     (let ((_tl1052310546_ (##cdr _e1052110541_))
                           (_hd1052210544_ (##car _e1052110541_)))
                       (if (gx#stx-null? _tl1052310546_)
                           (___kont1587015871_ _hd1052210544_ _hd1050810580_)
                           (_g1050310528_))))
                   (_g1050310528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl1050910582_)
                                                   (let ((_e1052110541_
                                                          (gx#stx-e
                                                           _tl1050910582_)))
                                                     (let ((_tl1052310546_
                                                            (##cdr _e1052110541_))
                                                           (_hd1052210544_
                                                            (##car _e1052110541_)))
                                                       (if (gx#stx-null?
                                                            _tl1052310546_)
                                                           (___kont1587015871_
                                                            _hd1052210544_
                                                            _hd1050810580_)
                                                           (_g1050310528_))))
                                                   (_g1050310528_)))))
                                       (_g1050310528_))))))
                            (___kont1591415915_
                             (lambda ()
                               (let* ((_body10467_
                                       (if _compiled-body?10319_
                                           _body10439_
                                           (gxc#compile-e _body10439_)))
                                      (_body10469_
                                       (_generate-values-post10325_
                                        _post10446_
                                        _body10467_))
                                      (_body10471_
                                       (_generate-values-check10326_
                                        _check10445_
                                        _body10469_)))
                                 (cons 'let
                                       (cons (reverse _bind10444_)
                                             (cons _body10471_ '())))))))
                        (if (gx#stx-pair? ___stx1591015911_)
                            (let ((_e1045310479_ (gx#stx-e ___stx1591015911_)))
                              (let ((_tl1045510484_ (##cdr _e1045310479_))
                                    (_hd1045410482_ (##car _e1045310479_)))
                                (___kont1591215913_
                                 _tl1045510484_
                                 _hd1045410482_)))
                            (___kont1591415915_)))))))
               (_generate-values-post10325_
                (lambda (_post10397_ _body10398_)
                  (let _lp10400_ ((_rest10402_ _post10397_)
                                  (_body10403_ _body10398_))
                    (let* ((_rest1040410412_ _rest10402_)
                           (_else1040610420_ (lambda () _body10403_))
                           (_K1040810426_
                            (lambda (_rest10423_ _bind10424_)
                              (_lp10400_
                               _rest10423_
                               (cons 'let
                                     (cons _bind10424_
                                           (cons _body10403_ '())))))))
                      (if (##pair? _rest1040410412_)
                          (let ((_hd1040910429_ (##car _rest1040410412_))
                                (_tl1041010431_ (##cdr _rest1040410412_)))
                            (let* ((_bind10434_ _hd1040910429_)
                                   (_rest10436_ _tl1041010431_))
                              (_K1040810426_ _rest10436_ _bind10434_)))
                          (_else1040610420_))))))
               (_generate-values-check10326_
                (lambda (_check10394_ _body10395_)
                  (cons 'begin
                        (foldr1 cons
                                (cons _body10395_ '())
                                (reverse _check10394_))))))
        (let* ((_g1032810345_
                (lambda (_g1032910342_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1032910342_)))
               (_g1032710391_
                (lambda (_g1032910348_)
                  (if (gx#stx-pair? _g1032910348_)
                      (let ((_e1033210350_ (gx#stx-e _g1032910348_)))
                        (let ((_hd1033310353_ (##car _e1033210350_))
                              (_tl1033410355_ (##cdr _e1033210350_)))
                          (if (gx#stx-pair? _tl1033410355_)
                              (let ((_e1033510358_ (gx#stx-e _tl1033410355_)))
                                (let ((_hd1033610361_ (##car _e1033510358_))
                                      (_tl1033710363_ (##cdr _e1033510358_)))
                                  (if (gx#stx-pair? _tl1033710363_)
                                      (let ((_e1033810366_
                                             (gx#stx-e _tl1033710363_)))
                                        (let ((_hd1033910369_
                                               (##car _e1033810366_))
                                              (_tl1034010371_
                                               (##cdr _e1033810366_)))
                                          (if (gx#stx-null? _tl1034010371_)
                                              ((lambda (_L10374_ _L10375_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L10375_)
                                                     (_generate-simple10321_
                                                      _L10375_
                                                      _L10374_)
                                                     (_generate-values10324_
                                                      _L10375_
                                                      _L10374_)))
                                               _hd1033910369_
                                               _hd1033610361_)
                                              (_g1032810345_ _g1032910348_))))
                                      (_g1032810345_ _g1032910348_))))
                              (_g1032810345_ _g1032910348_))))
                      (_g1032810345_ _g1032910348_)))))
          (_g1032710391_ _stx10318_)))))
  (define gxc#generate-runtime-let-values%__0
    (lambda (_stx11512_)
      (let ((_compiled-body?11514_ '#f))
        (gxc#generate-runtime-let-values%__%
         _stx11512_
         _compiled-body?11514_))))
  (define gxc#generate-runtime-let-values%
    (lambda _g16384_
      (let ((_g16383_ (length _g16384_)))
        (cond ((##fx= _g16383_ 1)
               (apply gxc#generate-runtime-let-values%__0 _g16384_))
              ((##fx= _g16383_ 2)
               (apply gxc#generate-runtime-let-values%__% _g16384_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-let-values%
                _g16384_))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals10212_ _hd10213_)
      (let _lp10215_ ((_rest10217_ _hd10213_) (_k10218_ '0) (_r10219_ '()))
        (let* ((___stx1592415925_ _rest10217_)
               (_g1022410241_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1592415925_))))
          (let ((___kont1592615927_
                 (lambda (_L10304_)
                   (_lp10215_ _L10304_ (fx+ _k10218_ '1) _r10219_)))
                (___kont1592815929_
                 (lambda (_L10277_ _L10278_)
                   (_lp10215_
                    _L10277_
                    (fx+ _k10218_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L10278_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals10212_
                                       _k10218_
                                       _L10277_)
                                      '()))
                          _r10219_))))
                (___kont1593015931_
                 (lambda (_L10253_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L10253_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals10212_
                                              _k10218_)
                                             '()))
                                 '())
                           _r10219_)))
                (___kont1593215933_ (lambda () (reverse _r10219_))))
            (let ((_g1022210264_
                   (lambda ()
                     (let ((_L10253_ ___stx1592415925_))
                       (if (gx#identifier? _L10253_)
                           (___kont1593015931_ _L10253_)
                           (___kont1593215933_))))))
              (if (gx#stx-pair? ___stx1592415925_)
                  (let ((_e1022710293_ (gx#stx-e ___stx1592415925_)))
                    (let ((_tl1022910298_ (##cdr _e1022710293_))
                          (_hd1022810296_ (##car _e1022710293_)))
                      (if (gx#stx-datum? _hd1022810296_)
                          (let ((_e1023010301_ (gx#stx-e _hd1022810296_)))
                            (if (equal? _e1023010301_ '#f)
                                (___kont1592615927_ _tl1022910298_)
                                (___kont1592815929_
                                 _tl1022910298_
                                 _hd1022810296_)))
                          (___kont1592815929_ _tl1022910298_ _hd1022810296_))))
                  (_g1022210264_))))))))
  (define gxc#generate-runtime-letrec-values%__%
    (lambda (_stx9894_ _compiled-body?9895_)
      (letrec ((_generate-simple9897_
                (lambda (_hd10199_ _body10200_)
                  (gxc#generate-runtime-simple-let
                   'letrec
                   _hd10199_
                   _body10200_
                   _compiled-body?9895_)))
               (_generate-values9898_
                (lambda (_hd9978_ _body9979_)
                  (let _lp9981_ ((_rest9983_ _hd9978_)
                                 (_bind9984_ '())
                                 (_check9985_ '())
                                 (_post9986_ '()))
                    (let* ((___stx1599815999_ _rest9983_)
                           (_g998910000_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1599815999_))))
                      (let ((___kont1600016001_
                             (lambda (_L10027_ _L10028_)
                               (let* ((___stx1595415955_ _L10028_)
                                      (_g1004310068_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx1595415955_))))
                                 (let ((___kont1595615957_
                                        (lambda (_L10175_ _L10176_)
                                          (let ((_eid10190_
                                                 (gxc#generate-runtime-binding-id*
                                                  _L10176_))
                                                (_expr10191_
                                                 (gxc#compile-e _L10175_)))
                                            (_lp9981_
                                             _L10027_
                                             (cons (cons _eid10190_
                                                         (cons _expr10191_
                                                               '()))
                                                   _bind9984_)
                                             _check9985_
                                             _post9986_))))
                                       (___kont1595815959_
                                        (lambda (_L10089_ _L10090_)
                                          (let* ((_vals10103_
                                                  (gxc#generate-runtime-temporary__0))
                                                 (_check-values10105_
                                                  (gxc#generate-runtime-check-values
                                                   _vals10103_
                                                   _L10090_
                                                   _L10089_))
                                                 (_refs10107_
                                                  (gxc#generate-runtime-let-values-bind
                                                   _vals10103_
                                                   _L10090_))
                                                 (_expr10109_
                                                  (gxc#compile-e _L10089_)))
                                            (_lp9981_
                                             _L10027_
                                             (foldl1 cons
                                                     (cons (cons _vals10103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr10109_ '()))
                   _bind9984_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (map (lambda (_e1011110113_)
                                                            (let* ((_g1011510124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e1011110113_)
                           (_E1011710128_
                            (lambda ()
                              (error '"No clause matching" _g1011510124_)))
                           (_K1011810133_
                            (lambda (_eid10131_)
                              (cons _eid10131_ (cons '#!void '())))))
                      (if (##pair? _g1011510124_)
                          (let ((_hd1011910136_ (##car _g1011510124_))
                                (_tl1012010138_ (##cdr _g1011510124_)))
                            (let ((_eid10141_ _hd1011910136_))
                              (if (##pair? _tl1012010138_)
                                  (let ((_tl1012210143_
                                         (##cdr _tl1012010138_)))
                                    (if (##null? _tl1012210143_)
                                        (_K1011810133_ _eid10141_)
                                        (_E1011710128_)))
                                  (_E1011710128_))))
                          (_E1011710128_))))
                  _refs10107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _check-values10105_
                                                   _check9985_)
                                             (foldl1 cons
                                                     _refs10107_
                                                     _post9986_))))))
                                   (if (gx#stx-pair? ___stx1595415955_)
                                       (let ((_e1004710151_
                                              (gx#stx-e ___stx1595415955_)))
                                         (let ((_tl1004910156_
                                                (##cdr _e1004710151_))
                                               (_hd1004810154_
                                                (##car _e1004710151_)))
                                           (if (gx#stx-pair? _hd1004810154_)
                                               (let ((_e1005010159_
                                                      (gx#stx-e
                                                       _hd1004810154_)))
                                                 (let ((_tl1005210164_
                                                        (##cdr _e1005010159_))
                                                       (_hd1005110162_
                                                        (##car _e1005010159_)))
                                                   (if (gx#stx-null?
                                                        _tl1005210164_)
                                                       (if (gx#stx-pair?
                                                            _tl1004910156_)
                                                           (let ((_e1005310167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1004910156_)))
                     (let ((_tl1005510172_ (##cdr _e1005310167_))
                           (_hd1005410170_ (##car _e1005310167_)))
                       (if (gx#stx-null? _tl1005510172_)
                           (___kont1595615957_ _hd1005410170_ _hd1005110162_)
                           (_g1004310068_))))
                   (_g1004310068_))
               (if (gx#stx-pair? _tl1004910156_)
                   (let ((_e1006110081_ (gx#stx-e _tl1004910156_)))
                     (let ((_tl1006310086_ (##cdr _e1006110081_))
                           (_hd1006210084_ (##car _e1006110081_)))
                       (if (gx#stx-null? _tl1006310086_)
                           (___kont1595815959_ _hd1006210084_ _hd1004810154_)
                           (_g1004310068_))))
                   (_g1004310068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl1004910156_)
                                                   (let ((_e1006110081_
                                                          (gx#stx-e
                                                           _tl1004910156_)))
                                                     (let ((_tl1006310086_
                                                            (##cdr _e1006110081_))
                                                           (_hd1006210084_
                                                            (##car _e1006110081_)))
                                                       (if (gx#stx-null?
                                                            _tl1006310086_)
                                                           (___kont1595815959_
                                                            _hd1006210084_
                                                            _hd1004810154_)
                                                           (_g1004310068_))))
                                                   (_g1004310068_)))))
                                       (_g1004310068_))))))
                            (___kont1600216003_
                             (lambda ()
                               (let* ((_body10007_
                                       (if _compiled-body?9895_
                                           _body9979_
                                           (gxc#compile-e _body9979_)))
                                      (_body10009_
                                       (_generate-values-post9900_
                                        _post9986_
                                        _body10007_))
                                      (_body10011_
                                       (_generate-values-check9899_
                                        _check9985_
                                        _body10009_)))
                                 (cons 'letrec
                                       (cons (reverse _bind9984_)
                                             (cons _body10011_ '())))))))
                        (if (gx#stx-pair? ___stx1599815999_)
                            (let ((_e999310019_ (gx#stx-e ___stx1599815999_)))
                              (let ((_tl999510024_ (##cdr _e999310019_))
                                    (_hd999410022_ (##car _e999310019_)))
                                (___kont1600016001_
                                 _tl999510024_
                                 _hd999410022_)))
                            (___kont1600216003_)))))))
               (_generate-values-check9899_
                (lambda (_check9975_ _body9976_)
                  (cons 'begin
                        (foldr1 cons
                                (cons _body9976_ '())
                                (reverse _check9975_)))))
               (_generate-values-post9900_
                (lambda (_post9968_ _body9969_)
                  (cons 'begin
                        (foldr1 cons
                                (cons _body9969_ '())
                                (map (lambda (_g99709972_)
                                       (cons 'set! _g99709972_))
                                     (reverse _post9968_)))))))
        (let* ((_g99029919_
                (lambda (_g99039916_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g99039916_)))
               (_g99019965_
                (lambda (_g99039922_)
                  (if (gx#stx-pair? _g99039922_)
                      (let ((_e99069924_ (gx#stx-e _g99039922_)))
                        (let ((_hd99079927_ (##car _e99069924_))
                              (_tl99089929_ (##cdr _e99069924_)))
                          (if (gx#stx-pair? _tl99089929_)
                              (let ((_e99099932_ (gx#stx-e _tl99089929_)))
                                (let ((_hd99109935_ (##car _e99099932_))
                                      (_tl99119937_ (##cdr _e99099932_)))
                                  (if (gx#stx-pair? _tl99119937_)
                                      (let ((_e99129940_
                                             (gx#stx-e _tl99119937_)))
                                        (let ((_hd99139943_
                                               (##car _e99129940_))
                                              (_tl99149945_
                                               (##cdr _e99129940_)))
                                          (if (gx#stx-null? _tl99149945_)
                                              ((lambda (_L9948_ _L9949_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9949_)
                                                     (_generate-simple9897_
                                                      _L9949_
                                                      _L9948_)
                                                     (_generate-values9898_
                                                      _L9949_
                                                      _L9948_)))
                                               _hd99139943_
                                               _hd99109935_)
                                              (_g99029919_ _g99039922_))))
                                      (_g99029919_ _g99039922_))))
                              (_g99029919_ _g99039922_))))
                      (_g99029919_ _g99039922_)))))
          (_g99019965_ _stx9894_)))))
  (define gxc#generate-runtime-letrec-values%__0
    (lambda (_stx10205_)
      (let ((_compiled-body?10207_ '#f))
        (gxc#generate-runtime-letrec-values%__%
         _stx10205_
         _compiled-body?10207_))))
  (define gxc#generate-runtime-letrec-values%
    (lambda _g16386_
      (let ((_g16385_ (length _g16386_)))
        (cond ((##fx= _g16385_ 1)
               (apply gxc#generate-runtime-letrec-values%__0 _g16386_))
              ((##fx= _g16385_ 2)
               (apply gxc#generate-runtime-letrec-values%__% _g16386_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-letrec-values%
                _g16386_))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx9476_)
      (letrec ((_generate-values9478_
                (lambda (_hd9721_ _body9722_)
                  (let _lp9724_ ((_rest9726_ _hd9721_) (_bind9727_ '()))
                    (let* ((_rest97289736_ _rest9726_)
                           (_else97309747_
                            (lambda ()
                              (let ((_bind9744_ (reverse _bind9727_))
                                    (_body9745_ (gxc#compile-e _body9722_)))
                                (cons 'letrec*
                                      (cons _bind9744_
                                            (cons _body9745_ '()))))))
                           (_K97329881_
                            (lambda (_rest9750_ _hd-bind9751_)
                              (let* ((___stx1601216013_ _hd-bind9751_)
                                     (_g97549779_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1601216013_))))
                                (let ((___kont1601416015_
                                       (lambda (_L9860_ _L9861_)
                                         (let ((_eid9875_
                                                (gxc#generate-runtime-binding-id*
                                                 _L9861_))
                                               (_expr9876_
                                                (gxc#compile-e _L9860_)))
                                           (_lp9724_
                                            _rest9750_
                                            (cons (cons _eid9875_
                                                        (cons _expr9876_ '()))
                                                  _bind9727_)))))
                                      (___kont1601616017_
                                       (lambda (_L9800_ _L9801_)
                                         (let* ((_vals9820_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp9822_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values9824_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp9822_
                                                  _L9801_
                                                  _L9800_))
                                                (_refs9826_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals9820_
                                                  _L9801_))
                                                (_expr9828_
                                                 (gxc#compile-e _L9800_)))
                                           (_lp9724_
                                            _rest9750_
                                            (foldl1 cons
                                                    (cons (cons _vals9820_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp9822_
                                                      (cons _expr9828_ '()))
                                                '())
                                          (cons _check-values9824_
                                                (cons _tmp9822_ '()))))
                              '()))
                  _bind9727_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs9826_))))))
                                  (if (gx#stx-pair? ___stx1601216013_)
                                      (let ((_e97589836_
                                             (gx#stx-e ___stx1601216013_)))
                                        (let ((_tl97609841_
                                               (##cdr _e97589836_))
                                              (_hd97599839_
                                               (##car _e97589836_)))
                                          (if (gx#stx-pair? _hd97599839_)
                                              (let ((_e97619844_
                                                     (gx#stx-e _hd97599839_)))
                                                (let ((_tl97639849_
                                                       (##cdr _e97619844_))
                                                      (_hd97629847_
                                                       (##car _e97619844_)))
                                                  (if (gx#stx-null?
                                                       _tl97639849_)
                                                      (if (gx#stx-pair?
                                                           _tl97609841_)
                                                          (let ((_e97649852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl97609841_)))
                    (let ((_tl97669857_ (##cdr _e97649852_))
                          (_hd97659855_ (##car _e97649852_)))
                      (if (gx#stx-null? _tl97669857_)
                          (___kont1601416015_ _hd97659855_ _hd97629847_)
                          (_g97549779_))))
                  (_g97549779_))
              (if (gx#stx-pair? _tl97609841_)
                  (let ((_e97729792_ (gx#stx-e _tl97609841_)))
                    (let ((_tl97749797_ (##cdr _e97729792_))
                          (_hd97739795_ (##car _e97729792_)))
                      (if (gx#stx-null? _tl97749797_)
                          (___kont1601616017_ _hd97739795_ _hd97599839_)
                          (_g97549779_))))
                  (_g97549779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl97609841_)
                                                  (let ((_e97729792_
                                                         (gx#stx-e
                                                          _tl97609841_)))
                                                    (let ((_tl97749797_
                                                           (##cdr _e97729792_))
                                                          (_hd97739795_
                                                           (##car _e97729792_)))
                                                      (if (gx#stx-null?
                                                           _tl97749797_)
                                                          (___kont1601616017_
                                                           _hd97739795_
                                                           _hd97599839_)
                                                          (_g97549779_))))
                                                  (_g97549779_)))))
                                      (_g97549779_)))))))
                      (if (##pair? _rest97289736_)
                          (let ((_hd97339884_ (##car _rest97289736_))
                                (_tl97349886_ (##cdr _rest97289736_)))
                            (let* ((_hd-bind9889_ _hd97339884_)
                                   (_rest9891_ _tl97349886_))
                              (_K97329881_ _rest9891_ _hd-bind9889_)))
                          (_else97309747_))))))
               (_generate-letrec?9479_
                (lambda (_hd9611_)
                  (let _lp9613_ ((_rest9615_ _hd9611_))
                    (let* ((_rest96169624_ _rest9615_)
                           (_else96189632_ (lambda () '#t))
                           (_K96209709_
                            (lambda (_rest9635_ _hd-bind9636_)
                              (let* ((_g96389655_
                                      (lambda (_g96399652_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g96399652_)))
                                     (_g96379706_
                                      (lambda (_g96399658_)
                                        (if (gx#stx-pair? _g96399658_)
                                            (let ((_e96429660_
                                                   (gx#stx-e _g96399658_)))
                                              (let ((_hd96439663_
                                                     (##car _e96429660_))
                                                    (_tl96449665_
                                                     (##cdr _e96429660_)))
                                                (if (gx#stx-pair? _hd96439663_)
                                                    (let ((_e96459668_
                                                           (gx#stx-e
                                                            _hd96439663_)))
                                                      (let ((_hd96469671_
                                                             (##car _e96459668_))
                                                            (_tl96479673_
                                                             (##cdr _e96459668_)))
                                                        (if (gx#stx-null?
                                                             _tl96479673_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl96449665_)
                        (let ((_e96489676_ (gx#stx-e _tl96449665_)))
                          (let ((_hd96499679_ (##car _e96489676_))
                                (_tl96509681_ (##cdr _e96489676_)))
                            (if (gx#stx-null? _tl96509681_)
                                ((lambda (_L9684_ _L9685_)
                                   (if (_is-lambda-expr?9480_ _L9684_)
                                       (_lp9613_ _rest9635_)
                                       '#f))
                                 _hd96499679_
                                 _hd96469671_)
                                (_g96389655_ _g96399658_))))
                        (_g96389655_ _g96399658_))
                    (_g96389655_ _g96399658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96389655_
                                                     _g96399658_))))
                                            (_g96389655_ _g96399658_)))))
                                (_g96379706_ _hd-bind9636_)))))
                      (if (##pair? _rest96169624_)
                          (let ((_hd96219712_ (##car _rest96169624_))
                                (_tl96229714_ (##cdr _rest96169624_)))
                            (let* ((_hd-bind9717_ _hd96219712_)
                                   (_rest9719_ _tl96229714_))
                              (_K96209709_ _rest9719_ _hd-bind9717_)))
                          (_else96189632_))))))
               (_is-lambda-expr?9480_
                (lambda (_expr9548_)
                  (let* ((___stx1605616057_ _expr9548_)
                         (_g95519565_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1605616057_))))
                    (let ((___kont1605816059_ (lambda (_L9593_ _L9594_) '#t))
                          (___kont1606016061_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1605616057_)
                          (let ((_e95559577_ (gx#stx-e ___stx1605616057_)))
                            (let ((_tl95579582_ (##cdr _e95559577_))
                                  (_hd95569580_ (##car _e95559577_)))
                              (if (gx#identifier? _hd95569580_)
                                  (if (gx#stx-eq? '%#lambda _hd95569580_)
                                      (if (gx#stx-pair? _tl95579582_)
                                          (let ((_e95589585_
                                                 (gx#stx-e _tl95579582_)))
                                            (let ((_tl95609590_
                                                   (##cdr _e95589585_))
                                                  (_hd95599588_
                                                   (##car _e95589585_)))
                                              (___kont1605816059_
                                               _tl95609590_
                                               _hd95599588_)))
                                          (___kont1606016061_))
                                      (___kont1606016061_))
                                  (___kont1606016061_))))
                          (___kont1606016061_)))))))
        (let* ((_g94829499_
                (lambda (_g94839496_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g94839496_)))
               (_g94819545_
                (lambda (_g94839502_)
                  (if (gx#stx-pair? _g94839502_)
                      (let ((_e94869504_ (gx#stx-e _g94839502_)))
                        (let ((_hd94879507_ (##car _e94869504_))
                              (_tl94889509_ (##cdr _e94869504_)))
                          (if (gx#stx-pair? _tl94889509_)
                              (let ((_e94899512_ (gx#stx-e _tl94889509_)))
                                (let ((_hd94909515_ (##car _e94899512_))
                                      (_tl94919517_ (##cdr _e94899512_)))
                                  (if (gx#stx-pair? _tl94919517_)
                                      (let ((_e94929520_
                                             (gx#stx-e _tl94919517_)))
                                        (let ((_hd94939523_
                                               (##car _e94929520_))
                                              (_tl94949525_
                                               (##cdr _e94929520_)))
                                          (if (gx#stx-null? _tl94949525_)
                                              ((lambda (_L9528_ _L9529_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9529_)
                                                     (if (_generate-letrec?9479_
                                                          _L9529_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L9529_
                                                          _L9528_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L9529_
                                                          _L9528_
                                                          '#f))
                                                     (_generate-values9478_
                                                      _L9529_
                                                      _L9528_)))
                                               _hd94939523_
                                               _hd94909515_)
                                              (_g94829499_ _g94839502_))))
                                      (_g94829499_ _g94839502_))))
                              (_g94829499_ _g94839502_))))
                      (_g94829499_ _g94839502_)))))
          (_g94819545_ _stx9476_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd9413_)
      (let _lp9415_ ((_rest9417_ _hd9413_))
        (let* ((_rest94189434_ _rest9417_) (_else94219442_ (lambda () '#f)))
          (let ((_K94249455_ (lambda (_rest9453_) (_lp9415_ _rest9453_)))
                (_K94239447_ (lambda () '#t)))
            (let ((_try-match94209450_
                   (lambda ()
                     (if (##null? _rest94189434_)
                         (_K94239447_)
                         (_else94219442_)))))
              (if (##pair? _rest94189434_)
                  (let ((_tl94269460_ (##cdr _rest94189434_))
                        (_hd94259458_ (##car _rest94189434_)))
                    (if (##pair? _hd94259458_)
                        (let ((_tl94289465_ (##cdr _hd94259458_))
                              (_hd94279463_ (##car _hd94259458_)))
                          (if (##pair? _hd94279463_)
                              (let ((_tl94329468_ (##cdr _hd94279463_)))
                                (if (##null? _tl94329468_)
                                    (if (##pair? _tl94289465_)
                                        (let ((_tl94309471_
                                               (##cdr _tl94289465_)))
                                          (if (##null? _tl94309471_)
                                              (let ((_rest9474_ _tl94269460_))
                                                (_lp9415_ _rest9474_))
                                              (_else94219442_)))
                                        (_else94219442_))
                                    (_else94219442_)))
                              (_else94219442_)))
                        (_else94219442_)))
                  (_try-match94209450_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form9325_ _hd9326_ _body9327_ _compiled-body?9328_)
      (letrec ((_generate19330_
                (lambda (_bind9369_)
                  (let* ((_bind93709381_ _bind9369_)
                         (_E93729385_
                          (lambda ()
                            (error '"No clause matching" _bind93709381_)))
                         (_K93739391_
                          (lambda (_expr9388_ _id9389_)
                            (cons (gxc#generate-runtime-binding-id* _id9389_)
                                  (cons (gxc#compile-e _expr9388_) '())))))
                    (if (##pair? _bind93709381_)
                        (let ((_hd93749394_ (##car _bind93709381_))
                              (_tl93759396_ (##cdr _bind93709381_)))
                          (if (##pair? _hd93749394_)
                              (let ((_hd93789399_ (##car _hd93749394_))
                                    (_tl93799401_ (##cdr _hd93749394_)))
                                (let ((_id9404_ _hd93789399_))
                                  (if (##null? _tl93799401_)
                                      (if (##pair? _tl93759396_)
                                          (let ((_hd93769406_
                                                 (##car _tl93759396_))
                                                (_tl93779408_
                                                 (##cdr _tl93759396_)))
                                            (let ((_expr9411_ _hd93769406_))
                                              (if (##null? _tl93779408_)
                                                  (_K93739391_
                                                   _expr9411_
                                                   _id9404_)
                                                  (_E93729385_))))
                                          (_E93729385_))
                                      (_E93729385_))))
                              (_E93729385_)))
                        (_E93729385_))))))
        (let* ((_bind9332_ (map _generate19330_ _hd9326_))
               (_body9334_
                (if _compiled-body?9328_
                    _body9327_
                    (gxc#compile-e _body9327_)))
               (_body9366_
                (let* ((_body93359343_ _body9334_)
                       (_else93379351_ (lambda () (cons _body9334_ '())))
                       (_K93399356_ (lambda (_exprs9354_) _exprs9354_)))
                  (if (##pair? _body93359343_)
                      (let ((_hd93409359_ (##car _body93359343_))
                            (_tl93419361_ (##cdr _body93359343_)))
                        (if (##eq? _hd93409359_ 'begin)
                            (let ((_exprs9364_ _tl93419361_))
                              (_K93399356_ _exprs9364_))
                            (_else93379351_)))
                      (_else93379351_)))))
          (cons _form9325_ (cons _bind9332_ _body9366_))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx9233_)
      (letrec ((_generate19235_
                (lambda (_datum9287_)
                  (if (or (null? _datum9287_)
                          (interned-symbol? _datum9287_)
                          (gx#self-quoting? _datum9287_)
                          (eof-object? _datum9287_))
                      _datum9287_
                      (if (uninterned-symbol? _datum9287_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum9287_
                           '#t)
                          (if (pair? _datum9287_)
                              (cons (_generate19235_ (car _datum9287_))
                                    (_generate19235_ (cdr _datum9287_)))
                              (if (box? _datum9287_)
                                  (box (_generate19235_ (unbox _datum9287_)))
                                  (if (vector? _datum9287_)
                                      (vector-map _generate19235_ _datum9287_)
                                      (if (or (s8vector? _datum9287_)
                                              (u8vector? _datum9287_)
                                              (s16vector? _datum9287_)
                                              (u16vector? _datum9287_)
                                              (s32vector? _datum9287_)
                                              (u32vector? _datum9287_)
                                              (s64vector? _datum9287_)
                                              (u64vector? _datum9287_)
                                              (f32vector? _datum9287_)
                                              (f64vector? _datum9287_))
                                          _datum9287_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx9233_))))))))))
        (let* ((_g92379250_
                (lambda (_g92389247_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g92389247_)))
               (_g92369284_
                (lambda (_g92389253_)
                  (if (gx#stx-pair? _g92389253_)
                      (let ((_e92409255_ (gx#stx-e _g92389253_)))
                        (let ((_hd92419258_ (##car _e92409255_))
                              (_tl92429260_ (##cdr _e92409255_)))
                          (if (gx#stx-pair? _tl92429260_)
                              (let ((_e92439263_ (gx#stx-e _tl92429260_)))
                                (let ((_hd92449266_ (##car _e92439263_))
                                      (_tl92459268_ (##cdr _e92439263_)))
                                  (if (gx#stx-null? _tl92459268_)
                                      ((lambda (_L9271_)
                                         (cons 'quote
                                               (cons (_generate19235_
                                                      (gx#stx-e _L9271_))
                                                     '())))
                                       _hd92449266_)
                                      (_g92379250_ _g92389253_))))
                              (_g92379250_ _g92389253_))))
                      (_g92379250_ _g92389253_)))))
          (_g92369284_ _stx9233_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx8926_)
      (let* ((_g89288942_
              (lambda (_g89298939_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g89298939_)))
             (_g89279230_
              (lambda (_g89298945_)
                (if (gx#stx-pair? _g89298945_)
                    (let ((_e89328947_ (gx#stx-e _g89298945_)))
                      (let ((_hd89338950_ (##car _e89328947_))
                            (_tl89348952_ (##cdr _e89328947_)))
                        (if (gx#stx-pair? _tl89348952_)
                            (let ((_e89358955_ (gx#stx-e _tl89348952_)))
                              (let ((_hd89368958_ (##car _e89358955_))
                                    (_tl89378960_ (##cdr _e89358955_)))
                                ((lambda (_L8963_ _L8964_)
                                   (let ((_rator8977_ (gxc#compile-e _L8964_))
                                         (_rands8978_
                                          (map gxc#compile-e _L8963_)))
                                     (let* ((___stx1610316104_ _rator8977_)
                                            (_g89819033_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1610316104_))))
                                       (let ((___kont1610516106_
                                              (lambda (_L9157_
                                                       _L9158_
                                                       _L9159_
                                                       _L9160_)
                                                (if (fx= (length _rands8978_)
                                                         (length (foldr1 (lambda (_g91969199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          _g91979201_)
                                   (cons _g91969199_ _g91979201_))
                                 '()
                                 _L9159_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id9204_ _L9160_)
                                                           (_args9213_
                                                            (foldr1 (lambda (_g92059208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g92069210_)
                              (cons _g92059208_ _g92069210_))
                            '()
                            _L9159_))
                   (_body9222_
                    (foldr1 (lambda (_g92149217_ _g92159219_)
                              (cons _g92149217_ _g92159219_))
                            '()
                            _L9158_))
                   (_init9224_ (map list _args9213_ _rands8978_)))
              (cons 'let (cons _id9204_ (cons _init9224_ _body9222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx8926_))))
                                             (___kont1611116112_
                                              (lambda ()
                                                (cons _rator8977_
                                                      _rands8978_))))
                                         (let ((___match1617016171_
                                                (lambda (_e89879045_
                                                         _hd89889048_
                                                         _tl89899050_
                                                         _e89909053_
                                                         _hd89919056_
                                                         _tl89929058_
                                                         _e89939061_
                                                         _hd89949064_
                                                         _tl89959066_
                                                         _e89969069_
                                                         _hd89979072_
                                                         _tl89989074_
                                                         _e89999077_
                                                         _hd90009080_
                                                         _tl90019082_
                                                         _e90029085_
                                                         _hd90039088_
                                                         _tl90049090_
                                                         _e90059093_
                                                         _hd90069096_
                                                         _tl90079098_
                                                         ___splice1610716108_
                                                         _target90089101_
                                                         _tl90109103_)
                                                  (letrec ((_loop90119106_
                                                            (lambda (_hd90099109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg90159111_)
                      (if (gx#stx-pair? _hd90099109_)
                          (let ((_e90129114_ (gx#stx-e _hd90099109_)))
                            (let ((_lp-tl90149119_ (##cdr _e90129114_))
                                  (_lp-hd90139117_ (##car _e90129114_)))
                              (_loop90119106_
                               _lp-tl90149119_
                               (cons _lp-hd90139117_ _arg90159111_))))
                          (let ((_arg90169122_ (reverse _arg90159111_)))
                            (if (gx#stx-pair/null? _tl90079098_)
                                (let ((___splice1610916110_
                                       (gx#syntax-split-splice
                                        _tl90079098_
                                        '0)))
                                  (let ((_tl90199127_
                                         (##vector-ref
                                          ___splice1610916110_
                                          '1))
                                        (_target90179125_
                                         (##vector-ref
                                          ___splice1610916110_
                                          '0)))
                                    (if (gx#stx-null? _tl90199127_)
                                        (letrec ((_loop90209130_
                                                  (lambda (_hd90189133_
                                                           _body90249135_)
                                                    (if (gx#stx-pair?
                                                         _hd90189133_)
                                                        (let ((_e90219138_
                                                               (gx#stx-e
                                                                _hd90189133_)))
                                                          (let ((_lp-tl90239143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e90219138_))
                        (_lp-hd90229141_ (##car _e90219138_)))
                    (_loop90209130_
                     _lp-tl90239143_
                     (cons _lp-hd90229141_ _body90249135_))))
                (let ((_body90259146_ (reverse _body90249135_)))
                  (if (gx#stx-null? _tl90019082_)
                      (if (gx#stx-null? _tl89959066_)
                          (if (gx#stx-pair? _tl89929058_)
                              (let ((_e90269149_ (gx#stx-e _tl89929058_)))
                                (let ((_tl90289154_ (##cdr _e90269149_))
                                      (_hd90279152_ (##car _e90269149_)))
                                  (if (gx#stx-null? _tl90289154_)
                                      (let ((_L9157_ _hd90279152_)
                                            (_L9158_ _body90259146_)
                                            (_L9159_ _arg90169122_)
                                            (_L9160_ _hd89979072_))
                                        (if (eq? _L9160_ _L9157_)
                                            (___kont1610516106_
                                             _L9157_
                                             _L9158_
                                             _L9159_
                                             _L9160_)
                                            (___kont1611116112_)))
                                      (___kont1611116112_))))
                              (___kont1611116112_))
                          (___kont1611116112_))
                      (___kont1611116112_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop90209130_
                                           _target90179125_
                                           '()))
                                        (___kont1611116112_))))
                                (___kont1611116112_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop90119106_
                                                     _target90089101_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1610316104_)
                                               (let ((_e89879045_
                                                      (gx#stx-e
                                                       ___stx1610316104_)))
                                                 (let ((_tl89899050_
                                                        (##cdr _e89879045_))
                                                       (_hd89889048_
                                                        (##car _e89879045_)))
                                                   (if (gx#identifier?
                                                        _hd89889048_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd89889048_)
                                                           (if (gx#stx-pair?
                                                                _tl89899050_)
                                                               (let ((_e89909053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl89899050_)))
                         (let ((_tl89929058_ (##cdr _e89909053_))
                               (_hd89919056_ (##car _e89909053_)))
                           (if (gx#stx-pair? _hd89919056_)
                               (let ((_e89939061_ (gx#stx-e _hd89919056_)))
                                 (let ((_tl89959066_ (##cdr _e89939061_))
                                       (_hd89949064_ (##car _e89939061_)))
                                   (if (gx#stx-pair? _hd89949064_)
                                       (let ((_e89969069_
                                              (gx#stx-e _hd89949064_)))
                                         (let ((_tl89989074_
                                                (##cdr _e89969069_))
                                               (_hd89979072_
                                                (##car _e89969069_)))
                                           (if (gx#stx-pair? _tl89989074_)
                                               (let ((_e89999077_
                                                      (gx#stx-e _tl89989074_)))
                                                 (let ((_tl90019082_
                                                        (##cdr _e89999077_))
                                                       (_hd90009080_
                                                        (##car _e89999077_)))
                                                   (if (gx#stx-pair?
                                                        _hd90009080_)
                                                       (let ((_e90029085_
                                                              (gx#stx-e
                                                               _hd90009080_)))
                                                         (let ((_tl90049090_
                                                                (##cdr _e90029085_))
                                                               (_hd90039088_
                                                                (##car _e90029085_)))
                                                           (if (gx#identifier?
                                                                _hd90039088_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd90039088_)
                           (if (gx#stx-pair? _tl90049090_)
                               (let ((_e90059093_ (gx#stx-e _tl90049090_)))
                                 (let ((_tl90079098_ (##cdr _e90059093_))
                                       (_hd90069096_ (##car _e90059093_)))
                                   (if (gx#stx-pair/null? _hd90069096_)
                                       (let ((___splice1610716108_
                                              (gx#syntax-split-splice
                                               _hd90069096_
                                               '0)))
                                         (let ((_tl90109103_
                                                (##vector-ref
                                                 ___splice1610716108_
                                                 '1))
                                               (_target90089101_
                                                (##vector-ref
                                                 ___splice1610716108_
                                                 '0)))
                                           (if (gx#stx-null? _tl90109103_)
                                               (___match1617016171_
                                                _e89879045_
                                                _hd89889048_
                                                _tl89899050_
                                                _e89909053_
                                                _hd89919056_
                                                _tl89929058_
                                                _e89939061_
                                                _hd89949064_
                                                _tl89959066_
                                                _e89969069_
                                                _hd89979072_
                                                _tl89989074_
                                                _e89999077_
                                                _hd90009080_
                                                _tl90019082_
                                                _e90029085_
                                                _hd90039088_
                                                _tl90049090_
                                                _e90059093_
                                                _hd90069096_
                                                _tl90079098_
                                                ___splice1610716108_
                                                _target90089101_
                                                _tl90109103_)
                                               (___kont1611116112_))))
                                       (___kont1611116112_))))
                               (___kont1611116112_))
                           (___kont1611116112_))
                       (___kont1611116112_))))
               (___kont1611116112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1611116112_))))
                                       (___kont1611116112_))))
                               (___kont1611116112_))))
                       (___kont1611116112_))
                   (___kont1611116112_))
               (___kont1611116112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1611116112_)))))))
                                 _tl89378960_
                                 _hd89368958_)))
                            (_g89288942_ _g89298945_))))
                    (_g89288942_ _g89298945_)))))
        (_g89279230_ _stx8926_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx8630_)
      (letrec ((_simplify8632_
                (lambda (_code8717_)
                  (let* ((___stx1620116202_ _code8717_)
                         (_g87208747_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1620116202_))))
                    (let ((___kont1620316204_
                           (lambda (_L8810_ _L8811_)
                             (let* ((___stx1617316174_ _L8810_)
                                    (_g88358854_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx1617316174_))))
                               (let ((___kont1617516176_
                                      (lambda (_L8898_)
                                        (cons 'and
                                              (cons _L8811_
                                                    (foldr1 (lambda (_g89128915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g89138917_)
                      (cons _g89128915_ _g89138917_))
                    '()
                    _L8898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont1617916180_
                                      (lambda ()
                                        (cons 'and
                                              (cons _L8811_
                                                    (cons _L8810_ '()))))))
                                 (let ((___match1619816199_
                                        (lambda (_e88388866_
                                                 _hd88398869_
                                                 _tl88408871_
                                                 ___splice1617716178_
                                                 _target88418874_
                                                 _tl88438876_)
                                          (letrec ((_loop88448879_
                                                    (lambda (_hd88428882_
                                                             _expr88488884_)
                                                      (if (gx#stx-pair?
                                                           _hd88428882_)
                                                          (let ((_e88458887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd88428882_)))
                    (let ((_lp-tl88478892_ (##cdr _e88458887_))
                          (_lp-hd88468890_ (##car _e88458887_)))
                      (_loop88448879_
                       _lp-tl88478892_
                       (cons _lp-hd88468890_ _expr88488884_))))
                  (let ((_expr88498895_ (reverse _expr88488884_)))
                    (___kont1617516176_ _expr88498895_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop88448879_
                                             _target88418874_
                                             '())))))
                                   (if (gx#stx-pair? ___stx1617316174_)
                                       (let ((_e88388866_
                                              (gx#stx-e ___stx1617316174_)))
                                         (let ((_tl88408871_
                                                (##cdr _e88388866_))
                                               (_hd88398869_
                                                (##car _e88388866_)))
                                           (if (gx#identifier? _hd88398869_)
                                               (if (gx#stx-eq?
                                                    'and
                                                    _hd88398869_)
                                                   (if (gx#stx-pair/null?
                                                        _tl88408871_)
                                                       (let ((___splice1617716178_
                                                              (gx#syntax-split-splice
                                                               _tl88408871_
                                                               '0)))
                                                         (let ((_tl88438876_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice1617716178_
                         '1))
                       (_target88418874_
                        (##vector-ref ___splice1617716178_ '0)))
                   (if (gx#stx-null? _tl88438876_)
                       (___match1619816199_
                        _e88388866_
                        _hd88398869_
                        _tl88408871_
                        ___splice1617716178_
                        _target88418874_
                        _tl88438876_)
                       (___kont1617916180_))))
               (___kont1617916180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1617916180_))
                                               (___kont1617916180_))))
                                       (___kont1617916180_)))))))
                          (___kont1620516206_ (lambda () _code8717_)))
                      (if (gx#stx-pair? ___stx1620116202_)
                          (let ((_e87248759_ (gx#stx-e ___stx1620116202_)))
                            (let ((_tl87268764_ (##cdr _e87248759_))
                                  (_hd87258762_ (##car _e87248759_)))
                              (if (gx#identifier? _hd87258762_)
                                  (if (gx#stx-eq? 'if _hd87258762_)
                                      (if (gx#stx-pair? _tl87268764_)
                                          (let ((_e87278767_
                                                 (gx#stx-e _tl87268764_)))
                                            (let ((_tl87298772_
                                                   (##cdr _e87278767_))
                                                  (_hd87288770_
                                                   (##car _e87278767_)))
                                              (if (gx#stx-pair? _tl87298772_)
                                                  (let ((_e87308775_
                                                         (gx#stx-e
                                                          _tl87298772_)))
                                                    (let ((_tl87328780_
                                                           (##cdr _e87308775_))
                                                          (_hd87318778_
                                                           (##car _e87308775_)))
                                                      (if (gx#stx-pair?
                                                           _tl87328780_)
                                                          (let ((_e87338783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl87328780_)))
                    (let ((_tl87358788_ (##cdr _e87338783_))
                          (_hd87348786_ (##car _e87338783_)))
                      (if (gx#stx-pair? _hd87348786_)
                          (let ((_e87368791_ (gx#stx-e _hd87348786_)))
                            (let ((_tl87388796_ (##cdr _e87368791_))
                                  (_hd87378794_ (##car _e87368791_)))
                              (if (gx#identifier? _hd87378794_)
                                  (if (gx#stx-eq? 'quote _hd87378794_)
                                      (if (gx#stx-pair? _tl87388796_)
                                          (let ((_e87398799_
                                                 (gx#stx-e _tl87388796_)))
                                            (let ((_tl87418804_
                                                   (##cdr _e87398799_))
                                                  (_hd87408802_
                                                   (##car _e87398799_)))
                                              (if (gx#stx-datum? _hd87408802_)
                                                  (let ((_e87428807_
                                                         (gx#stx-e
                                                          _hd87408802_)))
                                                    (if (equal? _e87428807_
                                                                '#f)
                                                        (if (gx#stx-null?
                                                             _tl87418804_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl87358788_)
                        (___kont1620316204_ _hd87318778_ _hd87288770_)
                        (___kont1620516206_))
                    (___kont1620516206_))
                (___kont1620516206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1620516206_))))
                                          (___kont1620516206_))
                                      (___kont1620516206_))
                                  (___kont1620516206_))))
                          (___kont1620516206_))))
                  (___kont1620516206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1620516206_))))
                                          (___kont1620516206_))
                                      (___kont1620516206_))
                                  (___kont1620516206_))))
                          (___kont1620516206_)))))))
        (let* ((_g86348655_
                (lambda (_g86358652_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86358652_)))
               (_g86338714_
                (lambda (_g86358658_)
                  (if (gx#stx-pair? _g86358658_)
                      (let ((_e86398660_ (gx#stx-e _g86358658_)))
                        (let ((_hd86408663_ (##car _e86398660_))
                              (_tl86418665_ (##cdr _e86398660_)))
                          (if (gx#stx-pair? _tl86418665_)
                              (let ((_e86428668_ (gx#stx-e _tl86418665_)))
                                (let ((_hd86438671_ (##car _e86428668_))
                                      (_tl86448673_ (##cdr _e86428668_)))
                                  (if (gx#stx-pair? _tl86448673_)
                                      (let ((_e86458676_
                                             (gx#stx-e _tl86448673_)))
                                        (let ((_hd86468679_
                                               (##car _e86458676_))
                                              (_tl86478681_
                                               (##cdr _e86458676_)))
                                          (if (gx#stx-pair? _tl86478681_)
                                              (let ((_e86488684_
                                                     (gx#stx-e _tl86478681_)))
                                                (let ((_hd86498687_
                                                       (##car _e86488684_))
                                                      (_tl86508689_
                                                       (##cdr _e86488684_)))
                                                  (if (gx#stx-null?
                                                       _tl86508689_)
                                                      ((lambda (_L8692_
                                                                _L8693_
                                                                _L8694_)
                                                         (if (gxc#current-compile-boolean-context)
                                                             (_simplify8632_
                                                              (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gxc#compile-e _L8694_)
                                  (cons (gxc#compile-e _L8693_)
                                        (cons (gxc#compile-e _L8692_) '())))))
                     (cons 'if
                           (cons (call-with-parameters
                                  (lambda () (gxc#compile-e _L8694_))
                                  gxc#current-compile-boolean-context
                                  '#t)
                                 (cons (gxc#compile-e _L8693_)
                                       (cons (gxc#compile-e _L8692_) '()))))))
               _hd86498687_
               _hd86468679_
               _hd86438671_)
              (_g86348655_ _g86358658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g86348655_ _g86358658_))))
                                      (_g86348655_ _g86358658_))))
                              (_g86348655_ _g86358658_))))
                      (_g86348655_ _g86358658_)))))
          (_g86338714_ _stx8630_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx8579_)
      (let* ((_g85818594_
              (lambda (_g85828591_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g85828591_)))
             (_g85808627_
              (lambda (_g85828597_)
                (if (gx#stx-pair? _g85828597_)
                    (let ((_e85848599_ (gx#stx-e _g85828597_)))
                      (let ((_hd85858602_ (##car _e85848599_))
                            (_tl85868604_ (##cdr _e85848599_)))
                        (if (gx#stx-pair? _tl85868604_)
                            (let ((_e85878607_ (gx#stx-e _tl85868604_)))
                              (let ((_hd85888610_ (##car _e85878607_))
                                    (_tl85898612_ (##cdr _e85878607_)))
                                (if (gx#stx-null? _tl85898612_)
                                    ((lambda (_L8615_)
                                       (gxc#generate-runtime-binding-id
                                        _L8615_))
                                     _hd85888610_)
                                    (_g85818594_ _g85828597_))))
                            (_g85818594_ _g85828597_))))
                    (_g85818594_ _g85828597_)))))
        (_g85808627_ _stx8579_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx8512_)
      (let* ((_g85148531_
              (lambda (_g85158528_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g85158528_)))
             (_g85138576_
              (lambda (_g85158534_)
                (if (gx#stx-pair? _g85158534_)
                    (let ((_e85188536_ (gx#stx-e _g85158534_)))
                      (let ((_hd85198539_ (##car _e85188536_))
                            (_tl85208541_ (##cdr _e85188536_)))
                        (if (gx#stx-pair? _tl85208541_)
                            (let ((_e85218544_ (gx#stx-e _tl85208541_)))
                              (let ((_hd85228547_ (##car _e85218544_))
                                    (_tl85238549_ (##cdr _e85218544_)))
                                (if (gx#stx-pair? _tl85238549_)
                                    (let ((_e85248552_
                                           (gx#stx-e _tl85238549_)))
                                      (let ((_hd85258555_ (##car _e85248552_))
                                            (_tl85268557_ (##cdr _e85248552_)))
                                        (if (gx#stx-null? _tl85268557_)
                                            ((lambda (_L8560_ _L8561_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L8561_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8560_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd85258555_
                                             _hd85228547_)
                                            (_g85148531_ _g85158534_))))
                                    (_g85148531_ _g85158534_))))
                            (_g85148531_ _g85158534_))))
                    (_g85148531_ _g85158534_)))))
        (_g85138576_ _stx8512_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx8445_)
      (let* ((_g84478464_
              (lambda (_g84488461_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g84488461_)))
             (_g84468509_
              (lambda (_g84488467_)
                (if (gx#stx-pair? _g84488467_)
                    (let ((_e84518469_ (gx#stx-e _g84488467_)))
                      (let ((_hd84528472_ (##car _e84518469_))
                            (_tl84538474_ (##cdr _e84518469_)))
                        (if (gx#stx-pair? _tl84538474_)
                            (let ((_e84548477_ (gx#stx-e _tl84538474_)))
                              (let ((_hd84558480_ (##car _e84548477_))
                                    (_tl84568482_ (##cdr _e84548477_)))
                                (if (gx#stx-pair? _tl84568482_)
                                    (let ((_e84578485_
                                           (gx#stx-e _tl84568482_)))
                                      (let ((_hd84588488_ (##car _e84578485_))
                                            (_tl84598490_ (##cdr _e84578485_)))
                                        (if (gx#stx-null? _tl84598490_)
                                            ((lambda (_L8493_ _L8494_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L8493_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8494_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd84588488_
                                             _hd84558480_)
                                            (_g84478464_ _g84488467_))))
                                    (_g84478464_ _g84488467_))))
                            (_g84478464_ _g84488467_))))
                    (_g84478464_ _g84488467_)))))
        (_g84468509_ _stx8445_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx8378_)
      (let* ((_g83808397_
              (lambda (_g83818394_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g83818394_)))
             (_g83798442_
              (lambda (_g83818400_)
                (if (gx#stx-pair? _g83818400_)
                    (let ((_e83848402_ (gx#stx-e _g83818400_)))
                      (let ((_hd83858405_ (##car _e83848402_))
                            (_tl83868407_ (##cdr _e83848402_)))
                        (if (gx#stx-pair? _tl83868407_)
                            (let ((_e83878410_ (gx#stx-e _tl83868407_)))
                              (let ((_hd83888413_ (##car _e83878410_))
                                    (_tl83898415_ (##cdr _e83878410_)))
                                (if (gx#stx-pair? _tl83898415_)
                                    (let ((_e83908418_
                                           (gx#stx-e _tl83898415_)))
                                      (let ((_hd83918421_ (##car _e83908418_))
                                            (_tl83928423_ (##cdr _e83908418_)))
                                        (if (gx#stx-null? _tl83928423_)
                                            ((lambda (_L8426_ _L8427_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L8426_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8427_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd83918421_
                                             _hd83888413_)
                                            (_g83808397_ _g83818400_))))
                                    (_g83808397_ _g83818400_))))
                            (_g83808397_ _g83818400_))))
                    (_g83808397_ _g83818400_)))))
        (_g83798442_ _stx8378_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx8295_)
      (let* ((_g82978318_
              (lambda (_g82988315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g82988315_)))
             (_g82968375_
              (lambda (_g82988321_)
                (if (gx#stx-pair? _g82988321_)
                    (let ((_e83028323_ (gx#stx-e _g82988321_)))
                      (let ((_hd83038326_ (##car _e83028323_))
                            (_tl83048328_ (##cdr _e83028323_)))
                        (if (gx#stx-pair? _tl83048328_)
                            (let ((_e83058331_ (gx#stx-e _tl83048328_)))
                              (let ((_hd83068334_ (##car _e83058331_))
                                    (_tl83078336_ (##cdr _e83058331_)))
                                (if (gx#stx-pair? _tl83078336_)
                                    (let ((_e83088339_
                                           (gx#stx-e _tl83078336_)))
                                      (let ((_hd83098342_ (##car _e83088339_))
                                            (_tl83108344_ (##cdr _e83088339_)))
                                        (if (gx#stx-pair? _tl83108344_)
                                            (let ((_e83118347_
                                                   (gx#stx-e _tl83108344_)))
                                              (let ((_hd83128350_
                                                     (##car _e83118347_))
                                                    (_tl83138352_
                                                     (##cdr _e83118347_)))
                                                (if (gx#stx-null? _tl83138352_)
                                                    ((lambda (_L8355_
                                                              _L8356_
                                                              _L8357_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8355_)
                           (cons (gxc#compile-e _L8356_)
                                 (cons (gxc#compile-e _L8357_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd83128350_
                                                     _hd83098342_
                                                     _hd83068334_)
                                                    (_g82978318_
                                                     _g82988321_))))
                                            (_g82978318_ _g82988321_))))
                                    (_g82978318_ _g82988321_))))
                            (_g82978318_ _g82988321_))))
                    (_g82978318_ _g82988321_)))))
        (_g82968375_ _stx8295_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx8196_)
      (let* ((_g81988223_
              (lambda (_g81998220_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g81998220_)))
             (_g81978292_
              (lambda (_g81998226_)
                (if (gx#stx-pair? _g81998226_)
                    (let ((_e82048228_ (gx#stx-e _g81998226_)))
                      (let ((_hd82058231_ (##car _e82048228_))
                            (_tl82068233_ (##cdr _e82048228_)))
                        (if (gx#stx-pair? _tl82068233_)
                            (let ((_e82078236_ (gx#stx-e _tl82068233_)))
                              (let ((_hd82088239_ (##car _e82078236_))
                                    (_tl82098241_ (##cdr _e82078236_)))
                                (if (gx#stx-pair? _tl82098241_)
                                    (let ((_e82108244_
                                           (gx#stx-e _tl82098241_)))
                                      (let ((_hd82118247_ (##car _e82108244_))
                                            (_tl82128249_ (##cdr _e82108244_)))
                                        (if (gx#stx-pair? _tl82128249_)
                                            (let ((_e82138252_
                                                   (gx#stx-e _tl82128249_)))
                                              (let ((_hd82148255_
                                                     (##car _e82138252_))
                                                    (_tl82158257_
                                                     (##cdr _e82138252_)))
                                                (if (gx#stx-pair? _tl82158257_)
                                                    (let ((_e82168260_
                                                           (gx#stx-e
                                                            _tl82158257_)))
                                                      (let ((_hd82178263_
                                                             (##car _e82168260_))
                                                            (_tl82188265_
                                                             (##cdr _e82168260_)))
                                                        (if (gx#stx-null?
                                                             _tl82188265_)
                                                            ((lambda (_L8268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8269_
                              _L8270_
                              _L8271_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L8269_)
                                   (cons (gxc#compile-e _L8268_)
                                         (cons (gxc#compile-e _L8270_)
                                               (cons (gxc#compile-e _L8271_)
                                                     (cons ''#f '())))))))
                     _hd82178263_
                     _hd82148255_
                     _hd82118247_
                     _hd82088239_)
                    (_g81988223_ _g81998226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81988223_
                                                     _g81998226_))))
                                            (_g81988223_ _g81998226_))))
                                    (_g81988223_ _g81998226_))))
                            (_g81988223_ _g81998226_))))
                    (_g81988223_ _g81998226_)))))
        (_g81978292_ _stx8196_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx8113_)
      (let* ((_g81158136_
              (lambda (_g81168133_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g81168133_)))
             (_g81148193_
              (lambda (_g81168139_)
                (if (gx#stx-pair? _g81168139_)
                    (let ((_e81208141_ (gx#stx-e _g81168139_)))
                      (let ((_hd81218144_ (##car _e81208141_))
                            (_tl81228146_ (##cdr _e81208141_)))
                        (if (gx#stx-pair? _tl81228146_)
                            (let ((_e81238149_ (gx#stx-e _tl81228146_)))
                              (let ((_hd81248152_ (##car _e81238149_))
                                    (_tl81258154_ (##cdr _e81238149_)))
                                (if (gx#stx-pair? _tl81258154_)
                                    (let ((_e81268157_
                                           (gx#stx-e _tl81258154_)))
                                      (let ((_hd81278160_ (##car _e81268157_))
                                            (_tl81288162_ (##cdr _e81268157_)))
                                        (if (gx#stx-pair? _tl81288162_)
                                            (let ((_e81298165_
                                                   (gx#stx-e _tl81288162_)))
                                              (let ((_hd81308168_
                                                     (##car _e81298165_))
                                                    (_tl81318170_
                                                     (##cdr _e81298165_)))
                                                (if (gx#stx-null? _tl81318170_)
                                                    ((lambda (_L8173_
                                                              _L8174_
                                                              _L8175_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8173_)
                           (cons (gxc#compile-e _L8174_)
                                 (cons (gxc#compile-e _L8175_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd81308168_
                                                     _hd81278160_
                                                     _hd81248152_)
                                                    (_g81158136_
                                                     _g81168139_))))
                                            (_g81158136_ _g81168139_))))
                                    (_g81158136_ _g81168139_))))
                            (_g81158136_ _g81168139_))))
                    (_g81158136_ _g81168139_)))))
        (_g81148193_ _stx8113_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx8014_)
      (let* ((_g80168041_
              (lambda (_g80178038_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g80178038_)))
             (_g80158110_
              (lambda (_g80178044_)
                (if (gx#stx-pair? _g80178044_)
                    (let ((_e80228046_ (gx#stx-e _g80178044_)))
                      (let ((_hd80238049_ (##car _e80228046_))
                            (_tl80248051_ (##cdr _e80228046_)))
                        (if (gx#stx-pair? _tl80248051_)
                            (let ((_e80258054_ (gx#stx-e _tl80248051_)))
                              (let ((_hd80268057_ (##car _e80258054_))
                                    (_tl80278059_ (##cdr _e80258054_)))
                                (if (gx#stx-pair? _tl80278059_)
                                    (let ((_e80288062_
                                           (gx#stx-e _tl80278059_)))
                                      (let ((_hd80298065_ (##car _e80288062_))
                                            (_tl80308067_ (##cdr _e80288062_)))
                                        (if (gx#stx-pair? _tl80308067_)
                                            (let ((_e80318070_
                                                   (gx#stx-e _tl80308067_)))
                                              (let ((_hd80328073_
                                                     (##car _e80318070_))
                                                    (_tl80338075_
                                                     (##cdr _e80318070_)))
                                                (if (gx#stx-pair? _tl80338075_)
                                                    (let ((_e80348078_
                                                           (gx#stx-e
                                                            _tl80338075_)))
                                                      (let ((_hd80358081_
                                                             (##car _e80348078_))
                                                            (_tl80368083_
                                                             (##cdr _e80348078_)))
                                                        (if (gx#stx-null?
                                                             _tl80368083_)
                                                            ((lambda (_L8086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8087_
                              _L8088_
                              _L8089_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L8087_)
                                   (cons (gxc#compile-e _L8086_)
                                         (cons (gxc#compile-e _L8088_)
                                               (cons (gxc#compile-e _L8089_)
                                                     (cons ''#f '())))))))
                     _hd80358081_
                     _hd80328073_
                     _hd80298065_
                     _hd80268057_)
                    (_g80168041_ _g80178044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80168041_
                                                     _g80178044_))))
                                            (_g80168041_ _g80178044_))))
                                    (_g80168041_ _g80178044_))))
                            (_g80168041_ _g80178044_))))
                    (_g80168041_ _g80178044_)))))
        (_g80158110_ _stx8014_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx7931_)
      (let* ((_g79337954_
              (lambda (_g79347951_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g79347951_)))
             (_g79328011_
              (lambda (_g79347957_)
                (if (gx#stx-pair? _g79347957_)
                    (let ((_e79387959_ (gx#stx-e _g79347957_)))
                      (let ((_hd79397962_ (##car _e79387959_))
                            (_tl79407964_ (##cdr _e79387959_)))
                        (if (gx#stx-pair? _tl79407964_)
                            (let ((_e79417967_ (gx#stx-e _tl79407964_)))
                              (let ((_hd79427970_ (##car _e79417967_))
                                    (_tl79437972_ (##cdr _e79417967_)))
                                (if (gx#stx-pair? _tl79437972_)
                                    (let ((_e79447975_
                                           (gx#stx-e _tl79437972_)))
                                      (let ((_hd79457978_ (##car _e79447975_))
                                            (_tl79467980_ (##cdr _e79447975_)))
                                        (if (gx#stx-pair? _tl79467980_)
                                            (let ((_e79477983_
                                                   (gx#stx-e _tl79467980_)))
                                              (let ((_hd79487986_
                                                     (##car _e79477983_))
                                                    (_tl79497988_
                                                     (##cdr _e79477983_)))
                                                (if (gx#stx-null? _tl79497988_)
                                                    ((lambda (_L7991_
                                                              _L7992_
                                                              _L7993_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7991_)
                           (cons (gxc#compile-e _L7992_)
                                 (cons (gxc#compile-e _L7993_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd79487986_
                                                     _hd79457978_
                                                     _hd79427970_)
                                                    (_g79337954_
                                                     _g79347957_))))
                                            (_g79337954_ _g79347957_))))
                                    (_g79337954_ _g79347957_))))
                            (_g79337954_ _g79347957_))))
                    (_g79337954_ _g79347957_)))))
        (_g79328011_ _stx7931_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx7832_)
      (let* ((_g78347859_
              (lambda (_g78357856_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g78357856_)))
             (_g78337928_
              (lambda (_g78357862_)
                (if (gx#stx-pair? _g78357862_)
                    (let ((_e78407864_ (gx#stx-e _g78357862_)))
                      (let ((_hd78417867_ (##car _e78407864_))
                            (_tl78427869_ (##cdr _e78407864_)))
                        (if (gx#stx-pair? _tl78427869_)
                            (let ((_e78437872_ (gx#stx-e _tl78427869_)))
                              (let ((_hd78447875_ (##car _e78437872_))
                                    (_tl78457877_ (##cdr _e78437872_)))
                                (if (gx#stx-pair? _tl78457877_)
                                    (let ((_e78467880_
                                           (gx#stx-e _tl78457877_)))
                                      (let ((_hd78477883_ (##car _e78467880_))
                                            (_tl78487885_ (##cdr _e78467880_)))
                                        (if (gx#stx-pair? _tl78487885_)
                                            (let ((_e78497888_
                                                   (gx#stx-e _tl78487885_)))
                                              (let ((_hd78507891_
                                                     (##car _e78497888_))
                                                    (_tl78517893_
                                                     (##cdr _e78497888_)))
                                                (if (gx#stx-pair? _tl78517893_)
                                                    (let ((_e78527896_
                                                           (gx#stx-e
                                                            _tl78517893_)))
                                                      (let ((_hd78537899_
                                                             (##car _e78527896_))
                                                            (_tl78547901_
                                                             (##cdr _e78527896_)))
                                                        (if (gx#stx-null?
                                                             _tl78547901_)
                                                            ((lambda (_L7904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7905_
                              _L7906_
                              _L7907_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L7905_)
                                   (cons (gxc#compile-e _L7904_)
                                         (cons (gxc#compile-e _L7906_)
                                               (cons (gxc#compile-e _L7907_)
                                                     (cons ''#f '())))))))
                     _hd78537899_
                     _hd78507891_
                     _hd78477883_
                     _hd78447875_)
                    (_g78347859_ _g78357862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78347859_
                                                     _g78357862_))))
                                            (_g78347859_ _g78357862_))))
                                    (_g78347859_ _g78357862_))))
                            (_g78347859_ _g78357862_))))
                    (_g78347859_ _g78357862_)))))
        (_g78337928_ _stx7832_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx7686_)
      (letrec ((_import-set-template7688_
                (lambda (_in7784_ _phi7785_)
                  (let ((_iphi7787_
                         (fx+ _phi7785_
                              (##direct-structure-ref
                               _in7784_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports7788_
                         (##structure-ref
                          (##direct-structure-ref
                           _in7784_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp7790_ ((_rest7792_ _imports7788_) (_r7793_ '()))
                      (let* ((_rest77947802_ _rest7792_)
                             (_else77967810_ (lambda () _r7793_))
                             (_K77987820_
                              (lambda (_rest7813_ _in7814_)
                                (if (##structure-instance-of?
                                     _in7814_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi7787_)
                                        (_lp7790_
                                         _rest7813_
                                         (cons _in7814_ _r7793_))
                                        (_lp7790_ _rest7813_ _r7793_))
                                    (if (##structure-direct-instance-of?
                                         _in7814_
                                         'gx#module-import::t)
                                        (let ((_iphi7816_
                                               (fx+ _phi7785_
                                                    (##direct-structure-ref
                                                     _in7814_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi7816_)
                                              (_lp7790_
                                               _rest7813_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in7814_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r7793_))
                                              (_lp7790_ _rest7813_ _r7793_)))
                                        (if (##structure-direct-instance-of?
                                             _in7814_
                                             'gx#import-set::t)
                                            (let ((_xphi7818_
                                                   (fx+ _iphi7787_
                                                        (##direct-structure-ref
                                                         _in7814_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi7818_)
                                                  (_lp7790_
                                                   _rest7813_
                                                   (cons (##direct-structure-ref
                                                          _in7814_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r7793_))
                                                  (if (fxpositive? _xphi7818_)
                                                      (_lp7790_
                                                       _rest7813_
                                                       (foldl1 cons
                                                               _r7793_
                                                               (_import-set-template7688_
                                                                _in7814_
                                                                _iphi7787_)))
                                                      (_lp7790_
                                                       _rest7813_
                                                       _r7793_))))
                                            (_lp7790_ _rest7813_ _r7793_)))))))
                        (if (##pair? _rest77947802_)
                            (let ((_hd77997823_ (##car _rest77947802_))
                                  (_tl78007825_ (##cdr _rest77947802_)))
                              (let* ((_in7828_ _hd77997823_)
                                     (_rest7830_ _tl78007825_))
                                (_K77987820_ _rest7830_ _in7828_)))
                            (_else77967810_))))))))
        (let* ((_g76907700_
                (lambda (_g76917697_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76917697_)))
               (_g76897781_
                (lambda (_g76917703_)
                  (if (gx#stx-pair? _g76917703_)
                      (let ((_e76937705_ (gx#stx-e _g76917703_)))
                        (let ((_hd76947708_ (##car _e76937705_))
                              (_tl76957710_ (##cdr _e76937705_)))
                          ((lambda (_L7713_)
                             (let ((_ht7724_ (make-table 'test: eq?)))
                               (let _lp7726_ ((_rest7728_ _L7713_)
                                              (_loads7729_ '()))
                                 (letrec ((_K7731_ (lambda (_ctx7774_
                                                            _rest7775_)
                                                     (let ((_id7777_
                                                            (##structure-ref
                                                             _ctx7774_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht7724_
                                                            _id7777_
                                                            '#f)
                                                           (_lp7726_
                                                            _rest7775_
                                                            _loads7729_)
                                                           (let ((_rt7779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id7777_)
                           '"__rt")))
                     (table-set! _ht7724_ _id7777_ _rt7779_)
                     (_lp7726_ _rest7775_ (cons _rt7779_ _loads7729_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest77327740_ _rest7728_)
                                          (_else77347752_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g77477749_)
                                                          (list 'load-module
                                                                _g77477749_))
                                                        (reverse _loads7729_)))))
                                          (_K77367762_
                                           (lambda (_rest7755_ _in7756_)
                                             (if (##structure-instance-of?
                                                  _in7756_
                                                  'gx#module-context::t)
                                                 (_K7731_ _in7756_ _rest7755_)
                                                 (if (##structure-direct-instance-of?
                                                      _in7756_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in7756_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K7731_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in7756_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest7755_)
                 (_lp7726_ _rest7755_ _loads7729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in7756_
                                                          'gx#import-set::t)
                                                         (let ((_phi7758_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in7756_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi7758_)
                       (_K7731_ (##direct-structure-ref
                                 _in7756_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest7755_)
                       (if (fxpositive? _phi7758_)
                           (let ((_deps7760_
                                  (_import-set-template7688_ _in7756_ '0)))
                             (_lp7726_
                              (foldl1 cons _rest7755_ _deps7760_)
                              _loads7729_))
                           (_lp7726_ _rest7755_ _loads7729_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx7686_
                  _in7756_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest77327740_)
                                         (let ((_hd77377765_
                                                (##car _rest77327740_))
                                               (_tl77387767_
                                                (##cdr _rest77327740_)))
                                           (let* ((_in7770_ _hd77377765_)
                                                  (_rest7772_ _tl77387767_))
                                             (_K77367762_
                                              _rest7772_
                                              _in7770_)))
                                         (_else77347752_)))))))
                           _tl76957710_)))
                      (_g76907700_ _g76917703_)))))
          (_g76897781_ _stx7686_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx7502_)
      (letrec ((_add-lift!7504_
                (lambda (_expr7684_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr7684_ (unbox (gxc#current-compile-lift))))))
               (_generate-syntax-quote7505_
                (lambda (_id7681_ _marks7682_)
                  (cons '##structure
                        (cons 'gx#syntax-quote::t
                              (cons (cons 'quote (cons _id7681_ '()))
                                    (cons '#f
                                          (cons '(gx#current-expander-context)
                                                (cons _marks7682_ '()))))))))
               (_generate-simple7506_
                (lambda (_stxq7676_)
                  (let ((_gid7678_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid7679_
                         (gxc#generate-runtime-identifier _stxq7676_)))
                    (_add-lift!7504_
                     (cons 'define
                           (cons _gid7678_
                                 (cons (_generate-syntax-quote7505_
                                        _qid7679_
                                        ''())
                                       '()))))
                    (table-set!
                     (gxc#current-compile-identifiers)
                     _stxq7676_
                     _gid7678_)
                    _gid7678_)))
               (_generate-serialized7507_
                (lambda (_stxq7666_ _marks7667_)
                  (let* ((_mark-refs7669_
                          (map _generate-mark7508_ _marks7667_))
                         (_gid7671_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid7673_
                          (gxc#generate-runtime-identifier _stxq7666_)))
                    (_add-lift!7504_
                     (cons 'define
                           (cons _gid7671_
                                 (cons (_generate-syntax-quote7505_
                                        _qid7673_
                                        (cons 'list _mark-refs7669_))
                                       '()))))
                    (table-set!
                     (gxc#current-compile-identifiers)
                     _stxq7666_
                     _gid7671_)
                    _gid7671_)))
               (_generate-mark7508_
                (lambda (_mark7652_)
                  (let ((_$e7654_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark7652_
                          '#f)))
                    (if _$e7654_
                        (values _$e7654_)
                        (let* ((_gid7657_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr7659_ (_serialize-mark7509_ _mark7652_))
                               (_ctx7661_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark7652_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref7663_
                                (if (eq? _ctx7661_
                                         (gx#current-expander-context))
                                    '(gx#current-expander-context)
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref7510_
                                                             _ctx7661_)
                                                            '()))
                                                '())))))
                          (table-set!
                           (gxc#current-compile-marks)
                           _mark7652_
                           _gid7657_)
                          (_add-lift!7504_
                           (cons 'define
                                 (cons _gid7657_
                                       (cons (cons 'gx#core-deserialize-mark
                                                   (cons (cons 'quote
                                                               (cons _repr7659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _ctx-ref7663_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                          _gid7657_)))))
               (_serialize-mark7509_
                (lambda (_mark7599_)
                  (letrec ((_quote-e7601_
                            (lambda (_sym7650_)
                              (if (interned-symbol? _sym7650_)
                                  _sym7650_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym7650_)))))
                    (let* ((_mark76027611_ _mark7599_)
                           (_E76047615_
                            (lambda ()
                              (error '"No clause matching" _mark76027611_)))
                           (_K76057627_
                            (lambda (_trace7618_
                                     _phi7619_
                                     _ctx7620_
                                     _subst7621_)
                              (let ((_subs7623_
                                     (if _subst7621_
                                         (table->list _subst7621_)
                                         '())))
                                (cons _phi7619_
                                      (map (lambda (_pair7625_)
                                             (cons (_quote-e7601_
                                                    (car _pair7625_))
                                                   (_quote-e7601_
                                                    (cdr _pair7625_))))
                                           _subs7623_))))))
                      (if (##structure-instance-of?
                           _mark76027611_
                           'gx#expander-mark::t)
                          (let* ((_e76067630_ (##vector-ref _mark76027611_ '1))
                                 (_subst7633_ _e76067630_)
                                 (_e76077635_ (##vector-ref _mark76027611_ '2))
                                 (_ctx7638_ _e76077635_)
                                 (_e76087640_ (##vector-ref _mark76027611_ '3))
                                 (_phi7643_ _e76087640_)
                                 (_e76097645_ (##vector-ref _mark76027611_ '4))
                                 (_trace7648_ _e76097645_))
                            (_K76057627_
                             _trace7648_
                             _phi7643_
                             _ctx7638_
                             _subst7633_))
                          (_E76047615_))))))
               (_context-ref7510_
                (lambda (_ctx7586_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx7586_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref7588_
                             (_context-ref-nested7512_ _ctx7586_))
                            (_ctx-origin7589_
                             (_context-ref-origin7511_ _ctx7586_))
                            (_origin7590_
                             (_context-ref-origin7511_
                              (gx#current-expander-context))))
                        (if (eq? _origin7590_ _ctx-origin7589_)
                            (let ((_ref7592_
                                   (_context-ref-nested7512_
                                    (gx#current-expander-context))))
                              (let _lp7594_ ((_ref7596_ (cdr _ref7592_))
                                             (_ctx-ref7597_
                                              (cdr _ctx-ref7588_)))
                                (if (and (pair? _ref7596_)
                                         (eq? (car _ref7596_)
                                              (car _ctx-ref7597_)))
                                    (_lp7594_
                                     (cdr _ref7596_)
                                     (cdr _ctx-ref7597_))
                                    (cons '#f _ctx-ref7597_))))
                            _ctx-ref7588_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx7586_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin7511_
                (lambda (_ctx7578_)
                  (let _lp7580_ ((_ctx7582_ _ctx7578_))
                    (let ((_super7584_
                           (##structure-ref
                            _ctx7582_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super7584_
                           'gx#module-context::t)
                          (_lp7580_ _super7584_)
                          _ctx7582_)))))
               (_context-ref-nested7512_
                (lambda (_ctx7569_)
                  (let _lp7571_ ((_ctx7573_ _ctx7569_) (_r7574_ '()))
                    (let ((_super7576_
                           (##structure-ref
                            _ctx7573_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super7576_
                           'gx#module-context::t)
                          (_lp7571_
                           _super7576_
                           (cons (car (##structure-ref
                                       _ctx7573_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r7574_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx7573_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r7574_)))))))
        (let* ((_g75147527_
                (lambda (_g75157524_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75157524_)))
               (_g75137566_
                (lambda (_g75157530_)
                  (if (gx#stx-pair? _g75157530_)
                      (let ((_e75177532_ (gx#stx-e _g75157530_)))
                        (let ((_hd75187535_ (##car _e75177532_))
                              (_tl75197537_ (##cdr _e75177532_)))
                          (if (gx#stx-pair? _tl75197537_)
                              (let ((_e75207540_ (gx#stx-e _tl75197537_)))
                                (let ((_hd75217543_ (##car _e75207540_))
                                      (_tl75227545_ (##cdr _e75207540_)))
                                  (if (gx#stx-null? _tl75227545_)
                                      ((lambda (_L7548_)
                                         (if (gx#identifier? _L7548_)
                                             (let ((_$e7561_
                                                    (table-ref
                                                     (gxc#current-compile-identifiers)
                                                     _L7548_
                                                     '#f)))
                                               (if _$e7561_
                                                   (values _$e7561_)
                                                   (let ((_marks7564_
                                                          (##direct-structure-ref
                                                           _L7548_
                                                           '4
                                                           gx#syntax-quote::t
                                                           '#f)))
                                                     (if (null? _marks7564_)
                                                         (_generate-simple7506_
                                                          _L7548_)
                                                         (_generate-serialized7507_
                                                          _L7548_
                                                          _marks7564_)))))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L7548_)))
                                       _hd75217543_)
                                      (_g75147527_ _g75157530_))))
                              (_g75147527_ _g75157530_))))
                      (_g75147527_ _g75157530_)))))
          (_g75137566_ _stx7502_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx7435_)
      (let* ((_g74377454_
              (lambda (_g74387451_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g74387451_)))
             (_g74367499_
              (lambda (_g74387457_)
                (if (gx#stx-pair? _g74387457_)
                    (let ((_e74417459_ (gx#stx-e _g74387457_)))
                      (let ((_hd74427462_ (##car _e74417459_))
                            (_tl74437464_ (##cdr _e74417459_)))
                        (if (gx#stx-pair? _tl74437464_)
                            (let ((_e74447467_ (gx#stx-e _tl74437464_)))
                              (let ((_hd74457470_ (##car _e74447467_))
                                    (_tl74467472_ (##cdr _e74447467_)))
                                (if (gx#stx-pair? _tl74467472_)
                                    (let ((_e74477475_
                                           (gx#stx-e _tl74467472_)))
                                      (let ((_hd74487478_ (##car _e74477475_))
                                            (_tl74497480_ (##cdr _e74477475_)))
                                        (if (gx#stx-null? _tl74497480_)
                                            ((lambda (_L7483_ _L7484_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L7484_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7483_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd74487478_
                                             _hd74457470_)
                                            (_g74377454_ _g74387457_))))
                                    (_g74377454_ _g74387457_))))
                            (_g74377454_ _g74387457_))))
                    (_g74377454_ _g74387457_)))))
        (_g74367499_ _stx7435_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx7384_ _state7385_)
      (let* ((_g73877397_
              (lambda (_g73887394_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g73887394_)))
             (_g73867432_
              (lambda (_g73887400_)
                (if (gx#stx-pair? _g73887400_)
                    (let ((_e73907402_ (gx#stx-e _g73887400_)))
                      (let ((_hd73917405_ (##car _e73907402_))
                            (_tl73927407_ (##cdr _e73907402_)))
                        ((lambda (_L7410_)
                           (let* ((_c-body7424_
                                   (map (lambda (_g74197421_)
                                          (gxc#compile-e
                                           _g74197421_
                                           _state7385_))
                                        _L7410_))
                                  (_c-body7429_
                                   (filter (lambda (_$obj7426_)
                                             (not (eq? _$obj7426_ '#!void)))
                                           _c-body7424_)))
                             (cons '%#begin _c-body7429_)))
                         _tl73927407_)))
                    (_g73877397_ _g73887400_)))))
        (_g73867432_ _stx7384_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx7292_ _state7293_)
      (let* ((_g72957305_
              (lambda (_g72967302_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72967302_)))
             (_g72947381_
              (lambda (_g72967308_)
                (if (gx#stx-pair? _g72967308_)
                    (let ((_e72987310_ (gx#stx-e _g72967308_)))
                      (let ((_hd72997313_ (##car _e72987310_))
                            (_tl73007315_ (##cdr _e72987310_)))
                        ((lambda (_L7318_)
                           (let* ((_phi7328_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block7330_
                                   (gxc#meta-state-begin-phi!
                                    _state7293_
                                    _phi7328_))
                                  (_compiled7333_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L7318_)
                                       _state7293_))
                                    gx#current-expander-phi
                                    _phi7328_)))
                             (let* ((_g73367346_
                                     (lambda (_g73377343_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g73377343_)))
                                    (_g73357378_
                                     (lambda (_g73377349_)
                                       (if (gx#stx-pair? _g73377349_)
                                           (let ((_e73397351_
                                                  (gx#stx-e _g73377349_)))
                                             (let ((_hd73407354_
                                                    (##car _e73397351_))
                                                   (_tl73417356_
                                                    (##cdr _e73397351_)))
                                               (if (gx#identifier?
                                                    _hd73407354_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd73407354_)
                                                       ((lambda (_L7359_)
                                                          (let ((_c-body7376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj7373_)
                                   (not (eq? _$obj7373_ '#!void)))
                                 _L7359_)))
                    (if _block7330_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block7330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body7376_))
                        (if (null? _c-body7376_)
                            '#!void
                            (cons '%#begin-syntax _c-body7376_)))))
                _tl73417356_)
               (_g73367346_ _g73377349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73367346_ _g73377349_))))
                                           (_g73367346_ _g73377349_)))))
                               (_g73357378_ _compiled7333_))))
                         _tl73007315_)))
                    (_g72957305_ _g72967308_)))))
        (_g72947381_ _stx7292_))))
  (define gxc#generate-meta-module%
    (lambda (_stx7223_ _state7224_)
      (gxc#meta-state-end-phi! _state7224_)
      (let* ((_g72267240_
              (lambda (_g72277237_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72277237_)))
             (_g72257289_
              (lambda (_g72277243_)
                (if (gx#stx-pair? _g72277243_)
                    (let ((_e72307245_ (gx#stx-e _g72277243_)))
                      (let ((_hd72317248_ (##car _e72307245_))
                            (_tl72327250_ (##cdr _e72307245_)))
                        (if (gx#stx-pair? _tl72327250_)
                            (let ((_e72337253_ (gx#stx-e _tl72327250_)))
                              (let ((_hd72347256_ (##car _e72337253_))
                                    (_tl72357258_ (##cdr _e72337253_)))
                                ((lambda (_L7261_ _L7262_)
                                   (let ((_key7275_
                                          (gx#core-identifier-key _L7262_)))
                                     (if (interned-symbol? _key7275_)
                                         '#!void
                                         (gxc#raise-compile-error
                                          '"Cannot compile module with uninterned id"
                                          _stx7223_
                                          _L7262_
                                          _key7275_))
                                     (let* ((_ctx7277_
                                             (gx#syntax-local-e__0 _L7262_))
                                            (_code7280_
                                             (call-with-parameters
                                              (lambda ()
                                                (gxc#compile-e
                                                 (##structure-ref
                                                  _ctx7277_
                                                  '11
                                                  gx#module-context::t
                                                  '#f)
                                                 _state7224_))
                                              gx#current-expander-context
                                              _ctx7277_))
                                            (_rt7282_
                                             (table-ref
                                              (gxc#current-compile-runtime-sections)
                                              _ctx7277_
                                              '#f))
                                            (_loader7284_
                                             (if _rt7282_
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons '_gx#load-module '()))
                           (cons (cons '%#quote (cons _rt7282_ '())) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                            (_modid7286_ (gx#stx-e _L7262_)))
                                       (gxc#meta-state-end-phi! _state7224_)
                                       (cons '%#module
                                             (cons _modid7286_
                                                   (cons _code7280_
                                                         _loader7284_))))))
                                 _tl72357258_
                                 _hd72347256_)))
                            (_g72267240_ _g72277243_))))
                    (_g72267240_ _g72277243_)))))
        (_g72257289_ _stx7223_))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx7213_ _context-chain7214_)
      (let _lp7216_ ((_ctx7218_ _ctx7213_) (_path7219_ '()))
        (let ((_super7221_
               (##structure-ref _ctx7218_ '3 gx#phi-context::t '#f)))
          (if (memq _super7221_ _context-chain7214_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx7218_
                                '7
                                gx#module-context::t
                                '#f))
                          _path7219_))
              (if (##structure-instance-of? _super7221_ 'gx#module-context::t)
                  (_lp7216_
                   _super7221_
                   (cons (car (##structure-ref
                               _ctx7218_
                               '7
                               gx#module-context::t
                               '#f))
                         _path7219_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx7218_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path7219_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp7208_ ((_ctx7210_ (gx#current-expander-context)) (_r7211_ '()))
        (if (##structure-instance-of? _ctx7210_ 'gx#module-context::t)
            (_lp7208_
             (##structure-ref _ctx7210_ '3 gx#phi-context::t '#f)
             (cons _ctx7210_ _r7211_))
            _r7211_))))
  (define gxc#generate-meta-import%
    (lambda (_stx6977_ _state6978_)
      (letrec* ((_context-chain6980_ (gxc#current-context-chain))
                (_make-import-spec6981_
                 (lambda (_in7144_)
                   (let* ((_in71457157_ _in7144_)
                          (_E71477161_
                           (lambda ()
                             (error '"No clause matching" _in71457157_)))
                          (_K71487171_
                           (lambda (_phi7164_
                                    _name7165_
                                    _src-name7166_
                                    _src-phi7167_
                                    _src-key7168_
                                    _src-ctx7169_)
                             (cons _phi7164_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name7165_)
                                         (cons _src-phi7167_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name7166_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in71457157_
                          'gx#module-import::t)
                         (let ((_e71497174_ (##vector-ref _in71457157_ '1)))
                           (if (##structure-direct-instance-of?
                                _e71497174_
                                'gx#module-export::t)
                               (let* ((_e71527177_
                                       (##vector-ref _e71497174_ '1))
                                      (_src-ctx7180_ _e71527177_)
                                      (_e71537182_
                                       (##vector-ref _e71497174_ '2))
                                      (_src-key7185_ _e71537182_)
                                      (_e71547187_
                                       (##vector-ref _e71497174_ '3))
                                      (_src-phi7190_ _e71547187_)
                                      (_e71557192_
                                       (##vector-ref _e71497174_ '4))
                                      (_src-name7195_ _e71557192_)
                                      (_e71507197_
                                       (##vector-ref _in71457157_ '2))
                                      (_name7200_ _e71507197_)
                                      (_e71517202_
                                       (##vector-ref _in71457157_ '3))
                                      (_phi7205_ _e71517202_))
                                 (_K71487171_
                                  _phi7205_
                                  _name7200_
                                  _src-name7195_
                                  _src-phi7190_
                                  _src-key7185_
                                  _src-ctx7180_))
                               (_E71477161_)))
                         (_E71477161_)))))
                (_make-import-path6982_
                 (lambda (_ctx7142_)
                   (gxc#generate-meta-import-path
                    _ctx7142_
                    _context-chain6980_)))
                (_make-import-spec-in6983_
                 (lambda (_ctx7139_ _in7140_)
                   (cons 'spec:
                         (cons (_make-import-path6982_ _ctx7139_)
                               (reverse _in7140_))))))
        (gxc#meta-state-end-phi! _state6978_)
        (let* ((_g69856995_
                (lambda (_g69866992_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g69866992_)))
               (_g69847136_
                (lambda (_g69866998_)
                  (if (gx#stx-pair? _g69866998_)
                      (let ((_e69887000_ (gx#stx-e _g69866998_)))
                        (let ((_hd69897003_ (##car _e69887000_))
                              (_tl69907005_ (##cdr _e69887000_)))
                          ((lambda (_L7008_)
                             (let _lp7019_ ((_rest7021_ _L7008_)
                                            (_current-src7022_ '#f)
                                            (_current-in7023_ '())
                                            (_r7024_ '()))
                               (let* ((_rest70257033_ _rest7021_)
                                      (_else70277043_
                                       (lambda ()
                                         (let ((_r7041_ (if _current-src7022_
                                                            (cons (_make-import-spec-in6983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _current-src7022_
                           _current-in7023_)
                          _r7024_)
                    _r7024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons '%#import
                                                 (reverse _r7041_)))))
                                      (_K70297124_
                                       (lambda (_rest7046_ _in7047_)
                                         (if (##structure-direct-instance-of?
                                              _in7047_
                                              'gx#module-import::t)
                                             (let* ((_in70487055_ _in7047_)
                                                    (_E70507059_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _in70487055_)))
                                                    (_K70517064_
                                                     (lambda (_src-ctx7062_)
                                                       (if (eq? _current-src7022_
                                                                _src-ctx7062_)
                                                           (_lp7019_
                                                            _rest7046_
                                                            _current-src7022_
                                                            (cons (_make-import-spec6981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in7047_)
                          _current-in7023_)
                    _r7024_)
                   (if _current-src7022_
                       (_lp7019_
                        _rest7046_
                        _src-ctx7062_
                        (cons (_make-import-spec6981_ _in7047_) '())
                        (cons (_make-import-spec-in6983_
                               _current-src7022_
                               _current-in7023_)
                              _r7024_))
                       (_lp7019_
                        _rest7046_
                        _src-ctx7062_
                        (cons (_make-import-spec6981_ _in7047_) '())
                        _r7024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _in70487055_
                                                    'gx#module-import::t)
                                                   (let ((_e70527067_
                                                          (##vector-ref
                                                           _in70487055_
                                                           '1)))
                                                     (if (##structure-direct-instance-of?
                                                          _e70527067_
                                                          'gx#module-export::t)
                                                         (let* ((_e70537070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _e70527067_ '1))
                        (_src-ctx7073_ _e70537070_))
                   (_K70517064_ _src-ctx7073_))
                 (_E70507059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E70507059_)))
                                             (if (##structure-direct-instance-of?
                                                  _in7047_
                                                  'gx#import-set::t)
                                                 (let* ((_phi7075_
                                                         (##direct-structure-ref
                                                          _in7047_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))
                                                        (_src7077_
                                                         (##direct-structure-ref
                                                          _in7047_
                                                          '1
                                                          gx#import-set::t
                                                          '#f))
                                                        (_src-in7117_
                                                         (let* ((_g70787087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_make-import-path6982_ _src7077_))
                        (_E70817091_
                         (lambda ()
                           (error '"No clause matching" _g70787087_))))
                   (let ((_K70837107_ (lambda (_path7105_) _path7105_))
                         (_K70827097_
                          (lambda (_path7095_) (cons 'in: _path7095_))))
                     (if (##pair? _g70787087_)
                         (let ((_tl70857112_ (##cdr _g70787087_))
                               (_hd70847110_ (##car _g70787087_)))
                           (if (##null? _tl70857112_)
                               (let ((_path7115_ _hd70847110_))
                                 (_K70837107_ _path7115_))
                               (let ((_path7100_ _g70787087_))
                                 (_K70827097_ _path7100_))))
                         (let ((_path7100_ _g70787087_))
                           (_K70827097_ _path7100_))))))
                (_r7119_ (if _current-src7022_
                             (cons (_make-import-spec-in6983_
                                    _current-src7022_
                                    _current-in7023_)
                                   _r7024_)
                             _r7024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lp7019_
                                                    _rest7046_
                                                    '#f
                                                    '()
                                                    (cons (if (fxzero? _phi7075_)
                                                              _src-in7117_
                                                              (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _phi7075_ (cons _src-in7117_ '()))))
                  _r7119_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-instance-of?
                                                      _in7047_
                                                      'gx#module-context::t)
                                                     (let ((_r7122_ (if _current-src7022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (_make-import-spec-in6983_
                                       _current-src7022_
                                       _current-in7023_)
                                      _r7024_)
                                _r7024_)))
               (_lp7019_
                _rest7046_
                '#f
                '()
                (cons (cons 'runtime: (_make-import-path6982_ _in7047_))
                      _r7122_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void))))))
                                 (if (##pair? _rest70257033_)
                                     (let ((_hd70307127_
                                            (##car _rest70257033_))
                                           (_tl70317129_
                                            (##cdr _rest70257033_)))
                                       (let* ((_in7132_ _hd70307127_)
                                              (_rest7134_ _tl70317129_))
                                         (_K70297124_ _rest7134_ _in7132_)))
                                     (_else70277043_)))))
                           _tl69907005_)))
                      (_g69856995_ _g69866998_)))))
          (_g69847136_ _stx6977_)))))
  (define gxc#generate-meta-export%
    (lambda (_stx6787_ _state6788_)
      (letrec* ((_context-chain6790_ (gxc#current-context-chain))
                (_make-import-path6791_
                 (lambda (_ctx6975_)
                   (gxc#generate-meta-import-path
                    _ctx6975_
                    _context-chain6790_))))
        (let* ((_g67936803_
                (lambda (_g67946800_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g67946800_)))
               (_g67926972_
                (lambda (_g67946806_)
                  (if (gx#stx-pair? _g67946806_)
                      (let ((_e67966808_ (gx#stx-e _g67946806_)))
                        (let ((_hd67976811_ (##car _e67966808_))
                              (_tl67986813_ (##cdr _e67966808_)))
                          ((lambda (_L6816_)
                             (let _lp6827_ ((_rest6829_ _L6816_) (_r6830_ '()))
                               (let* ((_rest68316839_ _rest6829_)
                                      (_else68336847_
                                       (lambda ()
                                         (cons '%#export (reverse _r6830_))))
                                      (_K68356960_
                                       (lambda (_rest6850_ _out6851_)
                                         (let* ((_out68526865_ _out6851_)
                                                (_E68556869_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out68526865_))))
                                           (let ((_K68596939_
                                                  (lambda (_name6935_
                                                           _phi6936_
                                                           _key6937_)
                                                    (_lp6827_
                                                     _rest6850_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi6936_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key6937_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name6935_)
                                           '()))))
                   _r6830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K68566919_
                                                  (lambda (_phi6873_ _src6874_)
                                                    (let* ((_out6914_
                                                            (if _src6874_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g68756884_
                                            (_make-import-path6791_ _src6874_))
                                           (_E68786888_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g68756884_))))
                                      (let ((_K68806904_
                                             (lambda (_path6902_) _path6902_))
                                            (_K68796894_
                                             (lambda (_path6892_)
                                               (cons 'in: _path6892_))))
                                        (if (##pair? _g68756884_)
                                            (let ((_tl68826909_
                                                   (##cdr _g68756884_))
                                                  (_hd68816907_
                                                   (##car _g68756884_)))
                                              (if (##null? _tl68826909_)
                                                  (let ((_path6912_
                                                         _hd68816907_))
                                                    (_K68806904_ _path6912_))
                                                  (let ((_path6897_
                                                         _g68756884_))
                                                    (_K68796894_ _path6897_))))
                                            (let ((_path6897_ _g68756884_))
                                              (_K68796894_ _path6897_)))))
                                    '()))
                        '#t))
                   (_out6916_
                    (if (fxzero? _phi6873_)
                        _out6914_
                        (cons 'phi: (cons _phi6873_ (cons _out6914_ '()))))))
              (_lp6827_ _rest6850_ (cons _out6916_ _r6830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match68546932_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out68526865_
                                                           'gx#export-set::t)
                                                          (let* ((_e68576922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out68526865_ '1))
                         (_e68586927_ (##vector-ref _out68526865_ '2)))
                    (let ((_src6925_ _e68576922_) (_phi6930_ _e68586927_))
                      (_K68566919_ _phi6930_ _src6925_)))
                  (_E68556869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out68526865_
                                                    'gx#module-export::t)
                                                   (let* ((_e68606942_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '1))
                                                          (_e68616945_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '2))
                                                          (_e68626950_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '3))
                                                          (_e68636955_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '4)))
                                                     (let ((_key6948_
                                                            _e68616945_)
                                                           (_phi6953_
                                                            _e68626950_)
                                                           (_name6958_
                                                            _e68636955_))
                                                       (_K68596939_
                                                        _name6958_
                                                        _phi6953_
                                                        _key6948_)))
                                                   (_try-match68546932_))))))))
                                 (if (##pair? _rest68316839_)
                                     (let ((_hd68366963_
                                            (##car _rest68316839_))
                                           (_tl68376965_
                                            (##cdr _rest68316839_)))
                                       (let* ((_out6968_ _hd68366963_)
                                              (_rest6970_ _tl68376965_))
                                         (_K68356960_ _rest6970_ _out6968_)))
                                     (_else68336847_)))))
                           _tl67986813_)))
                      (_g67936803_ _g67946806_)))))
          (_g67926972_ _stx6787_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx6748_ _state6749_)
      (gxc#meta-state-end-phi! _state6749_)
      (let* ((_g67516761_
              (lambda (_g67526758_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67526758_)))
             (_g67506784_
              (lambda (_g67526764_)
                (if (gx#stx-pair? _g67526764_)
                    (let ((_e67546766_ (gx#stx-e _g67526764_)))
                      (let ((_hd67556769_ (##car _e67546766_))
                            (_tl67566771_ (##cdr _e67546766_)))
                        ((lambda (_L6774_)
                           (cons '%#provide
                                 (map gxc#generate-runtime-identifier
                                      _L6774_)))
                         _tl67566771_)))
                    (_g67516761_ _g67526764_)))))
        (_g67506784_ _stx6748_))))
  (define gxc#generate-meta-extern%
    (lambda (_stx6619_ _state6620_)
      (letrec ((_generate16622_
                (lambda (_id6743_ _eid6744_)
                  (let ((_eid6746_ (gx#stx-e _eid6744_)))
                    (if (interned-symbol? _eid6746_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Cannot compile extern reference"
                         _stx6619_
                         _eid6746_))
                    (cons (gxc#generate-runtime-identifier _id6743_)
                          (cons _eid6746_ '()))))))
        (let* ((_g66246652_
                (lambda (_g66256649_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g66256649_)))
               (_g66236740_
                (lambda (_g66256655_)
                  (if (gx#stx-pair? _g66256655_)
                      (let ((_e66286657_ (gx#stx-e _g66256655_)))
                        (let ((_hd66296660_ (##car _e66286657_))
                              (_tl66306662_ (##cdr _e66286657_)))
                          (if (gx#stx-pair/null? _tl66306662_)
                              (let ((_g16387_
                                     (gx#syntax-split-splice _tl66306662_ '0)))
                                (begin
                                  (let ((_g16388_
                                         (if (##values? _g16387_)
                                             (##vector-length _g16387_)
                                             1)))
                                    (if (not (##fx= _g16388_ 2))
                                        (error "Context expects 2 values"
                                               _g16388_)))
                                  (let ((_target66316665_
                                         (##vector-ref _g16387_ 0))
                                        (_tl66336667_
                                         (##vector-ref _g16387_ 1)))
                                    (if (gx#stx-null? _tl66336667_)
                                        (letrec ((_loop66346670_
                                                  (lambda (_hd66326673_
                                                           _eid66386675_
                                                           _id66396677_)
                                                    (if (gx#stx-pair?
                                                         _hd66326673_)
                                                        (let ((_e66356680_
                                                               (gx#stx-e
                                                                _hd66326673_)))
                                                          (let ((_lp-hd66366683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e66356680_))
                        (_lp-tl66376685_ (##cdr _e66356680_)))
                    (if (gx#stx-pair? _lp-hd66366683_)
                        (let ((_e66426688_ (gx#stx-e _lp-hd66366683_)))
                          (let ((_hd66436691_ (##car _e66426688_))
                                (_tl66446693_ (##cdr _e66426688_)))
                            (if (gx#stx-pair? _tl66446693_)
                                (let ((_e66456696_ (gx#stx-e _tl66446693_)))
                                  (let ((_hd66466699_ (##car _e66456696_))
                                        (_tl66476701_ (##cdr _e66456696_)))
                                    (if (gx#stx-null? _tl66476701_)
                                        (_loop66346670_
                                         _lp-tl66376685_
                                         (cons _hd66466699_ _eid66386675_)
                                         (cons _hd66436691_ _id66396677_))
                                        (_g66246652_ _g66256655_))))
                                (_g66246652_ _g66256655_))))
                        (_g66246652_ _g66256655_))))
                (let ((_eid66406704_ (reverse _eid66386675_))
                      (_id66416706_ (reverse _id66396677_)))
                  ((lambda (_L6709_ _L6710_)
                     (cons '%#extern
                           (map _generate16622_
                                (foldr1 (lambda (_g67256728_ _g67266730_)
                                          (cons _g67256728_ _g67266730_))
                                        '()
                                        _L6710_)
                                (foldr1 (lambda (_g67326735_ _g67336737_)
                                          (cons _g67326735_ _g67336737_))
                                        '()
                                        _L6709_))))
                   _eid66406704_
                   _id66416706_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop66346670_
                                           _target66316665_
                                           '()
                                           '()))
                                        (_g66246652_ _g66256655_)))))
                              (_g66246652_ _g66256655_))))
                      (_g66246652_ _g66256655_)))))
          (_g66236740_ _stx6619_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx6409_ _state6410_)
      (letrec ((_generate16412_
                (lambda (_id6614_)
                  (let ((_eid6616_ (gxc#generate-runtime-binding-id _id6614_))
                        (_ident6617_
                         (gxc#generate-runtime-identifier _id6614_)))
                    (cons '%#define-runtime
                          (cons _ident6617_ (cons _eid6616_ '()))))))
               (_generate*6413_
                (lambda (_all6582_)
                  (let* ((_all65836591_ _all6582_)
                         (_else65856599_ (lambda () (cons '%#begin _all6582_)))
                         (_K65876604_ (lambda (_one6602_) _one6602_)))
                    (if (##pair? _all65836591_)
                        (let ((_hd65886607_ (##car _all65836591_))
                              (_tl65896609_ (##cdr _all65836591_)))
                          (let ((_one6612_ _hd65886607_))
                            (if (##null? _tl65896609_)
                                (_K65876604_ _one6612_)
                                (_else65856599_))))
                        (_else65856599_))))))
        (let* ((_g64156432_
                (lambda (_g64166429_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64166429_)))
               (_g64146579_
                (lambda (_g64166435_)
                  (if (gx#stx-pair? _g64166435_)
                      (let ((_e64196437_ (gx#stx-e _g64166435_)))
                        (let ((_hd64206440_ (##car _e64196437_))
                              (_tl64216442_ (##cdr _e64196437_)))
                          (if (gx#stx-pair? _tl64216442_)
                              (let ((_e64226445_ (gx#stx-e _tl64216442_)))
                                (let ((_hd64236448_ (##car _e64226445_))
                                      (_tl64246450_ (##cdr _e64226445_)))
                                  (if (gx#stx-pair? _tl64246450_)
                                      (let ((_e64256453_
                                             (gx#stx-e _tl64246450_)))
                                        (let ((_hd64266456_
                                               (##car _e64256453_))
                                              (_tl64276458_
                                               (##cdr _e64256453_)))
                                          (if (gx#stx-null? _tl64276458_)
                                              ((lambda (_L6461_ _L6462_)
                                                 (let _lp6478_ ((_rest6480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6462_)
                        (_r6481_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((___stx1629416295_
                                                           _rest6480_)
                                                          (_g64866503_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1629416295_))))
                                                     (let ((___kont1629616297_
                                                            (lambda (_L6566_)
                                                              (_lp6478_
                                                               _L6566_
                                                               _r6481_)))
                                                           (___kont1629816299_
                                                            (lambda (_L6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6540_)
                      (_lp6478_
                       _L6539_
                       (cons (_generate16412_ _L6540_) _r6481_))))
                   (___kont1630016301_
                    (lambda (_L6515_)
                      (_generate*6413_
                       (foldl1 cons
                               (cons (_generate16412_ _L6515_) '())
                               _r6481_))))
                   (___kont1630216303_
                    (lambda () (_generate*6413_ (reverse _r6481_)))))
               (let ((_g64846526_
                      (lambda ()
                        (let ((_L6515_ ___stx1629416295_))
                          (if (gx#identifier? _L6515_)
                              (___kont1630016301_ _L6515_)
                              (___kont1630216303_))))))
                 (if (gx#stx-pair? ___stx1629416295_)
                     (let ((_e64896555_ (gx#stx-e ___stx1629416295_)))
                       (let ((_tl64916560_ (##cdr _e64896555_))
                             (_hd64906558_ (##car _e64896555_)))
                         (if (gx#stx-datum? _hd64906558_)
                             (let ((_e64926563_ (gx#stx-e _hd64906558_)))
                               (if (equal? _e64926563_ '#f)
                                   (___kont1629616297_ _tl64916560_)
                                   (___kont1629816299_
                                    _tl64916560_
                                    _hd64906558_)))
                             (___kont1629816299_ _tl64916560_ _hd64906558_))))
                     (_g64846526_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd64266456_
                                               _hd64236448_)
                                              (_g64156432_ _g64166435_))))
                                      (_g64156432_ _g64166435_))))
                              (_g64156432_ _g64166435_))))
                      (_g64156432_ _g64166435_)))))
          (_g64146579_ _stx6409_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx6306_ _state6307_)
      (let* ((_g63096326_
              (lambda (_g63106323_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63106323_)))
             (_g63086406_
              (lambda (_g63106329_)
                (if (gx#stx-pair? _g63106329_)
                    (let ((_e63136331_ (gx#stx-e _g63106329_)))
                      (let ((_hd63146334_ (##car _e63136331_))
                            (_tl63156336_ (##cdr _e63136331_)))
                        (if (gx#stx-pair? _tl63156336_)
                            (let ((_e63166339_ (gx#stx-e _tl63156336_)))
                              (let ((_hd63176342_ (##car _e63166339_))
                                    (_tl63186344_ (##cdr _e63166339_)))
                                (if (gx#stx-pair? _tl63186344_)
                                    (let ((_e63196347_
                                           (gx#stx-e _tl63186344_)))
                                      (let ((_hd63206350_ (##car _e63196347_))
                                            (_tl63216352_ (##cdr _e63196347_)))
                                        (if (gx#stx-null? _tl63216352_)
                                            ((lambda (_L6355_ _L6356_)
                                               (let* ((_eid6371_
                                                       (gxc#generate-runtime-binding-id
                                                        _L6356_))
                                                      (_phi6373_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block6375_
                                                       (gxc#meta-state-begin-phi!
                                                        _state6307_
                                                        _phi6373_)))
                                                 (let* ((_g63786385_
                                                         (lambda (_g63796382_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g63796382_)))
                                                        (_g63776403_
                                                         (lambda (_g63796388_)
                                                           ((lambda (_L6390_)
                                                              (let ()
                                                                (gxc#meta-state-add-phi!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _state6307_
                         _phi6373_
                         (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                               (cons _L6390_ (cons _L6355_ '()))))))
                    _g63796388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63776403_ _eid6371_))
                                                 (if _block6375_
                                                     (cons '%#begin
                                                           (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons '_gx#load-module
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons _block6375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))
                         (cons (cons '%#define-syntax
                                     (cons (gxc#generate-runtime-identifier
                                            _L6356_)
                                           (cons _eid6371_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '%#define-syntax
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6356_)
                         (cons _eid6371_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63206350_
                                             _hd63176342_)
                                            (_g63096326_ _g63106329_))))
                                    (_g63096326_ _g63106329_))))
                            (_g63096326_ _g63106329_))))
                    (_g63096326_ _g63106329_)))))
        (_g63086406_ _stx6306_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx6238_ _state6239_)
      (let* ((_g62416258_
              (lambda (_g62426255_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62426255_)))
             (_g62406303_
              (lambda (_g62426261_)
                (if (gx#stx-pair? _g62426261_)
                    (let ((_e62456263_ (gx#stx-e _g62426261_)))
                      (let ((_hd62466266_ (##car _e62456263_))
                            (_tl62476268_ (##cdr _e62456263_)))
                        (if (gx#stx-pair? _tl62476268_)
                            (let ((_e62486271_ (gx#stx-e _tl62476268_)))
                              (let ((_hd62496274_ (##car _e62486271_))
                                    (_tl62506276_ (##cdr _e62486271_)))
                                (if (gx#stx-pair? _tl62506276_)
                                    (let ((_e62516279_
                                           (gx#stx-e _tl62506276_)))
                                      (let ((_hd62526282_ (##car _e62516279_))
                                            (_tl62536284_ (##cdr _e62516279_)))
                                        (if (gx#stx-null? _tl62536284_)
                                            ((lambda (_L6287_ _L6288_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L6288_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6287_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62526282_
                                             _hd62496274_)
                                            (_g62416258_ _g62426261_))))
                                    (_g62416258_ _g62426261_))))
                            (_g62416258_ _g62426261_))))
                    (_g62416258_ _g62426261_)))))
        (_g62406303_ _stx6238_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx6235_ _state6236_)
      (gxc#meta-state-add-phi! _state6236_ (gx#current-expander-phi) _stx6235_)
      (gxc#generate-meta-define-values% _stx6235_ _state6236_)))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx6232_ _state6233_)
      (gxc#meta-state-add-phi! _state6233_ (gx#current-expander-phi) _stx6232_)
      '#!void))
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
    (lambda _$args6229_
      (apply make-struct-instance gxc#meta-state::t _$args6229_)))
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
    (lambda (_self6226_ _ctx6227_)
      (struct-instance-init!
       _self6226_
       (gxc#module-id->path-string
        (##structure-ref _ctx6227_ '1 gx#expander-context::t '#f))
       '1
       (make-table 'test: eq?)
       '())))
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
    (lambda _$args6101_
      (apply make-struct-instance gxc#meta-state-block::t _$args6101_)))
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
    (lambda (_state6060_ _phi6061_)
      (let* ((_state60626070_ _state6060_)
             (_E60646074_
              (lambda () (error '"No clause matching" _state60626070_)))
             (_K60656083_
              (lambda (_open6077_ _n6078_ _src6079_)
                (if (table-ref _open6077_ _phi6061_ '#f)
                    '#f
                    (let ((_block-ref6081_
                           (string-append
                            _src6079_
                            '"__"
                            (number->string _n6078_))))
                      (##structure-set!
                       _state6060_
                       (fx+ _n6078_ '1)
                       '2
                       gxc#meta-state::t
                       '#f)
                      (table-set!
                       _open6077_
                       _phi6061_
                       (##structure
                        gxc#meta-state-block::t
                        (gx#current-expander-context)
                        _phi6061_
                        _n6078_
                        '()))
                      _block-ref6081_)))))
        (if (##structure-instance-of? _state60626070_ 'gxc#meta-state::t)
            (let* ((_e60666086_ (##vector-ref _state60626070_ '1))
                   (_src6089_ _e60666086_)
                   (_e60676091_ (##vector-ref _state60626070_ '2))
                   (_n6094_ _e60676091_)
                   (_e60686096_ (##vector-ref _state60626070_ '3))
                   (_open6099_ _e60686096_))
              (_K60656083_ _open6099_ _n6094_ _src6089_))
            (_E60646074_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state6054_ _phi6055_ _stx6056_)
      (let ((_block6058_
             (table-ref
              (##structure-ref _state6054_ '3 gxc#meta-state::t '#f)
              _phi6055_
              '#f)))
        (##structure-set!
         _block6058_
         (cons _stx6056_
               (##structure-ref _block6058_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state6049_)
      (##structure-set!
       _state6049_
       (hash-fold
        (lambda (_g16389_ _block6051_ _r6052_) (cons _block6051_ _r6052_))
        (##structure-ref _state6049_ '4 gxc#meta-state::t '#f)
        (##structure-ref _state6049_ '3 gxc#meta-state::t '#f))
       '4
       gxc#meta-state::t
       '#f)
      (##structure-set!
       _state6049_
       (make-table 'test: eq?)
       '3
       gxc#meta-state::t
       '#f)))
  (define gxc#meta-state-end!
    (lambda (_state6001_)
      (gxc#meta-state-end-phi! _state6001_)
      (foldl1 (lambda (_block6003_ _r6004_)
                (let* ((_block60056014_ _block6003_)
                       (_E60076018_
                        (lambda ()
                          (error '"No clause matching" _block60056014_)))
                       (_K60086026_
                        (lambda (_code6021_ _n6022_ _phi6023_ _ctx6024_)
                          (if (null? _code6021_)
                              _r6004_
                              (cons (cons _ctx6024_
                                          (cons _phi6023_
                                                (cons _n6022_
                                                      (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (reverse _code6021_))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _r6004_)))))
                  (if (##structure-instance-of?
                       _block60056014_
                       'gxc#meta-state-block::t)
                      (let* ((_e60096029_ (##vector-ref _block60056014_ '1))
                             (_ctx6032_ _e60096029_)
                             (_e60106034_ (##vector-ref _block60056014_ '2))
                             (_phi6037_ _e60106034_)
                             (_e60116039_ (##vector-ref _block60056014_ '3))
                             (_n6042_ _e60116039_)
                             (_e60126044_ (##vector-ref _block60056014_ '4))
                             (_code6047_ _e60126044_))
                        (_K60086026_ _code6047_ _n6042_ _phi6037_ _ctx6032_))
                      (_E60076018_))))
              '()
              (##structure-ref _state6001_ '4 gxc#meta-state::t '#f))))
  (define gxc#collect-expression-refs
    (lambda (_stx5997_)
      (let ((_ht5999_ (make-table 'test: eq?)))
        (gxc#apply-collect-expression-refs _stx5997_ _ht5999_)
        _ht5999_)))
  (define gxc#collect-refs-ref%
    (lambda (_stx5940_ _ht5941_)
      (let* ((_g59435956_
              (lambda (_g59445953_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59445953_)))
             (_g59425994_
              (lambda (_g59445959_)
                (if (gx#stx-pair? _g59445959_)
                    (let ((_e59465961_ (gx#stx-e _g59445959_)))
                      (let ((_hd59475964_ (##car _e59465961_))
                            (_tl59485966_ (##cdr _e59465961_)))
                        (if (gx#stx-pair? _tl59485966_)
                            (let ((_e59495969_ (gx#stx-e _tl59485966_)))
                              (let ((_hd59505972_ (##car _e59495969_))
                                    (_tl59515974_ (##cdr _e59495969_)))
                                (if (gx#stx-null? _tl59515974_)
                                    ((lambda (_L5977_)
                                       (let* ((_bind5989_
                                               (gx#resolve-identifier__0
                                                _L5977_))
                                              (_eid5991_
                                               (if _bind5989_
                                                   (##structure-ref
                                                    _bind5989_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L5977_))))
                                         (table-set!
                                          _ht5941_
                                          _eid5991_
                                          _eid5991_)))
                                     _hd59505972_)
                                    (_g59435956_ _g59445959_))))
                            (_g59435956_ _g59445959_))))
                    (_g59435956_ _g59445959_)))))
        (_g59425994_ _stx5940_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx5867_ _ht5868_)
      (let* ((_g58705887_
              (lambda (_g58715884_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58715884_)))
             (_g58695937_
              (lambda (_g58715890_)
                (if (gx#stx-pair? _g58715890_)
                    (let ((_e58745892_ (gx#stx-e _g58715890_)))
                      (let ((_hd58755895_ (##car _e58745892_))
                            (_tl58765897_ (##cdr _e58745892_)))
                        (if (gx#stx-pair? _tl58765897_)
                            (let ((_e58775900_ (gx#stx-e _tl58765897_)))
                              (let ((_hd58785903_ (##car _e58775900_))
                                    (_tl58795905_ (##cdr _e58775900_)))
                                (if (gx#stx-pair? _tl58795905_)
                                    (let ((_e58805908_
                                           (gx#stx-e _tl58795905_)))
                                      (let ((_hd58815911_ (##car _e58805908_))
                                            (_tl58825913_ (##cdr _e58805908_)))
                                        (if (gx#stx-null? _tl58825913_)
                                            ((lambda (_L5916_ _L5917_)
                                               (let* ((_bind5932_
                                                       (gx#resolve-identifier__0
                                                        _L5917_))
                                                      (_eid5934_
                                                       (if _bind5932_
                                                           (##structure-ref
                                                            _bind5932_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L5917_))))
                                                 (table-set!
                                                  _ht5868_
                                                  _eid5934_
                                                  _eid5934_)
                                                 (gxc#compile-e
                                                  _L5916_
                                                  _ht5868_)))
                                             _hd58815911_
                                             _hd58785903_)
                                            (_g58705887_ _g58715890_))))
                                    (_g58705887_ _g58715890_))))
                            (_g58705887_ _g58715890_))))
                    (_g58705887_ _g58715890_)))))
        (_g58695937_ _stx5867_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx5829_)
      (let* ((_g58315841_
              (lambda (_g58325838_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58325838_)))
             (_g58305864_
              (lambda (_g58325844_)
                (if (gx#stx-pair? _g58325844_)
                    (let ((_e58345846_ (gx#stx-e _g58325844_)))
                      (let ((_hd58355849_ (##car _e58345846_))
                            (_tl58365851_ (##cdr _e58345846_)))
                        ((lambda (_L5854_) (ormap1 gxc#compile-e _L5854_))
                         _tl58365851_)))
                    (_g58315841_ _g58325844_)))))
        (_g58305864_ _stx5829_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx5791_)
      (let* ((_g57935803_
              (lambda (_g57945800_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57945800_)))
             (_g57925826_
              (lambda (_g57945806_)
                (if (gx#stx-pair? _g57945806_)
                    (let ((_e57965808_ (gx#stx-e _g57945806_)))
                      (let ((_hd57975811_ (##car _e57965808_))
                            (_tl57985813_ (##cdr _e57965808_)))
                        ((lambda (_L5816_) (gxc#compile-e (last _L5816_)))
                         _tl57985813_)))
                    (_g57935803_ _g57945806_)))))
        (_g57925826_ _stx5791_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx5724_)
      (let* ((_g57265743_
              (lambda (_g57275740_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57275740_)))
             (_g57255788_
              (lambda (_g57275746_)
                (if (gx#stx-pair? _g57275746_)
                    (let ((_e57305748_ (gx#stx-e _g57275746_)))
                      (let ((_hd57315751_ (##car _e57305748_))
                            (_tl57325753_ (##cdr _e57305748_)))
                        (if (gx#stx-pair? _tl57325753_)
                            (let ((_e57335756_ (gx#stx-e _tl57325753_)))
                              (let ((_hd57345759_ (##car _e57335756_))
                                    (_tl57355761_ (##cdr _e57335756_)))
                                (if (gx#stx-pair? _tl57355761_)
                                    (let ((_e57365764_
                                           (gx#stx-e _tl57355761_)))
                                      (let ((_hd57375767_ (##car _e57365764_))
                                            (_tl57385769_ (##cdr _e57365764_)))
                                        (if (gx#stx-null? _tl57385769_)
                                            ((lambda (_L5772_ _L5773_)
                                               (gxc#compile-e _L5772_))
                                             _hd57375767_
                                             _hd57345759_)
                                            (_g57265743_ _g57275746_))))
                                    (_g57265743_ _g57275746_))))
                            (_g57265743_ _g57275746_))))
                    (_g57265743_ _g57275746_)))))
        (_g57255788_ _stx5724_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx5657_)
      (let* ((_g56595676_
              (lambda (_g56605673_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56605673_)))
             (_g56585721_
              (lambda (_g56605679_)
                (if (gx#stx-pair? _g56605679_)
                    (let ((_e56635681_ (gx#stx-e _g56605679_)))
                      (let ((_hd56645684_ (##car _e56635681_))
                            (_tl56655686_ (##cdr _e56635681_)))
                        (if (gx#stx-pair? _tl56655686_)
                            (let ((_e56665689_ (gx#stx-e _tl56655686_)))
                              (let ((_hd56675692_ (##car _e56665689_))
                                    (_tl56685694_ (##cdr _e56665689_)))
                                (if (gx#stx-pair? _tl56685694_)
                                    (let ((_e56695697_
                                           (gx#stx-e _tl56685694_)))
                                      (let ((_hd56705700_ (##car _e56695697_))
                                            (_tl56715702_ (##cdr _e56695697_)))
                                        (if (gx#stx-null? _tl56715702_)
                                            ((lambda (_L5705_ _L5706_)
                                               (gxc#compile-e _L5705_))
                                             _hd56705700_
                                             _hd56675692_)
                                            (_g56595676_ _g56605679_))))
                                    (_g56595676_ _g56605679_))))
                            (_g56595676_ _g56605679_))))
                    (_g56595676_ _g56605679_)))))
        (_g56585721_ _stx5657_))))
  (define gxc#count-values-single% (lambda (_stx5655_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx5573_)
      (let* ((_g55755594_
              (lambda (_g55765591_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55765591_)))
             (_g55745652_
              (lambda (_g55765597_)
                (if (gx#stx-pair? _g55765597_)
                    (let ((_e55785599_ (gx#stx-e _g55765597_)))
                      (let ((_hd55795602_ (##car _e55785599_))
                            (_tl55805604_ (##cdr _e55785599_)))
                        (if (gx#stx-pair/null? _tl55805604_)
                            (let ((_g16390_
                                   (gx#syntax-split-splice _tl55805604_ '0)))
                              (begin
                                (let ((_g16391_
                                       (if (##values? _g16390_)
                                           (##vector-length _g16390_)
                                           1)))
                                  (if (not (##fx= _g16391_ 2))
                                      (error "Context expects 2 values"
                                             _g16391_)))
                                (let ((_target55815607_
                                       (##vector-ref _g16390_ 0))
                                      (_tl55835609_ (##vector-ref _g16390_ 1)))
                                  (if (gx#stx-null? _tl55835609_)
                                      (letrec ((_loop55845612_
                                                (lambda (_hd55825615_
                                                         _expr55885617_)
                                                  (if (gx#stx-pair?
                                                       _hd55825615_)
                                                      (let ((_e55855620_
                                                             (gx#stx-e
                                                              _hd55825615_)))
                                                        (let ((_lp-hd55865623_
                                                               (##car _e55855620_))
                                                              (_lp-tl55875625_
                                                               (##cdr _e55855620_)))
                                                          (_loop55845612_
                                                           _lp-tl55875625_
                                                           (cons _lp-hd55865623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr55885617_))))
              (let ((_expr55895628_ (reverse _expr55885617_)))
                ((lambda (_L5631_)
                   (gxc#compile-e
                    (last (foldr1 (lambda (_g56445647_ _g56455649_)
                                    (cons _g56445647_ _g56455649_))
                                  '()
                                  _L5631_))))
                 _expr55895628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop55845612_ _target55815607_ '()))
                                      (_g55755594_ _g55765597_)))))
                            (_g55755594_ _g55765597_))))
                    (_g55755594_ _g55765597_)))))
        (_g55745652_ _stx5573_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx5506_)
      (let* ((_g55085525_
              (lambda (_g55095522_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55095522_)))
             (_g55075570_
              (lambda (_g55095528_)
                (if (gx#stx-pair? _g55095528_)
                    (let ((_e55125530_ (gx#stx-e _g55095528_)))
                      (let ((_hd55135533_ (##car _e55125530_))
                            (_tl55145535_ (##cdr _e55125530_)))
                        (if (gx#stx-pair? _tl55145535_)
                            (let ((_e55155538_ (gx#stx-e _tl55145535_)))
                              (let ((_hd55165541_ (##car _e55155538_))
                                    (_tl55175543_ (##cdr _e55155538_)))
                                (if (gx#stx-pair? _tl55175543_)
                                    (let ((_e55185546_
                                           (gx#stx-e _tl55175543_)))
                                      (let ((_hd55195549_ (##car _e55185546_))
                                            (_tl55205551_ (##cdr _e55185546_)))
                                        (if (gx#stx-null? _tl55205551_)
                                            ((lambda (_L5554_ _L5555_)
                                               (gxc#compile-e _L5554_))
                                             _hd55195549_
                                             _hd55165541_)
                                            (_g55085525_ _g55095528_))))
                                    (_g55085525_ _g55095528_))))
                            (_g55085525_ _g55095528_))))
                    (_g55085525_ _g55095528_)))))
        (_g55075570_ _stx5506_))))
  (define gxc#count-values-let-values%
    (lambda (_stx5439_)
      (let* ((_g54415458_
              (lambda (_g54425455_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54425455_)))
             (_g54405503_
              (lambda (_g54425461_)
                (if (gx#stx-pair? _g54425461_)
                    (let ((_e54455463_ (gx#stx-e _g54425461_)))
                      (let ((_hd54465466_ (##car _e54455463_))
                            (_tl54475468_ (##cdr _e54455463_)))
                        (if (gx#stx-pair? _tl54475468_)
                            (let ((_e54485471_ (gx#stx-e _tl54475468_)))
                              (let ((_hd54495474_ (##car _e54485471_))
                                    (_tl54505476_ (##cdr _e54485471_)))
                                (if (gx#stx-pair? _tl54505476_)
                                    (let ((_e54515479_
                                           (gx#stx-e _tl54505476_)))
                                      (let ((_hd54525482_ (##car _e54515479_))
                                            (_tl54535484_ (##cdr _e54515479_)))
                                        (if (gx#stx-null? _tl54535484_)
                                            ((lambda (_L5487_ _L5488_)
                                               (gxc#compile-e _L5487_))
                                             _hd54525482_
                                             _hd54495474_)
                                            (_g54415458_ _g54425461_))))
                                    (_g54415458_ _g54425461_))))
                            (_g54415458_ _g54425461_))))
                    (_g54415458_ _g54425461_)))))
        (_g54405503_ _stx5439_))))
  (define gxc#count-values-call%
    (lambda (_stx5306_)
      (let* ((___stx1632416325_ _stx5306_)
             (_g53095338_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1632416325_))))
        (let ((___kont1632616327_
               (lambda (_L5406_ _L5407_)
                 (length (foldr1 (lambda (_g54285431_ _g54295433_)
                                   (cons _g54285431_ _g54295433_))
                                 '()
                                 _L5406_))))
              (___kont1633016331_ (lambda () '#f)))
          (let ((___match1636916370_
                 (lambda (_e53135350_
                          _hd53145353_
                          _tl53155355_
                          _e53165358_
                          _hd53175361_
                          _tl53185363_
                          _e53195366_
                          _hd53205369_
                          _tl53215371_
                          _e53225374_
                          _hd53235377_
                          _tl53245379_
                          ___splice1632816329_
                          _target53255382_
                          _tl53275384_)
                   (letrec ((_loop53285387_
                             (lambda (_hd53265390_ _rand53325392_)
                               (if (gx#stx-pair? _hd53265390_)
                                   (let ((_e53295395_ (gx#stx-e _hd53265390_)))
                                     (let ((_lp-tl53315400_
                                            (##cdr _e53295395_))
                                           (_lp-hd53305398_
                                            (##car _e53295395_)))
                                       (_loop53285387_
                                        _lp-tl53315400_
                                        (cons _lp-hd53305398_
                                              _rand53325392_))))
                                   (let ((_rand53335403_
                                          (reverse _rand53325392_)))
                                     (let ((_L5406_ _rand53335403_)
                                           (_L5407_ _hd53235377_))
                                       (if (gx#free-identifier=?
                                            _L5407_
                                            'values)
                                           (___kont1632616327_ _L5406_ _L5407_)
                                           (___kont1633016331_))))))))
                     (_loop53285387_ _target53255382_ '())))))
            (if (gx#stx-pair? ___stx1632416325_)
                (let ((_e53135350_ (gx#stx-e ___stx1632416325_)))
                  (let ((_tl53155355_ (##cdr _e53135350_))
                        (_hd53145353_ (##car _e53135350_)))
                    (if (gx#stx-pair? _tl53155355_)
                        (let ((_e53165358_ (gx#stx-e _tl53155355_)))
                          (let ((_tl53185363_ (##cdr _e53165358_))
                                (_hd53175361_ (##car _e53165358_)))
                            (if (gx#stx-pair? _hd53175361_)
                                (let ((_e53195366_ (gx#stx-e _hd53175361_)))
                                  (let ((_tl53215371_ (##cdr _e53195366_))
                                        (_hd53205369_ (##car _e53195366_)))
                                    (if (gx#identifier? _hd53205369_)
                                        (if (gx#stx-eq? '%#ref _hd53205369_)
                                            (if (gx#stx-pair? _tl53215371_)
                                                (let ((_e53225374_
                                                       (gx#stx-e
                                                        _tl53215371_)))
                                                  (let ((_tl53245379_
                                                         (##cdr _e53225374_))
                                                        (_hd53235377_
                                                         (##car _e53225374_)))
                                                    (if (gx#stx-null?
                                                         _tl53245379_)
                                                        (if (gx#stx-pair/null?
                                                             _tl53185363_)
                                                            (let ((___splice1632816329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl53185363_ '0)))
                      (let ((_tl53275384_
                             (##vector-ref ___splice1632816329_ '1))
                            (_target53255382_
                             (##vector-ref ___splice1632816329_ '0)))
                        (if (gx#stx-null? _tl53275384_)
                            (___match1636916370_
                             _e53135350_
                             _hd53145353_
                             _tl53155355_
                             _e53165358_
                             _hd53175361_
                             _tl53185363_
                             _e53195366_
                             _hd53205369_
                             _tl53215371_
                             _e53225374_
                             _hd53235377_
                             _tl53245379_
                             ___splice1632816329_
                             _target53255382_
                             _tl53275384_)
                            (___kont1633016331_))))
                    (___kont1633016331_))
                (___kont1633016331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1633016331_))
                                            (___kont1633016331_))
                                        (___kont1633016331_))))
                                (___kont1633016331_))))
                        (___kont1633016331_))))
                (___kont1633016331_)))))))
  (define gxc#count-values-if%
    (lambda (_stx5210_)
      (let* ((_g52125233_
              (lambda (_g52135230_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52135230_)))
             (_g52115303_
              (lambda (_g52135236_)
                (if (gx#stx-pair? _g52135236_)
                    (let ((_e52175238_ (gx#stx-e _g52135236_)))
                      (let ((_hd52185241_ (##car _e52175238_))
                            (_tl52195243_ (##cdr _e52175238_)))
                        (if (gx#stx-pair? _tl52195243_)
                            (let ((_e52205246_ (gx#stx-e _tl52195243_)))
                              (let ((_hd52215249_ (##car _e52205246_))
                                    (_tl52225251_ (##cdr _e52205246_)))
                                (if (gx#stx-pair? _tl52225251_)
                                    (let ((_e52235254_
                                           (gx#stx-e _tl52225251_)))
                                      (let ((_hd52245257_ (##car _e52235254_))
                                            (_tl52255259_ (##cdr _e52235254_)))
                                        (if (gx#stx-pair? _tl52255259_)
                                            (let ((_e52265262_
                                                   (gx#stx-e _tl52255259_)))
                                              (let ((_hd52275265_
                                                     (##car _e52265262_))
                                                    (_tl52285267_
                                                     (##cdr _e52265262_)))
                                                (if (gx#stx-null? _tl52285267_)
                                                    ((lambda (_L5270_
                                                              _L5271_
                                                              _L5272_)
                                                       (let ((_c152895291_
                                                              (gxc#compile-e
                                                               _L5271_)))
                                                         (if _c152895291_
                                                             (let* ((_c15294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c152895291_)
                            (_c252955297_ (gxc#compile-e _L5270_)))
                       (if _c252955297_
                           (let ((_c25300_ _c252955297_))
                             (if (fx= _c15294_ _c25300_) _c15294_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd52275265_
                                                     _hd52245257_
                                                     _hd52215249_)
                                                    (_g52125233_
                                                     _g52135236_))))
                                            (_g52125233_ _g52135236_))))
                                    (_g52125233_ _g52135236_))))
                            (_g52125233_ _g52135236_))))
                    (_g52125233_ _g52135236_)))))
        (_g52115303_ _stx5210_)))))
