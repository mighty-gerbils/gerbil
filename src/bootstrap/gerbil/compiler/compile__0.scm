(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#current-compile-identifiers (make-parameter '#f))
  (define gxc#make-bound-identifier-table
    (lambda ()
      (letrec ((_hash-e14452_
                (lambda (_id14454_) (symbol-hash (gx#stx-e _id14454_)))))
        (make-table 'test: gx#bound-identifier=? 'hash: _hash-e14452_))))
  (define gxc#compile-e
    (lambda (_stx14407_ . _args14408_)
      (let* ((_g1441014420_
              (lambda (_g1441114417_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1441114417_)))
             (_g1440914448_
              (lambda (_g1441114423_)
                (if (gx#stx-pair? _g1441114423_)
                    (let ((_e1441314425_ (gx#stx-e _g1441114423_)))
                      (let ((_hd1441414428_ (##car _e1441314425_))
                            (_tl1441514430_ (##cdr _e1441314425_)))
                        ((lambda (_L14433_)
                           (let ((_$e14443_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L14433_)
                                   '#f)))
                             (if _$e14443_
                                 ((lambda (_method14446_)
                                    (apply _method14446_
                                           _stx14407_
                                           _args14408_))
                                  _$e14443_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx14407_
                                  _L14433_))))
                         _hd1441414428_)))
                    (_g1441014420_ _g1441114423_)))))
        (_g1440914448_ _stx14407_))))
  (define gxc#&void-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14404_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14404_ '%#begin-annotation void)
           (table-set! _tbl14404_ '%#lambda void)
           (table-set! _tbl14404_ '%#case-lambda void)
           (table-set! _tbl14404_ '%#let-values void)
           (table-set! _tbl14404_ '%#letrec-values void)
           (table-set! _tbl14404_ '%#letrec*-values void)
           (table-set! _tbl14404_ '%#quote void)
           (table-set! _tbl14404_ '%#quote-syntax void)
           (table-set! _tbl14404_ '%#call void)
           (table-set! _tbl14404_ '%#if void)
           (table-set! _tbl14404_ '%#ref void)
           (table-set! _tbl14404_ '%#set! void)
           (table-set! _tbl14404_ '%#struct-instance? void)
           (table-set! _tbl14404_ '%#struct-direct-instance? void)
           (table-set! _tbl14404_ '%#struct-ref void)
           (table-set! _tbl14404_ '%#struct-set! void)
           (table-set! _tbl14404_ '%#struct-direct-ref void)
           (table-set! _tbl14404_ '%#struct-direct-set! void)
           (table-set! _tbl14404_ '%#struct-unchecked-ref void)
           (table-set! _tbl14404_ '%#struct-unchecked-set! void)
           _tbl14404_)))))
  (define gxc#&void-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14400_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14400_ '%#begin void)
           (table-set! _tbl14400_ '%#begin-syntax void)
           (table-set! _tbl14400_ '%#begin-foreign void)
           (table-set! _tbl14400_ '%#module void)
           (table-set! _tbl14400_ '%#import void)
           (table-set! _tbl14400_ '%#export void)
           (table-set! _tbl14400_ '%#provide void)
           (table-set! _tbl14400_ '%#extern void)
           (table-set! _tbl14400_ '%#define-values void)
           (table-set! _tbl14400_ '%#define-syntax void)
           (table-set! _tbl14400_ '%#define-alias void)
           (table-set! _tbl14400_ '%#declare void)
           _tbl14400_)))))
  (define gxc#&void
    (##make-promise
     (lambda ()
       (let ((_tbl14396_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14396_ (force gxc#&void-special-form))
           (hash-copy! _tbl14396_ (force gxc#&void-expression))
           _tbl14396_)))))
  (define gxc#&false-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14392_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14392_ '%#begin-annotation false)
           (table-set! _tbl14392_ '%#lambda false)
           (table-set! _tbl14392_ '%#case-lambda false)
           (table-set! _tbl14392_ '%#let-values false)
           (table-set! _tbl14392_ '%#letrec-values false)
           (table-set! _tbl14392_ '%#letrec*-values false)
           (table-set! _tbl14392_ '%#quote false)
           (table-set! _tbl14392_ '%#quote-syntax false)
           (table-set! _tbl14392_ '%#call false)
           (table-set! _tbl14392_ '%#if false)
           (table-set! _tbl14392_ '%#ref false)
           (table-set! _tbl14392_ '%#set! false)
           (table-set! _tbl14392_ '%#struct-instance? false)
           (table-set! _tbl14392_ '%#struct-direct-instance? false)
           (table-set! _tbl14392_ '%#struct-ref false)
           (table-set! _tbl14392_ '%#struct-set! false)
           (table-set! _tbl14392_ '%#struct-direct-ref false)
           (table-set! _tbl14392_ '%#struct-direct-set! false)
           (table-set! _tbl14392_ '%#struct-unchecked-ref false)
           (table-set! _tbl14392_ '%#struct-unchecked-set! false)
           _tbl14392_)))))
  (define gxc#&false-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14388_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14388_ '%#begin false)
           (table-set! _tbl14388_ '%#begin-syntax false)
           (table-set! _tbl14388_ '%#begin-foreign false)
           (table-set! _tbl14388_ '%#module false)
           (table-set! _tbl14388_ '%#import false)
           (table-set! _tbl14388_ '%#export false)
           (table-set! _tbl14388_ '%#provide false)
           (table-set! _tbl14388_ '%#extern false)
           (table-set! _tbl14388_ '%#define-values false)
           (table-set! _tbl14388_ '%#define-syntax false)
           (table-set! _tbl14388_ '%#define-alias false)
           (table-set! _tbl14388_ '%#declare false)
           _tbl14388_)))))
  (define gxc#&false
    (##make-promise
     (lambda ()
       (let ((_tbl14384_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14384_ (force gxc#&false-special-form))
           (hash-copy! _tbl14384_ (force gxc#&false-expression))
           _tbl14384_)))))
  (define gxc#&collect-bindings
    (##make-promise
     (lambda ()
       (let ((_tbl14380_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14380_ (force gxc#&void-expression))
           (hash-copy! _tbl14380_ (force gxc#&void-special-form))
           (table-set! _tbl14380_ '%#begin gxc#collect-begin%)
           (table-set! _tbl14380_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl14380_ '%#module gxc#collect-module%)
           (table-set!
            _tbl14380_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl14380_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl14380_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx14373_ . _args14375_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14373_ _args14375_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (##make-promise
     (lambda ()
       (let ((_tbl14370_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14370_ (force gxc#&void))
           (table-set! _tbl14370_ '%#begin gxc#collect-begin%)
           (table-set! _tbl14370_ '%#module gxc#lift-modules-module%)
           _tbl14370_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx14363_ . _args14365_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14363_ _args14365_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (##make-promise
     (lambda ()
       (let ((_tbl14360_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14360_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl14360_ '%#begin-syntax false)
           (table-set! _tbl14360_ '%#begin-foreign true)
           (table-set! _tbl14360_ '%#begin-annotation true)
           (table-set! _tbl14360_ '%#module false)
           (table-set! _tbl14360_ '%#import false)
           (table-set! _tbl14360_ '%#export false)
           (table-set! _tbl14360_ '%#provide false)
           (table-set! _tbl14360_ '%#extern false)
           (table-set! _tbl14360_ '%#define-values true)
           (table-set! _tbl14360_ '%#define-syntax false)
           (table-set! _tbl14360_ '%#define-alias false)
           (table-set! _tbl14360_ '%#declare false)
           (table-set! _tbl14360_ '%#lambda true)
           (table-set! _tbl14360_ '%#case-lambda true)
           (table-set! _tbl14360_ '%#let-values true)
           (table-set! _tbl14360_ '%#letrec-values true)
           (table-set! _tbl14360_ '%#letrec*-values true)
           (table-set! _tbl14360_ '%#quote true)
           (table-set! _tbl14360_ '%#call true)
           (table-set! _tbl14360_ '%#if true)
           (table-set! _tbl14360_ '%#ref true)
           (table-set! _tbl14360_ '%#set! true)
           (table-set! _tbl14360_ '%#struct-instance? true)
           (table-set! _tbl14360_ '%#struct-direct-instance? true)
           (table-set! _tbl14360_ '%#struct-ref true)
           (table-set! _tbl14360_ '%#struct-set! true)
           (table-set! _tbl14360_ '%#struct-direct-ref true)
           (table-set! _tbl14360_ '%#struct-direct-set! true)
           (table-set! _tbl14360_ '%#struct-unchecked-ref true)
           (table-set! _tbl14360_ '%#struct-unchecked-set! true)
           _tbl14360_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx14353_ . _args14355_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14353_ _args14355_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14350_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14350_ (force gxc#&false))
           (table-set! _tbl14350_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl14350_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl14350_ '%#lambda values)
           (table-set! _tbl14350_ '%#case-lambda values)
           (table-set!
            _tbl14350_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl14350_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl14350_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl14350_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx14343_ . _args14345_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14343_ _args14345_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (##make-promise
     (lambda ()
       (let ((_tbl14340_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14340_ (force gxc#&false-expression))
           (table-set! _tbl14340_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl14340_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl14340_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl14340_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl14340_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl14340_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl14340_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl14340_ '%#quote gxc#count-values-single%)
           (table-set! _tbl14340_ '%#call gxc#count-values-call%)
           (table-set! _tbl14340_ '%#if gxc#count-values-if%)
           _tbl14340_)))))
  (define gxc#apply-count-values
    (lambda (_stx14333_ . _args14335_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14333_ _args14335_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (##make-promise
     (lambda ()
       (let ((_tbl14330_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14330_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl14330_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14330_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl14330_)))))
  (define gxc#&generate-loader
    (##make-promise
     (lambda ()
       (let ((_tbl14326_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14326_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl14326_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl14326_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl14326_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx14319_ . _args14321_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14319_ _args14321_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (##make-promise
     (lambda ()
       (let ((_tbl14316_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14316_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl14316_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl14316_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl14316_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl14316_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl14316_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl14316_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl14316_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl14316_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl14316_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl14316_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl14316_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl14316_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl14316_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl14316_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl14316_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl14316_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl14316_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl14316_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl14316_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl14316_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl14316_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl14316_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl14316_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl14316_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl14316_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx14309_ . _args14311_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14309_ _args14311_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14306_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14306_ (force gxc#&generate-runtime))
           (table-set!
            _tbl14306_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl14306_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx14299_ . _args14301_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14299_ _args14301_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (##make-promise
     (lambda ()
       (let ((_tbl14296_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14296_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl14296_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl14296_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl14296_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl14296_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl14296_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl14296_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl14296_ '%#quote void)
           (table-set! _tbl14296_ '%#quote-syntax void)
           (table-set! _tbl14296_ '%#call gxc#collect-operands)
           (table-set! _tbl14296_ '%#if gxc#collect-operands)
           (table-set! _tbl14296_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl14296_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl14296_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl14296_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl14296_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl14296_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl14296_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl14296_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl14296_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl14296_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl14296_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx14289_ . _args14291_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14289_ _args14291_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (##make-promise
     (lambda ()
       (let ((_tbl14286_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14286_ (force gxc#&void-expression))
           (table-set! _tbl14286_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl14286_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl14286_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl14286_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl14286_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl14286_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl14286_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl14286_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl14286_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl14286_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl14286_ '%#begin-foreign void)
           (table-set! _tbl14286_ '%#declare void)
           _tbl14286_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx14279_ . _args14281_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14279_ _args14281_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14276_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14276_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl14276_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl14276_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl14276_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl14276_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl14276_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14276_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14276_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14276_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14276_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14276_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14276_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14276_ '%#declare void)
           _tbl14276_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx14269_ . _args14271_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14269_ _args14271_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx14226_ . _args14227_)
      (let* ((_g1422914239_
              (lambda (_g1423014236_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1423014236_)))
             (_g1422814266_
              (lambda (_g1423014242_)
                (if (gx#stx-pair? _g1423014242_)
                    (let ((_e1423214244_ (gx#stx-e _g1423014242_)))
                      (let ((_hd1423314247_ (##car _e1423214244_))
                            (_tl1423414249_ (##cdr _e1423214244_)))
                        ((lambda (_L14252_)
                           (for-each
                            (lambda (_g1426114263_)
                              (apply gxc#compile-e _g1426114263_ _args14227_))
                            (gx#stx-e _L14252_)))
                         _tl1423414249_)))
                    (_g1422914239_ _g1423014242_)))))
        (_g1422814266_ _stx14226_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx14222_ . _args14223_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx14222_ _args14223_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx14164_ . _args14165_)
      (let* ((_g1416714181_
              (lambda (_g1416814178_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1416814178_)))
             (_g1416614219_
              (lambda (_g1416814184_)
                (if (gx#stx-pair? _g1416814184_)
                    (let ((_e1417114186_ (gx#stx-e _g1416814184_)))
                      (let ((_hd1417214189_ (##car _e1417114186_))
                            (_tl1417314191_ (##cdr _e1417114186_)))
                        (if (gx#stx-pair? _tl1417314191_)
                            (let ((_e1417414194_ (gx#stx-e _tl1417314191_)))
                              (let ((_hd1417514197_ (##car _e1417414194_))
                                    (_tl1417614199_ (##cdr _e1417414194_)))
                                ((lambda (_L14202_ _L14203_)
                                   (let ((_ctx14216_
                                          (gx#syntax-local-e__0 _L14203_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx14216_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args14165_))
                                      gx#current-expander-context
                                      _ctx14216_)))
                                 _tl1417614199_
                                 _hd1417514197_)))
                            (_g1416714181_ _g1416814184_))))
                    (_g1416714181_ _g1416814184_)))))
        (_g1416614219_ _stx14164_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx14096_ . _args14097_)
      (let* ((_g1409914116_
              (lambda (_g1410014113_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1410014113_)))
             (_g1409814161_
              (lambda (_g1410014119_)
                (if (gx#stx-pair? _g1410014119_)
                    (let ((_e1410314121_ (gx#stx-e _g1410014119_)))
                      (let ((_hd1410414124_ (##car _e1410314121_))
                            (_tl1410514126_ (##cdr _e1410314121_)))
                        (if (gx#stx-pair? _tl1410514126_)
                            (let ((_e1410614129_ (gx#stx-e _tl1410514126_)))
                              (let ((_hd1410714132_ (##car _e1410614129_))
                                    (_tl1410814134_ (##cdr _e1410614129_)))
                                (if (gx#stx-pair? _tl1410814134_)
                                    (let ((_e1410914137_
                                           (gx#stx-e _tl1410814134_)))
                                      (let ((_hd1411014140_
                                             (##car _e1410914137_))
                                            (_tl1411114142_
                                             (##cdr _e1410914137_)))
                                        (if (gx#stx-null? _tl1411114142_)
                                            ((lambda (_L14145_ _L14146_)
                                               (apply gxc#compile-e
                                                      _L14145_
                                                      _args14097_))
                                             _hd1411014140_
                                             _hd1410714132_)
                                            (_g1409914116_ _g1410014119_))))
                                    (_g1409914116_ _g1410014119_))))
                            (_g1409914116_ _g1410014119_))))
                    (_g1409914116_ _g1410014119_)))))
        (_g1409814161_ _stx14096_))))
  (define gxc#collect-define-values%
    (lambda (_stx14028_ . _args14029_)
      (let* ((_g1403114048_
              (lambda (_g1403214045_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1403214045_)))
             (_g1403014093_
              (lambda (_g1403214051_)
                (if (gx#stx-pair? _g1403214051_)
                    (let ((_e1403514053_ (gx#stx-e _g1403214051_)))
                      (let ((_hd1403614056_ (##car _e1403514053_))
                            (_tl1403714058_ (##cdr _e1403514053_)))
                        (if (gx#stx-pair? _tl1403714058_)
                            (let ((_e1403814061_ (gx#stx-e _tl1403714058_)))
                              (let ((_hd1403914064_ (##car _e1403814061_))
                                    (_tl1404014066_ (##cdr _e1403814061_)))
                                (if (gx#stx-pair? _tl1404014066_)
                                    (let ((_e1404114069_
                                           (gx#stx-e _tl1404014066_)))
                                      (let ((_hd1404214072_
                                             (##car _e1404114069_))
                                            (_tl1404314074_
                                             (##cdr _e1404114069_)))
                                        (if (gx#stx-null? _tl1404314074_)
                                            ((lambda (_L14077_ _L14078_)
                                               (apply gxc#compile-e
                                                      _L14077_
                                                      _args14029_))
                                             _hd1404214072_
                                             _hd1403914064_)
                                            (_g1403114048_ _g1403214051_))))
                                    (_g1403114048_ _g1403214051_))))
                            (_g1403114048_ _g1403214051_))))
                    (_g1403114048_ _g1403214051_)))))
        (_g1403014093_ _stx14028_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx13959_ . _args13960_)
      (let* ((_g1396213979_
              (lambda (_g1396313976_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1396313976_)))
             (_g1396114025_
              (lambda (_g1396313982_)
                (if (gx#stx-pair? _g1396313982_)
                    (let ((_e1396613984_ (gx#stx-e _g1396313982_)))
                      (let ((_hd1396713987_ (##car _e1396613984_))
                            (_tl1396813989_ (##cdr _e1396613984_)))
                        (if (gx#stx-pair? _tl1396813989_)
                            (let ((_e1396913992_ (gx#stx-e _tl1396813989_)))
                              (let ((_hd1397013995_ (##car _e1396913992_))
                                    (_tl1397113997_ (##cdr _e1396913992_)))
                                (if (gx#stx-pair? _tl1397113997_)
                                    (let ((_e1397214000_
                                           (gx#stx-e _tl1397113997_)))
                                      (let ((_hd1397314003_
                                             (##car _e1397214000_))
                                            (_tl1397414005_
                                             (##cdr _e1397214000_)))
                                        (if (gx#stx-null? _tl1397414005_)
                                            ((lambda (_L14008_ _L14009_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L14008_
                                                         _args13960_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1397314003_
                                             _hd1397013995_)
                                            (_g1396213979_ _g1396313982_))))
                                    (_g1396213979_ _g1396313982_))))
                            (_g1396213979_ _g1396313982_))))
                    (_g1396213979_ _g1396313982_)))))
        (_g1396114025_ _stx13959_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx13891_ . _args13892_)
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
                                               (apply gxc#compile-e
                                                      _L13940_
                                                      _args13892_))
                                             _hd1390513935_
                                             _hd1390213927_)
                                            (_g1389413911_ _g1389513914_))))
                                    (_g1389413911_ _g1389513914_))))
                            (_g1389413911_ _g1389513914_))))
                    (_g1389413911_ _g1389513914_)))))
        (_g1389313956_ _stx13891_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx13773_ . _args13774_)
      (let* ((_g1377613804_
              (lambda (_g1377713801_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1377713801_)))
             (_g1377513888_
              (lambda (_g1377713807_)
                (if (gx#stx-pair? _g1377713807_)
                    (let ((_e1378013809_ (gx#stx-e _g1377713807_)))
                      (let ((_hd1378113812_ (##car _e1378013809_))
                            (_tl1378213814_ (##cdr _e1378013809_)))
                        (if (gx#stx-pair/null? _tl1378213814_)
                            (let ((_g15628_
                                   (gx#syntax-split-splice _tl1378213814_ '0)))
                              (begin
                                (let ((_g15629_
                                       (if (##values? _g15628_)
                                           (##vector-length _g15628_)
                                           1)))
                                  (if (not (##fx= _g15629_ 2))
                                      (error "Context expects 2 values"
                                             _g15629_)))
                                (let ((_target1378313817_
                                       (##vector-ref _g15628_ 0))
                                      (_tl1378513819_
                                       (##vector-ref _g15628_ 1)))
                                  (if (gx#stx-null? _tl1378513819_)
                                      (letrec ((_loop1378613822_
                                                (lambda (_hd1378413825_
                                                         _body1379013827_
                                                         _hd1379113829_)
                                                  (if (gx#stx-pair?
                                                       _hd1378413825_)
                                                      (let ((_e1378713832_
                                                             (gx#stx-e
                                                              _hd1378413825_)))
                                                        (let ((_lp-hd1378813835_
                                                               (##car _e1378713832_))
                                                              (_lp-tl1378913837_
                                                               (##cdr _e1378713832_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1378813835_)
                                                              (let ((_e1379413840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1378813835_)))
                        (let ((_hd1379513843_ (##car _e1379413840_))
                              (_tl1379613845_ (##cdr _e1379413840_)))
                          (if (gx#stx-pair? _tl1379613845_)
                              (let ((_e1379713848_ (gx#stx-e _tl1379613845_)))
                                (let ((_hd1379813851_ (##car _e1379713848_))
                                      (_tl1379913853_ (##cdr _e1379713848_)))
                                  (if (gx#stx-null? _tl1379913853_)
                                      (_loop1378613822_
                                       _lp-tl1378913837_
                                       (cons _hd1379813851_ _body1379013827_)
                                       (cons _hd1379513843_ _hd1379113829_))
                                      (_g1377613804_ _g1377713807_))))
                              (_g1377613804_ _g1377713807_))))
                      (_g1377613804_ _g1377713807_))))
              (let ((_body1379213856_ (reverse _body1379013827_))
                    (_hd1379313858_ (reverse _hd1379113829_)))
                ((lambda (_L13861_ _L13862_)
                   (for-each
                    (lambda (_g1387613878_)
                      (apply gxc#compile-e _g1387613878_ _args13774_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1388013883_ _g1388113885_)
                                (cons _g1388013883_ _g1388113885_))
                              '()
                              _L13861_))))
                 _body1379213856_
                 _hd1379313858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1378613822_
                                         _target1378313817_
                                         '()
                                         '()))
                                      (_g1377613804_ _g1377713807_)))))
                            (_g1377613804_ _g1377713807_))))
                    (_g1377613804_ _g1377713807_)))))
        (_g1377513888_ _stx13773_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx13626_ . _args13627_)
      (let* ((_g1362913664_
              (lambda (_g1363013661_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1363013661_)))
             (_g1362813770_
              (lambda (_g1363013667_)
                (if (gx#stx-pair? _g1363013667_)
                    (let ((_e1363413669_ (gx#stx-e _g1363013667_)))
                      (let ((_hd1363513672_ (##car _e1363413669_))
                            (_tl1363613674_ (##cdr _e1363413669_)))
                        (if (gx#stx-pair? _tl1363613674_)
                            (let ((_e1363713677_ (gx#stx-e _tl1363613674_)))
                              (let ((_hd1363813680_ (##car _e1363713677_))
                                    (_tl1363913682_ (##cdr _e1363713677_)))
                                (if (gx#stx-pair/null? _hd1363813680_)
                                    (let ((_g15630_
                                           (gx#syntax-split-splice
                                            _hd1363813680_
                                            '0)))
                                      (begin
                                        (let ((_g15631_
                                               (if (##values? _g15630_)
                                                   (##vector-length _g15630_)
                                                   1)))
                                          (if (not (##fx= _g15631_ 2))
                                              (error "Context expects 2 values"
                                                     _g15631_)))
                                        (let ((_target1364013685_
                                               (##vector-ref _g15630_ 0))
                                              (_tl1364213687_
                                               (##vector-ref _g15630_ 1)))
                                          (if (gx#stx-null? _tl1364213687_)
                                              (letrec ((_loop1364313690_
                                                        (lambda (_hd1364113693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1364713695_
                         _hd1364813697_)
                  (if (gx#stx-pair? _hd1364113693_)
                      (let ((_e1364413700_ (gx#stx-e _hd1364113693_)))
                        (let ((_lp-hd1364513703_ (##car _e1364413700_))
                              (_lp-tl1364613705_ (##cdr _e1364413700_)))
                          (if (gx#stx-pair? _lp-hd1364513703_)
                              (let ((_e1365113708_
                                     (gx#stx-e _lp-hd1364513703_)))
                                (let ((_hd1365213711_ (##car _e1365113708_))
                                      (_tl1365313713_ (##cdr _e1365113708_)))
                                  (if (gx#stx-pair? _tl1365313713_)
                                      (let ((_e1365413716_
                                             (gx#stx-e _tl1365313713_)))
                                        (let ((_hd1365513719_
                                               (##car _e1365413716_))
                                              (_tl1365613721_
                                               (##cdr _e1365413716_)))
                                          (if (gx#stx-null? _tl1365613721_)
                                              (_loop1364313690_
                                               _lp-tl1364613705_
                                               (cons _hd1365513719_
                                                     _expr1364713695_)
                                               (cons _hd1365213711_
                                                     _hd1364813697_))
                                              (_g1362913664_ _g1363013667_))))
                                      (_g1362913664_ _g1363013667_))))
                              (_g1362913664_ _g1363013667_))))
                      (let ((_expr1364913724_ (reverse _expr1364713695_))
                            (_hd1365013726_ (reverse _hd1364813697_)))
                        (if (gx#stx-pair? _tl1363913682_)
                            (let ((_e1365713729_ (gx#stx-e _tl1363913682_)))
                              (let ((_hd1365813732_ (##car _e1365713729_))
                                    (_tl1365913734_ (##cdr _e1365713729_)))
                                (if (gx#stx-null? _tl1365913734_)
                                    ((lambda (_L13737_ _L13738_ _L13739_)
                                       (for-each
                                        (lambda (_g1375813760_)
                                          (apply gxc#compile-e
                                                 _g1375813760_
                                                 _args13627_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1376213765_
                                                           _g1376313767_)
                                                    (cons _g1376213765_
                                                          _g1376313767_))
                                                  (cons _L13737_ '())
                                                  _L13738_))))
                                     _hd1365813732_
                                     _expr1364913724_
                                     _hd1365013726_)
                                    (_g1362913664_ _g1363013667_))))
                            (_g1362913664_ _g1363013667_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1364313690_
                                                 _target1364013685_
                                                 '()
                                                 '()))
                                              (_g1362913664_ _g1363013667_)))))
                                    (_g1362913664_ _g1363013667_))))
                            (_g1362913664_ _g1363013667_))))
                    (_g1362913664_ _g1363013667_)))))
        (_g1362813770_ _stx13626_))))
  (define gxc#collect-body-setq%
    (lambda (_stx13558_ . _args13559_)
      (let* ((_g1356113578_
              (lambda (_g1356213575_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1356213575_)))
             (_g1356013623_
              (lambda (_g1356213581_)
                (if (gx#stx-pair? _g1356213581_)
                    (let ((_e1356513583_ (gx#stx-e _g1356213581_)))
                      (let ((_hd1356613586_ (##car _e1356513583_))
                            (_tl1356713588_ (##cdr _e1356513583_)))
                        (if (gx#stx-pair? _tl1356713588_)
                            (let ((_e1356813591_ (gx#stx-e _tl1356713588_)))
                              (let ((_hd1356913594_ (##car _e1356813591_))
                                    (_tl1357013596_ (##cdr _e1356813591_)))
                                (if (gx#stx-pair? _tl1357013596_)
                                    (let ((_e1357113599_
                                           (gx#stx-e _tl1357013596_)))
                                      (let ((_hd1357213602_
                                             (##car _e1357113599_))
                                            (_tl1357313604_
                                             (##cdr _e1357113599_)))
                                        (if (gx#stx-null? _tl1357313604_)
                                            ((lambda (_L13607_ _L13608_)
                                               (apply gxc#compile-e
                                                      _L13607_
                                                      _args13559_))
                                             _hd1357213602_
                                             _hd1356913594_)
                                            (_g1356113578_ _g1356213581_))))
                                    (_g1356113578_ _g1356213581_))))
                            (_g1356113578_ _g1356213581_))))
                    (_g1356113578_ _g1356213581_)))))
        (_g1356013623_ _stx13558_))))
  (define gxc#collect-operands
    (lambda (_stx13471_ . _args13472_)
      (let* ((_g1347413493_
              (lambda (_g1347513490_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1347513490_)))
             (_g1347313555_
              (lambda (_g1347513496_)
                (if (gx#stx-pair? _g1347513496_)
                    (let ((_e1347713498_ (gx#stx-e _g1347513496_)))
                      (let ((_hd1347813501_ (##car _e1347713498_))
                            (_tl1347913503_ (##cdr _e1347713498_)))
                        (if (gx#stx-pair/null? _tl1347913503_)
                            (let ((_g15632_
                                   (gx#syntax-split-splice _tl1347913503_ '0)))
                              (begin
                                (let ((_g15633_
                                       (if (##values? _g15632_)
                                           (##vector-length _g15632_)
                                           1)))
                                  (if (not (##fx= _g15633_ 2))
                                      (error "Context expects 2 values"
                                             _g15633_)))
                                (let ((_target1348013506_
                                       (##vector-ref _g15632_ 0))
                                      (_tl1348213508_
                                       (##vector-ref _g15632_ 1)))
                                  (if (gx#stx-null? _tl1348213508_)
                                      (letrec ((_loop1348313511_
                                                (lambda (_hd1348113514_
                                                         _rands1348713516_)
                                                  (if (gx#stx-pair?
                                                       _hd1348113514_)
                                                      (let ((_e1348413519_
                                                             (gx#stx-e
                                                              _hd1348113514_)))
                                                        (let ((_lp-hd1348513522_
                                                               (##car _e1348413519_))
                                                              (_lp-tl1348613524_
                                                               (##cdr _e1348413519_)))
                                                          (_loop1348313511_
                                                           _lp-tl1348613524_
                                                           (cons _lp-hd1348513522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1348713516_))))
              (let ((_rands1348813527_ (reverse _rands1348713516_)))
                ((lambda (_L13530_)
                   (for-each
                    (lambda (_g1354313545_)
                      (apply gxc#compile-e _g1354313545_ _args13472_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1354713550_ _g1354813552_)
                                (cons _g1354713550_ _g1354813552_))
                              '()
                              _L13530_))))
                 _rands1348813527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1348313511_
                                         _target1348013506_
                                         '()))
                                      (_g1347413493_ _g1347513496_)))))
                            (_g1347413493_ _g1347513496_))))
                    (_g1347413493_ _g1347513496_)))))
        (_g1347313555_ _stx13471_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx13402_)
      (let* ((_g1340413421_
              (lambda (_g1340513418_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1340513418_)))
             (_g1340313468_
              (lambda (_g1340513424_)
                (if (gx#stx-pair? _g1340513424_)
                    (let ((_e1340813426_ (gx#stx-e _g1340513424_)))
                      (let ((_hd1340913429_ (##car _e1340813426_))
                            (_tl1341013431_ (##cdr _e1340813426_)))
                        (if (gx#stx-pair? _tl1341013431_)
                            (let ((_e1341113434_ (gx#stx-e _tl1341013431_)))
                              (let ((_hd1341213437_ (##car _e1341113434_))
                                    (_tl1341313439_ (##cdr _e1341113434_)))
                                (if (gx#stx-pair? _tl1341313439_)
                                    (let ((_e1341413442_
                                           (gx#stx-e _tl1341313439_)))
                                      (let ((_hd1341513445_
                                             (##car _e1341413442_))
                                            (_tl1341613447_
                                             (##cdr _e1341413442_)))
                                        (if (gx#stx-null? _tl1341613447_)
                                            ((lambda (_L13450_ _L13451_)
                                               (gx#stx-for-each1
                                                (lambda (_bind13466_)
                                                  (if (gx#identifier?
                                                       _bind13466_)
                                                      (gxc#add-module-binding!
                                                       _bind13466_
                                                       '#f)
                                                      '#!void))
                                                _L13451_))
                                             _hd1341513445_
                                             _hd1341213437_)
                                            (_g1340413421_ _g1340513424_))))
                                    (_g1340413421_ _g1340513424_))))
                            (_g1340413421_ _g1340513424_))))
                    (_g1340413421_ _g1340513424_)))))
        (_g1340313468_ _stx13402_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx13335_)
      (let* ((_g1333713354_
              (lambda (_g1333813351_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1333813351_)))
             (_g1333613399_
              (lambda (_g1333813357_)
                (if (gx#stx-pair? _g1333813357_)
                    (let ((_e1334113359_ (gx#stx-e _g1333813357_)))
                      (let ((_hd1334213362_ (##car _e1334113359_))
                            (_tl1334313364_ (##cdr _e1334113359_)))
                        (if (gx#stx-pair? _tl1334313364_)
                            (let ((_e1334413367_ (gx#stx-e _tl1334313364_)))
                              (let ((_hd1334513370_ (##car _e1334413367_))
                                    (_tl1334613372_ (##cdr _e1334413367_)))
                                (if (gx#stx-pair? _tl1334613372_)
                                    (let ((_e1334713375_
                                           (gx#stx-e _tl1334613372_)))
                                      (let ((_hd1334813378_
                                             (##car _e1334713375_))
                                            (_tl1334913380_
                                             (##cdr _e1334713375_)))
                                        (if (gx#stx-null? _tl1334913380_)
                                            ((lambda (_L13383_ _L13384_)
                                               (gxc#add-module-binding!
                                                _L13384_
                                                '#t))
                                             _hd1334813378_
                                             _hd1334513370_)
                                            (_g1333713354_ _g1333813357_))))
                                    (_g1333713354_ _g1333813357_))))
                            (_g1333713354_ _g1333813357_))))
                    (_g1333713354_ _g1333813357_)))))
        (_g1333613399_ _stx13335_))))
  (define gxc#lift-modules-module%
    (lambda (_stx13277_ _modules13278_)
      (let* ((_g1328013294_
              (lambda (_g1328113291_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1328113291_)))
             (_g1327913332_
              (lambda (_g1328113297_)
                (if (gx#stx-pair? _g1328113297_)
                    (let ((_e1328413299_ (gx#stx-e _g1328113297_)))
                      (let ((_hd1328513302_ (##car _e1328413299_))
                            (_tl1328613304_ (##cdr _e1328413299_)))
                        (if (gx#stx-pair? _tl1328613304_)
                            (let ((_e1328713307_ (gx#stx-e _tl1328613304_)))
                              (let ((_hd1328813310_ (##car _e1328713307_))
                                    (_tl1328913312_ (##cdr _e1328713307_)))
                                ((lambda (_L13315_ _L13316_)
                                   (let ((_ctx13329_
                                          (gx#syntax-local-e__0 _L13316_)))
                                     (begin
                                       (set-box!
                                        _modules13278_
                                        (cons _ctx13329_
                                              (unbox _modules13278_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx13329_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules13278_))
                                        gx#current-expander-context
                                        _ctx13329_))))
                                 _tl1328913312_
                                 _hd1328813310_)))
                            (_g1328013294_ _g1328113297_))))
                    (_g1328013294_ _g1328113297_)))))
        (_g1327913332_ _stx13277_))))
  (define gxc#add-module-binding!
    (lambda (_id13271_ _syntax?13272_)
      (let ((_eid13274_
             (##structure-ref
              (gx#resolve-identifier__0 _id13271_)
              '1
              gx#binding::t
              '#f))
            (_ht13275_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid13274_)
            '#!void
            (table-set!
             _ht13275_
             _eid13274_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid13274_)
              _syntax?13272_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id113264_ _id213265_)
      (letrec ((_symbol-e13267_
                (lambda (_id13269_)
                  (if (symbol? _id13269_)
                      _id13269_
                      (gxc#generate-runtime-binding-id _id13269_)))))
        (eq? (_symbol-e13267_ _id113264_) (_symbol-e13267_ _id213265_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id13242_)
      (let ((_$e13244_
             (if (##structure-direct-instance-of?
                  _id13242_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id13242_)
                 '#f)))
        (if _$e13244_
            ((lambda (_bind13247_)
               (let ((_eid13249_
                      (##structure-ref _bind13247_ '1 gx#binding::t '#f))
                     (_ht13250_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid13249_)
                     _eid13249_
                     (let ((_$e13252_ (table-ref _ht13250_ _eid13249_ '#f)))
                       (if _$e13252_
                           (values _$e13252_)
                           (if (##structure-instance-of?
                                _bind13247_
                                'gx#local-binding::t)
                               (let ((_gid13255_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid13249_)))
                                 (begin
                                   (table-set! _ht13250_ _eid13249_ _gid13255_)
                                   _gid13255_))
                               (if (##structure-instance-of?
                                    _bind13247_
                                    'gx#module-binding::t)
                                   (let ((_gid13262_
                                          (let ((_$e13257_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind13247_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e13257_
                                                ((lambda (_ns13260_)
                                                   (make-symbol
                                                    _ns13260_
                                                    '"#"
                                                    _eid13249_))
                                                 _$e13257_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid13249_)))))
                                     (begin
                                       (table-set!
                                        _ht13250_
                                        _eid13249_
                                        _gid13262_)
                                       _gid13262_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id13242_
                                    _eid13249_
                                    _bind13247_))))))))
             _$e13244_)
            (if (interned-symbol? (gx#stx-e _id13242_))
                (gx#stx-e _id13242_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id13242_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id13240_)
      (if (gx#identifier? _id13240_)
          (gxc#generate-runtime-binding-id _id13240_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym13220_ _quote?13221_)
        (let* ((_ht13223_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e13225_ (table-ref _ht13223_ _sym13220_ '#f)))
          (if _$e13225_
              (values _$e13225_)
              (let ((_g13228_
                     (if _quote?13221_
                         (make-symbol
                          '"__"
                          _sym13220_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym13220_ '"_"))))
                (begin
                  (table-set! _ht13223_ _sym13220_ _g13228_)
                  _g13228_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym13233_)
          (let ((_quote?13235_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym13233_
             _quote?13235_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g15635_
          (let ((_g15634_ (length _g15635_)))
            (cond ((##fx= _g15634_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g15635_))
                  ((##fx= _g15634_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g15635_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g15635_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id13217_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id13217_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key13177_)
      (if (interned-symbol? _key13177_)
          _key13177_
          (if (uninterned-symbol? _key13177_)
              (gxc#generate-runtime-gensym-reference__0 _key13177_)
              (let* ((_key1317813185_ _key13177_)
                     (_E1318013189_
                      (lambda ()
                        (error '"No clause matching" _key1317813185_)))
                     (_K1318113205_
                      (lambda (_mark13192_ _eid13193_)
                        (let ((_$e13195_
                               (##structure-ref
                                _mark13192_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e13195_
                              ((lambda (_ht13198_)
                                 (let ((_$e13200_
                                        (table-ref _ht13198_ _eid13193_ '#f)))
                                   (if _$e13200_
                                       ((lambda (_id13203_)
                                          (if (interned-symbol? _id13203_)
                                              _id13203_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id13203_)))
                                        _$e13200_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid13193_))))
                               _$e13195_)
                              (gxc#generate-runtime-identifier-key
                               _eid13193_))))))
                (if (##pair? _key1317813185_)
                    (let ((_hd1318213208_ (##car _key1317813185_))
                          (_tl1318313210_ (##cdr _key1317813185_)))
                      (let* ((_eid13213_ _hd1318213208_)
                             (_mark13215_ _tl1318313210_))
                        (_K1318113205_ _mark13215_ _eid13213_)))
                    (_E1318013189_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top13164_)
        (if _top13164_
            (let ((_ns13166_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi13167_ (gx#current-expander-phi)))
              (if (fxpositive? _phi13167_)
                  (make-symbol
                   _ns13166_
                   '"["
                   (number->string _phi13167_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns13166_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top13173_ '#f))
            (gxc#generate-runtime-temporary__% _top13173_))))
      (define gxc#generate-runtime-temporary
        (lambda _g15637_
          (let ((_g15636_ (length _g15637_)))
            (cond ((##fx= _g15636_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g15637_))
                  ((##fx= _g15636_ 1)
                   (apply gxc#generate-runtime-temporary__% _g15637_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g15637_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx13161_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx13081_)
      (let* ((_g1308313093_
              (lambda (_g1308413090_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1308413090_)))
             (_g1308213158_
              (lambda (_g1308413096_)
                (if (gx#stx-pair? _g1308413096_)
                    (let ((_e1308613098_ (gx#stx-e _g1308413096_)))
                      (let ((_hd1308713101_ (##car _e1308613098_))
                            (_tl1308813103_ (##cdr _e1308613098_)))
                        ((lambda (_L13106_)
                           (let* ((_body13116_
                                   (gx#stx-map1 gxc#compile-e _L13106_))
                                  (_body13155_
                                   (filter (lambda (_stx13118_)
                                             (let* ((___stx1455214553_
                                                     _stx13118_)
                                                    (_g1312113130_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1455214553_))))
                                               (let ((___kont1455414555_
                                                      (lambda () '#f))
                                                     (___kont1455614557_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1455214553_)
                                                     (let ((_e1312313142_
                                                            (gx#stx-e
                                                             ___stx1455214553_)))
                                                       (let ((_tl1312513147_
                                                              (##cdr _e1312313142_))
                                                             (_hd1312413145_
                                                              (##car _e1312313142_)))
                                                         (if (gx#identifier?
                                                              _hd1312413145_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1312413145_)
                         (if (gx#stx-null? _tl1312513147_)
                             (___kont1455414555_)
                             (___kont1455614557_))
                         (___kont1455614557_))
                     (___kont1455614557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1455614557_)))))
                                           _body13116_)))
                             (if (fx= (length _body13155_) '1)
                                 (car _body13155_)
                                 (cons 'begin _body13155_))))
                         _tl1308813103_)))
                    (_g1308313093_ _g1308413096_)))))
        (_g1308213158_ _stx13081_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx13043_)
      (let* ((_g1304513055_
              (lambda (_g1304613052_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1304613052_)))
             (_g1304413078_
              (lambda (_g1304613058_)
                (if (gx#stx-pair? _g1304613058_)
                    (let ((_e1304813060_ (gx#stx-e _g1304613058_)))
                      (let ((_hd1304913063_ (##car _e1304813060_))
                            (_tl1305013065_ (##cdr _e1304813060_)))
                        ((lambda (_L13068_)
                           (cons 'begin (gx#syntax->datum _L13068_)))
                         _tl1305013065_)))
                    (_g1304513055_ _g1304613058_)))))
        (_g1304413078_ _stx13043_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx12920_)
      (let* ((___stx1457214573_ _stx12920_)
             (_g1292312951_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1457214573_))))
        (let ((___kont1457414575_
               (lambda (_L13025_ _L13026_) (gxc#compile-e _L13025_)))
              (___kont1457614577_
               (lambda (_L12980_ _L12981_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L12981_))
                             (cons (gxc#compile-e _L12980_) '()))))))
          (let ((___match1459714598_
                 (lambda (_e1292713001_
                          _hd1292813004_
                          _tl1292913006_
                          _e1293013009_
                          _hd1293113012_
                          _tl1293213014_
                          _e1293313017_
                          _hd1293413020_
                          _tl1293513022_)
                   (let ((_L13025_ _hd1293413020_) (_L13026_ _hd1293113012_))
                     (if (gx#identifier? _L13026_)
                         (___kont1457414575_ _L13025_ _L13026_)
                         (___kont1457614577_
                          _hd1293413020_
                          _hd1293113012_))))))
            (if (gx#stx-pair? ___stx1457214573_)
                (let ((_e1292713001_ (gx#stx-e ___stx1457214573_)))
                  (let ((_tl1292913006_ (##cdr _e1292713001_))
                        (_hd1292813004_ (##car _e1292713001_)))
                    (if (gx#stx-pair? _tl1292913006_)
                        (let ((_e1293013009_ (gx#stx-e _tl1292913006_)))
                          (let ((_tl1293213014_ (##cdr _e1293013009_))
                                (_hd1293113012_ (##car _e1293013009_)))
                            (if (gx#stx-pair? _tl1293213014_)
                                (let ((_e1293313017_
                                       (gx#stx-e _tl1293213014_)))
                                  (let ((_tl1293513022_ (##cdr _e1293313017_))
                                        (_hd1293413020_ (##car _e1293313017_)))
                                    (if (gx#stx-null? _tl1293513022_)
                                        (___match1459714598_
                                         _e1292713001_
                                         _hd1292813004_
                                         _tl1292913006_
                                         _e1293013009_
                                         _hd1293113012_
                                         _tl1293213014_
                                         _e1293313017_
                                         _hd1293413020_
                                         _tl1293513022_)
                                        (_g1292312951_))))
                                (_g1292312951_))))
                        (_g1292312951_))))
                (_g1292312951_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx12882_)
      (let* ((_g1288412894_
              (lambda (_g1288512891_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1288512891_)))
             (_g1288312917_
              (lambda (_g1288512897_)
                (if (gx#stx-pair? _g1288512897_)
                    (let ((_e1288712899_ (gx#stx-e _g1288512897_)))
                      (let ((_hd1288812902_ (##car _e1288712899_))
                            (_tl1288912904_ (##cdr _e1288712899_)))
                        ((lambda (_L12907_)
                           (cons 'declare (map gx#syntax->datum _L12907_)))
                         _tl1288912904_)))
                    (_g1288412894_ _g1288512897_)))))
        (_g1288312917_ _stx12882_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx12629_)
      (let* ((_g1263112648_
              (lambda (_g1263212645_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1263212645_)))
             (_g1263012879_
              (lambda (_g1263212651_)
                (if (gx#stx-pair? _g1263212651_)
                    (let ((_e1263512653_ (gx#stx-e _g1263212651_)))
                      (let ((_hd1263612656_ (##car _e1263512653_))
                            (_tl1263712658_ (##cdr _e1263512653_)))
                        (if (gx#stx-pair? _tl1263712658_)
                            (let ((_e1263812661_ (gx#stx-e _tl1263712658_)))
                              (let ((_hd1263912664_ (##car _e1263812661_))
                                    (_tl1264012666_ (##cdr _e1263812661_)))
                                (if (gx#stx-pair? _tl1264012666_)
                                    (let ((_e1264112669_
                                           (gx#stx-e _tl1264012666_)))
                                      (let ((_hd1264212672_
                                             (##car _e1264112669_))
                                            (_tl1264312674_
                                             (##cdr _e1264112669_)))
                                        (if (gx#stx-null? _tl1264312674_)
                                            ((lambda (_L12677_ _L12678_)
                                               (let* ((___stx1465014651_
                                                       _L12678_)
                                                      (_g1269512709_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1465014651_))))
                                                 (let ((___kont1465214653_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L12677_)))
                                                       (___kont1465414655_
                                                        (lambda (_L12841_)
                                                          (let ((_eid12850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L12841_)))
                    (begin
                      (let ((_lambda-expr1285112853_
                             (gxc#apply-find-lambda-expression _L12677_)))
                        (if _lambda-expr1285112853_
                            (let ((_lambda-expr12856_ _lambda-expr1285112853_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr12856_
                               _eid12850_))
                            '#f))
                      (cons 'define
                            (cons _eid12850_
                                  (cons (gxc#compile-e _L12677_) '())))))))
               (___kont1465614657_
                (lambda ()
                  (let* ((_tmp12716_ (gxc#generate-runtime-temporary__% '#t))
                         (_body12825_
                          (let _lp12718_ ((_rest12720_ _L12678_)
                                          (_k12721_ '0)
                                          (_r12722_ '()))
                            (let* ((___stx1462014621_ _rest12720_)
                                   (_g1272712744_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1462014621_))))
                              (let ((___kont1462214623_
                                     (lambda (_L12812_)
                                       (_lp12718_
                                        _L12812_
                                        (fx+ _k12721_ '1)
                                        _r12722_)))
                                    (___kont1462414625_
                                     (lambda (_L12785_ _L12786_)
                                       (_lp12718_
                                        _L12785_
                                        (fx+ _k12721_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L12786_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp12716_
                         _k12721_
                         _L12785_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r12722_))))
                                    (___kont1462614627_
                                     (lambda (_L12756_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12756_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp12716_
                                _k12721_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r12722_)))
                                    (___kont1462814629_
                                     (lambda () (reverse _r12722_))))
                                (let ((_g1272512772_
                                       (lambda ()
                                         (let ((_L12756_ ___stx1462014621_))
                                           (if (gx#identifier? _L12756_)
                                               (___kont1462614627_ _L12756_)
                                               (___kont1462814629_))))))
                                  (if (gx#stx-pair? ___stx1462014621_)
                                      (let ((_e1273012801_
                                             (gx#stx-e ___stx1462014621_)))
                                        (let ((_tl1273212806_
                                               (##cdr _e1273012801_))
                                              (_hd1273112804_
                                               (##car _e1273012801_)))
                                          (if (gx#stx-datum? _hd1273112804_)
                                              (let ((_e1273312809_
                                                     (gx#stx-e
                                                      _hd1273112804_)))
                                                (if (equal? _e1273312809_ '#f)
                                                    (___kont1462214623_
                                                     _tl1273212806_)
                                                    (___kont1462414625_
                                                     _tl1273212806_
                                                     _hd1273112804_)))
                                              (___kont1462414625_
                                               _tl1273212806_
                                               _hd1273112804_))))
                                      (_g1272512772_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp12716_
                                            (cons (gxc#compile-e _L12677_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp12716_
                                       _L12678_
                                       _L12677_)
                                      _body12825_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1465014651_)
                                                       (let ((_e1269712863_
                                                              (gx#stx-e
                                                               ___stx1465014651_)))
                                                         (let ((_tl1269912868_
                                                                (##cdr _e1269712863_))
                                                               (_hd1269812866_
                                                                (##car _e1269712863_)))
                                                           (if (gx#stx-datum?
                                                                _hd1269812866_)
                                                               (let ((_e1270012871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1269812866_)))
                         (if (equal? _e1270012871_ '#f)
                             (if (gx#stx-null? _tl1269912868_)
                                 (___kont1465214653_)
                                 (___kont1465614657_))
                             (if (gx#stx-null? _tl1269912868_)
                                 (___kont1465414655_ _hd1269812866_)
                                 (___kont1465614657_))))
                       (if (gx#stx-null? _tl1269912868_)
                           (___kont1465414655_ _hd1269812866_)
                           (___kont1465614657_)))))
               (___kont1465614657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1264212672_
                                             _hd1263912664_)
                                            (_g1263112648_ _g1263212651_))))
                                    (_g1263112648_ _g1263212651_))))
                            (_g1263112648_ _g1263212651_))))
                    (_g1263112648_ _g1263212651_)))))
        (_g1263012879_ _stx12629_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals12605_ _hd12606_ _expr12607_)
      (let ((_$e12609_ (gxc#apply-count-values _expr12607_)))
        (if _$e12609_
            ((lambda (_count12612_)
               (let ((_len12614_ (gx#stx-length _hd12606_))
                     (_cmp12615_ (if (gx#stx-list? _hd12606_) fx= fx>=)))
                 (if (let ((_$e12617_ (fx= _len12614_ '0)))
                       (if _$e12617_
                           _$e12617_
                           (_cmp12615_ _count12612_ _len12614_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr12607_
                      _hd12606_))))
             _$e12609_)
            (let* ((_len12620_ (gx#stx-length _hd12606_))
                   (_cmp12622_ (if (gx#stx-list? _hd12606_) '##fx= '##fx>=))
                   (_errmsg12624_
                    (string-append
                     (if (gx#stx-list? _hd12606_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len12620_)
                     '" values"))
                   (_count12626_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd12606_)) (fx= _len12620_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count12626_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals12605_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp12622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12626_ (cons _len12620_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg12624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12626_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var12603_)
      (cons 'if
            (cons (cons '##values? (cons _var12603_ '()))
                  (cons (cons '##vector-length (cons _var12603_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var12599_ _i12600_ _rest12601_)
      (if (if (fx= _i12600_ '0) (not (gx#stx-pair? _rest12601_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var12599_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var12599_ (cons '0 '())))
                            (cons _var12599_ '()))))
          (cons '##vector-ref (cons _var12599_ (cons _i12600_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var12596_ _i12597_)
      (if (fx= _i12597_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var12596_ '()))
                      (cons (cons '##vector->list (cons _var12596_ '()))
                            (cons (cons 'list (cons _var12596_ '())) '()))))
          (if (fx= _i12597_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var12596_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var12596_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var12596_ '()))
                          (cons _i12597_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx12529_)
      (let* ((_g1253112548_
              (lambda (_g1253212545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1253212545_)))
             (_g1253012593_
              (lambda (_g1253212551_)
                (if (gx#stx-pair? _g1253212551_)
                    (let ((_e1253512553_ (gx#stx-e _g1253212551_)))
                      (let ((_hd1253612556_ (##car _e1253512553_))
                            (_tl1253712558_ (##cdr _e1253512553_)))
                        (if (gx#stx-pair? _tl1253712558_)
                            (let ((_e1253812561_ (gx#stx-e _tl1253712558_)))
                              (let ((_hd1253912564_ (##car _e1253812561_))
                                    (_tl1254012566_ (##cdr _e1253812561_)))
                                (if (gx#stx-pair? _tl1254012566_)
                                    (let ((_e1254112569_
                                           (gx#stx-e _tl1254012566_)))
                                      (let ((_hd1254212572_
                                             (##car _e1254112569_))
                                            (_tl1254312574_
                                             (##cdr _e1254112569_)))
                                        (if (gx#stx-null? _tl1254312574_)
                                            ((lambda (_L12577_ _L12578_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L12578_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12577_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1254212572_
                                             _hd1253912564_)
                                            (_g1253112548_ _g1253212551_))))
                                    (_g1253112548_ _g1253212551_))))
                            (_g1253112548_ _g1253212551_))))
                    (_g1253112548_ _g1253212551_)))))
        (_g1253012593_ _stx12529_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd12527_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd12527_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx11070_)
      (letrec ((_dispatch-case?11072_
                (lambda (_hd11757_ _body11758_)
                  (let* ((_form11760_ (cons _hd11757_ (cons _body11758_ '())))
                         (___stx1468214683_ _form11760_)
                         (_g1176511922_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1468214683_))))
                    (let ((___kont1468414685_
                           (lambda (_L12447_ _L12448_ _L12449_) '#t))
                          (___kont1469014691_
                           (lambda (_L12235_
                                    _L12236_
                                    _L12237_
                                    _L12238_
                                    _L12239_
                                    _L12240_)
                             '#t))
                          (___kont1469614697_
                           (lambda (_L12030_ _L12031_ _L12032_ _L12033_) '#t))
                          (___kont1469814699_ (lambda () '#f)))
                      (let* ((___match1482314824_
                              (lambda (_e1188211934_
                                       _hd1188311937_
                                       _tl1188411939_
                                       _e1188511942_
                                       _hd1188611945_
                                       _tl1188711947_
                                       _e1188811950_
                                       _hd1188911953_
                                       _tl1189011955_
                                       _e1189111958_
                                       _hd1189211961_
                                       _tl1189311963_
                                       _e1189411966_
                                       _hd1189511969_
                                       _tl1189611971_
                                       _e1189711974_
                                       _hd1189811977_
                                       _tl1189911979_
                                       _e1190011982_
                                       _hd1190111985_
                                       _tl1190211987_
                                       _e1190311990_
                                       _hd1190411993_
                                       _tl1190511995_
                                       _e1190611998_
                                       _hd1190712001_
                                       _tl1190812003_
                                       _e1190912006_
                                       _hd1191012009_
                                       _tl1191112011_
                                       _e1191212014_
                                       _hd1191312017_
                                       _tl1191412019_
                                       _e1191512022_
                                       _hd1191612025_
                                       _tl1191712027_)
                                (let ((_L12030_ _hd1191612025_)
                                      (_L12031_ _hd1190712001_)
                                      (_L12032_ _hd1189811977_)
                                      (_L12033_ _hd1188311937_))
                                  (if (if (gx#identifier? _L12033_)
                                          (if (gxc#runtime-identifier=?
                                               _L12032_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L12033_
                                                   _L12030_)
                                                  (not (gx#free-identifier=?
                                                        _L12031_
                                                        _L12033_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1469614697_
                                       _L12030_
                                       _L12031_
                                       _L12032_
                                       _L12033_)
                                      (___kont1469814699_)))))
                             (___match1479514796_
                              (lambda (_e1188211934_
                                       _hd1188311937_
                                       _tl1188411939_
                                       _e1188511942_
                                       _hd1188611945_
                                       _tl1188711947_
                                       _e1188811950_
                                       _hd1188911953_
                                       _tl1189011955_
                                       _e1189111958_
                                       _hd1189211961_
                                       _tl1189311963_
                                       _e1189411966_
                                       _hd1189511969_
                                       _tl1189611971_
                                       _e1189711974_
                                       _hd1189811977_
                                       _tl1189911979_
                                       _e1190011982_
                                       _hd1190111985_
                                       _tl1190211987_
                                       _e1190311990_
                                       _hd1190411993_
                                       _tl1190511995_
                                       _e1190611998_
                                       _hd1190712001_
                                       _tl1190812003_)
                                (if (gx#stx-pair? _tl1190211987_)
                                    (let ((_e1190912006_
                                           (gx#stx-e _tl1190211987_)))
                                      (let ((_tl1191112011_
                                             (##cdr _e1190912006_))
                                            (_hd1191012009_
                                             (##car _e1190912006_)))
                                        (if (gx#stx-pair? _hd1191012009_)
                                            (let ((_e1191212014_
                                                   (gx#stx-e _hd1191012009_)))
                                              (let ((_tl1191412019_
                                                     (##cdr _e1191212014_))
                                                    (_hd1191312017_
                                                     (##car _e1191212014_)))
                                                (if (gx#identifier?
                                                     _hd1191312017_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1191312017_)
                                                        (if (gx#stx-pair?
                                                             _tl1191412019_)
                                                            (let ((_e1191512022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1191412019_)))
                      (let ((_tl1191712027_ (##cdr _e1191512022_))
                            (_hd1191612025_ (##car _e1191512022_)))
                        (if (gx#stx-null? _tl1191712027_)
                            (if (gx#stx-null? _tl1191112011_)
                                (if (gx#stx-null? _tl1188711947_)
                                    (___match1482314824_
                                     _e1188211934_
                                     _hd1188311937_
                                     _tl1188411939_
                                     _e1188511942_
                                     _hd1188611945_
                                     _tl1188711947_
                                     _e1188811950_
                                     _hd1188911953_
                                     _tl1189011955_
                                     _e1189111958_
                                     _hd1189211961_
                                     _tl1189311963_
                                     _e1189411966_
                                     _hd1189511969_
                                     _tl1189611971_
                                     _e1189711974_
                                     _hd1189811977_
                                     _tl1189911979_
                                     _e1190011982_
                                     _hd1190111985_
                                     _tl1190211987_
                                     _e1190311990_
                                     _hd1190411993_
                                     _tl1190511995_
                                     _e1190611998_
                                     _hd1190712001_
                                     _tl1190812003_
                                     _e1190912006_
                                     _hd1191012009_
                                     _tl1191112011_
                                     _e1191212014_
                                     _hd1191312017_
                                     _tl1191412019_
                                     _e1191512022_
                                     _hd1191612025_
                                     _tl1191712027_)
                                    (___kont1469814699_))
                                (___kont1469814699_))
                            (___kont1469814699_))))
                    (___kont1469814699_))
                (___kont1469814699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1469814699_))))
                                            (___kont1469814699_))))
                                    (___kont1469814699_))))
                             (___match1472514726_
                              (lambda (_e1181812075_
                                       _hd1181912078_
                                       _tl1182012080_
                                       ___splice1469214693_
                                       _target1182112083_
                                       _tl1182312085_)
                                (letrec ((_loop1182412088_
                                          (lambda (_hd1182212091_
                                                   _arg1182812093_)
                                            (if (gx#stx-pair? _hd1182212091_)
                                                (let ((_e1182512096_
                                                       (gx#stx-e
                                                        _hd1182212091_)))
                                                  (let ((_lp-tl1182712101_
                                                         (##cdr _e1182512096_))
                                                        (_lp-hd1182612099_
                                                         (##car _e1182512096_)))
                                                    (_loop1182412088_
                                                     _lp-tl1182712101_
                                                     (cons _lp-hd1182612099_
                                                           _arg1182812093_))))
                                                (let ((_arg1182912104_
                                                       (reverse _arg1182812093_)))
                                                  (if (gx#stx-pair?
                                                       _tl1182012080_)
                                                      (let ((_e1183012107_
                                                             (gx#stx-e
                                                              _tl1182012080_)))
                                                        (let ((_tl1183212112_
                                                               (##cdr _e1183012107_))
                                                              (_hd1183112110_
                                                               (##car _e1183012107_)))
                                                          (if (gx#stx-pair?
                                                               _hd1183112110_)
                                                              (let ((_e1183312115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1183112110_)))
                        (let ((_tl1183512120_ (##cdr _e1183312115_))
                              (_hd1183412118_ (##car _e1183312115_)))
                          (if (gx#identifier? _hd1183412118_)
                              (if (gx#stx-eq? '%#call _hd1183412118_)
                                  (if (gx#stx-pair? _tl1183512120_)
                                      (let ((_e1183612123_
                                             (gx#stx-e _tl1183512120_)))
                                        (let ((_tl1183812128_
                                               (##cdr _e1183612123_))
                                              (_hd1183712126_
                                               (##car _e1183612123_)))
                                          (if (gx#stx-pair? _hd1183712126_)
                                              (let ((_e1183912131_
                                                     (gx#stx-e
                                                      _hd1183712126_)))
                                                (let ((_tl1184112136_
                                                       (##cdr _e1183912131_))
                                                      (_hd1184012134_
                                                       (##car _e1183912131_)))
                                                  (if (gx#identifier?
                                                       _hd1184012134_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1184012134_)
                                                          (if (gx#stx-pair?
                                                               _tl1184112136_)
                                                              (let ((_e1184212139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1184112136_)))
                        (let ((_tl1184412144_ (##cdr _e1184212139_))
                              (_hd1184312142_ (##car _e1184212139_)))
                          (if (gx#stx-null? _tl1184412144_)
                              (if (gx#stx-pair? _tl1183812128_)
                                  (let ((_e1184512147_
                                         (gx#stx-e _tl1183812128_)))
                                    (let ((_tl1184712152_
                                           (##cdr _e1184512147_))
                                          (_hd1184612150_
                                           (##car _e1184512147_)))
                                      (if (gx#stx-pair? _hd1184612150_)
                                          (let ((_e1184812155_
                                                 (gx#stx-e _hd1184612150_)))
                                            (let ((_tl1185012160_
                                                   (##cdr _e1184812155_))
                                                  (_hd1184912158_
                                                   (##car _e1184812155_)))
                                              (if (gx#identifier?
                                                   _hd1184912158_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1184912158_)
                                                      (if (gx#stx-pair?
                                                           _tl1185012160_)
                                                          (let ((_e1185112163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1185012160_)))
                    (let ((_tl1185312168_ (##cdr _e1185112163_))
                          (_hd1185212166_ (##car _e1185112163_)))
                      (if (gx#stx-null? _tl1185312168_)
                          (if (gx#stx-pair/null? _tl1184712152_)
                              (if (fx>= (gx#stx-length _tl1184712152_) '1)
                                  (let ((___splice1469414695_
                                         (gx#syntax-split-splice
                                          _tl1184712152_
                                          '1)))
                                    (let ((_tl1185612173_
                                           (##vector-ref
                                            ___splice1469414695_
                                            '1))
                                          (_target1185412171_
                                           (##vector-ref
                                            ___splice1469414695_
                                            '0)))
                                      (if (gx#stx-pair? _tl1185612173_)
                                          (let ((_e1186312176_
                                                 (gx#stx-e _tl1185612173_)))
                                            (let ((_tl1186512181_
                                                   (##cdr _e1186312176_))
                                                  (_hd1186412179_
                                                   (##car _e1186312176_)))
                                              (if (gx#stx-pair? _hd1186412179_)
                                                  (let ((_e1186612184_
                                                         (gx#stx-e
                                                          _hd1186412179_)))
                                                    (let ((_tl1186812189_
                                                           (##cdr _e1186612184_))
                                                          (_hd1186712187_
                                                           (##car _e1186612184_)))
                                                      (if (gx#identifier?
                                                           _hd1186712187_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1186712187_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1186812189_)
                          (let ((_e1186912192_ (gx#stx-e _tl1186812189_)))
                            (let ((_tl1187112197_ (##cdr _e1186912192_))
                                  (_hd1187012195_ (##car _e1186912192_)))
                              (if (gx#stx-null? _tl1187112197_)
                                  (if (gx#stx-null? _tl1186512181_)
                                      (letrec ((_loop1185712200_
                                                (lambda (_hd1185512203_
                                                         _xarg1186112205_)
                                                  (if (gx#stx-pair?
                                                       _hd1185512203_)
                                                      (let ((_e1185812208_
                                                             (gx#stx-e
                                                              _hd1185512203_)))
                                                        (let ((_lp-tl1186012213_
                                                               (##cdr _e1185812208_))
                                                              (_lp-hd1185912211_
                                                               (##car _e1185812208_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1185912211_)
                                                              (let ((_e1187212216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1185912211_)))
                        (let ((_tl1187412221_ (##cdr _e1187212216_))
                              (_hd1187312219_ (##car _e1187212216_)))
                          (if (gx#identifier? _hd1187312219_)
                              (if (gx#stx-eq? '%#ref _hd1187312219_)
                                  (if (gx#stx-pair? _tl1187412221_)
                                      (let ((_e1187512224_
                                             (gx#stx-e _tl1187412221_)))
                                        (let ((_tl1187712229_
                                               (##cdr _e1187512224_))
                                              (_hd1187612227_
                                               (##car _e1187512224_)))
                                          (if (gx#stx-null? _tl1187712229_)
                                              (_loop1185712200_
                                               _lp-tl1186012213_
                                               (cons _hd1187612227_
                                                     _xarg1186112205_))
                                              (___match1479514796_
                                               _e1181812075_
                                               _hd1181912078_
                                               _tl1182012080_
                                               _e1183012107_
                                               _hd1183112110_
                                               _tl1183212112_
                                               _e1183312115_
                                               _hd1183412118_
                                               _tl1183512120_
                                               _e1183612123_
                                               _hd1183712126_
                                               _tl1183812128_
                                               _e1183912131_
                                               _hd1184012134_
                                               _tl1184112136_
                                               _e1184212139_
                                               _hd1184312142_
                                               _tl1184412144_
                                               _e1184512147_
                                               _hd1184612150_
                                               _tl1184712152_
                                               _e1184812155_
                                               _hd1184912158_
                                               _tl1185012160_
                                               _e1185112163_
                                               _hd1185212166_
                                               _tl1185312168_))))
                                      (___match1479514796_
                                       _e1181812075_
                                       _hd1181912078_
                                       _tl1182012080_
                                       _e1183012107_
                                       _hd1183112110_
                                       _tl1183212112_
                                       _e1183312115_
                                       _hd1183412118_
                                       _tl1183512120_
                                       _e1183612123_
                                       _hd1183712126_
                                       _tl1183812128_
                                       _e1183912131_
                                       _hd1184012134_
                                       _tl1184112136_
                                       _e1184212139_
                                       _hd1184312142_
                                       _tl1184412144_
                                       _e1184512147_
                                       _hd1184612150_
                                       _tl1184712152_
                                       _e1184812155_
                                       _hd1184912158_
                                       _tl1185012160_
                                       _e1185112163_
                                       _hd1185212166_
                                       _tl1185312168_))
                                  (___match1479514796_
                                   _e1181812075_
                                   _hd1181912078_
                                   _tl1182012080_
                                   _e1183012107_
                                   _hd1183112110_
                                   _tl1183212112_
                                   _e1183312115_
                                   _hd1183412118_
                                   _tl1183512120_
                                   _e1183612123_
                                   _hd1183712126_
                                   _tl1183812128_
                                   _e1183912131_
                                   _hd1184012134_
                                   _tl1184112136_
                                   _e1184212139_
                                   _hd1184312142_
                                   _tl1184412144_
                                   _e1184512147_
                                   _hd1184612150_
                                   _tl1184712152_
                                   _e1184812155_
                                   _hd1184912158_
                                   _tl1185012160_
                                   _e1185112163_
                                   _hd1185212166_
                                   _tl1185312168_))
                              (___match1479514796_
                               _e1181812075_
                               _hd1181912078_
                               _tl1182012080_
                               _e1183012107_
                               _hd1183112110_
                               _tl1183212112_
                               _e1183312115_
                               _hd1183412118_
                               _tl1183512120_
                               _e1183612123_
                               _hd1183712126_
                               _tl1183812128_
                               _e1183912131_
                               _hd1184012134_
                               _tl1184112136_
                               _e1184212139_
                               _hd1184312142_
                               _tl1184412144_
                               _e1184512147_
                               _hd1184612150_
                               _tl1184712152_
                               _e1184812155_
                               _hd1184912158_
                               _tl1185012160_
                               _e1185112163_
                               _hd1185212166_
                               _tl1185312168_))))
                      (___match1479514796_
                       _e1181812075_
                       _hd1181912078_
                       _tl1182012080_
                       _e1183012107_
                       _hd1183112110_
                       _tl1183212112_
                       _e1183312115_
                       _hd1183412118_
                       _tl1183512120_
                       _e1183612123_
                       _hd1183712126_
                       _tl1183812128_
                       _e1183912131_
                       _hd1184012134_
                       _tl1184112136_
                       _e1184212139_
                       _hd1184312142_
                       _tl1184412144_
                       _e1184512147_
                       _hd1184612150_
                       _tl1184712152_
                       _e1184812155_
                       _hd1184912158_
                       _tl1185012160_
                       _e1185112163_
                       _hd1185212166_
                       _tl1185312168_))))
              (let ((_xarg1186212232_ (reverse _xarg1186112205_)))
                (if (gx#stx-null? _tl1183212112_)
                    (let ((_L12235_ _hd1187012195_)
                          (_L12236_ _xarg1186212232_)
                          (_L12237_ _hd1185212166_)
                          (_L12238_ _hd1184312142_)
                          (_L12239_ _tl1182312085_)
                          (_L12240_ _arg1182912104_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1228312286_ _g1228412288_)
                                           (cons _g1228312286_ _g1228412288_))
                                         '()
                                         _L12240_)))
                              (if (gx#identifier? _L12239_)
                                  (if (gxc#runtime-identifier=?
                                       _L12238_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1229012293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1229112295_)
                           (cons _g1229012293_ _g1229112295_))
                         '()
                         _L12240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1229712300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1229812302_)
                           (cons _g1229712300_ _g1229812302_))
                         '()
                         _L12236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1230412307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1230512309_)
                           (cons _g1230412307_ _g1230512309_))
                         '()
                         _L12240_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1231112314_ _g1231212316_)
                           (cons _g1231112314_ _g1231212316_))
                         '()
                         _L12236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L12239_
                                                   _L12235_)
                                                  (not (find (lambda (_g1231812320_)
                                                               (gx#free-identifier=?
                                                                _g1231812320_
                                                                _L12237_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1232212325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1232312327_)
                                 (cons _g1232212325_ _g1232312327_))
                               (cons _L12239_ '())
                               _L12240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1469014691_
                           _L12235_
                           _L12236_
                           _L12237_
                           _L12238_
                           _L12239_
                           _L12240_)
                          (___match1479514796_
                           _e1181812075_
                           _hd1181912078_
                           _tl1182012080_
                           _e1183012107_
                           _hd1183112110_
                           _tl1183212112_
                           _e1183312115_
                           _hd1183412118_
                           _tl1183512120_
                           _e1183612123_
                           _hd1183712126_
                           _tl1183812128_
                           _e1183912131_
                           _hd1184012134_
                           _tl1184112136_
                           _e1184212139_
                           _hd1184312142_
                           _tl1184412144_
                           _e1184512147_
                           _hd1184612150_
                           _tl1184712152_
                           _e1184812155_
                           _hd1184912158_
                           _tl1185012160_
                           _e1185112163_
                           _hd1185212166_
                           _tl1185312168_)))
                    (___match1479514796_
                     _e1181812075_
                     _hd1181912078_
                     _tl1182012080_
                     _e1183012107_
                     _hd1183112110_
                     _tl1183212112_
                     _e1183312115_
                     _hd1183412118_
                     _tl1183512120_
                     _e1183612123_
                     _hd1183712126_
                     _tl1183812128_
                     _e1183912131_
                     _hd1184012134_
                     _tl1184112136_
                     _e1184212139_
                     _hd1184312142_
                     _tl1184412144_
                     _e1184512147_
                     _hd1184612150_
                     _tl1184712152_
                     _e1184812155_
                     _hd1184912158_
                     _tl1185012160_
                     _e1185112163_
                     _hd1185212166_
                     _tl1185312168_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1185712200_
                                         _target1185412171_
                                         '()))
                                      (___match1479514796_
                                       _e1181812075_
                                       _hd1181912078_
                                       _tl1182012080_
                                       _e1183012107_
                                       _hd1183112110_
                                       _tl1183212112_
                                       _e1183312115_
                                       _hd1183412118_
                                       _tl1183512120_
                                       _e1183612123_
                                       _hd1183712126_
                                       _tl1183812128_
                                       _e1183912131_
                                       _hd1184012134_
                                       _tl1184112136_
                                       _e1184212139_
                                       _hd1184312142_
                                       _tl1184412144_
                                       _e1184512147_
                                       _hd1184612150_
                                       _tl1184712152_
                                       _e1184812155_
                                       _hd1184912158_
                                       _tl1185012160_
                                       _e1185112163_
                                       _hd1185212166_
                                       _tl1185312168_))
                                  (___match1479514796_
                                   _e1181812075_
                                   _hd1181912078_
                                   _tl1182012080_
                                   _e1183012107_
                                   _hd1183112110_
                                   _tl1183212112_
                                   _e1183312115_
                                   _hd1183412118_
                                   _tl1183512120_
                                   _e1183612123_
                                   _hd1183712126_
                                   _tl1183812128_
                                   _e1183912131_
                                   _hd1184012134_
                                   _tl1184112136_
                                   _e1184212139_
                                   _hd1184312142_
                                   _tl1184412144_
                                   _e1184512147_
                                   _hd1184612150_
                                   _tl1184712152_
                                   _e1184812155_
                                   _hd1184912158_
                                   _tl1185012160_
                                   _e1185112163_
                                   _hd1185212166_
                                   _tl1185312168_))))
                          (___match1479514796_
                           _e1181812075_
                           _hd1181912078_
                           _tl1182012080_
                           _e1183012107_
                           _hd1183112110_
                           _tl1183212112_
                           _e1183312115_
                           _hd1183412118_
                           _tl1183512120_
                           _e1183612123_
                           _hd1183712126_
                           _tl1183812128_
                           _e1183912131_
                           _hd1184012134_
                           _tl1184112136_
                           _e1184212139_
                           _hd1184312142_
                           _tl1184412144_
                           _e1184512147_
                           _hd1184612150_
                           _tl1184712152_
                           _e1184812155_
                           _hd1184912158_
                           _tl1185012160_
                           _e1185112163_
                           _hd1185212166_
                           _tl1185312168_))
                      (___match1479514796_
                       _e1181812075_
                       _hd1181912078_
                       _tl1182012080_
                       _e1183012107_
                       _hd1183112110_
                       _tl1183212112_
                       _e1183312115_
                       _hd1183412118_
                       _tl1183512120_
                       _e1183612123_
                       _hd1183712126_
                       _tl1183812128_
                       _e1183912131_
                       _hd1184012134_
                       _tl1184112136_
                       _e1184212139_
                       _hd1184312142_
                       _tl1184412144_
                       _e1184512147_
                       _hd1184612150_
                       _tl1184712152_
                       _e1184812155_
                       _hd1184912158_
                       _tl1185012160_
                       _e1185112163_
                       _hd1185212166_
                       _tl1185312168_))
                  (___match1479514796_
                   _e1181812075_
                   _hd1181912078_
                   _tl1182012080_
                   _e1183012107_
                   _hd1183112110_
                   _tl1183212112_
                   _e1183312115_
                   _hd1183412118_
                   _tl1183512120_
                   _e1183612123_
                   _hd1183712126_
                   _tl1183812128_
                   _e1183912131_
                   _hd1184012134_
                   _tl1184112136_
                   _e1184212139_
                   _hd1184312142_
                   _tl1184412144_
                   _e1184512147_
                   _hd1184612150_
                   _tl1184712152_
                   _e1184812155_
                   _hd1184912158_
                   _tl1185012160_
                   _e1185112163_
                   _hd1185212166_
                   _tl1185312168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1479514796_
                                                   _e1181812075_
                                                   _hd1181912078_
                                                   _tl1182012080_
                                                   _e1183012107_
                                                   _hd1183112110_
                                                   _tl1183212112_
                                                   _e1183312115_
                                                   _hd1183412118_
                                                   _tl1183512120_
                                                   _e1183612123_
                                                   _hd1183712126_
                                                   _tl1183812128_
                                                   _e1183912131_
                                                   _hd1184012134_
                                                   _tl1184112136_
                                                   _e1184212139_
                                                   _hd1184312142_
                                                   _tl1184412144_
                                                   _e1184512147_
                                                   _hd1184612150_
                                                   _tl1184712152_
                                                   _e1184812155_
                                                   _hd1184912158_
                                                   _tl1185012160_
                                                   _e1185112163_
                                                   _hd1185212166_
                                                   _tl1185312168_))))
                                          (___match1479514796_
                                           _e1181812075_
                                           _hd1181912078_
                                           _tl1182012080_
                                           _e1183012107_
                                           _hd1183112110_
                                           _tl1183212112_
                                           _e1183312115_
                                           _hd1183412118_
                                           _tl1183512120_
                                           _e1183612123_
                                           _hd1183712126_
                                           _tl1183812128_
                                           _e1183912131_
                                           _hd1184012134_
                                           _tl1184112136_
                                           _e1184212139_
                                           _hd1184312142_
                                           _tl1184412144_
                                           _e1184512147_
                                           _hd1184612150_
                                           _tl1184712152_
                                           _e1184812155_
                                           _hd1184912158_
                                           _tl1185012160_
                                           _e1185112163_
                                           _hd1185212166_
                                           _tl1185312168_))))
                                  (___match1479514796_
                                   _e1181812075_
                                   _hd1181912078_
                                   _tl1182012080_
                                   _e1183012107_
                                   _hd1183112110_
                                   _tl1183212112_
                                   _e1183312115_
                                   _hd1183412118_
                                   _tl1183512120_
                                   _e1183612123_
                                   _hd1183712126_
                                   _tl1183812128_
                                   _e1183912131_
                                   _hd1184012134_
                                   _tl1184112136_
                                   _e1184212139_
                                   _hd1184312142_
                                   _tl1184412144_
                                   _e1184512147_
                                   _hd1184612150_
                                   _tl1184712152_
                                   _e1184812155_
                                   _hd1184912158_
                                   _tl1185012160_
                                   _e1185112163_
                                   _hd1185212166_
                                   _tl1185312168_))
                              (___match1479514796_
                               _e1181812075_
                               _hd1181912078_
                               _tl1182012080_
                               _e1183012107_
                               _hd1183112110_
                               _tl1183212112_
                               _e1183312115_
                               _hd1183412118_
                               _tl1183512120_
                               _e1183612123_
                               _hd1183712126_
                               _tl1183812128_
                               _e1183912131_
                               _hd1184012134_
                               _tl1184112136_
                               _e1184212139_
                               _hd1184312142_
                               _tl1184412144_
                               _e1184512147_
                               _hd1184612150_
                               _tl1184712152_
                               _e1184812155_
                               _hd1184912158_
                               _tl1185012160_
                               _e1185112163_
                               _hd1185212166_
                               _tl1185312168_))
                          (___kont1469814699_))))
                  (___kont1469814699_))
              (___kont1469814699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1469814699_))))
                                          (___kont1469814699_))))
                                  (___kont1469814699_))
                              (___kont1469814699_))))
                      (___kont1469814699_))
                  (___kont1469814699_))
              (___kont1469814699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1469814699_))))
                                      (___kont1469814699_))
                                  (___kont1469814699_))
                              (___kont1469814699_))))
                      (___kont1469814699_))))
              (___kont1469814699_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1182412088_ _target1182112083_ '()))))
                             (___match1471314714_
                              (lambda (_e1177012335_
                                       _hd1177112338_
                                       _tl1177212340_
                                       ___splice1468614687_
                                       _target1177312343_
                                       _tl1177512345_)
                                (letrec ((_loop1177612348_
                                          (lambda (_hd1177412351_
                                                   _arg1178012353_)
                                            (if (gx#stx-pair? _hd1177412351_)
                                                (let ((_e1177712356_
                                                       (gx#stx-e
                                                        _hd1177412351_)))
                                                  (let ((_lp-tl1177912361_
                                                         (##cdr _e1177712356_))
                                                        (_lp-hd1177812359_
                                                         (##car _e1177712356_)))
                                                    (_loop1177612348_
                                                     _lp-tl1177912361_
                                                     (cons _lp-hd1177812359_
                                                           _arg1178012353_))))
                                                (let ((_arg1178112364_
                                                       (reverse _arg1178012353_)))
                                                  (if (gx#stx-pair?
                                                       _tl1177212340_)
                                                      (let ((_e1178212367_
                                                             (gx#stx-e
                                                              _tl1177212340_)))
                                                        (let ((_tl1178412372_
                                                               (##cdr _e1178212367_))
                                                              (_hd1178312370_
                                                               (##car _e1178212367_)))
                                                          (if (gx#stx-pair?
                                                               _hd1178312370_)
                                                              (let ((_e1178512375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1178312370_)))
                        (let ((_tl1178712380_ (##cdr _e1178512375_))
                              (_hd1178612378_ (##car _e1178512375_)))
                          (if (gx#identifier? _hd1178612378_)
                              (if (gx#stx-eq? '%#call _hd1178612378_)
                                  (if (gx#stx-pair? _tl1178712380_)
                                      (let ((_e1178812383_
                                             (gx#stx-e _tl1178712380_)))
                                        (let ((_tl1179012388_
                                               (##cdr _e1178812383_))
                                              (_hd1178912386_
                                               (##car _e1178812383_)))
                                          (if (gx#stx-pair? _hd1178912386_)
                                              (let ((_e1179112391_
                                                     (gx#stx-e
                                                      _hd1178912386_)))
                                                (let ((_tl1179312396_
                                                       (##cdr _e1179112391_))
                                                      (_hd1179212394_
                                                       (##car _e1179112391_)))
                                                  (if (gx#identifier?
                                                       _hd1179212394_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1179212394_)
                                                          (if (gx#stx-pair?
                                                               _tl1179312396_)
                                                              (let ((_e1179412399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1179312396_)))
                        (let ((_tl1179612404_ (##cdr _e1179412399_))
                              (_hd1179512402_ (##car _e1179412399_)))
                          (if (gx#stx-null? _tl1179612404_)
                              (if (gx#stx-pair/null? _tl1179012388_)
                                  (let ((___splice1468814689_
                                         (gx#syntax-split-splice
                                          _tl1179012388_
                                          '0)))
                                    (let ((_tl1179912409_
                                           (##vector-ref
                                            ___splice1468814689_
                                            '1))
                                          (_target1179712407_
                                           (##vector-ref
                                            ___splice1468814689_
                                            '0)))
                                      (if (gx#stx-null? _tl1179912409_)
                                          (letrec ((_loop1180012412_
                                                    (lambda (_hd1179812415_
                                                             _xarg1180412417_)
                                                      (if (gx#stx-pair?
                                                           _hd1179812415_)
                                                          (let ((_e1180112420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1179812415_)))
                    (let ((_lp-tl1180312425_ (##cdr _e1180112420_))
                          (_lp-hd1180212423_ (##car _e1180112420_)))
                      (if (gx#stx-pair? _lp-hd1180212423_)
                          (let ((_e1180612428_ (gx#stx-e _lp-hd1180212423_)))
                            (let ((_tl1180812433_ (##cdr _e1180612428_))
                                  (_hd1180712431_ (##car _e1180612428_)))
                              (if (gx#identifier? _hd1180712431_)
                                  (if (gx#stx-eq? '%#ref _hd1180712431_)
                                      (if (gx#stx-pair? _tl1180812433_)
                                          (let ((_e1180912436_
                                                 (gx#stx-e _tl1180812433_)))
                                            (let ((_tl1181112441_
                                                   (##cdr _e1180912436_))
                                                  (_hd1181012439_
                                                   (##car _e1180912436_)))
                                              (if (gx#stx-null? _tl1181112441_)
                                                  (_loop1180012412_
                                                   _lp-tl1180312425_
                                                   (cons _hd1181012439_
                                                         _xarg1180412417_))
                                                  (___match1472514726_
                                                   _e1177012335_
                                                   _hd1177112338_
                                                   _tl1177212340_
                                                   ___splice1468614687_
                                                   _target1177312343_
                                                   _tl1177512345_))))
                                          (___match1472514726_
                                           _e1177012335_
                                           _hd1177112338_
                                           _tl1177212340_
                                           ___splice1468614687_
                                           _target1177312343_
                                           _tl1177512345_))
                                      (___match1472514726_
                                       _e1177012335_
                                       _hd1177112338_
                                       _tl1177212340_
                                       ___splice1468614687_
                                       _target1177312343_
                                       _tl1177512345_))
                                  (___match1472514726_
                                   _e1177012335_
                                   _hd1177112338_
                                   _tl1177212340_
                                   ___splice1468614687_
                                   _target1177312343_
                                   _tl1177512345_))))
                          (___match1472514726_
                           _e1177012335_
                           _hd1177112338_
                           _tl1177212340_
                           ___splice1468614687_
                           _target1177312343_
                           _tl1177512345_))))
                  (let ((_xarg1180512444_ (reverse _xarg1180412417_)))
                    (if (gx#stx-null? _tl1178412372_)
                        (let ((_L12447_ _xarg1180512444_)
                              (_L12448_ _hd1179512402_)
                              (_L12449_ _arg1178112364_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1247712480_
                                                      _g1247812482_)
                                               (cons _g1247712480_
                                                     _g1247812482_))
                                             '()
                                             _L12449_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1248412487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1248512489_)
                       (cons _g1248412487_ _g1248512489_))
                     '()
                     _L12449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1249112494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1249212496_)
                       (cons _g1249112494_ _g1249212496_))
                     '()
                     _L12447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1249812501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1249912503_)
                       (cons _g1249812501_ _g1249912503_))
                     '()
                     _L12449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1250512508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1250612510_)
                       (cons _g1250512508_ _g1250612510_))
                     '()
                     _L12447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1251212514_)
                                                       (gx#free-identifier=?
                                                        _g1251212514_
                                                        _L12448_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1251612519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1251712521_)
                         (cons _g1251612519_ _g1251712521_))
                       '()
                       _L12449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1468414685_ _L12447_ _L12448_ _L12449_)
                              (___match1472514726_
                               _e1177012335_
                               _hd1177112338_
                               _tl1177212340_
                               ___splice1468614687_
                               _target1177312343_
                               _tl1177512345_)))
                        (___match1472514726_
                         _e1177012335_
                         _hd1177112338_
                         _tl1177212340_
                         ___splice1468614687_
                         _target1177312343_
                         _tl1177512345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1180012412_
                                             _target1179712407_
                                             '()))
                                          (___match1472514726_
                                           _e1177012335_
                                           _hd1177112338_
                                           _tl1177212340_
                                           ___splice1468614687_
                                           _target1177312343_
                                           _tl1177512345_))))
                                  (___match1472514726_
                                   _e1177012335_
                                   _hd1177112338_
                                   _tl1177212340_
                                   ___splice1468614687_
                                   _target1177312343_
                                   _tl1177512345_))
                              (___match1472514726_
                               _e1177012335_
                               _hd1177112338_
                               _tl1177212340_
                               ___splice1468614687_
                               _target1177312343_
                               _tl1177512345_))))
                      (___match1472514726_
                       _e1177012335_
                       _hd1177112338_
                       _tl1177212340_
                       ___splice1468614687_
                       _target1177312343_
                       _tl1177512345_))
                  (___match1472514726_
                   _e1177012335_
                   _hd1177112338_
                   _tl1177212340_
                   ___splice1468614687_
                   _target1177312343_
                   _tl1177512345_))
              (___match1472514726_
               _e1177012335_
               _hd1177112338_
               _tl1177212340_
               ___splice1468614687_
               _target1177312343_
               _tl1177512345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1472514726_
                                               _e1177012335_
                                               _hd1177112338_
                                               _tl1177212340_
                                               ___splice1468614687_
                                               _target1177312343_
                                               _tl1177512345_))))
                                      (___match1472514726_
                                       _e1177012335_
                                       _hd1177112338_
                                       _tl1177212340_
                                       ___splice1468614687_
                                       _target1177312343_
                                       _tl1177512345_))
                                  (___match1472514726_
                                   _e1177012335_
                                   _hd1177112338_
                                   _tl1177212340_
                                   ___splice1468614687_
                                   _target1177312343_
                                   _tl1177512345_))
                              (___match1472514726_
                               _e1177012335_
                               _hd1177112338_
                               _tl1177212340_
                               ___splice1468614687_
                               _target1177312343_
                               _tl1177512345_))))
                      (___match1472514726_
                       _e1177012335_
                       _hd1177112338_
                       _tl1177212340_
                       ___splice1468614687_
                       _target1177312343_
                       _tl1177512345_))))
              (___match1472514726_
               _e1177012335_
               _hd1177112338_
               _tl1177212340_
               ___splice1468614687_
               _target1177312343_
               _tl1177512345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1177612348_ _target1177312343_ '())))))
                        (if (gx#stx-pair? ___stx1468214683_)
                            (let ((_e1177012335_ (gx#stx-e ___stx1468214683_)))
                              (let ((_tl1177212340_ (##cdr _e1177012335_))
                                    (_hd1177112338_ (##car _e1177012335_)))
                                (if (gx#stx-pair/null? _hd1177112338_)
                                    (let ((___splice1468614687_
                                           (gx#syntax-split-splice
                                            _hd1177112338_
                                            '0)))
                                      (let ((_tl1177512345_
                                             (##vector-ref
                                              ___splice1468614687_
                                              '1))
                                            (_target1177312343_
                                             (##vector-ref
                                              ___splice1468614687_
                                              '0)))
                                        (if (gx#stx-null? _tl1177512345_)
                                            (___match1471314714_
                                             _e1177012335_
                                             _hd1177112338_
                                             _tl1177212340_
                                             ___splice1468614687_
                                             _target1177312343_
                                             _tl1177512345_)
                                            (___match1472514726_
                                             _e1177012335_
                                             _hd1177112338_
                                             _tl1177212340_
                                             ___splice1468614687_
                                             _target1177312343_
                                             _tl1177512345_))))
                                    (if (gx#stx-pair? _tl1177212340_)
                                        (let ((_e1188511942_
                                               (gx#stx-e _tl1177212340_)))
                                          (let ((_tl1188711947_
                                                 (##cdr _e1188511942_))
                                                (_hd1188611945_
                                                 (##car _e1188511942_)))
                                            (if (gx#stx-pair? _hd1188611945_)
                                                (let ((_e1188811950_
                                                       (gx#stx-e
                                                        _hd1188611945_)))
                                                  (let ((_tl1189011955_
                                                         (##cdr _e1188811950_))
                                                        (_hd1188911953_
                                                         (##car _e1188811950_)))
                                                    (if (gx#identifier?
                                                         _hd1188911953_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1188911953_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1189011955_)
                        (let ((_e1189111958_ (gx#stx-e _tl1189011955_)))
                          (let ((_tl1189311963_ (##cdr _e1189111958_))
                                (_hd1189211961_ (##car _e1189111958_)))
                            (if (gx#stx-pair? _hd1189211961_)
                                (let ((_e1189411966_
                                       (gx#stx-e _hd1189211961_)))
                                  (let ((_tl1189611971_ (##cdr _e1189411966_))
                                        (_hd1189511969_ (##car _e1189411966_)))
                                    (if (gx#identifier? _hd1189511969_)
                                        (if (gx#stx-eq? '%#ref _hd1189511969_)
                                            (if (gx#stx-pair? _tl1189611971_)
                                                (let ((_e1189711974_
                                                       (gx#stx-e
                                                        _tl1189611971_)))
                                                  (let ((_tl1189911979_
                                                         (##cdr _e1189711974_))
                                                        (_hd1189811977_
                                                         (##car _e1189711974_)))
                                                    (if (gx#stx-null?
                                                         _tl1189911979_)
                                                        (if (gx#stx-pair?
                                                             _tl1189311963_)
                                                            (let ((_e1190011982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1189311963_)))
                      (let ((_tl1190211987_ (##cdr _e1190011982_))
                            (_hd1190111985_ (##car _e1190011982_)))
                        (if (gx#stx-pair? _hd1190111985_)
                            (let ((_e1190311990_ (gx#stx-e _hd1190111985_)))
                              (let ((_tl1190511995_ (##cdr _e1190311990_))
                                    (_hd1190411993_ (##car _e1190311990_)))
                                (if (gx#identifier? _hd1190411993_)
                                    (if (gx#stx-eq? '%#ref _hd1190411993_)
                                        (if (gx#stx-pair? _tl1190511995_)
                                            (let ((_e1190611998_
                                                   (gx#stx-e _tl1190511995_)))
                                              (let ((_tl1190812003_
                                                     (##cdr _e1190611998_))
                                                    (_hd1190712001_
                                                     (##car _e1190611998_)))
                                                (if (gx#stx-null?
                                                     _tl1190812003_)
                                                    (if (gx#stx-pair?
                                                         _tl1190211987_)
                                                        (let ((_e1190912006_
                                                               (gx#stx-e
                                                                _tl1190211987_)))
                                                          (let ((_tl1191112011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1190912006_))
                        (_hd1191012009_ (##car _e1190912006_)))
                    (if (gx#stx-pair? _hd1191012009_)
                        (let ((_e1191212014_ (gx#stx-e _hd1191012009_)))
                          (let ((_tl1191412019_ (##cdr _e1191212014_))
                                (_hd1191312017_ (##car _e1191212014_)))
                            (if (gx#identifier? _hd1191312017_)
                                (if (gx#stx-eq? '%#ref _hd1191312017_)
                                    (if (gx#stx-pair? _tl1191412019_)
                                        (let ((_e1191512022_
                                               (gx#stx-e _tl1191412019_)))
                                          (let ((_tl1191712027_
                                                 (##cdr _e1191512022_))
                                                (_hd1191612025_
                                                 (##car _e1191512022_)))
                                            (if (gx#stx-null? _tl1191712027_)
                                                (if (gx#stx-null?
                                                     _tl1191112011_)
                                                    (if (gx#stx-null?
                                                         _tl1188711947_)
                                                        (___match1482314824_
                                                         _e1177012335_
                                                         _hd1177112338_
                                                         _tl1177212340_
                                                         _e1188511942_
                                                         _hd1188611945_
                                                         _tl1188711947_
                                                         _e1188811950_
                                                         _hd1188911953_
                                                         _tl1189011955_
                                                         _e1189111958_
                                                         _hd1189211961_
                                                         _tl1189311963_
                                                         _e1189411966_
                                                         _hd1189511969_
                                                         _tl1189611971_
                                                         _e1189711974_
                                                         _hd1189811977_
                                                         _tl1189911979_
                                                         _e1190011982_
                                                         _hd1190111985_
                                                         _tl1190211987_
                                                         _e1190311990_
                                                         _hd1190411993_
                                                         _tl1190511995_
                                                         _e1190611998_
                                                         _hd1190712001_
                                                         _tl1190812003_
                                                         _e1190912006_
                                                         _hd1191012009_
                                                         _tl1191112011_
                                                         _e1191212014_
                                                         _hd1191312017_
                                                         _tl1191412019_
                                                         _e1191512022_
                                                         _hd1191612025_
                                                         _tl1191712027_)
                                                        (___kont1469814699_))
                                                    (___kont1469814699_))
                                                (___kont1469814699_))))
                                        (___kont1469814699_))
                                    (___kont1469814699_))
                                (___kont1469814699_))))
                        (___kont1469814699_))))
                (___kont1469814699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1469814699_))))
                                            (___kont1469814699_))
                                        (___kont1469814699_))
                                    (___kont1469814699_))))
                            (___kont1469814699_))))
                    (___kont1469814699_))
                (___kont1469814699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1469814699_))
                                            (___kont1469814699_))
                                        (___kont1469814699_))))
                                (___kont1469814699_))))
                        (___kont1469814699_))
                    (___kont1469814699_))
                (___kont1469814699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1469814699_))))
                                        (___kont1469814699_)))))
                            (___kont1469814699_)))))))
               (_dispatch-case-e11073_
                (lambda (_hd11221_ _body11222_)
                  (let* ((_form11224_ (cons _hd11221_ (cons _body11222_ '())))
                         (___stx1482614827_ _form11224_)
                         (_g1122811352_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1482614827_))))
                    (let ((___kont1482814829_
                           (lambda (_L11723_ _L11724_ _L11725_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11724_ '())))))
                          (___kont1483414835_
                           (lambda (_L11571_ _L11572_ _L11573_ _L11574_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11571_ '())))))
                          (___kont1483814839_
                           (lambda (_L11437_ _L11438_ _L11439_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11437_ '()))))))
                      (let* ((___match1493514936_
                              (lambda (_e1131811357_
                                       _hd1131911360_
                                       _tl1132011362_
                                       _e1132111365_
                                       _hd1132211368_
                                       _tl1132311370_
                                       _e1132411373_
                                       _hd1132511376_
                                       _tl1132611378_
                                       _e1132711381_
                                       _hd1132811384_
                                       _tl1132911386_
                                       _e1133011389_
                                       _hd1133111392_
                                       _tl1133211394_
                                       _e1133311397_
                                       _hd1133411400_
                                       _tl1133511402_
                                       _e1133611405_
                                       _hd1133711408_
                                       _tl1133811410_
                                       _e1133911413_
                                       _hd1134011416_
                                       _tl1134111418_
                                       _e1134211421_
                                       _hd1134311424_
                                       _tl1134411426_)
                                (if (gx#stx-pair? _tl1133811410_)
                                    (let ((_e1134511429_
                                           (gx#stx-e _tl1133811410_)))
                                      (let ((_tl1134711434_
                                             (##cdr _e1134511429_))
                                            (_hd1134611432_
                                             (##car _e1134511429_)))
                                        (if (gx#stx-null? _tl1134711434_)
                                            (if (gx#stx-null? _tl1132311370_)
                                                (___kont1483814839_
                                                 _hd1134311424_
                                                 _hd1133411400_
                                                 _hd1131911360_)
                                                (_g1122811352_))
                                            (_g1122811352_))))
                                    (_g1122811352_))))
                             (___match1486514866_
                              (lambda (_e1127911475_
                                       _hd1128011478_
                                       _tl1128111480_
                                       ___splice1483614837_
                                       _target1128211483_
                                       _tl1128411485_)
                                (letrec ((_loop1128511488_
                                          (lambda (_hd1128311491_
                                                   _arg1128911493_)
                                            (if (gx#stx-pair? _hd1128311491_)
                                                (let ((_e1128611496_
                                                       (gx#stx-e
                                                        _hd1128311491_)))
                                                  (let ((_lp-tl1128811501_
                                                         (##cdr _e1128611496_))
                                                        (_lp-hd1128711499_
                                                         (##car _e1128611496_)))
                                                    (_loop1128511488_
                                                     _lp-tl1128811501_
                                                     (cons _lp-hd1128711499_
                                                           _arg1128911493_))))
                                                (let ((_arg1129011504_
                                                       (reverse _arg1128911493_)))
                                                  (if (gx#stx-pair?
                                                       _tl1128111480_)
                                                      (let ((_e1129111507_
                                                             (gx#stx-e
                                                              _tl1128111480_)))
                                                        (let ((_tl1129311512_
                                                               (##cdr _e1129111507_))
                                                              (_hd1129211510_
                                                               (##car _e1129111507_)))
                                                          (if (gx#stx-pair?
                                                               _hd1129211510_)
                                                              (let ((_e1129411515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1129211510_)))
                        (let ((_tl1129611520_ (##cdr _e1129411515_))
                              (_hd1129511518_ (##car _e1129411515_)))
                          (if (gx#identifier? _hd1129511518_)
                              (if (gx#stx-eq? '%#call _hd1129511518_)
                                  (if (gx#stx-pair? _tl1129611520_)
                                      (let ((_e1129711523_
                                             (gx#stx-e _tl1129611520_)))
                                        (let ((_tl1129911528_
                                               (##cdr _e1129711523_))
                                              (_hd1129811526_
                                               (##car _e1129711523_)))
                                          (if (gx#stx-pair? _hd1129811526_)
                                              (let ((_e1130011531_
                                                     (gx#stx-e
                                                      _hd1129811526_)))
                                                (let ((_tl1130211536_
                                                       (##cdr _e1130011531_))
                                                      (_hd1130111534_
                                                       (##car _e1130011531_)))
                                                  (if (gx#identifier?
                                                       _hd1130111534_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1130111534_)
                                                          (if (gx#stx-pair?
                                                               _tl1130211536_)
                                                              (let ((_e1130311539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1130211536_)))
                        (let ((_tl1130511544_ (##cdr _e1130311539_))
                              (_hd1130411542_ (##car _e1130311539_)))
                          (if (gx#stx-null? _tl1130511544_)
                              (if (gx#stx-pair? _tl1129911528_)
                                  (let ((_e1130611547_
                                         (gx#stx-e _tl1129911528_)))
                                    (let ((_tl1130811552_
                                           (##cdr _e1130611547_))
                                          (_hd1130711550_
                                           (##car _e1130611547_)))
                                      (if (gx#stx-pair? _hd1130711550_)
                                          (let ((_e1130911555_
                                                 (gx#stx-e _hd1130711550_)))
                                            (let ((_tl1131111560_
                                                   (##cdr _e1130911555_))
                                                  (_hd1131011558_
                                                   (##car _e1130911555_)))
                                              (if (gx#identifier?
                                                   _hd1131011558_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1131011558_)
                                                      (if (gx#stx-pair?
                                                           _tl1131111560_)
                                                          (let ((_e1131211563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1131111560_)))
                    (let ((_tl1131411568_ (##cdr _e1131211563_))
                          (_hd1131311566_ (##car _e1131211563_)))
                      (if (gx#stx-null? _tl1131411568_)
                          (if (gx#stx-null? _tl1129311512_)
                              (___kont1483414835_
                               _hd1131311566_
                               _hd1130411542_
                               _tl1128411485_
                               _arg1129011504_)
                              (___match1493514936_
                               _e1127911475_
                               _hd1128011478_
                               _tl1128111480_
                               _e1129111507_
                               _hd1129211510_
                               _tl1129311512_
                               _e1129411515_
                               _hd1129511518_
                               _tl1129611520_
                               _e1129711523_
                               _hd1129811526_
                               _tl1129911528_
                               _e1130011531_
                               _hd1130111534_
                               _tl1130211536_
                               _e1130311539_
                               _hd1130411542_
                               _tl1130511544_
                               _e1130611547_
                               _hd1130711550_
                               _tl1130811552_
                               _e1130911555_
                               _hd1131011558_
                               _tl1131111560_
                               _e1131211563_
                               _hd1131311566_
                               _tl1131411568_))
                          (_g1122811352_))))
                  (_g1122811352_))
              (_g1122811352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1122811352_))))
                                          (_g1122811352_))))
                                  (_g1122811352_))
                              (_g1122811352_))))
                      (_g1122811352_))
                  (_g1122811352_))
              (_g1122811352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1122811352_))))
                                      (_g1122811352_))
                                  (_g1122811352_))
                              (_g1122811352_))))
                      (_g1122811352_))))
              (_g1122811352_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1128511488_ _target1128211483_ '()))))
                             (___match1485314854_
                              (lambda (_e1123311611_
                                       _hd1123411614_
                                       _tl1123511616_
                                       ___splice1483014831_
                                       _target1123611619_
                                       _tl1123811621_)
                                (letrec ((_loop1123911624_
                                          (lambda (_hd1123711627_
                                                   _arg1124311629_)
                                            (if (gx#stx-pair? _hd1123711627_)
                                                (let ((_e1124011632_
                                                       (gx#stx-e
                                                        _hd1123711627_)))
                                                  (let ((_lp-tl1124211637_
                                                         (##cdr _e1124011632_))
                                                        (_lp-hd1124111635_
                                                         (##car _e1124011632_)))
                                                    (_loop1123911624_
                                                     _lp-tl1124211637_
                                                     (cons _lp-hd1124111635_
                                                           _arg1124311629_))))
                                                (let ((_arg1124411640_
                                                       (reverse _arg1124311629_)))
                                                  (if (gx#stx-pair?
                                                       _tl1123511616_)
                                                      (let ((_e1124511643_
                                                             (gx#stx-e
                                                              _tl1123511616_)))
                                                        (let ((_tl1124711648_
                                                               (##cdr _e1124511643_))
                                                              (_hd1124611646_
                                                               (##car _e1124511643_)))
                                                          (if (gx#stx-pair?
                                                               _hd1124611646_)
                                                              (let ((_e1124811651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1124611646_)))
                        (let ((_tl1125011656_ (##cdr _e1124811651_))
                              (_hd1124911654_ (##car _e1124811651_)))
                          (if (gx#identifier? _hd1124911654_)
                              (if (gx#stx-eq? '%#call _hd1124911654_)
                                  (if (gx#stx-pair? _tl1125011656_)
                                      (let ((_e1125111659_
                                             (gx#stx-e _tl1125011656_)))
                                        (let ((_tl1125311664_
                                               (##cdr _e1125111659_))
                                              (_hd1125211662_
                                               (##car _e1125111659_)))
                                          (if (gx#stx-pair? _hd1125211662_)
                                              (let ((_e1125411667_
                                                     (gx#stx-e
                                                      _hd1125211662_)))
                                                (let ((_tl1125611672_
                                                       (##cdr _e1125411667_))
                                                      (_hd1125511670_
                                                       (##car _e1125411667_)))
                                                  (if (gx#identifier?
                                                       _hd1125511670_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1125511670_)
                                                          (if (gx#stx-pair?
                                                               _tl1125611672_)
                                                              (let ((_e1125711675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1125611672_)))
                        (let ((_tl1125911680_ (##cdr _e1125711675_))
                              (_hd1125811678_ (##car _e1125711675_)))
                          (if (gx#stx-null? _tl1125911680_)
                              (if (gx#stx-pair/null? _tl1125311664_)
                                  (let ((___splice1483214833_
                                         (gx#syntax-split-splice
                                          _tl1125311664_
                                          '0)))
                                    (let ((_tl1126211685_
                                           (##vector-ref
                                            ___splice1483214833_
                                            '1))
                                          (_target1126011683_
                                           (##vector-ref
                                            ___splice1483214833_
                                            '0)))
                                      (if (gx#stx-null? _tl1126211685_)
                                          (letrec ((_loop1126311688_
                                                    (lambda (_hd1126111691_
                                                             _xarg1126711693_)
                                                      (if (gx#stx-pair?
                                                           _hd1126111691_)
                                                          (let ((_e1126411696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1126111691_)))
                    (let ((_lp-tl1126611701_ (##cdr _e1126411696_))
                          (_lp-hd1126511699_ (##car _e1126411696_)))
                      (if (gx#stx-pair? _lp-hd1126511699_)
                          (let ((_e1126911704_ (gx#stx-e _lp-hd1126511699_)))
                            (let ((_tl1127111709_ (##cdr _e1126911704_))
                                  (_hd1127011707_ (##car _e1126911704_)))
                              (if (gx#identifier? _hd1127011707_)
                                  (if (gx#stx-eq? '%#ref _hd1127011707_)
                                      (if (gx#stx-pair? _tl1127111709_)
                                          (let ((_e1127211712_
                                                 (gx#stx-e _tl1127111709_)))
                                            (let ((_tl1127411717_
                                                   (##cdr _e1127211712_))
                                                  (_hd1127311715_
                                                   (##car _e1127211712_)))
                                              (if (gx#stx-null? _tl1127411717_)
                                                  (_loop1126311688_
                                                   _lp-tl1126611701_
                                                   (cons _hd1127311715_
                                                         _xarg1126711693_))
                                                  (___match1486514866_
                                                   _e1123311611_
                                                   _hd1123411614_
                                                   _tl1123511616_
                                                   ___splice1483014831_
                                                   _target1123611619_
                                                   _tl1123811621_))))
                                          (___match1486514866_
                                           _e1123311611_
                                           _hd1123411614_
                                           _tl1123511616_
                                           ___splice1483014831_
                                           _target1123611619_
                                           _tl1123811621_))
                                      (___match1486514866_
                                       _e1123311611_
                                       _hd1123411614_
                                       _tl1123511616_
                                       ___splice1483014831_
                                       _target1123611619_
                                       _tl1123811621_))
                                  (___match1486514866_
                                   _e1123311611_
                                   _hd1123411614_
                                   _tl1123511616_
                                   ___splice1483014831_
                                   _target1123611619_
                                   _tl1123811621_))))
                          (___match1486514866_
                           _e1123311611_
                           _hd1123411614_
                           _tl1123511616_
                           ___splice1483014831_
                           _target1123611619_
                           _tl1123811621_))))
                  (let ((_xarg1126811720_ (reverse _xarg1126711693_)))
                    (if (gx#stx-null? _tl1124711648_)
                        (___kont1482814829_
                         _xarg1126811720_
                         _hd1125811678_
                         _arg1124411640_)
                        (___match1486514866_
                         _e1123311611_
                         _hd1123411614_
                         _tl1123511616_
                         ___splice1483014831_
                         _target1123611619_
                         _tl1123811621_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1126311688_
                                             _target1126011683_
                                             '()))
                                          (___match1486514866_
                                           _e1123311611_
                                           _hd1123411614_
                                           _tl1123511616_
                                           ___splice1483014831_
                                           _target1123611619_
                                           _tl1123811621_))))
                                  (___match1486514866_
                                   _e1123311611_
                                   _hd1123411614_
                                   _tl1123511616_
                                   ___splice1483014831_
                                   _target1123611619_
                                   _tl1123811621_))
                              (___match1486514866_
                               _e1123311611_
                               _hd1123411614_
                               _tl1123511616_
                               ___splice1483014831_
                               _target1123611619_
                               _tl1123811621_))))
                      (___match1486514866_
                       _e1123311611_
                       _hd1123411614_
                       _tl1123511616_
                       ___splice1483014831_
                       _target1123611619_
                       _tl1123811621_))
                  (___match1486514866_
                   _e1123311611_
                   _hd1123411614_
                   _tl1123511616_
                   ___splice1483014831_
                   _target1123611619_
                   _tl1123811621_))
              (___match1486514866_
               _e1123311611_
               _hd1123411614_
               _tl1123511616_
               ___splice1483014831_
               _target1123611619_
               _tl1123811621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1486514866_
                                               _e1123311611_
                                               _hd1123411614_
                                               _tl1123511616_
                                               ___splice1483014831_
                                               _target1123611619_
                                               _tl1123811621_))))
                                      (___match1486514866_
                                       _e1123311611_
                                       _hd1123411614_
                                       _tl1123511616_
                                       ___splice1483014831_
                                       _target1123611619_
                                       _tl1123811621_))
                                  (___match1486514866_
                                   _e1123311611_
                                   _hd1123411614_
                                   _tl1123511616_
                                   ___splice1483014831_
                                   _target1123611619_
                                   _tl1123811621_))
                              (___match1486514866_
                               _e1123311611_
                               _hd1123411614_
                               _tl1123511616_
                               ___splice1483014831_
                               _target1123611619_
                               _tl1123811621_))))
                      (___match1486514866_
                       _e1123311611_
                       _hd1123411614_
                       _tl1123511616_
                       ___splice1483014831_
                       _target1123611619_
                       _tl1123811621_))))
              (___match1486514866_
               _e1123311611_
               _hd1123411614_
               _tl1123511616_
               ___splice1483014831_
               _target1123611619_
               _tl1123811621_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1123911624_ _target1123611619_ '())))))
                        (if (gx#stx-pair? ___stx1482614827_)
                            (let ((_e1123311611_ (gx#stx-e ___stx1482614827_)))
                              (let ((_tl1123511616_ (##cdr _e1123311611_))
                                    (_hd1123411614_ (##car _e1123311611_)))
                                (if (gx#stx-pair/null? _hd1123411614_)
                                    (let ((___splice1483014831_
                                           (gx#syntax-split-splice
                                            _hd1123411614_
                                            '0)))
                                      (let ((_tl1123811621_
                                             (##vector-ref
                                              ___splice1483014831_
                                              '1))
                                            (_target1123611619_
                                             (##vector-ref
                                              ___splice1483014831_
                                              '0)))
                                        (if (gx#stx-null? _tl1123811621_)
                                            (___match1485314854_
                                             _e1123311611_
                                             _hd1123411614_
                                             _tl1123511616_
                                             ___splice1483014831_
                                             _target1123611619_
                                             _tl1123811621_)
                                            (___match1486514866_
                                             _e1123311611_
                                             _hd1123411614_
                                             _tl1123511616_
                                             ___splice1483014831_
                                             _target1123611619_
                                             _tl1123811621_))))
                                    (if (gx#stx-pair? _tl1123511616_)
                                        (let ((_e1132111365_
                                               (gx#stx-e _tl1123511616_)))
                                          (let ((_tl1132311370_
                                                 (##cdr _e1132111365_))
                                                (_hd1132211368_
                                                 (##car _e1132111365_)))
                                            (if (gx#stx-pair? _hd1132211368_)
                                                (let ((_e1132411373_
                                                       (gx#stx-e
                                                        _hd1132211368_)))
                                                  (let ((_tl1132611378_
                                                         (##cdr _e1132411373_))
                                                        (_hd1132511376_
                                                         (##car _e1132411373_)))
                                                    (if (gx#identifier?
                                                         _hd1132511376_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1132511376_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1132611378_)
                        (let ((_e1132711381_ (gx#stx-e _tl1132611378_)))
                          (let ((_tl1132911386_ (##cdr _e1132711381_))
                                (_hd1132811384_ (##car _e1132711381_)))
                            (if (gx#stx-pair? _hd1132811384_)
                                (let ((_e1133011389_
                                       (gx#stx-e _hd1132811384_)))
                                  (let ((_tl1133211394_ (##cdr _e1133011389_))
                                        (_hd1133111392_ (##car _e1133011389_)))
                                    (if (gx#identifier? _hd1133111392_)
                                        (if (gx#stx-eq? '%#ref _hd1133111392_)
                                            (if (gx#stx-pair? _tl1133211394_)
                                                (let ((_e1133311397_
                                                       (gx#stx-e
                                                        _tl1133211394_)))
                                                  (let ((_tl1133511402_
                                                         (##cdr _e1133311397_))
                                                        (_hd1133411400_
                                                         (##car _e1133311397_)))
                                                    (if (gx#stx-null?
                                                         _tl1133511402_)
                                                        (if (gx#stx-pair?
                                                             _tl1132911386_)
                                                            (let ((_e1133611405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1132911386_)))
                      (let ((_tl1133811410_ (##cdr _e1133611405_))
                            (_hd1133711408_ (##car _e1133611405_)))
                        (if (gx#stx-pair? _hd1133711408_)
                            (let ((_e1133911413_ (gx#stx-e _hd1133711408_)))
                              (let ((_tl1134111418_ (##cdr _e1133911413_))
                                    (_hd1134011416_ (##car _e1133911413_)))
                                (if (gx#identifier? _hd1134011416_)
                                    (if (gx#stx-eq? '%#ref _hd1134011416_)
                                        (if (gx#stx-pair? _tl1134111418_)
                                            (let ((_e1134211421_
                                                   (gx#stx-e _tl1134111418_)))
                                              (let ((_tl1134411426_
                                                     (##cdr _e1134211421_))
                                                    (_hd1134311424_
                                                     (##car _e1134211421_)))
                                                (if (gx#stx-null?
                                                     _tl1134411426_)
                                                    (if (gx#stx-pair?
                                                         _tl1133811410_)
                                                        (let ((_e1134511429_
                                                               (gx#stx-e
                                                                _tl1133811410_)))
                                                          (let ((_tl1134711434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1134511429_))
                        (_hd1134611432_ (##car _e1134511429_)))
                    (if (gx#stx-null? _tl1134711434_)
                        (if (gx#stx-null? _tl1132311370_)
                            (___kont1483814839_
                             _hd1134311424_
                             _hd1133411400_
                             _hd1123411614_)
                            (_g1122811352_))
                        (_g1122811352_))))
                (_g1122811352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1122811352_))))
                                            (_g1122811352_))
                                        (_g1122811352_))
                                    (_g1122811352_))))
                            (_g1122811352_))))
                    (_g1122811352_))
                (_g1122811352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1122811352_))
                                            (_g1122811352_))
                                        (_g1122811352_))))
                                (_g1122811352_))))
                        (_g1122811352_))
                    (_g1122811352_))
                (_g1122811352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1122811352_))))
                                        (_g1122811352_)))))
                            (_g1122811352_)))))))
               (_generate111074_
                (lambda (_args11209_ _arglen11210_ _hd11211_ _body11212_)
                  (let* ((_len11214_ (gx#stx-length _hd11211_))
                         (_condition11216_
                          (if (gx#stx-list? _hd11211_)
                              (cons '##fx=
                                    (cons _arglen11210_ (cons _len11214_ '())))
                              (if (> _len11214_ '0)
                                  (cons '##fx>=
                                        (cons _arglen11210_
                                              (cons _len11214_ '())))
                                  '#t)))
                         (_dispatch11218_
                          (if (_dispatch-case?11072_ _hd11211_ _body11212_)
                              (_dispatch-case-e11073_ _hd11211_ _body11212_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd11211_)
                                          (cons (gxc#compile-e _body11212_)
                                                '()))))))
                    (cons _condition11216_
                          (cons (cons 'apply
                                      (cons _dispatch11218_
                                            (cons _args11209_ '())))
                                '()))))))
        (let* ((_g1107611104_
                (lambda (_g1107711101_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1107711101_)))
               (_g1107511206_
                (lambda (_g1107711107_)
                  (if (gx#stx-pair? _g1107711107_)
                      (let ((_e1108011109_ (gx#stx-e _g1107711107_)))
                        (let ((_hd1108111112_ (##car _e1108011109_))
                              (_tl1108211114_ (##cdr _e1108011109_)))
                          (if (gx#stx-pair/null? _tl1108211114_)
                              (let ((_g15638_
                                     (gx#syntax-split-splice
                                      _tl1108211114_
                                      '0)))
                                (begin
                                  (let ((_g15639_
                                         (if (##values? _g15638_)
                                             (##vector-length _g15638_)
                                             1)))
                                    (if (not (##fx= _g15639_ 2))
                                        (error "Context expects 2 values"
                                               _g15639_)))
                                  (let ((_target1108311117_
                                         (##vector-ref _g15638_ 0))
                                        (_tl1108511119_
                                         (##vector-ref _g15638_ 1)))
                                    (if (gx#stx-null? _tl1108511119_)
                                        (letrec ((_loop1108611122_
                                                  (lambda (_hd1108411125_
                                                           _body1109011127_
                                                           _hd1109111129_)
                                                    (if (gx#stx-pair?
                                                         _hd1108411125_)
                                                        (let ((_e1108711132_
                                                               (gx#stx-e
                                                                _hd1108411125_)))
                                                          (let ((_lp-hd1108811135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1108711132_))
                        (_lp-tl1108911137_ (##cdr _e1108711132_)))
                    (if (gx#stx-pair? _lp-hd1108811135_)
                        (let ((_e1109411140_ (gx#stx-e _lp-hd1108811135_)))
                          (let ((_hd1109511143_ (##car _e1109411140_))
                                (_tl1109611145_ (##cdr _e1109411140_)))
                            (if (gx#stx-pair? _tl1109611145_)
                                (let ((_e1109711148_
                                       (gx#stx-e _tl1109611145_)))
                                  (let ((_hd1109811151_ (##car _e1109711148_))
                                        (_tl1109911153_ (##cdr _e1109711148_)))
                                    (if (gx#stx-null? _tl1109911153_)
                                        (_loop1108611122_
                                         _lp-tl1108911137_
                                         (cons _hd1109811151_ _body1109011127_)
                                         (cons _hd1109511143_ _hd1109111129_))
                                        (_g1107611104_ _g1107711107_))))
                                (_g1107611104_ _g1107711107_))))
                        (_g1107611104_ _g1107711107_))))
                (let ((_body1109211156_ (reverse _body1109011127_))
                      (_hd1109311158_ (reverse _hd1109111129_)))
                  ((lambda (_L11161_ _L11162_)
                     (let ((_args11181_ (gxc#generate-runtime-temporary__0))
                           (_arglen11182_ (gxc#generate-runtime-temporary__0))
                           (_name11183_
                            (let ((_$e11178_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx11070_
                                    '#f)))
                              (if _$e11178_
                                  _$e11178_
                                  ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args11181_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen11182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args11181_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name11183_
                                                               (cons _args11181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g1118411187_ _g1118511189_)
                                        (_generate111074_
                                         _args11181_
                                         _arglen11182_
                                         _g1118411187_
                                         _g1118511189_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1119111194_
                                                         _g1119211196_)
                                                  (cons _g1119111194_
                                                        _g1119211196_))
                                                '()
                                                _L11162_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1119811201_
                                                         _g1119911203_)
                                                  (cons _g1119811201_
                                                        _g1119911203_))
                                                '()
                                                _L11161_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body1109211156_
                   _hd1109311158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1108611122_
                                           _target1108311117_
                                           '()
                                           '()))
                                        (_g1107611104_ _g1107711107_)))))
                              (_g1107611104_ _g1107711107_))))
                      (_g1107611104_ _g1107711107_)))))
          (_g1107511206_ _stx11070_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx10135_ _compiled-body?10136_)
        (letrec ((_generate-simple10138_
                  (lambda (_hd11057_ _body11058_)
                    (_coalesce-let*10139_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd11057_
                      _body11058_
                      _compiled-body?10136_))))
                 (_coalesce-let*10139_
                  (lambda (_code10441_)
                    (let* ((___stx1494814949_ _code10441_)
                           (_g1044610581_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1494814949_))))
                      (let ((___kont1495014951_
                             (lambda (_L11016_ _L11017_ _L11018_)
                               (cons 'let
                                     (cons (cons (cons _L11018_
                                                       (cons _L11017_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1104611049_
                                                              _g1104711051_)
                                                       (cons _g1104611049_
                                                             _g1104711051_))
                                                     '()
                                                     _L11016_))))))
                            (___kont1495414955_
                             (lambda (_L10875_
                                      _L10876_
                                      _L10877_
                                      _L10878_
                                      _L10879_)
                               (cons 'let*
                                     (cons (cons (cons _L10879_
                                                       (cons _L10878_ '()))
                                                 (cons (cons _L10877_
                                                             (cons _L10876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1091510918_
                                                              _g1091610920_)
                                                       (cons _g1091510918_
                                                             _g1091610920_))
                                                     '()
                                                     _L10875_))))))
                            (___kont1495814959_
                             (lambda (_L10705_ _L10706_ _L10707_ _L10708_)
                               (cons 'let*
                                     (cons (cons (cons _L10708_
                                                       (cons _L10707_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1074310746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1074410748_)
                     (cons _g1074310746_ _g1074410748_))
                   '()
                   _L10706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1075010753_
                                                              _g1075110755_)
                                                       (cons _g1075010753_
                                                             _g1075110755_))
                                                     '()
                                                     _L10705_))))))
                            (___kont1496414965_ (lambda () _code10441_)))
                        (let* ((___match1519315194_
                                (lambda (_e1053510593_
                                         _hd1053610596_
                                         _tl1053710598_
                                         _e1053810601_
                                         _hd1053910604_
                                         _tl1054010606_
                                         _e1054110609_
                                         _hd1054210612_
                                         _tl1054310614_
                                         _e1054410617_
                                         _hd1054510620_
                                         _tl1054610622_
                                         _e1054710625_
                                         _hd1054810628_
                                         _tl1054910630_
                                         _e1055010633_
                                         _hd1055110636_
                                         _tl1055210638_
                                         _e1055310641_
                                         _hd1055410644_
                                         _tl1055510646_
                                         _e1055610649_
                                         _hd1055710652_
                                         _tl1055810654_
                                         ___splice1496014961_
                                         _target1055910657_
                                         _tl1056110659_)
                                  (letrec ((_loop1056210662_
                                            (lambda (_hd1056010665_
                                                     _bind1056610667_)
                                              (if (gx#stx-pair? _hd1056010665_)
                                                  (let ((_e1056310670_
                                                         (gx#stx-e
                                                          _hd1056010665_)))
                                                    (let ((_lp-tl1056510675_
                                                           (##cdr _e1056310670_))
                                                          (_lp-hd1056410673_
                                                           (##car _e1056310670_)))
                                                      (_loop1056210662_
                                                       _lp-tl1056510675_
                                                       (cons _lp-hd1056410673_
                                                             _bind1056610667_))))
                                                  (let ((_bind1056710678_
                                                         (reverse _bind1056610667_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl1055810654_)
                                                        (let ((___splice1496214963_
                                                               (gx#syntax-split-splice
                                                                _tl1055810654_
                                                                '0)))
                                                          (let ((_tl1057010683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1496214963_ '1))
                        (_target1056810681_
                         (##vector-ref ___splice1496214963_ '0)))
                    (if (gx#stx-null? _tl1057010683_)
                        (letrec ((_loop1057110686_
                                  (lambda (_hd1056910689_ _body1057510691_)
                                    (if (gx#stx-pair? _hd1056910689_)
                                        (let ((_e1057210694_
                                               (gx#stx-e _hd1056910689_)))
                                          (let ((_lp-tl1057410699_
                                                 (##cdr _e1057210694_))
                                                (_lp-hd1057310697_
                                                 (##car _e1057210694_)))
                                            (_loop1057110686_
                                             _lp-tl1057410699_
                                             (cons _lp-hd1057310697_
                                                   _body1057510691_))))
                                        (let ((_body1057610702_
                                               (reverse _body1057510691_)))
                                          (if (gx#stx-null? _tl1055210638_)
                                              (___kont1495814959_
                                               _body1057610702_
                                               _bind1056710678_
                                               _hd1054810628_
                                               _hd1054510620_)
                                              (___kont1496414965_)))))))
                          (_loop1057110686_ _target1056810681_ '()))
                        (___kont1496414965_))))
                (___kont1496414965_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1056210662_
                                     _target1055910657_
                                     '()))))
                               (___match1512515126_
                                (lambda (_e1048910763_
                                         _hd1049010766_
                                         _tl1049110768_
                                         _e1049210771_
                                         _hd1049310774_
                                         _tl1049410776_
                                         _e1049510779_
                                         _hd1049610782_
                                         _tl1049710784_
                                         _e1049810787_
                                         _hd1049910790_
                                         _tl1050010792_
                                         _e1050110795_
                                         _hd1050210798_
                                         _tl1050310800_
                                         _e1050410803_
                                         _hd1050510806_
                                         _tl1050610808_
                                         _e1050710811_
                                         _hd1050810814_
                                         _tl1050910816_
                                         _e1051010819_
                                         _hd1051110822_
                                         _tl1051210824_
                                         _e1051310827_
                                         _hd1051410830_
                                         _tl1051510832_
                                         _e1051610835_
                                         _hd1051710838_
                                         _tl1051810840_
                                         _e1051910843_
                                         _hd1052010846_
                                         _tl1052110848_
                                         ___splice1495614957_
                                         _target1052210851_
                                         _tl1052410853_)
                                  (letrec ((_loop1052510856_
                                            (lambda (_hd1052310859_
                                                     _body1052910861_)
                                              (if (gx#stx-pair? _hd1052310859_)
                                                  (let ((_e1052610864_
                                                         (gx#stx-e
                                                          _hd1052310859_)))
                                                    (let ((_lp-tl1052810869_
                                                           (##cdr _e1052610864_))
                                                          (_lp-hd1052710867_
                                                           (##car _e1052610864_)))
                                                      (_loop1052510856_
                                                       _lp-tl1052810869_
                                                       (cons _lp-hd1052710867_
                                                             _body1052910861_))))
                                                  (let ((_body1053010872_
                                                         (reverse _body1052910861_)))
                                                    (if (gx#stx-null?
                                                         _tl1050610808_)
                                                        (___kont1495414955_
                                                         _body1053010872_
                                                         _hd1052010846_
                                                         _hd1051710838_
                                                         _hd1050210798_
                                                         _hd1049910790_)
                                                        (___kont1496414965_)))))))
                                    (_loop1052510856_
                                     _target1052210851_
                                     '()))))
                               (___match1503515036_
                                (lambda (_e1045110928_
                                         _hd1045210931_
                                         _tl1045310933_
                                         _e1045410936_
                                         _hd1045510939_
                                         _tl1045610941_
                                         _e1045710944_
                                         _hd1045810947_
                                         _tl1045910949_
                                         _e1046010952_
                                         _hd1046110955_
                                         _tl1046210957_
                                         _e1046310960_
                                         _hd1046410963_
                                         _tl1046510965_
                                         _e1046610968_
                                         _hd1046710971_
                                         _tl1046810973_
                                         _e1046910976_
                                         _hd1047010979_
                                         _tl1047110981_
                                         _e1047210984_
                                         _hd1047310987_
                                         _tl1047410989_
                                         ___splice1495214953_
                                         _target1047510992_
                                         _tl1047710994_)
                                  (letrec ((_loop1047810997_
                                            (lambda (_hd1047611000_
                                                     _body1048211002_)
                                              (if (gx#stx-pair? _hd1047611000_)
                                                  (let ((_e1047911005_
                                                         (gx#stx-e
                                                          _hd1047611000_)))
                                                    (let ((_lp-tl1048111010_
                                                           (##cdr _e1047911005_))
                                                          (_lp-hd1048011008_
                                                           (##car _e1047911005_)))
                                                      (_loop1047810997_
                                                       _lp-tl1048111010_
                                                       (cons _lp-hd1048011008_
                                                             _body1048211002_))))
                                                  (let ((_body1048311013_
                                                         (reverse _body1048211002_)))
                                                    (if (gx#stx-null?
                                                         _tl1046810973_)
                                                        (___kont1495014951_
                                                         _body1048311013_
                                                         _hd1046410963_
                                                         _hd1046110955_)
                                                        (___kont1496414965_)))))))
                                    (_loop1047810997_
                                     _target1047510992_
                                     '())))))
                          (if (gx#stx-pair? ___stx1494814949_)
                              (let ((_e1045110928_
                                     (gx#stx-e ___stx1494814949_)))
                                (let ((_tl1045310933_ (##cdr _e1045110928_))
                                      (_hd1045210931_ (##car _e1045110928_)))
                                  (if (gx#identifier? _hd1045210931_)
                                      (if (gx#stx-eq? 'let _hd1045210931_)
                                          (if (gx#stx-pair? _tl1045310933_)
                                              (let ((_e1045410936_
                                                     (gx#stx-e
                                                      _tl1045310933_)))
                                                (let ((_tl1045610941_
                                                       (##cdr _e1045410936_))
                                                      (_hd1045510939_
                                                       (##car _e1045410936_)))
                                                  (if (gx#stx-pair?
                                                       _hd1045510939_)
                                                      (let ((_e1045710944_
                                                             (gx#stx-e
                                                              _hd1045510939_)))
                                                        (let ((_tl1045910949_
                                                               (##cdr _e1045710944_))
                                                              (_hd1045810947_
                                                               (##car _e1045710944_)))
                                                          (if (gx#stx-pair?
                                                               _hd1045810947_)
                                                              (let ((_e1046010952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1045810947_)))
                        (let ((_tl1046210957_ (##cdr _e1046010952_))
                              (_hd1046110955_ (##car _e1046010952_)))
                          (if (gx#stx-pair? _tl1046210957_)
                              (let ((_e1046310960_ (gx#stx-e _tl1046210957_)))
                                (let ((_tl1046510965_ (##cdr _e1046310960_))
                                      (_hd1046410963_ (##car _e1046310960_)))
                                  (if (gx#stx-null? _tl1046510965_)
                                      (if (gx#stx-null? _tl1045910949_)
                                          (if (gx#stx-pair? _tl1045610941_)
                                              (let ((_e1046610968_
                                                     (gx#stx-e
                                                      _tl1045610941_)))
                                                (let ((_tl1046810973_
                                                       (##cdr _e1046610968_))
                                                      (_hd1046710971_
                                                       (##car _e1046610968_)))
                                                  (if (gx#stx-pair?
                                                       _hd1046710971_)
                                                      (let ((_e1046910976_
                                                             (gx#stx-e
                                                              _hd1046710971_)))
                                                        (let ((_tl1047110981_
                                                               (##cdr _e1046910976_))
                                                              (_hd1047010979_
                                                               (##car _e1046910976_)))
                                                          (if (gx#identifier?
                                                               _hd1047010979_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd1047010979_)
                          (if (gx#stx-pair? _tl1047110981_)
                              (let ((_e1047210984_ (gx#stx-e _tl1047110981_)))
                                (let ((_tl1047410989_ (##cdr _e1047210984_))
                                      (_hd1047310987_ (##car _e1047210984_)))
                                  (if (gx#stx-null? _hd1047310987_)
                                      (if (gx#stx-pair/null? _tl1047410989_)
                                          (let ((___splice1495214953_
                                                 (gx#syntax-split-splice
                                                  _tl1047410989_
                                                  '0)))
                                            (let ((_tl1047710994_
                                                   (##vector-ref
                                                    ___splice1495214953_
                                                    '1))
                                                  (_target1047510992_
                                                   (##vector-ref
                                                    ___splice1495214953_
                                                    '0)))
                                              (if (gx#stx-null? _tl1047710994_)
                                                  (___match1503515036_
                                                   _e1045110928_
                                                   _hd1045210931_
                                                   _tl1045310933_
                                                   _e1045410936_
                                                   _hd1045510939_
                                                   _tl1045610941_
                                                   _e1045710944_
                                                   _hd1045810947_
                                                   _tl1045910949_
                                                   _e1046010952_
                                                   _hd1046110955_
                                                   _tl1046210957_
                                                   _e1046310960_
                                                   _hd1046410963_
                                                   _tl1046510965_
                                                   _e1046610968_
                                                   _hd1046710971_
                                                   _tl1046810973_
                                                   _e1046910976_
                                                   _hd1047010979_
                                                   _tl1047110981_
                                                   _e1047210984_
                                                   _hd1047310987_
                                                   _tl1047410989_
                                                   ___splice1495214953_
                                                   _target1047510992_
                                                   _tl1047710994_)
                                                  (___kont1496414965_))))
                                          (___kont1496414965_))
                                      (if (gx#stx-pair? _hd1047310987_)
                                          (let ((_e1051310827_
                                                 (gx#stx-e _hd1047310987_)))
                                            (let ((_tl1051510832_
                                                   (##cdr _e1051310827_))
                                                  (_hd1051410830_
                                                   (##car _e1051310827_)))
                                              (if (gx#stx-pair? _hd1051410830_)
                                                  (let ((_e1051610835_
                                                         (gx#stx-e
                                                          _hd1051410830_)))
                                                    (let ((_tl1051810840_
                                                           (##cdr _e1051610835_))
                                                          (_hd1051710838_
                                                           (##car _e1051610835_)))
                                                      (if (gx#stx-pair?
                                                           _tl1051810840_)
                                                          (let ((_e1051910843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1051810840_)))
                    (let ((_tl1052110848_ (##cdr _e1051910843_))
                          (_hd1052010846_ (##car _e1051910843_)))
                      (if (gx#stx-null? _tl1052110848_)
                          (if (gx#stx-null? _tl1051510832_)
                              (if (gx#stx-pair/null? _tl1047410989_)
                                  (let ((___splice1495614957_
                                         (gx#syntax-split-splice
                                          _tl1047410989_
                                          '0)))
                                    (let ((_tl1052410853_
                                           (##vector-ref
                                            ___splice1495614957_
                                            '1))
                                          (_target1052210851_
                                           (##vector-ref
                                            ___splice1495614957_
                                            '0)))
                                      (if (gx#stx-null? _tl1052410853_)
                                          (___match1512515126_
                                           _e1045110928_
                                           _hd1045210931_
                                           _tl1045310933_
                                           _e1045410936_
                                           _hd1045510939_
                                           _tl1045610941_
                                           _e1045710944_
                                           _hd1045810947_
                                           _tl1045910949_
                                           _e1046010952_
                                           _hd1046110955_
                                           _tl1046210957_
                                           _e1046310960_
                                           _hd1046410963_
                                           _tl1046510965_
                                           _e1046610968_
                                           _hd1046710971_
                                           _tl1046810973_
                                           _e1046910976_
                                           _hd1047010979_
                                           _tl1047110981_
                                           _e1047210984_
                                           _hd1047310987_
                                           _tl1047410989_
                                           _e1051310827_
                                           _hd1051410830_
                                           _tl1051510832_
                                           _e1051610835_
                                           _hd1051710838_
                                           _tl1051810840_
                                           _e1051910843_
                                           _hd1052010846_
                                           _tl1052110848_
                                           ___splice1495614957_
                                           _target1052210851_
                                           _tl1052410853_)
                                          (___kont1496414965_))))
                                  (___kont1496414965_))
                              (___kont1496414965_))
                          (___kont1496414965_))))
                  (___kont1496414965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1496414965_))))
                                          (___kont1496414965_)))))
                              (___kont1496414965_))
                          (if (gx#stx-eq? 'let* _hd1047010979_)
                              (if (gx#stx-pair? _tl1047110981_)
                                  (let ((_e1055610649_
                                         (gx#stx-e _tl1047110981_)))
                                    (let ((_tl1055810654_
                                           (##cdr _e1055610649_))
                                          (_hd1055710652_
                                           (##car _e1055610649_)))
                                      (if (gx#stx-pair/null? _hd1055710652_)
                                          (let ((___splice1496014961_
                                                 (gx#syntax-split-splice
                                                  _hd1055710652_
                                                  '0)))
                                            (let ((_tl1056110659_
                                                   (##vector-ref
                                                    ___splice1496014961_
                                                    '1))
                                                  (_target1055910657_
                                                   (##vector-ref
                                                    ___splice1496014961_
                                                    '0)))
                                              (if (gx#stx-null? _tl1056110659_)
                                                  (___match1519315194_
                                                   _e1045110928_
                                                   _hd1045210931_
                                                   _tl1045310933_
                                                   _e1045410936_
                                                   _hd1045510939_
                                                   _tl1045610941_
                                                   _e1045710944_
                                                   _hd1045810947_
                                                   _tl1045910949_
                                                   _e1046010952_
                                                   _hd1046110955_
                                                   _tl1046210957_
                                                   _e1046310960_
                                                   _hd1046410963_
                                                   _tl1046510965_
                                                   _e1046610968_
                                                   _hd1046710971_
                                                   _tl1046810973_
                                                   _e1046910976_
                                                   _hd1047010979_
                                                   _tl1047110981_
                                                   _e1055610649_
                                                   _hd1055710652_
                                                   _tl1055810654_
                                                   ___splice1496014961_
                                                   _target1055910657_
                                                   _tl1056110659_)
                                                  (___kont1496414965_))))
                                          (___kont1496414965_))))
                                  (___kont1496414965_))
                              (___kont1496414965_)))
                      (___kont1496414965_))))
              (___kont1496414965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1496414965_))
                                          (___kont1496414965_))
                                      (___kont1496414965_))))
                              (___kont1496414965_))))
                      (___kont1496414965_))))
              (___kont1496414965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1496414965_))
                                          (___kont1496414965_))
                                      (___kont1496414965_))))
                              (___kont1496414965_)))))))
                 (_generate-values10140_
                  (lambda (_hd10254_ _body10255_)
                    (let _lp10257_ ((_rest10259_ _hd10254_)
                                    (_bind10260_ '())
                                    (_check10261_ '())
                                    (_post10262_ '()))
                      (let* ((___stx1524015241_ _rest10259_)
                             (_g1026510276_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1524015241_))))
                        (let ((___kont1524215243_
                               (lambda (_L10303_ _L10304_)
                                 (let* ((___stx1519615197_ _L10304_)
                                        (_g1031910344_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1519615197_))))
                                   (let ((___kont1519815199_
                                          (lambda (_L10417_ _L10418_)
                                            (let ((_eid10432_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L10418_))
                                                  (_expr10433_
                                                   (gxc#compile-e _L10417_)))
                                              (_lp10257_
                                               _L10303_
                                               (cons (cons _eid10432_
                                                           (cons _expr10433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10260_)
                                               _check10261_
                                               _post10262_))))
                                         (___kont1520015201_
                                          (lambda (_L10365_ _L10366_)
                                            (let* ((_vals10379_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values10381_
                                                    (gxc#generate-runtime-check-values
                                                     _vals10379_
                                                     _L10366_
                                                     _L10365_))
                                                   (_refs10383_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals10379_
                                                     _L10366_))
                                                   (_expr10385_
                                                    (gxc#compile-e _L10365_)))
                                              (_lp10257_
                                               _L10303_
                                               (cons (cons _vals10379_
                                                           (cons _expr10385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10260_)
                                               (cons _check-values10381_
                                                     _check10261_)
                                               (cons _refs10383_
                                                     _post10262_))))))
                                     (if (gx#stx-pair? ___stx1519615197_)
                                         (let ((_e1032310393_
                                                (gx#stx-e ___stx1519615197_)))
                                           (let ((_tl1032510398_
                                                  (##cdr _e1032310393_))
                                                 (_hd1032410396_
                                                  (##car _e1032310393_)))
                                             (if (gx#stx-pair? _hd1032410396_)
                                                 (let ((_e1032610401_
                                                        (gx#stx-e
                                                         _hd1032410396_)))
                                                   (let ((_tl1032810406_
                                                          (##cdr _e1032610401_))
                                                         (_hd1032710404_
                                                          (##car _e1032610401_)))
                                                     (if (gx#stx-null?
                                                          _tl1032810406_)
                                                         (if (gx#stx-pair?
                                                              _tl1032510398_)
                                                             (let ((_e1032910409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1032510398_)))
                       (let ((_tl1033110414_ (##cdr _e1032910409_))
                             (_hd1033010412_ (##car _e1032910409_)))
                         (if (gx#stx-null? _tl1033110414_)
                             (___kont1519815199_ _hd1033010412_ _hd1032710404_)
                             (_g1031910344_))))
                     (_g1031910344_))
                 (if (gx#stx-pair? _tl1032510398_)
                     (let ((_e1033710357_ (gx#stx-e _tl1032510398_)))
                       (let ((_tl1033910362_ (##cdr _e1033710357_))
                             (_hd1033810360_ (##car _e1033710357_)))
                         (if (gx#stx-null? _tl1033910362_)
                             (___kont1520015201_ _hd1033810360_ _hd1032410396_)
                             (_g1031910344_))))
                     (_g1031910344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1032510398_)
                                                     (let ((_e1033710357_
                                                            (gx#stx-e
                                                             _tl1032510398_)))
                                                       (let ((_tl1033910362_
                                                              (##cdr _e1033710357_))
                                                             (_hd1033810360_
                                                              (##car _e1033710357_)))
                                                         (if (gx#stx-null?
                                                              _tl1033910362_)
                                                             (___kont1520015201_
                                                              _hd1033810360_
                                                              _hd1032410396_)
                                                             (_g1031910344_))))
                                                     (_g1031910344_)))))
                                         (_g1031910344_))))))
                              (___kont1524415245_
                               (lambda ()
                                 (let* ((_body10283_
                                         (if _compiled-body?10136_
                                             _body10255_
                                             (gxc#compile-e _body10255_)))
                                        (_body10285_
                                         (_generate-values-post10141_
                                          _post10262_
                                          _body10283_))
                                        (_body10287_
                                         (_generate-values-check10142_
                                          _check10261_
                                          _body10285_)))
                                   (cons 'let
                                         (cons (reverse _bind10260_)
                                               (cons _body10287_ '())))))))
                          (if (gx#stx-pair? ___stx1524015241_)
                              (let ((_e1026910295_
                                     (gx#stx-e ___stx1524015241_)))
                                (let ((_tl1027110300_ (##cdr _e1026910295_))
                                      (_hd1027010298_ (##car _e1026910295_)))
                                  (___kont1524215243_
                                   _tl1027110300_
                                   _hd1027010298_)))
                              (___kont1524415245_)))))))
                 (_generate-values-post10141_
                  (lambda (_post10213_ _body10214_)
                    (let _lp10216_ ((_rest10218_ _post10213_)
                                    (_body10219_ _body10214_))
                      (let* ((_rest1022010228_ _rest10218_)
                             (_else1022210236_ (lambda () _body10219_))
                             (_K1022410242_
                              (lambda (_rest10239_ _bind10240_)
                                (_lp10216_
                                 _rest10239_
                                 (cons 'let
                                       (cons _bind10240_
                                             (cons _body10219_ '())))))))
                        (if (##pair? _rest1022010228_)
                            (let ((_hd1022510245_ (##car _rest1022010228_))
                                  (_tl1022610247_ (##cdr _rest1022010228_)))
                              (let* ((_bind10250_ _hd1022510245_)
                                     (_rest10252_ _tl1022610247_))
                                (_K1022410242_ _rest10252_ _bind10250_)))
                            (_else1022210236_))))))
                 (_generate-values-check10142_
                  (lambda (_check10210_ _body10211_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10211_ '())
                                  (reverse _check10210_))))))
          (let* ((_g1014410161_
                  (lambda (_g1014510158_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1014510158_)))
                 (_g1014310207_
                  (lambda (_g1014510164_)
                    (if (gx#stx-pair? _g1014510164_)
                        (let ((_e1014810166_ (gx#stx-e _g1014510164_)))
                          (let ((_hd1014910169_ (##car _e1014810166_))
                                (_tl1015010171_ (##cdr _e1014810166_)))
                            (if (gx#stx-pair? _tl1015010171_)
                                (let ((_e1015110174_
                                       (gx#stx-e _tl1015010171_)))
                                  (let ((_hd1015210177_ (##car _e1015110174_))
                                        (_tl1015310179_ (##cdr _e1015110174_)))
                                    (if (gx#stx-pair? _tl1015310179_)
                                        (let ((_e1015410182_
                                               (gx#stx-e _tl1015310179_)))
                                          (let ((_hd1015510185_
                                                 (##car _e1015410182_))
                                                (_tl1015610187_
                                                 (##cdr _e1015410182_)))
                                            (if (gx#stx-null? _tl1015610187_)
                                                ((lambda (_L10190_ _L10191_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10191_)
                                                       (_generate-simple10138_
                                                        _L10191_
                                                        _L10190_)
                                                       (_generate-values10140_
                                                        _L10191_
                                                        _L10190_)))
                                                 _hd1015510185_
                                                 _hd1015210177_)
                                                (_g1014410161_
                                                 _g1014510164_))))
                                        (_g1014410161_ _g1014510164_))))
                                (_g1014410161_ _g1014510164_))))
                        (_g1014410161_ _g1014510164_)))))
            (_g1014310207_ _stx10135_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx11063_)
          (let ((_compiled-body?11065_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx11063_
             _compiled-body?11065_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g15641_
          (let ((_g15640_ (length _g15641_)))
            (cond ((##fx= _g15640_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g15641_))
                  ((##fx= _g15640_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g15641_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g15641_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals10029_ _hd10030_)
      (let _lp10032_ ((_rest10034_ _hd10030_) (_k10035_ '0) (_r10036_ '()))
        (let* ((___stx1525415255_ _rest10034_)
               (_g1004110058_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1525415255_))))
          (let ((___kont1525615257_
                 (lambda (_L10121_)
                   (_lp10032_ _L10121_ (fx+ _k10035_ '1) _r10036_)))
                (___kont1525815259_
                 (lambda (_L10094_ _L10095_)
                   (_lp10032_
                    _L10094_
                    (fx+ _k10035_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L10095_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals10029_
                                       _k10035_
                                       _L10094_)
                                      '()))
                          _r10036_))))
                (___kont1526015261_
                 (lambda (_L10070_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L10070_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals10029_
                                              _k10035_)
                                             '()))
                                 '())
                           _r10036_)))
                (___kont1526215263_ (lambda () (reverse _r10036_))))
            (let ((_g1003910081_
                   (lambda ()
                     (let ((_L10070_ ___stx1525415255_))
                       (if (gx#identifier? _L10070_)
                           (___kont1526015261_ _L10070_)
                           (___kont1526215263_))))))
              (if (gx#stx-pair? ___stx1525415255_)
                  (let ((_e1004410110_ (gx#stx-e ___stx1525415255_)))
                    (let ((_tl1004610115_ (##cdr _e1004410110_))
                          (_hd1004510113_ (##car _e1004410110_)))
                      (if (gx#stx-datum? _hd1004510113_)
                          (let ((_e1004710118_ (gx#stx-e _hd1004510113_)))
                            (if (equal? _e1004710118_ '#f)
                                (___kont1525615257_ _tl1004610115_)
                                (___kont1525815259_
                                 _tl1004610115_
                                 _hd1004510113_)))
                          (___kont1525815259_ _tl1004610115_ _hd1004510113_))))
                  (_g1003910081_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx9711_ _compiled-body?9712_)
        (letrec ((_generate-simple9714_
                  (lambda (_hd10016_ _body10017_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd10016_
                     _body10017_
                     _compiled-body?9712_)))
                 (_generate-values9715_
                  (lambda (_hd9795_ _body9796_)
                    (let _lp9798_ ((_rest9800_ _hd9795_)
                                   (_bind9801_ '())
                                   (_check9802_ '())
                                   (_post9803_ '()))
                      (let* ((___stx1532815329_ _rest9800_)
                             (_g98069817_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1532815329_))))
                        (let ((___kont1533015331_
                               (lambda (_L9844_ _L9845_)
                                 (let* ((___stx1528415285_ _L9845_)
                                        (_g98609885_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1528415285_))))
                                   (let ((___kont1528615287_
                                          (lambda (_L9992_ _L9993_)
                                            (let ((_eid10007_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9993_))
                                                  (_expr10008_
                                                   (gxc#compile-e _L9992_)))
                                              (_lp9798_
                                               _L9844_
                                               (cons (cons _eid10007_
                                                           (cons _expr10008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind9801_)
                                               _check9802_
                                               _post9803_))))
                                         (___kont1528815289_
                                          (lambda (_L9906_ _L9907_)
                                            (let* ((_vals9920_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values9922_
                                                    (gxc#generate-runtime-check-values
                                                     _vals9920_
                                                     _L9907_
                                                     _L9906_))
                                                   (_refs9924_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals9920_
                                                     _L9907_))
                                                   (_expr9926_
                                                    (gxc#compile-e _L9906_)))
                                              (_lp9798_
                                               _L9844_
                                               (foldl1 cons
                                                       (cons (cons _vals9920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr9926_ '()))
                     _bind9801_)
               (map (lambda (_e99289930_)
                      (let* ((_g99329941_ _e99289930_)
                             (_E99349945_
                              (lambda ()
                                (error '"No clause matching" _g99329941_)))
                             (_K99359950_
                              (lambda (_eid9948_)
                                (cons _eid9948_ (cons '#!void '())))))
                        (if (##pair? _g99329941_)
                            (let ((_hd99369953_ (##car _g99329941_))
                                  (_tl99379955_ (##cdr _g99329941_)))
                              (let ((_eid9958_ _hd99369953_))
                                (if (##pair? _tl99379955_)
                                    (let ((_tl99399960_ (##cdr _tl99379955_)))
                                      (if (##null? _tl99399960_)
                                          (_K99359950_ _eid9958_)
                                          (_E99349945_)))
                                    (_E99349945_))))
                            (_E99349945_))))
                    _refs9924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values9922_
                                                     _check9802_)
                                               (foldl1 cons
                                                       _refs9924_
                                                       _post9803_))))))
                                     (if (gx#stx-pair? ___stx1528415285_)
                                         (let ((_e98649968_
                                                (gx#stx-e ___stx1528415285_)))
                                           (let ((_tl98669973_
                                                  (##cdr _e98649968_))
                                                 (_hd98659971_
                                                  (##car _e98649968_)))
                                             (if (gx#stx-pair? _hd98659971_)
                                                 (let ((_e98679976_
                                                        (gx#stx-e
                                                         _hd98659971_)))
                                                   (let ((_tl98699981_
                                                          (##cdr _e98679976_))
                                                         (_hd98689979_
                                                          (##car _e98679976_)))
                                                     (if (gx#stx-null?
                                                          _tl98699981_)
                                                         (if (gx#stx-pair?
                                                              _tl98669973_)
                                                             (let ((_e98709984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl98669973_)))
                       (let ((_tl98729989_ (##cdr _e98709984_))
                             (_hd98719987_ (##car _e98709984_)))
                         (if (gx#stx-null? _tl98729989_)
                             (___kont1528615287_ _hd98719987_ _hd98689979_)
                             (_g98609885_))))
                     (_g98609885_))
                 (if (gx#stx-pair? _tl98669973_)
                     (let ((_e98789898_ (gx#stx-e _tl98669973_)))
                       (let ((_tl98809903_ (##cdr _e98789898_))
                             (_hd98799901_ (##car _e98789898_)))
                         (if (gx#stx-null? _tl98809903_)
                             (___kont1528815289_ _hd98799901_ _hd98659971_)
                             (_g98609885_))))
                     (_g98609885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl98669973_)
                                                     (let ((_e98789898_
                                                            (gx#stx-e
                                                             _tl98669973_)))
                                                       (let ((_tl98809903_
                                                              (##cdr _e98789898_))
                                                             (_hd98799901_
                                                              (##car _e98789898_)))
                                                         (if (gx#stx-null?
                                                              _tl98809903_)
                                                             (___kont1528815289_
                                                              _hd98799901_
                                                              _hd98659971_)
                                                             (_g98609885_))))
                                                     (_g98609885_)))))
                                         (_g98609885_))))))
                              (___kont1533215333_
                               (lambda ()
                                 (let* ((_body9824_
                                         (if _compiled-body?9712_
                                             _body9796_
                                             (gxc#compile-e _body9796_)))
                                        (_body9826_
                                         (_generate-values-post9717_
                                          _post9803_
                                          _body9824_))
                                        (_body9828_
                                         (_generate-values-check9716_
                                          _check9802_
                                          _body9826_)))
                                   (cons 'letrec
                                         (cons (reverse _bind9801_)
                                               (cons _body9828_ '())))))))
                          (if (gx#stx-pair? ___stx1532815329_)
                              (let ((_e98109836_ (gx#stx-e ___stx1532815329_)))
                                (let ((_tl98129841_ (##cdr _e98109836_))
                                      (_hd98119839_ (##car _e98109836_)))
                                  (___kont1533015331_
                                   _tl98129841_
                                   _hd98119839_)))
                              (___kont1533215333_)))))))
                 (_generate-values-check9716_
                  (lambda (_check9792_ _body9793_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9793_ '())
                                  (reverse _check9792_)))))
                 (_generate-values-post9717_
                  (lambda (_post9785_ _body9786_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9786_ '())
                                  (map (lambda (_g97879789_)
                                         (cons 'set! _g97879789_))
                                       (reverse _post9785_)))))))
          (let* ((_g97199736_
                  (lambda (_g97209733_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g97209733_)))
                 (_g97189782_
                  (lambda (_g97209739_)
                    (if (gx#stx-pair? _g97209739_)
                        (let ((_e97239741_ (gx#stx-e _g97209739_)))
                          (let ((_hd97249744_ (##car _e97239741_))
                                (_tl97259746_ (##cdr _e97239741_)))
                            (if (gx#stx-pair? _tl97259746_)
                                (let ((_e97269749_ (gx#stx-e _tl97259746_)))
                                  (let ((_hd97279752_ (##car _e97269749_))
                                        (_tl97289754_ (##cdr _e97269749_)))
                                    (if (gx#stx-pair? _tl97289754_)
                                        (let ((_e97299757_
                                               (gx#stx-e _tl97289754_)))
                                          (let ((_hd97309760_
                                                 (##car _e97299757_))
                                                (_tl97319762_
                                                 (##cdr _e97299757_)))
                                            (if (gx#stx-null? _tl97319762_)
                                                ((lambda (_L9765_ _L9766_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L9766_)
                                                       (_generate-simple9714_
                                                        _L9766_
                                                        _L9765_)
                                                       (_generate-values9715_
                                                        _L9766_
                                                        _L9765_)))
                                                 _hd97309760_
                                                 _hd97279752_)
                                                (_g97199736_ _g97209739_))))
                                        (_g97199736_ _g97209739_))))
                                (_g97199736_ _g97209739_))))
                        (_g97199736_ _g97209739_)))))
            (_g97189782_ _stx9711_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx10022_)
          (let ((_compiled-body?10024_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx10022_
             _compiled-body?10024_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g15643_
          (let ((_g15642_ (length _g15643_)))
            (cond ((##fx= _g15642_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g15643_))
                  ((##fx= _g15642_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g15643_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g15643_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx9293_)
      (letrec ((_generate-values9295_
                (lambda (_hd9538_ _body9539_)
                  (let _lp9541_ ((_rest9543_ _hd9538_) (_bind9544_ '()))
                    (let* ((_rest95459553_ _rest9543_)
                           (_else95479564_
                            (lambda ()
                              (let ((_bind9561_ (reverse _bind9544_))
                                    (_body9562_ (gxc#compile-e _body9539_)))
                                (cons 'letrec*
                                      (cons _bind9561_
                                            (cons _body9562_ '()))))))
                           (_K95499698_
                            (lambda (_rest9567_ _hd-bind9568_)
                              (let* ((___stx1534215343_ _hd-bind9568_)
                                     (_g95719596_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1534215343_))))
                                (let ((___kont1534415345_
                                       (lambda (_L9677_ _L9678_)
                                         (let ((_eid9692_
                                                (gxc#generate-runtime-binding-id*
                                                 _L9678_))
                                               (_expr9693_
                                                (gxc#compile-e _L9677_)))
                                           (_lp9541_
                                            _rest9567_
                                            (cons (cons _eid9692_
                                                        (cons _expr9693_ '()))
                                                  _bind9544_)))))
                                      (___kont1534615347_
                                       (lambda (_L9617_ _L9618_)
                                         (let* ((_vals9637_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp9639_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values9641_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp9639_
                                                  _L9618_
                                                  _L9617_))
                                                (_refs9643_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals9637_
                                                  _L9618_))
                                                (_expr9645_
                                                 (gxc#compile-e _L9617_)))
                                           (_lp9541_
                                            _rest9567_
                                            (foldl1 cons
                                                    (cons (cons _vals9637_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp9639_
                                                      (cons _expr9645_ '()))
                                                '())
                                          (cons _check-values9641_
                                                (cons _tmp9639_ '()))))
                              '()))
                  _bind9544_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs9643_))))))
                                  (if (gx#stx-pair? ___stx1534215343_)
                                      (let ((_e95759653_
                                             (gx#stx-e ___stx1534215343_)))
                                        (let ((_tl95779658_
                                               (##cdr _e95759653_))
                                              (_hd95769656_
                                               (##car _e95759653_)))
                                          (if (gx#stx-pair? _hd95769656_)
                                              (let ((_e95789661_
                                                     (gx#stx-e _hd95769656_)))
                                                (let ((_tl95809666_
                                                       (##cdr _e95789661_))
                                                      (_hd95799664_
                                                       (##car _e95789661_)))
                                                  (if (gx#stx-null?
                                                       _tl95809666_)
                                                      (if (gx#stx-pair?
                                                           _tl95779658_)
                                                          (let ((_e95819669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl95779658_)))
                    (let ((_tl95839674_ (##cdr _e95819669_))
                          (_hd95829672_ (##car _e95819669_)))
                      (if (gx#stx-null? _tl95839674_)
                          (___kont1534415345_ _hd95829672_ _hd95799664_)
                          (_g95719596_))))
                  (_g95719596_))
              (if (gx#stx-pair? _tl95779658_)
                  (let ((_e95899609_ (gx#stx-e _tl95779658_)))
                    (let ((_tl95919614_ (##cdr _e95899609_))
                          (_hd95909612_ (##car _e95899609_)))
                      (if (gx#stx-null? _tl95919614_)
                          (___kont1534615347_ _hd95909612_ _hd95769656_)
                          (_g95719596_))))
                  (_g95719596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl95779658_)
                                                  (let ((_e95899609_
                                                         (gx#stx-e
                                                          _tl95779658_)))
                                                    (let ((_tl95919614_
                                                           (##cdr _e95899609_))
                                                          (_hd95909612_
                                                           (##car _e95899609_)))
                                                      (if (gx#stx-null?
                                                           _tl95919614_)
                                                          (___kont1534615347_
                                                           _hd95909612_
                                                           _hd95769656_)
                                                          (_g95719596_))))
                                                  (_g95719596_)))))
                                      (_g95719596_)))))))
                      (if (##pair? _rest95459553_)
                          (let ((_hd95509701_ (##car _rest95459553_))
                                (_tl95519703_ (##cdr _rest95459553_)))
                            (let* ((_hd-bind9706_ _hd95509701_)
                                   (_rest9708_ _tl95519703_))
                              (_K95499698_ _rest9708_ _hd-bind9706_)))
                          (_else95479564_))))))
               (_generate-letrec?9296_
                (lambda (_hd9428_)
                  (let _lp9430_ ((_rest9432_ _hd9428_))
                    (let* ((_rest94339441_ _rest9432_)
                           (_else94359449_ (lambda () '#t))
                           (_K94379526_
                            (lambda (_rest9452_ _hd-bind9453_)
                              (let* ((_g94559472_
                                      (lambda (_g94569469_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g94569469_)))
                                     (_g94549523_
                                      (lambda (_g94569475_)
                                        (if (gx#stx-pair? _g94569475_)
                                            (let ((_e94599477_
                                                   (gx#stx-e _g94569475_)))
                                              (let ((_hd94609480_
                                                     (##car _e94599477_))
                                                    (_tl94619482_
                                                     (##cdr _e94599477_)))
                                                (if (gx#stx-pair? _hd94609480_)
                                                    (let ((_e94629485_
                                                           (gx#stx-e
                                                            _hd94609480_)))
                                                      (let ((_hd94639488_
                                                             (##car _e94629485_))
                                                            (_tl94649490_
                                                             (##cdr _e94629485_)))
                                                        (if (gx#stx-null?
                                                             _tl94649490_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94619482_)
                        (let ((_e94659493_ (gx#stx-e _tl94619482_)))
                          (let ((_hd94669496_ (##car _e94659493_))
                                (_tl94679498_ (##cdr _e94659493_)))
                            (if (gx#stx-null? _tl94679498_)
                                ((lambda (_L9501_ _L9502_)
                                   (if (_is-lambda-expr?9297_ _L9501_)
                                       (_lp9430_ _rest9452_)
                                       '#f))
                                 _hd94669496_
                                 _hd94639488_)
                                (_g94559472_ _g94569475_))))
                        (_g94559472_ _g94569475_))
                    (_g94559472_ _g94569475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94559472_
                                                     _g94569475_))))
                                            (_g94559472_ _g94569475_)))))
                                (_g94549523_ _hd-bind9453_)))))
                      (if (##pair? _rest94339441_)
                          (let ((_hd94389529_ (##car _rest94339441_))
                                (_tl94399531_ (##cdr _rest94339441_)))
                            (let* ((_hd-bind9534_ _hd94389529_)
                                   (_rest9536_ _tl94399531_))
                              (_K94379526_ _rest9536_ _hd-bind9534_)))
                          (_else94359449_))))))
               (_is-lambda-expr?9297_
                (lambda (_expr9365_)
                  (let* ((___stx1538615387_ _expr9365_)
                         (_g93689382_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1538615387_))))
                    (let ((___kont1538815389_ (lambda (_L9410_ _L9411_) '#t))
                          (___kont1539015391_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1538615387_)
                          (let ((_e93729394_ (gx#stx-e ___stx1538615387_)))
                            (let ((_tl93749399_ (##cdr _e93729394_))
                                  (_hd93739397_ (##car _e93729394_)))
                              (if (gx#identifier? _hd93739397_)
                                  (if (gx#stx-eq? '%#lambda _hd93739397_)
                                      (if (gx#stx-pair? _tl93749399_)
                                          (let ((_e93759402_
                                                 (gx#stx-e _tl93749399_)))
                                            (let ((_tl93779407_
                                                   (##cdr _e93759402_))
                                                  (_hd93769405_
                                                   (##car _e93759402_)))
                                              (___kont1538815389_
                                               _tl93779407_
                                               _hd93769405_)))
                                          (___kont1539015391_))
                                      (___kont1539015391_))
                                  (___kont1539015391_))))
                          (___kont1539015391_)))))))
        (let* ((_g92999316_
                (lambda (_g93009313_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g93009313_)))
               (_g92989362_
                (lambda (_g93009319_)
                  (if (gx#stx-pair? _g93009319_)
                      (let ((_e93039321_ (gx#stx-e _g93009319_)))
                        (let ((_hd93049324_ (##car _e93039321_))
                              (_tl93059326_ (##cdr _e93039321_)))
                          (if (gx#stx-pair? _tl93059326_)
                              (let ((_e93069329_ (gx#stx-e _tl93059326_)))
                                (let ((_hd93079332_ (##car _e93069329_))
                                      (_tl93089334_ (##cdr _e93069329_)))
                                  (if (gx#stx-pair? _tl93089334_)
                                      (let ((_e93099337_
                                             (gx#stx-e _tl93089334_)))
                                        (let ((_hd93109340_
                                               (##car _e93099337_))
                                              (_tl93119342_
                                               (##cdr _e93099337_)))
                                          (if (gx#stx-null? _tl93119342_)
                                              ((lambda (_L9345_ _L9346_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9346_)
                                                     (if (_generate-letrec?9296_
                                                          _L9346_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L9346_
                                                          _L9345_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L9346_
                                                          _L9345_
                                                          '#f))
                                                     (_generate-values9295_
                                                      _L9346_
                                                      _L9345_)))
                                               _hd93109340_
                                               _hd93079332_)
                                              (_g92999316_ _g93009319_))))
                                      (_g92999316_ _g93009319_))))
                              (_g92999316_ _g93009319_))))
                      (_g92999316_ _g93009319_)))))
          (_g92989362_ _stx9293_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd9186_)
      (let _lp9188_ ((_rest9190_ _hd9186_))
        (let* ((___stx1541015411_ _rest9190_)
               (_g91949215_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1541015411_))))
          (let ((___kont1541215413_
                 (lambda (_L9266_ _L9267_ _L9268_) (_lp9188_ _L9266_)))
                (___kont1541415415_ (lambda () '#t))
                (___kont1541615417_ (lambda () '#f)))
            (let ((_g91929229_
                   (lambda ()
                     (if (gx#stx-null? ___stx1541015411_)
                         (___kont1541415415_)
                         (___kont1541615417_)))))
              (if (gx#stx-pair? ___stx1541015411_)
                  (let ((_e91999234_ (gx#stx-e ___stx1541015411_)))
                    (let ((_tl92019239_ (##cdr _e91999234_))
                          (_hd92009237_ (##car _e91999234_)))
                      (if (gx#stx-pair? _hd92009237_)
                          (let ((_e92029242_ (gx#stx-e _hd92009237_)))
                            (let ((_tl92049247_ (##cdr _e92029242_))
                                  (_hd92039245_ (##car _e92029242_)))
                              (if (gx#stx-pair? _hd92039245_)
                                  (let ((_e92059250_ (gx#stx-e _hd92039245_)))
                                    (let ((_tl92079255_ (##cdr _e92059250_))
                                          (_hd92069253_ (##car _e92059250_)))
                                      (if (gx#stx-null? _tl92079255_)
                                          (if (gx#stx-pair? _tl92049247_)
                                              (let ((_e92089258_
                                                     (gx#stx-e _tl92049247_)))
                                                (let ((_tl92109263_
                                                       (##cdr _e92089258_))
                                                      (_hd92099261_
                                                       (##car _e92089258_)))
                                                  (if (gx#stx-null?
                                                       _tl92109263_)
                                                      (___kont1541215413_
                                                       _tl92019239_
                                                       _hd92099261_
                                                       _hd92069253_)
                                                      (___kont1541615417_))))
                                              (___kont1541615417_))
                                          (___kont1541615417_))))
                                  (___kont1541615417_))))
                          (___kont1541615417_))))
                  (_g91929229_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form9110_ _hd9111_ _body9112_ _compiled-body?9113_)
      (letrec ((_generate19115_
                (lambda (_bind9117_)
                  (let* ((_g91199136_
                          (lambda (_g91209133_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g91209133_)))
                         (_g91189183_
                          (lambda (_g91209139_)
                            (if (gx#stx-pair? _g91209139_)
                                (let ((_e91239141_ (gx#stx-e _g91209139_)))
                                  (let ((_hd91249144_ (##car _e91239141_))
                                        (_tl91259146_ (##cdr _e91239141_)))
                                    (if (gx#stx-pair? _hd91249144_)
                                        (let ((_e91269149_
                                               (gx#stx-e _hd91249144_)))
                                          (let ((_hd91279152_
                                                 (##car _e91269149_))
                                                (_tl91289154_
                                                 (##cdr _e91269149_)))
                                            (if (gx#stx-null? _tl91289154_)
                                                (if (gx#stx-pair? _tl91259146_)
                                                    (let ((_e91299157_
                                                           (gx#stx-e
                                                            _tl91259146_)))
                                                      (let ((_hd91309160_
                                                             (##car _e91299157_))
                                                            (_tl91319162_
                                                             (##cdr _e91299157_)))
                                                        (if (gx#stx-null?
                                                             _tl91319162_)
                                                            ((lambda (_L9165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L9166_)
                       (cons (gxc#generate-runtime-binding-id* _L9166_)
                             (cons (gxc#compile-e _L9165_) '())))
                     _hd91309160_
                     _hd91279152_)
                    (_g91199136_ _g91209139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g91199136_ _g91209139_))
                                                (_g91199136_ _g91209139_))))
                                        (_g91199136_ _g91209139_))))
                                (_g91199136_ _g91209139_)))))
                    (_g91189183_ _bind9117_)))))
        (cons _form9110_
              (cons (map _generate19115_ _hd9111_)
                    (cons (if _compiled-body?9113_
                              _body9112_
                              (gxc#compile-e _body9112_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx9018_)
      (letrec ((_generate19020_
                (lambda (_datum9072_)
                  (if (let ((_$e9074_ (null? _datum9072_)))
                        (if _$e9074_
                            _$e9074_
                            (let ((_$e9077_ (interned-symbol? _datum9072_)))
                              (if _$e9077_
                                  _$e9077_
                                  (let ((_$e9080_
                                         (gx#self-quoting? _datum9072_)))
                                    (if _$e9080_
                                        _$e9080_
                                        (eof-object? _datum9072_)))))))
                      _datum9072_
                      (if (uninterned-symbol? _datum9072_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum9072_
                           '#t)
                          (if (pair? _datum9072_)
                              (cons (_generate19020_ (car _datum9072_))
                                    (_generate19020_ (cdr _datum9072_)))
                              (if (box? _datum9072_)
                                  (box (_generate19020_ (unbox _datum9072_)))
                                  (if (vector? _datum9072_)
                                      (vector-map _generate19020_ _datum9072_)
                                      (if (let ((_$e9083_
                                                 (s8vector? _datum9072_)))
                                            (if _$e9083_
                                                _$e9083_
                                                (let ((_$e9086_
                                                       (u8vector?
                                                        _datum9072_)))
                                                  (if _$e9086_
                                                      _$e9086_
                                                      (let ((_$e9089_
                                                             (s16vector?
                                                              _datum9072_)))
                                                        (if _$e9089_
                                                            _$e9089_
                                                            (let ((_$e9092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum9072_)))
                      (if _$e9092_
                          _$e9092_
                          (let ((_$e9095_ (s32vector? _datum9072_)))
                            (if _$e9095_
                                _$e9095_
                                (let ((_$e9098_ (u32vector? _datum9072_)))
                                  (if _$e9098_
                                      _$e9098_
                                      (let ((_$e9101_
                                             (s64vector? _datum9072_)))
                                        (if _$e9101_
                                            _$e9101_
                                            (let ((_$e9104_
                                                   (u64vector? _datum9072_)))
                                              (if _$e9104_
                                                  _$e9104_
                                                  (let ((_$e9107_
                                                         (f32vector?
                                                          _datum9072_)))
                                                    (if _$e9107_
                                                        _$e9107_
                                                        (f64vector?
                                                         _datum9072_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum9072_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx9018_))))))))))
        (let* ((_g90229035_
                (lambda (_g90239032_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g90239032_)))
               (_g90219069_
                (lambda (_g90239038_)
                  (if (gx#stx-pair? _g90239038_)
                      (let ((_e90259040_ (gx#stx-e _g90239038_)))
                        (let ((_hd90269043_ (##car _e90259040_))
                              (_tl90279045_ (##cdr _e90259040_)))
                          (if (gx#stx-pair? _tl90279045_)
                              (let ((_e90289048_ (gx#stx-e _tl90279045_)))
                                (let ((_hd90299051_ (##car _e90289048_))
                                      (_tl90309053_ (##cdr _e90289048_)))
                                  (if (gx#stx-null? _tl90309053_)
                                      ((lambda (_L9056_)
                                         (cons 'quote
                                               (cons (_generate19020_
                                                      (gx#stx-e _L9056_))
                                                     '())))
                                       _hd90299051_)
                                      (_g90229035_ _g90239038_))))
                              (_g90229035_ _g90239038_))))
                      (_g90229035_ _g90239038_)))))
          (_g90219069_ _stx9018_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx8711_)
      (let* ((_g87138727_
              (lambda (_g87148724_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g87148724_)))
             (_g87129015_
              (lambda (_g87148730_)
                (if (gx#stx-pair? _g87148730_)
                    (let ((_e87178732_ (gx#stx-e _g87148730_)))
                      (let ((_hd87188735_ (##car _e87178732_))
                            (_tl87198737_ (##cdr _e87178732_)))
                        (if (gx#stx-pair? _tl87198737_)
                            (let ((_e87208740_ (gx#stx-e _tl87198737_)))
                              (let ((_hd87218743_ (##car _e87208740_))
                                    (_tl87228745_ (##cdr _e87208740_)))
                                ((lambda (_L8748_ _L8749_)
                                   (let ((_rator8762_ (gxc#compile-e _L8749_))
                                         (_rands8763_
                                          (map gxc#compile-e _L8748_)))
                                     (let* ((___stx1545015451_ _rator8762_)
                                            (_g87668818_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1545015451_))))
                                       (let ((___kont1545215453_
                                              (lambda (_L8942_
                                                       _L8943_
                                                       _L8944_
                                                       _L8945_)
                                                (if (fx= (length _rands8763_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g89818984_ _g89828986_)
                                     (cons _g89818984_ _g89828986_))
                                   '()
                                   _L8944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id8989_ _L8945_)
                                                           (_args8998_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g89908993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g89918995_)
                                (cons _g89908993_ _g89918995_))
                              '()
                              _L8944_)))
                   (_body9007_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g89999002_ _g90009004_)
                                (cons _g89999002_ _g90009004_))
                              '()
                              _L8943_)))
                   (_init9009_ (map list _args8998_ _rands8763_)))
              (cons 'let (cons _id8989_ (cons _init9009_ _body9007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx8711_))))
                                             (___kont1545815459_
                                              (lambda ()
                                                (cons _rator8762_
                                                      _rands8763_))))
                                         (let ((___match1551715518_
                                                (lambda (_e87728830_
                                                         _hd87738833_
                                                         _tl87748835_
                                                         _e87758838_
                                                         _hd87768841_
                                                         _tl87778843_
                                                         _e87788846_
                                                         _hd87798849_
                                                         _tl87808851_
                                                         _e87818854_
                                                         _hd87828857_
                                                         _tl87838859_
                                                         _e87848862_
                                                         _hd87858865_
                                                         _tl87868867_
                                                         _e87878870_
                                                         _hd87888873_
                                                         _tl87898875_
                                                         _e87908878_
                                                         _hd87918881_
                                                         _tl87928883_
                                                         ___splice1545415455_
                                                         _target87938886_
                                                         _tl87958888_)
                                                  (letrec ((_loop87968891_
                                                            (lambda (_hd87948894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg88008896_)
                      (if (gx#stx-pair? _hd87948894_)
                          (let ((_e87978899_ (gx#stx-e _hd87948894_)))
                            (let ((_lp-tl87998904_ (##cdr _e87978899_))
                                  (_lp-hd87988902_ (##car _e87978899_)))
                              (_loop87968891_
                               _lp-tl87998904_
                               (cons _lp-hd87988902_ _arg88008896_))))
                          (let ((_arg88018907_ (reverse _arg88008896_)))
                            (if (gx#stx-pair/null? _tl87928883_)
                                (let ((___splice1545615457_
                                       (gx#syntax-split-splice
                                        _tl87928883_
                                        '0)))
                                  (let ((_tl88048912_
                                         (##vector-ref
                                          ___splice1545615457_
                                          '1))
                                        (_target88028910_
                                         (##vector-ref
                                          ___splice1545615457_
                                          '0)))
                                    (if (gx#stx-null? _tl88048912_)
                                        (letrec ((_loop88058915_
                                                  (lambda (_hd88038918_
                                                           _body88098920_)
                                                    (if (gx#stx-pair?
                                                         _hd88038918_)
                                                        (let ((_e88068923_
                                                               (gx#stx-e
                                                                _hd88038918_)))
                                                          (let ((_lp-tl88088928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e88068923_))
                        (_lp-hd88078926_ (##car _e88068923_)))
                    (_loop88058915_
                     _lp-tl88088928_
                     (cons _lp-hd88078926_ _body88098920_))))
                (let ((_body88108931_ (reverse _body88098920_)))
                  (if (gx#stx-null? _tl87868867_)
                      (if (gx#stx-null? _tl87808851_)
                          (if (gx#stx-pair? _tl87778843_)
                              (let ((_e88118934_ (gx#stx-e _tl87778843_)))
                                (let ((_tl88138939_ (##cdr _e88118934_))
                                      (_hd88128937_ (##car _e88118934_)))
                                  (if (gx#stx-null? _tl88138939_)
                                      (let ((_L8942_ _hd88128937_)
                                            (_L8943_ _body88108931_)
                                            (_L8944_ _arg88018907_)
                                            (_L8945_ _hd87828857_))
                                        (if (eq? _L8945_ _L8942_)
                                            (___kont1545215453_
                                             _L8942_
                                             _L8943_
                                             _L8944_
                                             _L8945_)
                                            (___kont1545815459_)))
                                      (___kont1545815459_))))
                              (___kont1545815459_))
                          (___kont1545815459_))
                      (___kont1545815459_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop88058915_
                                           _target88028910_
                                           '()))
                                        (___kont1545815459_))))
                                (___kont1545815459_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop87968891_
                                                     _target87938886_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1545015451_)
                                               (let ((_e87728830_
                                                      (gx#stx-e
                                                       ___stx1545015451_)))
                                                 (let ((_tl87748835_
                                                        (##cdr _e87728830_))
                                                       (_hd87738833_
                                                        (##car _e87728830_)))
                                                   (if (gx#identifier?
                                                        _hd87738833_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd87738833_)
                                                           (if (gx#stx-pair?
                                                                _tl87748835_)
                                                               (let ((_e87758838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl87748835_)))
                         (let ((_tl87778843_ (##cdr _e87758838_))
                               (_hd87768841_ (##car _e87758838_)))
                           (if (gx#stx-pair? _hd87768841_)
                               (let ((_e87788846_ (gx#stx-e _hd87768841_)))
                                 (let ((_tl87808851_ (##cdr _e87788846_))
                                       (_hd87798849_ (##car _e87788846_)))
                                   (if (gx#stx-pair? _hd87798849_)
                                       (let ((_e87818854_
                                              (gx#stx-e _hd87798849_)))
                                         (let ((_tl87838859_
                                                (##cdr _e87818854_))
                                               (_hd87828857_
                                                (##car _e87818854_)))
                                           (if (gx#stx-pair? _tl87838859_)
                                               (let ((_e87848862_
                                                      (gx#stx-e _tl87838859_)))
                                                 (let ((_tl87868867_
                                                        (##cdr _e87848862_))
                                                       (_hd87858865_
                                                        (##car _e87848862_)))
                                                   (if (gx#stx-pair?
                                                        _hd87858865_)
                                                       (let ((_e87878870_
                                                              (gx#stx-e
                                                               _hd87858865_)))
                                                         (let ((_tl87898875_
                                                                (##cdr _e87878870_))
                                                               (_hd87888873_
                                                                (##car _e87878870_)))
                                                           (if (gx#identifier?
                                                                _hd87888873_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd87888873_)
                           (if (gx#stx-pair? _tl87898875_)
                               (let ((_e87908878_ (gx#stx-e _tl87898875_)))
                                 (let ((_tl87928883_ (##cdr _e87908878_))
                                       (_hd87918881_ (##car _e87908878_)))
                                   (if (gx#stx-pair/null? _hd87918881_)
                                       (let ((___splice1545415455_
                                              (gx#syntax-split-splice
                                               _hd87918881_
                                               '0)))
                                         (let ((_tl87958888_
                                                (##vector-ref
                                                 ___splice1545415455_
                                                 '1))
                                               (_target87938886_
                                                (##vector-ref
                                                 ___splice1545415455_
                                                 '0)))
                                           (if (gx#stx-null? _tl87958888_)
                                               (___match1551715518_
                                                _e87728830_
                                                _hd87738833_
                                                _tl87748835_
                                                _e87758838_
                                                _hd87768841_
                                                _tl87778843_
                                                _e87788846_
                                                _hd87798849_
                                                _tl87808851_
                                                _e87818854_
                                                _hd87828857_
                                                _tl87838859_
                                                _e87848862_
                                                _hd87858865_
                                                _tl87868867_
                                                _e87878870_
                                                _hd87888873_
                                                _tl87898875_
                                                _e87908878_
                                                _hd87918881_
                                                _tl87928883_
                                                ___splice1545415455_
                                                _target87938886_
                                                _tl87958888_)
                                               (___kont1545815459_))))
                                       (___kont1545815459_))))
                               (___kont1545815459_))
                           (___kont1545815459_))
                       (___kont1545815459_))))
               (___kont1545815459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1545815459_))))
                                       (___kont1545815459_))))
                               (___kont1545815459_))))
                       (___kont1545815459_))
                   (___kont1545815459_))
               (___kont1545815459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1545815459_)))))))
                                 _tl87228745_
                                 _hd87218743_)))
                            (_g87138727_ _g87148730_))))
                    (_g87138727_ _g87148730_)))))
        (_g87129015_ _stx8711_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx8628_)
      (let* ((_g86308651_
              (lambda (_g86318648_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g86318648_)))
             (_g86298708_
              (lambda (_g86318654_)
                (if (gx#stx-pair? _g86318654_)
                    (let ((_e86358656_ (gx#stx-e _g86318654_)))
                      (let ((_hd86368659_ (##car _e86358656_))
                            (_tl86378661_ (##cdr _e86358656_)))
                        (if (gx#stx-pair? _tl86378661_)
                            (let ((_e86388664_ (gx#stx-e _tl86378661_)))
                              (let ((_hd86398667_ (##car _e86388664_))
                                    (_tl86408669_ (##cdr _e86388664_)))
                                (if (gx#stx-pair? _tl86408669_)
                                    (let ((_e86418672_
                                           (gx#stx-e _tl86408669_)))
                                      (let ((_hd86428675_ (##car _e86418672_))
                                            (_tl86438677_ (##cdr _e86418672_)))
                                        (if (gx#stx-pair? _tl86438677_)
                                            (let ((_e86448680_
                                                   (gx#stx-e _tl86438677_)))
                                              (let ((_hd86458683_
                                                     (##car _e86448680_))
                                                    (_tl86468685_
                                                     (##cdr _e86448680_)))
                                                (if (gx#stx-null? _tl86468685_)
                                                    ((lambda (_L8688_
                                                              _L8689_
                                                              _L8690_)
                                                       (cons 'if
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8690_)
                           (cons (gxc#compile-e _L8689_)
                                 (cons (gxc#compile-e _L8688_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd86458683_
                                                     _hd86428675_
                                                     _hd86398667_)
                                                    (_g86308651_
                                                     _g86318654_))))
                                            (_g86308651_ _g86318654_))))
                                    (_g86308651_ _g86318654_))))
                            (_g86308651_ _g86318654_))))
                    (_g86308651_ _g86318654_)))))
        (_g86298708_ _stx8628_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx8577_)
      (let* ((_g85798592_
              (lambda (_g85808589_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g85808589_)))
             (_g85788625_
              (lambda (_g85808595_)
                (if (gx#stx-pair? _g85808595_)
                    (let ((_e85828597_ (gx#stx-e _g85808595_)))
                      (let ((_hd85838600_ (##car _e85828597_))
                            (_tl85848602_ (##cdr _e85828597_)))
                        (if (gx#stx-pair? _tl85848602_)
                            (let ((_e85858605_ (gx#stx-e _tl85848602_)))
                              (let ((_hd85868608_ (##car _e85858605_))
                                    (_tl85878610_ (##cdr _e85858605_)))
                                (if (gx#stx-null? _tl85878610_)
                                    ((lambda (_L8613_)
                                       (gxc#generate-runtime-binding-id
                                        _L8613_))
                                     _hd85868608_)
                                    (_g85798592_ _g85808595_))))
                            (_g85798592_ _g85808595_))))
                    (_g85798592_ _g85808595_)))))
        (_g85788625_ _stx8577_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx8510_)
      (let* ((_g85128529_
              (lambda (_g85138526_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g85138526_)))
             (_g85118574_
              (lambda (_g85138532_)
                (if (gx#stx-pair? _g85138532_)
                    (let ((_e85168534_ (gx#stx-e _g85138532_)))
                      (let ((_hd85178537_ (##car _e85168534_))
                            (_tl85188539_ (##cdr _e85168534_)))
                        (if (gx#stx-pair? _tl85188539_)
                            (let ((_e85198542_ (gx#stx-e _tl85188539_)))
                              (let ((_hd85208545_ (##car _e85198542_))
                                    (_tl85218547_ (##cdr _e85198542_)))
                                (if (gx#stx-pair? _tl85218547_)
                                    (let ((_e85228550_
                                           (gx#stx-e _tl85218547_)))
                                      (let ((_hd85238553_ (##car _e85228550_))
                                            (_tl85248555_ (##cdr _e85228550_)))
                                        (if (gx#stx-null? _tl85248555_)
                                            ((lambda (_L8558_ _L8559_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L8559_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8558_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd85238553_
                                             _hd85208545_)
                                            (_g85128529_ _g85138532_))))
                                    (_g85128529_ _g85138532_))))
                            (_g85128529_ _g85138532_))))
                    (_g85128529_ _g85138532_)))))
        (_g85118574_ _stx8510_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx8443_)
      (let* ((_g84458462_
              (lambda (_g84468459_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g84468459_)))
             (_g84448507_
              (lambda (_g84468465_)
                (if (gx#stx-pair? _g84468465_)
                    (let ((_e84498467_ (gx#stx-e _g84468465_)))
                      (let ((_hd84508470_ (##car _e84498467_))
                            (_tl84518472_ (##cdr _e84498467_)))
                        (if (gx#stx-pair? _tl84518472_)
                            (let ((_e84528475_ (gx#stx-e _tl84518472_)))
                              (let ((_hd84538478_ (##car _e84528475_))
                                    (_tl84548480_ (##cdr _e84528475_)))
                                (if (gx#stx-pair? _tl84548480_)
                                    (let ((_e84558483_
                                           (gx#stx-e _tl84548480_)))
                                      (let ((_hd84568486_ (##car _e84558483_))
                                            (_tl84578488_ (##cdr _e84558483_)))
                                        (if (gx#stx-null? _tl84578488_)
                                            ((lambda (_L8491_ _L8492_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L8491_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8492_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd84568486_
                                             _hd84538478_)
                                            (_g84458462_ _g84468465_))))
                                    (_g84458462_ _g84468465_))))
                            (_g84458462_ _g84468465_))))
                    (_g84458462_ _g84468465_)))))
        (_g84448507_ _stx8443_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx8376_)
      (let* ((_g83788395_
              (lambda (_g83798392_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g83798392_)))
             (_g83778440_
              (lambda (_g83798398_)
                (if (gx#stx-pair? _g83798398_)
                    (let ((_e83828400_ (gx#stx-e _g83798398_)))
                      (let ((_hd83838403_ (##car _e83828400_))
                            (_tl83848405_ (##cdr _e83828400_)))
                        (if (gx#stx-pair? _tl83848405_)
                            (let ((_e83858408_ (gx#stx-e _tl83848405_)))
                              (let ((_hd83868411_ (##car _e83858408_))
                                    (_tl83878413_ (##cdr _e83858408_)))
                                (if (gx#stx-pair? _tl83878413_)
                                    (let ((_e83888416_
                                           (gx#stx-e _tl83878413_)))
                                      (let ((_hd83898419_ (##car _e83888416_))
                                            (_tl83908421_ (##cdr _e83888416_)))
                                        (if (gx#stx-null? _tl83908421_)
                                            ((lambda (_L8424_ _L8425_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L8424_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8425_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd83898419_
                                             _hd83868411_)
                                            (_g83788395_ _g83798398_))))
                                    (_g83788395_ _g83798398_))))
                            (_g83788395_ _g83798398_))))
                    (_g83788395_ _g83798398_)))))
        (_g83778440_ _stx8376_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx8293_)
      (let* ((_g82958316_
              (lambda (_g82968313_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g82968313_)))
             (_g82948373_
              (lambda (_g82968319_)
                (if (gx#stx-pair? _g82968319_)
                    (let ((_e83008321_ (gx#stx-e _g82968319_)))
                      (let ((_hd83018324_ (##car _e83008321_))
                            (_tl83028326_ (##cdr _e83008321_)))
                        (if (gx#stx-pair? _tl83028326_)
                            (let ((_e83038329_ (gx#stx-e _tl83028326_)))
                              (let ((_hd83048332_ (##car _e83038329_))
                                    (_tl83058334_ (##cdr _e83038329_)))
                                (if (gx#stx-pair? _tl83058334_)
                                    (let ((_e83068337_
                                           (gx#stx-e _tl83058334_)))
                                      (let ((_hd83078340_ (##car _e83068337_))
                                            (_tl83088342_ (##cdr _e83068337_)))
                                        (if (gx#stx-pair? _tl83088342_)
                                            (let ((_e83098345_
                                                   (gx#stx-e _tl83088342_)))
                                              (let ((_hd83108348_
                                                     (##car _e83098345_))
                                                    (_tl83118350_
                                                     (##cdr _e83098345_)))
                                                (if (gx#stx-null? _tl83118350_)
                                                    ((lambda (_L8353_
                                                              _L8354_
                                                              _L8355_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8353_)
                           (cons (gxc#compile-e _L8354_)
                                 (cons (gxc#compile-e _L8355_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd83108348_
                                                     _hd83078340_
                                                     _hd83048332_)
                                                    (_g82958316_
                                                     _g82968319_))))
                                            (_g82958316_ _g82968319_))))
                                    (_g82958316_ _g82968319_))))
                            (_g82958316_ _g82968319_))))
                    (_g82958316_ _g82968319_)))))
        (_g82948373_ _stx8293_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx8194_)
      (let* ((_g81968221_
              (lambda (_g81978218_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g81978218_)))
             (_g81958290_
              (lambda (_g81978224_)
                (if (gx#stx-pair? _g81978224_)
                    (let ((_e82028226_ (gx#stx-e _g81978224_)))
                      (let ((_hd82038229_ (##car _e82028226_))
                            (_tl82048231_ (##cdr _e82028226_)))
                        (if (gx#stx-pair? _tl82048231_)
                            (let ((_e82058234_ (gx#stx-e _tl82048231_)))
                              (let ((_hd82068237_ (##car _e82058234_))
                                    (_tl82078239_ (##cdr _e82058234_)))
                                (if (gx#stx-pair? _tl82078239_)
                                    (let ((_e82088242_
                                           (gx#stx-e _tl82078239_)))
                                      (let ((_hd82098245_ (##car _e82088242_))
                                            (_tl82108247_ (##cdr _e82088242_)))
                                        (if (gx#stx-pair? _tl82108247_)
                                            (let ((_e82118250_
                                                   (gx#stx-e _tl82108247_)))
                                              (let ((_hd82128253_
                                                     (##car _e82118250_))
                                                    (_tl82138255_
                                                     (##cdr _e82118250_)))
                                                (if (gx#stx-pair? _tl82138255_)
                                                    (let ((_e82148258_
                                                           (gx#stx-e
                                                            _tl82138255_)))
                                                      (let ((_hd82158261_
                                                             (##car _e82148258_))
                                                            (_tl82168263_
                                                             (##cdr _e82148258_)))
                                                        (if (gx#stx-null?
                                                             _tl82168263_)
                                                            ((lambda (_L8266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8267_
                              _L8268_
                              _L8269_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L8267_)
                                   (cons (gxc#compile-e _L8266_)
                                         (cons (gxc#compile-e _L8268_)
                                               (cons (gxc#compile-e _L8269_)
                                                     (cons ''#f '())))))))
                     _hd82158261_
                     _hd82128253_
                     _hd82098245_
                     _hd82068237_)
                    (_g81968221_ _g81978224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81968221_
                                                     _g81978224_))))
                                            (_g81968221_ _g81978224_))))
                                    (_g81968221_ _g81978224_))))
                            (_g81968221_ _g81978224_))))
                    (_g81968221_ _g81978224_)))))
        (_g81958290_ _stx8194_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx8111_)
      (let* ((_g81138134_
              (lambda (_g81148131_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g81148131_)))
             (_g81128191_
              (lambda (_g81148137_)
                (if (gx#stx-pair? _g81148137_)
                    (let ((_e81188139_ (gx#stx-e _g81148137_)))
                      (let ((_hd81198142_ (##car _e81188139_))
                            (_tl81208144_ (##cdr _e81188139_)))
                        (if (gx#stx-pair? _tl81208144_)
                            (let ((_e81218147_ (gx#stx-e _tl81208144_)))
                              (let ((_hd81228150_ (##car _e81218147_))
                                    (_tl81238152_ (##cdr _e81218147_)))
                                (if (gx#stx-pair? _tl81238152_)
                                    (let ((_e81248155_
                                           (gx#stx-e _tl81238152_)))
                                      (let ((_hd81258158_ (##car _e81248155_))
                                            (_tl81268160_ (##cdr _e81248155_)))
                                        (if (gx#stx-pair? _tl81268160_)
                                            (let ((_e81278163_
                                                   (gx#stx-e _tl81268160_)))
                                              (let ((_hd81288166_
                                                     (##car _e81278163_))
                                                    (_tl81298168_
                                                     (##cdr _e81278163_)))
                                                (if (gx#stx-null? _tl81298168_)
                                                    ((lambda (_L8171_
                                                              _L8172_
                                                              _L8173_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8171_)
                           (cons (gxc#compile-e _L8172_)
                                 (cons (gxc#compile-e _L8173_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd81288166_
                                                     _hd81258158_
                                                     _hd81228150_)
                                                    (_g81138134_
                                                     _g81148137_))))
                                            (_g81138134_ _g81148137_))))
                                    (_g81138134_ _g81148137_))))
                            (_g81138134_ _g81148137_))))
                    (_g81138134_ _g81148137_)))))
        (_g81128191_ _stx8111_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx8012_)
      (let* ((_g80148039_
              (lambda (_g80158036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g80158036_)))
             (_g80138108_
              (lambda (_g80158042_)
                (if (gx#stx-pair? _g80158042_)
                    (let ((_e80208044_ (gx#stx-e _g80158042_)))
                      (let ((_hd80218047_ (##car _e80208044_))
                            (_tl80228049_ (##cdr _e80208044_)))
                        (if (gx#stx-pair? _tl80228049_)
                            (let ((_e80238052_ (gx#stx-e _tl80228049_)))
                              (let ((_hd80248055_ (##car _e80238052_))
                                    (_tl80258057_ (##cdr _e80238052_)))
                                (if (gx#stx-pair? _tl80258057_)
                                    (let ((_e80268060_
                                           (gx#stx-e _tl80258057_)))
                                      (let ((_hd80278063_ (##car _e80268060_))
                                            (_tl80288065_ (##cdr _e80268060_)))
                                        (if (gx#stx-pair? _tl80288065_)
                                            (let ((_e80298068_
                                                   (gx#stx-e _tl80288065_)))
                                              (let ((_hd80308071_
                                                     (##car _e80298068_))
                                                    (_tl80318073_
                                                     (##cdr _e80298068_)))
                                                (if (gx#stx-pair? _tl80318073_)
                                                    (let ((_e80328076_
                                                           (gx#stx-e
                                                            _tl80318073_)))
                                                      (let ((_hd80338079_
                                                             (##car _e80328076_))
                                                            (_tl80348081_
                                                             (##cdr _e80328076_)))
                                                        (if (gx#stx-null?
                                                             _tl80348081_)
                                                            ((lambda (_L8084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8085_
                              _L8086_
                              _L8087_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L8085_)
                                   (cons (gxc#compile-e _L8084_)
                                         (cons (gxc#compile-e _L8086_)
                                               (cons (gxc#compile-e _L8087_)
                                                     (cons ''#f '())))))))
                     _hd80338079_
                     _hd80308071_
                     _hd80278063_
                     _hd80248055_)
                    (_g80148039_ _g80158042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80148039_
                                                     _g80158042_))))
                                            (_g80148039_ _g80158042_))))
                                    (_g80148039_ _g80158042_))))
                            (_g80148039_ _g80158042_))))
                    (_g80148039_ _g80158042_)))))
        (_g80138108_ _stx8012_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx7929_)
      (let* ((_g79317952_
              (lambda (_g79327949_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g79327949_)))
             (_g79308009_
              (lambda (_g79327955_)
                (if (gx#stx-pair? _g79327955_)
                    (let ((_e79367957_ (gx#stx-e _g79327955_)))
                      (let ((_hd79377960_ (##car _e79367957_))
                            (_tl79387962_ (##cdr _e79367957_)))
                        (if (gx#stx-pair? _tl79387962_)
                            (let ((_e79397965_ (gx#stx-e _tl79387962_)))
                              (let ((_hd79407968_ (##car _e79397965_))
                                    (_tl79417970_ (##cdr _e79397965_)))
                                (if (gx#stx-pair? _tl79417970_)
                                    (let ((_e79427973_
                                           (gx#stx-e _tl79417970_)))
                                      (let ((_hd79437976_ (##car _e79427973_))
                                            (_tl79447978_ (##cdr _e79427973_)))
                                        (if (gx#stx-pair? _tl79447978_)
                                            (let ((_e79457981_
                                                   (gx#stx-e _tl79447978_)))
                                              (let ((_hd79467984_
                                                     (##car _e79457981_))
                                                    (_tl79477986_
                                                     (##cdr _e79457981_)))
                                                (if (gx#stx-null? _tl79477986_)
                                                    ((lambda (_L7989_
                                                              _L7990_
                                                              _L7991_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7989_)
                           (cons (gxc#compile-e _L7990_)
                                 (cons (gxc#compile-e _L7991_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd79467984_
                                                     _hd79437976_
                                                     _hd79407968_)
                                                    (_g79317952_
                                                     _g79327955_))))
                                            (_g79317952_ _g79327955_))))
                                    (_g79317952_ _g79327955_))))
                            (_g79317952_ _g79327955_))))
                    (_g79317952_ _g79327955_)))))
        (_g79308009_ _stx7929_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx7830_)
      (let* ((_g78327857_
              (lambda (_g78337854_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g78337854_)))
             (_g78317926_
              (lambda (_g78337860_)
                (if (gx#stx-pair? _g78337860_)
                    (let ((_e78387862_ (gx#stx-e _g78337860_)))
                      (let ((_hd78397865_ (##car _e78387862_))
                            (_tl78407867_ (##cdr _e78387862_)))
                        (if (gx#stx-pair? _tl78407867_)
                            (let ((_e78417870_ (gx#stx-e _tl78407867_)))
                              (let ((_hd78427873_ (##car _e78417870_))
                                    (_tl78437875_ (##cdr _e78417870_)))
                                (if (gx#stx-pair? _tl78437875_)
                                    (let ((_e78447878_
                                           (gx#stx-e _tl78437875_)))
                                      (let ((_hd78457881_ (##car _e78447878_))
                                            (_tl78467883_ (##cdr _e78447878_)))
                                        (if (gx#stx-pair? _tl78467883_)
                                            (let ((_e78477886_
                                                   (gx#stx-e _tl78467883_)))
                                              (let ((_hd78487889_
                                                     (##car _e78477886_))
                                                    (_tl78497891_
                                                     (##cdr _e78477886_)))
                                                (if (gx#stx-pair? _tl78497891_)
                                                    (let ((_e78507894_
                                                           (gx#stx-e
                                                            _tl78497891_)))
                                                      (let ((_hd78517897_
                                                             (##car _e78507894_))
                                                            (_tl78527899_
                                                             (##cdr _e78507894_)))
                                                        (if (gx#stx-null?
                                                             _tl78527899_)
                                                            ((lambda (_L7902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7903_
                              _L7904_
                              _L7905_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L7903_)
                                   (cons (gxc#compile-e _L7902_)
                                         (cons (gxc#compile-e _L7904_)
                                               (cons (gxc#compile-e _L7905_)
                                                     (cons ''#f '())))))))
                     _hd78517897_
                     _hd78487889_
                     _hd78457881_
                     _hd78427873_)
                    (_g78327857_ _g78337860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78327857_
                                                     _g78337860_))))
                                            (_g78327857_ _g78337860_))))
                                    (_g78327857_ _g78337860_))))
                            (_g78327857_ _g78337860_))))
                    (_g78327857_ _g78337860_)))))
        (_g78317926_ _stx7830_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx7684_)
      (letrec ((_import-set-template7686_
                (lambda (_in7782_ _phi7783_)
                  (let ((_iphi7785_
                         (fx+ _phi7783_
                              (##direct-structure-ref
                               _in7782_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports7786_
                         (##structure-ref
                          (##direct-structure-ref
                           _in7782_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp7788_ ((_rest7790_ _imports7786_) (_r7791_ '()))
                      (let* ((_rest77927800_ _rest7790_)
                             (_else77947808_ (lambda () _r7791_))
                             (_K77967818_
                              (lambda (_rest7811_ _in7812_)
                                (if (##structure-instance-of?
                                     _in7812_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi7785_)
                                        (_lp7788_
                                         _rest7811_
                                         (cons _in7812_ _r7791_))
                                        (_lp7788_ _rest7811_ _r7791_))
                                    (if (##structure-direct-instance-of?
                                         _in7812_
                                         'gx#module-import::t)
                                        (let ((_iphi7814_
                                               (fx+ _phi7783_
                                                    (##direct-structure-ref
                                                     _in7812_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi7814_)
                                              (_lp7788_
                                               _rest7811_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in7812_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r7791_))
                                              (_lp7788_ _rest7811_ _r7791_)))
                                        (if (##structure-direct-instance-of?
                                             _in7812_
                                             'gx#import-set::t)
                                            (let ((_xphi7816_
                                                   (fx+ _iphi7785_
                                                        (##direct-structure-ref
                                                         _in7812_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi7816_)
                                                  (_lp7788_
                                                   _rest7811_
                                                   (cons (##direct-structure-ref
                                                          _in7812_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r7791_))
                                                  (if (fxpositive? _xphi7816_)
                                                      (_lp7788_
                                                       _rest7811_
                                                       (foldl1 cons
                                                               _r7791_
                                                               (_import-set-template7686_
                                                                _in7812_
                                                                _iphi7785_)))
                                                      (_lp7788_
                                                       _rest7811_
                                                       _r7791_))))
                                            (_lp7788_ _rest7811_ _r7791_)))))))
                        (if (##pair? _rest77927800_)
                            (let ((_hd77977821_ (##car _rest77927800_))
                                  (_tl77987823_ (##cdr _rest77927800_)))
                              (let* ((_in7826_ _hd77977821_)
                                     (_rest7828_ _tl77987823_))
                                (_K77967818_ _rest7828_ _in7826_)))
                            (_else77947808_))))))))
        (let* ((_g76887698_
                (lambda (_g76897695_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76897695_)))
               (_g76877779_
                (lambda (_g76897701_)
                  (if (gx#stx-pair? _g76897701_)
                      (let ((_e76917703_ (gx#stx-e _g76897701_)))
                        (let ((_hd76927706_ (##car _e76917703_))
                              (_tl76937708_ (##cdr _e76917703_)))
                          ((lambda (_L7711_)
                             (let ((_ht7722_ (make-table 'test: eq?)))
                               (let _lp7724_ ((_rest7726_ _L7711_)
                                              (_loads7727_ '()))
                                 (letrec ((_K7729_ (lambda (_ctx7772_
                                                            _rest7773_)
                                                     (let ((_id7775_
                                                            (##structure-ref
                                                             _ctx7772_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht7722_
                                                            _id7775_
                                                            '#f)
                                                           (_lp7724_
                                                            _rest7773_
                                                            _loads7727_)
                                                           (let ((_rt7777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id7775_)
                           '"__rt")))
                     (begin
                       (table-set! _ht7722_ _id7775_ _rt7777_)
                       (_lp7724_ _rest7773_ (cons _rt7777_ _loads7727_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest77307738_ _rest7726_)
                                          (_else77327750_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g77457747_)
                                                          (list 'load-module
                                                                _g77457747_))
                                                        (reverse _loads7727_)))))
                                          (_K77347760_
                                           (lambda (_rest7753_ _in7754_)
                                             (if (##structure-instance-of?
                                                  _in7754_
                                                  'gx#module-context::t)
                                                 (_K7729_ _in7754_ _rest7753_)
                                                 (if (##structure-direct-instance-of?
                                                      _in7754_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in7754_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K7729_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in7754_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest7753_)
                 (_lp7724_ _rest7753_ _loads7727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in7754_
                                                          'gx#import-set::t)
                                                         (let ((_phi7756_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in7754_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi7756_)
                       (_K7729_ (##direct-structure-ref
                                 _in7754_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest7753_)
                       (if (fxpositive? _phi7756_)
                           (let ((_deps7758_
                                  (_import-set-template7686_ _in7754_ '0)))
                             (_lp7724_
                              (foldl1 cons _rest7753_ _deps7758_)
                              _loads7727_))
                           (_lp7724_ _rest7753_ _loads7727_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx7684_
                  _in7754_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest77307738_)
                                         (let ((_hd77357763_
                                                (##car _rest77307738_))
                                               (_tl77367765_
                                                (##cdr _rest77307738_)))
                                           (let* ((_in7768_ _hd77357763_)
                                                  (_rest7770_ _tl77367765_))
                                             (_K77347760_
                                              _rest7770_
                                              _in7768_)))
                                         (_else77327750_)))))))
                           _tl76937708_)))
                      (_g76887698_ _g76897701_)))))
          (_g76877779_ _stx7684_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx7504_)
      (letrec ((_add-lift!7506_
                (lambda (_expr7682_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr7682_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple7507_
                (lambda (_stxq7677_)
                  (let ((_gid7679_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid7680_
                         (gxc#generate-runtime-identifier _stxq7677_)))
                    (begin
                      (_add-lift!7506_
                       (cons 'define
                             (cons _gid7679_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid7680_
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
                       _stxq7677_
                       _gid7679_)
                      _gid7679_))))
               (_generate-serialized7508_
                (lambda (_stxq7667_ _marks7668_)
                  (let* ((_mark-refs7670_
                          (map _generate-mark7509_ _marks7668_))
                         (_gid7672_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid7674_
                          (gxc#generate-runtime-identifier _stxq7667_)))
                    (begin
                      (_add-lift!7506_
                       (cons 'define
                             (cons _gid7672_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid7674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs7670_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7667_
                       _gid7672_)
                      _gid7672_))))
               (_generate-mark7509_
                (lambda (_mark7653_)
                  (let ((_$e7655_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark7653_
                          '#f)))
                    (if _$e7655_
                        (values _$e7655_)
                        (let* ((_gid7658_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr7660_ (_serialize-mark7510_ _mark7653_))
                               (_ctx7662_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark7653_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref7664_
                                (if (eq? _ctx7662_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref7511_
                                                             _ctx7662_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark7653_
                             _gid7658_)
                            (_add-lift!7506_
                             (cons 'define
                                   (cons _gid7658_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr7660_ '()))
                   (cons _ctx-ref7664_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid7658_))))))
               (_serialize-mark7510_
                (lambda (_mark7600_)
                  (letrec ((_quote-e7602_
                            (lambda (_sym7651_)
                              (if (interned-symbol? _sym7651_)
                                  _sym7651_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym7651_)))))
                    (let* ((_mark76037612_ _mark7600_)
                           (_E76057616_
                            (lambda ()
                              (error '"No clause matching" _mark76037612_)))
                           (_K76067628_
                            (lambda (_trace7619_
                                     _phi7620_
                                     _ctx7621_
                                     _subst7622_)
                              (let ((_subs7624_
                                     (if _subst7622_
                                         (table->list _subst7622_)
                                         '())))
                                (cons _phi7620_
                                      (map (lambda (_pair7626_)
                                             (cons (_quote-e7602_
                                                    (car _pair7626_))
                                                   (_quote-e7602_
                                                    (cdr _pair7626_))))
                                           _subs7624_))))))
                      (if (##structure-instance-of?
                           _mark76037612_
                           'gx#expander-mark::t)
                          (let* ((_e76077631_ (##vector-ref _mark76037612_ '1))
                                 (_subst7634_ _e76077631_)
                                 (_e76087636_ (##vector-ref _mark76037612_ '2))
                                 (_ctx7639_ _e76087636_)
                                 (_e76097641_ (##vector-ref _mark76037612_ '3))
                                 (_phi7644_ _e76097641_)
                                 (_e76107646_ (##vector-ref _mark76037612_ '4))
                                 (_trace7649_ _e76107646_))
                            (_K76067628_
                             _trace7649_
                             _phi7644_
                             _ctx7639_
                             _subst7634_))
                          (_E76057616_))))))
               (_context-ref7511_
                (lambda (_ctx7587_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx7587_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref7589_
                             (_context-ref-nested7513_ _ctx7587_))
                            (_ctx-origin7590_
                             (_context-ref-origin7512_ _ctx7587_))
                            (_origin7591_
                             (_context-ref-origin7512_
                              (gx#current-expander-context))))
                        (if (eq? _origin7591_ _ctx-origin7590_)
                            (let ((_ref7593_
                                   (_context-ref-nested7513_
                                    (gx#current-expander-context))))
                              (let _lp7595_ ((_ref7597_ (cdr _ref7593_))
                                             (_ctx-ref7598_
                                              (cdr _ctx-ref7589_)))
                                (if (if (pair? _ref7597_)
                                        (eq? (car _ref7597_)
                                             (car _ctx-ref7598_))
                                        '#f)
                                    (_lp7595_
                                     (cdr _ref7597_)
                                     (cdr _ctx-ref7598_))
                                    (cons '#f _ctx-ref7598_))))
                            _ctx-ref7589_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx7587_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin7512_
                (lambda (_ctx7579_)
                  (let _lp7581_ ((_ctx7583_ _ctx7579_))
                    (let ((_super7585_
                           (##structure-ref
                            _ctx7583_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super7585_
                           'gx#module-context::t)
                          (_lp7581_ _super7585_)
                          _ctx7583_)))))
               (_context-ref-nested7513_
                (lambda (_ctx7570_)
                  (let _lp7572_ ((_ctx7574_ _ctx7570_) (_r7575_ '()))
                    (let ((_super7577_
                           (##structure-ref
                            _ctx7574_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super7577_
                           'gx#module-context::t)
                          (_lp7572_
                           _super7577_
                           (cons (car (##structure-ref
                                       _ctx7574_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r7575_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx7574_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r7575_)))))))
        (let* ((_g75157528_
                (lambda (_g75167525_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75167525_)))
               (_g75147567_
                (lambda (_g75167531_)
                  (if (gx#stx-pair? _g75167531_)
                      (let ((_e75187533_ (gx#stx-e _g75167531_)))
                        (let ((_hd75197536_ (##car _e75187533_))
                              (_tl75207538_ (##cdr _e75187533_)))
                          (if (gx#stx-pair? _tl75207538_)
                              (let ((_e75217541_ (gx#stx-e _tl75207538_)))
                                (let ((_hd75227544_ (##car _e75217541_))
                                      (_tl75237546_ (##cdr _e75217541_)))
                                  (if (gx#stx-null? _tl75237546_)
                                      ((lambda (_L7549_)
                                         (if (gx#identifier? _L7549_)
                                             (let ((_$e7562_
                                                    (table-ref
                                                     (gxc#current-compile-identifiers)
                                                     _L7549_
                                                     '#f)))
                                               (if _$e7562_
                                                   (values _$e7562_)
                                                   (let ((_marks7565_
                                                          (##direct-structure-ref
                                                           _L7549_
                                                           '4
                                                           gx#syntax-quote::t
                                                           '#f)))
                                                     (if (null? _marks7565_)
                                                         (_generate-simple7507_
                                                          _L7549_)
                                                         (_generate-serialized7508_
                                                          _L7549_
                                                          _marks7565_)))))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L7549_)))
                                       _hd75227544_)
                                      (_g75157528_ _g75167531_))))
                              (_g75157528_ _g75167531_))))
                      (_g75157528_ _g75167531_)))))
          (_g75147567_ _stx7504_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx7437_)
      (let* ((_g74397456_
              (lambda (_g74407453_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g74407453_)))
             (_g74387501_
              (lambda (_g74407459_)
                (if (gx#stx-pair? _g74407459_)
                    (let ((_e74437461_ (gx#stx-e _g74407459_)))
                      (let ((_hd74447464_ (##car _e74437461_))
                            (_tl74457466_ (##cdr _e74437461_)))
                        (if (gx#stx-pair? _tl74457466_)
                            (let ((_e74467469_ (gx#stx-e _tl74457466_)))
                              (let ((_hd74477472_ (##car _e74467469_))
                                    (_tl74487474_ (##cdr _e74467469_)))
                                (if (gx#stx-pair? _tl74487474_)
                                    (let ((_e74497477_
                                           (gx#stx-e _tl74487474_)))
                                      (let ((_hd74507480_ (##car _e74497477_))
                                            (_tl74517482_ (##cdr _e74497477_)))
                                        (if (gx#stx-null? _tl74517482_)
                                            ((lambda (_L7485_ _L7486_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L7486_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7485_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd74507480_
                                             _hd74477472_)
                                            (_g74397456_ _g74407459_))))
                                    (_g74397456_ _g74407459_))))
                            (_g74397456_ _g74407459_))))
                    (_g74397456_ _g74407459_)))))
        (_g74387501_ _stx7437_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx7386_ _state7387_)
      (let* ((_g73897399_
              (lambda (_g73907396_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g73907396_)))
             (_g73887434_
              (lambda (_g73907402_)
                (if (gx#stx-pair? _g73907402_)
                    (let ((_e73927404_ (gx#stx-e _g73907402_)))
                      (let ((_hd73937407_ (##car _e73927404_))
                            (_tl73947409_ (##cdr _e73927404_)))
                        ((lambda (_L7412_)
                           (let* ((_c-body7426_
                                   (map (lambda (_g74217423_)
                                          (gxc#compile-e
                                           _g74217423_
                                           _state7387_))
                                        _L7412_))
                                  (_c-body7431_
                                   (filter (lambda (_$obj7428_)
                                             (not (eq? _$obj7428_ '#!void)))
                                           _c-body7426_)))
                             (cons '%#begin _c-body7431_)))
                         _tl73947409_)))
                    (_g73897399_ _g73907402_)))))
        (_g73887434_ _stx7386_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx7294_ _state7295_)
      (let* ((_g72977307_
              (lambda (_g72987304_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72987304_)))
             (_g72967383_
              (lambda (_g72987310_)
                (if (gx#stx-pair? _g72987310_)
                    (let ((_e73007312_ (gx#stx-e _g72987310_)))
                      (let ((_hd73017315_ (##car _e73007312_))
                            (_tl73027317_ (##cdr _e73007312_)))
                        ((lambda (_L7320_)
                           (let* ((_phi7330_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block7332_
                                   (gxc#meta-state-begin-phi!
                                    _state7295_
                                    _phi7330_))
                                  (_compiled7335_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L7320_)
                                       _state7295_))
                                    gx#current-expander-phi
                                    _phi7330_)))
                             (let* ((_g73387348_
                                     (lambda (_g73397345_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g73397345_)))
                                    (_g73377380_
                                     (lambda (_g73397351_)
                                       (if (gx#stx-pair? _g73397351_)
                                           (let ((_e73417353_
                                                  (gx#stx-e _g73397351_)))
                                             (let ((_hd73427356_
                                                    (##car _e73417353_))
                                                   (_tl73437358_
                                                    (##cdr _e73417353_)))
                                               (if (gx#identifier?
                                                    _hd73427356_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd73427356_)
                                                       ((lambda (_L7361_)
                                                          (let ((_c-body7378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj7375_)
                                   (not (eq? _$obj7375_ '#!void)))
                                 _L7361_)))
                    (if _block7332_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block7332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body7378_))
                        (if (null? _c-body7378_)
                            '#!void
                            (cons '%#begin-syntax _c-body7378_)))))
                _tl73437358_)
               (_g73387348_ _g73397351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73387348_ _g73397351_))))
                                           (_g73387348_ _g73397351_)))))
                               (_g73377380_ _compiled7335_))))
                         _tl73027317_)))
                    (_g72977307_ _g72987310_)))))
        (_g72967383_ _stx7294_))))
  (define gxc#generate-meta-module%
    (lambda (_stx7225_ _state7226_)
      (begin
        (gxc#meta-state-end-phi! _state7226_)
        (let* ((_g72287242_
                (lambda (_g72297239_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g72297239_)))
               (_g72277291_
                (lambda (_g72297245_)
                  (if (gx#stx-pair? _g72297245_)
                      (let ((_e72327247_ (gx#stx-e _g72297245_)))
                        (let ((_hd72337250_ (##car _e72327247_))
                              (_tl72347252_ (##cdr _e72327247_)))
                          (if (gx#stx-pair? _tl72347252_)
                              (let ((_e72357255_ (gx#stx-e _tl72347252_)))
                                (let ((_hd72367258_ (##car _e72357255_))
                                      (_tl72377260_ (##cdr _e72357255_)))
                                  ((lambda (_L7263_ _L7264_)
                                     (let ((_key7277_
                                            (gx#core-identifier-key _L7264_)))
                                       (begin
                                         (if (interned-symbol? _key7277_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx7225_
                                              _L7264_
                                              _key7277_))
                                         (let* ((_ctx7279_
                                                 (gx#syntax-local-e__0
                                                  _L7264_))
                                                (_code7282_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx7279_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state7226_))
                                                  gx#current-expander-context
                                                  _ctx7279_))
                                                (_rt7284_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx7279_
                                                  '#f))
                                                (_loader7286_
                                                 (if _rt7284_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt7284_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid7288_
                                                 (gx#stx-e _L7264_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state7226_)
                                             (cons '%#module
                                                   (cons _modid7288_
                                                         (cons _code7282_
                                                               _loader7286_))))))))
                                   _tl72377260_
                                   _hd72367258_)))
                              (_g72287242_ _g72297245_))))
                      (_g72287242_ _g72297245_)))))
          (_g72277291_ _stx7225_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx7215_ _context-chain7216_)
      (let _lp7218_ ((_ctx7220_ _ctx7215_) (_path7221_ '()))
        (let ((_super7223_
               (##structure-ref _ctx7220_ '3 gx#phi-context::t '#f)))
          (if (memq _super7223_ _context-chain7216_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx7220_
                                '7
                                gx#module-context::t
                                '#f))
                          _path7221_))
              (if (##structure-instance-of? _super7223_ 'gx#module-context::t)
                  (_lp7218_
                   _super7223_
                   (cons (car (##structure-ref
                               _ctx7220_
                               '7
                               gx#module-context::t
                               '#f))
                         _path7221_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx7220_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path7221_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp7210_ ((_ctx7212_ (gx#current-expander-context)) (_r7213_ '()))
        (if (##structure-instance-of? _ctx7212_ 'gx#module-context::t)
            (_lp7210_
             (##structure-ref _ctx7212_ '3 gx#phi-context::t '#f)
             (cons _ctx7212_ _r7213_))
            _r7213_))))
  (define gxc#generate-meta-import%
    (lambda (_stx6979_ _state6980_)
      (letrec* ((_context-chain6982_ (gxc#current-context-chain))
                (_make-import-spec6983_
                 (lambda (_in7146_)
                   (let* ((_in71477159_ _in7146_)
                          (_E71497163_
                           (lambda ()
                             (error '"No clause matching" _in71477159_)))
                          (_K71507173_
                           (lambda (_phi7166_
                                    _name7167_
                                    _src-name7168_
                                    _src-phi7169_
                                    _src-key7170_
                                    _src-ctx7171_)
                             (cons _phi7166_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name7167_)
                                         (cons _src-phi7169_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name7168_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in71477159_
                          'gx#module-import::t)
                         (let ((_e71517176_ (##vector-ref _in71477159_ '1)))
                           (if (##structure-direct-instance-of?
                                _e71517176_
                                'gx#module-export::t)
                               (let* ((_e71547179_
                                       (##vector-ref _e71517176_ '1))
                                      (_src-ctx7182_ _e71547179_)
                                      (_e71557184_
                                       (##vector-ref _e71517176_ '2))
                                      (_src-key7187_ _e71557184_)
                                      (_e71567189_
                                       (##vector-ref _e71517176_ '3))
                                      (_src-phi7192_ _e71567189_)
                                      (_e71577194_
                                       (##vector-ref _e71517176_ '4))
                                      (_src-name7197_ _e71577194_)
                                      (_e71527199_
                                       (##vector-ref _in71477159_ '2))
                                      (_name7202_ _e71527199_)
                                      (_e71537204_
                                       (##vector-ref _in71477159_ '3))
                                      (_phi7207_ _e71537204_))
                                 (_K71507173_
                                  _phi7207_
                                  _name7202_
                                  _src-name7197_
                                  _src-phi7192_
                                  _src-key7187_
                                  _src-ctx7182_))
                               (_E71497163_)))
                         (_E71497163_)))))
                (_make-import-path6984_
                 (lambda (_ctx7144_)
                   (gxc#generate-meta-import-path
                    _ctx7144_
                    _context-chain6982_)))
                (_make-import-spec-in6985_
                 (lambda (_ctx7141_ _in7142_)
                   (cons 'spec:
                         (cons (_make-import-path6984_ _ctx7141_)
                               (reverse _in7142_))))))
        (begin
          (gxc#meta-state-end-phi! _state6980_)
          (let* ((_g69876997_
                  (lambda (_g69886994_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g69886994_)))
                 (_g69867138_
                  (lambda (_g69887000_)
                    (if (gx#stx-pair? _g69887000_)
                        (let ((_e69907002_ (gx#stx-e _g69887000_)))
                          (let ((_hd69917005_ (##car _e69907002_))
                                (_tl69927007_ (##cdr _e69907002_)))
                            ((lambda (_L7010_)
                               (let _lp7021_ ((_rest7023_ _L7010_)
                                              (_current-src7024_ '#f)
                                              (_current-in7025_ '())
                                              (_r7026_ '()))
                                 (let* ((_rest70277035_ _rest7023_)
                                        (_else70297045_
                                         (lambda ()
                                           (let ((_r7043_ (if _current-src7024_
                                                              (cons (_make-import-spec-in6985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src7024_
                             _current-in7025_)
                            _r7026_)
                      _r7026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r7043_)))))
                                        (_K70317126_
                                         (lambda (_rest7048_ _in7049_)
                                           (if (##structure-direct-instance-of?
                                                _in7049_
                                                'gx#module-import::t)
                                               (let* ((_in70507057_ _in7049_)
                                                      (_E70527061_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in70507057_)))
                                                      (_K70537066_
                                                       (lambda (_src-ctx7064_)
                                                         (if (eq? _current-src7024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx7064_)
                     (_lp7021_
                      _rest7048_
                      _current-src7024_
                      (cons (_make-import-spec6983_ _in7049_) _current-in7025_)
                      _r7026_)
                     (if _current-src7024_
                         (_lp7021_
                          _rest7048_
                          _src-ctx7064_
                          (cons (_make-import-spec6983_ _in7049_) '())
                          (cons (_make-import-spec-in6985_
                                 _current-src7024_
                                 _current-in7025_)
                                _r7026_))
                         (_lp7021_
                          _rest7048_
                          _src-ctx7064_
                          (cons (_make-import-spec6983_ _in7049_) '())
                          _r7026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in70507057_
                                                      'gx#module-import::t)
                                                     (let ((_e70547069_
                                                            (##vector-ref
                                                             _in70507057_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e70547069_
                                                            'gx#module-export::t)
                                                           (let* ((_e70557072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e70547069_ '1))
                          (_src-ctx7075_ _e70557072_))
                     (_K70537066_ _src-ctx7075_))
                   (_E70527061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E70527061_)))
                                               (if (##structure-direct-instance-of?
                                                    _in7049_
                                                    'gx#import-set::t)
                                                   (let* ((_phi7077_
                                                           (##direct-structure-ref
                                                            _in7049_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7079_
                                                           (##direct-structure-ref
                                                            _in7049_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7119_
                                                           (let* ((_g70807089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path6984_ _src7079_))
                          (_E70837093_
                           (lambda ()
                             (error '"No clause matching" _g70807089_))))
                     (let ((_K70857109_ (lambda (_path7107_) _path7107_))
                           (_K70847099_
                            (lambda (_path7097_) (cons 'in: _path7097_))))
                       (if (##pair? _g70807089_)
                           (let ((_tl70877114_ (##cdr _g70807089_))
                                 (_hd70867112_ (##car _g70807089_)))
                             (if (##null? _tl70877114_)
                                 (let ((_path7117_ _hd70867112_))
                                   (_K70857109_ _path7117_))
                                 (let ((_path7102_ _g70807089_))
                                   (_K70847099_ _path7102_))))
                           (let ((_path7102_ _g70807089_))
                             (_K70847099_ _path7102_))))))
                  (_r7121_ (if _current-src7024_
                               (cons (_make-import-spec-in6985_
                                      _current-src7024_
                                      _current-in7025_)
                                     _r7026_)
                               _r7026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp7021_
                                                      _rest7048_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi7077_)
                                                                _src-in7119_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi7077_ (cons _src-in7119_ '()))))
                    _r7121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in7049_
                                                        'gx#module-context::t)
                                                       (let ((_r7124_ (if _current-src7024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in6985_
                                         _current-src7024_
                                         _current-in7025_)
                                        _r7026_)
                                  _r7026_)))
                 (_lp7021_
                  _rest7048_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path6984_ _in7049_))
                        _r7124_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest70277035_)
                                       (let ((_hd70327129_
                                              (##car _rest70277035_))
                                             (_tl70337131_
                                              (##cdr _rest70277035_)))
                                         (let* ((_in7134_ _hd70327129_)
                                                (_rest7136_ _tl70337131_))
                                           (_K70317126_ _rest7136_ _in7134_)))
                                       (_else70297045_)))))
                             _tl69927007_)))
                        (_g69876997_ _g69887000_)))))
            (_g69867138_ _stx6979_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx6789_ _state6790_)
      (letrec* ((_context-chain6792_ (gxc#current-context-chain))
                (_make-import-path6793_
                 (lambda (_ctx6977_)
                   (gxc#generate-meta-import-path
                    _ctx6977_
                    _context-chain6792_))))
        (let* ((_g67956805_
                (lambda (_g67966802_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g67966802_)))
               (_g67946974_
                (lambda (_g67966808_)
                  (if (gx#stx-pair? _g67966808_)
                      (let ((_e67986810_ (gx#stx-e _g67966808_)))
                        (let ((_hd67996813_ (##car _e67986810_))
                              (_tl68006815_ (##cdr _e67986810_)))
                          ((lambda (_L6818_)
                             (let _lp6829_ ((_rest6831_ _L6818_) (_r6832_ '()))
                               (let* ((_rest68336841_ _rest6831_)
                                      (_else68356849_
                                       (lambda ()
                                         (cons '%#export (reverse _r6832_))))
                                      (_K68376962_
                                       (lambda (_rest6852_ _out6853_)
                                         (let* ((_out68546867_ _out6853_)
                                                (_E68576871_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out68546867_))))
                                           (let ((_K68616941_
                                                  (lambda (_name6937_
                                                           _phi6938_
                                                           _key6939_)
                                                    (_lp6829_
                                                     _rest6852_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi6938_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key6939_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name6937_)
                                           '()))))
                   _r6832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K68586921_
                                                  (lambda (_phi6875_ _src6876_)
                                                    (let* ((_out6916_
                                                            (if _src6876_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g68776886_
                                            (_make-import-path6793_ _src6876_))
                                           (_E68806890_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g68776886_))))
                                      (let ((_K68826906_
                                             (lambda (_path6904_) _path6904_))
                                            (_K68816896_
                                             (lambda (_path6894_)
                                               (cons 'in: _path6894_))))
                                        (if (##pair? _g68776886_)
                                            (let ((_tl68846911_
                                                   (##cdr _g68776886_))
                                                  (_hd68836909_
                                                   (##car _g68776886_)))
                                              (if (##null? _tl68846911_)
                                                  (let ((_path6914_
                                                         _hd68836909_))
                                                    (_K68826906_ _path6914_))
                                                  (let ((_path6899_
                                                         _g68776886_))
                                                    (_K68816896_ _path6899_))))
                                            (let ((_path6899_ _g68776886_))
                                              (_K68816896_ _path6899_)))))
                                    '()))
                        '#t))
                   (_out6918_
                    (if (fxzero? _phi6875_)
                        _out6916_
                        (cons 'phi: (cons _phi6875_ (cons _out6916_ '()))))))
              (_lp6829_ _rest6852_ (cons _out6918_ _r6832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match68566934_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out68546867_
                                                           'gx#export-set::t)
                                                          (let* ((_e68596924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out68546867_ '1))
                         (_e68606929_ (##vector-ref _out68546867_ '2)))
                    (let ((_src6927_ _e68596924_) (_phi6932_ _e68606929_))
                      (_K68586921_ _phi6932_ _src6927_)))
                  (_E68576871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out68546867_
                                                    'gx#module-export::t)
                                                   (let* ((_e68626944_
                                                           (##vector-ref
                                                            _out68546867_
                                                            '1))
                                                          (_e68636947_
                                                           (##vector-ref
                                                            _out68546867_
                                                            '2))
                                                          (_e68646952_
                                                           (##vector-ref
                                                            _out68546867_
                                                            '3))
                                                          (_e68656957_
                                                           (##vector-ref
                                                            _out68546867_
                                                            '4)))
                                                     (let ((_key6950_
                                                            _e68636947_)
                                                           (_phi6955_
                                                            _e68646952_)
                                                           (_name6960_
                                                            _e68656957_))
                                                       (_K68616941_
                                                        _name6960_
                                                        _phi6955_
                                                        _key6950_)))
                                                   (_try-match68566934_))))))))
                                 (if (##pair? _rest68336841_)
                                     (let ((_hd68386965_
                                            (##car _rest68336841_))
                                           (_tl68396967_
                                            (##cdr _rest68336841_)))
                                       (let* ((_out6970_ _hd68386965_)
                                              (_rest6972_ _tl68396967_))
                                         (_K68376962_ _rest6972_ _out6970_)))
                                     (_else68356849_)))))
                           _tl68006815_)))
                      (_g67956805_ _g67966808_)))))
          (_g67946974_ _stx6789_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx6750_ _state6751_)
      (begin
        (gxc#meta-state-end-phi! _state6751_)
        (let* ((_g67536763_
                (lambda (_g67546760_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g67546760_)))
               (_g67526786_
                (lambda (_g67546766_)
                  (if (gx#stx-pair? _g67546766_)
                      (let ((_e67566768_ (gx#stx-e _g67546766_)))
                        (let ((_hd67576771_ (##car _e67566768_))
                              (_tl67586773_ (##cdr _e67566768_)))
                          ((lambda (_L6776_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L6776_)))
                           _tl67586773_)))
                      (_g67536763_ _g67546766_)))))
          (_g67526786_ _stx6750_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx6621_ _state6622_)
      (letrec ((_generate16624_
                (lambda (_id6745_ _eid6746_)
                  (let ((_eid6748_ (gx#stx-e _eid6746_)))
                    (begin
                      (if (interned-symbol? _eid6748_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx6621_
                           _eid6748_))
                      (cons (gxc#generate-runtime-identifier _id6745_)
                            (cons _eid6748_ '())))))))
        (let* ((_g66266654_
                (lambda (_g66276651_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g66276651_)))
               (_g66256742_
                (lambda (_g66276657_)
                  (if (gx#stx-pair? _g66276657_)
                      (let ((_e66306659_ (gx#stx-e _g66276657_)))
                        (let ((_hd66316662_ (##car _e66306659_))
                              (_tl66326664_ (##cdr _e66306659_)))
                          (if (gx#stx-pair/null? _tl66326664_)
                              (let ((_g15644_
                                     (gx#syntax-split-splice _tl66326664_ '0)))
                                (begin
                                  (let ((_g15645_
                                         (if (##values? _g15644_)
                                             (##vector-length _g15644_)
                                             1)))
                                    (if (not (##fx= _g15645_ 2))
                                        (error "Context expects 2 values"
                                               _g15645_)))
                                  (let ((_target66336667_
                                         (##vector-ref _g15644_ 0))
                                        (_tl66356669_
                                         (##vector-ref _g15644_ 1)))
                                    (if (gx#stx-null? _tl66356669_)
                                        (letrec ((_loop66366672_
                                                  (lambda (_hd66346675_
                                                           _eid66406677_
                                                           _id66416679_)
                                                    (if (gx#stx-pair?
                                                         _hd66346675_)
                                                        (let ((_e66376682_
                                                               (gx#stx-e
                                                                _hd66346675_)))
                                                          (let ((_lp-hd66386685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e66376682_))
                        (_lp-tl66396687_ (##cdr _e66376682_)))
                    (if (gx#stx-pair? _lp-hd66386685_)
                        (let ((_e66446690_ (gx#stx-e _lp-hd66386685_)))
                          (let ((_hd66456693_ (##car _e66446690_))
                                (_tl66466695_ (##cdr _e66446690_)))
                            (if (gx#stx-pair? _tl66466695_)
                                (let ((_e66476698_ (gx#stx-e _tl66466695_)))
                                  (let ((_hd66486701_ (##car _e66476698_))
                                        (_tl66496703_ (##cdr _e66476698_)))
                                    (if (gx#stx-null? _tl66496703_)
                                        (_loop66366672_
                                         _lp-tl66396687_
                                         (cons _hd66486701_ _eid66406677_)
                                         (cons _hd66456693_ _id66416679_))
                                        (_g66266654_ _g66276657_))))
                                (_g66266654_ _g66276657_))))
                        (_g66266654_ _g66276657_))))
                (let ((_eid66426706_ (reverse _eid66406677_))
                      (_id66436708_ (reverse _id66416679_)))
                  ((lambda (_L6711_ _L6712_)
                     (cons '%#extern
                           (map _generate16624_
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g67276730_ _g67286732_)
                                            (cons _g67276730_ _g67286732_))
                                          '()
                                          _L6712_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g67346737_ _g67356739_)
                                            (cons _g67346737_ _g67356739_))
                                          '()
                                          _L6711_)))))
                   _eid66426706_
                   _id66436708_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop66366672_
                                           _target66336667_
                                           '()
                                           '()))
                                        (_g66266654_ _g66276657_)))))
                              (_g66266654_ _g66276657_))))
                      (_g66266654_ _g66276657_)))))
          (_g66256742_ _stx6621_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx6411_ _state6412_)
      (letrec ((_generate16414_
                (lambda (_id6616_)
                  (let ((_eid6618_ (gxc#generate-runtime-binding-id _id6616_))
                        (_ident6619_
                         (gxc#generate-runtime-identifier _id6616_)))
                    (cons '%#define-runtime
                          (cons _ident6619_ (cons _eid6618_ '()))))))
               (_generate*6415_
                (lambda (_all6584_)
                  (let* ((_all65856593_ _all6584_)
                         (_else65876601_ (lambda () (cons '%#begin _all6584_)))
                         (_K65896606_ (lambda (_one6604_) _one6604_)))
                    (if (##pair? _all65856593_)
                        (let ((_hd65906609_ (##car _all65856593_))
                              (_tl65916611_ (##cdr _all65856593_)))
                          (let ((_one6614_ _hd65906609_))
                            (if (##null? _tl65916611_)
                                (_K65896606_ _one6614_)
                                (_else65876601_))))
                        (_else65876601_))))))
        (let* ((_g64176434_
                (lambda (_g64186431_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64186431_)))
               (_g64166581_
                (lambda (_g64186437_)
                  (if (gx#stx-pair? _g64186437_)
                      (let ((_e64216439_ (gx#stx-e _g64186437_)))
                        (let ((_hd64226442_ (##car _e64216439_))
                              (_tl64236444_ (##cdr _e64216439_)))
                          (if (gx#stx-pair? _tl64236444_)
                              (let ((_e64246447_ (gx#stx-e _tl64236444_)))
                                (let ((_hd64256450_ (##car _e64246447_))
                                      (_tl64266452_ (##cdr _e64246447_)))
                                  (if (gx#stx-pair? _tl64266452_)
                                      (let ((_e64276455_
                                             (gx#stx-e _tl64266452_)))
                                        (let ((_hd64286458_
                                               (##car _e64276455_))
                                              (_tl64296460_
                                               (##cdr _e64276455_)))
                                          (if (gx#stx-null? _tl64296460_)
                                              ((lambda (_L6463_ _L6464_)
                                                 (let _lp6480_ ((_rest6482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6464_)
                        (_r6483_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((___stx1555115552_
                                                           _rest6482_)
                                                          (_g64886505_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1555115552_))))
                                                     (let ((___kont1555315554_
                                                            (lambda (_L6568_)
                                                              (_lp6480_
                                                               _L6568_
                                                               _r6483_)))
                                                           (___kont1555515556_
                                                            (lambda (_L6541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6542_)
                      (_lp6480_
                       _L6541_
                       (cons (_generate16414_ _L6542_) _r6483_))))
                   (___kont1555715558_
                    (lambda (_L6517_)
                      (_generate*6415_
                       (foldl1 cons
                               (cons (_generate16414_ _L6517_) '())
                               _r6483_))))
                   (___kont1555915560_
                    (lambda () (_generate*6415_ (reverse _r6483_)))))
               (let ((_g64866528_
                      (lambda ()
                        (let ((_L6517_ ___stx1555115552_))
                          (if (gx#identifier? _L6517_)
                              (___kont1555715558_ _L6517_)
                              (___kont1555915560_))))))
                 (if (gx#stx-pair? ___stx1555115552_)
                     (let ((_e64916557_ (gx#stx-e ___stx1555115552_)))
                       (let ((_tl64936562_ (##cdr _e64916557_))
                             (_hd64926560_ (##car _e64916557_)))
                         (if (gx#stx-datum? _hd64926560_)
                             (let ((_e64946565_ (gx#stx-e _hd64926560_)))
                               (if (equal? _e64946565_ '#f)
                                   (___kont1555315554_ _tl64936562_)
                                   (___kont1555515556_
                                    _tl64936562_
                                    _hd64926560_)))
                             (___kont1555515556_ _tl64936562_ _hd64926560_))))
                     (_g64866528_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd64286458_
                                               _hd64256450_)
                                              (_g64176434_ _g64186437_))))
                                      (_g64176434_ _g64186437_))))
                              (_g64176434_ _g64186437_))))
                      (_g64176434_ _g64186437_)))))
          (_g64166581_ _stx6411_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx6308_ _state6309_)
      (let* ((_g63116328_
              (lambda (_g63126325_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63126325_)))
             (_g63106408_
              (lambda (_g63126331_)
                (if (gx#stx-pair? _g63126331_)
                    (let ((_e63156333_ (gx#stx-e _g63126331_)))
                      (let ((_hd63166336_ (##car _e63156333_))
                            (_tl63176338_ (##cdr _e63156333_)))
                        (if (gx#stx-pair? _tl63176338_)
                            (let ((_e63186341_ (gx#stx-e _tl63176338_)))
                              (let ((_hd63196344_ (##car _e63186341_))
                                    (_tl63206346_ (##cdr _e63186341_)))
                                (if (gx#stx-pair? _tl63206346_)
                                    (let ((_e63216349_
                                           (gx#stx-e _tl63206346_)))
                                      (let ((_hd63226352_ (##car _e63216349_))
                                            (_tl63236354_ (##cdr _e63216349_)))
                                        (if (gx#stx-null? _tl63236354_)
                                            ((lambda (_L6357_ _L6358_)
                                               (let* ((_eid6373_
                                                       (gxc#generate-runtime-binding-id
                                                        _L6358_))
                                                      (_phi6375_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block6377_
                                                       (gxc#meta-state-begin-phi!
                                                        _state6309_
                                                        _phi6375_)))
                                                 (begin
                                                   (let* ((_g63806387_
                                                           (lambda (_g63816384_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g63816384_)))
                                                          (_g63796405_
                                                           (lambda (_g63816390_)
                                                             ((lambda (_L6392_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state6309_
                           _phi6375_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L6392_ (cons _L6357_ '()))))))
                      _g63816390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g63796405_ _eid6373_))
                                                   (if _block6377_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block6377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L6358_)
                                             (cons _eid6373_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L6358_)
                           (cons _eid6373_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63226352_
                                             _hd63196344_)
                                            (_g63116328_ _g63126331_))))
                                    (_g63116328_ _g63126331_))))
                            (_g63116328_ _g63126331_))))
                    (_g63116328_ _g63126331_)))))
        (_g63106408_ _stx6308_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx6240_ _state6241_)
      (let* ((_g62436260_
              (lambda (_g62446257_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62446257_)))
             (_g62426305_
              (lambda (_g62446263_)
                (if (gx#stx-pair? _g62446263_)
                    (let ((_e62476265_ (gx#stx-e _g62446263_)))
                      (let ((_hd62486268_ (##car _e62476265_))
                            (_tl62496270_ (##cdr _e62476265_)))
                        (if (gx#stx-pair? _tl62496270_)
                            (let ((_e62506273_ (gx#stx-e _tl62496270_)))
                              (let ((_hd62516276_ (##car _e62506273_))
                                    (_tl62526278_ (##cdr _e62506273_)))
                                (if (gx#stx-pair? _tl62526278_)
                                    (let ((_e62536281_
                                           (gx#stx-e _tl62526278_)))
                                      (let ((_hd62546284_ (##car _e62536281_))
                                            (_tl62556286_ (##cdr _e62536281_)))
                                        (if (gx#stx-null? _tl62556286_)
                                            ((lambda (_L6289_ _L6290_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L6290_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6289_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62546284_
                                             _hd62516276_)
                                            (_g62436260_ _g62446263_))))
                                    (_g62436260_ _g62446263_))))
                            (_g62436260_ _g62446263_))))
                    (_g62436260_ _g62446263_)))))
        (_g62426305_ _stx6240_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx6237_ _state6238_)
      (begin
        (gxc#meta-state-add-phi!
         _state6238_
         (gx#current-expander-phi)
         _stx6237_)
        (gxc#generate-meta-define-values% _stx6237_ _state6238_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx6234_ _state6235_)
      (begin
        (gxc#meta-state-add-phi!
         _state6235_
         (gx#current-expander-phi)
         _stx6234_)
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
    (lambda _$args6231_
      (apply make-struct-instance gxc#meta-state::t _$args6231_)))
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
    (lambda (_self6228_ _ctx6229_)
      (struct-instance-init!
       _self6228_
       (gxc#module-id->path-string
        (##structure-ref _ctx6229_ '1 gx#expander-context::t '#f))
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
    (lambda _$args6103_
      (apply make-struct-instance gxc#meta-state-block::t _$args6103_)))
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
    (lambda (_state6062_ _phi6063_)
      (let* ((_state60646072_ _state6062_)
             (_E60666076_
              (lambda () (error '"No clause matching" _state60646072_)))
             (_K60676085_
              (lambda (_open6079_ _n6080_ _src6081_)
                (if (table-ref _open6079_ _phi6063_ '#f)
                    '#f
                    (let ((_block-ref6083_
                           (string-append
                            _src6081_
                            '"__"
                            (number->string _n6080_))))
                      (begin
                        (##structure-set!
                         _state6062_
                         (fx+ _n6080_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open6079_
                         _phi6063_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi6063_
                          _n6080_
                          '()))
                        _block-ref6083_))))))
        (if (##structure-instance-of? _state60646072_ 'gxc#meta-state::t)
            (let* ((_e60686088_ (##vector-ref _state60646072_ '1))
                   (_src6091_ _e60686088_)
                   (_e60696093_ (##vector-ref _state60646072_ '2))
                   (_n6096_ _e60696093_)
                   (_e60706098_ (##vector-ref _state60646072_ '3))
                   (_open6101_ _e60706098_))
              (_K60676085_ _open6101_ _n6096_ _src6091_))
            (_E60666076_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state6056_ _phi6057_ _stx6058_)
      (let ((_block6060_
             (table-ref
              (##structure-ref _state6056_ '3 gxc#meta-state::t '#f)
              _phi6057_
              '#f)))
        (##structure-set!
         _block6060_
         (cons _stx6058_
               (##structure-ref _block6060_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state6051_)
      (begin
        (##structure-set!
         _state6051_
         (hash-fold
          (lambda (_g15646_ _block6053_ _r6054_) (cons _block6053_ _r6054_))
          (##structure-ref _state6051_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state6051_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6051_
         (make-table 'test: eq?)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state6003_)
      (begin
        (gxc#meta-state-end-phi! _state6003_)
        (foldl1 (lambda (_block6005_ _r6006_)
                  (let* ((_block60076016_ _block6005_)
                         (_E60096020_
                          (lambda ()
                            (error '"No clause matching" _block60076016_)))
                         (_K60106028_
                          (lambda (_code6023_ _n6024_ _phi6025_ _ctx6026_)
                            (if (null? _code6023_)
                                _r6006_
                                (cons (cons _ctx6026_
                                            (cons _phi6025_
                                                  (cons _n6024_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code6023_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r6006_)))))
                    (if (##structure-instance-of?
                         _block60076016_
                         'gxc#meta-state-block::t)
                        (let* ((_e60116031_ (##vector-ref _block60076016_ '1))
                               (_ctx6034_ _e60116031_)
                               (_e60126036_ (##vector-ref _block60076016_ '2))
                               (_phi6039_ _e60126036_)
                               (_e60136041_ (##vector-ref _block60076016_ '3))
                               (_n6044_ _e60136041_)
                               (_e60146046_ (##vector-ref _block60076016_ '4))
                               (_code6049_ _e60146046_))
                          (_K60106028_ _code6049_ _n6044_ _phi6039_ _ctx6034_))
                        (_E60096020_))))
                '()
                (##structure-ref _state6003_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx5999_)
      (let ((_ht6001_ (make-table 'test: eq?)))
        (begin
          (gxc#apply-collect-expression-refs _stx5999_ _ht6001_)
          _ht6001_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx5942_ _ht5943_)
      (let* ((_g59455958_
              (lambda (_g59465955_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59465955_)))
             (_g59445996_
              (lambda (_g59465961_)
                (if (gx#stx-pair? _g59465961_)
                    (let ((_e59485963_ (gx#stx-e _g59465961_)))
                      (let ((_hd59495966_ (##car _e59485963_))
                            (_tl59505968_ (##cdr _e59485963_)))
                        (if (gx#stx-pair? _tl59505968_)
                            (let ((_e59515971_ (gx#stx-e _tl59505968_)))
                              (let ((_hd59525974_ (##car _e59515971_))
                                    (_tl59535976_ (##cdr _e59515971_)))
                                (if (gx#stx-null? _tl59535976_)
                                    ((lambda (_L5979_)
                                       (let* ((_bind5991_
                                               (gx#resolve-identifier__0
                                                _L5979_))
                                              (_eid5993_
                                               (if _bind5991_
                                                   (##structure-ref
                                                    _bind5991_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L5979_))))
                                         (table-set!
                                          _ht5943_
                                          _eid5993_
                                          _eid5993_)))
                                     _hd59525974_)
                                    (_g59455958_ _g59465961_))))
                            (_g59455958_ _g59465961_))))
                    (_g59455958_ _g59465961_)))))
        (_g59445996_ _stx5942_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx5869_ _ht5870_)
      (let* ((_g58725889_
              (lambda (_g58735886_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58735886_)))
             (_g58715939_
              (lambda (_g58735892_)
                (if (gx#stx-pair? _g58735892_)
                    (let ((_e58765894_ (gx#stx-e _g58735892_)))
                      (let ((_hd58775897_ (##car _e58765894_))
                            (_tl58785899_ (##cdr _e58765894_)))
                        (if (gx#stx-pair? _tl58785899_)
                            (let ((_e58795902_ (gx#stx-e _tl58785899_)))
                              (let ((_hd58805905_ (##car _e58795902_))
                                    (_tl58815907_ (##cdr _e58795902_)))
                                (if (gx#stx-pair? _tl58815907_)
                                    (let ((_e58825910_
                                           (gx#stx-e _tl58815907_)))
                                      (let ((_hd58835913_ (##car _e58825910_))
                                            (_tl58845915_ (##cdr _e58825910_)))
                                        (if (gx#stx-null? _tl58845915_)
                                            ((lambda (_L5918_ _L5919_)
                                               (let* ((_bind5934_
                                                       (gx#resolve-identifier__0
                                                        _L5919_))
                                                      (_eid5936_
                                                       (if _bind5934_
                                                           (##structure-ref
                                                            _bind5934_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L5919_))))
                                                 (begin
                                                   (table-set!
                                                    _ht5870_
                                                    _eid5936_
                                                    _eid5936_)
                                                   (gxc#compile-e
                                                    _L5918_
                                                    _ht5870_))))
                                             _hd58835913_
                                             _hd58805905_)
                                            (_g58725889_ _g58735892_))))
                                    (_g58725889_ _g58735892_))))
                            (_g58725889_ _g58735892_))))
                    (_g58725889_ _g58735892_)))))
        (_g58715939_ _stx5869_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx5831_)
      (let* ((_g58335843_
              (lambda (_g58345840_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58345840_)))
             (_g58325866_
              (lambda (_g58345846_)
                (if (gx#stx-pair? _g58345846_)
                    (let ((_e58365848_ (gx#stx-e _g58345846_)))
                      (let ((_hd58375851_ (##car _e58365848_))
                            (_tl58385853_ (##cdr _e58365848_)))
                        ((lambda (_L5856_) (ormap1 gxc#compile-e _L5856_))
                         _tl58385853_)))
                    (_g58335843_ _g58345846_)))))
        (_g58325866_ _stx5831_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx5793_)
      (let* ((_g57955805_
              (lambda (_g57965802_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57965802_)))
             (_g57945828_
              (lambda (_g57965808_)
                (if (gx#stx-pair? _g57965808_)
                    (let ((_e57985810_ (gx#stx-e _g57965808_)))
                      (let ((_hd57995813_ (##car _e57985810_))
                            (_tl58005815_ (##cdr _e57985810_)))
                        ((lambda (_L5818_) (gxc#compile-e (last _L5818_)))
                         _tl58005815_)))
                    (_g57955805_ _g57965808_)))))
        (_g57945828_ _stx5793_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx5726_)
      (let* ((_g57285745_
              (lambda (_g57295742_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57295742_)))
             (_g57275790_
              (lambda (_g57295748_)
                (if (gx#stx-pair? _g57295748_)
                    (let ((_e57325750_ (gx#stx-e _g57295748_)))
                      (let ((_hd57335753_ (##car _e57325750_))
                            (_tl57345755_ (##cdr _e57325750_)))
                        (if (gx#stx-pair? _tl57345755_)
                            (let ((_e57355758_ (gx#stx-e _tl57345755_)))
                              (let ((_hd57365761_ (##car _e57355758_))
                                    (_tl57375763_ (##cdr _e57355758_)))
                                (if (gx#stx-pair? _tl57375763_)
                                    (let ((_e57385766_
                                           (gx#stx-e _tl57375763_)))
                                      (let ((_hd57395769_ (##car _e57385766_))
                                            (_tl57405771_ (##cdr _e57385766_)))
                                        (if (gx#stx-null? _tl57405771_)
                                            ((lambda (_L5774_ _L5775_)
                                               (gxc#compile-e _L5774_))
                                             _hd57395769_
                                             _hd57365761_)
                                            (_g57285745_ _g57295748_))))
                                    (_g57285745_ _g57295748_))))
                            (_g57285745_ _g57295748_))))
                    (_g57285745_ _g57295748_)))))
        (_g57275790_ _stx5726_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx5659_)
      (let* ((_g56615678_
              (lambda (_g56625675_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56625675_)))
             (_g56605723_
              (lambda (_g56625681_)
                (if (gx#stx-pair? _g56625681_)
                    (let ((_e56655683_ (gx#stx-e _g56625681_)))
                      (let ((_hd56665686_ (##car _e56655683_))
                            (_tl56675688_ (##cdr _e56655683_)))
                        (if (gx#stx-pair? _tl56675688_)
                            (let ((_e56685691_ (gx#stx-e _tl56675688_)))
                              (let ((_hd56695694_ (##car _e56685691_))
                                    (_tl56705696_ (##cdr _e56685691_)))
                                (if (gx#stx-pair? _tl56705696_)
                                    (let ((_e56715699_
                                           (gx#stx-e _tl56705696_)))
                                      (let ((_hd56725702_ (##car _e56715699_))
                                            (_tl56735704_ (##cdr _e56715699_)))
                                        (if (gx#stx-null? _tl56735704_)
                                            ((lambda (_L5707_ _L5708_)
                                               (gxc#compile-e _L5707_))
                                             _hd56725702_
                                             _hd56695694_)
                                            (_g56615678_ _g56625681_))))
                                    (_g56615678_ _g56625681_))))
                            (_g56615678_ _g56625681_))))
                    (_g56615678_ _g56625681_)))))
        (_g56605723_ _stx5659_))))
  (define gxc#count-values-single% (lambda (_stx5657_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx5575_)
      (let* ((_g55775596_
              (lambda (_g55785593_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55785593_)))
             (_g55765654_
              (lambda (_g55785599_)
                (if (gx#stx-pair? _g55785599_)
                    (let ((_e55805601_ (gx#stx-e _g55785599_)))
                      (let ((_hd55815604_ (##car _e55805601_))
                            (_tl55825606_ (##cdr _e55805601_)))
                        (if (gx#stx-pair/null? _tl55825606_)
                            (let ((_g15647_
                                   (gx#syntax-split-splice _tl55825606_ '0)))
                              (begin
                                (let ((_g15648_
                                       (if (##values? _g15647_)
                                           (##vector-length _g15647_)
                                           1)))
                                  (if (not (##fx= _g15648_ 2))
                                      (error "Context expects 2 values"
                                             _g15648_)))
                                (let ((_target55835609_
                                       (##vector-ref _g15647_ 0))
                                      (_tl55855611_ (##vector-ref _g15647_ 1)))
                                  (if (gx#stx-null? _tl55855611_)
                                      (letrec ((_loop55865614_
                                                (lambda (_hd55845617_
                                                         _expr55905619_)
                                                  (if (gx#stx-pair?
                                                       _hd55845617_)
                                                      (let ((_e55875622_
                                                             (gx#stx-e
                                                              _hd55845617_)))
                                                        (let ((_lp-hd55885625_
                                                               (##car _e55875622_))
                                                              (_lp-tl55895627_
                                                               (##cdr _e55875622_)))
                                                          (_loop55865614_
                                                           _lp-tl55895627_
                                                           (cons _lp-hd55885625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr55905619_))))
              (let ((_expr55915630_ (reverse _expr55905619_)))
                ((lambda (_L5633_)
                   (gxc#compile-e
                    (last (begin
                            '#!void
                            (foldr1 (lambda (_g56465649_ _g56475651_)
                                      (cons _g56465649_ _g56475651_))
                                    '()
                                    _L5633_)))))
                 _expr55915630_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop55865614_ _target55835609_ '()))
                                      (_g55775596_ _g55785599_)))))
                            (_g55775596_ _g55785599_))))
                    (_g55775596_ _g55785599_)))))
        (_g55765654_ _stx5575_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx5508_)
      (let* ((_g55105527_
              (lambda (_g55115524_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55115524_)))
             (_g55095572_
              (lambda (_g55115530_)
                (if (gx#stx-pair? _g55115530_)
                    (let ((_e55145532_ (gx#stx-e _g55115530_)))
                      (let ((_hd55155535_ (##car _e55145532_))
                            (_tl55165537_ (##cdr _e55145532_)))
                        (if (gx#stx-pair? _tl55165537_)
                            (let ((_e55175540_ (gx#stx-e _tl55165537_)))
                              (let ((_hd55185543_ (##car _e55175540_))
                                    (_tl55195545_ (##cdr _e55175540_)))
                                (if (gx#stx-pair? _tl55195545_)
                                    (let ((_e55205548_
                                           (gx#stx-e _tl55195545_)))
                                      (let ((_hd55215551_ (##car _e55205548_))
                                            (_tl55225553_ (##cdr _e55205548_)))
                                        (if (gx#stx-null? _tl55225553_)
                                            ((lambda (_L5556_ _L5557_)
                                               (gxc#compile-e _L5556_))
                                             _hd55215551_
                                             _hd55185543_)
                                            (_g55105527_ _g55115530_))))
                                    (_g55105527_ _g55115530_))))
                            (_g55105527_ _g55115530_))))
                    (_g55105527_ _g55115530_)))))
        (_g55095572_ _stx5508_))))
  (define gxc#count-values-let-values%
    (lambda (_stx5441_)
      (let* ((_g54435460_
              (lambda (_g54445457_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54445457_)))
             (_g54425505_
              (lambda (_g54445463_)
                (if (gx#stx-pair? _g54445463_)
                    (let ((_e54475465_ (gx#stx-e _g54445463_)))
                      (let ((_hd54485468_ (##car _e54475465_))
                            (_tl54495470_ (##cdr _e54475465_)))
                        (if (gx#stx-pair? _tl54495470_)
                            (let ((_e54505473_ (gx#stx-e _tl54495470_)))
                              (let ((_hd54515476_ (##car _e54505473_))
                                    (_tl54525478_ (##cdr _e54505473_)))
                                (if (gx#stx-pair? _tl54525478_)
                                    (let ((_e54535481_
                                           (gx#stx-e _tl54525478_)))
                                      (let ((_hd54545484_ (##car _e54535481_))
                                            (_tl54555486_ (##cdr _e54535481_)))
                                        (if (gx#stx-null? _tl54555486_)
                                            ((lambda (_L5489_ _L5490_)
                                               (gxc#compile-e _L5489_))
                                             _hd54545484_
                                             _hd54515476_)
                                            (_g54435460_ _g54445463_))))
                                    (_g54435460_ _g54445463_))))
                            (_g54435460_ _g54445463_))))
                    (_g54435460_ _g54445463_)))))
        (_g54425505_ _stx5441_))))
  (define gxc#count-values-call%
    (lambda (_stx5308_)
      (let* ((___stx1558115582_ _stx5308_)
             (_g53115340_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1558115582_))))
        (let ((___kont1558315584_
               (lambda (_L5408_ _L5409_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g54305433_ _g54315435_)
                                     (cons _g54305433_ _g54315435_))
                                   '()
                                   _L5408_)))))
              (___kont1558715588_ (lambda () '#f)))
          (let ((___match1562615627_
                 (lambda (_e53155352_
                          _hd53165355_
                          _tl53175357_
                          _e53185360_
                          _hd53195363_
                          _tl53205365_
                          _e53215368_
                          _hd53225371_
                          _tl53235373_
                          _e53245376_
                          _hd53255379_
                          _tl53265381_
                          ___splice1558515586_
                          _target53275384_
                          _tl53295386_)
                   (letrec ((_loop53305389_
                             (lambda (_hd53285392_ _rand53345394_)
                               (if (gx#stx-pair? _hd53285392_)
                                   (let ((_e53315397_ (gx#stx-e _hd53285392_)))
                                     (let ((_lp-tl53335402_
                                            (##cdr _e53315397_))
                                           (_lp-hd53325400_
                                            (##car _e53315397_)))
                                       (_loop53305389_
                                        _lp-tl53335402_
                                        (cons _lp-hd53325400_
                                              _rand53345394_))))
                                   (let ((_rand53355405_
                                          (reverse _rand53345394_)))
                                     (let ((_L5408_ _rand53355405_)
                                           (_L5409_ _hd53255379_))
                                       (if (gx#free-identifier=?
                                            _L5409_
                                            'values)
                                           (___kont1558315584_ _L5408_ _L5409_)
                                           (___kont1558715588_))))))))
                     (_loop53305389_ _target53275384_ '())))))
            (if (gx#stx-pair? ___stx1558115582_)
                (let ((_e53155352_ (gx#stx-e ___stx1558115582_)))
                  (let ((_tl53175357_ (##cdr _e53155352_))
                        (_hd53165355_ (##car _e53155352_)))
                    (if (gx#stx-pair? _tl53175357_)
                        (let ((_e53185360_ (gx#stx-e _tl53175357_)))
                          (let ((_tl53205365_ (##cdr _e53185360_))
                                (_hd53195363_ (##car _e53185360_)))
                            (if (gx#stx-pair? _hd53195363_)
                                (let ((_e53215368_ (gx#stx-e _hd53195363_)))
                                  (let ((_tl53235373_ (##cdr _e53215368_))
                                        (_hd53225371_ (##car _e53215368_)))
                                    (if (gx#identifier? _hd53225371_)
                                        (if (gx#stx-eq? '%#ref _hd53225371_)
                                            (if (gx#stx-pair? _tl53235373_)
                                                (let ((_e53245376_
                                                       (gx#stx-e
                                                        _tl53235373_)))
                                                  (let ((_tl53265381_
                                                         (##cdr _e53245376_))
                                                        (_hd53255379_
                                                         (##car _e53245376_)))
                                                    (if (gx#stx-null?
                                                         _tl53265381_)
                                                        (if (gx#stx-pair/null?
                                                             _tl53205365_)
                                                            (let ((___splice1558515586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl53205365_ '0)))
                      (let ((_tl53295386_
                             (##vector-ref ___splice1558515586_ '1))
                            (_target53275384_
                             (##vector-ref ___splice1558515586_ '0)))
                        (if (gx#stx-null? _tl53295386_)
                            (___match1562615627_
                             _e53155352_
                             _hd53165355_
                             _tl53175357_
                             _e53185360_
                             _hd53195363_
                             _tl53205365_
                             _e53215368_
                             _hd53225371_
                             _tl53235373_
                             _e53245376_
                             _hd53255379_
                             _tl53265381_
                             ___splice1558515586_
                             _target53275384_
                             _tl53295386_)
                            (___kont1558715588_))))
                    (___kont1558715588_))
                (___kont1558715588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1558715588_))
                                            (___kont1558715588_))
                                        (___kont1558715588_))))
                                (___kont1558715588_))))
                        (___kont1558715588_))))
                (___kont1558715588_)))))))
  (define gxc#count-values-if%
    (lambda (_stx5212_)
      (let* ((_g52145235_
              (lambda (_g52155232_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52155232_)))
             (_g52135305_
              (lambda (_g52155238_)
                (if (gx#stx-pair? _g52155238_)
                    (let ((_e52195240_ (gx#stx-e _g52155238_)))
                      (let ((_hd52205243_ (##car _e52195240_))
                            (_tl52215245_ (##cdr _e52195240_)))
                        (if (gx#stx-pair? _tl52215245_)
                            (let ((_e52225248_ (gx#stx-e _tl52215245_)))
                              (let ((_hd52235251_ (##car _e52225248_))
                                    (_tl52245253_ (##cdr _e52225248_)))
                                (if (gx#stx-pair? _tl52245253_)
                                    (let ((_e52255256_
                                           (gx#stx-e _tl52245253_)))
                                      (let ((_hd52265259_ (##car _e52255256_))
                                            (_tl52275261_ (##cdr _e52255256_)))
                                        (if (gx#stx-pair? _tl52275261_)
                                            (let ((_e52285264_
                                                   (gx#stx-e _tl52275261_)))
                                              (let ((_hd52295267_
                                                     (##car _e52285264_))
                                                    (_tl52305269_
                                                     (##cdr _e52285264_)))
                                                (if (gx#stx-null? _tl52305269_)
                                                    ((lambda (_L5272_
                                                              _L5273_
                                                              _L5274_)
                                                       (let ((_c152915293_
                                                              (gxc#compile-e
                                                               _L5273_)))
                                                         (if _c152915293_
                                                             (let* ((_c15296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c152915293_)
                            (_c252975299_ (gxc#compile-e _L5272_)))
                       (if _c252975299_
                           (let ((_c25302_ _c252975299_))
                             (if (fx= _c15296_ _c25302_) _c15296_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd52295267_
                                                     _hd52265259_
                                                     _hd52235251_)
                                                    (_g52145235_
                                                     _g52155238_))))
                                            (_g52145235_ _g52155238_))))
                                    (_g52145235_ _g52155238_))))
                            (_g52145235_ _g52155238_))))
                    (_g52145235_ _g52155238_)))))
        (_g52135305_ _stx5212_)))))
