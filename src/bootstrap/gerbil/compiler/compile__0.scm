(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#current-compile-identifiers (make-parameter '#f))
  (define gxc#make-bound-identifier-table
    (lambda ()
      (letrec ((_hash-e14454_
                (lambda (_id14456_) (symbol-hash (gx#stx-e _id14456_)))))
        (make-table 'test: gx#bound-identifier=? 'hash: _hash-e14454_))))
  (define gxc#compile-e
    (lambda (_stx14409_ . _args14410_)
      (let* ((_g1441214422_
              (lambda (_g1441314419_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1441314419_)))
             (_g1441114450_
              (lambda (_g1441314425_)
                (if (gx#stx-pair? _g1441314425_)
                    (let ((_e1441514427_ (gx#stx-e _g1441314425_)))
                      (let ((_hd1441614430_ (##car _e1441514427_))
                            (_tl1441714432_ (##cdr _e1441514427_)))
                        ((lambda (_L14435_)
                           (let ((_$e14445_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L14435_)
                                   '#f)))
                             (if _$e14445_
                                 ((lambda (_method14448_)
                                    (apply _method14448_
                                           _stx14409_
                                           _args14410_))
                                  _$e14445_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx14409_
                                  _L14435_))))
                         _hd1441614430_)))
                    (_g1441214422_ _g1441314425_)))))
        (_g1441114450_ _stx14409_))))
  (define gxc#&void-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14406_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14406_ '%#begin-annotation void)
           (table-set! _tbl14406_ '%#lambda void)
           (table-set! _tbl14406_ '%#case-lambda void)
           (table-set! _tbl14406_ '%#let-values void)
           (table-set! _tbl14406_ '%#letrec-values void)
           (table-set! _tbl14406_ '%#letrec*-values void)
           (table-set! _tbl14406_ '%#quote void)
           (table-set! _tbl14406_ '%#quote-syntax void)
           (table-set! _tbl14406_ '%#call void)
           (table-set! _tbl14406_ '%#if void)
           (table-set! _tbl14406_ '%#ref void)
           (table-set! _tbl14406_ '%#set! void)
           (table-set! _tbl14406_ '%#struct-instance? void)
           (table-set! _tbl14406_ '%#struct-direct-instance? void)
           (table-set! _tbl14406_ '%#struct-ref void)
           (table-set! _tbl14406_ '%#struct-set! void)
           (table-set! _tbl14406_ '%#struct-direct-ref void)
           (table-set! _tbl14406_ '%#struct-direct-set! void)
           (table-set! _tbl14406_ '%#struct-unchecked-ref void)
           (table-set! _tbl14406_ '%#struct-unchecked-set! void)
           _tbl14406_)))))
  (define gxc#&void-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14402_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14402_ '%#begin void)
           (table-set! _tbl14402_ '%#begin-syntax void)
           (table-set! _tbl14402_ '%#begin-foreign void)
           (table-set! _tbl14402_ '%#module void)
           (table-set! _tbl14402_ '%#import void)
           (table-set! _tbl14402_ '%#export void)
           (table-set! _tbl14402_ '%#provide void)
           (table-set! _tbl14402_ '%#extern void)
           (table-set! _tbl14402_ '%#define-values void)
           (table-set! _tbl14402_ '%#define-syntax void)
           (table-set! _tbl14402_ '%#define-alias void)
           (table-set! _tbl14402_ '%#declare void)
           _tbl14402_)))))
  (define gxc#&void
    (##make-promise
     (lambda ()
       (let ((_tbl14398_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14398_ (force gxc#&void-special-form))
           (hash-copy! _tbl14398_ (force gxc#&void-expression))
           _tbl14398_)))))
  (define gxc#&false-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14394_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14394_ '%#begin-annotation false)
           (table-set! _tbl14394_ '%#lambda false)
           (table-set! _tbl14394_ '%#case-lambda false)
           (table-set! _tbl14394_ '%#let-values false)
           (table-set! _tbl14394_ '%#letrec-values false)
           (table-set! _tbl14394_ '%#letrec*-values false)
           (table-set! _tbl14394_ '%#quote false)
           (table-set! _tbl14394_ '%#quote-syntax false)
           (table-set! _tbl14394_ '%#call false)
           (table-set! _tbl14394_ '%#if false)
           (table-set! _tbl14394_ '%#ref false)
           (table-set! _tbl14394_ '%#set! false)
           (table-set! _tbl14394_ '%#struct-instance? false)
           (table-set! _tbl14394_ '%#struct-direct-instance? false)
           (table-set! _tbl14394_ '%#struct-ref false)
           (table-set! _tbl14394_ '%#struct-set! false)
           (table-set! _tbl14394_ '%#struct-direct-ref false)
           (table-set! _tbl14394_ '%#struct-direct-set! false)
           (table-set! _tbl14394_ '%#struct-unchecked-ref false)
           (table-set! _tbl14394_ '%#struct-unchecked-set! false)
           _tbl14394_)))))
  (define gxc#&false-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14390_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14390_ '%#begin false)
           (table-set! _tbl14390_ '%#begin-syntax false)
           (table-set! _tbl14390_ '%#begin-foreign false)
           (table-set! _tbl14390_ '%#module false)
           (table-set! _tbl14390_ '%#import false)
           (table-set! _tbl14390_ '%#export false)
           (table-set! _tbl14390_ '%#provide false)
           (table-set! _tbl14390_ '%#extern false)
           (table-set! _tbl14390_ '%#define-values false)
           (table-set! _tbl14390_ '%#define-syntax false)
           (table-set! _tbl14390_ '%#define-alias false)
           (table-set! _tbl14390_ '%#declare false)
           _tbl14390_)))))
  (define gxc#&false
    (##make-promise
     (lambda ()
       (let ((_tbl14386_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14386_ (force gxc#&false-special-form))
           (hash-copy! _tbl14386_ (force gxc#&false-expression))
           _tbl14386_)))))
  (define gxc#&collect-bindings
    (##make-promise
     (lambda ()
       (let ((_tbl14382_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14382_ (force gxc#&void-expression))
           (hash-copy! _tbl14382_ (force gxc#&void-special-form))
           (table-set! _tbl14382_ '%#begin gxc#collect-begin%)
           (table-set! _tbl14382_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl14382_ '%#module gxc#collect-module%)
           (table-set!
            _tbl14382_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl14382_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl14382_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx14375_ . _args14377_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14375_ _args14377_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (##make-promise
     (lambda ()
       (let ((_tbl14372_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14372_ (force gxc#&void))
           (table-set! _tbl14372_ '%#begin gxc#collect-begin%)
           (table-set! _tbl14372_ '%#module gxc#lift-modules-module%)
           _tbl14372_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx14365_ . _args14367_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14365_ _args14367_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (##make-promise
     (lambda ()
       (let ((_tbl14362_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14362_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl14362_ '%#begin-syntax false)
           (table-set! _tbl14362_ '%#begin-foreign true)
           (table-set! _tbl14362_ '%#begin-annotation true)
           (table-set! _tbl14362_ '%#module false)
           (table-set! _tbl14362_ '%#import false)
           (table-set! _tbl14362_ '%#export false)
           (table-set! _tbl14362_ '%#provide false)
           (table-set! _tbl14362_ '%#extern false)
           (table-set! _tbl14362_ '%#define-values true)
           (table-set! _tbl14362_ '%#define-syntax false)
           (table-set! _tbl14362_ '%#define-alias false)
           (table-set! _tbl14362_ '%#declare false)
           (table-set! _tbl14362_ '%#lambda true)
           (table-set! _tbl14362_ '%#case-lambda true)
           (table-set! _tbl14362_ '%#let-values true)
           (table-set! _tbl14362_ '%#letrec-values true)
           (table-set! _tbl14362_ '%#letrec*-values true)
           (table-set! _tbl14362_ '%#quote true)
           (table-set! _tbl14362_ '%#call true)
           (table-set! _tbl14362_ '%#if true)
           (table-set! _tbl14362_ '%#ref true)
           (table-set! _tbl14362_ '%#set! true)
           (table-set! _tbl14362_ '%#struct-instance? true)
           (table-set! _tbl14362_ '%#struct-direct-instance? true)
           (table-set! _tbl14362_ '%#struct-ref true)
           (table-set! _tbl14362_ '%#struct-set! true)
           (table-set! _tbl14362_ '%#struct-direct-ref true)
           (table-set! _tbl14362_ '%#struct-direct-set! true)
           (table-set! _tbl14362_ '%#struct-unchecked-ref true)
           (table-set! _tbl14362_ '%#struct-unchecked-set! true)
           _tbl14362_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx14355_ . _args14357_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14355_ _args14357_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14352_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14352_ (force gxc#&false))
           (table-set! _tbl14352_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl14352_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl14352_ '%#lambda values)
           (table-set! _tbl14352_ '%#case-lambda values)
           (table-set!
            _tbl14352_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl14352_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl14352_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl14352_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx14345_ . _args14347_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14345_ _args14347_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (##make-promise
     (lambda ()
       (let ((_tbl14342_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14342_ (force gxc#&false-expression))
           (table-set! _tbl14342_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl14342_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl14342_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl14342_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl14342_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl14342_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl14342_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl14342_ '%#quote gxc#count-values-single%)
           (table-set! _tbl14342_ '%#call gxc#count-values-call%)
           (table-set! _tbl14342_ '%#if gxc#count-values-if%)
           _tbl14342_)))))
  (define gxc#apply-count-values
    (lambda (_stx14335_ . _args14337_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14335_ _args14337_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (##make-promise
     (lambda ()
       (let ((_tbl14332_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14332_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl14332_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14332_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl14332_)))))
  (define gxc#&generate-loader
    (##make-promise
     (lambda ()
       (let ((_tbl14328_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14328_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl14328_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl14328_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl14328_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx14321_ . _args14323_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14321_ _args14323_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (##make-promise
     (lambda ()
       (let ((_tbl14318_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14318_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl14318_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl14318_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl14318_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl14318_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl14318_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl14318_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl14318_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl14318_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl14318_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl14318_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl14318_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl14318_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl14318_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl14318_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl14318_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl14318_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl14318_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl14318_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl14318_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl14318_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl14318_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl14318_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl14318_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl14318_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl14318_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx14311_ . _args14313_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14311_ _args14313_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14308_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14308_ (force gxc#&generate-runtime))
           (table-set!
            _tbl14308_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl14308_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx14301_ . _args14303_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14301_ _args14303_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (##make-promise
     (lambda ()
       (let ((_tbl14298_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14298_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl14298_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl14298_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl14298_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl14298_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl14298_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl14298_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl14298_ '%#quote void)
           (table-set! _tbl14298_ '%#quote-syntax void)
           (table-set! _tbl14298_ '%#call gxc#collect-operands)
           (table-set! _tbl14298_ '%#if gxc#collect-operands)
           (table-set! _tbl14298_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl14298_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl14298_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl14298_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl14298_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl14298_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl14298_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl14298_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl14298_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl14298_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl14298_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx14291_ . _args14293_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14291_ _args14293_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (##make-promise
     (lambda ()
       (let ((_tbl14288_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14288_ (force gxc#&void-expression))
           (table-set! _tbl14288_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl14288_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl14288_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl14288_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl14288_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl14288_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl14288_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl14288_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl14288_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl14288_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl14288_ '%#begin-foreign void)
           (table-set! _tbl14288_ '%#declare void)
           _tbl14288_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx14281_ . _args14283_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14281_ _args14283_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14278_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14278_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl14278_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl14278_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl14278_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl14278_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl14278_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14278_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14278_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14278_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14278_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14278_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14278_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14278_ '%#declare void)
           _tbl14278_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx14271_ . _args14273_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14271_ _args14273_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx14228_ . _args14229_)
      (let* ((_g1423114241_
              (lambda (_g1423214238_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1423214238_)))
             (_g1423014268_
              (lambda (_g1423214244_)
                (if (gx#stx-pair? _g1423214244_)
                    (let ((_e1423414246_ (gx#stx-e _g1423214244_)))
                      (let ((_hd1423514249_ (##car _e1423414246_))
                            (_tl1423614251_ (##cdr _e1423414246_)))
                        ((lambda (_L14254_)
                           (for-each
                            (lambda (_g1426314265_)
                              (apply gxc#compile-e _g1426314265_ _args14229_))
                            (gx#stx-e _L14254_)))
                         _tl1423614251_)))
                    (_g1423114241_ _g1423214244_)))))
        (_g1423014268_ _stx14228_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx14224_ . _args14225_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx14224_ _args14225_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx14166_ . _args14167_)
      (let* ((_g1416914183_
              (lambda (_g1417014180_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1417014180_)))
             (_g1416814221_
              (lambda (_g1417014186_)
                (if (gx#stx-pair? _g1417014186_)
                    (let ((_e1417314188_ (gx#stx-e _g1417014186_)))
                      (let ((_hd1417414191_ (##car _e1417314188_))
                            (_tl1417514193_ (##cdr _e1417314188_)))
                        (if (gx#stx-pair? _tl1417514193_)
                            (let ((_e1417614196_ (gx#stx-e _tl1417514193_)))
                              (let ((_hd1417714199_ (##car _e1417614196_))
                                    (_tl1417814201_ (##cdr _e1417614196_)))
                                ((lambda (_L14204_ _L14205_)
                                   (let ((_ctx14218_
                                          (gx#syntax-local-e__0 _L14205_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx14218_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args14167_))
                                      gx#current-expander-context
                                      _ctx14218_)))
                                 _tl1417814201_
                                 _hd1417714199_)))
                            (_g1416914183_ _g1417014186_))))
                    (_g1416914183_ _g1417014186_)))))
        (_g1416814221_ _stx14166_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx14098_ . _args14099_)
      (let* ((_g1410114118_
              (lambda (_g1410214115_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1410214115_)))
             (_g1410014163_
              (lambda (_g1410214121_)
                (if (gx#stx-pair? _g1410214121_)
                    (let ((_e1410514123_ (gx#stx-e _g1410214121_)))
                      (let ((_hd1410614126_ (##car _e1410514123_))
                            (_tl1410714128_ (##cdr _e1410514123_)))
                        (if (gx#stx-pair? _tl1410714128_)
                            (let ((_e1410814131_ (gx#stx-e _tl1410714128_)))
                              (let ((_hd1410914134_ (##car _e1410814131_))
                                    (_tl1411014136_ (##cdr _e1410814131_)))
                                (if (gx#stx-pair? _tl1411014136_)
                                    (let ((_e1411114139_
                                           (gx#stx-e _tl1411014136_)))
                                      (let ((_hd1411214142_
                                             (##car _e1411114139_))
                                            (_tl1411314144_
                                             (##cdr _e1411114139_)))
                                        (if (gx#stx-null? _tl1411314144_)
                                            ((lambda (_L14147_ _L14148_)
                                               (apply gxc#compile-e
                                                      _L14147_
                                                      _args14099_))
                                             _hd1411214142_
                                             _hd1410914134_)
                                            (_g1410114118_ _g1410214121_))))
                                    (_g1410114118_ _g1410214121_))))
                            (_g1410114118_ _g1410214121_))))
                    (_g1410114118_ _g1410214121_)))))
        (_g1410014163_ _stx14098_))))
  (define gxc#collect-define-values%
    (lambda (_stx14030_ . _args14031_)
      (let* ((_g1403314050_
              (lambda (_g1403414047_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1403414047_)))
             (_g1403214095_
              (lambda (_g1403414053_)
                (if (gx#stx-pair? _g1403414053_)
                    (let ((_e1403714055_ (gx#stx-e _g1403414053_)))
                      (let ((_hd1403814058_ (##car _e1403714055_))
                            (_tl1403914060_ (##cdr _e1403714055_)))
                        (if (gx#stx-pair? _tl1403914060_)
                            (let ((_e1404014063_ (gx#stx-e _tl1403914060_)))
                              (let ((_hd1404114066_ (##car _e1404014063_))
                                    (_tl1404214068_ (##cdr _e1404014063_)))
                                (if (gx#stx-pair? _tl1404214068_)
                                    (let ((_e1404314071_
                                           (gx#stx-e _tl1404214068_)))
                                      (let ((_hd1404414074_
                                             (##car _e1404314071_))
                                            (_tl1404514076_
                                             (##cdr _e1404314071_)))
                                        (if (gx#stx-null? _tl1404514076_)
                                            ((lambda (_L14079_ _L14080_)
                                               (apply gxc#compile-e
                                                      _L14079_
                                                      _args14031_))
                                             _hd1404414074_
                                             _hd1404114066_)
                                            (_g1403314050_ _g1403414053_))))
                                    (_g1403314050_ _g1403414053_))))
                            (_g1403314050_ _g1403414053_))))
                    (_g1403314050_ _g1403414053_)))))
        (_g1403214095_ _stx14030_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx13961_ . _args13962_)
      (let* ((_g1396413981_
              (lambda (_g1396513978_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1396513978_)))
             (_g1396314027_
              (lambda (_g1396513984_)
                (if (gx#stx-pair? _g1396513984_)
                    (let ((_e1396813986_ (gx#stx-e _g1396513984_)))
                      (let ((_hd1396913989_ (##car _e1396813986_))
                            (_tl1397013991_ (##cdr _e1396813986_)))
                        (if (gx#stx-pair? _tl1397013991_)
                            (let ((_e1397113994_ (gx#stx-e _tl1397013991_)))
                              (let ((_hd1397213997_ (##car _e1397113994_))
                                    (_tl1397313999_ (##cdr _e1397113994_)))
                                (if (gx#stx-pair? _tl1397313999_)
                                    (let ((_e1397414002_
                                           (gx#stx-e _tl1397313999_)))
                                      (let ((_hd1397514005_
                                             (##car _e1397414002_))
                                            (_tl1397614007_
                                             (##cdr _e1397414002_)))
                                        (if (gx#stx-null? _tl1397614007_)
                                            ((lambda (_L14010_ _L14011_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L14010_
                                                         _args13962_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1397514005_
                                             _hd1397213997_)
                                            (_g1396413981_ _g1396513984_))))
                                    (_g1396413981_ _g1396513984_))))
                            (_g1396413981_ _g1396513984_))))
                    (_g1396413981_ _g1396513984_)))))
        (_g1396314027_ _stx13961_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx13893_ . _args13894_)
      (let* ((_g1389613913_
              (lambda (_g1389713910_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1389713910_)))
             (_g1389513958_
              (lambda (_g1389713916_)
                (if (gx#stx-pair? _g1389713916_)
                    (let ((_e1390013918_ (gx#stx-e _g1389713916_)))
                      (let ((_hd1390113921_ (##car _e1390013918_))
                            (_tl1390213923_ (##cdr _e1390013918_)))
                        (if (gx#stx-pair? _tl1390213923_)
                            (let ((_e1390313926_ (gx#stx-e _tl1390213923_)))
                              (let ((_hd1390413929_ (##car _e1390313926_))
                                    (_tl1390513931_ (##cdr _e1390313926_)))
                                (if (gx#stx-pair? _tl1390513931_)
                                    (let ((_e1390613934_
                                           (gx#stx-e _tl1390513931_)))
                                      (let ((_hd1390713937_
                                             (##car _e1390613934_))
                                            (_tl1390813939_
                                             (##cdr _e1390613934_)))
                                        (if (gx#stx-null? _tl1390813939_)
                                            ((lambda (_L13942_ _L13943_)
                                               (apply gxc#compile-e
                                                      _L13942_
                                                      _args13894_))
                                             _hd1390713937_
                                             _hd1390413929_)
                                            (_g1389613913_ _g1389713916_))))
                                    (_g1389613913_ _g1389713916_))))
                            (_g1389613913_ _g1389713916_))))
                    (_g1389613913_ _g1389713916_)))))
        (_g1389513958_ _stx13893_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx13775_ . _args13776_)
      (let* ((_g1377813806_
              (lambda (_g1377913803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1377913803_)))
             (_g1377713890_
              (lambda (_g1377913809_)
                (if (gx#stx-pair? _g1377913809_)
                    (let ((_e1378213811_ (gx#stx-e _g1377913809_)))
                      (let ((_hd1378313814_ (##car _e1378213811_))
                            (_tl1378413816_ (##cdr _e1378213811_)))
                        (if (gx#stx-pair/null? _tl1378413816_)
                            (let ((_g15630_
                                   (gx#syntax-split-splice _tl1378413816_ '0)))
                              (begin
                                (let ((_g15631_
                                       (if (##values? _g15630_)
                                           (##vector-length _g15630_)
                                           1)))
                                  (if (not (##fx= _g15631_ 2))
                                      (error "Context expects 2 values"
                                             _g15631_)))
                                (let ((_target1378513819_
                                       (##vector-ref _g15630_ 0))
                                      (_tl1378713821_
                                       (##vector-ref _g15630_ 1)))
                                  (if (gx#stx-null? _tl1378713821_)
                                      (letrec ((_loop1378813824_
                                                (lambda (_hd1378613827_
                                                         _body1379213829_
                                                         _hd1379313831_)
                                                  (if (gx#stx-pair?
                                                       _hd1378613827_)
                                                      (let ((_e1378913834_
                                                             (gx#stx-e
                                                              _hd1378613827_)))
                                                        (let ((_lp-hd1379013837_
                                                               (##car _e1378913834_))
                                                              (_lp-tl1379113839_
                                                               (##cdr _e1378913834_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1379013837_)
                                                              (let ((_e1379613842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1379013837_)))
                        (let ((_hd1379713845_ (##car _e1379613842_))
                              (_tl1379813847_ (##cdr _e1379613842_)))
                          (if (gx#stx-pair? _tl1379813847_)
                              (let ((_e1379913850_ (gx#stx-e _tl1379813847_)))
                                (let ((_hd1380013853_ (##car _e1379913850_))
                                      (_tl1380113855_ (##cdr _e1379913850_)))
                                  (if (gx#stx-null? _tl1380113855_)
                                      (_loop1378813824_
                                       _lp-tl1379113839_
                                       (cons _hd1380013853_ _body1379213829_)
                                       (cons _hd1379713845_ _hd1379313831_))
                                      (_g1377813806_ _g1377913809_))))
                              (_g1377813806_ _g1377913809_))))
                      (_g1377813806_ _g1377913809_))))
              (let ((_body1379413858_ (reverse _body1379213829_))
                    (_hd1379513860_ (reverse _hd1379313831_)))
                ((lambda (_L13863_ _L13864_)
                   (for-each
                    (lambda (_g1387813880_)
                      (apply gxc#compile-e _g1387813880_ _args13776_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1388213885_ _g1388313887_)
                                (cons _g1388213885_ _g1388313887_))
                              '()
                              _L13863_))))
                 _body1379413858_
                 _hd1379513860_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1378813824_
                                         _target1378513819_
                                         '()
                                         '()))
                                      (_g1377813806_ _g1377913809_)))))
                            (_g1377813806_ _g1377913809_))))
                    (_g1377813806_ _g1377913809_)))))
        (_g1377713890_ _stx13775_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx13628_ . _args13629_)
      (let* ((_g1363113666_
              (lambda (_g1363213663_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1363213663_)))
             (_g1363013772_
              (lambda (_g1363213669_)
                (if (gx#stx-pair? _g1363213669_)
                    (let ((_e1363613671_ (gx#stx-e _g1363213669_)))
                      (let ((_hd1363713674_ (##car _e1363613671_))
                            (_tl1363813676_ (##cdr _e1363613671_)))
                        (if (gx#stx-pair? _tl1363813676_)
                            (let ((_e1363913679_ (gx#stx-e _tl1363813676_)))
                              (let ((_hd1364013682_ (##car _e1363913679_))
                                    (_tl1364113684_ (##cdr _e1363913679_)))
                                (if (gx#stx-pair/null? _hd1364013682_)
                                    (let ((_g15632_
                                           (gx#syntax-split-splice
                                            _hd1364013682_
                                            '0)))
                                      (begin
                                        (let ((_g15633_
                                               (if (##values? _g15632_)
                                                   (##vector-length _g15632_)
                                                   1)))
                                          (if (not (##fx= _g15633_ 2))
                                              (error "Context expects 2 values"
                                                     _g15633_)))
                                        (let ((_target1364213687_
                                               (##vector-ref _g15632_ 0))
                                              (_tl1364413689_
                                               (##vector-ref _g15632_ 1)))
                                          (if (gx#stx-null? _tl1364413689_)
                                              (letrec ((_loop1364513692_
                                                        (lambda (_hd1364313695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1364913697_
                         _hd1365013699_)
                  (if (gx#stx-pair? _hd1364313695_)
                      (let ((_e1364613702_ (gx#stx-e _hd1364313695_)))
                        (let ((_lp-hd1364713705_ (##car _e1364613702_))
                              (_lp-tl1364813707_ (##cdr _e1364613702_)))
                          (if (gx#stx-pair? _lp-hd1364713705_)
                              (let ((_e1365313710_
                                     (gx#stx-e _lp-hd1364713705_)))
                                (let ((_hd1365413713_ (##car _e1365313710_))
                                      (_tl1365513715_ (##cdr _e1365313710_)))
                                  (if (gx#stx-pair? _tl1365513715_)
                                      (let ((_e1365613718_
                                             (gx#stx-e _tl1365513715_)))
                                        (let ((_hd1365713721_
                                               (##car _e1365613718_))
                                              (_tl1365813723_
                                               (##cdr _e1365613718_)))
                                          (if (gx#stx-null? _tl1365813723_)
                                              (_loop1364513692_
                                               _lp-tl1364813707_
                                               (cons _hd1365713721_
                                                     _expr1364913697_)
                                               (cons _hd1365413713_
                                                     _hd1365013699_))
                                              (_g1363113666_ _g1363213669_))))
                                      (_g1363113666_ _g1363213669_))))
                              (_g1363113666_ _g1363213669_))))
                      (let ((_expr1365113726_ (reverse _expr1364913697_))
                            (_hd1365213728_ (reverse _hd1365013699_)))
                        (if (gx#stx-pair? _tl1364113684_)
                            (let ((_e1365913731_ (gx#stx-e _tl1364113684_)))
                              (let ((_hd1366013734_ (##car _e1365913731_))
                                    (_tl1366113736_ (##cdr _e1365913731_)))
                                (if (gx#stx-null? _tl1366113736_)
                                    ((lambda (_L13739_ _L13740_ _L13741_)
                                       (for-each
                                        (lambda (_g1376013762_)
                                          (apply gxc#compile-e
                                                 _g1376013762_
                                                 _args13629_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1376413767_
                                                           _g1376513769_)
                                                    (cons _g1376413767_
                                                          _g1376513769_))
                                                  (cons _L13739_ '())
                                                  _L13740_))))
                                     _hd1366013734_
                                     _expr1365113726_
                                     _hd1365213728_)
                                    (_g1363113666_ _g1363213669_))))
                            (_g1363113666_ _g1363213669_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1364513692_
                                                 _target1364213687_
                                                 '()
                                                 '()))
                                              (_g1363113666_ _g1363213669_)))))
                                    (_g1363113666_ _g1363213669_))))
                            (_g1363113666_ _g1363213669_))))
                    (_g1363113666_ _g1363213669_)))))
        (_g1363013772_ _stx13628_))))
  (define gxc#collect-body-setq%
    (lambda (_stx13560_ . _args13561_)
      (let* ((_g1356313580_
              (lambda (_g1356413577_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1356413577_)))
             (_g1356213625_
              (lambda (_g1356413583_)
                (if (gx#stx-pair? _g1356413583_)
                    (let ((_e1356713585_ (gx#stx-e _g1356413583_)))
                      (let ((_hd1356813588_ (##car _e1356713585_))
                            (_tl1356913590_ (##cdr _e1356713585_)))
                        (if (gx#stx-pair? _tl1356913590_)
                            (let ((_e1357013593_ (gx#stx-e _tl1356913590_)))
                              (let ((_hd1357113596_ (##car _e1357013593_))
                                    (_tl1357213598_ (##cdr _e1357013593_)))
                                (if (gx#stx-pair? _tl1357213598_)
                                    (let ((_e1357313601_
                                           (gx#stx-e _tl1357213598_)))
                                      (let ((_hd1357413604_
                                             (##car _e1357313601_))
                                            (_tl1357513606_
                                             (##cdr _e1357313601_)))
                                        (if (gx#stx-null? _tl1357513606_)
                                            ((lambda (_L13609_ _L13610_)
                                               (apply gxc#compile-e
                                                      _L13609_
                                                      _args13561_))
                                             _hd1357413604_
                                             _hd1357113596_)
                                            (_g1356313580_ _g1356413583_))))
                                    (_g1356313580_ _g1356413583_))))
                            (_g1356313580_ _g1356413583_))))
                    (_g1356313580_ _g1356413583_)))))
        (_g1356213625_ _stx13560_))))
  (define gxc#collect-operands
    (lambda (_stx13473_ . _args13474_)
      (let* ((_g1347613495_
              (lambda (_g1347713492_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1347713492_)))
             (_g1347513557_
              (lambda (_g1347713498_)
                (if (gx#stx-pair? _g1347713498_)
                    (let ((_e1347913500_ (gx#stx-e _g1347713498_)))
                      (let ((_hd1348013503_ (##car _e1347913500_))
                            (_tl1348113505_ (##cdr _e1347913500_)))
                        (if (gx#stx-pair/null? _tl1348113505_)
                            (let ((_g15634_
                                   (gx#syntax-split-splice _tl1348113505_ '0)))
                              (begin
                                (let ((_g15635_
                                       (if (##values? _g15634_)
                                           (##vector-length _g15634_)
                                           1)))
                                  (if (not (##fx= _g15635_ 2))
                                      (error "Context expects 2 values"
                                             _g15635_)))
                                (let ((_target1348213508_
                                       (##vector-ref _g15634_ 0))
                                      (_tl1348413510_
                                       (##vector-ref _g15634_ 1)))
                                  (if (gx#stx-null? _tl1348413510_)
                                      (letrec ((_loop1348513513_
                                                (lambda (_hd1348313516_
                                                         _rands1348913518_)
                                                  (if (gx#stx-pair?
                                                       _hd1348313516_)
                                                      (let ((_e1348613521_
                                                             (gx#stx-e
                                                              _hd1348313516_)))
                                                        (let ((_lp-hd1348713524_
                                                               (##car _e1348613521_))
                                                              (_lp-tl1348813526_
                                                               (##cdr _e1348613521_)))
                                                          (_loop1348513513_
                                                           _lp-tl1348813526_
                                                           (cons _lp-hd1348713524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1348913518_))))
              (let ((_rands1349013529_ (reverse _rands1348913518_)))
                ((lambda (_L13532_)
                   (for-each
                    (lambda (_g1354513547_)
                      (apply gxc#compile-e _g1354513547_ _args13474_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1354913552_ _g1355013554_)
                                (cons _g1354913552_ _g1355013554_))
                              '()
                              _L13532_))))
                 _rands1349013529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1348513513_
                                         _target1348213508_
                                         '()))
                                      (_g1347613495_ _g1347713498_)))))
                            (_g1347613495_ _g1347713498_))))
                    (_g1347613495_ _g1347713498_)))))
        (_g1347513557_ _stx13473_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx13404_)
      (let* ((_g1340613423_
              (lambda (_g1340713420_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1340713420_)))
             (_g1340513470_
              (lambda (_g1340713426_)
                (if (gx#stx-pair? _g1340713426_)
                    (let ((_e1341013428_ (gx#stx-e _g1340713426_)))
                      (let ((_hd1341113431_ (##car _e1341013428_))
                            (_tl1341213433_ (##cdr _e1341013428_)))
                        (if (gx#stx-pair? _tl1341213433_)
                            (let ((_e1341313436_ (gx#stx-e _tl1341213433_)))
                              (let ((_hd1341413439_ (##car _e1341313436_))
                                    (_tl1341513441_ (##cdr _e1341313436_)))
                                (if (gx#stx-pair? _tl1341513441_)
                                    (let ((_e1341613444_
                                           (gx#stx-e _tl1341513441_)))
                                      (let ((_hd1341713447_
                                             (##car _e1341613444_))
                                            (_tl1341813449_
                                             (##cdr _e1341613444_)))
                                        (if (gx#stx-null? _tl1341813449_)
                                            ((lambda (_L13452_ _L13453_)
                                               (gx#stx-for-each1
                                                (lambda (_bind13468_)
                                                  (if (gx#identifier?
                                                       _bind13468_)
                                                      (gxc#add-module-binding!
                                                       _bind13468_
                                                       '#f)
                                                      '#!void))
                                                _L13453_))
                                             _hd1341713447_
                                             _hd1341413439_)
                                            (_g1340613423_ _g1340713426_))))
                                    (_g1340613423_ _g1340713426_))))
                            (_g1340613423_ _g1340713426_))))
                    (_g1340613423_ _g1340713426_)))))
        (_g1340513470_ _stx13404_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx13337_)
      (let* ((_g1333913356_
              (lambda (_g1334013353_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1334013353_)))
             (_g1333813401_
              (lambda (_g1334013359_)
                (if (gx#stx-pair? _g1334013359_)
                    (let ((_e1334313361_ (gx#stx-e _g1334013359_)))
                      (let ((_hd1334413364_ (##car _e1334313361_))
                            (_tl1334513366_ (##cdr _e1334313361_)))
                        (if (gx#stx-pair? _tl1334513366_)
                            (let ((_e1334613369_ (gx#stx-e _tl1334513366_)))
                              (let ((_hd1334713372_ (##car _e1334613369_))
                                    (_tl1334813374_ (##cdr _e1334613369_)))
                                (if (gx#stx-pair? _tl1334813374_)
                                    (let ((_e1334913377_
                                           (gx#stx-e _tl1334813374_)))
                                      (let ((_hd1335013380_
                                             (##car _e1334913377_))
                                            (_tl1335113382_
                                             (##cdr _e1334913377_)))
                                        (if (gx#stx-null? _tl1335113382_)
                                            ((lambda (_L13385_ _L13386_)
                                               (gxc#add-module-binding!
                                                _L13386_
                                                '#t))
                                             _hd1335013380_
                                             _hd1334713372_)
                                            (_g1333913356_ _g1334013359_))))
                                    (_g1333913356_ _g1334013359_))))
                            (_g1333913356_ _g1334013359_))))
                    (_g1333913356_ _g1334013359_)))))
        (_g1333813401_ _stx13337_))))
  (define gxc#lift-modules-module%
    (lambda (_stx13279_ _modules13280_)
      (let* ((_g1328213296_
              (lambda (_g1328313293_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1328313293_)))
             (_g1328113334_
              (lambda (_g1328313299_)
                (if (gx#stx-pair? _g1328313299_)
                    (let ((_e1328613301_ (gx#stx-e _g1328313299_)))
                      (let ((_hd1328713304_ (##car _e1328613301_))
                            (_tl1328813306_ (##cdr _e1328613301_)))
                        (if (gx#stx-pair? _tl1328813306_)
                            (let ((_e1328913309_ (gx#stx-e _tl1328813306_)))
                              (let ((_hd1329013312_ (##car _e1328913309_))
                                    (_tl1329113314_ (##cdr _e1328913309_)))
                                ((lambda (_L13317_ _L13318_)
                                   (let ((_ctx13331_
                                          (gx#syntax-local-e__0 _L13318_)))
                                     (begin
                                       (set-box!
                                        _modules13280_
                                        (cons _ctx13331_
                                              (unbox _modules13280_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx13331_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules13280_))
                                        gx#current-expander-context
                                        _ctx13331_))))
                                 _tl1329113314_
                                 _hd1329013312_)))
                            (_g1328213296_ _g1328313299_))))
                    (_g1328213296_ _g1328313299_)))))
        (_g1328113334_ _stx13279_))))
  (define gxc#add-module-binding!
    (lambda (_id13273_ _syntax?13274_)
      (let ((_eid13276_
             (##structure-ref
              (gx#resolve-identifier__0 _id13273_)
              '1
              gx#binding::t
              '#f))
            (_ht13277_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid13276_)
            '#!void
            (table-set!
             _ht13277_
             _eid13276_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid13276_)
              _syntax?13274_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id113266_ _id213267_)
      (letrec ((_symbol-e13269_
                (lambda (_id13271_)
                  (if (symbol? _id13271_)
                      _id13271_
                      (gxc#generate-runtime-binding-id _id13271_)))))
        (eq? (_symbol-e13269_ _id113266_) (_symbol-e13269_ _id213267_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id13244_)
      (let ((_$e13246_
             (if (##structure-direct-instance-of?
                  _id13244_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id13244_)
                 '#f)))
        (if _$e13246_
            ((lambda (_bind13249_)
               (let ((_eid13251_
                      (##structure-ref _bind13249_ '1 gx#binding::t '#f))
                     (_ht13252_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid13251_)
                     _eid13251_
                     (let ((_$e13254_ (table-ref _ht13252_ _eid13251_ '#f)))
                       (if _$e13254_
                           (values _$e13254_)
                           (if (##structure-instance-of?
                                _bind13249_
                                'gx#local-binding::t)
                               (let ((_gid13257_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid13251_)))
                                 (begin
                                   (table-set! _ht13252_ _eid13251_ _gid13257_)
                                   _gid13257_))
                               (if (##structure-instance-of?
                                    _bind13249_
                                    'gx#module-binding::t)
                                   (let ((_gid13264_
                                          (let ((_$e13259_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind13249_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e13259_
                                                ((lambda (_ns13262_)
                                                   (make-symbol
                                                    _ns13262_
                                                    '"#"
                                                    _eid13251_))
                                                 _$e13259_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid13251_)))))
                                     (begin
                                       (table-set!
                                        _ht13252_
                                        _eid13251_
                                        _gid13264_)
                                       _gid13264_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id13244_
                                    _eid13251_
                                    _bind13249_))))))))
             _$e13246_)
            (if (interned-symbol? (gx#stx-e _id13244_))
                (gx#stx-e _id13244_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id13244_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id13242_)
      (if (gx#identifier? _id13242_)
          (gxc#generate-runtime-binding-id _id13242_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym13222_ _quote?13223_)
        (let* ((_ht13225_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e13227_ (table-ref _ht13225_ _sym13222_ '#f)))
          (if _$e13227_
              (values _$e13227_)
              (let ((_g13230_
                     (if _quote?13223_
                         (make-symbol
                          '"__"
                          _sym13222_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym13222_ '"_"))))
                (begin
                  (table-set! _ht13225_ _sym13222_ _g13230_)
                  _g13230_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym13235_)
          (let ((_quote?13237_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym13235_
             _quote?13237_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g15637_
          (let ((_g15636_ (length _g15637_)))
            (cond ((##fx= _g15636_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g15637_))
                  ((##fx= _g15636_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g15637_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g15637_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id13219_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id13219_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key13179_)
      (if (interned-symbol? _key13179_)
          _key13179_
          (if (uninterned-symbol? _key13179_)
              (gxc#generate-runtime-gensym-reference__0 _key13179_)
              (let* ((_key1318013187_ _key13179_)
                     (_E1318213191_
                      (lambda ()
                        (error '"No clause matching" _key1318013187_)))
                     (_K1318313207_
                      (lambda (_mark13194_ _eid13195_)
                        (let ((_$e13197_
                               (##structure-ref
                                _mark13194_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e13197_
                              ((lambda (_ht13200_)
                                 (let ((_$e13202_
                                        (table-ref _ht13200_ _eid13195_ '#f)))
                                   (if _$e13202_
                                       ((lambda (_id13205_)
                                          (if (interned-symbol? _id13205_)
                                              _id13205_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id13205_)))
                                        _$e13202_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid13195_))))
                               _$e13197_)
                              (gxc#generate-runtime-identifier-key
                               _eid13195_))))))
                (if (##pair? _key1318013187_)
                    (let ((_hd1318413210_ (##car _key1318013187_))
                          (_tl1318513212_ (##cdr _key1318013187_)))
                      (let* ((_eid13215_ _hd1318413210_)
                             (_mark13217_ _tl1318513212_))
                        (_K1318313207_ _mark13217_ _eid13215_)))
                    (_E1318213191_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top13166_)
        (if _top13166_
            (let ((_ns13168_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi13169_ (gx#current-expander-phi)))
              (if (fxpositive? _phi13169_)
                  (make-symbol
                   _ns13168_
                   '"["
                   (number->string _phi13169_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns13168_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top13175_ '#f))
            (gxc#generate-runtime-temporary__% _top13175_))))
      (define gxc#generate-runtime-temporary
        (lambda _g15639_
          (let ((_g15638_ (length _g15639_)))
            (cond ((##fx= _g15638_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g15639_))
                  ((##fx= _g15638_ 1)
                   (apply gxc#generate-runtime-temporary__% _g15639_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g15639_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx13163_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx13083_)
      (let* ((_g1308513095_
              (lambda (_g1308613092_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1308613092_)))
             (_g1308413160_
              (lambda (_g1308613098_)
                (if (gx#stx-pair? _g1308613098_)
                    (let ((_e1308813100_ (gx#stx-e _g1308613098_)))
                      (let ((_hd1308913103_ (##car _e1308813100_))
                            (_tl1309013105_ (##cdr _e1308813100_)))
                        ((lambda (_L13108_)
                           (let* ((_body13118_
                                   (gx#stx-map1 gxc#compile-e _L13108_))
                                  (_body13157_
                                   (filter (lambda (_stx13120_)
                                             (let* ((___stx1455414555_
                                                     _stx13120_)
                                                    (_g1312313132_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1455414555_))))
                                               (let ((___kont1455614557_
                                                      (lambda () '#f))
                                                     (___kont1455814559_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1455414555_)
                                                     (let ((_e1312513144_
                                                            (gx#stx-e
                                                             ___stx1455414555_)))
                                                       (let ((_tl1312713149_
                                                              (##cdr _e1312513144_))
                                                             (_hd1312613147_
                                                              (##car _e1312513144_)))
                                                         (if (gx#identifier?
                                                              _hd1312613147_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1312613147_)
                         (if (gx#stx-null? _tl1312713149_)
                             (___kont1455614557_)
                             (___kont1455814559_))
                         (___kont1455814559_))
                     (___kont1455814559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1455814559_)))))
                                           _body13118_)))
                             (if (fx= (length _body13157_) '1)
                                 (car _body13157_)
                                 (cons 'begin _body13157_))))
                         _tl1309013105_)))
                    (_g1308513095_ _g1308613098_)))))
        (_g1308413160_ _stx13083_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx13045_)
      (let* ((_g1304713057_
              (lambda (_g1304813054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1304813054_)))
             (_g1304613080_
              (lambda (_g1304813060_)
                (if (gx#stx-pair? _g1304813060_)
                    (let ((_e1305013062_ (gx#stx-e _g1304813060_)))
                      (let ((_hd1305113065_ (##car _e1305013062_))
                            (_tl1305213067_ (##cdr _e1305013062_)))
                        ((lambda (_L13070_)
                           (cons 'begin (gx#syntax->datum _L13070_)))
                         _tl1305213067_)))
                    (_g1304713057_ _g1304813060_)))))
        (_g1304613080_ _stx13045_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx12922_)
      (let* ((___stx1457414575_ _stx12922_)
             (_g1292512953_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1457414575_))))
        (let ((___kont1457614577_
               (lambda (_L13027_ _L13028_) (gxc#compile-e _L13027_)))
              (___kont1457814579_
               (lambda (_L12982_ _L12983_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L12983_))
                             (cons (gxc#compile-e _L12982_) '()))))))
          (let ((___match1459914600_
                 (lambda (_e1292913003_
                          _hd1293013006_
                          _tl1293113008_
                          _e1293213011_
                          _hd1293313014_
                          _tl1293413016_
                          _e1293513019_
                          _hd1293613022_
                          _tl1293713024_)
                   (let ((_L13027_ _hd1293613022_) (_L13028_ _hd1293313014_))
                     (if (gx#identifier? _L13028_)
                         (___kont1457614577_ _L13027_ _L13028_)
                         (___kont1457814579_
                          _hd1293613022_
                          _hd1293313014_))))))
            (if (gx#stx-pair? ___stx1457414575_)
                (let ((_e1292913003_ (gx#stx-e ___stx1457414575_)))
                  (let ((_tl1293113008_ (##cdr _e1292913003_))
                        (_hd1293013006_ (##car _e1292913003_)))
                    (if (gx#stx-pair? _tl1293113008_)
                        (let ((_e1293213011_ (gx#stx-e _tl1293113008_)))
                          (let ((_tl1293413016_ (##cdr _e1293213011_))
                                (_hd1293313014_ (##car _e1293213011_)))
                            (if (gx#stx-pair? _tl1293413016_)
                                (let ((_e1293513019_
                                       (gx#stx-e _tl1293413016_)))
                                  (let ((_tl1293713024_ (##cdr _e1293513019_))
                                        (_hd1293613022_ (##car _e1293513019_)))
                                    (if (gx#stx-null? _tl1293713024_)
                                        (___match1459914600_
                                         _e1292913003_
                                         _hd1293013006_
                                         _tl1293113008_
                                         _e1293213011_
                                         _hd1293313014_
                                         _tl1293413016_
                                         _e1293513019_
                                         _hd1293613022_
                                         _tl1293713024_)
                                        (_g1292512953_))))
                                (_g1292512953_))))
                        (_g1292512953_))))
                (_g1292512953_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx12884_)
      (let* ((_g1288612896_
              (lambda (_g1288712893_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1288712893_)))
             (_g1288512919_
              (lambda (_g1288712899_)
                (if (gx#stx-pair? _g1288712899_)
                    (let ((_e1288912901_ (gx#stx-e _g1288712899_)))
                      (let ((_hd1289012904_ (##car _e1288912901_))
                            (_tl1289112906_ (##cdr _e1288912901_)))
                        ((lambda (_L12909_)
                           (cons 'declare (map gx#syntax->datum _L12909_)))
                         _tl1289112906_)))
                    (_g1288612896_ _g1288712899_)))))
        (_g1288512919_ _stx12884_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx12631_)
      (let* ((_g1263312650_
              (lambda (_g1263412647_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1263412647_)))
             (_g1263212881_
              (lambda (_g1263412653_)
                (if (gx#stx-pair? _g1263412653_)
                    (let ((_e1263712655_ (gx#stx-e _g1263412653_)))
                      (let ((_hd1263812658_ (##car _e1263712655_))
                            (_tl1263912660_ (##cdr _e1263712655_)))
                        (if (gx#stx-pair? _tl1263912660_)
                            (let ((_e1264012663_ (gx#stx-e _tl1263912660_)))
                              (let ((_hd1264112666_ (##car _e1264012663_))
                                    (_tl1264212668_ (##cdr _e1264012663_)))
                                (if (gx#stx-pair? _tl1264212668_)
                                    (let ((_e1264312671_
                                           (gx#stx-e _tl1264212668_)))
                                      (let ((_hd1264412674_
                                             (##car _e1264312671_))
                                            (_tl1264512676_
                                             (##cdr _e1264312671_)))
                                        (if (gx#stx-null? _tl1264512676_)
                                            ((lambda (_L12679_ _L12680_)
                                               (let* ((___stx1465214653_
                                                       _L12680_)
                                                      (_g1269712711_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1465214653_))))
                                                 (let ((___kont1465414655_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L12679_)))
                                                       (___kont1465614657_
                                                        (lambda (_L12843_)
                                                          (let ((_eid12852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L12843_)))
                    (begin
                      (let ((_lambda-expr1285312855_
                             (gxc#apply-find-lambda-expression _L12679_)))
                        (if _lambda-expr1285312855_
                            (let ((_lambda-expr12858_ _lambda-expr1285312855_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr12858_
                               _eid12852_))
                            '#f))
                      (cons 'define
                            (cons _eid12852_
                                  (cons (gxc#compile-e _L12679_) '())))))))
               (___kont1465814659_
                (lambda ()
                  (let* ((_tmp12718_ (gxc#generate-runtime-temporary__% '#t))
                         (_body12827_
                          (let _lp12720_ ((_rest12722_ _L12680_)
                                          (_k12723_ '0)
                                          (_r12724_ '()))
                            (let* ((___stx1462214623_ _rest12722_)
                                   (_g1272912746_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1462214623_))))
                              (let ((___kont1462414625_
                                     (lambda (_L12814_)
                                       (_lp12720_
                                        _L12814_
                                        (fx+ _k12723_ '1)
                                        _r12724_)))
                                    (___kont1462614627_
                                     (lambda (_L12787_ _L12788_)
                                       (_lp12720_
                                        _L12787_
                                        (fx+ _k12723_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L12788_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp12718_
                         _k12723_
                         _L12787_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r12724_))))
                                    (___kont1462814629_
                                     (lambda (_L12758_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12758_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp12718_
                                _k12723_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r12724_)))
                                    (___kont1463014631_
                                     (lambda () (reverse _r12724_))))
                                (let ((_g1272712774_
                                       (lambda ()
                                         (let ((_L12758_ ___stx1462214623_))
                                           (if (gx#identifier? _L12758_)
                                               (___kont1462814629_ _L12758_)
                                               (___kont1463014631_))))))
                                  (if (gx#stx-pair? ___stx1462214623_)
                                      (let ((_e1273212803_
                                             (gx#stx-e ___stx1462214623_)))
                                        (let ((_tl1273412808_
                                               (##cdr _e1273212803_))
                                              (_hd1273312806_
                                               (##car _e1273212803_)))
                                          (if (gx#stx-datum? _hd1273312806_)
                                              (let ((_e1273512811_
                                                     (gx#stx-e
                                                      _hd1273312806_)))
                                                (if (equal? _e1273512811_ '#f)
                                                    (___kont1462414625_
                                                     _tl1273412808_)
                                                    (___kont1462614627_
                                                     _tl1273412808_
                                                     _hd1273312806_)))
                                              (___kont1462614627_
                                               _tl1273412808_
                                               _hd1273312806_))))
                                      (_g1272712774_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp12718_
                                            (cons (gxc#compile-e _L12679_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp12718_
                                       _L12680_
                                       _L12679_)
                                      _body12827_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1465214653_)
                                                       (let ((_e1269912865_
                                                              (gx#stx-e
                                                               ___stx1465214653_)))
                                                         (let ((_tl1270112870_
                                                                (##cdr _e1269912865_))
                                                               (_hd1270012868_
                                                                (##car _e1269912865_)))
                                                           (if (gx#stx-datum?
                                                                _hd1270012868_)
                                                               (let ((_e1270212873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1270012868_)))
                         (if (equal? _e1270212873_ '#f)
                             (if (gx#stx-null? _tl1270112870_)
                                 (___kont1465414655_)
                                 (___kont1465814659_))
                             (if (gx#stx-null? _tl1270112870_)
                                 (___kont1465614657_ _hd1270012868_)
                                 (___kont1465814659_))))
                       (if (gx#stx-null? _tl1270112870_)
                           (___kont1465614657_ _hd1270012868_)
                           (___kont1465814659_)))))
               (___kont1465814659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1264412674_
                                             _hd1264112666_)
                                            (_g1263312650_ _g1263412653_))))
                                    (_g1263312650_ _g1263412653_))))
                            (_g1263312650_ _g1263412653_))))
                    (_g1263312650_ _g1263412653_)))))
        (_g1263212881_ _stx12631_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals12607_ _hd12608_ _expr12609_)
      (let ((_$e12611_ (gxc#apply-count-values _expr12609_)))
        (if _$e12611_
            ((lambda (_count12614_)
               (let ((_len12616_ (gx#stx-length _hd12608_))
                     (_cmp12617_ (if (gx#stx-list? _hd12608_) fx= fx>=)))
                 (if (let ((_$e12619_ (fx= _len12616_ '0)))
                       (if _$e12619_
                           _$e12619_
                           (_cmp12617_ _count12614_ _len12616_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr12609_
                      _hd12608_))))
             _$e12611_)
            (let* ((_len12622_ (gx#stx-length _hd12608_))
                   (_cmp12624_ (if (gx#stx-list? _hd12608_) '##fx= '##fx>=))
                   (_errmsg12626_
                    (string-append
                     (if (gx#stx-list? _hd12608_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len12622_)
                     '" values"))
                   (_count12628_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd12608_)) (fx= _len12622_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count12628_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals12607_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp12624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12628_ (cons _len12622_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg12626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12628_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var12605_)
      (cons 'if
            (cons (cons '##values? (cons _var12605_ '()))
                  (cons (cons '##vector-length (cons _var12605_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var12601_ _i12602_ _rest12603_)
      (if (if (fx= _i12602_ '0) (not (gx#stx-pair? _rest12603_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var12601_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var12601_ (cons '0 '())))
                            (cons _var12601_ '()))))
          (cons '##vector-ref (cons _var12601_ (cons _i12602_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var12598_ _i12599_)
      (if (fx= _i12599_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var12598_ '()))
                      (cons (cons '##vector->list (cons _var12598_ '()))
                            (cons (cons 'list (cons _var12598_ '())) '()))))
          (if (fx= _i12599_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var12598_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var12598_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var12598_ '()))
                          (cons _i12599_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx12531_)
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
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L12580_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12579_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1254412574_
                                             _hd1254112566_)
                                            (_g1253312550_ _g1253412553_))))
                                    (_g1253312550_ _g1253412553_))))
                            (_g1253312550_ _g1253412553_))))
                    (_g1253312550_ _g1253412553_)))))
        (_g1253212595_ _stx12531_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd12529_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd12529_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx11072_)
      (letrec ((_dispatch-case?11074_
                (lambda (_hd11759_ _body11760_)
                  (let* ((_form11762_ (cons _hd11759_ (cons _body11760_ '())))
                         (___stx1468414685_ _form11762_)
                         (_g1176711924_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1468414685_))))
                    (let ((___kont1468614687_
                           (lambda (_L12449_ _L12450_ _L12451_) '#t))
                          (___kont1469214693_
                           (lambda (_L12237_
                                    _L12238_
                                    _L12239_
                                    _L12240_
                                    _L12241_
                                    _L12242_)
                             '#t))
                          (___kont1469814699_
                           (lambda (_L12032_ _L12033_ _L12034_ _L12035_) '#t))
                          (___kont1470014701_ (lambda () '#f)))
                      (let* ((___match1482514826_
                              (lambda (_e1188411936_
                                       _hd1188511939_
                                       _tl1188611941_
                                       _e1188711944_
                                       _hd1188811947_
                                       _tl1188911949_
                                       _e1189011952_
                                       _hd1189111955_
                                       _tl1189211957_
                                       _e1189311960_
                                       _hd1189411963_
                                       _tl1189511965_
                                       _e1189611968_
                                       _hd1189711971_
                                       _tl1189811973_
                                       _e1189911976_
                                       _hd1190011979_
                                       _tl1190111981_
                                       _e1190211984_
                                       _hd1190311987_
                                       _tl1190411989_
                                       _e1190511992_
                                       _hd1190611995_
                                       _tl1190711997_
                                       _e1190812000_
                                       _hd1190912003_
                                       _tl1191012005_
                                       _e1191112008_
                                       _hd1191212011_
                                       _tl1191312013_
                                       _e1191412016_
                                       _hd1191512019_
                                       _tl1191612021_
                                       _e1191712024_
                                       _hd1191812027_
                                       _tl1191912029_)
                                (let ((_L12032_ _hd1191812027_)
                                      (_L12033_ _hd1190912003_)
                                      (_L12034_ _hd1190011979_)
                                      (_L12035_ _hd1188511939_))
                                  (if (if (gx#identifier? _L12035_)
                                          (if (gxc#runtime-identifier=?
                                               _L12034_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L12035_
                                                   _L12032_)
                                                  (not (gx#free-identifier=?
                                                        _L12033_
                                                        _L12035_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1469814699_
                                       _L12032_
                                       _L12033_
                                       _L12034_
                                       _L12035_)
                                      (___kont1470014701_)))))
                             (___match1479714798_
                              (lambda (_e1188411936_
                                       _hd1188511939_
                                       _tl1188611941_
                                       _e1188711944_
                                       _hd1188811947_
                                       _tl1188911949_
                                       _e1189011952_
                                       _hd1189111955_
                                       _tl1189211957_
                                       _e1189311960_
                                       _hd1189411963_
                                       _tl1189511965_
                                       _e1189611968_
                                       _hd1189711971_
                                       _tl1189811973_
                                       _e1189911976_
                                       _hd1190011979_
                                       _tl1190111981_
                                       _e1190211984_
                                       _hd1190311987_
                                       _tl1190411989_
                                       _e1190511992_
                                       _hd1190611995_
                                       _tl1190711997_
                                       _e1190812000_
                                       _hd1190912003_
                                       _tl1191012005_)
                                (if (gx#stx-pair? _tl1190411989_)
                                    (let ((_e1191112008_
                                           (gx#stx-e _tl1190411989_)))
                                      (let ((_tl1191312013_
                                             (##cdr _e1191112008_))
                                            (_hd1191212011_
                                             (##car _e1191112008_)))
                                        (if (gx#stx-pair? _hd1191212011_)
                                            (let ((_e1191412016_
                                                   (gx#stx-e _hd1191212011_)))
                                              (let ((_tl1191612021_
                                                     (##cdr _e1191412016_))
                                                    (_hd1191512019_
                                                     (##car _e1191412016_)))
                                                (if (gx#identifier?
                                                     _hd1191512019_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1191512019_)
                                                        (if (gx#stx-pair?
                                                             _tl1191612021_)
                                                            (let ((_e1191712024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1191612021_)))
                      (let ((_tl1191912029_ (##cdr _e1191712024_))
                            (_hd1191812027_ (##car _e1191712024_)))
                        (if (gx#stx-null? _tl1191912029_)
                            (if (gx#stx-null? _tl1191312013_)
                                (if (gx#stx-null? _tl1188911949_)
                                    (___match1482514826_
                                     _e1188411936_
                                     _hd1188511939_
                                     _tl1188611941_
                                     _e1188711944_
                                     _hd1188811947_
                                     _tl1188911949_
                                     _e1189011952_
                                     _hd1189111955_
                                     _tl1189211957_
                                     _e1189311960_
                                     _hd1189411963_
                                     _tl1189511965_
                                     _e1189611968_
                                     _hd1189711971_
                                     _tl1189811973_
                                     _e1189911976_
                                     _hd1190011979_
                                     _tl1190111981_
                                     _e1190211984_
                                     _hd1190311987_
                                     _tl1190411989_
                                     _e1190511992_
                                     _hd1190611995_
                                     _tl1190711997_
                                     _e1190812000_
                                     _hd1190912003_
                                     _tl1191012005_
                                     _e1191112008_
                                     _hd1191212011_
                                     _tl1191312013_
                                     _e1191412016_
                                     _hd1191512019_
                                     _tl1191612021_
                                     _e1191712024_
                                     _hd1191812027_
                                     _tl1191912029_)
                                    (___kont1470014701_))
                                (___kont1470014701_))
                            (___kont1470014701_))))
                    (___kont1470014701_))
                (___kont1470014701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1470014701_))))
                                            (___kont1470014701_))))
                                    (___kont1470014701_))))
                             (___match1472714728_
                              (lambda (_e1182012077_
                                       _hd1182112080_
                                       _tl1182212082_
                                       ___splice1469414695_
                                       _target1182312085_
                                       _tl1182512087_)
                                (letrec ((_loop1182612090_
                                          (lambda (_hd1182412093_
                                                   _arg1183012095_)
                                            (if (gx#stx-pair? _hd1182412093_)
                                                (let ((_e1182712098_
                                                       (gx#stx-e
                                                        _hd1182412093_)))
                                                  (let ((_lp-tl1182912103_
                                                         (##cdr _e1182712098_))
                                                        (_lp-hd1182812101_
                                                         (##car _e1182712098_)))
                                                    (_loop1182612090_
                                                     _lp-tl1182912103_
                                                     (cons _lp-hd1182812101_
                                                           _arg1183012095_))))
                                                (let ((_arg1183112106_
                                                       (reverse _arg1183012095_)))
                                                  (if (gx#stx-pair?
                                                       _tl1182212082_)
                                                      (let ((_e1183212109_
                                                             (gx#stx-e
                                                              _tl1182212082_)))
                                                        (let ((_tl1183412114_
                                                               (##cdr _e1183212109_))
                                                              (_hd1183312112_
                                                               (##car _e1183212109_)))
                                                          (if (gx#stx-pair?
                                                               _hd1183312112_)
                                                              (let ((_e1183512117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1183312112_)))
                        (let ((_tl1183712122_ (##cdr _e1183512117_))
                              (_hd1183612120_ (##car _e1183512117_)))
                          (if (gx#identifier? _hd1183612120_)
                              (if (gx#stx-eq? '%#call _hd1183612120_)
                                  (if (gx#stx-pair? _tl1183712122_)
                                      (let ((_e1183812125_
                                             (gx#stx-e _tl1183712122_)))
                                        (let ((_tl1184012130_
                                               (##cdr _e1183812125_))
                                              (_hd1183912128_
                                               (##car _e1183812125_)))
                                          (if (gx#stx-pair? _hd1183912128_)
                                              (let ((_e1184112133_
                                                     (gx#stx-e
                                                      _hd1183912128_)))
                                                (let ((_tl1184312138_
                                                       (##cdr _e1184112133_))
                                                      (_hd1184212136_
                                                       (##car _e1184112133_)))
                                                  (if (gx#identifier?
                                                       _hd1184212136_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1184212136_)
                                                          (if (gx#stx-pair?
                                                               _tl1184312138_)
                                                              (let ((_e1184412141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1184312138_)))
                        (let ((_tl1184612146_ (##cdr _e1184412141_))
                              (_hd1184512144_ (##car _e1184412141_)))
                          (if (gx#stx-null? _tl1184612146_)
                              (if (gx#stx-pair? _tl1184012130_)
                                  (let ((_e1184712149_
                                         (gx#stx-e _tl1184012130_)))
                                    (let ((_tl1184912154_
                                           (##cdr _e1184712149_))
                                          (_hd1184812152_
                                           (##car _e1184712149_)))
                                      (if (gx#stx-pair? _hd1184812152_)
                                          (let ((_e1185012157_
                                                 (gx#stx-e _hd1184812152_)))
                                            (let ((_tl1185212162_
                                                   (##cdr _e1185012157_))
                                                  (_hd1185112160_
                                                   (##car _e1185012157_)))
                                              (if (gx#identifier?
                                                   _hd1185112160_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1185112160_)
                                                      (if (gx#stx-pair?
                                                           _tl1185212162_)
                                                          (let ((_e1185312165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1185212162_)))
                    (let ((_tl1185512170_ (##cdr _e1185312165_))
                          (_hd1185412168_ (##car _e1185312165_)))
                      (if (gx#stx-null? _tl1185512170_)
                          (if (gx#stx-pair/null? _tl1184912154_)
                              (if (fx>= (gx#stx-length _tl1184912154_) '1)
                                  (let ((___splice1469614697_
                                         (gx#syntax-split-splice
                                          _tl1184912154_
                                          '1)))
                                    (let ((_tl1185812175_
                                           (##vector-ref
                                            ___splice1469614697_
                                            '1))
                                          (_target1185612173_
                                           (##vector-ref
                                            ___splice1469614697_
                                            '0)))
                                      (if (gx#stx-pair? _tl1185812175_)
                                          (let ((_e1186512178_
                                                 (gx#stx-e _tl1185812175_)))
                                            (let ((_tl1186712183_
                                                   (##cdr _e1186512178_))
                                                  (_hd1186612181_
                                                   (##car _e1186512178_)))
                                              (if (gx#stx-pair? _hd1186612181_)
                                                  (let ((_e1186812186_
                                                         (gx#stx-e
                                                          _hd1186612181_)))
                                                    (let ((_tl1187012191_
                                                           (##cdr _e1186812186_))
                                                          (_hd1186912189_
                                                           (##car _e1186812186_)))
                                                      (if (gx#identifier?
                                                           _hd1186912189_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1186912189_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1187012191_)
                          (let ((_e1187112194_ (gx#stx-e _tl1187012191_)))
                            (let ((_tl1187312199_ (##cdr _e1187112194_))
                                  (_hd1187212197_ (##car _e1187112194_)))
                              (if (gx#stx-null? _tl1187312199_)
                                  (if (gx#stx-null? _tl1186712183_)
                                      (letrec ((_loop1185912202_
                                                (lambda (_hd1185712205_
                                                         _xarg1186312207_)
                                                  (if (gx#stx-pair?
                                                       _hd1185712205_)
                                                      (let ((_e1186012210_
                                                             (gx#stx-e
                                                              _hd1185712205_)))
                                                        (let ((_lp-tl1186212215_
                                                               (##cdr _e1186012210_))
                                                              (_lp-hd1186112213_
                                                               (##car _e1186012210_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1186112213_)
                                                              (let ((_e1187412218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1186112213_)))
                        (let ((_tl1187612223_ (##cdr _e1187412218_))
                              (_hd1187512221_ (##car _e1187412218_)))
                          (if (gx#identifier? _hd1187512221_)
                              (if (gx#stx-eq? '%#ref _hd1187512221_)
                                  (if (gx#stx-pair? _tl1187612223_)
                                      (let ((_e1187712226_
                                             (gx#stx-e _tl1187612223_)))
                                        (let ((_tl1187912231_
                                               (##cdr _e1187712226_))
                                              (_hd1187812229_
                                               (##car _e1187712226_)))
                                          (if (gx#stx-null? _tl1187912231_)
                                              (_loop1185912202_
                                               _lp-tl1186212215_
                                               (cons _hd1187812229_
                                                     _xarg1186312207_))
                                              (___match1479714798_
                                               _e1182012077_
                                               _hd1182112080_
                                               _tl1182212082_
                                               _e1183212109_
                                               _hd1183312112_
                                               _tl1183412114_
                                               _e1183512117_
                                               _hd1183612120_
                                               _tl1183712122_
                                               _e1183812125_
                                               _hd1183912128_
                                               _tl1184012130_
                                               _e1184112133_
                                               _hd1184212136_
                                               _tl1184312138_
                                               _e1184412141_
                                               _hd1184512144_
                                               _tl1184612146_
                                               _e1184712149_
                                               _hd1184812152_
                                               _tl1184912154_
                                               _e1185012157_
                                               _hd1185112160_
                                               _tl1185212162_
                                               _e1185312165_
                                               _hd1185412168_
                                               _tl1185512170_))))
                                      (___match1479714798_
                                       _e1182012077_
                                       _hd1182112080_
                                       _tl1182212082_
                                       _e1183212109_
                                       _hd1183312112_
                                       _tl1183412114_
                                       _e1183512117_
                                       _hd1183612120_
                                       _tl1183712122_
                                       _e1183812125_
                                       _hd1183912128_
                                       _tl1184012130_
                                       _e1184112133_
                                       _hd1184212136_
                                       _tl1184312138_
                                       _e1184412141_
                                       _hd1184512144_
                                       _tl1184612146_
                                       _e1184712149_
                                       _hd1184812152_
                                       _tl1184912154_
                                       _e1185012157_
                                       _hd1185112160_
                                       _tl1185212162_
                                       _e1185312165_
                                       _hd1185412168_
                                       _tl1185512170_))
                                  (___match1479714798_
                                   _e1182012077_
                                   _hd1182112080_
                                   _tl1182212082_
                                   _e1183212109_
                                   _hd1183312112_
                                   _tl1183412114_
                                   _e1183512117_
                                   _hd1183612120_
                                   _tl1183712122_
                                   _e1183812125_
                                   _hd1183912128_
                                   _tl1184012130_
                                   _e1184112133_
                                   _hd1184212136_
                                   _tl1184312138_
                                   _e1184412141_
                                   _hd1184512144_
                                   _tl1184612146_
                                   _e1184712149_
                                   _hd1184812152_
                                   _tl1184912154_
                                   _e1185012157_
                                   _hd1185112160_
                                   _tl1185212162_
                                   _e1185312165_
                                   _hd1185412168_
                                   _tl1185512170_))
                              (___match1479714798_
                               _e1182012077_
                               _hd1182112080_
                               _tl1182212082_
                               _e1183212109_
                               _hd1183312112_
                               _tl1183412114_
                               _e1183512117_
                               _hd1183612120_
                               _tl1183712122_
                               _e1183812125_
                               _hd1183912128_
                               _tl1184012130_
                               _e1184112133_
                               _hd1184212136_
                               _tl1184312138_
                               _e1184412141_
                               _hd1184512144_
                               _tl1184612146_
                               _e1184712149_
                               _hd1184812152_
                               _tl1184912154_
                               _e1185012157_
                               _hd1185112160_
                               _tl1185212162_
                               _e1185312165_
                               _hd1185412168_
                               _tl1185512170_))))
                      (___match1479714798_
                       _e1182012077_
                       _hd1182112080_
                       _tl1182212082_
                       _e1183212109_
                       _hd1183312112_
                       _tl1183412114_
                       _e1183512117_
                       _hd1183612120_
                       _tl1183712122_
                       _e1183812125_
                       _hd1183912128_
                       _tl1184012130_
                       _e1184112133_
                       _hd1184212136_
                       _tl1184312138_
                       _e1184412141_
                       _hd1184512144_
                       _tl1184612146_
                       _e1184712149_
                       _hd1184812152_
                       _tl1184912154_
                       _e1185012157_
                       _hd1185112160_
                       _tl1185212162_
                       _e1185312165_
                       _hd1185412168_
                       _tl1185512170_))))
              (let ((_xarg1186412234_ (reverse _xarg1186312207_)))
                (if (gx#stx-null? _tl1183412114_)
                    (let ((_L12237_ _hd1187212197_)
                          (_L12238_ _xarg1186412234_)
                          (_L12239_ _hd1185412168_)
                          (_L12240_ _hd1184512144_)
                          (_L12241_ _tl1182512087_)
                          (_L12242_ _arg1183112106_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1228512288_ _g1228612290_)
                                           (cons _g1228512288_ _g1228612290_))
                                         '()
                                         _L12242_)))
                              (if (gx#identifier? _L12241_)
                                  (if (gxc#runtime-identifier=?
                                       _L12240_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1229212295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1229312297_)
                           (cons _g1229212295_ _g1229312297_))
                         '()
                         _L12242_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1229912302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1230012304_)
                           (cons _g1229912302_ _g1230012304_))
                         '()
                         _L12238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1230612309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1230712311_)
                           (cons _g1230612309_ _g1230712311_))
                         '()
                         _L12242_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1231312316_ _g1231412318_)
                           (cons _g1231312316_ _g1231412318_))
                         '()
                         _L12238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L12241_
                                                   _L12237_)
                                                  (not (find (lambda (_g1232012322_)
                                                               (gx#free-identifier=?
                                                                _g1232012322_
                                                                _L12239_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1232412327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1232512329_)
                                 (cons _g1232412327_ _g1232512329_))
                               (cons _L12241_ '())
                               _L12242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1469214693_
                           _L12237_
                           _L12238_
                           _L12239_
                           _L12240_
                           _L12241_
                           _L12242_)
                          (___match1479714798_
                           _e1182012077_
                           _hd1182112080_
                           _tl1182212082_
                           _e1183212109_
                           _hd1183312112_
                           _tl1183412114_
                           _e1183512117_
                           _hd1183612120_
                           _tl1183712122_
                           _e1183812125_
                           _hd1183912128_
                           _tl1184012130_
                           _e1184112133_
                           _hd1184212136_
                           _tl1184312138_
                           _e1184412141_
                           _hd1184512144_
                           _tl1184612146_
                           _e1184712149_
                           _hd1184812152_
                           _tl1184912154_
                           _e1185012157_
                           _hd1185112160_
                           _tl1185212162_
                           _e1185312165_
                           _hd1185412168_
                           _tl1185512170_)))
                    (___match1479714798_
                     _e1182012077_
                     _hd1182112080_
                     _tl1182212082_
                     _e1183212109_
                     _hd1183312112_
                     _tl1183412114_
                     _e1183512117_
                     _hd1183612120_
                     _tl1183712122_
                     _e1183812125_
                     _hd1183912128_
                     _tl1184012130_
                     _e1184112133_
                     _hd1184212136_
                     _tl1184312138_
                     _e1184412141_
                     _hd1184512144_
                     _tl1184612146_
                     _e1184712149_
                     _hd1184812152_
                     _tl1184912154_
                     _e1185012157_
                     _hd1185112160_
                     _tl1185212162_
                     _e1185312165_
                     _hd1185412168_
                     _tl1185512170_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1185912202_
                                         _target1185612173_
                                         '()))
                                      (___match1479714798_
                                       _e1182012077_
                                       _hd1182112080_
                                       _tl1182212082_
                                       _e1183212109_
                                       _hd1183312112_
                                       _tl1183412114_
                                       _e1183512117_
                                       _hd1183612120_
                                       _tl1183712122_
                                       _e1183812125_
                                       _hd1183912128_
                                       _tl1184012130_
                                       _e1184112133_
                                       _hd1184212136_
                                       _tl1184312138_
                                       _e1184412141_
                                       _hd1184512144_
                                       _tl1184612146_
                                       _e1184712149_
                                       _hd1184812152_
                                       _tl1184912154_
                                       _e1185012157_
                                       _hd1185112160_
                                       _tl1185212162_
                                       _e1185312165_
                                       _hd1185412168_
                                       _tl1185512170_))
                                  (___match1479714798_
                                   _e1182012077_
                                   _hd1182112080_
                                   _tl1182212082_
                                   _e1183212109_
                                   _hd1183312112_
                                   _tl1183412114_
                                   _e1183512117_
                                   _hd1183612120_
                                   _tl1183712122_
                                   _e1183812125_
                                   _hd1183912128_
                                   _tl1184012130_
                                   _e1184112133_
                                   _hd1184212136_
                                   _tl1184312138_
                                   _e1184412141_
                                   _hd1184512144_
                                   _tl1184612146_
                                   _e1184712149_
                                   _hd1184812152_
                                   _tl1184912154_
                                   _e1185012157_
                                   _hd1185112160_
                                   _tl1185212162_
                                   _e1185312165_
                                   _hd1185412168_
                                   _tl1185512170_))))
                          (___match1479714798_
                           _e1182012077_
                           _hd1182112080_
                           _tl1182212082_
                           _e1183212109_
                           _hd1183312112_
                           _tl1183412114_
                           _e1183512117_
                           _hd1183612120_
                           _tl1183712122_
                           _e1183812125_
                           _hd1183912128_
                           _tl1184012130_
                           _e1184112133_
                           _hd1184212136_
                           _tl1184312138_
                           _e1184412141_
                           _hd1184512144_
                           _tl1184612146_
                           _e1184712149_
                           _hd1184812152_
                           _tl1184912154_
                           _e1185012157_
                           _hd1185112160_
                           _tl1185212162_
                           _e1185312165_
                           _hd1185412168_
                           _tl1185512170_))
                      (___match1479714798_
                       _e1182012077_
                       _hd1182112080_
                       _tl1182212082_
                       _e1183212109_
                       _hd1183312112_
                       _tl1183412114_
                       _e1183512117_
                       _hd1183612120_
                       _tl1183712122_
                       _e1183812125_
                       _hd1183912128_
                       _tl1184012130_
                       _e1184112133_
                       _hd1184212136_
                       _tl1184312138_
                       _e1184412141_
                       _hd1184512144_
                       _tl1184612146_
                       _e1184712149_
                       _hd1184812152_
                       _tl1184912154_
                       _e1185012157_
                       _hd1185112160_
                       _tl1185212162_
                       _e1185312165_
                       _hd1185412168_
                       _tl1185512170_))
                  (___match1479714798_
                   _e1182012077_
                   _hd1182112080_
                   _tl1182212082_
                   _e1183212109_
                   _hd1183312112_
                   _tl1183412114_
                   _e1183512117_
                   _hd1183612120_
                   _tl1183712122_
                   _e1183812125_
                   _hd1183912128_
                   _tl1184012130_
                   _e1184112133_
                   _hd1184212136_
                   _tl1184312138_
                   _e1184412141_
                   _hd1184512144_
                   _tl1184612146_
                   _e1184712149_
                   _hd1184812152_
                   _tl1184912154_
                   _e1185012157_
                   _hd1185112160_
                   _tl1185212162_
                   _e1185312165_
                   _hd1185412168_
                   _tl1185512170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1479714798_
                                                   _e1182012077_
                                                   _hd1182112080_
                                                   _tl1182212082_
                                                   _e1183212109_
                                                   _hd1183312112_
                                                   _tl1183412114_
                                                   _e1183512117_
                                                   _hd1183612120_
                                                   _tl1183712122_
                                                   _e1183812125_
                                                   _hd1183912128_
                                                   _tl1184012130_
                                                   _e1184112133_
                                                   _hd1184212136_
                                                   _tl1184312138_
                                                   _e1184412141_
                                                   _hd1184512144_
                                                   _tl1184612146_
                                                   _e1184712149_
                                                   _hd1184812152_
                                                   _tl1184912154_
                                                   _e1185012157_
                                                   _hd1185112160_
                                                   _tl1185212162_
                                                   _e1185312165_
                                                   _hd1185412168_
                                                   _tl1185512170_))))
                                          (___match1479714798_
                                           _e1182012077_
                                           _hd1182112080_
                                           _tl1182212082_
                                           _e1183212109_
                                           _hd1183312112_
                                           _tl1183412114_
                                           _e1183512117_
                                           _hd1183612120_
                                           _tl1183712122_
                                           _e1183812125_
                                           _hd1183912128_
                                           _tl1184012130_
                                           _e1184112133_
                                           _hd1184212136_
                                           _tl1184312138_
                                           _e1184412141_
                                           _hd1184512144_
                                           _tl1184612146_
                                           _e1184712149_
                                           _hd1184812152_
                                           _tl1184912154_
                                           _e1185012157_
                                           _hd1185112160_
                                           _tl1185212162_
                                           _e1185312165_
                                           _hd1185412168_
                                           _tl1185512170_))))
                                  (___match1479714798_
                                   _e1182012077_
                                   _hd1182112080_
                                   _tl1182212082_
                                   _e1183212109_
                                   _hd1183312112_
                                   _tl1183412114_
                                   _e1183512117_
                                   _hd1183612120_
                                   _tl1183712122_
                                   _e1183812125_
                                   _hd1183912128_
                                   _tl1184012130_
                                   _e1184112133_
                                   _hd1184212136_
                                   _tl1184312138_
                                   _e1184412141_
                                   _hd1184512144_
                                   _tl1184612146_
                                   _e1184712149_
                                   _hd1184812152_
                                   _tl1184912154_
                                   _e1185012157_
                                   _hd1185112160_
                                   _tl1185212162_
                                   _e1185312165_
                                   _hd1185412168_
                                   _tl1185512170_))
                              (___match1479714798_
                               _e1182012077_
                               _hd1182112080_
                               _tl1182212082_
                               _e1183212109_
                               _hd1183312112_
                               _tl1183412114_
                               _e1183512117_
                               _hd1183612120_
                               _tl1183712122_
                               _e1183812125_
                               _hd1183912128_
                               _tl1184012130_
                               _e1184112133_
                               _hd1184212136_
                               _tl1184312138_
                               _e1184412141_
                               _hd1184512144_
                               _tl1184612146_
                               _e1184712149_
                               _hd1184812152_
                               _tl1184912154_
                               _e1185012157_
                               _hd1185112160_
                               _tl1185212162_
                               _e1185312165_
                               _hd1185412168_
                               _tl1185512170_))
                          (___kont1470014701_))))
                  (___kont1470014701_))
              (___kont1470014701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1470014701_))))
                                          (___kont1470014701_))))
                                  (___kont1470014701_))
                              (___kont1470014701_))))
                      (___kont1470014701_))
                  (___kont1470014701_))
              (___kont1470014701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1470014701_))))
                                      (___kont1470014701_))
                                  (___kont1470014701_))
                              (___kont1470014701_))))
                      (___kont1470014701_))))
              (___kont1470014701_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1182612090_ _target1182312085_ '()))))
                             (___match1471514716_
                              (lambda (_e1177212337_
                                       _hd1177312340_
                                       _tl1177412342_
                                       ___splice1468814689_
                                       _target1177512345_
                                       _tl1177712347_)
                                (letrec ((_loop1177812350_
                                          (lambda (_hd1177612353_
                                                   _arg1178212355_)
                                            (if (gx#stx-pair? _hd1177612353_)
                                                (let ((_e1177912358_
                                                       (gx#stx-e
                                                        _hd1177612353_)))
                                                  (let ((_lp-tl1178112363_
                                                         (##cdr _e1177912358_))
                                                        (_lp-hd1178012361_
                                                         (##car _e1177912358_)))
                                                    (_loop1177812350_
                                                     _lp-tl1178112363_
                                                     (cons _lp-hd1178012361_
                                                           _arg1178212355_))))
                                                (let ((_arg1178312366_
                                                       (reverse _arg1178212355_)))
                                                  (if (gx#stx-pair?
                                                       _tl1177412342_)
                                                      (let ((_e1178412369_
                                                             (gx#stx-e
                                                              _tl1177412342_)))
                                                        (let ((_tl1178612374_
                                                               (##cdr _e1178412369_))
                                                              (_hd1178512372_
                                                               (##car _e1178412369_)))
                                                          (if (gx#stx-pair?
                                                               _hd1178512372_)
                                                              (let ((_e1178712377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1178512372_)))
                        (let ((_tl1178912382_ (##cdr _e1178712377_))
                              (_hd1178812380_ (##car _e1178712377_)))
                          (if (gx#identifier? _hd1178812380_)
                              (if (gx#stx-eq? '%#call _hd1178812380_)
                                  (if (gx#stx-pair? _tl1178912382_)
                                      (let ((_e1179012385_
                                             (gx#stx-e _tl1178912382_)))
                                        (let ((_tl1179212390_
                                               (##cdr _e1179012385_))
                                              (_hd1179112388_
                                               (##car _e1179012385_)))
                                          (if (gx#stx-pair? _hd1179112388_)
                                              (let ((_e1179312393_
                                                     (gx#stx-e
                                                      _hd1179112388_)))
                                                (let ((_tl1179512398_
                                                       (##cdr _e1179312393_))
                                                      (_hd1179412396_
                                                       (##car _e1179312393_)))
                                                  (if (gx#identifier?
                                                       _hd1179412396_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1179412396_)
                                                          (if (gx#stx-pair?
                                                               _tl1179512398_)
                                                              (let ((_e1179612401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1179512398_)))
                        (let ((_tl1179812406_ (##cdr _e1179612401_))
                              (_hd1179712404_ (##car _e1179612401_)))
                          (if (gx#stx-null? _tl1179812406_)
                              (if (gx#stx-pair/null? _tl1179212390_)
                                  (let ((___splice1469014691_
                                         (gx#syntax-split-splice
                                          _tl1179212390_
                                          '0)))
                                    (let ((_tl1180112411_
                                           (##vector-ref
                                            ___splice1469014691_
                                            '1))
                                          (_target1179912409_
                                           (##vector-ref
                                            ___splice1469014691_
                                            '0)))
                                      (if (gx#stx-null? _tl1180112411_)
                                          (letrec ((_loop1180212414_
                                                    (lambda (_hd1180012417_
                                                             _xarg1180612419_)
                                                      (if (gx#stx-pair?
                                                           _hd1180012417_)
                                                          (let ((_e1180312422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1180012417_)))
                    (let ((_lp-tl1180512427_ (##cdr _e1180312422_))
                          (_lp-hd1180412425_ (##car _e1180312422_)))
                      (if (gx#stx-pair? _lp-hd1180412425_)
                          (let ((_e1180812430_ (gx#stx-e _lp-hd1180412425_)))
                            (let ((_tl1181012435_ (##cdr _e1180812430_))
                                  (_hd1180912433_ (##car _e1180812430_)))
                              (if (gx#identifier? _hd1180912433_)
                                  (if (gx#stx-eq? '%#ref _hd1180912433_)
                                      (if (gx#stx-pair? _tl1181012435_)
                                          (let ((_e1181112438_
                                                 (gx#stx-e _tl1181012435_)))
                                            (let ((_tl1181312443_
                                                   (##cdr _e1181112438_))
                                                  (_hd1181212441_
                                                   (##car _e1181112438_)))
                                              (if (gx#stx-null? _tl1181312443_)
                                                  (_loop1180212414_
                                                   _lp-tl1180512427_
                                                   (cons _hd1181212441_
                                                         _xarg1180612419_))
                                                  (___match1472714728_
                                                   _e1177212337_
                                                   _hd1177312340_
                                                   _tl1177412342_
                                                   ___splice1468814689_
                                                   _target1177512345_
                                                   _tl1177712347_))))
                                          (___match1472714728_
                                           _e1177212337_
                                           _hd1177312340_
                                           _tl1177412342_
                                           ___splice1468814689_
                                           _target1177512345_
                                           _tl1177712347_))
                                      (___match1472714728_
                                       _e1177212337_
                                       _hd1177312340_
                                       _tl1177412342_
                                       ___splice1468814689_
                                       _target1177512345_
                                       _tl1177712347_))
                                  (___match1472714728_
                                   _e1177212337_
                                   _hd1177312340_
                                   _tl1177412342_
                                   ___splice1468814689_
                                   _target1177512345_
                                   _tl1177712347_))))
                          (___match1472714728_
                           _e1177212337_
                           _hd1177312340_
                           _tl1177412342_
                           ___splice1468814689_
                           _target1177512345_
                           _tl1177712347_))))
                  (let ((_xarg1180712446_ (reverse _xarg1180612419_)))
                    (if (gx#stx-null? _tl1178612374_)
                        (let ((_L12449_ _xarg1180712446_)
                              (_L12450_ _hd1179712404_)
                              (_L12451_ _arg1178312366_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1247912482_
                                                      _g1248012484_)
                                               (cons _g1247912482_
                                                     _g1248012484_))
                                             '()
                                             _L12451_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1248612489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1248712491_)
                       (cons _g1248612489_ _g1248712491_))
                     '()
                     _L12451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1249312496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1249412498_)
                       (cons _g1249312496_ _g1249412498_))
                     '()
                     _L12449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1250012503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1250112505_)
                       (cons _g1250012503_ _g1250112505_))
                     '()
                     _L12451_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1250712510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1250812512_)
                       (cons _g1250712510_ _g1250812512_))
                     '()
                     _L12449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1251412516_)
                                                       (gx#free-identifier=?
                                                        _g1251412516_
                                                        _L12450_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1251812521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1251912523_)
                         (cons _g1251812521_ _g1251912523_))
                       '()
                       _L12451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1468614687_ _L12449_ _L12450_ _L12451_)
                              (___match1472714728_
                               _e1177212337_
                               _hd1177312340_
                               _tl1177412342_
                               ___splice1468814689_
                               _target1177512345_
                               _tl1177712347_)))
                        (___match1472714728_
                         _e1177212337_
                         _hd1177312340_
                         _tl1177412342_
                         ___splice1468814689_
                         _target1177512345_
                         _tl1177712347_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1180212414_
                                             _target1179912409_
                                             '()))
                                          (___match1472714728_
                                           _e1177212337_
                                           _hd1177312340_
                                           _tl1177412342_
                                           ___splice1468814689_
                                           _target1177512345_
                                           _tl1177712347_))))
                                  (___match1472714728_
                                   _e1177212337_
                                   _hd1177312340_
                                   _tl1177412342_
                                   ___splice1468814689_
                                   _target1177512345_
                                   _tl1177712347_))
                              (___match1472714728_
                               _e1177212337_
                               _hd1177312340_
                               _tl1177412342_
                               ___splice1468814689_
                               _target1177512345_
                               _tl1177712347_))))
                      (___match1472714728_
                       _e1177212337_
                       _hd1177312340_
                       _tl1177412342_
                       ___splice1468814689_
                       _target1177512345_
                       _tl1177712347_))
                  (___match1472714728_
                   _e1177212337_
                   _hd1177312340_
                   _tl1177412342_
                   ___splice1468814689_
                   _target1177512345_
                   _tl1177712347_))
              (___match1472714728_
               _e1177212337_
               _hd1177312340_
               _tl1177412342_
               ___splice1468814689_
               _target1177512345_
               _tl1177712347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1472714728_
                                               _e1177212337_
                                               _hd1177312340_
                                               _tl1177412342_
                                               ___splice1468814689_
                                               _target1177512345_
                                               _tl1177712347_))))
                                      (___match1472714728_
                                       _e1177212337_
                                       _hd1177312340_
                                       _tl1177412342_
                                       ___splice1468814689_
                                       _target1177512345_
                                       _tl1177712347_))
                                  (___match1472714728_
                                   _e1177212337_
                                   _hd1177312340_
                                   _tl1177412342_
                                   ___splice1468814689_
                                   _target1177512345_
                                   _tl1177712347_))
                              (___match1472714728_
                               _e1177212337_
                               _hd1177312340_
                               _tl1177412342_
                               ___splice1468814689_
                               _target1177512345_
                               _tl1177712347_))))
                      (___match1472714728_
                       _e1177212337_
                       _hd1177312340_
                       _tl1177412342_
                       ___splice1468814689_
                       _target1177512345_
                       _tl1177712347_))))
              (___match1472714728_
               _e1177212337_
               _hd1177312340_
               _tl1177412342_
               ___splice1468814689_
               _target1177512345_
               _tl1177712347_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1177812350_ _target1177512345_ '())))))
                        (if (gx#stx-pair? ___stx1468414685_)
                            (let ((_e1177212337_ (gx#stx-e ___stx1468414685_)))
                              (let ((_tl1177412342_ (##cdr _e1177212337_))
                                    (_hd1177312340_ (##car _e1177212337_)))
                                (if (gx#stx-pair/null? _hd1177312340_)
                                    (let ((___splice1468814689_
                                           (gx#syntax-split-splice
                                            _hd1177312340_
                                            '0)))
                                      (let ((_tl1177712347_
                                             (##vector-ref
                                              ___splice1468814689_
                                              '1))
                                            (_target1177512345_
                                             (##vector-ref
                                              ___splice1468814689_
                                              '0)))
                                        (if (gx#stx-null? _tl1177712347_)
                                            (___match1471514716_
                                             _e1177212337_
                                             _hd1177312340_
                                             _tl1177412342_
                                             ___splice1468814689_
                                             _target1177512345_
                                             _tl1177712347_)
                                            (___match1472714728_
                                             _e1177212337_
                                             _hd1177312340_
                                             _tl1177412342_
                                             ___splice1468814689_
                                             _target1177512345_
                                             _tl1177712347_))))
                                    (if (gx#stx-pair? _tl1177412342_)
                                        (let ((_e1188711944_
                                               (gx#stx-e _tl1177412342_)))
                                          (let ((_tl1188911949_
                                                 (##cdr _e1188711944_))
                                                (_hd1188811947_
                                                 (##car _e1188711944_)))
                                            (if (gx#stx-pair? _hd1188811947_)
                                                (let ((_e1189011952_
                                                       (gx#stx-e
                                                        _hd1188811947_)))
                                                  (let ((_tl1189211957_
                                                         (##cdr _e1189011952_))
                                                        (_hd1189111955_
                                                         (##car _e1189011952_)))
                                                    (if (gx#identifier?
                                                         _hd1189111955_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1189111955_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1189211957_)
                        (let ((_e1189311960_ (gx#stx-e _tl1189211957_)))
                          (let ((_tl1189511965_ (##cdr _e1189311960_))
                                (_hd1189411963_ (##car _e1189311960_)))
                            (if (gx#stx-pair? _hd1189411963_)
                                (let ((_e1189611968_
                                       (gx#stx-e _hd1189411963_)))
                                  (let ((_tl1189811973_ (##cdr _e1189611968_))
                                        (_hd1189711971_ (##car _e1189611968_)))
                                    (if (gx#identifier? _hd1189711971_)
                                        (if (gx#stx-eq? '%#ref _hd1189711971_)
                                            (if (gx#stx-pair? _tl1189811973_)
                                                (let ((_e1189911976_
                                                       (gx#stx-e
                                                        _tl1189811973_)))
                                                  (let ((_tl1190111981_
                                                         (##cdr _e1189911976_))
                                                        (_hd1190011979_
                                                         (##car _e1189911976_)))
                                                    (if (gx#stx-null?
                                                         _tl1190111981_)
                                                        (if (gx#stx-pair?
                                                             _tl1189511965_)
                                                            (let ((_e1190211984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1189511965_)))
                      (let ((_tl1190411989_ (##cdr _e1190211984_))
                            (_hd1190311987_ (##car _e1190211984_)))
                        (if (gx#stx-pair? _hd1190311987_)
                            (let ((_e1190511992_ (gx#stx-e _hd1190311987_)))
                              (let ((_tl1190711997_ (##cdr _e1190511992_))
                                    (_hd1190611995_ (##car _e1190511992_)))
                                (if (gx#identifier? _hd1190611995_)
                                    (if (gx#stx-eq? '%#ref _hd1190611995_)
                                        (if (gx#stx-pair? _tl1190711997_)
                                            (let ((_e1190812000_
                                                   (gx#stx-e _tl1190711997_)))
                                              (let ((_tl1191012005_
                                                     (##cdr _e1190812000_))
                                                    (_hd1190912003_
                                                     (##car _e1190812000_)))
                                                (if (gx#stx-null?
                                                     _tl1191012005_)
                                                    (if (gx#stx-pair?
                                                         _tl1190411989_)
                                                        (let ((_e1191112008_
                                                               (gx#stx-e
                                                                _tl1190411989_)))
                                                          (let ((_tl1191312013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1191112008_))
                        (_hd1191212011_ (##car _e1191112008_)))
                    (if (gx#stx-pair? _hd1191212011_)
                        (let ((_e1191412016_ (gx#stx-e _hd1191212011_)))
                          (let ((_tl1191612021_ (##cdr _e1191412016_))
                                (_hd1191512019_ (##car _e1191412016_)))
                            (if (gx#identifier? _hd1191512019_)
                                (if (gx#stx-eq? '%#ref _hd1191512019_)
                                    (if (gx#stx-pair? _tl1191612021_)
                                        (let ((_e1191712024_
                                               (gx#stx-e _tl1191612021_)))
                                          (let ((_tl1191912029_
                                                 (##cdr _e1191712024_))
                                                (_hd1191812027_
                                                 (##car _e1191712024_)))
                                            (if (gx#stx-null? _tl1191912029_)
                                                (if (gx#stx-null?
                                                     _tl1191312013_)
                                                    (if (gx#stx-null?
                                                         _tl1188911949_)
                                                        (___match1482514826_
                                                         _e1177212337_
                                                         _hd1177312340_
                                                         _tl1177412342_
                                                         _e1188711944_
                                                         _hd1188811947_
                                                         _tl1188911949_
                                                         _e1189011952_
                                                         _hd1189111955_
                                                         _tl1189211957_
                                                         _e1189311960_
                                                         _hd1189411963_
                                                         _tl1189511965_
                                                         _e1189611968_
                                                         _hd1189711971_
                                                         _tl1189811973_
                                                         _e1189911976_
                                                         _hd1190011979_
                                                         _tl1190111981_
                                                         _e1190211984_
                                                         _hd1190311987_
                                                         _tl1190411989_
                                                         _e1190511992_
                                                         _hd1190611995_
                                                         _tl1190711997_
                                                         _e1190812000_
                                                         _hd1190912003_
                                                         _tl1191012005_
                                                         _e1191112008_
                                                         _hd1191212011_
                                                         _tl1191312013_
                                                         _e1191412016_
                                                         _hd1191512019_
                                                         _tl1191612021_
                                                         _e1191712024_
                                                         _hd1191812027_
                                                         _tl1191912029_)
                                                        (___kont1470014701_))
                                                    (___kont1470014701_))
                                                (___kont1470014701_))))
                                        (___kont1470014701_))
                                    (___kont1470014701_))
                                (___kont1470014701_))))
                        (___kont1470014701_))))
                (___kont1470014701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1470014701_))))
                                            (___kont1470014701_))
                                        (___kont1470014701_))
                                    (___kont1470014701_))))
                            (___kont1470014701_))))
                    (___kont1470014701_))
                (___kont1470014701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1470014701_))
                                            (___kont1470014701_))
                                        (___kont1470014701_))))
                                (___kont1470014701_))))
                        (___kont1470014701_))
                    (___kont1470014701_))
                (___kont1470014701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1470014701_))))
                                        (___kont1470014701_)))))
                            (___kont1470014701_)))))))
               (_dispatch-case-e11075_
                (lambda (_hd11223_ _body11224_)
                  (let* ((_form11226_ (cons _hd11223_ (cons _body11224_ '())))
                         (___stx1482814829_ _form11226_)
                         (_g1123011354_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1482814829_))))
                    (let ((___kont1483014831_
                           (lambda (_L11725_ _L11726_ _L11727_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11726_ '())))))
                          (___kont1483614837_
                           (lambda (_L11573_ _L11574_ _L11575_ _L11576_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11573_ '())))))
                          (___kont1484014841_
                           (lambda (_L11439_ _L11440_ _L11441_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11439_ '()))))))
                      (let* ((___match1493714938_
                              (lambda (_e1132011359_
                                       _hd1132111362_
                                       _tl1132211364_
                                       _e1132311367_
                                       _hd1132411370_
                                       _tl1132511372_
                                       _e1132611375_
                                       _hd1132711378_
                                       _tl1132811380_
                                       _e1132911383_
                                       _hd1133011386_
                                       _tl1133111388_
                                       _e1133211391_
                                       _hd1133311394_
                                       _tl1133411396_
                                       _e1133511399_
                                       _hd1133611402_
                                       _tl1133711404_
                                       _e1133811407_
                                       _hd1133911410_
                                       _tl1134011412_
                                       _e1134111415_
                                       _hd1134211418_
                                       _tl1134311420_
                                       _e1134411423_
                                       _hd1134511426_
                                       _tl1134611428_)
                                (if (gx#stx-pair? _tl1134011412_)
                                    (let ((_e1134711431_
                                           (gx#stx-e _tl1134011412_)))
                                      (let ((_tl1134911436_
                                             (##cdr _e1134711431_))
                                            (_hd1134811434_
                                             (##car _e1134711431_)))
                                        (if (gx#stx-null? _tl1134911436_)
                                            (if (gx#stx-null? _tl1132511372_)
                                                (___kont1484014841_
                                                 _hd1134511426_
                                                 _hd1133611402_
                                                 _hd1132111362_)
                                                (_g1123011354_))
                                            (_g1123011354_))))
                                    (_g1123011354_))))
                             (___match1486714868_
                              (lambda (_e1128111477_
                                       _hd1128211480_
                                       _tl1128311482_
                                       ___splice1483814839_
                                       _target1128411485_
                                       _tl1128611487_)
                                (letrec ((_loop1128711490_
                                          (lambda (_hd1128511493_
                                                   _arg1129111495_)
                                            (if (gx#stx-pair? _hd1128511493_)
                                                (let ((_e1128811498_
                                                       (gx#stx-e
                                                        _hd1128511493_)))
                                                  (let ((_lp-tl1129011503_
                                                         (##cdr _e1128811498_))
                                                        (_lp-hd1128911501_
                                                         (##car _e1128811498_)))
                                                    (_loop1128711490_
                                                     _lp-tl1129011503_
                                                     (cons _lp-hd1128911501_
                                                           _arg1129111495_))))
                                                (let ((_arg1129211506_
                                                       (reverse _arg1129111495_)))
                                                  (if (gx#stx-pair?
                                                       _tl1128311482_)
                                                      (let ((_e1129311509_
                                                             (gx#stx-e
                                                              _tl1128311482_)))
                                                        (let ((_tl1129511514_
                                                               (##cdr _e1129311509_))
                                                              (_hd1129411512_
                                                               (##car _e1129311509_)))
                                                          (if (gx#stx-pair?
                                                               _hd1129411512_)
                                                              (let ((_e1129611517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1129411512_)))
                        (let ((_tl1129811522_ (##cdr _e1129611517_))
                              (_hd1129711520_ (##car _e1129611517_)))
                          (if (gx#identifier? _hd1129711520_)
                              (if (gx#stx-eq? '%#call _hd1129711520_)
                                  (if (gx#stx-pair? _tl1129811522_)
                                      (let ((_e1129911525_
                                             (gx#stx-e _tl1129811522_)))
                                        (let ((_tl1130111530_
                                               (##cdr _e1129911525_))
                                              (_hd1130011528_
                                               (##car _e1129911525_)))
                                          (if (gx#stx-pair? _hd1130011528_)
                                              (let ((_e1130211533_
                                                     (gx#stx-e
                                                      _hd1130011528_)))
                                                (let ((_tl1130411538_
                                                       (##cdr _e1130211533_))
                                                      (_hd1130311536_
                                                       (##car _e1130211533_)))
                                                  (if (gx#identifier?
                                                       _hd1130311536_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1130311536_)
                                                          (if (gx#stx-pair?
                                                               _tl1130411538_)
                                                              (let ((_e1130511541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1130411538_)))
                        (let ((_tl1130711546_ (##cdr _e1130511541_))
                              (_hd1130611544_ (##car _e1130511541_)))
                          (if (gx#stx-null? _tl1130711546_)
                              (if (gx#stx-pair? _tl1130111530_)
                                  (let ((_e1130811549_
                                         (gx#stx-e _tl1130111530_)))
                                    (let ((_tl1131011554_
                                           (##cdr _e1130811549_))
                                          (_hd1130911552_
                                           (##car _e1130811549_)))
                                      (if (gx#stx-pair? _hd1130911552_)
                                          (let ((_e1131111557_
                                                 (gx#stx-e _hd1130911552_)))
                                            (let ((_tl1131311562_
                                                   (##cdr _e1131111557_))
                                                  (_hd1131211560_
                                                   (##car _e1131111557_)))
                                              (if (gx#identifier?
                                                   _hd1131211560_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1131211560_)
                                                      (if (gx#stx-pair?
                                                           _tl1131311562_)
                                                          (let ((_e1131411565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1131311562_)))
                    (let ((_tl1131611570_ (##cdr _e1131411565_))
                          (_hd1131511568_ (##car _e1131411565_)))
                      (if (gx#stx-null? _tl1131611570_)
                          (if (gx#stx-null? _tl1129511514_)
                              (___kont1483614837_
                               _hd1131511568_
                               _hd1130611544_
                               _tl1128611487_
                               _arg1129211506_)
                              (___match1493714938_
                               _e1128111477_
                               _hd1128211480_
                               _tl1128311482_
                               _e1129311509_
                               _hd1129411512_
                               _tl1129511514_
                               _e1129611517_
                               _hd1129711520_
                               _tl1129811522_
                               _e1129911525_
                               _hd1130011528_
                               _tl1130111530_
                               _e1130211533_
                               _hd1130311536_
                               _tl1130411538_
                               _e1130511541_
                               _hd1130611544_
                               _tl1130711546_
                               _e1130811549_
                               _hd1130911552_
                               _tl1131011554_
                               _e1131111557_
                               _hd1131211560_
                               _tl1131311562_
                               _e1131411565_
                               _hd1131511568_
                               _tl1131611570_))
                          (_g1123011354_))))
                  (_g1123011354_))
              (_g1123011354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1123011354_))))
                                          (_g1123011354_))))
                                  (_g1123011354_))
                              (_g1123011354_))))
                      (_g1123011354_))
                  (_g1123011354_))
              (_g1123011354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1123011354_))))
                                      (_g1123011354_))
                                  (_g1123011354_))
                              (_g1123011354_))))
                      (_g1123011354_))))
              (_g1123011354_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1128711490_ _target1128411485_ '()))))
                             (___match1485514856_
                              (lambda (_e1123511613_
                                       _hd1123611616_
                                       _tl1123711618_
                                       ___splice1483214833_
                                       _target1123811621_
                                       _tl1124011623_)
                                (letrec ((_loop1124111626_
                                          (lambda (_hd1123911629_
                                                   _arg1124511631_)
                                            (if (gx#stx-pair? _hd1123911629_)
                                                (let ((_e1124211634_
                                                       (gx#stx-e
                                                        _hd1123911629_)))
                                                  (let ((_lp-tl1124411639_
                                                         (##cdr _e1124211634_))
                                                        (_lp-hd1124311637_
                                                         (##car _e1124211634_)))
                                                    (_loop1124111626_
                                                     _lp-tl1124411639_
                                                     (cons _lp-hd1124311637_
                                                           _arg1124511631_))))
                                                (let ((_arg1124611642_
                                                       (reverse _arg1124511631_)))
                                                  (if (gx#stx-pair?
                                                       _tl1123711618_)
                                                      (let ((_e1124711645_
                                                             (gx#stx-e
                                                              _tl1123711618_)))
                                                        (let ((_tl1124911650_
                                                               (##cdr _e1124711645_))
                                                              (_hd1124811648_
                                                               (##car _e1124711645_)))
                                                          (if (gx#stx-pair?
                                                               _hd1124811648_)
                                                              (let ((_e1125011653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1124811648_)))
                        (let ((_tl1125211658_ (##cdr _e1125011653_))
                              (_hd1125111656_ (##car _e1125011653_)))
                          (if (gx#identifier? _hd1125111656_)
                              (if (gx#stx-eq? '%#call _hd1125111656_)
                                  (if (gx#stx-pair? _tl1125211658_)
                                      (let ((_e1125311661_
                                             (gx#stx-e _tl1125211658_)))
                                        (let ((_tl1125511666_
                                               (##cdr _e1125311661_))
                                              (_hd1125411664_
                                               (##car _e1125311661_)))
                                          (if (gx#stx-pair? _hd1125411664_)
                                              (let ((_e1125611669_
                                                     (gx#stx-e
                                                      _hd1125411664_)))
                                                (let ((_tl1125811674_
                                                       (##cdr _e1125611669_))
                                                      (_hd1125711672_
                                                       (##car _e1125611669_)))
                                                  (if (gx#identifier?
                                                       _hd1125711672_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1125711672_)
                                                          (if (gx#stx-pair?
                                                               _tl1125811674_)
                                                              (let ((_e1125911677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1125811674_)))
                        (let ((_tl1126111682_ (##cdr _e1125911677_))
                              (_hd1126011680_ (##car _e1125911677_)))
                          (if (gx#stx-null? _tl1126111682_)
                              (if (gx#stx-pair/null? _tl1125511666_)
                                  (let ((___splice1483414835_
                                         (gx#syntax-split-splice
                                          _tl1125511666_
                                          '0)))
                                    (let ((_tl1126411687_
                                           (##vector-ref
                                            ___splice1483414835_
                                            '1))
                                          (_target1126211685_
                                           (##vector-ref
                                            ___splice1483414835_
                                            '0)))
                                      (if (gx#stx-null? _tl1126411687_)
                                          (letrec ((_loop1126511690_
                                                    (lambda (_hd1126311693_
                                                             _xarg1126911695_)
                                                      (if (gx#stx-pair?
                                                           _hd1126311693_)
                                                          (let ((_e1126611698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1126311693_)))
                    (let ((_lp-tl1126811703_ (##cdr _e1126611698_))
                          (_lp-hd1126711701_ (##car _e1126611698_)))
                      (if (gx#stx-pair? _lp-hd1126711701_)
                          (let ((_e1127111706_ (gx#stx-e _lp-hd1126711701_)))
                            (let ((_tl1127311711_ (##cdr _e1127111706_))
                                  (_hd1127211709_ (##car _e1127111706_)))
                              (if (gx#identifier? _hd1127211709_)
                                  (if (gx#stx-eq? '%#ref _hd1127211709_)
                                      (if (gx#stx-pair? _tl1127311711_)
                                          (let ((_e1127411714_
                                                 (gx#stx-e _tl1127311711_)))
                                            (let ((_tl1127611719_
                                                   (##cdr _e1127411714_))
                                                  (_hd1127511717_
                                                   (##car _e1127411714_)))
                                              (if (gx#stx-null? _tl1127611719_)
                                                  (_loop1126511690_
                                                   _lp-tl1126811703_
                                                   (cons _hd1127511717_
                                                         _xarg1126911695_))
                                                  (___match1486714868_
                                                   _e1123511613_
                                                   _hd1123611616_
                                                   _tl1123711618_
                                                   ___splice1483214833_
                                                   _target1123811621_
                                                   _tl1124011623_))))
                                          (___match1486714868_
                                           _e1123511613_
                                           _hd1123611616_
                                           _tl1123711618_
                                           ___splice1483214833_
                                           _target1123811621_
                                           _tl1124011623_))
                                      (___match1486714868_
                                       _e1123511613_
                                       _hd1123611616_
                                       _tl1123711618_
                                       ___splice1483214833_
                                       _target1123811621_
                                       _tl1124011623_))
                                  (___match1486714868_
                                   _e1123511613_
                                   _hd1123611616_
                                   _tl1123711618_
                                   ___splice1483214833_
                                   _target1123811621_
                                   _tl1124011623_))))
                          (___match1486714868_
                           _e1123511613_
                           _hd1123611616_
                           _tl1123711618_
                           ___splice1483214833_
                           _target1123811621_
                           _tl1124011623_))))
                  (let ((_xarg1127011722_ (reverse _xarg1126911695_)))
                    (if (gx#stx-null? _tl1124911650_)
                        (___kont1483014831_
                         _xarg1127011722_
                         _hd1126011680_
                         _arg1124611642_)
                        (___match1486714868_
                         _e1123511613_
                         _hd1123611616_
                         _tl1123711618_
                         ___splice1483214833_
                         _target1123811621_
                         _tl1124011623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1126511690_
                                             _target1126211685_
                                             '()))
                                          (___match1486714868_
                                           _e1123511613_
                                           _hd1123611616_
                                           _tl1123711618_
                                           ___splice1483214833_
                                           _target1123811621_
                                           _tl1124011623_))))
                                  (___match1486714868_
                                   _e1123511613_
                                   _hd1123611616_
                                   _tl1123711618_
                                   ___splice1483214833_
                                   _target1123811621_
                                   _tl1124011623_))
                              (___match1486714868_
                               _e1123511613_
                               _hd1123611616_
                               _tl1123711618_
                               ___splice1483214833_
                               _target1123811621_
                               _tl1124011623_))))
                      (___match1486714868_
                       _e1123511613_
                       _hd1123611616_
                       _tl1123711618_
                       ___splice1483214833_
                       _target1123811621_
                       _tl1124011623_))
                  (___match1486714868_
                   _e1123511613_
                   _hd1123611616_
                   _tl1123711618_
                   ___splice1483214833_
                   _target1123811621_
                   _tl1124011623_))
              (___match1486714868_
               _e1123511613_
               _hd1123611616_
               _tl1123711618_
               ___splice1483214833_
               _target1123811621_
               _tl1124011623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1486714868_
                                               _e1123511613_
                                               _hd1123611616_
                                               _tl1123711618_
                                               ___splice1483214833_
                                               _target1123811621_
                                               _tl1124011623_))))
                                      (___match1486714868_
                                       _e1123511613_
                                       _hd1123611616_
                                       _tl1123711618_
                                       ___splice1483214833_
                                       _target1123811621_
                                       _tl1124011623_))
                                  (___match1486714868_
                                   _e1123511613_
                                   _hd1123611616_
                                   _tl1123711618_
                                   ___splice1483214833_
                                   _target1123811621_
                                   _tl1124011623_))
                              (___match1486714868_
                               _e1123511613_
                               _hd1123611616_
                               _tl1123711618_
                               ___splice1483214833_
                               _target1123811621_
                               _tl1124011623_))))
                      (___match1486714868_
                       _e1123511613_
                       _hd1123611616_
                       _tl1123711618_
                       ___splice1483214833_
                       _target1123811621_
                       _tl1124011623_))))
              (___match1486714868_
               _e1123511613_
               _hd1123611616_
               _tl1123711618_
               ___splice1483214833_
               _target1123811621_
               _tl1124011623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1124111626_ _target1123811621_ '())))))
                        (if (gx#stx-pair? ___stx1482814829_)
                            (let ((_e1123511613_ (gx#stx-e ___stx1482814829_)))
                              (let ((_tl1123711618_ (##cdr _e1123511613_))
                                    (_hd1123611616_ (##car _e1123511613_)))
                                (if (gx#stx-pair/null? _hd1123611616_)
                                    (let ((___splice1483214833_
                                           (gx#syntax-split-splice
                                            _hd1123611616_
                                            '0)))
                                      (let ((_tl1124011623_
                                             (##vector-ref
                                              ___splice1483214833_
                                              '1))
                                            (_target1123811621_
                                             (##vector-ref
                                              ___splice1483214833_
                                              '0)))
                                        (if (gx#stx-null? _tl1124011623_)
                                            (___match1485514856_
                                             _e1123511613_
                                             _hd1123611616_
                                             _tl1123711618_
                                             ___splice1483214833_
                                             _target1123811621_
                                             _tl1124011623_)
                                            (___match1486714868_
                                             _e1123511613_
                                             _hd1123611616_
                                             _tl1123711618_
                                             ___splice1483214833_
                                             _target1123811621_
                                             _tl1124011623_))))
                                    (if (gx#stx-pair? _tl1123711618_)
                                        (let ((_e1132311367_
                                               (gx#stx-e _tl1123711618_)))
                                          (let ((_tl1132511372_
                                                 (##cdr _e1132311367_))
                                                (_hd1132411370_
                                                 (##car _e1132311367_)))
                                            (if (gx#stx-pair? _hd1132411370_)
                                                (let ((_e1132611375_
                                                       (gx#stx-e
                                                        _hd1132411370_)))
                                                  (let ((_tl1132811380_
                                                         (##cdr _e1132611375_))
                                                        (_hd1132711378_
                                                         (##car _e1132611375_)))
                                                    (if (gx#identifier?
                                                         _hd1132711378_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1132711378_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1132811380_)
                        (let ((_e1132911383_ (gx#stx-e _tl1132811380_)))
                          (let ((_tl1133111388_ (##cdr _e1132911383_))
                                (_hd1133011386_ (##car _e1132911383_)))
                            (if (gx#stx-pair? _hd1133011386_)
                                (let ((_e1133211391_
                                       (gx#stx-e _hd1133011386_)))
                                  (let ((_tl1133411396_ (##cdr _e1133211391_))
                                        (_hd1133311394_ (##car _e1133211391_)))
                                    (if (gx#identifier? _hd1133311394_)
                                        (if (gx#stx-eq? '%#ref _hd1133311394_)
                                            (if (gx#stx-pair? _tl1133411396_)
                                                (let ((_e1133511399_
                                                       (gx#stx-e
                                                        _tl1133411396_)))
                                                  (let ((_tl1133711404_
                                                         (##cdr _e1133511399_))
                                                        (_hd1133611402_
                                                         (##car _e1133511399_)))
                                                    (if (gx#stx-null?
                                                         _tl1133711404_)
                                                        (if (gx#stx-pair?
                                                             _tl1133111388_)
                                                            (let ((_e1133811407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1133111388_)))
                      (let ((_tl1134011412_ (##cdr _e1133811407_))
                            (_hd1133911410_ (##car _e1133811407_)))
                        (if (gx#stx-pair? _hd1133911410_)
                            (let ((_e1134111415_ (gx#stx-e _hd1133911410_)))
                              (let ((_tl1134311420_ (##cdr _e1134111415_))
                                    (_hd1134211418_ (##car _e1134111415_)))
                                (if (gx#identifier? _hd1134211418_)
                                    (if (gx#stx-eq? '%#ref _hd1134211418_)
                                        (if (gx#stx-pair? _tl1134311420_)
                                            (let ((_e1134411423_
                                                   (gx#stx-e _tl1134311420_)))
                                              (let ((_tl1134611428_
                                                     (##cdr _e1134411423_))
                                                    (_hd1134511426_
                                                     (##car _e1134411423_)))
                                                (if (gx#stx-null?
                                                     _tl1134611428_)
                                                    (if (gx#stx-pair?
                                                         _tl1134011412_)
                                                        (let ((_e1134711431_
                                                               (gx#stx-e
                                                                _tl1134011412_)))
                                                          (let ((_tl1134911436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1134711431_))
                        (_hd1134811434_ (##car _e1134711431_)))
                    (if (gx#stx-null? _tl1134911436_)
                        (if (gx#stx-null? _tl1132511372_)
                            (___kont1484014841_
                             _hd1134511426_
                             _hd1133611402_
                             _hd1123611616_)
                            (_g1123011354_))
                        (_g1123011354_))))
                (_g1123011354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1123011354_))))
                                            (_g1123011354_))
                                        (_g1123011354_))
                                    (_g1123011354_))))
                            (_g1123011354_))))
                    (_g1123011354_))
                (_g1123011354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1123011354_))
                                            (_g1123011354_))
                                        (_g1123011354_))))
                                (_g1123011354_))))
                        (_g1123011354_))
                    (_g1123011354_))
                (_g1123011354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1123011354_))))
                                        (_g1123011354_)))))
                            (_g1123011354_)))))))
               (_generate111076_
                (lambda (_args11211_ _arglen11212_ _hd11213_ _body11214_)
                  (let* ((_len11216_ (gx#stx-length _hd11213_))
                         (_condition11218_
                          (if (gx#stx-list? _hd11213_)
                              (cons '##fx=
                                    (cons _arglen11212_ (cons _len11216_ '())))
                              (if (> _len11216_ '0)
                                  (cons '##fx>=
                                        (cons _arglen11212_
                                              (cons _len11216_ '())))
                                  '#t)))
                         (_dispatch11220_
                          (if (_dispatch-case?11074_ _hd11213_ _body11214_)
                              (_dispatch-case-e11075_ _hd11213_ _body11214_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd11213_)
                                          (cons (gxc#compile-e _body11214_)
                                                '()))))))
                    (cons _condition11218_
                          (cons (cons 'apply
                                      (cons _dispatch11220_
                                            (cons _args11211_ '())))
                                '()))))))
        (let* ((_g1107811106_
                (lambda (_g1107911103_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1107911103_)))
               (_g1107711208_
                (lambda (_g1107911109_)
                  (if (gx#stx-pair? _g1107911109_)
                      (let ((_e1108211111_ (gx#stx-e _g1107911109_)))
                        (let ((_hd1108311114_ (##car _e1108211111_))
                              (_tl1108411116_ (##cdr _e1108211111_)))
                          (if (gx#stx-pair/null? _tl1108411116_)
                              (let ((_g15640_
                                     (gx#syntax-split-splice
                                      _tl1108411116_
                                      '0)))
                                (begin
                                  (let ((_g15641_
                                         (if (##values? _g15640_)
                                             (##vector-length _g15640_)
                                             1)))
                                    (if (not (##fx= _g15641_ 2))
                                        (error "Context expects 2 values"
                                               _g15641_)))
                                  (let ((_target1108511119_
                                         (##vector-ref _g15640_ 0))
                                        (_tl1108711121_
                                         (##vector-ref _g15640_ 1)))
                                    (if (gx#stx-null? _tl1108711121_)
                                        (letrec ((_loop1108811124_
                                                  (lambda (_hd1108611127_
                                                           _body1109211129_
                                                           _hd1109311131_)
                                                    (if (gx#stx-pair?
                                                         _hd1108611127_)
                                                        (let ((_e1108911134_
                                                               (gx#stx-e
                                                                _hd1108611127_)))
                                                          (let ((_lp-hd1109011137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1108911134_))
                        (_lp-tl1109111139_ (##cdr _e1108911134_)))
                    (if (gx#stx-pair? _lp-hd1109011137_)
                        (let ((_e1109611142_ (gx#stx-e _lp-hd1109011137_)))
                          (let ((_hd1109711145_ (##car _e1109611142_))
                                (_tl1109811147_ (##cdr _e1109611142_)))
                            (if (gx#stx-pair? _tl1109811147_)
                                (let ((_e1109911150_
                                       (gx#stx-e _tl1109811147_)))
                                  (let ((_hd1110011153_ (##car _e1109911150_))
                                        (_tl1110111155_ (##cdr _e1109911150_)))
                                    (if (gx#stx-null? _tl1110111155_)
                                        (_loop1108811124_
                                         _lp-tl1109111139_
                                         (cons _hd1110011153_ _body1109211129_)
                                         (cons _hd1109711145_ _hd1109311131_))
                                        (_g1107811106_ _g1107911109_))))
                                (_g1107811106_ _g1107911109_))))
                        (_g1107811106_ _g1107911109_))))
                (let ((_body1109411158_ (reverse _body1109211129_))
                      (_hd1109511160_ (reverse _hd1109311131_)))
                  ((lambda (_L11163_ _L11164_)
                     (let ((_args11183_ (gxc#generate-runtime-temporary__0))
                           (_arglen11184_ (gxc#generate-runtime-temporary__0))
                           (_name11185_
                            (let ((_$e11180_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx11072_
                                    '#f)))
                              (if _$e11180_
                                  _$e11180_
                                  ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args11183_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen11184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args11183_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name11185_
                                                               (cons _args11183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g1118611189_ _g1118711191_)
                                        (_generate111076_
                                         _args11183_
                                         _arglen11184_
                                         _g1118611189_
                                         _g1118711191_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1119311196_
                                                         _g1119411198_)
                                                  (cons _g1119311196_
                                                        _g1119411198_))
                                                '()
                                                _L11164_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1120011203_
                                                         _g1120111205_)
                                                  (cons _g1120011203_
                                                        _g1120111205_))
                                                '()
                                                _L11163_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body1109411158_
                   _hd1109511160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1108811124_
                                           _target1108511119_
                                           '()
                                           '()))
                                        (_g1107811106_ _g1107911109_)))))
                              (_g1107811106_ _g1107911109_))))
                      (_g1107811106_ _g1107911109_)))))
          (_g1107711208_ _stx11072_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx10137_ _compiled-body?10138_)
        (letrec ((_generate-simple10140_
                  (lambda (_hd11059_ _body11060_)
                    (_coalesce-let*10141_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd11059_
                      _body11060_
                      _compiled-body?10138_))))
                 (_coalesce-let*10141_
                  (lambda (_code10443_)
                    (let* ((___stx1495014951_ _code10443_)
                           (_g1044810583_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1495014951_))))
                      (let ((___kont1495214953_
                             (lambda (_L11018_ _L11019_ _L11020_)
                               (cons 'let
                                     (cons (cons (cons _L11020_
                                                       (cons _L11019_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1104811051_
                                                              _g1104911053_)
                                                       (cons _g1104811051_
                                                             _g1104911053_))
                                                     '()
                                                     _L11018_))))))
                            (___kont1495614957_
                             (lambda (_L10877_
                                      _L10878_
                                      _L10879_
                                      _L10880_
                                      _L10881_)
                               (cons 'let*
                                     (cons (cons (cons _L10881_
                                                       (cons _L10880_ '()))
                                                 (cons (cons _L10879_
                                                             (cons _L10878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1091710920_
                                                              _g1091810922_)
                                                       (cons _g1091710920_
                                                             _g1091810922_))
                                                     '()
                                                     _L10877_))))))
                            (___kont1496014961_
                             (lambda (_L10707_ _L10708_ _L10709_ _L10710_)
                               (cons 'let*
                                     (cons (cons (cons _L10710_
                                                       (cons _L10709_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1074510748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1074610750_)
                     (cons _g1074510748_ _g1074610750_))
                   '()
                   _L10708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1075210755_
                                                              _g1075310757_)
                                                       (cons _g1075210755_
                                                             _g1075310757_))
                                                     '()
                                                     _L10707_))))))
                            (___kont1496614967_ (lambda () _code10443_)))
                        (let* ((___match1519515196_
                                (lambda (_e1053710595_
                                         _hd1053810598_
                                         _tl1053910600_
                                         _e1054010603_
                                         _hd1054110606_
                                         _tl1054210608_
                                         _e1054310611_
                                         _hd1054410614_
                                         _tl1054510616_
                                         _e1054610619_
                                         _hd1054710622_
                                         _tl1054810624_
                                         _e1054910627_
                                         _hd1055010630_
                                         _tl1055110632_
                                         _e1055210635_
                                         _hd1055310638_
                                         _tl1055410640_
                                         _e1055510643_
                                         _hd1055610646_
                                         _tl1055710648_
                                         _e1055810651_
                                         _hd1055910654_
                                         _tl1056010656_
                                         ___splice1496214963_
                                         _target1056110659_
                                         _tl1056310661_)
                                  (letrec ((_loop1056410664_
                                            (lambda (_hd1056210667_
                                                     _bind1056810669_)
                                              (if (gx#stx-pair? _hd1056210667_)
                                                  (let ((_e1056510672_
                                                         (gx#stx-e
                                                          _hd1056210667_)))
                                                    (let ((_lp-tl1056710677_
                                                           (##cdr _e1056510672_))
                                                          (_lp-hd1056610675_
                                                           (##car _e1056510672_)))
                                                      (_loop1056410664_
                                                       _lp-tl1056710677_
                                                       (cons _lp-hd1056610675_
                                                             _bind1056810669_))))
                                                  (let ((_bind1056910680_
                                                         (reverse _bind1056810669_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl1056010656_)
                                                        (let ((___splice1496414965_
                                                               (gx#syntax-split-splice
                                                                _tl1056010656_
                                                                '0)))
                                                          (let ((_tl1057210685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1496414965_ '1))
                        (_target1057010683_
                         (##vector-ref ___splice1496414965_ '0)))
                    (if (gx#stx-null? _tl1057210685_)
                        (letrec ((_loop1057310688_
                                  (lambda (_hd1057110691_ _body1057710693_)
                                    (if (gx#stx-pair? _hd1057110691_)
                                        (let ((_e1057410696_
                                               (gx#stx-e _hd1057110691_)))
                                          (let ((_lp-tl1057610701_
                                                 (##cdr _e1057410696_))
                                                (_lp-hd1057510699_
                                                 (##car _e1057410696_)))
                                            (_loop1057310688_
                                             _lp-tl1057610701_
                                             (cons _lp-hd1057510699_
                                                   _body1057710693_))))
                                        (let ((_body1057810704_
                                               (reverse _body1057710693_)))
                                          (if (gx#stx-null? _tl1055410640_)
                                              (___kont1496014961_
                                               _body1057810704_
                                               _bind1056910680_
                                               _hd1055010630_
                                               _hd1054710622_)
                                              (___kont1496614967_)))))))
                          (_loop1057310688_ _target1057010683_ '()))
                        (___kont1496614967_))))
                (___kont1496614967_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1056410664_
                                     _target1056110659_
                                     '()))))
                               (___match1512715128_
                                (lambda (_e1049110765_
                                         _hd1049210768_
                                         _tl1049310770_
                                         _e1049410773_
                                         _hd1049510776_
                                         _tl1049610778_
                                         _e1049710781_
                                         _hd1049810784_
                                         _tl1049910786_
                                         _e1050010789_
                                         _hd1050110792_
                                         _tl1050210794_
                                         _e1050310797_
                                         _hd1050410800_
                                         _tl1050510802_
                                         _e1050610805_
                                         _hd1050710808_
                                         _tl1050810810_
                                         _e1050910813_
                                         _hd1051010816_
                                         _tl1051110818_
                                         _e1051210821_
                                         _hd1051310824_
                                         _tl1051410826_
                                         _e1051510829_
                                         _hd1051610832_
                                         _tl1051710834_
                                         _e1051810837_
                                         _hd1051910840_
                                         _tl1052010842_
                                         _e1052110845_
                                         _hd1052210848_
                                         _tl1052310850_
                                         ___splice1495814959_
                                         _target1052410853_
                                         _tl1052610855_)
                                  (letrec ((_loop1052710858_
                                            (lambda (_hd1052510861_
                                                     _body1053110863_)
                                              (if (gx#stx-pair? _hd1052510861_)
                                                  (let ((_e1052810866_
                                                         (gx#stx-e
                                                          _hd1052510861_)))
                                                    (let ((_lp-tl1053010871_
                                                           (##cdr _e1052810866_))
                                                          (_lp-hd1052910869_
                                                           (##car _e1052810866_)))
                                                      (_loop1052710858_
                                                       _lp-tl1053010871_
                                                       (cons _lp-hd1052910869_
                                                             _body1053110863_))))
                                                  (let ((_body1053210874_
                                                         (reverse _body1053110863_)))
                                                    (if (gx#stx-null?
                                                         _tl1050810810_)
                                                        (___kont1495614957_
                                                         _body1053210874_
                                                         _hd1052210848_
                                                         _hd1051910840_
                                                         _hd1050410800_
                                                         _hd1050110792_)
                                                        (___kont1496614967_)))))))
                                    (_loop1052710858_
                                     _target1052410853_
                                     '()))))
                               (___match1503715038_
                                (lambda (_e1045310930_
                                         _hd1045410933_
                                         _tl1045510935_
                                         _e1045610938_
                                         _hd1045710941_
                                         _tl1045810943_
                                         _e1045910946_
                                         _hd1046010949_
                                         _tl1046110951_
                                         _e1046210954_
                                         _hd1046310957_
                                         _tl1046410959_
                                         _e1046510962_
                                         _hd1046610965_
                                         _tl1046710967_
                                         _e1046810970_
                                         _hd1046910973_
                                         _tl1047010975_
                                         _e1047110978_
                                         _hd1047210981_
                                         _tl1047310983_
                                         _e1047410986_
                                         _hd1047510989_
                                         _tl1047610991_
                                         ___splice1495414955_
                                         _target1047710994_
                                         _tl1047910996_)
                                  (letrec ((_loop1048010999_
                                            (lambda (_hd1047811002_
                                                     _body1048411004_)
                                              (if (gx#stx-pair? _hd1047811002_)
                                                  (let ((_e1048111007_
                                                         (gx#stx-e
                                                          _hd1047811002_)))
                                                    (let ((_lp-tl1048311012_
                                                           (##cdr _e1048111007_))
                                                          (_lp-hd1048211010_
                                                           (##car _e1048111007_)))
                                                      (_loop1048010999_
                                                       _lp-tl1048311012_
                                                       (cons _lp-hd1048211010_
                                                             _body1048411004_))))
                                                  (let ((_body1048511015_
                                                         (reverse _body1048411004_)))
                                                    (if (gx#stx-null?
                                                         _tl1047010975_)
                                                        (___kont1495214953_
                                                         _body1048511015_
                                                         _hd1046610965_
                                                         _hd1046310957_)
                                                        (___kont1496614967_)))))))
                                    (_loop1048010999_
                                     _target1047710994_
                                     '())))))
                          (if (gx#stx-pair? ___stx1495014951_)
                              (let ((_e1045310930_
                                     (gx#stx-e ___stx1495014951_)))
                                (let ((_tl1045510935_ (##cdr _e1045310930_))
                                      (_hd1045410933_ (##car _e1045310930_)))
                                  (if (gx#identifier? _hd1045410933_)
                                      (if (gx#stx-eq? 'let _hd1045410933_)
                                          (if (gx#stx-pair? _tl1045510935_)
                                              (let ((_e1045610938_
                                                     (gx#stx-e
                                                      _tl1045510935_)))
                                                (let ((_tl1045810943_
                                                       (##cdr _e1045610938_))
                                                      (_hd1045710941_
                                                       (##car _e1045610938_)))
                                                  (if (gx#stx-pair?
                                                       _hd1045710941_)
                                                      (let ((_e1045910946_
                                                             (gx#stx-e
                                                              _hd1045710941_)))
                                                        (let ((_tl1046110951_
                                                               (##cdr _e1045910946_))
                                                              (_hd1046010949_
                                                               (##car _e1045910946_)))
                                                          (if (gx#stx-pair?
                                                               _hd1046010949_)
                                                              (let ((_e1046210954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1046010949_)))
                        (let ((_tl1046410959_ (##cdr _e1046210954_))
                              (_hd1046310957_ (##car _e1046210954_)))
                          (if (gx#stx-pair? _tl1046410959_)
                              (let ((_e1046510962_ (gx#stx-e _tl1046410959_)))
                                (let ((_tl1046710967_ (##cdr _e1046510962_))
                                      (_hd1046610965_ (##car _e1046510962_)))
                                  (if (gx#stx-null? _tl1046710967_)
                                      (if (gx#stx-null? _tl1046110951_)
                                          (if (gx#stx-pair? _tl1045810943_)
                                              (let ((_e1046810970_
                                                     (gx#stx-e
                                                      _tl1045810943_)))
                                                (let ((_tl1047010975_
                                                       (##cdr _e1046810970_))
                                                      (_hd1046910973_
                                                       (##car _e1046810970_)))
                                                  (if (gx#stx-pair?
                                                       _hd1046910973_)
                                                      (let ((_e1047110978_
                                                             (gx#stx-e
                                                              _hd1046910973_)))
                                                        (let ((_tl1047310983_
                                                               (##cdr _e1047110978_))
                                                              (_hd1047210981_
                                                               (##car _e1047110978_)))
                                                          (if (gx#identifier?
                                                               _hd1047210981_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd1047210981_)
                          (if (gx#stx-pair? _tl1047310983_)
                              (let ((_e1047410986_ (gx#stx-e _tl1047310983_)))
                                (let ((_tl1047610991_ (##cdr _e1047410986_))
                                      (_hd1047510989_ (##car _e1047410986_)))
                                  (if (gx#stx-null? _hd1047510989_)
                                      (if (gx#stx-pair/null? _tl1047610991_)
                                          (let ((___splice1495414955_
                                                 (gx#syntax-split-splice
                                                  _tl1047610991_
                                                  '0)))
                                            (let ((_tl1047910996_
                                                   (##vector-ref
                                                    ___splice1495414955_
                                                    '1))
                                                  (_target1047710994_
                                                   (##vector-ref
                                                    ___splice1495414955_
                                                    '0)))
                                              (if (gx#stx-null? _tl1047910996_)
                                                  (___match1503715038_
                                                   _e1045310930_
                                                   _hd1045410933_
                                                   _tl1045510935_
                                                   _e1045610938_
                                                   _hd1045710941_
                                                   _tl1045810943_
                                                   _e1045910946_
                                                   _hd1046010949_
                                                   _tl1046110951_
                                                   _e1046210954_
                                                   _hd1046310957_
                                                   _tl1046410959_
                                                   _e1046510962_
                                                   _hd1046610965_
                                                   _tl1046710967_
                                                   _e1046810970_
                                                   _hd1046910973_
                                                   _tl1047010975_
                                                   _e1047110978_
                                                   _hd1047210981_
                                                   _tl1047310983_
                                                   _e1047410986_
                                                   _hd1047510989_
                                                   _tl1047610991_
                                                   ___splice1495414955_
                                                   _target1047710994_
                                                   _tl1047910996_)
                                                  (___kont1496614967_))))
                                          (___kont1496614967_))
                                      (if (gx#stx-pair? _hd1047510989_)
                                          (let ((_e1051510829_
                                                 (gx#stx-e _hd1047510989_)))
                                            (let ((_tl1051710834_
                                                   (##cdr _e1051510829_))
                                                  (_hd1051610832_
                                                   (##car _e1051510829_)))
                                              (if (gx#stx-pair? _hd1051610832_)
                                                  (let ((_e1051810837_
                                                         (gx#stx-e
                                                          _hd1051610832_)))
                                                    (let ((_tl1052010842_
                                                           (##cdr _e1051810837_))
                                                          (_hd1051910840_
                                                           (##car _e1051810837_)))
                                                      (if (gx#stx-pair?
                                                           _tl1052010842_)
                                                          (let ((_e1052110845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1052010842_)))
                    (let ((_tl1052310850_ (##cdr _e1052110845_))
                          (_hd1052210848_ (##car _e1052110845_)))
                      (if (gx#stx-null? _tl1052310850_)
                          (if (gx#stx-null? _tl1051710834_)
                              (if (gx#stx-pair/null? _tl1047610991_)
                                  (let ((___splice1495814959_
                                         (gx#syntax-split-splice
                                          _tl1047610991_
                                          '0)))
                                    (let ((_tl1052610855_
                                           (##vector-ref
                                            ___splice1495814959_
                                            '1))
                                          (_target1052410853_
                                           (##vector-ref
                                            ___splice1495814959_
                                            '0)))
                                      (if (gx#stx-null? _tl1052610855_)
                                          (___match1512715128_
                                           _e1045310930_
                                           _hd1045410933_
                                           _tl1045510935_
                                           _e1045610938_
                                           _hd1045710941_
                                           _tl1045810943_
                                           _e1045910946_
                                           _hd1046010949_
                                           _tl1046110951_
                                           _e1046210954_
                                           _hd1046310957_
                                           _tl1046410959_
                                           _e1046510962_
                                           _hd1046610965_
                                           _tl1046710967_
                                           _e1046810970_
                                           _hd1046910973_
                                           _tl1047010975_
                                           _e1047110978_
                                           _hd1047210981_
                                           _tl1047310983_
                                           _e1047410986_
                                           _hd1047510989_
                                           _tl1047610991_
                                           _e1051510829_
                                           _hd1051610832_
                                           _tl1051710834_
                                           _e1051810837_
                                           _hd1051910840_
                                           _tl1052010842_
                                           _e1052110845_
                                           _hd1052210848_
                                           _tl1052310850_
                                           ___splice1495814959_
                                           _target1052410853_
                                           _tl1052610855_)
                                          (___kont1496614967_))))
                                  (___kont1496614967_))
                              (___kont1496614967_))
                          (___kont1496614967_))))
                  (___kont1496614967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1496614967_))))
                                          (___kont1496614967_)))))
                              (___kont1496614967_))
                          (if (gx#stx-eq? 'let* _hd1047210981_)
                              (if (gx#stx-pair? _tl1047310983_)
                                  (let ((_e1055810651_
                                         (gx#stx-e _tl1047310983_)))
                                    (let ((_tl1056010656_
                                           (##cdr _e1055810651_))
                                          (_hd1055910654_
                                           (##car _e1055810651_)))
                                      (if (gx#stx-pair/null? _hd1055910654_)
                                          (let ((___splice1496214963_
                                                 (gx#syntax-split-splice
                                                  _hd1055910654_
                                                  '0)))
                                            (let ((_tl1056310661_
                                                   (##vector-ref
                                                    ___splice1496214963_
                                                    '1))
                                                  (_target1056110659_
                                                   (##vector-ref
                                                    ___splice1496214963_
                                                    '0)))
                                              (if (gx#stx-null? _tl1056310661_)
                                                  (___match1519515196_
                                                   _e1045310930_
                                                   _hd1045410933_
                                                   _tl1045510935_
                                                   _e1045610938_
                                                   _hd1045710941_
                                                   _tl1045810943_
                                                   _e1045910946_
                                                   _hd1046010949_
                                                   _tl1046110951_
                                                   _e1046210954_
                                                   _hd1046310957_
                                                   _tl1046410959_
                                                   _e1046510962_
                                                   _hd1046610965_
                                                   _tl1046710967_
                                                   _e1046810970_
                                                   _hd1046910973_
                                                   _tl1047010975_
                                                   _e1047110978_
                                                   _hd1047210981_
                                                   _tl1047310983_
                                                   _e1055810651_
                                                   _hd1055910654_
                                                   _tl1056010656_
                                                   ___splice1496214963_
                                                   _target1056110659_
                                                   _tl1056310661_)
                                                  (___kont1496614967_))))
                                          (___kont1496614967_))))
                                  (___kont1496614967_))
                              (___kont1496614967_)))
                      (___kont1496614967_))))
              (___kont1496614967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1496614967_))
                                          (___kont1496614967_))
                                      (___kont1496614967_))))
                              (___kont1496614967_))))
                      (___kont1496614967_))))
              (___kont1496614967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1496614967_))
                                          (___kont1496614967_))
                                      (___kont1496614967_))))
                              (___kont1496614967_)))))))
                 (_generate-values10142_
                  (lambda (_hd10256_ _body10257_)
                    (let _lp10259_ ((_rest10261_ _hd10256_)
                                    (_bind10262_ '())
                                    (_check10263_ '())
                                    (_post10264_ '()))
                      (let* ((___stx1524215243_ _rest10261_)
                             (_g1026710278_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1524215243_))))
                        (let ((___kont1524415245_
                               (lambda (_L10305_ _L10306_)
                                 (let* ((___stx1519815199_ _L10306_)
                                        (_g1032110346_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1519815199_))))
                                   (let ((___kont1520015201_
                                          (lambda (_L10419_ _L10420_)
                                            (let ((_eid10434_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L10420_))
                                                  (_expr10435_
                                                   (gxc#compile-e _L10419_)))
                                              (_lp10259_
                                               _L10305_
                                               (cons (cons _eid10434_
                                                           (cons _expr10435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10262_)
                                               _check10263_
                                               _post10264_))))
                                         (___kont1520215203_
                                          (lambda (_L10367_ _L10368_)
                                            (let* ((_vals10381_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values10383_
                                                    (gxc#generate-runtime-check-values
                                                     _vals10381_
                                                     _L10368_
                                                     _L10367_))
                                                   (_refs10385_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals10381_
                                                     _L10368_))
                                                   (_expr10387_
                                                    (gxc#compile-e _L10367_)))
                                              (_lp10259_
                                               _L10305_
                                               (cons (cons _vals10381_
                                                           (cons _expr10387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10262_)
                                               (cons _check-values10383_
                                                     _check10263_)
                                               (cons _refs10385_
                                                     _post10264_))))))
                                     (if (gx#stx-pair? ___stx1519815199_)
                                         (let ((_e1032510395_
                                                (gx#stx-e ___stx1519815199_)))
                                           (let ((_tl1032710400_
                                                  (##cdr _e1032510395_))
                                                 (_hd1032610398_
                                                  (##car _e1032510395_)))
                                             (if (gx#stx-pair? _hd1032610398_)
                                                 (let ((_e1032810403_
                                                        (gx#stx-e
                                                         _hd1032610398_)))
                                                   (let ((_tl1033010408_
                                                          (##cdr _e1032810403_))
                                                         (_hd1032910406_
                                                          (##car _e1032810403_)))
                                                     (if (gx#stx-null?
                                                          _tl1033010408_)
                                                         (if (gx#stx-pair?
                                                              _tl1032710400_)
                                                             (let ((_e1033110411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1032710400_)))
                       (let ((_tl1033310416_ (##cdr _e1033110411_))
                             (_hd1033210414_ (##car _e1033110411_)))
                         (if (gx#stx-null? _tl1033310416_)
                             (___kont1520015201_ _hd1033210414_ _hd1032910406_)
                             (_g1032110346_))))
                     (_g1032110346_))
                 (if (gx#stx-pair? _tl1032710400_)
                     (let ((_e1033910359_ (gx#stx-e _tl1032710400_)))
                       (let ((_tl1034110364_ (##cdr _e1033910359_))
                             (_hd1034010362_ (##car _e1033910359_)))
                         (if (gx#stx-null? _tl1034110364_)
                             (___kont1520215203_ _hd1034010362_ _hd1032610398_)
                             (_g1032110346_))))
                     (_g1032110346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1032710400_)
                                                     (let ((_e1033910359_
                                                            (gx#stx-e
                                                             _tl1032710400_)))
                                                       (let ((_tl1034110364_
                                                              (##cdr _e1033910359_))
                                                             (_hd1034010362_
                                                              (##car _e1033910359_)))
                                                         (if (gx#stx-null?
                                                              _tl1034110364_)
                                                             (___kont1520215203_
                                                              _hd1034010362_
                                                              _hd1032610398_)
                                                             (_g1032110346_))))
                                                     (_g1032110346_)))))
                                         (_g1032110346_))))))
                              (___kont1524615247_
                               (lambda ()
                                 (let* ((_body10285_
                                         (if _compiled-body?10138_
                                             _body10257_
                                             (gxc#compile-e _body10257_)))
                                        (_body10287_
                                         (_generate-values-post10143_
                                          _post10264_
                                          _body10285_))
                                        (_body10289_
                                         (_generate-values-check10144_
                                          _check10263_
                                          _body10287_)))
                                   (cons 'let
                                         (cons (reverse _bind10262_)
                                               (cons _body10289_ '())))))))
                          (if (gx#stx-pair? ___stx1524215243_)
                              (let ((_e1027110297_
                                     (gx#stx-e ___stx1524215243_)))
                                (let ((_tl1027310302_ (##cdr _e1027110297_))
                                      (_hd1027210300_ (##car _e1027110297_)))
                                  (___kont1524415245_
                                   _tl1027310302_
                                   _hd1027210300_)))
                              (___kont1524615247_)))))))
                 (_generate-values-post10143_
                  (lambda (_post10215_ _body10216_)
                    (let _lp10218_ ((_rest10220_ _post10215_)
                                    (_body10221_ _body10216_))
                      (let* ((_rest1022210230_ _rest10220_)
                             (_else1022410238_ (lambda () _body10221_))
                             (_K1022610244_
                              (lambda (_rest10241_ _bind10242_)
                                (_lp10218_
                                 _rest10241_
                                 (cons 'let
                                       (cons _bind10242_
                                             (cons _body10221_ '())))))))
                        (if (##pair? _rest1022210230_)
                            (let ((_hd1022710247_ (##car _rest1022210230_))
                                  (_tl1022810249_ (##cdr _rest1022210230_)))
                              (let* ((_bind10252_ _hd1022710247_)
                                     (_rest10254_ _tl1022810249_))
                                (_K1022610244_ _rest10254_ _bind10252_)))
                            (_else1022410238_))))))
                 (_generate-values-check10144_
                  (lambda (_check10212_ _body10213_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10213_ '())
                                  (reverse _check10212_))))))
          (let* ((_g1014610163_
                  (lambda (_g1014710160_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1014710160_)))
                 (_g1014510209_
                  (lambda (_g1014710166_)
                    (if (gx#stx-pair? _g1014710166_)
                        (let ((_e1015010168_ (gx#stx-e _g1014710166_)))
                          (let ((_hd1015110171_ (##car _e1015010168_))
                                (_tl1015210173_ (##cdr _e1015010168_)))
                            (if (gx#stx-pair? _tl1015210173_)
                                (let ((_e1015310176_
                                       (gx#stx-e _tl1015210173_)))
                                  (let ((_hd1015410179_ (##car _e1015310176_))
                                        (_tl1015510181_ (##cdr _e1015310176_)))
                                    (if (gx#stx-pair? _tl1015510181_)
                                        (let ((_e1015610184_
                                               (gx#stx-e _tl1015510181_)))
                                          (let ((_hd1015710187_
                                                 (##car _e1015610184_))
                                                (_tl1015810189_
                                                 (##cdr _e1015610184_)))
                                            (if (gx#stx-null? _tl1015810189_)
                                                ((lambda (_L10192_ _L10193_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10193_)
                                                       (_generate-simple10140_
                                                        _L10193_
                                                        _L10192_)
                                                       (_generate-values10142_
                                                        _L10193_
                                                        _L10192_)))
                                                 _hd1015710187_
                                                 _hd1015410179_)
                                                (_g1014610163_
                                                 _g1014710166_))))
                                        (_g1014610163_ _g1014710166_))))
                                (_g1014610163_ _g1014710166_))))
                        (_g1014610163_ _g1014710166_)))))
            (_g1014510209_ _stx10137_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx11065_)
          (let ((_compiled-body?11067_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx11065_
             _compiled-body?11067_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g15643_
          (let ((_g15642_ (length _g15643_)))
            (cond ((##fx= _g15642_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g15643_))
                  ((##fx= _g15642_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g15643_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g15643_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals10031_ _hd10032_)
      (let _lp10034_ ((_rest10036_ _hd10032_) (_k10037_ '0) (_r10038_ '()))
        (let* ((___stx1525615257_ _rest10036_)
               (_g1004310060_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1525615257_))))
          (let ((___kont1525815259_
                 (lambda (_L10123_)
                   (_lp10034_ _L10123_ (fx+ _k10037_ '1) _r10038_)))
                (___kont1526015261_
                 (lambda (_L10096_ _L10097_)
                   (_lp10034_
                    _L10096_
                    (fx+ _k10037_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L10097_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals10031_
                                       _k10037_
                                       _L10096_)
                                      '()))
                          _r10038_))))
                (___kont1526215263_
                 (lambda (_L10072_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L10072_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals10031_
                                              _k10037_)
                                             '()))
                                 '())
                           _r10038_)))
                (___kont1526415265_ (lambda () (reverse _r10038_))))
            (let ((_g1004110083_
                   (lambda ()
                     (let ((_L10072_ ___stx1525615257_))
                       (if (gx#identifier? _L10072_)
                           (___kont1526215263_ _L10072_)
                           (___kont1526415265_))))))
              (if (gx#stx-pair? ___stx1525615257_)
                  (let ((_e1004610112_ (gx#stx-e ___stx1525615257_)))
                    (let ((_tl1004810117_ (##cdr _e1004610112_))
                          (_hd1004710115_ (##car _e1004610112_)))
                      (if (gx#stx-datum? _hd1004710115_)
                          (let ((_e1004910120_ (gx#stx-e _hd1004710115_)))
                            (if (equal? _e1004910120_ '#f)
                                (___kont1525815259_ _tl1004810117_)
                                (___kont1526015261_
                                 _tl1004810117_
                                 _hd1004710115_)))
                          (___kont1526015261_ _tl1004810117_ _hd1004710115_))))
                  (_g1004110083_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx9713_ _compiled-body?9714_)
        (letrec ((_generate-simple9716_
                  (lambda (_hd10018_ _body10019_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd10018_
                     _body10019_
                     _compiled-body?9714_)))
                 (_generate-values9717_
                  (lambda (_hd9797_ _body9798_)
                    (let _lp9800_ ((_rest9802_ _hd9797_)
                                   (_bind9803_ '())
                                   (_check9804_ '())
                                   (_post9805_ '()))
                      (let* ((___stx1533015331_ _rest9802_)
                             (_g98089819_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1533015331_))))
                        (let ((___kont1533215333_
                               (lambda (_L9846_ _L9847_)
                                 (let* ((___stx1528615287_ _L9847_)
                                        (_g98629887_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1528615287_))))
                                   (let ((___kont1528815289_
                                          (lambda (_L9994_ _L9995_)
                                            (let ((_eid10009_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9995_))
                                                  (_expr10010_
                                                   (gxc#compile-e _L9994_)))
                                              (_lp9800_
                                               _L9846_
                                               (cons (cons _eid10009_
                                                           (cons _expr10010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind9803_)
                                               _check9804_
                                               _post9805_))))
                                         (___kont1529015291_
                                          (lambda (_L9908_ _L9909_)
                                            (let* ((_vals9922_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values9924_
                                                    (gxc#generate-runtime-check-values
                                                     _vals9922_
                                                     _L9909_
                                                     _L9908_))
                                                   (_refs9926_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals9922_
                                                     _L9909_))
                                                   (_expr9928_
                                                    (gxc#compile-e _L9908_)))
                                              (_lp9800_
                                               _L9846_
                                               (foldl1 cons
                                                       (cons (cons _vals9922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr9928_ '()))
                     _bind9803_)
               (map (lambda (_e99309932_)
                      (let* ((_g99349943_ _e99309932_)
                             (_E99369947_
                              (lambda ()
                                (error '"No clause matching" _g99349943_)))
                             (_K99379952_
                              (lambda (_eid9950_)
                                (cons _eid9950_ (cons '#!void '())))))
                        (if (##pair? _g99349943_)
                            (let ((_hd99389955_ (##car _g99349943_))
                                  (_tl99399957_ (##cdr _g99349943_)))
                              (let ((_eid9960_ _hd99389955_))
                                (if (##pair? _tl99399957_)
                                    (let ((_tl99419962_ (##cdr _tl99399957_)))
                                      (if (##null? _tl99419962_)
                                          (_K99379952_ _eid9960_)
                                          (_E99369947_)))
                                    (_E99369947_))))
                            (_E99369947_))))
                    _refs9926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values9924_
                                                     _check9804_)
                                               (foldl1 cons
                                                       _refs9926_
                                                       _post9805_))))))
                                     (if (gx#stx-pair? ___stx1528615287_)
                                         (let ((_e98669970_
                                                (gx#stx-e ___stx1528615287_)))
                                           (let ((_tl98689975_
                                                  (##cdr _e98669970_))
                                                 (_hd98679973_
                                                  (##car _e98669970_)))
                                             (if (gx#stx-pair? _hd98679973_)
                                                 (let ((_e98699978_
                                                        (gx#stx-e
                                                         _hd98679973_)))
                                                   (let ((_tl98719983_
                                                          (##cdr _e98699978_))
                                                         (_hd98709981_
                                                          (##car _e98699978_)))
                                                     (if (gx#stx-null?
                                                          _tl98719983_)
                                                         (if (gx#stx-pair?
                                                              _tl98689975_)
                                                             (let ((_e98729986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl98689975_)))
                       (let ((_tl98749991_ (##cdr _e98729986_))
                             (_hd98739989_ (##car _e98729986_)))
                         (if (gx#stx-null? _tl98749991_)
                             (___kont1528815289_ _hd98739989_ _hd98709981_)
                             (_g98629887_))))
                     (_g98629887_))
                 (if (gx#stx-pair? _tl98689975_)
                     (let ((_e98809900_ (gx#stx-e _tl98689975_)))
                       (let ((_tl98829905_ (##cdr _e98809900_))
                             (_hd98819903_ (##car _e98809900_)))
                         (if (gx#stx-null? _tl98829905_)
                             (___kont1529015291_ _hd98819903_ _hd98679973_)
                             (_g98629887_))))
                     (_g98629887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl98689975_)
                                                     (let ((_e98809900_
                                                            (gx#stx-e
                                                             _tl98689975_)))
                                                       (let ((_tl98829905_
                                                              (##cdr _e98809900_))
                                                             (_hd98819903_
                                                              (##car _e98809900_)))
                                                         (if (gx#stx-null?
                                                              _tl98829905_)
                                                             (___kont1529015291_
                                                              _hd98819903_
                                                              _hd98679973_)
                                                             (_g98629887_))))
                                                     (_g98629887_)))))
                                         (_g98629887_))))))
                              (___kont1533415335_
                               (lambda ()
                                 (let* ((_body9826_
                                         (if _compiled-body?9714_
                                             _body9798_
                                             (gxc#compile-e _body9798_)))
                                        (_body9828_
                                         (_generate-values-post9719_
                                          _post9805_
                                          _body9826_))
                                        (_body9830_
                                         (_generate-values-check9718_
                                          _check9804_
                                          _body9828_)))
                                   (cons 'letrec
                                         (cons (reverse _bind9803_)
                                               (cons _body9830_ '())))))))
                          (if (gx#stx-pair? ___stx1533015331_)
                              (let ((_e98129838_ (gx#stx-e ___stx1533015331_)))
                                (let ((_tl98149843_ (##cdr _e98129838_))
                                      (_hd98139841_ (##car _e98129838_)))
                                  (___kont1533215333_
                                   _tl98149843_
                                   _hd98139841_)))
                              (___kont1533415335_)))))))
                 (_generate-values-check9718_
                  (lambda (_check9794_ _body9795_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9795_ '())
                                  (reverse _check9794_)))))
                 (_generate-values-post9719_
                  (lambda (_post9787_ _body9788_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9788_ '())
                                  (map (lambda (_g97899791_)
                                         (cons 'set! _g97899791_))
                                       (reverse _post9787_)))))))
          (let* ((_g97219738_
                  (lambda (_g97229735_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g97229735_)))
                 (_g97209784_
                  (lambda (_g97229741_)
                    (if (gx#stx-pair? _g97229741_)
                        (let ((_e97259743_ (gx#stx-e _g97229741_)))
                          (let ((_hd97269746_ (##car _e97259743_))
                                (_tl97279748_ (##cdr _e97259743_)))
                            (if (gx#stx-pair? _tl97279748_)
                                (let ((_e97289751_ (gx#stx-e _tl97279748_)))
                                  (let ((_hd97299754_ (##car _e97289751_))
                                        (_tl97309756_ (##cdr _e97289751_)))
                                    (if (gx#stx-pair? _tl97309756_)
                                        (let ((_e97319759_
                                               (gx#stx-e _tl97309756_)))
                                          (let ((_hd97329762_
                                                 (##car _e97319759_))
                                                (_tl97339764_
                                                 (##cdr _e97319759_)))
                                            (if (gx#stx-null? _tl97339764_)
                                                ((lambda (_L9767_ _L9768_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L9768_)
                                                       (_generate-simple9716_
                                                        _L9768_
                                                        _L9767_)
                                                       (_generate-values9717_
                                                        _L9768_
                                                        _L9767_)))
                                                 _hd97329762_
                                                 _hd97299754_)
                                                (_g97219738_ _g97229741_))))
                                        (_g97219738_ _g97229741_))))
                                (_g97219738_ _g97229741_))))
                        (_g97219738_ _g97229741_)))))
            (_g97209784_ _stx9713_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx10024_)
          (let ((_compiled-body?10026_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx10024_
             _compiled-body?10026_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g15645_
          (let ((_g15644_ (length _g15645_)))
            (cond ((##fx= _g15644_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g15645_))
                  ((##fx= _g15644_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g15645_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g15645_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx9295_)
      (letrec ((_generate-values9297_
                (lambda (_hd9540_ _body9541_)
                  (let _lp9543_ ((_rest9545_ _hd9540_) (_bind9546_ '()))
                    (let* ((_rest95479555_ _rest9545_)
                           (_else95499566_
                            (lambda ()
                              (let ((_bind9563_ (reverse _bind9546_))
                                    (_body9564_ (gxc#compile-e _body9541_)))
                                (cons 'letrec*
                                      (cons _bind9563_
                                            (cons _body9564_ '()))))))
                           (_K95519700_
                            (lambda (_rest9569_ _hd-bind9570_)
                              (let* ((___stx1534415345_ _hd-bind9570_)
                                     (_g95739598_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1534415345_))))
                                (let ((___kont1534615347_
                                       (lambda (_L9679_ _L9680_)
                                         (let ((_eid9694_
                                                (gxc#generate-runtime-binding-id*
                                                 _L9680_))
                                               (_expr9695_
                                                (gxc#compile-e _L9679_)))
                                           (_lp9543_
                                            _rest9569_
                                            (cons (cons _eid9694_
                                                        (cons _expr9695_ '()))
                                                  _bind9546_)))))
                                      (___kont1534815349_
                                       (lambda (_L9619_ _L9620_)
                                         (let* ((_vals9639_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp9641_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values9643_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp9641_
                                                  _L9620_
                                                  _L9619_))
                                                (_refs9645_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals9639_
                                                  _L9620_))
                                                (_expr9647_
                                                 (gxc#compile-e _L9619_)))
                                           (_lp9543_
                                            _rest9569_
                                            (foldl1 cons
                                                    (cons (cons _vals9639_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp9641_
                                                      (cons _expr9647_ '()))
                                                '())
                                          (cons _check-values9643_
                                                (cons _tmp9641_ '()))))
                              '()))
                  _bind9546_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs9645_))))))
                                  (if (gx#stx-pair? ___stx1534415345_)
                                      (let ((_e95779655_
                                             (gx#stx-e ___stx1534415345_)))
                                        (let ((_tl95799660_
                                               (##cdr _e95779655_))
                                              (_hd95789658_
                                               (##car _e95779655_)))
                                          (if (gx#stx-pair? _hd95789658_)
                                              (let ((_e95809663_
                                                     (gx#stx-e _hd95789658_)))
                                                (let ((_tl95829668_
                                                       (##cdr _e95809663_))
                                                      (_hd95819666_
                                                       (##car _e95809663_)))
                                                  (if (gx#stx-null?
                                                       _tl95829668_)
                                                      (if (gx#stx-pair?
                                                           _tl95799660_)
                                                          (let ((_e95839671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl95799660_)))
                    (let ((_tl95859676_ (##cdr _e95839671_))
                          (_hd95849674_ (##car _e95839671_)))
                      (if (gx#stx-null? _tl95859676_)
                          (___kont1534615347_ _hd95849674_ _hd95819666_)
                          (_g95739598_))))
                  (_g95739598_))
              (if (gx#stx-pair? _tl95799660_)
                  (let ((_e95919611_ (gx#stx-e _tl95799660_)))
                    (let ((_tl95939616_ (##cdr _e95919611_))
                          (_hd95929614_ (##car _e95919611_)))
                      (if (gx#stx-null? _tl95939616_)
                          (___kont1534815349_ _hd95929614_ _hd95789658_)
                          (_g95739598_))))
                  (_g95739598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl95799660_)
                                                  (let ((_e95919611_
                                                         (gx#stx-e
                                                          _tl95799660_)))
                                                    (let ((_tl95939616_
                                                           (##cdr _e95919611_))
                                                          (_hd95929614_
                                                           (##car _e95919611_)))
                                                      (if (gx#stx-null?
                                                           _tl95939616_)
                                                          (___kont1534815349_
                                                           _hd95929614_
                                                           _hd95789658_)
                                                          (_g95739598_))))
                                                  (_g95739598_)))))
                                      (_g95739598_)))))))
                      (if (##pair? _rest95479555_)
                          (let ((_hd95529703_ (##car _rest95479555_))
                                (_tl95539705_ (##cdr _rest95479555_)))
                            (let* ((_hd-bind9708_ _hd95529703_)
                                   (_rest9710_ _tl95539705_))
                              (_K95519700_ _rest9710_ _hd-bind9708_)))
                          (_else95499566_))))))
               (_generate-letrec?9298_
                (lambda (_hd9430_)
                  (let _lp9432_ ((_rest9434_ _hd9430_))
                    (let* ((_rest94359443_ _rest9434_)
                           (_else94379451_ (lambda () '#t))
                           (_K94399528_
                            (lambda (_rest9454_ _hd-bind9455_)
                              (let* ((_g94579474_
                                      (lambda (_g94589471_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g94589471_)))
                                     (_g94569525_
                                      (lambda (_g94589477_)
                                        (if (gx#stx-pair? _g94589477_)
                                            (let ((_e94619479_
                                                   (gx#stx-e _g94589477_)))
                                              (let ((_hd94629482_
                                                     (##car _e94619479_))
                                                    (_tl94639484_
                                                     (##cdr _e94619479_)))
                                                (if (gx#stx-pair? _hd94629482_)
                                                    (let ((_e94649487_
                                                           (gx#stx-e
                                                            _hd94629482_)))
                                                      (let ((_hd94659490_
                                                             (##car _e94649487_))
                                                            (_tl94669492_
                                                             (##cdr _e94649487_)))
                                                        (if (gx#stx-null?
                                                             _tl94669492_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94639484_)
                        (let ((_e94679495_ (gx#stx-e _tl94639484_)))
                          (let ((_hd94689498_ (##car _e94679495_))
                                (_tl94699500_ (##cdr _e94679495_)))
                            (if (gx#stx-null? _tl94699500_)
                                ((lambda (_L9503_ _L9504_)
                                   (if (_is-lambda-expr?9299_ _L9503_)
                                       (_lp9432_ _rest9454_)
                                       '#f))
                                 _hd94689498_
                                 _hd94659490_)
                                (_g94579474_ _g94589477_))))
                        (_g94579474_ _g94589477_))
                    (_g94579474_ _g94589477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94579474_
                                                     _g94589477_))))
                                            (_g94579474_ _g94589477_)))))
                                (_g94569525_ _hd-bind9455_)))))
                      (if (##pair? _rest94359443_)
                          (let ((_hd94409531_ (##car _rest94359443_))
                                (_tl94419533_ (##cdr _rest94359443_)))
                            (let* ((_hd-bind9536_ _hd94409531_)
                                   (_rest9538_ _tl94419533_))
                              (_K94399528_ _rest9538_ _hd-bind9536_)))
                          (_else94379451_))))))
               (_is-lambda-expr?9299_
                (lambda (_expr9367_)
                  (let* ((___stx1538815389_ _expr9367_)
                         (_g93709384_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1538815389_))))
                    (let ((___kont1539015391_ (lambda (_L9412_ _L9413_) '#t))
                          (___kont1539215393_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1538815389_)
                          (let ((_e93749396_ (gx#stx-e ___stx1538815389_)))
                            (let ((_tl93769401_ (##cdr _e93749396_))
                                  (_hd93759399_ (##car _e93749396_)))
                              (if (gx#identifier? _hd93759399_)
                                  (if (gx#stx-eq? '%#lambda _hd93759399_)
                                      (if (gx#stx-pair? _tl93769401_)
                                          (let ((_e93779404_
                                                 (gx#stx-e _tl93769401_)))
                                            (let ((_tl93799409_
                                                   (##cdr _e93779404_))
                                                  (_hd93789407_
                                                   (##car _e93779404_)))
                                              (___kont1539015391_
                                               _tl93799409_
                                               _hd93789407_)))
                                          (___kont1539215393_))
                                      (___kont1539215393_))
                                  (___kont1539215393_))))
                          (___kont1539215393_)))))))
        (let* ((_g93019318_
                (lambda (_g93029315_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g93029315_)))
               (_g93009364_
                (lambda (_g93029321_)
                  (if (gx#stx-pair? _g93029321_)
                      (let ((_e93059323_ (gx#stx-e _g93029321_)))
                        (let ((_hd93069326_ (##car _e93059323_))
                              (_tl93079328_ (##cdr _e93059323_)))
                          (if (gx#stx-pair? _tl93079328_)
                              (let ((_e93089331_ (gx#stx-e _tl93079328_)))
                                (let ((_hd93099334_ (##car _e93089331_))
                                      (_tl93109336_ (##cdr _e93089331_)))
                                  (if (gx#stx-pair? _tl93109336_)
                                      (let ((_e93119339_
                                             (gx#stx-e _tl93109336_)))
                                        (let ((_hd93129342_
                                               (##car _e93119339_))
                                              (_tl93139344_
                                               (##cdr _e93119339_)))
                                          (if (gx#stx-null? _tl93139344_)
                                              ((lambda (_L9347_ _L9348_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9348_)
                                                     (if (_generate-letrec?9298_
                                                          _L9348_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L9348_
                                                          _L9347_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L9348_
                                                          _L9347_
                                                          '#f))
                                                     (_generate-values9297_
                                                      _L9348_
                                                      _L9347_)))
                                               _hd93129342_
                                               _hd93099334_)
                                              (_g93019318_ _g93029321_))))
                                      (_g93019318_ _g93029321_))))
                              (_g93019318_ _g93029321_))))
                      (_g93019318_ _g93029321_)))))
          (_g93009364_ _stx9295_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd9188_)
      (let _lp9190_ ((_rest9192_ _hd9188_))
        (let* ((___stx1541215413_ _rest9192_)
               (_g91969217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1541215413_))))
          (let ((___kont1541415415_
                 (lambda (_L9268_ _L9269_ _L9270_) (_lp9190_ _L9268_)))
                (___kont1541615417_ (lambda () '#t))
                (___kont1541815419_ (lambda () '#f)))
            (let ((_g91949231_
                   (lambda ()
                     (if (gx#stx-null? ___stx1541215413_)
                         (___kont1541615417_)
                         (___kont1541815419_)))))
              (if (gx#stx-pair? ___stx1541215413_)
                  (let ((_e92019236_ (gx#stx-e ___stx1541215413_)))
                    (let ((_tl92039241_ (##cdr _e92019236_))
                          (_hd92029239_ (##car _e92019236_)))
                      (if (gx#stx-pair? _hd92029239_)
                          (let ((_e92049244_ (gx#stx-e _hd92029239_)))
                            (let ((_tl92069249_ (##cdr _e92049244_))
                                  (_hd92059247_ (##car _e92049244_)))
                              (if (gx#stx-pair? _hd92059247_)
                                  (let ((_e92079252_ (gx#stx-e _hd92059247_)))
                                    (let ((_tl92099257_ (##cdr _e92079252_))
                                          (_hd92089255_ (##car _e92079252_)))
                                      (if (gx#stx-null? _tl92099257_)
                                          (if (gx#stx-pair? _tl92069249_)
                                              (let ((_e92109260_
                                                     (gx#stx-e _tl92069249_)))
                                                (let ((_tl92129265_
                                                       (##cdr _e92109260_))
                                                      (_hd92119263_
                                                       (##car _e92109260_)))
                                                  (if (gx#stx-null?
                                                       _tl92129265_)
                                                      (___kont1541415415_
                                                       _tl92039241_
                                                       _hd92119263_
                                                       _hd92089255_)
                                                      (___kont1541815419_))))
                                              (___kont1541815419_))
                                          (___kont1541815419_))))
                                  (___kont1541815419_))))
                          (___kont1541815419_))))
                  (_g91949231_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form9112_ _hd9113_ _body9114_ _compiled-body?9115_)
      (letrec ((_generate19117_
                (lambda (_bind9119_)
                  (let* ((_g91219138_
                          (lambda (_g91229135_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g91229135_)))
                         (_g91209185_
                          (lambda (_g91229141_)
                            (if (gx#stx-pair? _g91229141_)
                                (let ((_e91259143_ (gx#stx-e _g91229141_)))
                                  (let ((_hd91269146_ (##car _e91259143_))
                                        (_tl91279148_ (##cdr _e91259143_)))
                                    (if (gx#stx-pair? _hd91269146_)
                                        (let ((_e91289151_
                                               (gx#stx-e _hd91269146_)))
                                          (let ((_hd91299154_
                                                 (##car _e91289151_))
                                                (_tl91309156_
                                                 (##cdr _e91289151_)))
                                            (if (gx#stx-null? _tl91309156_)
                                                (if (gx#stx-pair? _tl91279148_)
                                                    (let ((_e91319159_
                                                           (gx#stx-e
                                                            _tl91279148_)))
                                                      (let ((_hd91329162_
                                                             (##car _e91319159_))
                                                            (_tl91339164_
                                                             (##cdr _e91319159_)))
                                                        (if (gx#stx-null?
                                                             _tl91339164_)
                                                            ((lambda (_L9167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L9168_)
                       (cons (gxc#generate-runtime-binding-id* _L9168_)
                             (cons (gxc#compile-e _L9167_) '())))
                     _hd91329162_
                     _hd91299154_)
                    (_g91219138_ _g91229141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g91219138_ _g91229141_))
                                                (_g91219138_ _g91229141_))))
                                        (_g91219138_ _g91229141_))))
                                (_g91219138_ _g91229141_)))))
                    (_g91209185_ _bind9119_)))))
        (cons _form9112_
              (cons (map _generate19117_ _hd9113_)
                    (cons (if _compiled-body?9115_
                              _body9114_
                              (gxc#compile-e _body9114_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx9020_)
      (letrec ((_generate19022_
                (lambda (_datum9074_)
                  (if (let ((_$e9076_ (null? _datum9074_)))
                        (if _$e9076_
                            _$e9076_
                            (let ((_$e9079_ (interned-symbol? _datum9074_)))
                              (if _$e9079_
                                  _$e9079_
                                  (let ((_$e9082_
                                         (gx#self-quoting? _datum9074_)))
                                    (if _$e9082_
                                        _$e9082_
                                        (eof-object? _datum9074_)))))))
                      _datum9074_
                      (if (uninterned-symbol? _datum9074_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum9074_
                           '#t)
                          (if (pair? _datum9074_)
                              (cons (_generate19022_ (car _datum9074_))
                                    (_generate19022_ (cdr _datum9074_)))
                              (if (box? _datum9074_)
                                  (box (_generate19022_ (unbox _datum9074_)))
                                  (if (vector? _datum9074_)
                                      (vector-map _generate19022_ _datum9074_)
                                      (if (let ((_$e9085_
                                                 (s8vector? _datum9074_)))
                                            (if _$e9085_
                                                _$e9085_
                                                (let ((_$e9088_
                                                       (u8vector?
                                                        _datum9074_)))
                                                  (if _$e9088_
                                                      _$e9088_
                                                      (let ((_$e9091_
                                                             (s16vector?
                                                              _datum9074_)))
                                                        (if _$e9091_
                                                            _$e9091_
                                                            (let ((_$e9094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum9074_)))
                      (if _$e9094_
                          _$e9094_
                          (let ((_$e9097_ (s32vector? _datum9074_)))
                            (if _$e9097_
                                _$e9097_
                                (let ((_$e9100_ (u32vector? _datum9074_)))
                                  (if _$e9100_
                                      _$e9100_
                                      (let ((_$e9103_
                                             (s64vector? _datum9074_)))
                                        (if _$e9103_
                                            _$e9103_
                                            (let ((_$e9106_
                                                   (u64vector? _datum9074_)))
                                              (if _$e9106_
                                                  _$e9106_
                                                  (let ((_$e9109_
                                                         (f32vector?
                                                          _datum9074_)))
                                                    (if _$e9109_
                                                        _$e9109_
                                                        (f64vector?
                                                         _datum9074_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum9074_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx9020_))))))))))
        (let* ((_g90249037_
                (lambda (_g90259034_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g90259034_)))
               (_g90239071_
                (lambda (_g90259040_)
                  (if (gx#stx-pair? _g90259040_)
                      (let ((_e90279042_ (gx#stx-e _g90259040_)))
                        (let ((_hd90289045_ (##car _e90279042_))
                              (_tl90299047_ (##cdr _e90279042_)))
                          (if (gx#stx-pair? _tl90299047_)
                              (let ((_e90309050_ (gx#stx-e _tl90299047_)))
                                (let ((_hd90319053_ (##car _e90309050_))
                                      (_tl90329055_ (##cdr _e90309050_)))
                                  (if (gx#stx-null? _tl90329055_)
                                      ((lambda (_L9058_)
                                         (cons 'quote
                                               (cons (_generate19022_
                                                      (gx#stx-e _L9058_))
                                                     '())))
                                       _hd90319053_)
                                      (_g90249037_ _g90259040_))))
                              (_g90249037_ _g90259040_))))
                      (_g90249037_ _g90259040_)))))
          (_g90239071_ _stx9020_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx8713_)
      (let* ((_g87158729_
              (lambda (_g87168726_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g87168726_)))
             (_g87149017_
              (lambda (_g87168732_)
                (if (gx#stx-pair? _g87168732_)
                    (let ((_e87198734_ (gx#stx-e _g87168732_)))
                      (let ((_hd87208737_ (##car _e87198734_))
                            (_tl87218739_ (##cdr _e87198734_)))
                        (if (gx#stx-pair? _tl87218739_)
                            (let ((_e87228742_ (gx#stx-e _tl87218739_)))
                              (let ((_hd87238745_ (##car _e87228742_))
                                    (_tl87248747_ (##cdr _e87228742_)))
                                ((lambda (_L8750_ _L8751_)
                                   (let ((_rator8764_ (gxc#compile-e _L8751_))
                                         (_rands8765_
                                          (map gxc#compile-e _L8750_)))
                                     (let* ((___stx1545215453_ _rator8764_)
                                            (_g87688820_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1545215453_))))
                                       (let ((___kont1545415455_
                                              (lambda (_L8944_
                                                       _L8945_
                                                       _L8946_
                                                       _L8947_)
                                                (if (fx= (length _rands8765_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g89838986_ _g89848988_)
                                     (cons _g89838986_ _g89848988_))
                                   '()
                                   _L8946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id8991_ _L8947_)
                                                           (_args9000_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g89928995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g89938997_)
                                (cons _g89928995_ _g89938997_))
                              '()
                              _L8946_)))
                   (_body9009_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g90019004_ _g90029006_)
                                (cons _g90019004_ _g90029006_))
                              '()
                              _L8945_)))
                   (_init9011_ (map list _args9000_ _rands8765_)))
              (cons 'let (cons _id8991_ (cons _init9011_ _body9009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx8713_))))
                                             (___kont1546015461_
                                              (lambda ()
                                                (cons _rator8764_
                                                      _rands8765_))))
                                         (let ((___match1551915520_
                                                (lambda (_e87748832_
                                                         _hd87758835_
                                                         _tl87768837_
                                                         _e87778840_
                                                         _hd87788843_
                                                         _tl87798845_
                                                         _e87808848_
                                                         _hd87818851_
                                                         _tl87828853_
                                                         _e87838856_
                                                         _hd87848859_
                                                         _tl87858861_
                                                         _e87868864_
                                                         _hd87878867_
                                                         _tl87888869_
                                                         _e87898872_
                                                         _hd87908875_
                                                         _tl87918877_
                                                         _e87928880_
                                                         _hd87938883_
                                                         _tl87948885_
                                                         ___splice1545615457_
                                                         _target87958888_
                                                         _tl87978890_)
                                                  (letrec ((_loop87988893_
                                                            (lambda (_hd87968896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg88028898_)
                      (if (gx#stx-pair? _hd87968896_)
                          (let ((_e87998901_ (gx#stx-e _hd87968896_)))
                            (let ((_lp-tl88018906_ (##cdr _e87998901_))
                                  (_lp-hd88008904_ (##car _e87998901_)))
                              (_loop87988893_
                               _lp-tl88018906_
                               (cons _lp-hd88008904_ _arg88028898_))))
                          (let ((_arg88038909_ (reverse _arg88028898_)))
                            (if (gx#stx-pair/null? _tl87948885_)
                                (let ((___splice1545815459_
                                       (gx#syntax-split-splice
                                        _tl87948885_
                                        '0)))
                                  (let ((_tl88068914_
                                         (##vector-ref
                                          ___splice1545815459_
                                          '1))
                                        (_target88048912_
                                         (##vector-ref
                                          ___splice1545815459_
                                          '0)))
                                    (if (gx#stx-null? _tl88068914_)
                                        (letrec ((_loop88078917_
                                                  (lambda (_hd88058920_
                                                           _body88118922_)
                                                    (if (gx#stx-pair?
                                                         _hd88058920_)
                                                        (let ((_e88088925_
                                                               (gx#stx-e
                                                                _hd88058920_)))
                                                          (let ((_lp-tl88108930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e88088925_))
                        (_lp-hd88098928_ (##car _e88088925_)))
                    (_loop88078917_
                     _lp-tl88108930_
                     (cons _lp-hd88098928_ _body88118922_))))
                (let ((_body88128933_ (reverse _body88118922_)))
                  (if (gx#stx-null? _tl87888869_)
                      (if (gx#stx-null? _tl87828853_)
                          (if (gx#stx-pair? _tl87798845_)
                              (let ((_e88138936_ (gx#stx-e _tl87798845_)))
                                (let ((_tl88158941_ (##cdr _e88138936_))
                                      (_hd88148939_ (##car _e88138936_)))
                                  (if (gx#stx-null? _tl88158941_)
                                      (let ((_L8944_ _hd88148939_)
                                            (_L8945_ _body88128933_)
                                            (_L8946_ _arg88038909_)
                                            (_L8947_ _hd87848859_))
                                        (if (eq? _L8947_ _L8944_)
                                            (___kont1545415455_
                                             _L8944_
                                             _L8945_
                                             _L8946_
                                             _L8947_)
                                            (___kont1546015461_)))
                                      (___kont1546015461_))))
                              (___kont1546015461_))
                          (___kont1546015461_))
                      (___kont1546015461_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop88078917_
                                           _target88048912_
                                           '()))
                                        (___kont1546015461_))))
                                (___kont1546015461_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop87988893_
                                                     _target87958888_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1545215453_)
                                               (let ((_e87748832_
                                                      (gx#stx-e
                                                       ___stx1545215453_)))
                                                 (let ((_tl87768837_
                                                        (##cdr _e87748832_))
                                                       (_hd87758835_
                                                        (##car _e87748832_)))
                                                   (if (gx#identifier?
                                                        _hd87758835_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd87758835_)
                                                           (if (gx#stx-pair?
                                                                _tl87768837_)
                                                               (let ((_e87778840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl87768837_)))
                         (let ((_tl87798845_ (##cdr _e87778840_))
                               (_hd87788843_ (##car _e87778840_)))
                           (if (gx#stx-pair? _hd87788843_)
                               (let ((_e87808848_ (gx#stx-e _hd87788843_)))
                                 (let ((_tl87828853_ (##cdr _e87808848_))
                                       (_hd87818851_ (##car _e87808848_)))
                                   (if (gx#stx-pair? _hd87818851_)
                                       (let ((_e87838856_
                                              (gx#stx-e _hd87818851_)))
                                         (let ((_tl87858861_
                                                (##cdr _e87838856_))
                                               (_hd87848859_
                                                (##car _e87838856_)))
                                           (if (gx#stx-pair? _tl87858861_)
                                               (let ((_e87868864_
                                                      (gx#stx-e _tl87858861_)))
                                                 (let ((_tl87888869_
                                                        (##cdr _e87868864_))
                                                       (_hd87878867_
                                                        (##car _e87868864_)))
                                                   (if (gx#stx-pair?
                                                        _hd87878867_)
                                                       (let ((_e87898872_
                                                              (gx#stx-e
                                                               _hd87878867_)))
                                                         (let ((_tl87918877_
                                                                (##cdr _e87898872_))
                                                               (_hd87908875_
                                                                (##car _e87898872_)))
                                                           (if (gx#identifier?
                                                                _hd87908875_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd87908875_)
                           (if (gx#stx-pair? _tl87918877_)
                               (let ((_e87928880_ (gx#stx-e _tl87918877_)))
                                 (let ((_tl87948885_ (##cdr _e87928880_))
                                       (_hd87938883_ (##car _e87928880_)))
                                   (if (gx#stx-pair/null? _hd87938883_)
                                       (let ((___splice1545615457_
                                              (gx#syntax-split-splice
                                               _hd87938883_
                                               '0)))
                                         (let ((_tl87978890_
                                                (##vector-ref
                                                 ___splice1545615457_
                                                 '1))
                                               (_target87958888_
                                                (##vector-ref
                                                 ___splice1545615457_
                                                 '0)))
                                           (if (gx#stx-null? _tl87978890_)
                                               (___match1551915520_
                                                _e87748832_
                                                _hd87758835_
                                                _tl87768837_
                                                _e87778840_
                                                _hd87788843_
                                                _tl87798845_
                                                _e87808848_
                                                _hd87818851_
                                                _tl87828853_
                                                _e87838856_
                                                _hd87848859_
                                                _tl87858861_
                                                _e87868864_
                                                _hd87878867_
                                                _tl87888869_
                                                _e87898872_
                                                _hd87908875_
                                                _tl87918877_
                                                _e87928880_
                                                _hd87938883_
                                                _tl87948885_
                                                ___splice1545615457_
                                                _target87958888_
                                                _tl87978890_)
                                               (___kont1546015461_))))
                                       (___kont1546015461_))))
                               (___kont1546015461_))
                           (___kont1546015461_))
                       (___kont1546015461_))))
               (___kont1546015461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1546015461_))))
                                       (___kont1546015461_))))
                               (___kont1546015461_))))
                       (___kont1546015461_))
                   (___kont1546015461_))
               (___kont1546015461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1546015461_)))))))
                                 _tl87248747_
                                 _hd87238745_)))
                            (_g87158729_ _g87168732_))))
                    (_g87158729_ _g87168732_)))))
        (_g87149017_ _stx8713_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx8630_)
      (let* ((_g86328653_
              (lambda (_g86338650_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g86338650_)))
             (_g86318710_
              (lambda (_g86338656_)
                (if (gx#stx-pair? _g86338656_)
                    (let ((_e86378658_ (gx#stx-e _g86338656_)))
                      (let ((_hd86388661_ (##car _e86378658_))
                            (_tl86398663_ (##cdr _e86378658_)))
                        (if (gx#stx-pair? _tl86398663_)
                            (let ((_e86408666_ (gx#stx-e _tl86398663_)))
                              (let ((_hd86418669_ (##car _e86408666_))
                                    (_tl86428671_ (##cdr _e86408666_)))
                                (if (gx#stx-pair? _tl86428671_)
                                    (let ((_e86438674_
                                           (gx#stx-e _tl86428671_)))
                                      (let ((_hd86448677_ (##car _e86438674_))
                                            (_tl86458679_ (##cdr _e86438674_)))
                                        (if (gx#stx-pair? _tl86458679_)
                                            (let ((_e86468682_
                                                   (gx#stx-e _tl86458679_)))
                                              (let ((_hd86478685_
                                                     (##car _e86468682_))
                                                    (_tl86488687_
                                                     (##cdr _e86468682_)))
                                                (if (gx#stx-null? _tl86488687_)
                                                    ((lambda (_L8690_
                                                              _L8691_
                                                              _L8692_)
                                                       (cons 'if
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8692_)
                           (cons (gxc#compile-e _L8691_)
                                 (cons (gxc#compile-e _L8690_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd86478685_
                                                     _hd86448677_
                                                     _hd86418669_)
                                                    (_g86328653_
                                                     _g86338656_))))
                                            (_g86328653_ _g86338656_))))
                                    (_g86328653_ _g86338656_))))
                            (_g86328653_ _g86338656_))))
                    (_g86328653_ _g86338656_)))))
        (_g86318710_ _stx8630_))))
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
                     (begin
                       (table-set! _ht7724_ _id7777_ _rt7779_)
                       (_lp7726_ _rest7775_ (cons _rt7779_ _loads7729_)))))))))
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
                    (begin
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
                      _gid7678_))))
               (_generate-serialized7507_
                (lambda (_stxq7666_ _marks7667_)
                  (let* ((_mark-refs7669_
                          (map _generate-mark7508_ _marks7667_))
                         (_gid7671_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid7673_
                          (gxc#generate-runtime-identifier _stxq7666_)))
                    (begin
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
                      _gid7671_))))
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
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark7652_
                             _gid7657_)
                            (_add-lift!7504_
                             (cons 'define
                                   (cons _gid7657_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr7659_ '()))
                   (cons _ctx-ref7663_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid7657_))))))
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
                                (if (if (pair? _ref7596_)
                                        (eq? (car _ref7596_)
                                             (car _ctx-ref7597_))
                                        '#f)
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
      (begin
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
                                       (begin
                                         (if (interned-symbol? _key7275_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx7223_
                                              _L7262_
                                              _key7275_))
                                         (let* ((_ctx7277_
                                                 (gx#syntax-local-e__0
                                                  _L7262_))
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt7282_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid7286_
                                                 (gx#stx-e _L7262_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state7224_)
                                             (cons '%#module
                                                   (cons _modid7286_
                                                         (cons _code7280_
                                                               _loader7284_))))))))
                                   _tl72357258_
                                   _hd72347256_)))
                              (_g72267240_ _g72277243_))))
                      (_g72267240_ _g72277243_)))))
          (_g72257289_ _stx7223_)))))
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
        (begin
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx7062_)
                     (_lp7019_
                      _rest7046_
                      _current-src7022_
                      (cons (_make-import-spec6981_ _in7047_) _current-in7023_)
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
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
            (_g69847136_ _stx6977_))))))
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
      (begin
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
          (_g67506784_ _stx6748_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx6619_ _state6620_)
      (letrec ((_generate16622_
                (lambda (_id6743_ _eid6744_)
                  (let ((_eid6746_ (gx#stx-e _eid6744_)))
                    (begin
                      (if (interned-symbol? _eid6746_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx6619_
                           _eid6746_))
                      (cons (gxc#generate-runtime-identifier _id6743_)
                            (cons _eid6746_ '())))))))
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
                              (let ((_g15646_
                                     (gx#syntax-split-splice _tl66306662_ '0)))
                                (begin
                                  (let ((_g15647_
                                         (if (##values? _g15646_)
                                             (##vector-length _g15646_)
                                             1)))
                                    (if (not (##fx= _g15647_ 2))
                                        (error "Context expects 2 values"
                                               _g15647_)))
                                  (let ((_target66316665_
                                         (##vector-ref _g15646_ 0))
                                        (_tl66336667_
                                         (##vector-ref _g15646_ 1)))
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
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g67256728_ _g67266730_)
                                            (cons _g67256728_ _g67266730_))
                                          '()
                                          _L6710_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g67326735_ _g67336737_)
                                            (cons _g67326735_ _g67336737_))
                                          '()
                                          _L6709_)))))
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
                                                   (let* ((___stx1555315554_
                                                           _rest6480_)
                                                          (_g64866503_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1555315554_))))
                                                     (let ((___kont1555515556_
                                                            (lambda (_L6566_)
                                                              (_lp6478_
                                                               _L6566_
                                                               _r6481_)))
                                                           (___kont1555715558_
                                                            (lambda (_L6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6540_)
                      (_lp6478_
                       _L6539_
                       (cons (_generate16412_ _L6540_) _r6481_))))
                   (___kont1555915560_
                    (lambda (_L6515_)
                      (_generate*6413_
                       (foldl1 cons
                               (cons (_generate16412_ _L6515_) '())
                               _r6481_))))
                   (___kont1556115562_
                    (lambda () (_generate*6413_ (reverse _r6481_)))))
               (let ((_g64846526_
                      (lambda ()
                        (let ((_L6515_ ___stx1555315554_))
                          (if (gx#identifier? _L6515_)
                              (___kont1555915560_ _L6515_)
                              (___kont1556115562_))))))
                 (if (gx#stx-pair? ___stx1555315554_)
                     (let ((_e64896555_ (gx#stx-e ___stx1555315554_)))
                       (let ((_tl64916560_ (##cdr _e64896555_))
                             (_hd64906558_ (##car _e64896555_)))
                         (if (gx#stx-datum? _hd64906558_)
                             (let ((_e64926563_ (gx#stx-e _hd64906558_)))
                               (if (equal? _e64926563_ '#f)
                                   (___kont1555515556_ _tl64916560_)
                                   (___kont1555715558_
                                    _tl64916560_
                                    _hd64906558_)))
                             (___kont1555715558_ _tl64916560_ _hd64906558_))))
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
                                                 (begin
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
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
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L6356_)
                           (cons _eid6371_ '())))))))
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
      (begin
        (gxc#meta-state-add-phi!
         _state6236_
         (gx#current-expander-phi)
         _stx6235_)
        (gxc#generate-meta-define-values% _stx6235_ _state6236_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx6232_ _state6233_)
      (begin
        (gxc#meta-state-add-phi!
         _state6233_
         (gx#current-expander-phi)
         _stx6232_)
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
                      (begin
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
                        _block-ref6081_))))))
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
      (begin
        (##structure-set!
         _state6049_
         (hash-fold
          (lambda (_g15648_ _block6051_ _r6052_) (cons _block6051_ _r6052_))
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
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state6001_)
      (begin
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
                (##structure-ref _state6001_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx5997_)
      (let ((_ht5999_ (make-table 'test: eq?)))
        (begin
          (gxc#apply-collect-expression-refs _stx5997_ _ht5999_)
          _ht5999_))))
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
                                                 (begin
                                                   (table-set!
                                                    _ht5868_
                                                    _eid5934_
                                                    _eid5934_)
                                                   (gxc#compile-e
                                                    _L5916_
                                                    _ht5868_))))
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
                            (let ((_g15649_
                                   (gx#syntax-split-splice _tl55805604_ '0)))
                              (begin
                                (let ((_g15650_
                                       (if (##values? _g15649_)
                                           (##vector-length _g15649_)
                                           1)))
                                  (if (not (##fx= _g15650_ 2))
                                      (error "Context expects 2 values"
                                             _g15650_)))
                                (let ((_target55815607_
                                       (##vector-ref _g15649_ 0))
                                      (_tl55835609_ (##vector-ref _g15649_ 1)))
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
                    (last (begin
                            '#!void
                            (foldr1 (lambda (_g56445647_ _g56455649_)
                                      (cons _g56445647_ _g56455649_))
                                    '()
                                    _L5631_)))))
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
      (let* ((___stx1558315584_ _stx5306_)
             (_g53095338_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1558315584_))))
        (let ((___kont1558515586_
               (lambda (_L5406_ _L5407_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g54285431_ _g54295433_)
                                     (cons _g54285431_ _g54295433_))
                                   '()
                                   _L5406_)))))
              (___kont1558915590_ (lambda () '#f)))
          (let ((___match1562815629_
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
                          ___splice1558715588_
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
                                           (___kont1558515586_ _L5406_ _L5407_)
                                           (___kont1558915590_))))))))
                     (_loop53285387_ _target53255382_ '())))))
            (if (gx#stx-pair? ___stx1558315584_)
                (let ((_e53135350_ (gx#stx-e ___stx1558315584_)))
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
                                                            (let ((___splice1558715588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl53185363_ '0)))
                      (let ((_tl53275384_
                             (##vector-ref ___splice1558715588_ '1))
                            (_target53255382_
                             (##vector-ref ___splice1558715588_ '0)))
                        (if (gx#stx-null? _tl53275384_)
                            (___match1562815629_
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
                             ___splice1558715588_
                             _target53255382_
                             _tl53275384_)
                            (___kont1558915590_))))
                    (___kont1558915590_))
                (___kont1558915590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1558915590_))
                                            (___kont1558915590_))
                                        (___kont1558915590_))))
                                (___kont1558915590_))))
                        (___kont1558915590_))))
                (___kont1558915590_)))))))
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
