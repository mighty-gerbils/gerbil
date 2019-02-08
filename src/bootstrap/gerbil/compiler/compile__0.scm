(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#current-compile-identifiers (make-parameter '#f))
  (define gxc#current-compile-boolean-context (make-parameter '#f))
  (define gxc#make-bound-identifier-table
    (lambda ()
      (letrec ((_hash-e14425_
                (lambda (_id14427_) (symbol-hash (gx#stx-e _id14427_)))))
        (make-table 'test: gx#bound-identifier=? 'hash: _hash-e14425_))))
  (define gxc#compile-e
    (lambda (_stx14380_ . _args14381_)
      (let* ((_g1438314393_
              (lambda (_g1438414390_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1438414390_)))
             (_g1438214421_
              (lambda (_g1438414396_)
                (if (gx#stx-pair? _g1438414396_)
                    (let ((_e1438614398_ (gx#stx-e _g1438414396_)))
                      (let ((_hd1438714401_ (##car _e1438614398_))
                            (_tl1438814403_ (##cdr _e1438614398_)))
                        ((lambda (_L14406_)
                           (let ((_$e14416_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L14406_)
                                   '#f)))
                             (if _$e14416_
                                 ((lambda (_method14419_)
                                    (apply _method14419_
                                           _stx14380_
                                           _args14381_))
                                  _$e14416_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx14380_
                                  _L14406_))))
                         _hd1438714401_)))
                    (_g1438314393_ _g1438414396_)))))
        (_g1438214421_ _stx14380_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl14377_ (make-table 'test: eq?)))
         (table-set! _tbl14377_ '%#begin-annotation void)
         (table-set! _tbl14377_ '%#lambda void)
         (table-set! _tbl14377_ '%#case-lambda void)
         (table-set! _tbl14377_ '%#let-values void)
         (table-set! _tbl14377_ '%#letrec-values void)
         (table-set! _tbl14377_ '%#letrec*-values void)
         (table-set! _tbl14377_ '%#quote void)
         (table-set! _tbl14377_ '%#quote-syntax void)
         (table-set! _tbl14377_ '%#call void)
         (table-set! _tbl14377_ '%#if void)
         (table-set! _tbl14377_ '%#ref void)
         (table-set! _tbl14377_ '%#set! void)
         (table-set! _tbl14377_ '%#struct-instance? void)
         (table-set! _tbl14377_ '%#struct-direct-instance? void)
         (table-set! _tbl14377_ '%#struct-ref void)
         (table-set! _tbl14377_ '%#struct-set! void)
         (table-set! _tbl14377_ '%#struct-direct-ref void)
         (table-set! _tbl14377_ '%#struct-direct-set! void)
         (table-set! _tbl14377_ '%#struct-unchecked-ref void)
         (table-set! _tbl14377_ '%#struct-unchecked-set! void)
         _tbl14377_))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl14373_ (make-table 'test: eq?)))
         (table-set! _tbl14373_ '%#begin void)
         (table-set! _tbl14373_ '%#begin-syntax void)
         (table-set! _tbl14373_ '%#begin-foreign void)
         (table-set! _tbl14373_ '%#module void)
         (table-set! _tbl14373_ '%#import void)
         (table-set! _tbl14373_ '%#export void)
         (table-set! _tbl14373_ '%#provide void)
         (table-set! _tbl14373_ '%#extern void)
         (table-set! _tbl14373_ '%#define-values void)
         (table-set! _tbl14373_ '%#define-syntax void)
         (table-set! _tbl14373_ '%#define-alias void)
         (table-set! _tbl14373_ '%#declare void)
         _tbl14373_))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl14369_ (make-table 'test: eq?)))
         (hash-copy! _tbl14369_ (force gxc#&void-special-form))
         (hash-copy! _tbl14369_ (force gxc#&void-expression))
         _tbl14369_))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl14365_ (make-table 'test: eq?)))
         (table-set! _tbl14365_ '%#begin-annotation false)
         (table-set! _tbl14365_ '%#lambda false)
         (table-set! _tbl14365_ '%#case-lambda false)
         (table-set! _tbl14365_ '%#let-values false)
         (table-set! _tbl14365_ '%#letrec-values false)
         (table-set! _tbl14365_ '%#letrec*-values false)
         (table-set! _tbl14365_ '%#quote false)
         (table-set! _tbl14365_ '%#quote-syntax false)
         (table-set! _tbl14365_ '%#call false)
         (table-set! _tbl14365_ '%#if false)
         (table-set! _tbl14365_ '%#ref false)
         (table-set! _tbl14365_ '%#set! false)
         (table-set! _tbl14365_ '%#struct-instance? false)
         (table-set! _tbl14365_ '%#struct-direct-instance? false)
         (table-set! _tbl14365_ '%#struct-ref false)
         (table-set! _tbl14365_ '%#struct-set! false)
         (table-set! _tbl14365_ '%#struct-direct-ref false)
         (table-set! _tbl14365_ '%#struct-direct-set! false)
         (table-set! _tbl14365_ '%#struct-unchecked-ref false)
         (table-set! _tbl14365_ '%#struct-unchecked-set! false)
         _tbl14365_))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl14361_ (make-table 'test: eq?)))
         (table-set! _tbl14361_ '%#begin false)
         (table-set! _tbl14361_ '%#begin-syntax false)
         (table-set! _tbl14361_ '%#begin-foreign false)
         (table-set! _tbl14361_ '%#module false)
         (table-set! _tbl14361_ '%#import false)
         (table-set! _tbl14361_ '%#export false)
         (table-set! _tbl14361_ '%#provide false)
         (table-set! _tbl14361_ '%#extern false)
         (table-set! _tbl14361_ '%#define-values false)
         (table-set! _tbl14361_ '%#define-syntax false)
         (table-set! _tbl14361_ '%#define-alias false)
         (table-set! _tbl14361_ '%#declare false)
         _tbl14361_))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl14357_ (make-table 'test: eq?)))
         (hash-copy! _tbl14357_ (force gxc#&false-special-form))
         (hash-copy! _tbl14357_ (force gxc#&false-expression))
         _tbl14357_))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl14353_ (make-table 'test: eq?)))
         (hash-copy! _tbl14353_ (force gxc#&void-expression))
         (hash-copy! _tbl14353_ (force gxc#&void-special-form))
         (table-set! _tbl14353_ '%#begin gxc#collect-begin%)
         (table-set! _tbl14353_ '%#begin-syntax gxc#collect-begin-syntax%)
         (table-set! _tbl14353_ '%#module gxc#collect-module%)
         (table-set!
          _tbl14353_
          '%#define-values
          gxc#collect-bindings-define-values%)
         (table-set!
          _tbl14353_
          '%#define-syntax
          gxc#collect-bindings-define-syntax%)
         _tbl14353_))))
  (define gxc#apply-collect-bindings
    (lambda (_stx14346_ . _args14348_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14346_ _args14348_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl14343_ (make-table 'test: eq?)))
         (hash-copy! _tbl14343_ (force gxc#&void))
         (table-set! _tbl14343_ '%#begin gxc#collect-begin%)
         (table-set! _tbl14343_ '%#module gxc#lift-modules-module%)
         _tbl14343_))))
  (define gxc#apply-lift-modules
    (lambda (_stx14336_ . _args14338_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14336_ _args14338_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl14333_ (make-table 'test: eq?)))
         (table-set! _tbl14333_ '%#begin gxc#find-runtime-begin%)
         (table-set! _tbl14333_ '%#begin-syntax false)
         (table-set! _tbl14333_ '%#begin-foreign true)
         (table-set! _tbl14333_ '%#begin-annotation true)
         (table-set! _tbl14333_ '%#module false)
         (table-set! _tbl14333_ '%#import false)
         (table-set! _tbl14333_ '%#export false)
         (table-set! _tbl14333_ '%#provide false)
         (table-set! _tbl14333_ '%#extern false)
         (table-set! _tbl14333_ '%#define-values true)
         (table-set! _tbl14333_ '%#define-syntax false)
         (table-set! _tbl14333_ '%#define-alias false)
         (table-set! _tbl14333_ '%#declare false)
         (table-set! _tbl14333_ '%#lambda true)
         (table-set! _tbl14333_ '%#case-lambda true)
         (table-set! _tbl14333_ '%#let-values true)
         (table-set! _tbl14333_ '%#letrec-values true)
         (table-set! _tbl14333_ '%#letrec*-values true)
         (table-set! _tbl14333_ '%#quote true)
         (table-set! _tbl14333_ '%#call true)
         (table-set! _tbl14333_ '%#if true)
         (table-set! _tbl14333_ '%#ref true)
         (table-set! _tbl14333_ '%#set! true)
         (table-set! _tbl14333_ '%#struct-instance? true)
         (table-set! _tbl14333_ '%#struct-direct-instance? true)
         (table-set! _tbl14333_ '%#struct-ref true)
         (table-set! _tbl14333_ '%#struct-set! true)
         (table-set! _tbl14333_ '%#struct-direct-ref true)
         (table-set! _tbl14333_ '%#struct-direct-set! true)
         (table-set! _tbl14333_ '%#struct-unchecked-ref true)
         (table-set! _tbl14333_ '%#struct-unchecked-set! true)
         _tbl14333_))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx14326_ . _args14328_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14326_ _args14328_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl14323_ (make-table 'test: eq?)))
         (hash-copy! _tbl14323_ (force gxc#&false))
         (table-set! _tbl14323_ '%#begin gxc#find-lambda-expression-begin%)
         (table-set!
          _tbl14323_
          '%#begin-annotation
          gxc#find-lambda-expression-begin-annotation%)
         (table-set! _tbl14323_ '%#lambda values)
         (table-set! _tbl14323_ '%#case-lambda values)
         (table-set!
          _tbl14323_
          '%#let-values
          gxc#find-lambda-expression-let-values%)
         (table-set!
          _tbl14323_
          '%#letrec-values
          gxc#find-lambda-expression-let-values%)
         (table-set!
          _tbl14323_
          '%#letrec*-values
          gxc#find-lambda-expression-let-values%)
         _tbl14323_))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx14316_ . _args14318_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14316_ _args14318_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl14313_ (make-table 'test: eq?)))
         (hash-copy! _tbl14313_ (force gxc#&false-expression))
         (table-set! _tbl14313_ '%#begin gxc#count-values-begin%)
         (table-set!
          _tbl14313_
          '%#begin-annotation
          gxc#count-values-begin-annotation%)
         (table-set! _tbl14313_ '%#lambda gxc#count-values-single%)
         (table-set! _tbl14313_ '%#case-lambda gxc#count-values-single%)
         (table-set! _tbl14313_ '%#let-values gxc#count-values-let-values%)
         (table-set! _tbl14313_ '%#letrec-values gxc#count-values-let-values%)
         (table-set! _tbl14313_ '%#letrec*-values gxc#count-values-let-values%)
         (table-set! _tbl14313_ '%#quote gxc#count-values-single%)
         (table-set! _tbl14313_ '%#call gxc#count-values-call%)
         (table-set! _tbl14313_ '%#if gxc#count-values-if%)
         _tbl14313_))))
  (define gxc#apply-count-values
    (lambda (_stx14306_ . _args14308_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14306_ _args14308_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl14303_ (make-table 'test: eq?)))
         (table-set! _tbl14303_ '%#begin gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#begin-syntax gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#begin-foreign gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#begin-annotation gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#module gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#import gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#export gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#provide gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#extern gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#define-values gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#define-syntax gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#define-alias gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#declare gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#lambda gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#case-lambda gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#let-values gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#letrec-values gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#letrec*-values gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#quote gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#call gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#if gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#ref gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#set! gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#struct-instance? gxc#generate-runtime-empty)
         (table-set!
          _tbl14303_
          '%#struct-direct-instance?
          gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#struct-ref gxc#generate-runtime-empty)
         (table-set! _tbl14303_ '%#struct-set! gxc#generate-runtime-empty)
         (table-set!
          _tbl14303_
          '%#struct-direct-ref
          gxc#generate-runtime-empty)
         (table-set!
          _tbl14303_
          '%#struct-direct-set!
          gxc#generate-runtime-empty)
         (table-set!
          _tbl14303_
          '%#struct-unchecked-ref
          gxc#generate-runtime-empty)
         (table-set!
          _tbl14303_
          '%#struct-unchecked-set!
          gxc#generate-runtime-empty)
         _tbl14303_))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl14299_ (make-table 'test: eq?)))
         (hash-copy! _tbl14299_ (force gxc#&generate-runtime-empty))
         (table-set! _tbl14299_ '%#begin gxc#generate-runtime-begin%)
         (table-set! _tbl14299_ '%#import gxc#generate-runtime-loader-import%)
         _tbl14299_))))
  (define gxc#apply-generate-loader
    (lambda (_stx14292_ . _args14294_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14292_ _args14294_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl14289_ (make-table 'test: eq?)))
         (hash-copy! _tbl14289_ (force gxc#&generate-runtime-empty))
         (table-set! _tbl14289_ '%#begin gxc#generate-runtime-begin%)
         (table-set!
          _tbl14289_
          '%#begin-foreign
          gxc#generate-runtime-begin-foreign%)
         (table-set!
          _tbl14289_
          '%#begin-annotation
          gxc#generate-runtime-begin-annotation%)
         (table-set!
          _tbl14289_
          '%#define-values
          gxc#generate-runtime-define-values%)
         (table-set! _tbl14289_ '%#declare gxc#generate-runtime-declare%)
         (table-set! _tbl14289_ '%#lambda gxc#generate-runtime-lambda%)
         (table-set!
          _tbl14289_
          '%#case-lambda
          gxc#generate-runtime-case-lambda%)
         (table-set! _tbl14289_ '%#let-values gxc#generate-runtime-let-values%)
         (table-set!
          _tbl14289_
          '%#letrec-values
          gxc#generate-runtime-letrec-values%)
         (table-set!
          _tbl14289_
          '%#letrec*-values
          gxc#generate-runtime-letrec*-values%)
         (table-set! _tbl14289_ '%#quote gxc#generate-runtime-quote%)
         (table-set!
          _tbl14289_
          '%#quote-syntax
          gxc#generate-runtime-quote-syntax%)
         (table-set! _tbl14289_ '%#call gxc#generate-runtime-call%)
         (table-set! _tbl14289_ '%#if gxc#generate-runtime-if%)
         (table-set! _tbl14289_ '%#ref gxc#generate-runtime-ref%)
         (table-set! _tbl14289_ '%#set! gxc#generate-runtime-setq%)
         (table-set!
          _tbl14289_
          '%#struct-instance?
          gxc#generate-runtime-struct-instancep%)
         (table-set!
          _tbl14289_
          '%#struct-direct-instance?
          gxc#generate-runtime-struct-direct-instancep%)
         (table-set! _tbl14289_ '%#struct-ref gxc#generate-runtime-struct-ref%)
         (table-set!
          _tbl14289_
          '%#struct-set!
          gxc#generate-runtime-struct-setq%)
         (table-set!
          _tbl14289_
          '%#struct-direct-ref
          gxc#generate-runtime-struct-direct-ref%)
         (table-set!
          _tbl14289_
          '%#struct-direct-set!
          gxc#generate-runtime-struct-direct-setq%)
         (table-set!
          _tbl14289_
          '%#struct-unchecked-ref
          gxc#generate-runtime-struct-unchecked-ref%)
         (table-set!
          _tbl14289_
          '%#struct-unchecked-set!
          gxc#generate-runtime-struct-unchecked-setq%)
         _tbl14289_))))
  (define gxc#apply-generate-runtime
    (lambda (_stx14282_ . _args14284_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14282_ _args14284_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl14279_ (make-table 'test: eq?)))
         (hash-copy! _tbl14279_ (force gxc#&generate-runtime))
         (table-set!
          _tbl14279_
          '%#define-runtime
          gxc#generate-runtime-phi-define-runtime%)
         _tbl14279_))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx14272_ . _args14274_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14272_ _args14274_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl14269_ (make-table 'test: eq?)))
         (table-set! _tbl14269_ '%#begin gxc#collect-begin%)
         (table-set!
          _tbl14269_
          '%#begin-annotation
          gxc#collect-begin-annotation%)
         (table-set! _tbl14269_ '%#lambda gxc#collect-body-lambda%)
         (table-set! _tbl14269_ '%#case-lambda gxc#collect-body-case-lambda%)
         (table-set! _tbl14269_ '%#let-values gxc#collect-body-let-values%)
         (table-set! _tbl14269_ '%#letrec-values gxc#collect-body-let-values%)
         (table-set! _tbl14269_ '%#letrec*-values gxc#collect-body-let-values%)
         (table-set! _tbl14269_ '%#quote void)
         (table-set! _tbl14269_ '%#quote-syntax void)
         (table-set! _tbl14269_ '%#call gxc#collect-operands)
         (table-set! _tbl14269_ '%#if gxc#collect-operands)
         (table-set! _tbl14269_ '%#ref gxc#collect-refs-ref%)
         (table-set! _tbl14269_ '%#set! gxc#collect-refs-setq%)
         (table-set! _tbl14269_ '%#struct-instance? gxc#collect-operands)
         (table-set!
          _tbl14269_
          '%#struct-direct-instance?
          gxc#collect-operands)
         (table-set! _tbl14269_ '%#struct-ref gxc#collect-operands)
         (table-set! _tbl14269_ '%#struct-set! gxc#collect-operands)
         (table-set! _tbl14269_ '%#struct-direct-ref gxc#collect-operands)
         (table-set! _tbl14269_ '%#struct-direct-set! gxc#collect-operands)
         (table-set! _tbl14269_ '%#struct-unchecked-ref gxc#collect-operands)
         (table-set! _tbl14269_ '%#struct-unchecked-set! gxc#collect-operands)
         _tbl14269_))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx14262_ . _args14264_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14262_ _args14264_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl14259_ (make-table 'test: eq?)))
         (hash-copy! _tbl14259_ (force gxc#&void-expression))
         (table-set! _tbl14259_ '%#begin gxc#generate-meta-begin%)
         (table-set!
          _tbl14259_
          '%#begin-syntax
          gxc#generate-meta-begin-syntax%)
         (table-set! _tbl14259_ '%#module gxc#generate-meta-module%)
         (table-set! _tbl14259_ '%#import gxc#generate-meta-import%)
         (table-set! _tbl14259_ '%#export gxc#generate-meta-export%)
         (table-set! _tbl14259_ '%#provide gxc#generate-meta-provide%)
         (table-set! _tbl14259_ '%#extern gxc#generate-meta-extern%)
         (table-set!
          _tbl14259_
          '%#define-values
          gxc#generate-meta-define-values%)
         (table-set!
          _tbl14259_
          '%#define-syntax
          gxc#generate-meta-define-syntax%)
         (table-set!
          _tbl14259_
          '%#define-alias
          gxc#generate-meta-define-alias%)
         (table-set! _tbl14259_ '%#begin-foreign void)
         (table-set! _tbl14259_ '%#declare void)
         _tbl14259_))))
  (define gxc#apply-generate-meta
    (lambda (_stx14252_ . _args14254_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14252_ _args14254_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl14249_ (make-table 'test: eq?)))
         (table-set! _tbl14249_ '%#begin gxc#generate-meta-begin%)
         (table-set!
          _tbl14249_
          '%#begin-syntax
          gxc#generate-meta-begin-syntax%)
         (table-set!
          _tbl14249_
          '%#define-syntax
          gxc#generate-meta-define-syntax%)
         (table-set!
          _tbl14249_
          '%#define-alias
          gxc#generate-meta-define-alias%)
         (table-set!
          _tbl14249_
          '%#define-values
          gxc#generate-meta-phi-define-values%)
         (table-set! _tbl14249_ '%#begin-annotation gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#lambda gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#case-lambda gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#let-values gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#letrec-values gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#letrec*-values gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#quote gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#quote-syntax gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#call gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#if gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#ref gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#set! gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#struct-instance? gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14249_
          '%#struct-direct-instance?
          gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#struct-ref gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#struct-set! gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14249_
          '%#struct-direct-ref
          gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14249_
          '%#struct-direct-set!
          gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14249_
          '%#struct-unchecked-ref
          gxc#generate-meta-phi-expr)
         (table-set!
          _tbl14249_
          '%#struct-unchecked-set!
          gxc#generate-meta-phi-expr)
         (table-set! _tbl14249_ '%#declare void)
         _tbl14249_))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx14242_ . _args14244_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14242_ _args14244_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx14199_ . _args14200_)
      (let* ((_g1420214212_
              (lambda (_g1420314209_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1420314209_)))
             (_g1420114239_
              (lambda (_g1420314215_)
                (if (gx#stx-pair? _g1420314215_)
                    (let ((_e1420514217_ (gx#stx-e _g1420314215_)))
                      (let ((_hd1420614220_ (##car _e1420514217_))
                            (_tl1420714222_ (##cdr _e1420514217_)))
                        ((lambda (_L14225_)
                           (for-each
                            (lambda (_g1423414236_)
                              (apply gxc#compile-e _g1423414236_ _args14200_))
                            (gx#stx-e _L14225_)))
                         _tl1420714222_)))
                    (_g1420214212_ _g1420314215_)))))
        (_g1420114239_ _stx14199_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx14195_ . _args14196_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx14195_ _args14196_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx14137_ . _args14138_)
      (let* ((_g1414014154_
              (lambda (_g1414114151_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1414114151_)))
             (_g1413914192_
              (lambda (_g1414114157_)
                (if (gx#stx-pair? _g1414114157_)
                    (let ((_e1414414159_ (gx#stx-e _g1414114157_)))
                      (let ((_hd1414514162_ (##car _e1414414159_))
                            (_tl1414614164_ (##cdr _e1414414159_)))
                        (if (gx#stx-pair? _tl1414614164_)
                            (let ((_e1414714167_ (gx#stx-e _tl1414614164_)))
                              (let ((_hd1414814170_ (##car _e1414714167_))
                                    (_tl1414914172_ (##cdr _e1414714167_)))
                                ((lambda (_L14175_ _L14176_)
                                   (let ((_ctx14189_
                                          (gx#syntax-local-e__0 _L14176_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx14189_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args14138_))
                                      gx#current-expander-context
                                      _ctx14189_)))
                                 _tl1414914172_
                                 _hd1414814170_)))
                            (_g1414014154_ _g1414114157_))))
                    (_g1414014154_ _g1414114157_)))))
        (_g1413914192_ _stx14137_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx14069_ . _args14070_)
      (let* ((_g1407214089_
              (lambda (_g1407314086_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1407314086_)))
             (_g1407114134_
              (lambda (_g1407314092_)
                (if (gx#stx-pair? _g1407314092_)
                    (let ((_e1407614094_ (gx#stx-e _g1407314092_)))
                      (let ((_hd1407714097_ (##car _e1407614094_))
                            (_tl1407814099_ (##cdr _e1407614094_)))
                        (if (gx#stx-pair? _tl1407814099_)
                            (let ((_e1407914102_ (gx#stx-e _tl1407814099_)))
                              (let ((_hd1408014105_ (##car _e1407914102_))
                                    (_tl1408114107_ (##cdr _e1407914102_)))
                                (if (gx#stx-pair? _tl1408114107_)
                                    (let ((_e1408214110_
                                           (gx#stx-e _tl1408114107_)))
                                      (let ((_hd1408314113_
                                             (##car _e1408214110_))
                                            (_tl1408414115_
                                             (##cdr _e1408214110_)))
                                        (if (gx#stx-null? _tl1408414115_)
                                            ((lambda (_L14118_ _L14119_)
                                               (apply gxc#compile-e
                                                      _L14118_
                                                      _args14070_))
                                             _hd1408314113_
                                             _hd1408014105_)
                                            (_g1407214089_ _g1407314092_))))
                                    (_g1407214089_ _g1407314092_))))
                            (_g1407214089_ _g1407314092_))))
                    (_g1407214089_ _g1407314092_)))))
        (_g1407114134_ _stx14069_))))
  (define gxc#collect-define-values%
    (lambda (_stx14001_ . _args14002_)
      (let* ((_g1400414021_
              (lambda (_g1400514018_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1400514018_)))
             (_g1400314066_
              (lambda (_g1400514024_)
                (if (gx#stx-pair? _g1400514024_)
                    (let ((_e1400814026_ (gx#stx-e _g1400514024_)))
                      (let ((_hd1400914029_ (##car _e1400814026_))
                            (_tl1401014031_ (##cdr _e1400814026_)))
                        (if (gx#stx-pair? _tl1401014031_)
                            (let ((_e1401114034_ (gx#stx-e _tl1401014031_)))
                              (let ((_hd1401214037_ (##car _e1401114034_))
                                    (_tl1401314039_ (##cdr _e1401114034_)))
                                (if (gx#stx-pair? _tl1401314039_)
                                    (let ((_e1401414042_
                                           (gx#stx-e _tl1401314039_)))
                                      (let ((_hd1401514045_
                                             (##car _e1401414042_))
                                            (_tl1401614047_
                                             (##cdr _e1401414042_)))
                                        (if (gx#stx-null? _tl1401614047_)
                                            ((lambda (_L14050_ _L14051_)
                                               (apply gxc#compile-e
                                                      _L14050_
                                                      _args14002_))
                                             _hd1401514045_
                                             _hd1401214037_)
                                            (_g1400414021_ _g1400514024_))))
                                    (_g1400414021_ _g1400514024_))))
                            (_g1400414021_ _g1400514024_))))
                    (_g1400414021_ _g1400514024_)))))
        (_g1400314066_ _stx14001_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx13932_ . _args13933_)
      (let* ((_g1393513952_
              (lambda (_g1393613949_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1393613949_)))
             (_g1393413998_
              (lambda (_g1393613955_)
                (if (gx#stx-pair? _g1393613955_)
                    (let ((_e1393913957_ (gx#stx-e _g1393613955_)))
                      (let ((_hd1394013960_ (##car _e1393913957_))
                            (_tl1394113962_ (##cdr _e1393913957_)))
                        (if (gx#stx-pair? _tl1394113962_)
                            (let ((_e1394213965_ (gx#stx-e _tl1394113962_)))
                              (let ((_hd1394313968_ (##car _e1394213965_))
                                    (_tl1394413970_ (##cdr _e1394213965_)))
                                (if (gx#stx-pair? _tl1394413970_)
                                    (let ((_e1394513973_
                                           (gx#stx-e _tl1394413970_)))
                                      (let ((_hd1394613976_
                                             (##car _e1394513973_))
                                            (_tl1394713978_
                                             (##cdr _e1394513973_)))
                                        (if (gx#stx-null? _tl1394713978_)
                                            ((lambda (_L13981_ _L13982_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L13981_
                                                         _args13933_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1394613976_
                                             _hd1394313968_)
                                            (_g1393513952_ _g1393613955_))))
                                    (_g1393513952_ _g1393613955_))))
                            (_g1393513952_ _g1393613955_))))
                    (_g1393513952_ _g1393613955_)))))
        (_g1393413998_ _stx13932_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx13864_ . _args13865_)
      (let* ((_g1386713884_
              (lambda (_g1386813881_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1386813881_)))
             (_g1386613929_
              (lambda (_g1386813887_)
                (if (gx#stx-pair? _g1386813887_)
                    (let ((_e1387113889_ (gx#stx-e _g1386813887_)))
                      (let ((_hd1387213892_ (##car _e1387113889_))
                            (_tl1387313894_ (##cdr _e1387113889_)))
                        (if (gx#stx-pair? _tl1387313894_)
                            (let ((_e1387413897_ (gx#stx-e _tl1387313894_)))
                              (let ((_hd1387513900_ (##car _e1387413897_))
                                    (_tl1387613902_ (##cdr _e1387413897_)))
                                (if (gx#stx-pair? _tl1387613902_)
                                    (let ((_e1387713905_
                                           (gx#stx-e _tl1387613902_)))
                                      (let ((_hd1387813908_
                                             (##car _e1387713905_))
                                            (_tl1387913910_
                                             (##cdr _e1387713905_)))
                                        (if (gx#stx-null? _tl1387913910_)
                                            ((lambda (_L13913_ _L13914_)
                                               (apply gxc#compile-e
                                                      _L13913_
                                                      _args13865_))
                                             _hd1387813908_
                                             _hd1387513900_)
                                            (_g1386713884_ _g1386813887_))))
                                    (_g1386713884_ _g1386813887_))))
                            (_g1386713884_ _g1386813887_))))
                    (_g1386713884_ _g1386813887_)))))
        (_g1386613929_ _stx13864_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx13746_ . _args13747_)
      (let* ((_g1374913777_
              (lambda (_g1375013774_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1375013774_)))
             (_g1374813861_
              (lambda (_g1375013780_)
                (if (gx#stx-pair? _g1375013780_)
                    (let ((_e1375313782_ (gx#stx-e _g1375013780_)))
                      (let ((_hd1375413785_ (##car _e1375313782_))
                            (_tl1375513787_ (##cdr _e1375313782_)))
                        (if (gx#stx-pair/null? _tl1375513787_)
                            (let ((_g15482_
                                   (gx#syntax-split-splice _tl1375513787_ '0)))
                              (begin
                                (let ((_g15483_
                                       (if (##values? _g15482_)
                                           (##vector-length _g15482_)
                                           1)))
                                  (if (not (##fx= _g15483_ 2))
                                      (error "Context expects 2 values"
                                             _g15483_)))
                                (let ((_target1375613790_
                                       (##vector-ref _g15482_ 0))
                                      (_tl1375813792_
                                       (##vector-ref _g15482_ 1)))
                                  (if (gx#stx-null? _tl1375813792_)
                                      (letrec ((_loop1375913795_
                                                (lambda (_hd1375713798_
                                                         _body1376313800_
                                                         _hd1376413802_)
                                                  (if (gx#stx-pair?
                                                       _hd1375713798_)
                                                      (let ((_e1376013805_
                                                             (gx#stx-e
                                                              _hd1375713798_)))
                                                        (let ((_lp-hd1376113808_
                                                               (##car _e1376013805_))
                                                              (_lp-tl1376213810_
                                                               (##cdr _e1376013805_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1376113808_)
                                                              (let ((_e1376713813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1376113808_)))
                        (let ((_hd1376813816_ (##car _e1376713813_))
                              (_tl1376913818_ (##cdr _e1376713813_)))
                          (if (gx#stx-pair? _tl1376913818_)
                              (let ((_e1377013821_ (gx#stx-e _tl1376913818_)))
                                (let ((_hd1377113824_ (##car _e1377013821_))
                                      (_tl1377213826_ (##cdr _e1377013821_)))
                                  (if (gx#stx-null? _tl1377213826_)
                                      (_loop1375913795_
                                       _lp-tl1376213810_
                                       (cons _hd1377113824_ _body1376313800_)
                                       (cons _hd1376813816_ _hd1376413802_))
                                      (_g1374913777_ _g1375013780_))))
                              (_g1374913777_ _g1375013780_))))
                      (_g1374913777_ _g1375013780_))))
              (let ((_body1376513829_ (reverse _body1376313800_))
                    (_hd1376613831_ (reverse _hd1376413802_)))
                ((lambda (_L13834_ _L13835_)
                   (for-each
                    (lambda (_g1384913851_)
                      (apply gxc#compile-e _g1384913851_ _args13747_))
                    (foldr1 (lambda (_g1385313856_ _g1385413858_)
                              (cons _g1385313856_ _g1385413858_))
                            '()
                            _L13834_)))
                 _body1376513829_
                 _hd1376613831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1375913795_
                                         _target1375613790_
                                         '()
                                         '()))
                                      (_g1374913777_ _g1375013780_)))))
                            (_g1374913777_ _g1375013780_))))
                    (_g1374913777_ _g1375013780_)))))
        (_g1374813861_ _stx13746_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx13599_ . _args13600_)
      (let* ((_g1360213637_
              (lambda (_g1360313634_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1360313634_)))
             (_g1360113743_
              (lambda (_g1360313640_)
                (if (gx#stx-pair? _g1360313640_)
                    (let ((_e1360713642_ (gx#stx-e _g1360313640_)))
                      (let ((_hd1360813645_ (##car _e1360713642_))
                            (_tl1360913647_ (##cdr _e1360713642_)))
                        (if (gx#stx-pair? _tl1360913647_)
                            (let ((_e1361013650_ (gx#stx-e _tl1360913647_)))
                              (let ((_hd1361113653_ (##car _e1361013650_))
                                    (_tl1361213655_ (##cdr _e1361013650_)))
                                (if (gx#stx-pair/null? _hd1361113653_)
                                    (let ((_g15484_
                                           (gx#syntax-split-splice
                                            _hd1361113653_
                                            '0)))
                                      (begin
                                        (let ((_g15485_
                                               (if (##values? _g15484_)
                                                   (##vector-length _g15484_)
                                                   1)))
                                          (if (not (##fx= _g15485_ 2))
                                              (error "Context expects 2 values"
                                                     _g15485_)))
                                        (let ((_target1361313658_
                                               (##vector-ref _g15484_ 0))
                                              (_tl1361513660_
                                               (##vector-ref _g15484_ 1)))
                                          (if (gx#stx-null? _tl1361513660_)
                                              (letrec ((_loop1361613663_
                                                        (lambda (_hd1361413666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1362013668_
                         _hd1362113670_)
                  (if (gx#stx-pair? _hd1361413666_)
                      (let ((_e1361713673_ (gx#stx-e _hd1361413666_)))
                        (let ((_lp-hd1361813676_ (##car _e1361713673_))
                              (_lp-tl1361913678_ (##cdr _e1361713673_)))
                          (if (gx#stx-pair? _lp-hd1361813676_)
                              (let ((_e1362413681_
                                     (gx#stx-e _lp-hd1361813676_)))
                                (let ((_hd1362513684_ (##car _e1362413681_))
                                      (_tl1362613686_ (##cdr _e1362413681_)))
                                  (if (gx#stx-pair? _tl1362613686_)
                                      (let ((_e1362713689_
                                             (gx#stx-e _tl1362613686_)))
                                        (let ((_hd1362813692_
                                               (##car _e1362713689_))
                                              (_tl1362913694_
                                               (##cdr _e1362713689_)))
                                          (if (gx#stx-null? _tl1362913694_)
                                              (_loop1361613663_
                                               _lp-tl1361913678_
                                               (cons _hd1362813692_
                                                     _expr1362013668_)
                                               (cons _hd1362513684_
                                                     _hd1362113670_))
                                              (_g1360213637_ _g1360313640_))))
                                      (_g1360213637_ _g1360313640_))))
                              (_g1360213637_ _g1360313640_))))
                      (let ((_expr1362213697_ (reverse _expr1362013668_))
                            (_hd1362313699_ (reverse _hd1362113670_)))
                        (if (gx#stx-pair? _tl1361213655_)
                            (let ((_e1363013702_ (gx#stx-e _tl1361213655_)))
                              (let ((_hd1363113705_ (##car _e1363013702_))
                                    (_tl1363213707_ (##cdr _e1363013702_)))
                                (if (gx#stx-null? _tl1363213707_)
                                    ((lambda (_L13710_ _L13711_ _L13712_)
                                       (for-each
                                        (lambda (_g1373113733_)
                                          (apply gxc#compile-e
                                                 _g1373113733_
                                                 _args13600_))
                                        (foldr1 (lambda (_g1373513738_
                                                         _g1373613740_)
                                                  (cons _g1373513738_
                                                        _g1373613740_))
                                                (cons _L13710_ '())
                                                _L13711_)))
                                     _hd1363113705_
                                     _expr1362213697_
                                     _hd1362313699_)
                                    (_g1360213637_ _g1360313640_))))
                            (_g1360213637_ _g1360313640_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1361613663_
                                                 _target1361313658_
                                                 '()
                                                 '()))
                                              (_g1360213637_ _g1360313640_)))))
                                    (_g1360213637_ _g1360313640_))))
                            (_g1360213637_ _g1360313640_))))
                    (_g1360213637_ _g1360313640_)))))
        (_g1360113743_ _stx13599_))))
  (define gxc#collect-body-setq%
    (lambda (_stx13531_ . _args13532_)
      (let* ((_g1353413551_
              (lambda (_g1353513548_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1353513548_)))
             (_g1353313596_
              (lambda (_g1353513554_)
                (if (gx#stx-pair? _g1353513554_)
                    (let ((_e1353813556_ (gx#stx-e _g1353513554_)))
                      (let ((_hd1353913559_ (##car _e1353813556_))
                            (_tl1354013561_ (##cdr _e1353813556_)))
                        (if (gx#stx-pair? _tl1354013561_)
                            (let ((_e1354113564_ (gx#stx-e _tl1354013561_)))
                              (let ((_hd1354213567_ (##car _e1354113564_))
                                    (_tl1354313569_ (##cdr _e1354113564_)))
                                (if (gx#stx-pair? _tl1354313569_)
                                    (let ((_e1354413572_
                                           (gx#stx-e _tl1354313569_)))
                                      (let ((_hd1354513575_
                                             (##car _e1354413572_))
                                            (_tl1354613577_
                                             (##cdr _e1354413572_)))
                                        (if (gx#stx-null? _tl1354613577_)
                                            ((lambda (_L13580_ _L13581_)
                                               (apply gxc#compile-e
                                                      _L13580_
                                                      _args13532_))
                                             _hd1354513575_
                                             _hd1354213567_)
                                            (_g1353413551_ _g1353513554_))))
                                    (_g1353413551_ _g1353513554_))))
                            (_g1353413551_ _g1353513554_))))
                    (_g1353413551_ _g1353513554_)))))
        (_g1353313596_ _stx13531_))))
  (define gxc#collect-operands
    (lambda (_stx13444_ . _args13445_)
      (let* ((_g1344713466_
              (lambda (_g1344813463_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1344813463_)))
             (_g1344613528_
              (lambda (_g1344813469_)
                (if (gx#stx-pair? _g1344813469_)
                    (let ((_e1345013471_ (gx#stx-e _g1344813469_)))
                      (let ((_hd1345113474_ (##car _e1345013471_))
                            (_tl1345213476_ (##cdr _e1345013471_)))
                        (if (gx#stx-pair/null? _tl1345213476_)
                            (let ((_g15486_
                                   (gx#syntax-split-splice _tl1345213476_ '0)))
                              (begin
                                (let ((_g15487_
                                       (if (##values? _g15486_)
                                           (##vector-length _g15486_)
                                           1)))
                                  (if (not (##fx= _g15487_ 2))
                                      (error "Context expects 2 values"
                                             _g15487_)))
                                (let ((_target1345313479_
                                       (##vector-ref _g15486_ 0))
                                      (_tl1345513481_
                                       (##vector-ref _g15486_ 1)))
                                  (if (gx#stx-null? _tl1345513481_)
                                      (letrec ((_loop1345613484_
                                                (lambda (_hd1345413487_
                                                         _rands1346013489_)
                                                  (if (gx#stx-pair?
                                                       _hd1345413487_)
                                                      (let ((_e1345713492_
                                                             (gx#stx-e
                                                              _hd1345413487_)))
                                                        (let ((_lp-hd1345813495_
                                                               (##car _e1345713492_))
                                                              (_lp-tl1345913497_
                                                               (##cdr _e1345713492_)))
                                                          (_loop1345613484_
                                                           _lp-tl1345913497_
                                                           (cons _lp-hd1345813495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1346013489_))))
              (let ((_rands1346113500_ (reverse _rands1346013489_)))
                ((lambda (_L13503_)
                   (for-each
                    (lambda (_g1351613518_)
                      (apply gxc#compile-e _g1351613518_ _args13445_))
                    (foldr1 (lambda (_g1352013523_ _g1352113525_)
                              (cons _g1352013523_ _g1352113525_))
                            '()
                            _L13503_)))
                 _rands1346113500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1345613484_
                                         _target1345313479_
                                         '()))
                                      (_g1344713466_ _g1344813469_)))))
                            (_g1344713466_ _g1344813469_))))
                    (_g1344713466_ _g1344813469_)))))
        (_g1344613528_ _stx13444_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx13375_)
      (let* ((_g1337713394_
              (lambda (_g1337813391_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1337813391_)))
             (_g1337613441_
              (lambda (_g1337813397_)
                (if (gx#stx-pair? _g1337813397_)
                    (let ((_e1338113399_ (gx#stx-e _g1337813397_)))
                      (let ((_hd1338213402_ (##car _e1338113399_))
                            (_tl1338313404_ (##cdr _e1338113399_)))
                        (if (gx#stx-pair? _tl1338313404_)
                            (let ((_e1338413407_ (gx#stx-e _tl1338313404_)))
                              (let ((_hd1338513410_ (##car _e1338413407_))
                                    (_tl1338613412_ (##cdr _e1338413407_)))
                                (if (gx#stx-pair? _tl1338613412_)
                                    (let ((_e1338713415_
                                           (gx#stx-e _tl1338613412_)))
                                      (let ((_hd1338813418_
                                             (##car _e1338713415_))
                                            (_tl1338913420_
                                             (##cdr _e1338713415_)))
                                        (if (gx#stx-null? _tl1338913420_)
                                            ((lambda (_L13423_ _L13424_)
                                               (gx#stx-for-each1
                                                (lambda (_bind13439_)
                                                  (if (gx#identifier?
                                                       _bind13439_)
                                                      (gxc#add-module-binding!
                                                       _bind13439_
                                                       '#f)
                                                      '#!void))
                                                _L13424_))
                                             _hd1338813418_
                                             _hd1338513410_)
                                            (_g1337713394_ _g1337813397_))))
                                    (_g1337713394_ _g1337813397_))))
                            (_g1337713394_ _g1337813397_))))
                    (_g1337713394_ _g1337813397_)))))
        (_g1337613441_ _stx13375_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx13308_)
      (let* ((_g1331013327_
              (lambda (_g1331113324_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1331113324_)))
             (_g1330913372_
              (lambda (_g1331113330_)
                (if (gx#stx-pair? _g1331113330_)
                    (let ((_e1331413332_ (gx#stx-e _g1331113330_)))
                      (let ((_hd1331513335_ (##car _e1331413332_))
                            (_tl1331613337_ (##cdr _e1331413332_)))
                        (if (gx#stx-pair? _tl1331613337_)
                            (let ((_e1331713340_ (gx#stx-e _tl1331613337_)))
                              (let ((_hd1331813343_ (##car _e1331713340_))
                                    (_tl1331913345_ (##cdr _e1331713340_)))
                                (if (gx#stx-pair? _tl1331913345_)
                                    (let ((_e1332013348_
                                           (gx#stx-e _tl1331913345_)))
                                      (let ((_hd1332113351_
                                             (##car _e1332013348_))
                                            (_tl1332213353_
                                             (##cdr _e1332013348_)))
                                        (if (gx#stx-null? _tl1332213353_)
                                            ((lambda (_L13356_ _L13357_)
                                               (gxc#add-module-binding!
                                                _L13357_
                                                '#t))
                                             _hd1332113351_
                                             _hd1331813343_)
                                            (_g1331013327_ _g1331113330_))))
                                    (_g1331013327_ _g1331113330_))))
                            (_g1331013327_ _g1331113330_))))
                    (_g1331013327_ _g1331113330_)))))
        (_g1330913372_ _stx13308_))))
  (define gxc#lift-modules-module%
    (lambda (_stx13250_ _modules13251_)
      (let* ((_g1325313267_
              (lambda (_g1325413264_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1325413264_)))
             (_g1325213305_
              (lambda (_g1325413270_)
                (if (gx#stx-pair? _g1325413270_)
                    (let ((_e1325713272_ (gx#stx-e _g1325413270_)))
                      (let ((_hd1325813275_ (##car _e1325713272_))
                            (_tl1325913277_ (##cdr _e1325713272_)))
                        (if (gx#stx-pair? _tl1325913277_)
                            (let ((_e1326013280_ (gx#stx-e _tl1325913277_)))
                              (let ((_hd1326113283_ (##car _e1326013280_))
                                    (_tl1326213285_ (##cdr _e1326013280_)))
                                ((lambda (_L13288_ _L13289_)
                                   (let ((_ctx13302_
                                          (gx#syntax-local-e__0 _L13289_)))
                                     (set-box!
                                      _modules13251_
                                      (cons _ctx13302_ (unbox _modules13251_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#compile-e
                                         (##structure-ref
                                          _ctx13302_
                                          '11
                                          gx#module-context::t
                                          '#f)
                                         _modules13251_))
                                      gx#current-expander-context
                                      _ctx13302_)))
                                 _tl1326213285_
                                 _hd1326113283_)))
                            (_g1325313267_ _g1325413270_))))
                    (_g1325313267_ _g1325413270_)))))
        (_g1325213305_ _stx13250_))))
  (define gxc#add-module-binding!
    (lambda (_id13244_ _syntax?13245_)
      (let ((_eid13247_
             (##structure-ref
              (gx#resolve-identifier__0 _id13244_)
              '1
              gx#binding::t
              '#f))
            (_ht13248_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid13247_)
            '#!void
            (table-set!
             _ht13248_
             _eid13247_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid13247_)
              _syntax?13245_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id113237_ _id213238_)
      (letrec ((_symbol-e13240_
                (lambda (_id13242_)
                  (if (symbol? _id13242_)
                      _id13242_
                      (gxc#generate-runtime-binding-id _id13242_)))))
        (eq? (_symbol-e13240_ _id113237_) (_symbol-e13240_ _id213238_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id13215_)
      (let ((_$e13217_
             (if (##structure-direct-instance-of?
                  _id13215_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id13215_)
                 '#f)))
        (if _$e13217_
            ((lambda (_bind13220_)
               (let ((_eid13222_
                      (##structure-ref _bind13220_ '1 gx#binding::t '#f))
                     (_ht13223_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid13222_)
                     _eid13222_
                     (let ((_$e13225_ (table-ref _ht13223_ _eid13222_ '#f)))
                       (if _$e13225_
                           (values _$e13225_)
                           (if (##structure-instance-of?
                                _bind13220_
                                'gx#local-binding::t)
                               (let ((_gid13228_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid13222_)))
                                 (table-set! _ht13223_ _eid13222_ _gid13228_)
                                 _gid13228_)
                               (if (##structure-instance-of?
                                    _bind13220_
                                    'gx#module-binding::t)
                                   (let ((_gid13235_
                                          (let ((_$e13230_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind13220_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e13230_
                                                ((lambda (_ns13233_)
                                                   (make-symbol
                                                    _ns13233_
                                                    '"#"
                                                    _eid13222_))
                                                 _$e13230_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid13222_)))))
                                     (table-set!
                                      _ht13223_
                                      _eid13222_
                                      _gid13235_)
                                     _gid13235_)
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id13215_
                                    _eid13222_
                                    _bind13220_))))))))
             _$e13217_)
            (if (interned-symbol? (gx#stx-e _id13215_))
                (gx#stx-e _id13215_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id13215_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id13213_)
      (if (gx#identifier? _id13213_)
          (gxc#generate-runtime-binding-id _id13213_)
          (gxc#generate-runtime-temporary__0))))
  (define gxc#generate-runtime-gensym-reference__%
    (lambda (_sym13193_ _quote?13194_)
      (let* ((_ht13196_
              (##structure-ref
               (gxc#current-compile-symbol-table)
               '1
               gxc#symbol-table::t
               '#f))
             (_$e13198_ (table-ref _ht13196_ _sym13193_ '#f)))
        (if _$e13198_
            (values _$e13198_)
            (let ((_g13201_
                   (if _quote?13194_
                       (make-symbol
                        '"__"
                        _sym13193_
                        '"__"
                        (gxc#current-compile-timestamp))
                       (make-symbol '"_" _sym13193_ '"_"))))
              (table-set! _ht13196_ _sym13193_ _g13201_)
              _g13201_)))))
  (define gxc#generate-runtime-gensym-reference__0
    (lambda (_sym13206_)
      (let ((_quote?13208_ '#f))
        (gxc#generate-runtime-gensym-reference__% _sym13206_ _quote?13208_))))
  (define gxc#generate-runtime-gensym-reference
    (lambda _g15489_
      (let ((_g15488_ (length _g15489_)))
        (cond ((##fx= _g15488_ 1)
               (apply gxc#generate-runtime-gensym-reference__0 _g15489_))
              ((##fx= _g15488_ 2)
               (apply gxc#generate-runtime-gensym-reference__% _g15489_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-gensym-reference
                _g15489_))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id13190_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id13190_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key13150_)
      (if (interned-symbol? _key13150_)
          _key13150_
          (if (uninterned-symbol? _key13150_)
              (gxc#generate-runtime-gensym-reference__0 _key13150_)
              (let* ((_key1315113158_ _key13150_)
                     (_E1315313162_
                      (lambda ()
                        (error '"No clause matching" _key1315113158_)))
                     (_K1315413178_
                      (lambda (_mark13165_ _eid13166_)
                        (let ((_$e13168_
                               (##structure-ref
                                _mark13165_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e13168_
                              ((lambda (_ht13171_)
                                 (let ((_$e13173_
                                        (table-ref _ht13171_ _eid13166_ '#f)))
                                   (if _$e13173_
                                       ((lambda (_id13176_)
                                          (if (interned-symbol? _id13176_)
                                              _id13176_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id13176_)))
                                        _$e13173_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid13166_))))
                               _$e13168_)
                              (gxc#generate-runtime-identifier-key
                               _eid13166_))))))
                (if (##pair? _key1315113158_)
                    (let ((_hd1315513181_ (##car _key1315113158_))
                          (_tl1315613183_ (##cdr _key1315113158_)))
                      (let* ((_eid13186_ _hd1315513181_)
                             (_mark13188_ _tl1315613183_))
                        (_K1315413178_ _mark13188_ _eid13186_)))
                    (_E1315313162_)))))))
  (define gxc#generate-runtime-temporary__%
    (lambda (_top13137_)
      (if _top13137_
          (let ((_ns13139_
                 (##structure-ref
                  (gx#core-context-top__1 (gx#current-expander-context))
                  '6
                  gx#module-context::t
                  '#f))
                (_phi13140_ (gx#current-expander-phi)))
            (if (fxpositive? _phi13140_)
                (make-symbol
                 _ns13139_
                 '"["
                 (number->string _phi13140_)
                 '"]#_"
                 (gensym)
                 '"_")
                (make-symbol _ns13139_ '"#_" (gensym) '"_")))
          (make-symbol '"_" (gensym) '"_"))))
  (define gxc#generate-runtime-temporary__0
    (lambda ()
      (let ((_top13146_ '#f)) (gxc#generate-runtime-temporary__% _top13146_))))
  (define gxc#generate-runtime-temporary
    (lambda _g15491_
      (let ((_g15490_ (length _g15491_)))
        (cond ((##fx= _g15490_ 0)
               (apply gxc#generate-runtime-temporary__0 _g15491_))
              ((##fx= _g15490_ 1)
               (apply gxc#generate-runtime-temporary__% _g15491_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-temporary
                _g15491_))))))
  (define gxc#generate-runtime-empty (lambda (_stx13134_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx12986_)
      (letrec ((_simplify12988_
                (lambda (_body13032_)
                  (let _lp13034_ ((_rest13036_ _body13032_) (_r13037_ '()))
                    (let* ((_rest1303813046_ _rest13036_)
                           (_else1304013054_ (lambda () (reverse _r13037_)))
                           (_K1304213122_
                            (lambda (_rest13057_ _hd13058_)
                              (let* ((_hd1305913075_ _hd13058_)
                                     (_else1306313083_
                                      (lambda ()
                                        (_lp13034_
                                         _rest13057_
                                         (cons _hd13058_ _r13037_)))))
                                (let ((_K1307113112_
                                       (lambda (_exprs13110_)
                                         (_lp13034_
                                          (foldr1 cons
                                                  _rest13057_
                                                  _exprs13110_)
                                          _r13037_)))
                                      (_K1306613096_
                                       (lambda ()
                                         (if (null? _rest13057_)
                                             (_lp13034_
                                              _rest13057_
                                              (cons _hd13058_ _r13037_))
                                             (_lp13034_
                                              _rest13057_
                                              _r13037_))))
                                      (_K1306513088_
                                       (lambda ()
                                         (if (null? _rest13057_)
                                             (_lp13034_
                                              _rest13057_
                                              (cons _hd13058_ _r13037_))
                                             (_lp13034_
                                              _rest13057_
                                              _r13037_)))))
                                  (let ((_try-match1306213091_
                                         (lambda ()
                                           (if (symbol? _hd1305913075_)
                                               (_K1306513088_)
                                               (_else1306313083_)))))
                                    (if (##pair? _hd1305913075_)
                                        (let ((_tl1307313117_
                                               (##cdr _hd1305913075_))
                                              (_hd1307213115_
                                               (##car _hd1305913075_)))
                                          (if (##eq? _hd1307213115_ 'begin)
                                              (let ((_exprs13120_
                                                     _tl1307313117_))
                                                (_K1307113112_ _exprs13120_))
                                              (if (##eq? _hd1307213115_ 'quote)
                                                  (if (##pair? _tl1307313117_)
                                                      (let ((_tl1307013104_
                                                             (##cdr _tl1307313117_)))
                                                        (if (##null? _tl1307013104_)
                                                            (_K1306613096_)
                                                            (_try-match1306213091_)))
                                                      (_try-match1306213091_))
                                                  (_try-match1306213091_))))
                                        (_try-match1306213091_))))))))
                      (if (##pair? _rest1303813046_)
                          (let ((_hd1304313125_ (##car _rest1303813046_))
                                (_tl1304413127_ (##cdr _rest1303813046_)))
                            (let* ((_hd13130_ _hd1304313125_)
                                   (_rest13132_ _tl1304413127_))
                              (_K1304213122_ _rest13132_ _hd13130_)))
                          (_else1304013054_)))))))
        (let* ((_g1299013000_
                (lambda (_g1299112997_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1299112997_)))
               (_g1298913029_
                (lambda (_g1299113003_)
                  (if (gx#stx-pair? _g1299113003_)
                      (let ((_e1299313005_ (gx#stx-e _g1299113003_)))
                        (let ((_hd1299413008_ (##car _e1299313005_))
                              (_tl1299513010_ (##cdr _e1299313005_)))
                          ((lambda (_L13013_)
                             (let* ((_body13024_ (map gxc#compile-e _L13013_))
                                    (_body13026_
                                     (_simplify12988_ _body13024_)))
                               (if (fx= (length _body13026_) '1)
                                   (car _body13026_)
                                   (cons 'begin _body13026_))))
                           _tl1299513010_)))
                      (_g1299013000_ _g1299113003_)))))
          (_g1298913029_ _stx12986_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx12948_)
      (let* ((_g1295012960_
              (lambda (_g1295112957_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1295112957_)))
             (_g1294912983_
              (lambda (_g1295112963_)
                (if (gx#stx-pair? _g1295112963_)
                    (let ((_e1295312965_ (gx#stx-e _g1295112963_)))
                      (let ((_hd1295412968_ (##car _e1295312965_))
                            (_tl1295512970_ (##cdr _e1295312965_)))
                        ((lambda (_L12973_)
                           (cons 'begin (gx#syntax->datum _L12973_)))
                         _tl1295512970_)))
                    (_g1295012960_ _g1295112963_)))))
        (_g1294912983_ _stx12948_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx12825_)
      (let* ((___stx1454614547_ _stx12825_)
             (_g1282812856_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1454614547_))))
        (let ((___kont1454814549_
               (lambda (_L12930_ _L12931_) (gxc#compile-e _L12930_)))
              (___kont1455014551_
               (lambda (_L12885_ _L12886_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L12886_))
                             (cons (gxc#compile-e _L12885_) '()))))))
          (let ((___match1457114572_
                 (lambda (_e1283212906_
                          _hd1283312909_
                          _tl1283412911_
                          _e1283512914_
                          _hd1283612917_
                          _tl1283712919_
                          _e1283812922_
                          _hd1283912925_
                          _tl1284012927_)
                   (let ((_L12930_ _hd1283912925_) (_L12931_ _hd1283612917_))
                     (if (gx#identifier? _L12931_)
                         (___kont1454814549_ _L12930_ _L12931_)
                         (___kont1455014551_
                          _hd1283912925_
                          _hd1283612917_))))))
            (if (gx#stx-pair? ___stx1454614547_)
                (let ((_e1283212906_ (gx#stx-e ___stx1454614547_)))
                  (let ((_tl1283412911_ (##cdr _e1283212906_))
                        (_hd1283312909_ (##car _e1283212906_)))
                    (if (gx#stx-pair? _tl1283412911_)
                        (let ((_e1283512914_ (gx#stx-e _tl1283412911_)))
                          (let ((_tl1283712919_ (##cdr _e1283512914_))
                                (_hd1283612917_ (##car _e1283512914_)))
                            (if (gx#stx-pair? _tl1283712919_)
                                (let ((_e1283812922_
                                       (gx#stx-e _tl1283712919_)))
                                  (let ((_tl1284012927_ (##cdr _e1283812922_))
                                        (_hd1283912925_ (##car _e1283812922_)))
                                    (if (gx#stx-null? _tl1284012927_)
                                        (___match1457114572_
                                         _e1283212906_
                                         _hd1283312909_
                                         _tl1283412911_
                                         _e1283512914_
                                         _hd1283612917_
                                         _tl1283712919_
                                         _e1283812922_
                                         _hd1283912925_
                                         _tl1284012927_)
                                        (_g1282812856_))))
                                (_g1282812856_))))
                        (_g1282812856_))))
                (_g1282812856_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx12787_)
      (let* ((_g1278912799_
              (lambda (_g1279012796_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1279012796_)))
             (_g1278812822_
              (lambda (_g1279012802_)
                (if (gx#stx-pair? _g1279012802_)
                    (let ((_e1279212804_ (gx#stx-e _g1279012802_)))
                      (let ((_hd1279312807_ (##car _e1279212804_))
                            (_tl1279412809_ (##cdr _e1279212804_)))
                        ((lambda (_L12812_)
                           (cons 'declare (map gx#syntax->datum _L12812_)))
                         _tl1279412809_)))
                    (_g1278912799_ _g1279012802_)))))
        (_g1278812822_ _stx12787_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx12534_)
      (let* ((_g1253612553_
              (lambda (_g1253712550_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1253712550_)))
             (_g1253512784_
              (lambda (_g1253712556_)
                (if (gx#stx-pair? _g1253712556_)
                    (let ((_e1254012558_ (gx#stx-e _g1253712556_)))
                      (let ((_hd1254112561_ (##car _e1254012558_))
                            (_tl1254212563_ (##cdr _e1254012558_)))
                        (if (gx#stx-pair? _tl1254212563_)
                            (let ((_e1254312566_ (gx#stx-e _tl1254212563_)))
                              (let ((_hd1254412569_ (##car _e1254312566_))
                                    (_tl1254512571_ (##cdr _e1254312566_)))
                                (if (gx#stx-pair? _tl1254512571_)
                                    (let ((_e1254612574_
                                           (gx#stx-e _tl1254512571_)))
                                      (let ((_hd1254712577_
                                             (##car _e1254612574_))
                                            (_tl1254812579_
                                             (##cdr _e1254612574_)))
                                        (if (gx#stx-null? _tl1254812579_)
                                            ((lambda (_L12582_ _L12583_)
                                               (let* ((___stx1462414625_
                                                       _L12583_)
                                                      (_g1260012614_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1462414625_))))
                                                 (let ((___kont1462614627_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L12582_)))
                                                       (___kont1462814629_
                                                        (lambda (_L12746_)
                                                          (let ((_eid12755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L12746_)))
                    (let ((_lambda-expr1275612758_
                           (gxc#apply-find-lambda-expression _L12582_)))
                      (if _lambda-expr1275612758_
                          (let ((_lambda-expr12761_ _lambda-expr1275612758_))
                            (table-set!
                             (gxc#current-compile-runtime-names)
                             _lambda-expr12761_
                             _eid12755_))
                          '#f))
                    (cons 'define
                          (cons _eid12755_
                                (cons (gxc#compile-e _L12582_) '()))))))
               (___kont1463014631_
                (lambda ()
                  (let* ((_tmp12621_ (gxc#generate-runtime-temporary__% '#t))
                         (_body12730_
                          (let _lp12623_ ((_rest12625_ _L12583_)
                                          (_k12626_ '0)
                                          (_r12627_ '()))
                            (let* ((___stx1459414595_ _rest12625_)
                                   (_g1263212649_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1459414595_))))
                              (let ((___kont1459614597_
                                     (lambda (_L12717_)
                                       (_lp12623_
                                        _L12717_
                                        (fx+ _k12626_ '1)
                                        _r12627_)))
                                    (___kont1459814599_
                                     (lambda (_L12690_ _L12691_)
                                       (_lp12623_
                                        _L12690_
                                        (fx+ _k12626_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L12691_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp12621_
                         _k12626_
                         _L12690_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r12627_))))
                                    (___kont1460014601_
                                     (lambda (_L12661_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12661_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp12621_
                                _k12626_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r12627_)))
                                    (___kont1460214603_
                                     (lambda () (reverse _r12627_))))
                                (let ((_g1263012677_
                                       (lambda ()
                                         (let ((_L12661_ ___stx1459414595_))
                                           (if (gx#identifier? _L12661_)
                                               (___kont1460014601_ _L12661_)
                                               (___kont1460214603_))))))
                                  (if (gx#stx-pair? ___stx1459414595_)
                                      (let ((_e1263512706_
                                             (gx#stx-e ___stx1459414595_)))
                                        (let ((_tl1263712711_
                                               (##cdr _e1263512706_))
                                              (_hd1263612709_
                                               (##car _e1263512706_)))
                                          (if (gx#stx-datum? _hd1263612709_)
                                              (let ((_e1263812714_
                                                     (gx#stx-e
                                                      _hd1263612709_)))
                                                (if (equal? _e1263812714_ '#f)
                                                    (___kont1459614597_
                                                     _tl1263712711_)
                                                    (___kont1459814599_
                                                     _tl1263712711_
                                                     _hd1263612709_)))
                                              (___kont1459814599_
                                               _tl1263712711_
                                               _hd1263612709_))))
                                      (_g1263012677_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp12621_
                                            (cons (gxc#compile-e _L12582_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp12621_
                                       _L12583_
                                       _L12582_)
                                      _body12730_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1462414625_)
                                                       (let ((_e1260212768_
                                                              (gx#stx-e
                                                               ___stx1462414625_)))
                                                         (let ((_tl1260412773_
                                                                (##cdr _e1260212768_))
                                                               (_hd1260312771_
                                                                (##car _e1260212768_)))
                                                           (if (gx#stx-datum?
                                                                _hd1260312771_)
                                                               (let ((_e1260512776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1260312771_)))
                         (if (equal? _e1260512776_ '#f)
                             (if (gx#stx-null? _tl1260412773_)
                                 (___kont1462614627_)
                                 (___kont1463014631_))
                             (if (gx#stx-null? _tl1260412773_)
                                 (___kont1462814629_ _hd1260312771_)
                                 (___kont1463014631_))))
                       (if (gx#stx-null? _tl1260412773_)
                           (___kont1462814629_ _hd1260312771_)
                           (___kont1463014631_)))))
               (___kont1463014631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1254712577_
                                             _hd1254412569_)
                                            (_g1253612553_ _g1253712556_))))
                                    (_g1253612553_ _g1253712556_))))
                            (_g1253612553_ _g1253712556_))))
                    (_g1253612553_ _g1253712556_)))))
        (_g1253512784_ _stx12534_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals12510_ _hd12511_ _expr12512_)
      (let ((_$e12514_ (gxc#apply-count-values _expr12512_)))
        (if _$e12514_
            ((lambda (_count12517_)
               (let ((_len12519_ (gx#stx-length _hd12511_))
                     (_cmp12520_ (if (gx#stx-list? _hd12511_) fx= fx>=)))
                 (if (or (fx= _len12519_ '0)
                         (_cmp12520_ _count12517_ _len12519_))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr12512_
                      _hd12511_))))
             _$e12514_)
            (let* ((_len12525_ (gx#stx-length _hd12511_))
                   (_cmp12527_ (if (gx#stx-list? _hd12511_) '##fx= '##fx>=))
                   (_errmsg12529_
                    (string-append
                     (if (gx#stx-list? _hd12511_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len12525_)
                     '" values"))
                   (_count12531_ (gxc#generate-runtime-temporary__0)))
              (if (and (not (gx#stx-list? _hd12511_)) (fx= _len12525_ '0))
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count12531_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals12510_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp12527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12531_ (cons _len12525_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg12529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12531_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var12508_)
      (cons 'if
            (cons (cons '##values? (cons _var12508_ '()))
                  (cons (cons '##vector-length (cons _var12508_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var12504_ _i12505_ _rest12506_)
      (if (and (fx= _i12505_ '0) (not (gx#stx-pair? _rest12506_)))
          (cons 'if
                (cons (cons '##values? (cons _var12504_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var12504_ (cons '0 '())))
                            (cons _var12504_ '()))))
          (cons '##vector-ref (cons _var12504_ (cons _i12505_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var12501_ _i12502_)
      (if (fx= _i12502_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var12501_ '()))
                      (cons (cons '##vector->list (cons _var12501_ '()))
                            (cons (cons 'list (cons _var12501_ '())) '()))))
          (if (fx= _i12502_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var12501_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var12501_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var12501_ '()))
                          (cons _i12502_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx12434_)
      (let* ((_g1243612453_
              (lambda (_g1243712450_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1243712450_)))
             (_g1243512498_
              (lambda (_g1243712456_)
                (if (gx#stx-pair? _g1243712456_)
                    (let ((_e1244012458_ (gx#stx-e _g1243712456_)))
                      (let ((_hd1244112461_ (##car _e1244012458_))
                            (_tl1244212463_ (##cdr _e1244012458_)))
                        (if (gx#stx-pair? _tl1244212463_)
                            (let ((_e1244312466_ (gx#stx-e _tl1244212463_)))
                              (let ((_hd1244412469_ (##car _e1244312466_))
                                    (_tl1244512471_ (##cdr _e1244312466_)))
                                (if (gx#stx-pair? _tl1244512471_)
                                    (let ((_e1244612474_
                                           (gx#stx-e _tl1244512471_)))
                                      (let ((_hd1244712477_
                                             (##car _e1244612474_))
                                            (_tl1244812479_
                                             (##cdr _e1244612474_)))
                                        (if (gx#stx-null? _tl1244812479_)
                                            ((lambda (_L12482_ _L12483_)
                                               (gxc#generate-runtime-lambda-form
                                                _L12483_
                                                _L12482_))
                                             _hd1244712477_
                                             _hd1244412469_)
                                            (_g1243612453_ _g1243712456_))))
                                    (_g1243612453_ _g1243712456_))))
                            (_g1243612453_ _g1243712456_))))
                    (_g1243612453_ _g1243712456_)))))
        (_g1243512498_ _stx12434_))))
  (define gxc#generate-runtime-lambda-form
    (lambda (_hd12394_ _body12395_)
      (let* ((_hd12397_ (gxc#generate-runtime-lambda-head _hd12394_))
             (_body12399_ (gxc#compile-e _body12395_))
             (_body12431_
              (let* ((_body1240012408_ _body12399_)
                     (_else1240212416_ (lambda () (cons _body12399_ '())))
                     (_K1240412421_ (lambda (_exprs12419_) _exprs12419_)))
                (if (##pair? _body1240012408_)
                    (let ((_hd1240512424_ (##car _body1240012408_))
                          (_tl1240612426_ (##cdr _body1240012408_)))
                      (if (##eq? _hd1240512424_ 'begin)
                          (let ((_exprs12429_ _tl1240612426_))
                            (_K1240412421_ _exprs12429_))
                          (_else1240212416_)))
                    (_else1240212416_)))))
        (cons 'lambda (cons _hd12397_ _body12431_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd12392_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd12392_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx10935_)
      (letrec ((_dispatch-case?10937_
                (lambda (_hd11622_ _body11623_)
                  (let* ((_form11625_ (cons _hd11622_ (cons _body11623_ '())))
                         (___stx1465614657_ _form11625_)
                         (_g1163011787_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1465614657_))))
                    (let ((___kont1465814659_
                           (lambda (_L12312_ _L12313_ _L12314_) '#t))
                          (___kont1466414665_
                           (lambda (_L12100_
                                    _L12101_
                                    _L12102_
                                    _L12103_
                                    _L12104_
                                    _L12105_)
                             '#t))
                          (___kont1467014671_
                           (lambda (_L11895_ _L11896_ _L11897_ _L11898_) '#t))
                          (___kont1467214673_ (lambda () '#f)))
                      (let* ((___match1479714798_
                              (lambda (_e1174711799_
                                       _hd1174811802_
                                       _tl1174911804_
                                       _e1175011807_
                                       _hd1175111810_
                                       _tl1175211812_
                                       _e1175311815_
                                       _hd1175411818_
                                       _tl1175511820_
                                       _e1175611823_
                                       _hd1175711826_
                                       _tl1175811828_
                                       _e1175911831_
                                       _hd1176011834_
                                       _tl1176111836_
                                       _e1176211839_
                                       _hd1176311842_
                                       _tl1176411844_
                                       _e1176511847_
                                       _hd1176611850_
                                       _tl1176711852_
                                       _e1176811855_
                                       _hd1176911858_
                                       _tl1177011860_
                                       _e1177111863_
                                       _hd1177211866_
                                       _tl1177311868_
                                       _e1177411871_
                                       _hd1177511874_
                                       _tl1177611876_
                                       _e1177711879_
                                       _hd1177811882_
                                       _tl1177911884_
                                       _e1178011887_
                                       _hd1178111890_
                                       _tl1178211892_)
                                (let ((_L11895_ _hd1178111890_)
                                      (_L11896_ _hd1177211866_)
                                      (_L11897_ _hd1176311842_)
                                      (_L11898_ _hd1174811802_))
                                  (if (and (gx#identifier? _L11898_)
                                           (gxc#runtime-identifier=?
                                            _L11897_
                                            'apply)
                                           (gx#free-identifier=?
                                            _L11898_
                                            _L11895_)
                                           (not (gx#free-identifier=?
                                                 _L11896_
                                                 _L11898_)))
                                      (___kont1467014671_
                                       _L11895_
                                       _L11896_
                                       _L11897_
                                       _L11898_)
                                      (___kont1467214673_)))))
                             (___match1476914770_
                              (lambda (_e1174711799_
                                       _hd1174811802_
                                       _tl1174911804_
                                       _e1175011807_
                                       _hd1175111810_
                                       _tl1175211812_
                                       _e1175311815_
                                       _hd1175411818_
                                       _tl1175511820_
                                       _e1175611823_
                                       _hd1175711826_
                                       _tl1175811828_
                                       _e1175911831_
                                       _hd1176011834_
                                       _tl1176111836_
                                       _e1176211839_
                                       _hd1176311842_
                                       _tl1176411844_
                                       _e1176511847_
                                       _hd1176611850_
                                       _tl1176711852_
                                       _e1176811855_
                                       _hd1176911858_
                                       _tl1177011860_
                                       _e1177111863_
                                       _hd1177211866_
                                       _tl1177311868_)
                                (if (gx#stx-pair? _tl1176711852_)
                                    (let ((_e1177411871_
                                           (gx#stx-e _tl1176711852_)))
                                      (let ((_tl1177611876_
                                             (##cdr _e1177411871_))
                                            (_hd1177511874_
                                             (##car _e1177411871_)))
                                        (if (gx#stx-pair? _hd1177511874_)
                                            (let ((_e1177711879_
                                                   (gx#stx-e _hd1177511874_)))
                                              (let ((_tl1177911884_
                                                     (##cdr _e1177711879_))
                                                    (_hd1177811882_
                                                     (##car _e1177711879_)))
                                                (if (gx#identifier?
                                                     _hd1177811882_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1177811882_)
                                                        (if (gx#stx-pair?
                                                             _tl1177911884_)
                                                            (let ((_e1178011887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1177911884_)))
                      (let ((_tl1178211892_ (##cdr _e1178011887_))
                            (_hd1178111890_ (##car _e1178011887_)))
                        (if (gx#stx-null? _tl1178211892_)
                            (if (gx#stx-null? _tl1177611876_)
                                (if (gx#stx-null? _tl1175211812_)
                                    (___match1479714798_
                                     _e1174711799_
                                     _hd1174811802_
                                     _tl1174911804_
                                     _e1175011807_
                                     _hd1175111810_
                                     _tl1175211812_
                                     _e1175311815_
                                     _hd1175411818_
                                     _tl1175511820_
                                     _e1175611823_
                                     _hd1175711826_
                                     _tl1175811828_
                                     _e1175911831_
                                     _hd1176011834_
                                     _tl1176111836_
                                     _e1176211839_
                                     _hd1176311842_
                                     _tl1176411844_
                                     _e1176511847_
                                     _hd1176611850_
                                     _tl1176711852_
                                     _e1176811855_
                                     _hd1176911858_
                                     _tl1177011860_
                                     _e1177111863_
                                     _hd1177211866_
                                     _tl1177311868_
                                     _e1177411871_
                                     _hd1177511874_
                                     _tl1177611876_
                                     _e1177711879_
                                     _hd1177811882_
                                     _tl1177911884_
                                     _e1178011887_
                                     _hd1178111890_
                                     _tl1178211892_)
                                    (___kont1467214673_))
                                (___kont1467214673_))
                            (___kont1467214673_))))
                    (___kont1467214673_))
                (___kont1467214673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1467214673_))))
                                            (___kont1467214673_))))
                                    (___kont1467214673_))))
                             (___match1469914700_
                              (lambda (_e1168311940_
                                       _hd1168411943_
                                       _tl1168511945_
                                       ___splice1466614667_
                                       _target1168611948_
                                       _tl1168811950_)
                                (letrec ((_loop1168911953_
                                          (lambda (_hd1168711956_
                                                   _arg1169311958_)
                                            (if (gx#stx-pair? _hd1168711956_)
                                                (let ((_e1169011961_
                                                       (gx#stx-e
                                                        _hd1168711956_)))
                                                  (let ((_lp-tl1169211966_
                                                         (##cdr _e1169011961_))
                                                        (_lp-hd1169111964_
                                                         (##car _e1169011961_)))
                                                    (_loop1168911953_
                                                     _lp-tl1169211966_
                                                     (cons _lp-hd1169111964_
                                                           _arg1169311958_))))
                                                (let ((_arg1169411969_
                                                       (reverse _arg1169311958_)))
                                                  (if (gx#stx-pair?
                                                       _tl1168511945_)
                                                      (let ((_e1169511972_
                                                             (gx#stx-e
                                                              _tl1168511945_)))
                                                        (let ((_tl1169711977_
                                                               (##cdr _e1169511972_))
                                                              (_hd1169611975_
                                                               (##car _e1169511972_)))
                                                          (if (gx#stx-pair?
                                                               _hd1169611975_)
                                                              (let ((_e1169811980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1169611975_)))
                        (let ((_tl1170011985_ (##cdr _e1169811980_))
                              (_hd1169911983_ (##car _e1169811980_)))
                          (if (gx#identifier? _hd1169911983_)
                              (if (gx#stx-eq? '%#call _hd1169911983_)
                                  (if (gx#stx-pair? _tl1170011985_)
                                      (let ((_e1170111988_
                                             (gx#stx-e _tl1170011985_)))
                                        (let ((_tl1170311993_
                                               (##cdr _e1170111988_))
                                              (_hd1170211991_
                                               (##car _e1170111988_)))
                                          (if (gx#stx-pair? _hd1170211991_)
                                              (let ((_e1170411996_
                                                     (gx#stx-e
                                                      _hd1170211991_)))
                                                (let ((_tl1170612001_
                                                       (##cdr _e1170411996_))
                                                      (_hd1170511999_
                                                       (##car _e1170411996_)))
                                                  (if (gx#identifier?
                                                       _hd1170511999_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1170511999_)
                                                          (if (gx#stx-pair?
                                                               _tl1170612001_)
                                                              (let ((_e1170712004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1170612001_)))
                        (let ((_tl1170912009_ (##cdr _e1170712004_))
                              (_hd1170812007_ (##car _e1170712004_)))
                          (if (gx#stx-null? _tl1170912009_)
                              (if (gx#stx-pair? _tl1170311993_)
                                  (let ((_e1171012012_
                                         (gx#stx-e _tl1170311993_)))
                                    (let ((_tl1171212017_
                                           (##cdr _e1171012012_))
                                          (_hd1171112015_
                                           (##car _e1171012012_)))
                                      (if (gx#stx-pair? _hd1171112015_)
                                          (let ((_e1171312020_
                                                 (gx#stx-e _hd1171112015_)))
                                            (let ((_tl1171512025_
                                                   (##cdr _e1171312020_))
                                                  (_hd1171412023_
                                                   (##car _e1171312020_)))
                                              (if (gx#identifier?
                                                   _hd1171412023_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1171412023_)
                                                      (if (gx#stx-pair?
                                                           _tl1171512025_)
                                                          (let ((_e1171612028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1171512025_)))
                    (let ((_tl1171812033_ (##cdr _e1171612028_))
                          (_hd1171712031_ (##car _e1171612028_)))
                      (if (gx#stx-null? _tl1171812033_)
                          (if (gx#stx-pair/null? _tl1171212017_)
                              (if (fx>= (gx#stx-length _tl1171212017_) '1)
                                  (let ((___splice1466814669_
                                         (gx#syntax-split-splice
                                          _tl1171212017_
                                          '1)))
                                    (let ((_tl1172112038_
                                           (##vector-ref
                                            ___splice1466814669_
                                            '1))
                                          (_target1171912036_
                                           (##vector-ref
                                            ___splice1466814669_
                                            '0)))
                                      (if (gx#stx-pair? _tl1172112038_)
                                          (let ((_e1172812041_
                                                 (gx#stx-e _tl1172112038_)))
                                            (let ((_tl1173012046_
                                                   (##cdr _e1172812041_))
                                                  (_hd1172912044_
                                                   (##car _e1172812041_)))
                                              (if (gx#stx-pair? _hd1172912044_)
                                                  (let ((_e1173112049_
                                                         (gx#stx-e
                                                          _hd1172912044_)))
                                                    (let ((_tl1173312054_
                                                           (##cdr _e1173112049_))
                                                          (_hd1173212052_
                                                           (##car _e1173112049_)))
                                                      (if (gx#identifier?
                                                           _hd1173212052_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1173212052_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1173312054_)
                          (let ((_e1173412057_ (gx#stx-e _tl1173312054_)))
                            (let ((_tl1173612062_ (##cdr _e1173412057_))
                                  (_hd1173512060_ (##car _e1173412057_)))
                              (if (gx#stx-null? _tl1173612062_)
                                  (if (gx#stx-null? _tl1173012046_)
                                      (letrec ((_loop1172212065_
                                                (lambda (_hd1172012068_
                                                         _xarg1172612070_)
                                                  (if (gx#stx-pair?
                                                       _hd1172012068_)
                                                      (let ((_e1172312073_
                                                             (gx#stx-e
                                                              _hd1172012068_)))
                                                        (let ((_lp-tl1172512078_
                                                               (##cdr _e1172312073_))
                                                              (_lp-hd1172412076_
                                                               (##car _e1172312073_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1172412076_)
                                                              (let ((_e1173712081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1172412076_)))
                        (let ((_tl1173912086_ (##cdr _e1173712081_))
                              (_hd1173812084_ (##car _e1173712081_)))
                          (if (gx#identifier? _hd1173812084_)
                              (if (gx#stx-eq? '%#ref _hd1173812084_)
                                  (if (gx#stx-pair? _tl1173912086_)
                                      (let ((_e1174012089_
                                             (gx#stx-e _tl1173912086_)))
                                        (let ((_tl1174212094_
                                               (##cdr _e1174012089_))
                                              (_hd1174112092_
                                               (##car _e1174012089_)))
                                          (if (gx#stx-null? _tl1174212094_)
                                              (_loop1172212065_
                                               _lp-tl1172512078_
                                               (cons _hd1174112092_
                                                     _xarg1172612070_))
                                              (___match1476914770_
                                               _e1168311940_
                                               _hd1168411943_
                                               _tl1168511945_
                                               _e1169511972_
                                               _hd1169611975_
                                               _tl1169711977_
                                               _e1169811980_
                                               _hd1169911983_
                                               _tl1170011985_
                                               _e1170111988_
                                               _hd1170211991_
                                               _tl1170311993_
                                               _e1170411996_
                                               _hd1170511999_
                                               _tl1170612001_
                                               _e1170712004_
                                               _hd1170812007_
                                               _tl1170912009_
                                               _e1171012012_
                                               _hd1171112015_
                                               _tl1171212017_
                                               _e1171312020_
                                               _hd1171412023_
                                               _tl1171512025_
                                               _e1171612028_
                                               _hd1171712031_
                                               _tl1171812033_))))
                                      (___match1476914770_
                                       _e1168311940_
                                       _hd1168411943_
                                       _tl1168511945_
                                       _e1169511972_
                                       _hd1169611975_
                                       _tl1169711977_
                                       _e1169811980_
                                       _hd1169911983_
                                       _tl1170011985_
                                       _e1170111988_
                                       _hd1170211991_
                                       _tl1170311993_
                                       _e1170411996_
                                       _hd1170511999_
                                       _tl1170612001_
                                       _e1170712004_
                                       _hd1170812007_
                                       _tl1170912009_
                                       _e1171012012_
                                       _hd1171112015_
                                       _tl1171212017_
                                       _e1171312020_
                                       _hd1171412023_
                                       _tl1171512025_
                                       _e1171612028_
                                       _hd1171712031_
                                       _tl1171812033_))
                                  (___match1476914770_
                                   _e1168311940_
                                   _hd1168411943_
                                   _tl1168511945_
                                   _e1169511972_
                                   _hd1169611975_
                                   _tl1169711977_
                                   _e1169811980_
                                   _hd1169911983_
                                   _tl1170011985_
                                   _e1170111988_
                                   _hd1170211991_
                                   _tl1170311993_
                                   _e1170411996_
                                   _hd1170511999_
                                   _tl1170612001_
                                   _e1170712004_
                                   _hd1170812007_
                                   _tl1170912009_
                                   _e1171012012_
                                   _hd1171112015_
                                   _tl1171212017_
                                   _e1171312020_
                                   _hd1171412023_
                                   _tl1171512025_
                                   _e1171612028_
                                   _hd1171712031_
                                   _tl1171812033_))
                              (___match1476914770_
                               _e1168311940_
                               _hd1168411943_
                               _tl1168511945_
                               _e1169511972_
                               _hd1169611975_
                               _tl1169711977_
                               _e1169811980_
                               _hd1169911983_
                               _tl1170011985_
                               _e1170111988_
                               _hd1170211991_
                               _tl1170311993_
                               _e1170411996_
                               _hd1170511999_
                               _tl1170612001_
                               _e1170712004_
                               _hd1170812007_
                               _tl1170912009_
                               _e1171012012_
                               _hd1171112015_
                               _tl1171212017_
                               _e1171312020_
                               _hd1171412023_
                               _tl1171512025_
                               _e1171612028_
                               _hd1171712031_
                               _tl1171812033_))))
                      (___match1476914770_
                       _e1168311940_
                       _hd1168411943_
                       _tl1168511945_
                       _e1169511972_
                       _hd1169611975_
                       _tl1169711977_
                       _e1169811980_
                       _hd1169911983_
                       _tl1170011985_
                       _e1170111988_
                       _hd1170211991_
                       _tl1170311993_
                       _e1170411996_
                       _hd1170511999_
                       _tl1170612001_
                       _e1170712004_
                       _hd1170812007_
                       _tl1170912009_
                       _e1171012012_
                       _hd1171112015_
                       _tl1171212017_
                       _e1171312020_
                       _hd1171412023_
                       _tl1171512025_
                       _e1171612028_
                       _hd1171712031_
                       _tl1171812033_))))
              (let ((_xarg1172712097_ (reverse _xarg1172612070_)))
                (if (gx#stx-null? _tl1169711977_)
                    (let ((_L12100_ _hd1173512060_)
                          (_L12101_ _xarg1172712097_)
                          (_L12102_ _hd1171712031_)
                          (_L12103_ _hd1170812007_)
                          (_L12104_ _tl1168811950_)
                          (_L12105_ _arg1169411969_))
                      (if (and (gx#identifier-list?
                                (foldr1 (lambda (_g1214812151_ _g1214912153_)
                                          (cons _g1214812151_ _g1214912153_))
                                        '()
                                        _L12105_))
                               (gx#identifier? _L12104_)
                               (gxc#runtime-identifier=? _L12103_ 'apply)
                               (fx= (length (foldr1 (lambda (_g1215512158_
                                                             _g1215612160_)
                                                      (cons _g1215512158_
                                                            _g1215612160_))
                                                    '()
                                                    _L12105_))
                                    (length (foldr1 (lambda (_g1216212165_
                                                             _g1216312167_)
                                                      (cons _g1216212165_
                                                            _g1216312167_))
                                                    '()
                                                    _L12101_)))
                               (andmap2 gx#free-identifier=?
                                        (foldr1 (lambda (_g1216912172_
                                                         _g1217012174_)
                                                  (cons _g1216912172_
                                                        _g1217012174_))
                                                '()
                                                _L12105_)
                                        (foldr1 (lambda (_g1217612179_
                                                         _g1217712181_)
                                                  (cons _g1217612179_
                                                        _g1217712181_))
                                                '()
                                                _L12101_))
                               (gx#free-identifier=? _L12104_ _L12100_)
                               (not (find (lambda (_g1218312185_)
                                            (gx#free-identifier=?
                                             _g1218312185_
                                             _L12102_))
                                          (foldr1 (lambda (_g1218712190_
                                                           _g1218812192_)
                                                    (cons _g1218712190_
                                                          _g1218812192_))
                                                  (cons _L12104_ '())
                                                  _L12105_))))
                          (___kont1466414665_
                           _L12100_
                           _L12101_
                           _L12102_
                           _L12103_
                           _L12104_
                           _L12105_)
                          (___match1476914770_
                           _e1168311940_
                           _hd1168411943_
                           _tl1168511945_
                           _e1169511972_
                           _hd1169611975_
                           _tl1169711977_
                           _e1169811980_
                           _hd1169911983_
                           _tl1170011985_
                           _e1170111988_
                           _hd1170211991_
                           _tl1170311993_
                           _e1170411996_
                           _hd1170511999_
                           _tl1170612001_
                           _e1170712004_
                           _hd1170812007_
                           _tl1170912009_
                           _e1171012012_
                           _hd1171112015_
                           _tl1171212017_
                           _e1171312020_
                           _hd1171412023_
                           _tl1171512025_
                           _e1171612028_
                           _hd1171712031_
                           _tl1171812033_)))
                    (___match1476914770_
                     _e1168311940_
                     _hd1168411943_
                     _tl1168511945_
                     _e1169511972_
                     _hd1169611975_
                     _tl1169711977_
                     _e1169811980_
                     _hd1169911983_
                     _tl1170011985_
                     _e1170111988_
                     _hd1170211991_
                     _tl1170311993_
                     _e1170411996_
                     _hd1170511999_
                     _tl1170612001_
                     _e1170712004_
                     _hd1170812007_
                     _tl1170912009_
                     _e1171012012_
                     _hd1171112015_
                     _tl1171212017_
                     _e1171312020_
                     _hd1171412023_
                     _tl1171512025_
                     _e1171612028_
                     _hd1171712031_
                     _tl1171812033_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1172212065_
                                         _target1171912036_
                                         '()))
                                      (___match1476914770_
                                       _e1168311940_
                                       _hd1168411943_
                                       _tl1168511945_
                                       _e1169511972_
                                       _hd1169611975_
                                       _tl1169711977_
                                       _e1169811980_
                                       _hd1169911983_
                                       _tl1170011985_
                                       _e1170111988_
                                       _hd1170211991_
                                       _tl1170311993_
                                       _e1170411996_
                                       _hd1170511999_
                                       _tl1170612001_
                                       _e1170712004_
                                       _hd1170812007_
                                       _tl1170912009_
                                       _e1171012012_
                                       _hd1171112015_
                                       _tl1171212017_
                                       _e1171312020_
                                       _hd1171412023_
                                       _tl1171512025_
                                       _e1171612028_
                                       _hd1171712031_
                                       _tl1171812033_))
                                  (___match1476914770_
                                   _e1168311940_
                                   _hd1168411943_
                                   _tl1168511945_
                                   _e1169511972_
                                   _hd1169611975_
                                   _tl1169711977_
                                   _e1169811980_
                                   _hd1169911983_
                                   _tl1170011985_
                                   _e1170111988_
                                   _hd1170211991_
                                   _tl1170311993_
                                   _e1170411996_
                                   _hd1170511999_
                                   _tl1170612001_
                                   _e1170712004_
                                   _hd1170812007_
                                   _tl1170912009_
                                   _e1171012012_
                                   _hd1171112015_
                                   _tl1171212017_
                                   _e1171312020_
                                   _hd1171412023_
                                   _tl1171512025_
                                   _e1171612028_
                                   _hd1171712031_
                                   _tl1171812033_))))
                          (___match1476914770_
                           _e1168311940_
                           _hd1168411943_
                           _tl1168511945_
                           _e1169511972_
                           _hd1169611975_
                           _tl1169711977_
                           _e1169811980_
                           _hd1169911983_
                           _tl1170011985_
                           _e1170111988_
                           _hd1170211991_
                           _tl1170311993_
                           _e1170411996_
                           _hd1170511999_
                           _tl1170612001_
                           _e1170712004_
                           _hd1170812007_
                           _tl1170912009_
                           _e1171012012_
                           _hd1171112015_
                           _tl1171212017_
                           _e1171312020_
                           _hd1171412023_
                           _tl1171512025_
                           _e1171612028_
                           _hd1171712031_
                           _tl1171812033_))
                      (___match1476914770_
                       _e1168311940_
                       _hd1168411943_
                       _tl1168511945_
                       _e1169511972_
                       _hd1169611975_
                       _tl1169711977_
                       _e1169811980_
                       _hd1169911983_
                       _tl1170011985_
                       _e1170111988_
                       _hd1170211991_
                       _tl1170311993_
                       _e1170411996_
                       _hd1170511999_
                       _tl1170612001_
                       _e1170712004_
                       _hd1170812007_
                       _tl1170912009_
                       _e1171012012_
                       _hd1171112015_
                       _tl1171212017_
                       _e1171312020_
                       _hd1171412023_
                       _tl1171512025_
                       _e1171612028_
                       _hd1171712031_
                       _tl1171812033_))
                  (___match1476914770_
                   _e1168311940_
                   _hd1168411943_
                   _tl1168511945_
                   _e1169511972_
                   _hd1169611975_
                   _tl1169711977_
                   _e1169811980_
                   _hd1169911983_
                   _tl1170011985_
                   _e1170111988_
                   _hd1170211991_
                   _tl1170311993_
                   _e1170411996_
                   _hd1170511999_
                   _tl1170612001_
                   _e1170712004_
                   _hd1170812007_
                   _tl1170912009_
                   _e1171012012_
                   _hd1171112015_
                   _tl1171212017_
                   _e1171312020_
                   _hd1171412023_
                   _tl1171512025_
                   _e1171612028_
                   _hd1171712031_
                   _tl1171812033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1476914770_
                                                   _e1168311940_
                                                   _hd1168411943_
                                                   _tl1168511945_
                                                   _e1169511972_
                                                   _hd1169611975_
                                                   _tl1169711977_
                                                   _e1169811980_
                                                   _hd1169911983_
                                                   _tl1170011985_
                                                   _e1170111988_
                                                   _hd1170211991_
                                                   _tl1170311993_
                                                   _e1170411996_
                                                   _hd1170511999_
                                                   _tl1170612001_
                                                   _e1170712004_
                                                   _hd1170812007_
                                                   _tl1170912009_
                                                   _e1171012012_
                                                   _hd1171112015_
                                                   _tl1171212017_
                                                   _e1171312020_
                                                   _hd1171412023_
                                                   _tl1171512025_
                                                   _e1171612028_
                                                   _hd1171712031_
                                                   _tl1171812033_))))
                                          (___match1476914770_
                                           _e1168311940_
                                           _hd1168411943_
                                           _tl1168511945_
                                           _e1169511972_
                                           _hd1169611975_
                                           _tl1169711977_
                                           _e1169811980_
                                           _hd1169911983_
                                           _tl1170011985_
                                           _e1170111988_
                                           _hd1170211991_
                                           _tl1170311993_
                                           _e1170411996_
                                           _hd1170511999_
                                           _tl1170612001_
                                           _e1170712004_
                                           _hd1170812007_
                                           _tl1170912009_
                                           _e1171012012_
                                           _hd1171112015_
                                           _tl1171212017_
                                           _e1171312020_
                                           _hd1171412023_
                                           _tl1171512025_
                                           _e1171612028_
                                           _hd1171712031_
                                           _tl1171812033_))))
                                  (___match1476914770_
                                   _e1168311940_
                                   _hd1168411943_
                                   _tl1168511945_
                                   _e1169511972_
                                   _hd1169611975_
                                   _tl1169711977_
                                   _e1169811980_
                                   _hd1169911983_
                                   _tl1170011985_
                                   _e1170111988_
                                   _hd1170211991_
                                   _tl1170311993_
                                   _e1170411996_
                                   _hd1170511999_
                                   _tl1170612001_
                                   _e1170712004_
                                   _hd1170812007_
                                   _tl1170912009_
                                   _e1171012012_
                                   _hd1171112015_
                                   _tl1171212017_
                                   _e1171312020_
                                   _hd1171412023_
                                   _tl1171512025_
                                   _e1171612028_
                                   _hd1171712031_
                                   _tl1171812033_))
                              (___match1476914770_
                               _e1168311940_
                               _hd1168411943_
                               _tl1168511945_
                               _e1169511972_
                               _hd1169611975_
                               _tl1169711977_
                               _e1169811980_
                               _hd1169911983_
                               _tl1170011985_
                               _e1170111988_
                               _hd1170211991_
                               _tl1170311993_
                               _e1170411996_
                               _hd1170511999_
                               _tl1170612001_
                               _e1170712004_
                               _hd1170812007_
                               _tl1170912009_
                               _e1171012012_
                               _hd1171112015_
                               _tl1171212017_
                               _e1171312020_
                               _hd1171412023_
                               _tl1171512025_
                               _e1171612028_
                               _hd1171712031_
                               _tl1171812033_))
                          (___kont1467214673_))))
                  (___kont1467214673_))
              (___kont1467214673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1467214673_))))
                                          (___kont1467214673_))))
                                  (___kont1467214673_))
                              (___kont1467214673_))))
                      (___kont1467214673_))
                  (___kont1467214673_))
              (___kont1467214673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1467214673_))))
                                      (___kont1467214673_))
                                  (___kont1467214673_))
                              (___kont1467214673_))))
                      (___kont1467214673_))))
              (___kont1467214673_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1168911953_ _target1168611948_ '()))))
                             (___match1468714688_
                              (lambda (_e1163512200_
                                       _hd1163612203_
                                       _tl1163712205_
                                       ___splice1466014661_
                                       _target1163812208_
                                       _tl1164012210_)
                                (letrec ((_loop1164112213_
                                          (lambda (_hd1163912216_
                                                   _arg1164512218_)
                                            (if (gx#stx-pair? _hd1163912216_)
                                                (let ((_e1164212221_
                                                       (gx#stx-e
                                                        _hd1163912216_)))
                                                  (let ((_lp-tl1164412226_
                                                         (##cdr _e1164212221_))
                                                        (_lp-hd1164312224_
                                                         (##car _e1164212221_)))
                                                    (_loop1164112213_
                                                     _lp-tl1164412226_
                                                     (cons _lp-hd1164312224_
                                                           _arg1164512218_))))
                                                (let ((_arg1164612229_
                                                       (reverse _arg1164512218_)))
                                                  (if (gx#stx-pair?
                                                       _tl1163712205_)
                                                      (let ((_e1164712232_
                                                             (gx#stx-e
                                                              _tl1163712205_)))
                                                        (let ((_tl1164912237_
                                                               (##cdr _e1164712232_))
                                                              (_hd1164812235_
                                                               (##car _e1164712232_)))
                                                          (if (gx#stx-pair?
                                                               _hd1164812235_)
                                                              (let ((_e1165012240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1164812235_)))
                        (let ((_tl1165212245_ (##cdr _e1165012240_))
                              (_hd1165112243_ (##car _e1165012240_)))
                          (if (gx#identifier? _hd1165112243_)
                              (if (gx#stx-eq? '%#call _hd1165112243_)
                                  (if (gx#stx-pair? _tl1165212245_)
                                      (let ((_e1165312248_
                                             (gx#stx-e _tl1165212245_)))
                                        (let ((_tl1165512253_
                                               (##cdr _e1165312248_))
                                              (_hd1165412251_
                                               (##car _e1165312248_)))
                                          (if (gx#stx-pair? _hd1165412251_)
                                              (let ((_e1165612256_
                                                     (gx#stx-e
                                                      _hd1165412251_)))
                                                (let ((_tl1165812261_
                                                       (##cdr _e1165612256_))
                                                      (_hd1165712259_
                                                       (##car _e1165612256_)))
                                                  (if (gx#identifier?
                                                       _hd1165712259_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1165712259_)
                                                          (if (gx#stx-pair?
                                                               _tl1165812261_)
                                                              (let ((_e1165912264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1165812261_)))
                        (let ((_tl1166112269_ (##cdr _e1165912264_))
                              (_hd1166012267_ (##car _e1165912264_)))
                          (if (gx#stx-null? _tl1166112269_)
                              (if (gx#stx-pair/null? _tl1165512253_)
                                  (let ((___splice1466214663_
                                         (gx#syntax-split-splice
                                          _tl1165512253_
                                          '0)))
                                    (let ((_tl1166412274_
                                           (##vector-ref
                                            ___splice1466214663_
                                            '1))
                                          (_target1166212272_
                                           (##vector-ref
                                            ___splice1466214663_
                                            '0)))
                                      (if (gx#stx-null? _tl1166412274_)
                                          (letrec ((_loop1166512277_
                                                    (lambda (_hd1166312280_
                                                             _xarg1166912282_)
                                                      (if (gx#stx-pair?
                                                           _hd1166312280_)
                                                          (let ((_e1166612285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1166312280_)))
                    (let ((_lp-tl1166812290_ (##cdr _e1166612285_))
                          (_lp-hd1166712288_ (##car _e1166612285_)))
                      (if (gx#stx-pair? _lp-hd1166712288_)
                          (let ((_e1167112293_ (gx#stx-e _lp-hd1166712288_)))
                            (let ((_tl1167312298_ (##cdr _e1167112293_))
                                  (_hd1167212296_ (##car _e1167112293_)))
                              (if (gx#identifier? _hd1167212296_)
                                  (if (gx#stx-eq? '%#ref _hd1167212296_)
                                      (if (gx#stx-pair? _tl1167312298_)
                                          (let ((_e1167412301_
                                                 (gx#stx-e _tl1167312298_)))
                                            (let ((_tl1167612306_
                                                   (##cdr _e1167412301_))
                                                  (_hd1167512304_
                                                   (##car _e1167412301_)))
                                              (if (gx#stx-null? _tl1167612306_)
                                                  (_loop1166512277_
                                                   _lp-tl1166812290_
                                                   (cons _hd1167512304_
                                                         _xarg1166912282_))
                                                  (___match1469914700_
                                                   _e1163512200_
                                                   _hd1163612203_
                                                   _tl1163712205_
                                                   ___splice1466014661_
                                                   _target1163812208_
                                                   _tl1164012210_))))
                                          (___match1469914700_
                                           _e1163512200_
                                           _hd1163612203_
                                           _tl1163712205_
                                           ___splice1466014661_
                                           _target1163812208_
                                           _tl1164012210_))
                                      (___match1469914700_
                                       _e1163512200_
                                       _hd1163612203_
                                       _tl1163712205_
                                       ___splice1466014661_
                                       _target1163812208_
                                       _tl1164012210_))
                                  (___match1469914700_
                                   _e1163512200_
                                   _hd1163612203_
                                   _tl1163712205_
                                   ___splice1466014661_
                                   _target1163812208_
                                   _tl1164012210_))))
                          (___match1469914700_
                           _e1163512200_
                           _hd1163612203_
                           _tl1163712205_
                           ___splice1466014661_
                           _target1163812208_
                           _tl1164012210_))))
                  (let ((_xarg1167012309_ (reverse _xarg1166912282_)))
                    (if (gx#stx-null? _tl1164912237_)
                        (let ((_L12312_ _xarg1167012309_)
                              (_L12313_ _hd1166012267_)
                              (_L12314_ _arg1164612229_))
                          (if (and (gx#identifier-list?
                                    (foldr1 (lambda (_g1234212345_
                                                     _g1234312347_)
                                              (cons _g1234212345_
                                                    _g1234312347_))
                                            '()
                                            _L12314_))
                                   (fx= (length (foldr1 (lambda (_g1234912352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1235012354_)
                  (cons _g1234912352_ _g1235012354_))
                '()
                _L12314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (foldr1 (lambda (_g1235612359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1235712361_)
                  (cons _g1235612359_ _g1235712361_))
                '()
                _L12312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (andmap2 gx#free-identifier=?
                                            (foldr1 (lambda (_g1236312366_
                                                             _g1236412368_)
                                                      (cons _g1236312366_
                                                            _g1236412368_))
                                                    '()
                                                    _L12314_)
                                            (foldr1 (lambda (_g1237012373_
                                                             _g1237112375_)
                                                      (cons _g1237012373_
                                                            _g1237112375_))
                                                    '()
                                                    _L12312_))
                                   (not (find (lambda (_g1237712379_)
                                                (gx#free-identifier=?
                                                 _g1237712379_
                                                 _L12313_))
                                              (foldr1 (lambda (_g1238112384_
                                                               _g1238212386_)
                                                        (cons _g1238112384_
                                                              _g1238212386_))
                                                      '()
                                                      _L12314_))))
                              (___kont1465814659_ _L12312_ _L12313_ _L12314_)
                              (___match1469914700_
                               _e1163512200_
                               _hd1163612203_
                               _tl1163712205_
                               ___splice1466014661_
                               _target1163812208_
                               _tl1164012210_)))
                        (___match1469914700_
                         _e1163512200_
                         _hd1163612203_
                         _tl1163712205_
                         ___splice1466014661_
                         _target1163812208_
                         _tl1164012210_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1166512277_
                                             _target1166212272_
                                             '()))
                                          (___match1469914700_
                                           _e1163512200_
                                           _hd1163612203_
                                           _tl1163712205_
                                           ___splice1466014661_
                                           _target1163812208_
                                           _tl1164012210_))))
                                  (___match1469914700_
                                   _e1163512200_
                                   _hd1163612203_
                                   _tl1163712205_
                                   ___splice1466014661_
                                   _target1163812208_
                                   _tl1164012210_))
                              (___match1469914700_
                               _e1163512200_
                               _hd1163612203_
                               _tl1163712205_
                               ___splice1466014661_
                               _target1163812208_
                               _tl1164012210_))))
                      (___match1469914700_
                       _e1163512200_
                       _hd1163612203_
                       _tl1163712205_
                       ___splice1466014661_
                       _target1163812208_
                       _tl1164012210_))
                  (___match1469914700_
                   _e1163512200_
                   _hd1163612203_
                   _tl1163712205_
                   ___splice1466014661_
                   _target1163812208_
                   _tl1164012210_))
              (___match1469914700_
               _e1163512200_
               _hd1163612203_
               _tl1163712205_
               ___splice1466014661_
               _target1163812208_
               _tl1164012210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1469914700_
                                               _e1163512200_
                                               _hd1163612203_
                                               _tl1163712205_
                                               ___splice1466014661_
                                               _target1163812208_
                                               _tl1164012210_))))
                                      (___match1469914700_
                                       _e1163512200_
                                       _hd1163612203_
                                       _tl1163712205_
                                       ___splice1466014661_
                                       _target1163812208_
                                       _tl1164012210_))
                                  (___match1469914700_
                                   _e1163512200_
                                   _hd1163612203_
                                   _tl1163712205_
                                   ___splice1466014661_
                                   _target1163812208_
                                   _tl1164012210_))
                              (___match1469914700_
                               _e1163512200_
                               _hd1163612203_
                               _tl1163712205_
                               ___splice1466014661_
                               _target1163812208_
                               _tl1164012210_))))
                      (___match1469914700_
                       _e1163512200_
                       _hd1163612203_
                       _tl1163712205_
                       ___splice1466014661_
                       _target1163812208_
                       _tl1164012210_))))
              (___match1469914700_
               _e1163512200_
               _hd1163612203_
               _tl1163712205_
               ___splice1466014661_
               _target1163812208_
               _tl1164012210_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1164112213_ _target1163812208_ '())))))
                        (if (gx#stx-pair? ___stx1465614657_)
                            (let ((_e1163512200_ (gx#stx-e ___stx1465614657_)))
                              (let ((_tl1163712205_ (##cdr _e1163512200_))
                                    (_hd1163612203_ (##car _e1163512200_)))
                                (if (gx#stx-pair/null? _hd1163612203_)
                                    (let ((___splice1466014661_
                                           (gx#syntax-split-splice
                                            _hd1163612203_
                                            '0)))
                                      (let ((_tl1164012210_
                                             (##vector-ref
                                              ___splice1466014661_
                                              '1))
                                            (_target1163812208_
                                             (##vector-ref
                                              ___splice1466014661_
                                              '0)))
                                        (if (gx#stx-null? _tl1164012210_)
                                            (___match1468714688_
                                             _e1163512200_
                                             _hd1163612203_
                                             _tl1163712205_
                                             ___splice1466014661_
                                             _target1163812208_
                                             _tl1164012210_)
                                            (___match1469914700_
                                             _e1163512200_
                                             _hd1163612203_
                                             _tl1163712205_
                                             ___splice1466014661_
                                             _target1163812208_
                                             _tl1164012210_))))
                                    (if (gx#stx-pair? _tl1163712205_)
                                        (let ((_e1175011807_
                                               (gx#stx-e _tl1163712205_)))
                                          (let ((_tl1175211812_
                                                 (##cdr _e1175011807_))
                                                (_hd1175111810_
                                                 (##car _e1175011807_)))
                                            (if (gx#stx-pair? _hd1175111810_)
                                                (let ((_e1175311815_
                                                       (gx#stx-e
                                                        _hd1175111810_)))
                                                  (let ((_tl1175511820_
                                                         (##cdr _e1175311815_))
                                                        (_hd1175411818_
                                                         (##car _e1175311815_)))
                                                    (if (gx#identifier?
                                                         _hd1175411818_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1175411818_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1175511820_)
                        (let ((_e1175611823_ (gx#stx-e _tl1175511820_)))
                          (let ((_tl1175811828_ (##cdr _e1175611823_))
                                (_hd1175711826_ (##car _e1175611823_)))
                            (if (gx#stx-pair? _hd1175711826_)
                                (let ((_e1175911831_
                                       (gx#stx-e _hd1175711826_)))
                                  (let ((_tl1176111836_ (##cdr _e1175911831_))
                                        (_hd1176011834_ (##car _e1175911831_)))
                                    (if (gx#identifier? _hd1176011834_)
                                        (if (gx#stx-eq? '%#ref _hd1176011834_)
                                            (if (gx#stx-pair? _tl1176111836_)
                                                (let ((_e1176211839_
                                                       (gx#stx-e
                                                        _tl1176111836_)))
                                                  (let ((_tl1176411844_
                                                         (##cdr _e1176211839_))
                                                        (_hd1176311842_
                                                         (##car _e1176211839_)))
                                                    (if (gx#stx-null?
                                                         _tl1176411844_)
                                                        (if (gx#stx-pair?
                                                             _tl1175811828_)
                                                            (let ((_e1176511847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1175811828_)))
                      (let ((_tl1176711852_ (##cdr _e1176511847_))
                            (_hd1176611850_ (##car _e1176511847_)))
                        (if (gx#stx-pair? _hd1176611850_)
                            (let ((_e1176811855_ (gx#stx-e _hd1176611850_)))
                              (let ((_tl1177011860_ (##cdr _e1176811855_))
                                    (_hd1176911858_ (##car _e1176811855_)))
                                (if (gx#identifier? _hd1176911858_)
                                    (if (gx#stx-eq? '%#ref _hd1176911858_)
                                        (if (gx#stx-pair? _tl1177011860_)
                                            (let ((_e1177111863_
                                                   (gx#stx-e _tl1177011860_)))
                                              (let ((_tl1177311868_
                                                     (##cdr _e1177111863_))
                                                    (_hd1177211866_
                                                     (##car _e1177111863_)))
                                                (if (gx#stx-null?
                                                     _tl1177311868_)
                                                    (if (gx#stx-pair?
                                                         _tl1176711852_)
                                                        (let ((_e1177411871_
                                                               (gx#stx-e
                                                                _tl1176711852_)))
                                                          (let ((_tl1177611876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1177411871_))
                        (_hd1177511874_ (##car _e1177411871_)))
                    (if (gx#stx-pair? _hd1177511874_)
                        (let ((_e1177711879_ (gx#stx-e _hd1177511874_)))
                          (let ((_tl1177911884_ (##cdr _e1177711879_))
                                (_hd1177811882_ (##car _e1177711879_)))
                            (if (gx#identifier? _hd1177811882_)
                                (if (gx#stx-eq? '%#ref _hd1177811882_)
                                    (if (gx#stx-pair? _tl1177911884_)
                                        (let ((_e1178011887_
                                               (gx#stx-e _tl1177911884_)))
                                          (let ((_tl1178211892_
                                                 (##cdr _e1178011887_))
                                                (_hd1178111890_
                                                 (##car _e1178011887_)))
                                            (if (gx#stx-null? _tl1178211892_)
                                                (if (gx#stx-null?
                                                     _tl1177611876_)
                                                    (if (gx#stx-null?
                                                         _tl1175211812_)
                                                        (___match1479714798_
                                                         _e1163512200_
                                                         _hd1163612203_
                                                         _tl1163712205_
                                                         _e1175011807_
                                                         _hd1175111810_
                                                         _tl1175211812_
                                                         _e1175311815_
                                                         _hd1175411818_
                                                         _tl1175511820_
                                                         _e1175611823_
                                                         _hd1175711826_
                                                         _tl1175811828_
                                                         _e1175911831_
                                                         _hd1176011834_
                                                         _tl1176111836_
                                                         _e1176211839_
                                                         _hd1176311842_
                                                         _tl1176411844_
                                                         _e1176511847_
                                                         _hd1176611850_
                                                         _tl1176711852_
                                                         _e1176811855_
                                                         _hd1176911858_
                                                         _tl1177011860_
                                                         _e1177111863_
                                                         _hd1177211866_
                                                         _tl1177311868_
                                                         _e1177411871_
                                                         _hd1177511874_
                                                         _tl1177611876_
                                                         _e1177711879_
                                                         _hd1177811882_
                                                         _tl1177911884_
                                                         _e1178011887_
                                                         _hd1178111890_
                                                         _tl1178211892_)
                                                        (___kont1467214673_))
                                                    (___kont1467214673_))
                                                (___kont1467214673_))))
                                        (___kont1467214673_))
                                    (___kont1467214673_))
                                (___kont1467214673_))))
                        (___kont1467214673_))))
                (___kont1467214673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1467214673_))))
                                            (___kont1467214673_))
                                        (___kont1467214673_))
                                    (___kont1467214673_))))
                            (___kont1467214673_))))
                    (___kont1467214673_))
                (___kont1467214673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1467214673_))
                                            (___kont1467214673_))
                                        (___kont1467214673_))))
                                (___kont1467214673_))))
                        (___kont1467214673_))
                    (___kont1467214673_))
                (___kont1467214673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1467214673_))))
                                        (___kont1467214673_)))))
                            (___kont1467214673_)))))))
               (_dispatch-case-e10938_
                (lambda (_hd11086_ _body11087_)
                  (let* ((_form11089_ (cons _hd11086_ (cons _body11087_ '())))
                         (___stx1480014801_ _form11089_)
                         (_g1109311217_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1480014801_))))
                    (let ((___kont1480214803_
                           (lambda (_L11588_ _L11589_ _L11590_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11589_ '())))))
                          (___kont1480814809_
                           (lambda (_L11436_ _L11437_ _L11438_ _L11439_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11436_ '())))))
                          (___kont1481214813_
                           (lambda (_L11302_ _L11303_ _L11304_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11302_ '()))))))
                      (let* ((___match1490914910_
                              (lambda (_e1118311222_
                                       _hd1118411225_
                                       _tl1118511227_
                                       _e1118611230_
                                       _hd1118711233_
                                       _tl1118811235_
                                       _e1118911238_
                                       _hd1119011241_
                                       _tl1119111243_
                                       _e1119211246_
                                       _hd1119311249_
                                       _tl1119411251_
                                       _e1119511254_
                                       _hd1119611257_
                                       _tl1119711259_
                                       _e1119811262_
                                       _hd1119911265_
                                       _tl1120011267_
                                       _e1120111270_
                                       _hd1120211273_
                                       _tl1120311275_
                                       _e1120411278_
                                       _hd1120511281_
                                       _tl1120611283_
                                       _e1120711286_
                                       _hd1120811289_
                                       _tl1120911291_)
                                (if (gx#stx-pair? _tl1120311275_)
                                    (let ((_e1121011294_
                                           (gx#stx-e _tl1120311275_)))
                                      (let ((_tl1121211299_
                                             (##cdr _e1121011294_))
                                            (_hd1121111297_
                                             (##car _e1121011294_)))
                                        (if (gx#stx-null? _tl1121211299_)
                                            (if (gx#stx-null? _tl1118811235_)
                                                (___kont1481214813_
                                                 _hd1120811289_
                                                 _hd1119911265_
                                                 _hd1118411225_)
                                                (_g1109311217_))
                                            (_g1109311217_))))
                                    (_g1109311217_))))
                             (___match1483914840_
                              (lambda (_e1114411340_
                                       _hd1114511343_
                                       _tl1114611345_
                                       ___splice1481014811_
                                       _target1114711348_
                                       _tl1114911350_)
                                (letrec ((_loop1115011353_
                                          (lambda (_hd1114811356_
                                                   _arg1115411358_)
                                            (if (gx#stx-pair? _hd1114811356_)
                                                (let ((_e1115111361_
                                                       (gx#stx-e
                                                        _hd1114811356_)))
                                                  (let ((_lp-tl1115311366_
                                                         (##cdr _e1115111361_))
                                                        (_lp-hd1115211364_
                                                         (##car _e1115111361_)))
                                                    (_loop1115011353_
                                                     _lp-tl1115311366_
                                                     (cons _lp-hd1115211364_
                                                           _arg1115411358_))))
                                                (let ((_arg1115511369_
                                                       (reverse _arg1115411358_)))
                                                  (if (gx#stx-pair?
                                                       _tl1114611345_)
                                                      (let ((_e1115611372_
                                                             (gx#stx-e
                                                              _tl1114611345_)))
                                                        (let ((_tl1115811377_
                                                               (##cdr _e1115611372_))
                                                              (_hd1115711375_
                                                               (##car _e1115611372_)))
                                                          (if (gx#stx-pair?
                                                               _hd1115711375_)
                                                              (let ((_e1115911380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1115711375_)))
                        (let ((_tl1116111385_ (##cdr _e1115911380_))
                              (_hd1116011383_ (##car _e1115911380_)))
                          (if (gx#identifier? _hd1116011383_)
                              (if (gx#stx-eq? '%#call _hd1116011383_)
                                  (if (gx#stx-pair? _tl1116111385_)
                                      (let ((_e1116211388_
                                             (gx#stx-e _tl1116111385_)))
                                        (let ((_tl1116411393_
                                               (##cdr _e1116211388_))
                                              (_hd1116311391_
                                               (##car _e1116211388_)))
                                          (if (gx#stx-pair? _hd1116311391_)
                                              (let ((_e1116511396_
                                                     (gx#stx-e
                                                      _hd1116311391_)))
                                                (let ((_tl1116711401_
                                                       (##cdr _e1116511396_))
                                                      (_hd1116611399_
                                                       (##car _e1116511396_)))
                                                  (if (gx#identifier?
                                                       _hd1116611399_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1116611399_)
                                                          (if (gx#stx-pair?
                                                               _tl1116711401_)
                                                              (let ((_e1116811404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1116711401_)))
                        (let ((_tl1117011409_ (##cdr _e1116811404_))
                              (_hd1116911407_ (##car _e1116811404_)))
                          (if (gx#stx-null? _tl1117011409_)
                              (if (gx#stx-pair? _tl1116411393_)
                                  (let ((_e1117111412_
                                         (gx#stx-e _tl1116411393_)))
                                    (let ((_tl1117311417_
                                           (##cdr _e1117111412_))
                                          (_hd1117211415_
                                           (##car _e1117111412_)))
                                      (if (gx#stx-pair? _hd1117211415_)
                                          (let ((_e1117411420_
                                                 (gx#stx-e _hd1117211415_)))
                                            (let ((_tl1117611425_
                                                   (##cdr _e1117411420_))
                                                  (_hd1117511423_
                                                   (##car _e1117411420_)))
                                              (if (gx#identifier?
                                                   _hd1117511423_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1117511423_)
                                                      (if (gx#stx-pair?
                                                           _tl1117611425_)
                                                          (let ((_e1117711428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1117611425_)))
                    (let ((_tl1117911433_ (##cdr _e1117711428_))
                          (_hd1117811431_ (##car _e1117711428_)))
                      (if (gx#stx-null? _tl1117911433_)
                          (if (gx#stx-null? _tl1115811377_)
                              (___kont1480814809_
                               _hd1117811431_
                               _hd1116911407_
                               _tl1114911350_
                               _arg1115511369_)
                              (___match1490914910_
                               _e1114411340_
                               _hd1114511343_
                               _tl1114611345_
                               _e1115611372_
                               _hd1115711375_
                               _tl1115811377_
                               _e1115911380_
                               _hd1116011383_
                               _tl1116111385_
                               _e1116211388_
                               _hd1116311391_
                               _tl1116411393_
                               _e1116511396_
                               _hd1116611399_
                               _tl1116711401_
                               _e1116811404_
                               _hd1116911407_
                               _tl1117011409_
                               _e1117111412_
                               _hd1117211415_
                               _tl1117311417_
                               _e1117411420_
                               _hd1117511423_
                               _tl1117611425_
                               _e1117711428_
                               _hd1117811431_
                               _tl1117911433_))
                          (_g1109311217_))))
                  (_g1109311217_))
              (_g1109311217_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1109311217_))))
                                          (_g1109311217_))))
                                  (_g1109311217_))
                              (_g1109311217_))))
                      (_g1109311217_))
                  (_g1109311217_))
              (_g1109311217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1109311217_))))
                                      (_g1109311217_))
                                  (_g1109311217_))
                              (_g1109311217_))))
                      (_g1109311217_))))
              (_g1109311217_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1115011353_ _target1114711348_ '()))))
                             (___match1482714828_
                              (lambda (_e1109811476_
                                       _hd1109911479_
                                       _tl1110011481_
                                       ___splice1480414805_
                                       _target1110111484_
                                       _tl1110311486_)
                                (letrec ((_loop1110411489_
                                          (lambda (_hd1110211492_
                                                   _arg1110811494_)
                                            (if (gx#stx-pair? _hd1110211492_)
                                                (let ((_e1110511497_
                                                       (gx#stx-e
                                                        _hd1110211492_)))
                                                  (let ((_lp-tl1110711502_
                                                         (##cdr _e1110511497_))
                                                        (_lp-hd1110611500_
                                                         (##car _e1110511497_)))
                                                    (_loop1110411489_
                                                     _lp-tl1110711502_
                                                     (cons _lp-hd1110611500_
                                                           _arg1110811494_))))
                                                (let ((_arg1110911505_
                                                       (reverse _arg1110811494_)))
                                                  (if (gx#stx-pair?
                                                       _tl1110011481_)
                                                      (let ((_e1111011508_
                                                             (gx#stx-e
                                                              _tl1110011481_)))
                                                        (let ((_tl1111211513_
                                                               (##cdr _e1111011508_))
                                                              (_hd1111111511_
                                                               (##car _e1111011508_)))
                                                          (if (gx#stx-pair?
                                                               _hd1111111511_)
                                                              (let ((_e1111311516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1111111511_)))
                        (let ((_tl1111511521_ (##cdr _e1111311516_))
                              (_hd1111411519_ (##car _e1111311516_)))
                          (if (gx#identifier? _hd1111411519_)
                              (if (gx#stx-eq? '%#call _hd1111411519_)
                                  (if (gx#stx-pair? _tl1111511521_)
                                      (let ((_e1111611524_
                                             (gx#stx-e _tl1111511521_)))
                                        (let ((_tl1111811529_
                                               (##cdr _e1111611524_))
                                              (_hd1111711527_
                                               (##car _e1111611524_)))
                                          (if (gx#stx-pair? _hd1111711527_)
                                              (let ((_e1111911532_
                                                     (gx#stx-e
                                                      _hd1111711527_)))
                                                (let ((_tl1112111537_
                                                       (##cdr _e1111911532_))
                                                      (_hd1112011535_
                                                       (##car _e1111911532_)))
                                                  (if (gx#identifier?
                                                       _hd1112011535_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1112011535_)
                                                          (if (gx#stx-pair?
                                                               _tl1112111537_)
                                                              (let ((_e1112211540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1112111537_)))
                        (let ((_tl1112411545_ (##cdr _e1112211540_))
                              (_hd1112311543_ (##car _e1112211540_)))
                          (if (gx#stx-null? _tl1112411545_)
                              (if (gx#stx-pair/null? _tl1111811529_)
                                  (let ((___splice1480614807_
                                         (gx#syntax-split-splice
                                          _tl1111811529_
                                          '0)))
                                    (let ((_tl1112711550_
                                           (##vector-ref
                                            ___splice1480614807_
                                            '1))
                                          (_target1112511548_
                                           (##vector-ref
                                            ___splice1480614807_
                                            '0)))
                                      (if (gx#stx-null? _tl1112711550_)
                                          (letrec ((_loop1112811553_
                                                    (lambda (_hd1112611556_
                                                             _xarg1113211558_)
                                                      (if (gx#stx-pair?
                                                           _hd1112611556_)
                                                          (let ((_e1112911561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1112611556_)))
                    (let ((_lp-tl1113111566_ (##cdr _e1112911561_))
                          (_lp-hd1113011564_ (##car _e1112911561_)))
                      (if (gx#stx-pair? _lp-hd1113011564_)
                          (let ((_e1113411569_ (gx#stx-e _lp-hd1113011564_)))
                            (let ((_tl1113611574_ (##cdr _e1113411569_))
                                  (_hd1113511572_ (##car _e1113411569_)))
                              (if (gx#identifier? _hd1113511572_)
                                  (if (gx#stx-eq? '%#ref _hd1113511572_)
                                      (if (gx#stx-pair? _tl1113611574_)
                                          (let ((_e1113711577_
                                                 (gx#stx-e _tl1113611574_)))
                                            (let ((_tl1113911582_
                                                   (##cdr _e1113711577_))
                                                  (_hd1113811580_
                                                   (##car _e1113711577_)))
                                              (if (gx#stx-null? _tl1113911582_)
                                                  (_loop1112811553_
                                                   _lp-tl1113111566_
                                                   (cons _hd1113811580_
                                                         _xarg1113211558_))
                                                  (___match1483914840_
                                                   _e1109811476_
                                                   _hd1109911479_
                                                   _tl1110011481_
                                                   ___splice1480414805_
                                                   _target1110111484_
                                                   _tl1110311486_))))
                                          (___match1483914840_
                                           _e1109811476_
                                           _hd1109911479_
                                           _tl1110011481_
                                           ___splice1480414805_
                                           _target1110111484_
                                           _tl1110311486_))
                                      (___match1483914840_
                                       _e1109811476_
                                       _hd1109911479_
                                       _tl1110011481_
                                       ___splice1480414805_
                                       _target1110111484_
                                       _tl1110311486_))
                                  (___match1483914840_
                                   _e1109811476_
                                   _hd1109911479_
                                   _tl1110011481_
                                   ___splice1480414805_
                                   _target1110111484_
                                   _tl1110311486_))))
                          (___match1483914840_
                           _e1109811476_
                           _hd1109911479_
                           _tl1110011481_
                           ___splice1480414805_
                           _target1110111484_
                           _tl1110311486_))))
                  (let ((_xarg1113311585_ (reverse _xarg1113211558_)))
                    (if (gx#stx-null? _tl1111211513_)
                        (___kont1480214803_
                         _xarg1113311585_
                         _hd1112311543_
                         _arg1110911505_)
                        (___match1483914840_
                         _e1109811476_
                         _hd1109911479_
                         _tl1110011481_
                         ___splice1480414805_
                         _target1110111484_
                         _tl1110311486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1112811553_
                                             _target1112511548_
                                             '()))
                                          (___match1483914840_
                                           _e1109811476_
                                           _hd1109911479_
                                           _tl1110011481_
                                           ___splice1480414805_
                                           _target1110111484_
                                           _tl1110311486_))))
                                  (___match1483914840_
                                   _e1109811476_
                                   _hd1109911479_
                                   _tl1110011481_
                                   ___splice1480414805_
                                   _target1110111484_
                                   _tl1110311486_))
                              (___match1483914840_
                               _e1109811476_
                               _hd1109911479_
                               _tl1110011481_
                               ___splice1480414805_
                               _target1110111484_
                               _tl1110311486_))))
                      (___match1483914840_
                       _e1109811476_
                       _hd1109911479_
                       _tl1110011481_
                       ___splice1480414805_
                       _target1110111484_
                       _tl1110311486_))
                  (___match1483914840_
                   _e1109811476_
                   _hd1109911479_
                   _tl1110011481_
                   ___splice1480414805_
                   _target1110111484_
                   _tl1110311486_))
              (___match1483914840_
               _e1109811476_
               _hd1109911479_
               _tl1110011481_
               ___splice1480414805_
               _target1110111484_
               _tl1110311486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1483914840_
                                               _e1109811476_
                                               _hd1109911479_
                                               _tl1110011481_
                                               ___splice1480414805_
                                               _target1110111484_
                                               _tl1110311486_))))
                                      (___match1483914840_
                                       _e1109811476_
                                       _hd1109911479_
                                       _tl1110011481_
                                       ___splice1480414805_
                                       _target1110111484_
                                       _tl1110311486_))
                                  (___match1483914840_
                                   _e1109811476_
                                   _hd1109911479_
                                   _tl1110011481_
                                   ___splice1480414805_
                                   _target1110111484_
                                   _tl1110311486_))
                              (___match1483914840_
                               _e1109811476_
                               _hd1109911479_
                               _tl1110011481_
                               ___splice1480414805_
                               _target1110111484_
                               _tl1110311486_))))
                      (___match1483914840_
                       _e1109811476_
                       _hd1109911479_
                       _tl1110011481_
                       ___splice1480414805_
                       _target1110111484_
                       _tl1110311486_))))
              (___match1483914840_
               _e1109811476_
               _hd1109911479_
               _tl1110011481_
               ___splice1480414805_
               _target1110111484_
               _tl1110311486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1110411489_ _target1110111484_ '())))))
                        (if (gx#stx-pair? ___stx1480014801_)
                            (let ((_e1109811476_ (gx#stx-e ___stx1480014801_)))
                              (let ((_tl1110011481_ (##cdr _e1109811476_))
                                    (_hd1109911479_ (##car _e1109811476_)))
                                (if (gx#stx-pair/null? _hd1109911479_)
                                    (let ((___splice1480414805_
                                           (gx#syntax-split-splice
                                            _hd1109911479_
                                            '0)))
                                      (let ((_tl1110311486_
                                             (##vector-ref
                                              ___splice1480414805_
                                              '1))
                                            (_target1110111484_
                                             (##vector-ref
                                              ___splice1480414805_
                                              '0)))
                                        (if (gx#stx-null? _tl1110311486_)
                                            (___match1482714828_
                                             _e1109811476_
                                             _hd1109911479_
                                             _tl1110011481_
                                             ___splice1480414805_
                                             _target1110111484_
                                             _tl1110311486_)
                                            (___match1483914840_
                                             _e1109811476_
                                             _hd1109911479_
                                             _tl1110011481_
                                             ___splice1480414805_
                                             _target1110111484_
                                             _tl1110311486_))))
                                    (if (gx#stx-pair? _tl1110011481_)
                                        (let ((_e1118611230_
                                               (gx#stx-e _tl1110011481_)))
                                          (let ((_tl1118811235_
                                                 (##cdr _e1118611230_))
                                                (_hd1118711233_
                                                 (##car _e1118611230_)))
                                            (if (gx#stx-pair? _hd1118711233_)
                                                (let ((_e1118911238_
                                                       (gx#stx-e
                                                        _hd1118711233_)))
                                                  (let ((_tl1119111243_
                                                         (##cdr _e1118911238_))
                                                        (_hd1119011241_
                                                         (##car _e1118911238_)))
                                                    (if (gx#identifier?
                                                         _hd1119011241_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1119011241_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1119111243_)
                        (let ((_e1119211246_ (gx#stx-e _tl1119111243_)))
                          (let ((_tl1119411251_ (##cdr _e1119211246_))
                                (_hd1119311249_ (##car _e1119211246_)))
                            (if (gx#stx-pair? _hd1119311249_)
                                (let ((_e1119511254_
                                       (gx#stx-e _hd1119311249_)))
                                  (let ((_tl1119711259_ (##cdr _e1119511254_))
                                        (_hd1119611257_ (##car _e1119511254_)))
                                    (if (gx#identifier? _hd1119611257_)
                                        (if (gx#stx-eq? '%#ref _hd1119611257_)
                                            (if (gx#stx-pair? _tl1119711259_)
                                                (let ((_e1119811262_
                                                       (gx#stx-e
                                                        _tl1119711259_)))
                                                  (let ((_tl1120011267_
                                                         (##cdr _e1119811262_))
                                                        (_hd1119911265_
                                                         (##car _e1119811262_)))
                                                    (if (gx#stx-null?
                                                         _tl1120011267_)
                                                        (if (gx#stx-pair?
                                                             _tl1119411251_)
                                                            (let ((_e1120111270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1119411251_)))
                      (let ((_tl1120311275_ (##cdr _e1120111270_))
                            (_hd1120211273_ (##car _e1120111270_)))
                        (if (gx#stx-pair? _hd1120211273_)
                            (let ((_e1120411278_ (gx#stx-e _hd1120211273_)))
                              (let ((_tl1120611283_ (##cdr _e1120411278_))
                                    (_hd1120511281_ (##car _e1120411278_)))
                                (if (gx#identifier? _hd1120511281_)
                                    (if (gx#stx-eq? '%#ref _hd1120511281_)
                                        (if (gx#stx-pair? _tl1120611283_)
                                            (let ((_e1120711286_
                                                   (gx#stx-e _tl1120611283_)))
                                              (let ((_tl1120911291_
                                                     (##cdr _e1120711286_))
                                                    (_hd1120811289_
                                                     (##car _e1120711286_)))
                                                (if (gx#stx-null?
                                                     _tl1120911291_)
                                                    (if (gx#stx-pair?
                                                         _tl1120311275_)
                                                        (let ((_e1121011294_
                                                               (gx#stx-e
                                                                _tl1120311275_)))
                                                          (let ((_tl1121211299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1121011294_))
                        (_hd1121111297_ (##car _e1121011294_)))
                    (if (gx#stx-null? _tl1121211299_)
                        (if (gx#stx-null? _tl1118811235_)
                            (___kont1481214813_
                             _hd1120811289_
                             _hd1119911265_
                             _hd1109911479_)
                            (_g1109311217_))
                        (_g1109311217_))))
                (_g1109311217_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1109311217_))))
                                            (_g1109311217_))
                                        (_g1109311217_))
                                    (_g1109311217_))))
                            (_g1109311217_))))
                    (_g1109311217_))
                (_g1109311217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1109311217_))
                                            (_g1109311217_))
                                        (_g1109311217_))))
                                (_g1109311217_))))
                        (_g1109311217_))
                    (_g1109311217_))
                (_g1109311217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1109311217_))))
                                        (_g1109311217_)))))
                            (_g1109311217_)))))))
               (_generate110939_
                (lambda (_args11074_ _arglen11075_ _hd11076_ _body11077_)
                  (let* ((_len11079_ (gx#stx-length _hd11076_))
                         (_condition11081_
                          (if (gx#stx-list? _hd11076_)
                              (cons '##fx=
                                    (cons _arglen11075_ (cons _len11079_ '())))
                              (if (> _len11079_ '0)
                                  (cons '##fx>=
                                        (cons _arglen11075_
                                              (cons _len11079_ '())))
                                  '#t)))
                         (_dispatch11083_
                          (if (_dispatch-case?10937_ _hd11076_ _body11077_)
                              (_dispatch-case-e10938_ _hd11076_ _body11077_)
                              (gxc#generate-runtime-lambda-form
                               _hd11076_
                               _body11077_))))
                    (cons _condition11081_
                          (cons (cons 'apply
                                      (cons _dispatch11083_
                                            (cons _args11074_ '())))
                                '()))))))
        (let* ((_g1094110969_
                (lambda (_g1094210966_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1094210966_)))
               (_g1094011071_
                (lambda (_g1094210972_)
                  (if (gx#stx-pair? _g1094210972_)
                      (let ((_e1094510974_ (gx#stx-e _g1094210972_)))
                        (let ((_hd1094610977_ (##car _e1094510974_))
                              (_tl1094710979_ (##cdr _e1094510974_)))
                          (if (gx#stx-pair/null? _tl1094710979_)
                              (let ((_g15492_
                                     (gx#syntax-split-splice
                                      _tl1094710979_
                                      '0)))
                                (begin
                                  (let ((_g15493_
                                         (if (##values? _g15492_)
                                             (##vector-length _g15492_)
                                             1)))
                                    (if (not (##fx= _g15493_ 2))
                                        (error "Context expects 2 values"
                                               _g15493_)))
                                  (let ((_target1094810982_
                                         (##vector-ref _g15492_ 0))
                                        (_tl1095010984_
                                         (##vector-ref _g15492_ 1)))
                                    (if (gx#stx-null? _tl1095010984_)
                                        (letrec ((_loop1095110987_
                                                  (lambda (_hd1094910990_
                                                           _body1095510992_
                                                           _hd1095610994_)
                                                    (if (gx#stx-pair?
                                                         _hd1094910990_)
                                                        (let ((_e1095210997_
                                                               (gx#stx-e
                                                                _hd1094910990_)))
                                                          (let ((_lp-hd1095311000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1095210997_))
                        (_lp-tl1095411002_ (##cdr _e1095210997_)))
                    (if (gx#stx-pair? _lp-hd1095311000_)
                        (let ((_e1095911005_ (gx#stx-e _lp-hd1095311000_)))
                          (let ((_hd1096011008_ (##car _e1095911005_))
                                (_tl1096111010_ (##cdr _e1095911005_)))
                            (if (gx#stx-pair? _tl1096111010_)
                                (let ((_e1096211013_
                                       (gx#stx-e _tl1096111010_)))
                                  (let ((_hd1096311016_ (##car _e1096211013_))
                                        (_tl1096411018_ (##cdr _e1096211013_)))
                                    (if (gx#stx-null? _tl1096411018_)
                                        (_loop1095110987_
                                         _lp-tl1095411002_
                                         (cons _hd1096311016_ _body1095510992_)
                                         (cons _hd1096011008_ _hd1095610994_))
                                        (_g1094110969_ _g1094210972_))))
                                (_g1094110969_ _g1094210972_))))
                        (_g1094110969_ _g1094210972_))))
                (let ((_body1095711021_ (reverse _body1095510992_))
                      (_hd1095811023_ (reverse _hd1095610994_)))
                  ((lambda (_L11026_ _L11027_)
                     (let ((_args11046_ (gxc#generate-runtime-temporary__0))
                           (_arglen11047_ (gxc#generate-runtime-temporary__0))
                           (_name11048_
                            (let ((_$e11043_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx10935_
                                    '#f)))
                              (if _$e11043_
                                  _$e11043_
                                  ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args11046_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen11047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args11046_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name11048_
                                                               (cons _args11046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g1104911052_ _g1105011054_)
                                        (_generate110939_
                                         _args11046_
                                         _arglen11047_
                                         _g1104911052_
                                         _g1105011054_))
                                      (foldr1 (lambda (_g1105611059_
                                                       _g1105711061_)
                                                (cons _g1105611059_
                                                      _g1105711061_))
                                              '()
                                              _L11027_)
                                      (foldr1 (lambda (_g1106311066_
                                                       _g1106411068_)
                                                (cons _g1106311066_
                                                      _g1106411068_))
                                              '()
                                              _L11026_))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body1095711021_
                   _hd1095811023_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1095110987_
                                           _target1094810982_
                                           '()
                                           '()))
                                        (_g1094110969_ _g1094210972_)))))
                              (_g1094110969_ _g1094210972_))))
                      (_g1094110969_ _g1094210972_)))))
          (_g1094011071_ _stx10935_)))))
  (define gxc#generate-runtime-let-values%__%
    (lambda (_stx10209_ _compiled-body?10210_)
      (letrec ((_generate-simple10212_
                (lambda (_hd10922_ _body10923_)
                  (_coalesce-boolean10213_
                   (_coalesce-let*10214_
                    (gxc#generate-runtime-simple-let
                     'let
                     _hd10922_
                     _body10923_
                     _compiled-body?10210_)))))
               (_coalesce-boolean10213_
                (lambda (_code10783_)
                  (if (gxc#current-compile-boolean-context)
                      (let* ((_code1078410810_ _code10783_)
                             (_else1078610818_ (lambda () _code10783_))
                             (_K1078810855_
                              (lambda (_expr210821_ _expr110822_ _id10823_)
                                (let* ((_expr21082410832_ _expr210821_)
                                       (_else1082610840_
                                        (lambda ()
                                          (cons 'or
                                                (cons _expr110822_
                                                      (cons _expr210821_
                                                            '())))))
                                       (_K1082810845_
                                        (lambda (_exprs10843_)
                                          (cons 'or
                                                (cons _expr110822_
                                                      _exprs10843_)))))
                                  (if (##pair? _expr21082410832_)
                                      (let ((_hd1082910848_
                                             (##car _expr21082410832_))
                                            (_tl1083010850_
                                             (##cdr _expr21082410832_)))
                                        (if (##eq? _hd1082910848_ 'or)
                                            (let ((_exprs10853_
                                                   _tl1083010850_))
                                              (_K1082810845_ _exprs10853_))
                                            (_else1082610840_)))
                                      (_else1082610840_))))))
                        (if (##pair? _code1078410810_)
                            (let ((_hd1078910858_ (##car _code1078410810_))
                                  (_tl1079010860_ (##cdr _code1078410810_)))
                              (if (##eq? _hd1078910858_ 'let)
                                  (if (##pair? _tl1079010860_)
                                      (let ((_hd1079110863_
                                             (##car _tl1079010860_))
                                            (_tl1079210865_
                                             (##cdr _tl1079010860_)))
                                        (if (##pair? _hd1079110863_)
                                            (let ((_hd1080310868_
                                                   (##car _hd1079110863_))
                                                  (_tl1080410870_
                                                   (##cdr _hd1079110863_)))
                                              (if (##pair? _hd1080310868_)
                                                  (let ((_hd1080510873_
                                                         (##car _hd1080310868_))
                                                        (_tl1080610875_
                                                         (##cdr _hd1080310868_)))
                                                    (let ((_id10878_
                                                           _hd1080510873_))
                                                      (if (##pair? _tl1080610875_)
                                                          (let ((_hd1080710880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl1080610875_))
                        (_tl1080810882_ (##cdr _tl1080610875_)))
                    (let ((_expr110885_ _hd1080710880_))
                      (if (##null? _tl1080810882_)
                          (if (##null? _tl1080410870_)
                              (if (##pair? _tl1079210865_)
                                  (let ((_hd1079310887_ (##car _tl1079210865_))
                                        (_tl1079410889_
                                         (##cdr _tl1079210865_)))
                                    (if (##pair? _hd1079310887_)
                                        (let ((_hd1079510892_
                                               (##car _hd1079310887_))
                                              (_tl1079610894_
                                               (##cdr _hd1079310887_)))
                                          (if (##eq? _hd1079510892_ 'if)
                                              (if (##pair? _tl1079610894_)
                                                  (let ((_hd1079710897_
                                                         (##car _tl1079610894_))
                                                        (_tl1079810899_
                                                         (##cdr _tl1079610894_)))
                                                    (if ((lambda (_g1090110903_)
                                                           (eq? _g1090110903_
                                                                _id10878_))
                                                         _hd1079710897_)
                                                        (if (##pair? _tl1079810899_)
                                                            (let ((_hd1079910906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##car _tl1079810899_))
                          (_tl1080010908_ (##cdr _tl1079810899_)))
                      (if ((lambda (_g1091010912_)
                             (eq? _g1091010912_ _id10878_))
                           _hd1079910906_)
                          (if (##pair? _tl1080010908_)
                              (let ((_hd1080110915_ (##car _tl1080010908_))
                                    (_tl1080210917_ (##cdr _tl1080010908_)))
                                (let ((_expr210920_ _hd1080110915_))
                                  (if (##null? _tl1080210917_)
                                      (if (##null? _tl1079410889_)
                                          (_K1078810855_
                                           _expr210920_
                                           _expr110885_
                                           _id10878_)
                                          (_else1078610818_))
                                      (_else1078610818_))))
                              (_else1078610818_))
                          (_else1078610818_)))
                    (_else1078610818_))
                (_else1078610818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else1078610818_))
                                              (_else1078610818_)))
                                        (_else1078610818_)))
                                  (_else1078610818_))
                              (_else1078610818_))
                          (_else1078610818_))))
                  (_else1078610818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else1078610818_)))
                                            (_else1078610818_)))
                                      (_else1078610818_))
                                  (_else1078610818_)))
                            (_else1078610818_)))
                      _code10783_)))
               (_coalesce-let*10214_
                (lambda (_code10516_)
                  (let* ((_code1051710581_ _code10516_)
                         (_else1052110589_ (lambda () _code10516_)))
                    (let ((_K1056310734_
                           (lambda (_body10730_ _expr10731_ _id10732_)
                             (cons 'let
                                   (cons (cons (cons _id10732_
                                                     (cons _expr10731_ '()))
                                               '())
                                         _body10730_))))
                          (_K1054010659_
                           (lambda (_body10653_
                                    _expr210654_
                                    _id210655_
                                    _expr110656_
                                    _id110657_)
                             (cons 'let*
                                   (cons (cons (cons _id110657_
                                                     (cons _expr110656_ '()))
                                               (cons (cons _id210655_
                                                           (cons _expr210654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _body10653_))))
                          (_K1052310598_
                           (lambda (_body10593_
                                    _bind10594_
                                    _expr110595_
                                    _id110596_)
                             (cons 'let*
                                   (cons (cons (cons _id110596_
                                                     (cons _expr110595_ '()))
                                               _bind10594_)
                                         _body10593_)))))
                      (if (##pair? _code1051710581_)
                          (let ((_tl1056510739_ (##cdr _code1051710581_))
                                (_hd1056410737_ (##car _code1051710581_)))
                            (if (##eq? _hd1056410737_ 'let)
                                (if (##pair? _tl1056510739_)
                                    (let ((_tl1056710744_
                                           (##cdr _tl1056510739_))
                                          (_hd1056610742_
                                           (##car _tl1056510739_)))
                                      (if (##pair? _hd1056610742_)
                                          (let ((_tl1057510749_
                                                 (##cdr _hd1056610742_))
                                                (_hd1057410747_
                                                 (##car _hd1056610742_)))
                                            (if (##pair? _hd1057410747_)
                                                (let ((_tl1057710754_
                                                       (##cdr _hd1057410747_))
                                                      (_hd1057610752_
                                                       (##car _hd1057410747_)))
                                                  (if (##pair? _tl1057710754_)
                                                      (let ((_tl1057910761_
                                                             (##cdr _tl1057710754_))
                                                            (_hd1057810759_
                                                             (##car _tl1057710754_)))
                                                        (if (##null? _tl1057910761_)
                                                            (if (##null? _tl1057510749_)
                                                                (if (##pair? _tl1056710744_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((_tl1056910768_ (##cdr _tl1056710744_))
                                  (_hd1056810766_ (##car _tl1056710744_)))
                              (if (##pair? _hd1056810766_)
                                  (let ((_tl1057110773_ (##cdr _hd1056810766_))
                                        (_hd1057010771_
                                         (##car _hd1056810766_)))
                                    (if (##eq? _hd1057010771_ 'let)
                                        (if (##pair? _tl1057110773_)
                                            (let ((_tl1057310778_
                                                   (##cdr _tl1057110773_))
                                                  (_hd1057210776_
                                                   (##car _tl1057110773_)))
                                              (if (##null? _hd1057210776_)
                                                  (if (##null? _tl1056910768_)
                                                      (let ((_id10757_
                                                             _hd1057610752_)
                                                            (_expr10764_
                                                             _hd1057810759_)
                                                            (_body10781_
                                                             _tl1057310778_))
                                                        (_K1056310734_
                                                         _body10781_
                                                         _expr10764_
                                                         _id10757_))
                                                      (_else1052110589_))
                                                  (if (##pair? _hd1057210776_)
                                                      (let ((_tl1055210708_
                                                             (##cdr _hd1057210776_))
                                                            (_hd1055110706_
                                                             (##car _hd1057210776_)))
                                                        (if (##pair? _hd1055110706_)
                                                            (let ((_tl1055410713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##cdr _hd1055110706_))
                          (_hd1055310711_ (##car _hd1055110706_)))
                      (if (##pair? _tl1055410713_)
                          (let ((_tl1055610720_ (##cdr _tl1055410713_))
                                (_hd1055510718_ (##car _tl1055410713_)))
                            (if (##null? _tl1055610720_)
                                (if (##null? _tl1055210708_)
                                    (if (##null? _tl1056910768_)
                                        (let ((_id110682_ _hd1057610752_)
                                              (_expr110689_ _hd1057810759_)
                                              (_id210716_ _hd1055310711_)
                                              (_expr210723_ _hd1055510718_)
                                              (_body10725_ _tl1057310778_))
                                          (_K1054010659_
                                           _body10725_
                                           _expr210723_
                                           _id210716_
                                           _expr110689_
                                           _id110682_))
                                        (_else1052110589_))
                                    (_else1052110589_))
                                (_else1052110589_)))
                          (_else1052110589_)))
                    (_else1052110589_)))
              (_else1052110589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_else1052110589_))
                                        (if (##eq? _hd1057010771_ 'let*)
                                            (if (##pair? _tl1057110773_)
                                                (let ((_tl1053310642_
                                                       (##cdr _tl1057110773_))
                                                      (_hd1053210640_
                                                       (##car _tl1057110773_)))
                                                  (if (##null? _tl1056910768_)
                                                      (let ((_id110621_
                                                             _hd1057610752_)
                                                            (_expr110628_
                                                             _hd1057810759_)
                                                            (_bind10645_
                                                             _hd1053210640_)
                                                            (_body10647_
                                                             _tl1053310642_))
                                                        (_K1052310598_
                                                         _body10647_
                                                         _bind10645_
                                                         _expr110628_
                                                         _id110621_))
                                                      (_else1052110589_)))
                                                (_else1052110589_))
                                            (_else1052110589_))))
                                  (_else1052110589_)))
                            (_else1052110589_))
                        (_else1052110589_))
                    (_else1052110589_)))
              (_else1052110589_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_else1052110589_)))
                                          (_else1052110589_)))
                                    (_else1052110589_))
                                (_else1052110589_)))
                          (_else1052110589_))))))
               (_generate-values10215_
                (lambda (_hd10329_ _body10330_)
                  (let _lp10332_ ((_rest10334_ _hd10329_)
                                  (_bind10335_ '())
                                  (_check10336_ '())
                                  (_post10337_ '()))
                    (let* ((___stx1511115112_ _rest10334_)
                           (_g1034010351_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1511115112_))))
                      (let ((___kont1511315114_
                             (lambda (_L10378_ _L10379_)
                               (let* ((___stx1506715068_ _L10379_)
                                      (_g1039410419_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx1506715068_))))
                                 (let ((___kont1506915070_
                                        (lambda (_L10492_ _L10493_)
                                          (let ((_eid10507_
                                                 (gxc#generate-runtime-binding-id*
                                                  _L10493_))
                                                (_expr10508_
                                                 (gxc#compile-e _L10492_)))
                                            (_lp10332_
                                             _L10378_
                                             (cons (cons _eid10507_
                                                         (cons _expr10508_
                                                               '()))
                                                   _bind10335_)
                                             _check10336_
                                             _post10337_))))
                                       (___kont1507115072_
                                        (lambda (_L10440_ _L10441_)
                                          (let* ((_vals10454_
                                                  (gxc#generate-runtime-temporary__0))
                                                 (_check-values10456_
                                                  (gxc#generate-runtime-check-values
                                                   _vals10454_
                                                   _L10441_
                                                   _L10440_))
                                                 (_refs10458_
                                                  (gxc#generate-runtime-let-values-bind
                                                   _vals10454_
                                                   _L10441_))
                                                 (_expr10460_
                                                  (gxc#compile-e _L10440_)))
                                            (_lp10332_
                                             _L10378_
                                             (cons (cons _vals10454_
                                                         (cons _expr10460_
                                                               '()))
                                                   _bind10335_)
                                             (cons _check-values10456_
                                                   _check10336_)
                                             (cons _refs10458_
                                                   _post10337_))))))
                                   (if (gx#stx-pair? ___stx1506715068_)
                                       (let ((_e1039810468_
                                              (gx#stx-e ___stx1506715068_)))
                                         (let ((_tl1040010473_
                                                (##cdr _e1039810468_))
                                               (_hd1039910471_
                                                (##car _e1039810468_)))
                                           (if (gx#stx-pair? _hd1039910471_)
                                               (let ((_e1040110476_
                                                      (gx#stx-e
                                                       _hd1039910471_)))
                                                 (let ((_tl1040310481_
                                                        (##cdr _e1040110476_))
                                                       (_hd1040210479_
                                                        (##car _e1040110476_)))
                                                   (if (gx#stx-null?
                                                        _tl1040310481_)
                                                       (if (gx#stx-pair?
                                                            _tl1040010473_)
                                                           (let ((_e1040410484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1040010473_)))
                     (let ((_tl1040610489_ (##cdr _e1040410484_))
                           (_hd1040510487_ (##car _e1040410484_)))
                       (if (gx#stx-null? _tl1040610489_)
                           (___kont1506915070_ _hd1040510487_ _hd1040210479_)
                           (_g1039410419_))))
                   (_g1039410419_))
               (if (gx#stx-pair? _tl1040010473_)
                   (let ((_e1041210432_ (gx#stx-e _tl1040010473_)))
                     (let ((_tl1041410437_ (##cdr _e1041210432_))
                           (_hd1041310435_ (##car _e1041210432_)))
                       (if (gx#stx-null? _tl1041410437_)
                           (___kont1507115072_ _hd1041310435_ _hd1039910471_)
                           (_g1039410419_))))
                   (_g1039410419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl1040010473_)
                                                   (let ((_e1041210432_
                                                          (gx#stx-e
                                                           _tl1040010473_)))
                                                     (let ((_tl1041410437_
                                                            (##cdr _e1041210432_))
                                                           (_hd1041310435_
                                                            (##car _e1041210432_)))
                                                       (if (gx#stx-null?
                                                            _tl1041410437_)
                                                           (___kont1507115072_
                                                            _hd1041310435_
                                                            _hd1039910471_)
                                                           (_g1039410419_))))
                                                   (_g1039410419_)))))
                                       (_g1039410419_))))))
                            (___kont1511515116_
                             (lambda ()
                               (let* ((_body10358_
                                       (if _compiled-body?10210_
                                           _body10330_
                                           (gxc#compile-e _body10330_)))
                                      (_body10360_
                                       (_generate-values-post10216_
                                        _post10337_
                                        _body10358_))
                                      (_body10362_
                                       (_generate-values-check10217_
                                        _check10336_
                                        _body10360_)))
                                 (cons 'let
                                       (cons (reverse _bind10335_)
                                             (cons _body10362_ '())))))))
                        (if (gx#stx-pair? ___stx1511115112_)
                            (let ((_e1034410370_ (gx#stx-e ___stx1511115112_)))
                              (let ((_tl1034610375_ (##cdr _e1034410370_))
                                    (_hd1034510373_ (##car _e1034410370_)))
                                (___kont1511315114_
                                 _tl1034610375_
                                 _hd1034510373_)))
                            (___kont1511515116_)))))))
               (_generate-values-post10216_
                (lambda (_post10288_ _body10289_)
                  (let _lp10291_ ((_rest10293_ _post10288_)
                                  (_body10294_ _body10289_))
                    (let* ((_rest1029510303_ _rest10293_)
                           (_else1029710311_ (lambda () _body10294_))
                           (_K1029910317_
                            (lambda (_rest10314_ _bind10315_)
                              (_lp10291_
                               _rest10314_
                               (cons 'let
                                     (cons _bind10315_
                                           (cons _body10294_ '())))))))
                      (if (##pair? _rest1029510303_)
                          (let ((_hd1030010320_ (##car _rest1029510303_))
                                (_tl1030110322_ (##cdr _rest1029510303_)))
                            (let* ((_bind10325_ _hd1030010320_)
                                   (_rest10327_ _tl1030110322_))
                              (_K1029910317_ _rest10327_ _bind10325_)))
                          (_else1029710311_))))))
               (_generate-values-check10217_
                (lambda (_check10285_ _body10286_)
                  (cons 'begin
                        (foldr1 cons
                                (cons _body10286_ '())
                                (reverse _check10285_))))))
        (let* ((_g1021910236_
                (lambda (_g1022010233_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1022010233_)))
               (_g1021810282_
                (lambda (_g1022010239_)
                  (if (gx#stx-pair? _g1022010239_)
                      (let ((_e1022310241_ (gx#stx-e _g1022010239_)))
                        (let ((_hd1022410244_ (##car _e1022310241_))
                              (_tl1022510246_ (##cdr _e1022310241_)))
                          (if (gx#stx-pair? _tl1022510246_)
                              (let ((_e1022610249_ (gx#stx-e _tl1022510246_)))
                                (let ((_hd1022710252_ (##car _e1022610249_))
                                      (_tl1022810254_ (##cdr _e1022610249_)))
                                  (if (gx#stx-pair? _tl1022810254_)
                                      (let ((_e1022910257_
                                             (gx#stx-e _tl1022810254_)))
                                        (let ((_hd1023010260_
                                               (##car _e1022910257_))
                                              (_tl1023110262_
                                               (##cdr _e1022910257_)))
                                          (if (gx#stx-null? _tl1023110262_)
                                              ((lambda (_L10265_ _L10266_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L10266_)
                                                     (_generate-simple10212_
                                                      _L10266_
                                                      _L10265_)
                                                     (_generate-values10215_
                                                      _L10266_
                                                      _L10265_)))
                                               _hd1023010260_
                                               _hd1022710252_)
                                              (_g1021910236_ _g1022010239_))))
                                      (_g1021910236_ _g1022010239_))))
                              (_g1021910236_ _g1022010239_))))
                      (_g1021910236_ _g1022010239_)))))
          (_g1021810282_ _stx10209_)))))
  (define gxc#generate-runtime-let-values%__0
    (lambda (_stx10928_)
      (let ((_compiled-body?10930_ '#f))
        (gxc#generate-runtime-let-values%__%
         _stx10928_
         _compiled-body?10930_))))
  (define gxc#generate-runtime-let-values%
    (lambda _g15495_
      (let ((_g15494_ (length _g15495_)))
        (cond ((##fx= _g15494_ 1)
               (apply gxc#generate-runtime-let-values%__0 _g15495_))
              ((##fx= _g15494_ 2)
               (apply gxc#generate-runtime-let-values%__% _g15495_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-let-values%
                _g15495_))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals10103_ _hd10104_)
      (let _lp10106_ ((_rest10108_ _hd10104_) (_k10109_ '0) (_r10110_ '()))
        (let* ((___stx1512515126_ _rest10108_)
               (_g1011510132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1512515126_))))
          (let ((___kont1512715128_
                 (lambda (_L10195_)
                   (_lp10106_ _L10195_ (fx+ _k10109_ '1) _r10110_)))
                (___kont1512915130_
                 (lambda (_L10168_ _L10169_)
                   (_lp10106_
                    _L10168_
                    (fx+ _k10109_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L10169_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals10103_
                                       _k10109_
                                       _L10168_)
                                      '()))
                          _r10110_))))
                (___kont1513115132_
                 (lambda (_L10144_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L10144_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals10103_
                                              _k10109_)
                                             '()))
                                 '())
                           _r10110_)))
                (___kont1513315134_ (lambda () (reverse _r10110_))))
            (let ((_g1011310155_
                   (lambda ()
                     (let ((_L10144_ ___stx1512515126_))
                       (if (gx#identifier? _L10144_)
                           (___kont1513115132_ _L10144_)
                           (___kont1513315134_))))))
              (if (gx#stx-pair? ___stx1512515126_)
                  (let ((_e1011810184_ (gx#stx-e ___stx1512515126_)))
                    (let ((_tl1012010189_ (##cdr _e1011810184_))
                          (_hd1011910187_ (##car _e1011810184_)))
                      (if (gx#stx-datum? _hd1011910187_)
                          (let ((_e1012110192_ (gx#stx-e _hd1011910187_)))
                            (if (equal? _e1012110192_ '#f)
                                (___kont1512715128_ _tl1012010189_)
                                (___kont1512915130_
                                 _tl1012010189_
                                 _hd1011910187_)))
                          (___kont1512915130_ _tl1012010189_ _hd1011910187_))))
                  (_g1011310155_))))))))
  (define gxc#generate-runtime-letrec-values%__%
    (lambda (_stx9785_ _compiled-body?9786_)
      (letrec ((_generate-simple9788_
                (lambda (_hd10090_ _body10091_)
                  (gxc#generate-runtime-simple-let
                   'letrec
                   _hd10090_
                   _body10091_
                   _compiled-body?9786_)))
               (_generate-values9789_
                (lambda (_hd9869_ _body9870_)
                  (let _lp9872_ ((_rest9874_ _hd9869_)
                                 (_bind9875_ '())
                                 (_check9876_ '())
                                 (_post9877_ '()))
                    (let* ((___stx1519915200_ _rest9874_)
                           (_g98809891_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1519915200_))))
                      (let ((___kont1520115202_
                             (lambda (_L9918_ _L9919_)
                               (let* ((___stx1515515156_ _L9919_)
                                      (_g99349959_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx1515515156_))))
                                 (let ((___kont1515715158_
                                        (lambda (_L10066_ _L10067_)
                                          (let ((_eid10081_
                                                 (gxc#generate-runtime-binding-id*
                                                  _L10067_))
                                                (_expr10082_
                                                 (gxc#compile-e _L10066_)))
                                            (_lp9872_
                                             _L9918_
                                             (cons (cons _eid10081_
                                                         (cons _expr10082_
                                                               '()))
                                                   _bind9875_)
                                             _check9876_
                                             _post9877_))))
                                       (___kont1515915160_
                                        (lambda (_L9980_ _L9981_)
                                          (let* ((_vals9994_
                                                  (gxc#generate-runtime-temporary__0))
                                                 (_check-values9996_
                                                  (gxc#generate-runtime-check-values
                                                   _vals9994_
                                                   _L9981_
                                                   _L9980_))
                                                 (_refs9998_
                                                  (gxc#generate-runtime-let-values-bind
                                                   _vals9994_
                                                   _L9981_))
                                                 (_expr10000_
                                                  (gxc#compile-e _L9980_)))
                                            (_lp9872_
                                             _L9918_
                                             (foldl1 cons
                                                     (cons (cons _vals9994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr10000_ '()))
                   _bind9875_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (map (lambda (_e1000210004_)
                                                            (let* ((_g1000610015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e1000210004_)
                           (_E1000810019_
                            (lambda ()
                              (error '"No clause matching" _g1000610015_)))
                           (_K1000910024_
                            (lambda (_eid10022_)
                              (cons _eid10022_ (cons '#!void '())))))
                      (if (##pair? _g1000610015_)
                          (let ((_hd1001010027_ (##car _g1000610015_))
                                (_tl1001110029_ (##cdr _g1000610015_)))
                            (let ((_eid10032_ _hd1001010027_))
                              (if (##pair? _tl1001110029_)
                                  (let ((_tl1001310034_
                                         (##cdr _tl1001110029_)))
                                    (if (##null? _tl1001310034_)
                                        (_K1000910024_ _eid10032_)
                                        (_E1000810019_)))
                                  (_E1000810019_))))
                          (_E1000810019_))))
                  _refs9998_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _check-values9996_
                                                   _check9876_)
                                             (foldl1 cons
                                                     _refs9998_
                                                     _post9877_))))))
                                   (if (gx#stx-pair? ___stx1515515156_)
                                       (let ((_e993810042_
                                              (gx#stx-e ___stx1515515156_)))
                                         (let ((_tl994010047_
                                                (##cdr _e993810042_))
                                               (_hd993910045_
                                                (##car _e993810042_)))
                                           (if (gx#stx-pair? _hd993910045_)
                                               (let ((_e994110050_
                                                      (gx#stx-e
                                                       _hd993910045_)))
                                                 (let ((_tl994310055_
                                                        (##cdr _e994110050_))
                                                       (_hd994210053_
                                                        (##car _e994110050_)))
                                                   (if (gx#stx-null?
                                                        _tl994310055_)
                                                       (if (gx#stx-pair?
                                                            _tl994010047_)
                                                           (let ((_e994410058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl994010047_)))
                     (let ((_tl994610063_ (##cdr _e994410058_))
                           (_hd994510061_ (##car _e994410058_)))
                       (if (gx#stx-null? _tl994610063_)
                           (___kont1515715158_ _hd994510061_ _hd994210053_)
                           (_g99349959_))))
                   (_g99349959_))
               (if (gx#stx-pair? _tl994010047_)
                   (let ((_e99529972_ (gx#stx-e _tl994010047_)))
                     (let ((_tl99549977_ (##cdr _e99529972_))
                           (_hd99539975_ (##car _e99529972_)))
                       (if (gx#stx-null? _tl99549977_)
                           (___kont1515915160_ _hd99539975_ _hd993910045_)
                           (_g99349959_))))
                   (_g99349959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair? _tl994010047_)
                                                   (let ((_e99529972_
                                                          (gx#stx-e
                                                           _tl994010047_)))
                                                     (let ((_tl99549977_
                                                            (##cdr _e99529972_))
                                                           (_hd99539975_
                                                            (##car _e99529972_)))
                                                       (if (gx#stx-null?
                                                            _tl99549977_)
                                                           (___kont1515915160_
                                                            _hd99539975_
                                                            _hd993910045_)
                                                           (_g99349959_))))
                                                   (_g99349959_)))))
                                       (_g99349959_))))))
                            (___kont1520315204_
                             (lambda ()
                               (let* ((_body9898_
                                       (if _compiled-body?9786_
                                           _body9870_
                                           (gxc#compile-e _body9870_)))
                                      (_body9900_
                                       (_generate-values-post9791_
                                        _post9877_
                                        _body9898_))
                                      (_body9902_
                                       (_generate-values-check9790_
                                        _check9876_
                                        _body9900_)))
                                 (cons 'letrec
                                       (cons (reverse _bind9875_)
                                             (cons _body9902_ '())))))))
                        (if (gx#stx-pair? ___stx1519915200_)
                            (let ((_e98849910_ (gx#stx-e ___stx1519915200_)))
                              (let ((_tl98869915_ (##cdr _e98849910_))
                                    (_hd98859913_ (##car _e98849910_)))
                                (___kont1520115202_
                                 _tl98869915_
                                 _hd98859913_)))
                            (___kont1520315204_)))))))
               (_generate-values-check9790_
                (lambda (_check9866_ _body9867_)
                  (cons 'begin
                        (foldr1 cons
                                (cons _body9867_ '())
                                (reverse _check9866_)))))
               (_generate-values-post9791_
                (lambda (_post9859_ _body9860_)
                  (cons 'begin
                        (foldr1 cons
                                (cons _body9860_ '())
                                (map (lambda (_g98619863_)
                                       (cons 'set! _g98619863_))
                                     (reverse _post9859_)))))))
        (let* ((_g97939810_
                (lambda (_g97949807_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g97949807_)))
               (_g97929856_
                (lambda (_g97949813_)
                  (if (gx#stx-pair? _g97949813_)
                      (let ((_e97979815_ (gx#stx-e _g97949813_)))
                        (let ((_hd97989818_ (##car _e97979815_))
                              (_tl97999820_ (##cdr _e97979815_)))
                          (if (gx#stx-pair? _tl97999820_)
                              (let ((_e98009823_ (gx#stx-e _tl97999820_)))
                                (let ((_hd98019826_ (##car _e98009823_))
                                      (_tl98029828_ (##cdr _e98009823_)))
                                  (if (gx#stx-pair? _tl98029828_)
                                      (let ((_e98039831_
                                             (gx#stx-e _tl98029828_)))
                                        (let ((_hd98049834_
                                               (##car _e98039831_))
                                              (_tl98059836_
                                               (##cdr _e98039831_)))
                                          (if (gx#stx-null? _tl98059836_)
                                              ((lambda (_L9839_ _L9840_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9840_)
                                                     (_generate-simple9788_
                                                      _L9840_
                                                      _L9839_)
                                                     (_generate-values9789_
                                                      _L9840_
                                                      _L9839_)))
                                               _hd98049834_
                                               _hd98019826_)
                                              (_g97939810_ _g97949813_))))
                                      (_g97939810_ _g97949813_))))
                              (_g97939810_ _g97949813_))))
                      (_g97939810_ _g97949813_)))))
          (_g97929856_ _stx9785_)))))
  (define gxc#generate-runtime-letrec-values%__0
    (lambda (_stx10096_)
      (let ((_compiled-body?10098_ '#f))
        (gxc#generate-runtime-letrec-values%__%
         _stx10096_
         _compiled-body?10098_))))
  (define gxc#generate-runtime-letrec-values%
    (lambda _g15497_
      (let ((_g15496_ (length _g15497_)))
        (cond ((##fx= _g15496_ 1)
               (apply gxc#generate-runtime-letrec-values%__0 _g15497_))
              ((##fx= _g15496_ 2)
               (apply gxc#generate-runtime-letrec-values%__% _g15497_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#generate-runtime-letrec-values%
                _g15497_))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx9367_)
      (letrec ((_generate-values9369_
                (lambda (_hd9612_ _body9613_)
                  (let _lp9615_ ((_rest9617_ _hd9612_) (_bind9618_ '()))
                    (let* ((_rest96199627_ _rest9617_)
                           (_else96219638_
                            (lambda ()
                              (let ((_bind9635_ (reverse _bind9618_))
                                    (_body9636_ (gxc#compile-e _body9613_)))
                                (cons 'letrec*
                                      (cons _bind9635_
                                            (cons _body9636_ '()))))))
                           (_K96239772_
                            (lambda (_rest9641_ _hd-bind9642_)
                              (let* ((___stx1521315214_ _hd-bind9642_)
                                     (_g96459670_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1521315214_))))
                                (let ((___kont1521515216_
                                       (lambda (_L9751_ _L9752_)
                                         (let ((_eid9766_
                                                (gxc#generate-runtime-binding-id*
                                                 _L9752_))
                                               (_expr9767_
                                                (gxc#compile-e _L9751_)))
                                           (_lp9615_
                                            _rest9641_
                                            (cons (cons _eid9766_
                                                        (cons _expr9767_ '()))
                                                  _bind9618_)))))
                                      (___kont1521715218_
                                       (lambda (_L9691_ _L9692_)
                                         (let* ((_vals9711_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp9713_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values9715_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp9713_
                                                  _L9692_
                                                  _L9691_))
                                                (_refs9717_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals9711_
                                                  _L9692_))
                                                (_expr9719_
                                                 (gxc#compile-e _L9691_)))
                                           (_lp9615_
                                            _rest9641_
                                            (foldl1 cons
                                                    (cons (cons _vals9711_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp9713_
                                                      (cons _expr9719_ '()))
                                                '())
                                          (cons _check-values9715_
                                                (cons _tmp9713_ '()))))
                              '()))
                  _bind9618_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs9717_))))))
                                  (if (gx#stx-pair? ___stx1521315214_)
                                      (let ((_e96499727_
                                             (gx#stx-e ___stx1521315214_)))
                                        (let ((_tl96519732_
                                               (##cdr _e96499727_))
                                              (_hd96509730_
                                               (##car _e96499727_)))
                                          (if (gx#stx-pair? _hd96509730_)
                                              (let ((_e96529735_
                                                     (gx#stx-e _hd96509730_)))
                                                (let ((_tl96549740_
                                                       (##cdr _e96529735_))
                                                      (_hd96539738_
                                                       (##car _e96529735_)))
                                                  (if (gx#stx-null?
                                                       _tl96549740_)
                                                      (if (gx#stx-pair?
                                                           _tl96519732_)
                                                          (let ((_e96559743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl96519732_)))
                    (let ((_tl96579748_ (##cdr _e96559743_))
                          (_hd96569746_ (##car _e96559743_)))
                      (if (gx#stx-null? _tl96579748_)
                          (___kont1521515216_ _hd96569746_ _hd96539738_)
                          (_g96459670_))))
                  (_g96459670_))
              (if (gx#stx-pair? _tl96519732_)
                  (let ((_e96639683_ (gx#stx-e _tl96519732_)))
                    (let ((_tl96659688_ (##cdr _e96639683_))
                          (_hd96649686_ (##car _e96639683_)))
                      (if (gx#stx-null? _tl96659688_)
                          (___kont1521715218_ _hd96649686_ _hd96509730_)
                          (_g96459670_))))
                  (_g96459670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl96519732_)
                                                  (let ((_e96639683_
                                                         (gx#stx-e
                                                          _tl96519732_)))
                                                    (let ((_tl96659688_
                                                           (##cdr _e96639683_))
                                                          (_hd96649686_
                                                           (##car _e96639683_)))
                                                      (if (gx#stx-null?
                                                           _tl96659688_)
                                                          (___kont1521715218_
                                                           _hd96649686_
                                                           _hd96509730_)
                                                          (_g96459670_))))
                                                  (_g96459670_)))))
                                      (_g96459670_)))))))
                      (if (##pair? _rest96199627_)
                          (let ((_hd96249775_ (##car _rest96199627_))
                                (_tl96259777_ (##cdr _rest96199627_)))
                            (let* ((_hd-bind9780_ _hd96249775_)
                                   (_rest9782_ _tl96259777_))
                              (_K96239772_ _rest9782_ _hd-bind9780_)))
                          (_else96219638_))))))
               (_generate-letrec?9370_
                (lambda (_hd9502_)
                  (let _lp9504_ ((_rest9506_ _hd9502_))
                    (let* ((_rest95079515_ _rest9506_)
                           (_else95099523_ (lambda () '#t))
                           (_K95119600_
                            (lambda (_rest9526_ _hd-bind9527_)
                              (let* ((_g95299546_
                                      (lambda (_g95309543_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g95309543_)))
                                     (_g95289597_
                                      (lambda (_g95309549_)
                                        (if (gx#stx-pair? _g95309549_)
                                            (let ((_e95339551_
                                                   (gx#stx-e _g95309549_)))
                                              (let ((_hd95349554_
                                                     (##car _e95339551_))
                                                    (_tl95359556_
                                                     (##cdr _e95339551_)))
                                                (if (gx#stx-pair? _hd95349554_)
                                                    (let ((_e95369559_
                                                           (gx#stx-e
                                                            _hd95349554_)))
                                                      (let ((_hd95379562_
                                                             (##car _e95369559_))
                                                            (_tl95389564_
                                                             (##cdr _e95369559_)))
                                                        (if (gx#stx-null?
                                                             _tl95389564_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl95359556_)
                        (let ((_e95399567_ (gx#stx-e _tl95359556_)))
                          (let ((_hd95409570_ (##car _e95399567_))
                                (_tl95419572_ (##cdr _e95399567_)))
                            (if (gx#stx-null? _tl95419572_)
                                ((lambda (_L9575_ _L9576_)
                                   (if (_is-lambda-expr?9371_ _L9575_)
                                       (_lp9504_ _rest9526_)
                                       '#f))
                                 _hd95409570_
                                 _hd95379562_)
                                (_g95299546_ _g95309549_))))
                        (_g95299546_ _g95309549_))
                    (_g95299546_ _g95309549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95299546_
                                                     _g95309549_))))
                                            (_g95299546_ _g95309549_)))))
                                (_g95289597_ _hd-bind9527_)))))
                      (if (##pair? _rest95079515_)
                          (let ((_hd95129603_ (##car _rest95079515_))
                                (_tl95139605_ (##cdr _rest95079515_)))
                            (let* ((_hd-bind9608_ _hd95129603_)
                                   (_rest9610_ _tl95139605_))
                              (_K95119600_ _rest9610_ _hd-bind9608_)))
                          (_else95099523_))))))
               (_is-lambda-expr?9371_
                (lambda (_expr9439_)
                  (let* ((___stx1525715258_ _expr9439_)
                         (_g94429456_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1525715258_))))
                    (let ((___kont1525915260_ (lambda (_L9484_ _L9485_) '#t))
                          (___kont1526115262_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1525715258_)
                          (let ((_e94469468_ (gx#stx-e ___stx1525715258_)))
                            (let ((_tl94489473_ (##cdr _e94469468_))
                                  (_hd94479471_ (##car _e94469468_)))
                              (if (gx#identifier? _hd94479471_)
                                  (if (gx#stx-eq? '%#lambda _hd94479471_)
                                      (if (gx#stx-pair? _tl94489473_)
                                          (let ((_e94499476_
                                                 (gx#stx-e _tl94489473_)))
                                            (let ((_tl94519481_
                                                   (##cdr _e94499476_))
                                                  (_hd94509479_
                                                   (##car _e94499476_)))
                                              (___kont1525915260_
                                               _tl94519481_
                                               _hd94509479_)))
                                          (___kont1526115262_))
                                      (___kont1526115262_))
                                  (___kont1526115262_))))
                          (___kont1526115262_)))))))
        (let* ((_g93739390_
                (lambda (_g93749387_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g93749387_)))
               (_g93729436_
                (lambda (_g93749393_)
                  (if (gx#stx-pair? _g93749393_)
                      (let ((_e93779395_ (gx#stx-e _g93749393_)))
                        (let ((_hd93789398_ (##car _e93779395_))
                              (_tl93799400_ (##cdr _e93779395_)))
                          (if (gx#stx-pair? _tl93799400_)
                              (let ((_e93809403_ (gx#stx-e _tl93799400_)))
                                (let ((_hd93819406_ (##car _e93809403_))
                                      (_tl93829408_ (##cdr _e93809403_)))
                                  (if (gx#stx-pair? _tl93829408_)
                                      (let ((_e93839411_
                                             (gx#stx-e _tl93829408_)))
                                        (let ((_hd93849414_
                                               (##car _e93839411_))
                                              (_tl93859416_
                                               (##cdr _e93839411_)))
                                          (if (gx#stx-null? _tl93859416_)
                                              ((lambda (_L9419_ _L9420_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9420_)
                                                     (if (_generate-letrec?9370_
                                                          _L9420_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L9420_
                                                          _L9419_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L9420_
                                                          _L9419_
                                                          '#f))
                                                     (_generate-values9369_
                                                      _L9420_
                                                      _L9419_)))
                                               _hd93849414_
                                               _hd93819406_)
                                              (_g93739390_ _g93749393_))))
                                      (_g93739390_ _g93749393_))))
                              (_g93739390_ _g93749393_))))
                      (_g93739390_ _g93749393_)))))
          (_g93729436_ _stx9367_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd9304_)
      (let _lp9306_ ((_rest9308_ _hd9304_))
        (let* ((_rest93099325_ _rest9308_) (_else93129333_ (lambda () '#f)))
          (let ((_K93159346_ (lambda (_rest9344_) (_lp9306_ _rest9344_)))
                (_K93149338_ (lambda () '#t)))
            (let ((_try-match93119341_
                   (lambda ()
                     (if (##null? _rest93099325_)
                         (_K93149338_)
                         (_else93129333_)))))
              (if (##pair? _rest93099325_)
                  (let ((_tl93179351_ (##cdr _rest93099325_))
                        (_hd93169349_ (##car _rest93099325_)))
                    (if (##pair? _hd93169349_)
                        (let ((_tl93199356_ (##cdr _hd93169349_))
                              (_hd93189354_ (##car _hd93169349_)))
                          (if (##pair? _hd93189354_)
                              (let ((_tl93239359_ (##cdr _hd93189354_)))
                                (if (##null? _tl93239359_)
                                    (if (##pair? _tl93199356_)
                                        (let ((_tl93219362_
                                               (##cdr _tl93199356_)))
                                          (if (##null? _tl93219362_)
                                              (let ((_rest9365_ _tl93179351_))
                                                (_lp9306_ _rest9365_))
                                              (_else93129333_)))
                                        (_else93129333_))
                                    (_else93129333_)))
                              (_else93129333_)))
                        (_else93129333_)))
                  (_try-match93119341_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form9216_ _hd9217_ _body9218_ _compiled-body?9219_)
      (letrec ((_generate19221_
                (lambda (_bind9260_)
                  (let* ((_bind92619272_ _bind9260_)
                         (_E92639276_
                          (lambda ()
                            (error '"No clause matching" _bind92619272_)))
                         (_K92649282_
                          (lambda (_expr9279_ _id9280_)
                            (cons (gxc#generate-runtime-binding-id* _id9280_)
                                  (cons (gxc#compile-e _expr9279_) '())))))
                    (if (##pair? _bind92619272_)
                        (let ((_hd92659285_ (##car _bind92619272_))
                              (_tl92669287_ (##cdr _bind92619272_)))
                          (if (##pair? _hd92659285_)
                              (let ((_hd92699290_ (##car _hd92659285_))
                                    (_tl92709292_ (##cdr _hd92659285_)))
                                (let ((_id9295_ _hd92699290_))
                                  (if (##null? _tl92709292_)
                                      (if (##pair? _tl92669287_)
                                          (let ((_hd92679297_
                                                 (##car _tl92669287_))
                                                (_tl92689299_
                                                 (##cdr _tl92669287_)))
                                            (let ((_expr9302_ _hd92679297_))
                                              (if (##null? _tl92689299_)
                                                  (_K92649282_
                                                   _expr9302_
                                                   _id9295_)
                                                  (_E92639276_))))
                                          (_E92639276_))
                                      (_E92639276_))))
                              (_E92639276_)))
                        (_E92639276_))))))
        (let* ((_bind9223_ (map _generate19221_ _hd9217_))
               (_body9225_
                (if _compiled-body?9219_
                    _body9218_
                    (gxc#compile-e _body9218_)))
               (_body9257_
                (let* ((_body92269234_ _body9225_)
                       (_else92289242_ (lambda () (cons _body9225_ '())))
                       (_K92309247_ (lambda (_exprs9245_) _exprs9245_)))
                  (if (##pair? _body92269234_)
                      (let ((_hd92319250_ (##car _body92269234_))
                            (_tl92329252_ (##cdr _body92269234_)))
                        (if (##eq? _hd92319250_ 'begin)
                            (let ((_exprs9255_ _tl92329252_))
                              (_K92309247_ _exprs9255_))
                            (_else92289242_)))
                      (_else92289242_)))))
          (cons _form9216_ (cons _bind9223_ _body9257_))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx9124_)
      (letrec ((_generate19126_
                (lambda (_datum9178_)
                  (if (or (null? _datum9178_)
                          (interned-symbol? _datum9178_)
                          (gx#self-quoting? _datum9178_)
                          (eof-object? _datum9178_))
                      _datum9178_
                      (if (uninterned-symbol? _datum9178_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum9178_
                           '#t)
                          (if (pair? _datum9178_)
                              (cons (_generate19126_ (car _datum9178_))
                                    (_generate19126_ (cdr _datum9178_)))
                              (if (box? _datum9178_)
                                  (box (_generate19126_ (unbox _datum9178_)))
                                  (if (vector? _datum9178_)
                                      (vector-map _generate19126_ _datum9178_)
                                      (if (or (s8vector? _datum9178_)
                                              (u8vector? _datum9178_)
                                              (s16vector? _datum9178_)
                                              (u16vector? _datum9178_)
                                              (s32vector? _datum9178_)
                                              (u32vector? _datum9178_)
                                              (s64vector? _datum9178_)
                                              (u64vector? _datum9178_)
                                              (f32vector? _datum9178_)
                                              (f64vector? _datum9178_))
                                          _datum9178_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx9124_))))))))))
        (let* ((_g91289141_
                (lambda (_g91299138_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g91299138_)))
               (_g91279175_
                (lambda (_g91299144_)
                  (if (gx#stx-pair? _g91299144_)
                      (let ((_e91319146_ (gx#stx-e _g91299144_)))
                        (let ((_hd91329149_ (##car _e91319146_))
                              (_tl91339151_ (##cdr _e91319146_)))
                          (if (gx#stx-pair? _tl91339151_)
                              (let ((_e91349154_ (gx#stx-e _tl91339151_)))
                                (let ((_hd91359157_ (##car _e91349154_))
                                      (_tl91369159_ (##cdr _e91349154_)))
                                  (if (gx#stx-null? _tl91369159_)
                                      ((lambda (_L9162_)
                                         (cons 'quote
                                               (cons (_generate19126_
                                                      (gx#stx-e _L9162_))
                                                     '())))
                                       _hd91359157_)
                                      (_g91289141_ _g91299144_))))
                              (_g91289141_ _g91299144_))))
                      (_g91289141_ _g91299144_)))))
          (_g91279175_ _stx9124_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx8817_)
      (let* ((_g88198833_
              (lambda (_g88208830_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g88208830_)))
             (_g88189121_
              (lambda (_g88208836_)
                (if (gx#stx-pair? _g88208836_)
                    (let ((_e88238838_ (gx#stx-e _g88208836_)))
                      (let ((_hd88248841_ (##car _e88238838_))
                            (_tl88258843_ (##cdr _e88238838_)))
                        (if (gx#stx-pair? _tl88258843_)
                            (let ((_e88268846_ (gx#stx-e _tl88258843_)))
                              (let ((_hd88278849_ (##car _e88268846_))
                                    (_tl88288851_ (##cdr _e88268846_)))
                                ((lambda (_L8854_ _L8855_)
                                   (let ((_rator8868_ (gxc#compile-e _L8855_))
                                         (_rands8869_
                                          (map gxc#compile-e _L8854_)))
                                     (let* ((___stx1530415305_ _rator8868_)
                                            (_g88728924_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1530415305_))))
                                       (let ((___kont1530615307_
                                              (lambda (_L9048_
                                                       _L9049_
                                                       _L9050_
                                                       _L9051_)
                                                (if (fx= (length _rands8869_)
                                                         (length (foldr1 (lambda (_g90879090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          _g90889092_)
                                   (cons _g90879090_ _g90889092_))
                                 '()
                                 _L9050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id9095_ _L9051_)
                                                           (_args9104_
                                                            (foldr1 (lambda (_g90969099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g90979101_)
                              (cons _g90969099_ _g90979101_))
                            '()
                            _L9050_))
                   (_body9113_
                    (foldr1 (lambda (_g91059108_ _g91069110_)
                              (cons _g91059108_ _g91069110_))
                            '()
                            _L9049_))
                   (_init9115_ (map list _args9104_ _rands8869_)))
              (cons 'let (cons _id9095_ (cons _init9115_ _body9113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx8817_))))
                                             (___kont1531215313_
                                              (lambda ()
                                                (cons _rator8868_
                                                      _rands8869_))))
                                         (let ((___match1537115372_
                                                (lambda (_e88788936_
                                                         _hd88798939_
                                                         _tl88808941_
                                                         _e88818944_
                                                         _hd88828947_
                                                         _tl88838949_
                                                         _e88848952_
                                                         _hd88858955_
                                                         _tl88868957_
                                                         _e88878960_
                                                         _hd88888963_
                                                         _tl88898965_
                                                         _e88908968_
                                                         _hd88918971_
                                                         _tl88928973_
                                                         _e88938976_
                                                         _hd88948979_
                                                         _tl88958981_
                                                         _e88968984_
                                                         _hd88978987_
                                                         _tl88988989_
                                                         ___splice1530815309_
                                                         _target88998992_
                                                         _tl89018994_)
                                                  (letrec ((_loop89028997_
                                                            (lambda (_hd89009000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg89069002_)
                      (if (gx#stx-pair? _hd89009000_)
                          (let ((_e89039005_ (gx#stx-e _hd89009000_)))
                            (let ((_lp-tl89059010_ (##cdr _e89039005_))
                                  (_lp-hd89049008_ (##car _e89039005_)))
                              (_loop89028997_
                               _lp-tl89059010_
                               (cons _lp-hd89049008_ _arg89069002_))))
                          (let ((_arg89079013_ (reverse _arg89069002_)))
                            (if (gx#stx-pair/null? _tl88988989_)
                                (let ((___splice1531015311_
                                       (gx#syntax-split-splice
                                        _tl88988989_
                                        '0)))
                                  (let ((_tl89109018_
                                         (##vector-ref
                                          ___splice1531015311_
                                          '1))
                                        (_target89089016_
                                         (##vector-ref
                                          ___splice1531015311_
                                          '0)))
                                    (if (gx#stx-null? _tl89109018_)
                                        (letrec ((_loop89119021_
                                                  (lambda (_hd89099024_
                                                           _body89159026_)
                                                    (if (gx#stx-pair?
                                                         _hd89099024_)
                                                        (let ((_e89129029_
                                                               (gx#stx-e
                                                                _hd89099024_)))
                                                          (let ((_lp-tl89149034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e89129029_))
                        (_lp-hd89139032_ (##car _e89129029_)))
                    (_loop89119021_
                     _lp-tl89149034_
                     (cons _lp-hd89139032_ _body89159026_))))
                (let ((_body89169037_ (reverse _body89159026_)))
                  (if (gx#stx-null? _tl88928973_)
                      (if (gx#stx-null? _tl88868957_)
                          (if (gx#stx-pair? _tl88838949_)
                              (let ((_e89179040_ (gx#stx-e _tl88838949_)))
                                (let ((_tl89199045_ (##cdr _e89179040_))
                                      (_hd89189043_ (##car _e89179040_)))
                                  (if (gx#stx-null? _tl89199045_)
                                      (let ((_L9048_ _hd89189043_)
                                            (_L9049_ _body89169037_)
                                            (_L9050_ _arg89079013_)
                                            (_L9051_ _hd88888963_))
                                        (if (eq? _L9051_ _L9048_)
                                            (___kont1530615307_
                                             _L9048_
                                             _L9049_
                                             _L9050_
                                             _L9051_)
                                            (___kont1531215313_)))
                                      (___kont1531215313_))))
                              (___kont1531215313_))
                          (___kont1531215313_))
                      (___kont1531215313_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop89119021_
                                           _target89089016_
                                           '()))
                                        (___kont1531215313_))))
                                (___kont1531215313_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop89028997_
                                                     _target88998992_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1530415305_)
                                               (let ((_e88788936_
                                                      (gx#stx-e
                                                       ___stx1530415305_)))
                                                 (let ((_tl88808941_
                                                        (##cdr _e88788936_))
                                                       (_hd88798939_
                                                        (##car _e88788936_)))
                                                   (if (gx#identifier?
                                                        _hd88798939_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd88798939_)
                                                           (if (gx#stx-pair?
                                                                _tl88808941_)
                                                               (let ((_e88818944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl88808941_)))
                         (let ((_tl88838949_ (##cdr _e88818944_))
                               (_hd88828947_ (##car _e88818944_)))
                           (if (gx#stx-pair? _hd88828947_)
                               (let ((_e88848952_ (gx#stx-e _hd88828947_)))
                                 (let ((_tl88868957_ (##cdr _e88848952_))
                                       (_hd88858955_ (##car _e88848952_)))
                                   (if (gx#stx-pair? _hd88858955_)
                                       (let ((_e88878960_
                                              (gx#stx-e _hd88858955_)))
                                         (let ((_tl88898965_
                                                (##cdr _e88878960_))
                                               (_hd88888963_
                                                (##car _e88878960_)))
                                           (if (gx#stx-pair? _tl88898965_)
                                               (let ((_e88908968_
                                                      (gx#stx-e _tl88898965_)))
                                                 (let ((_tl88928973_
                                                        (##cdr _e88908968_))
                                                       (_hd88918971_
                                                        (##car _e88908968_)))
                                                   (if (gx#stx-pair?
                                                        _hd88918971_)
                                                       (let ((_e88938976_
                                                              (gx#stx-e
                                                               _hd88918971_)))
                                                         (let ((_tl88958981_
                                                                (##cdr _e88938976_))
                                                               (_hd88948979_
                                                                (##car _e88938976_)))
                                                           (if (gx#identifier?
                                                                _hd88948979_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd88948979_)
                           (if (gx#stx-pair? _tl88958981_)
                               (let ((_e88968984_ (gx#stx-e _tl88958981_)))
                                 (let ((_tl88988989_ (##cdr _e88968984_))
                                       (_hd88978987_ (##car _e88968984_)))
                                   (if (gx#stx-pair/null? _hd88978987_)
                                       (let ((___splice1530815309_
                                              (gx#syntax-split-splice
                                               _hd88978987_
                                               '0)))
                                         (let ((_tl89018994_
                                                (##vector-ref
                                                 ___splice1530815309_
                                                 '1))
                                               (_target88998992_
                                                (##vector-ref
                                                 ___splice1530815309_
                                                 '0)))
                                           (if (gx#stx-null? _tl89018994_)
                                               (___match1537115372_
                                                _e88788936_
                                                _hd88798939_
                                                _tl88808941_
                                                _e88818944_
                                                _hd88828947_
                                                _tl88838949_
                                                _e88848952_
                                                _hd88858955_
                                                _tl88868957_
                                                _e88878960_
                                                _hd88888963_
                                                _tl88898965_
                                                _e88908968_
                                                _hd88918971_
                                                _tl88928973_
                                                _e88938976_
                                                _hd88948979_
                                                _tl88958981_
                                                _e88968984_
                                                _hd88978987_
                                                _tl88988989_
                                                ___splice1530815309_
                                                _target88998992_
                                                _tl89018994_)
                                               (___kont1531215313_))))
                                       (___kont1531215313_))))
                               (___kont1531215313_))
                           (___kont1531215313_))
                       (___kont1531215313_))))
               (___kont1531215313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1531215313_))))
                                       (___kont1531215313_))))
                               (___kont1531215313_))))
                       (___kont1531215313_))
                   (___kont1531215313_))
               (___kont1531215313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1531215313_)))))))
                                 _tl88288851_
                                 _hd88278849_)))
                            (_g88198833_ _g88208836_))))
                    (_g88198833_ _g88208836_)))))
        (_g88189121_ _stx8817_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx8630_)
      (letrec ((_simplify8632_
                (lambda (_code8717_)
                  (let* ((_code87188736_ _code8717_)
                         (_else87208744_ (lambda () _code8717_))
                         (_K87228780_
                          (lambda (_expr8747_ _test8748_)
                            (let* ((_expr87498757_ _expr8747_)
                                   (_else87518765_
                                    (lambda ()
                                      (cons 'and
                                            (cons _test8748_
                                                  (cons _expr8747_ '())))))
                                   (_K87538770_
                                    (lambda (_exprs8768_)
                                      (cons 'and
                                            (cons _test8748_ _exprs8768_)))))
                              (if (##pair? _expr87498757_)
                                  (let ((_hd87548773_ (##car _expr87498757_))
                                        (_tl87558775_ (##cdr _expr87498757_)))
                                    (if (##eq? _hd87548773_ 'and)
                                        (let ((_exprs8778_ _tl87558775_))
                                          (_K87538770_ _exprs8778_))
                                        (_else87518765_)))
                                  (_else87518765_))))))
                    (if (##pair? _code87188736_)
                        (let ((_hd87238783_ (##car _code87188736_))
                              (_tl87248785_ (##cdr _code87188736_)))
                          (if (##eq? _hd87238783_ 'if)
                              (if (##pair? _tl87248785_)
                                  (let ((_hd87258788_ (##car _tl87248785_))
                                        (_tl87268790_ (##cdr _tl87248785_)))
                                    (let ((_test8793_ _hd87258788_))
                                      (if (##pair? _tl87268790_)
                                          (let ((_hd87278795_
                                                 (##car _tl87268790_))
                                                (_tl87288797_
                                                 (##cdr _tl87268790_)))
                                            (let ((_expr8800_ _hd87278795_))
                                              (if (##pair? _tl87288797_)
                                                  (let ((_hd87298802_
                                                         (##car _tl87288797_))
                                                        (_tl87308804_
                                                         (##cdr _tl87288797_)))
                                                    (if (##pair? _hd87298802_)
                                                        (let ((_hd87318807_
                                                               (##car _hd87298802_))
                                                              (_tl87328809_
                                                               (##cdr _hd87298802_)))
                                                          (if (##eq? _hd87318807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'quote)
                      (if (##pair? _tl87328809_)
                          (let ((_hd87338812_ (##car _tl87328809_))
                                (_tl87348814_ (##cdr _tl87328809_)))
                            (if (##eq? _hd87338812_ '#f)
                                (if (##null? _tl87348814_)
                                    (if (##null? _tl87308804_)
                                        (_K87228780_ _expr8800_ _test8793_)
                                        (_else87208744_))
                                    (_else87208744_))
                                (_else87208744_)))
                          (_else87208744_))
                      (_else87208744_)))
                (_else87208744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else87208744_))))
                                          (_else87208744_))))
                                  (_else87208744_))
                              (_else87208744_)))
                        (_else87208744_))))))
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
                              (let ((_g15498_
                                     (gx#syntax-split-splice _tl66306662_ '0)))
                                (begin
                                  (let ((_g15499_
                                         (if (##values? _g15498_)
                                             (##vector-length _g15498_)
                                             1)))
                                    (if (not (##fx= _g15499_ 2))
                                        (error "Context expects 2 values"
                                               _g15499_)))
                                  (let ((_target66316665_
                                         (##vector-ref _g15498_ 0))
                                        (_tl66336667_
                                         (##vector-ref _g15498_ 1)))
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
                                                   (let* ((___stx1540515406_
                                                           _rest6480_)
                                                          (_g64866503_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1540515406_))))
                                                     (let ((___kont1540715408_
                                                            (lambda (_L6566_)
                                                              (_lp6478_
                                                               _L6566_
                                                               _r6481_)))
                                                           (___kont1540915410_
                                                            (lambda (_L6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6540_)
                      (_lp6478_
                       _L6539_
                       (cons (_generate16412_ _L6540_) _r6481_))))
                   (___kont1541115412_
                    (lambda (_L6515_)
                      (_generate*6413_
                       (foldl1 cons
                               (cons (_generate16412_ _L6515_) '())
                               _r6481_))))
                   (___kont1541315414_
                    (lambda () (_generate*6413_ (reverse _r6481_)))))
               (let ((_g64846526_
                      (lambda ()
                        (let ((_L6515_ ___stx1540515406_))
                          (if (gx#identifier? _L6515_)
                              (___kont1541115412_ _L6515_)
                              (___kont1541315414_))))))
                 (if (gx#stx-pair? ___stx1540515406_)
                     (let ((_e64896555_ (gx#stx-e ___stx1540515406_)))
                       (let ((_tl64916560_ (##cdr _e64896555_))
                             (_hd64906558_ (##car _e64896555_)))
                         (if (gx#stx-datum? _hd64906558_)
                             (let ((_e64926563_ (gx#stx-e _hd64906558_)))
                               (if (equal? _e64926563_ '#f)
                                   (___kont1540715408_ _tl64916560_)
                                   (___kont1540915410_
                                    _tl64916560_
                                    _hd64906558_)))
                             (___kont1540915410_ _tl64916560_ _hd64906558_))))
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
      (if (##fx< '4 (##vector-length _self6226_))
          (begin
            (##vector-set!
             _self6226_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx6227_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self6226_ '2 '1)
            (##vector-set! _self6226_ '3 (make-table 'test: eq?))
            (##vector-set! _self6226_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self6226_))))
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
        (lambda (_g15500_ _block6051_ _r6052_) (cons _block6051_ _r6052_))
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
                            (let ((_g15501_
                                   (gx#syntax-split-splice _tl55805604_ '0)))
                              (begin
                                (let ((_g15502_
                                       (if (##values? _g15501_)
                                           (##vector-length _g15501_)
                                           1)))
                                  (if (not (##fx= _g15502_ 2))
                                      (error "Context expects 2 values"
                                             _g15502_)))
                                (let ((_target55815607_
                                       (##vector-ref _g15501_ 0))
                                      (_tl55835609_ (##vector-ref _g15501_ 1)))
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
      (let* ((___stx1543515436_ _stx5306_)
             (_g53095338_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1543515436_))))
        (let ((___kont1543715438_
               (lambda (_L5406_ _L5407_)
                 (length (foldr1 (lambda (_g54285431_ _g54295433_)
                                   (cons _g54285431_ _g54295433_))
                                 '()
                                 _L5406_))))
              (___kont1544115442_ (lambda () '#f)))
          (let ((___match1548015481_
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
                          ___splice1543915440_
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
                                           (___kont1543715438_ _L5406_ _L5407_)
                                           (___kont1544115442_))))))))
                     (_loop53285387_ _target53255382_ '())))))
            (if (gx#stx-pair? ___stx1543515436_)
                (let ((_e53135350_ (gx#stx-e ___stx1543515436_)))
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
                                                            (let ((___splice1543915440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl53185363_ '0)))
                      (let ((_tl53275384_
                             (##vector-ref ___splice1543915440_ '1))
                            (_target53255382_
                             (##vector-ref ___splice1543915440_ '0)))
                        (if (gx#stx-null? _tl53275384_)
                            (___match1548015481_
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
                             ___splice1543915440_
                             _target53255382_
                             _tl53275384_)
                            (___kont1544115442_))))
                    (___kont1544115442_))
                (___kont1544115442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1544115442_))
                                            (___kont1544115442_))
                                        (___kont1544115442_))))
                                (___kont1544115442_))))
                        (___kont1544115442_))))
                (___kont1544115442_)))))))
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
