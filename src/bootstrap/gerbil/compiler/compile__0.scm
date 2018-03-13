(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12781_ . _args12782_)
      (let* ((_g1278412794_
              (lambda (_g1278512791_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1278512791_)))
             (_g1278312822_
              (lambda (_g1278512797_)
                (if (gx#stx-pair? _g1278512797_)
                    (let ((_e1278712799_ (gx#stx-e _g1278512797_)))
                      (let ((_hd1278812802_ (##car _e1278712799_))
                            (_tl1278912804_ (##cdr _e1278712799_)))
                        ((lambda (_L12807_)
                           (let ((_$e12817_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12807_)
                                   '#f)))
                             (if _$e12817_
                                 ((lambda (_method12820_)
                                    (apply _method12820_
                                           _stx12781_
                                           _args12782_))
                                  _$e12817_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12781_
                                  _L12807_))))
                         _hd1278812802_)))
                    (_g1278412794_ _g1278512797_)))))
        (_g1278312822_ _stx12781_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12778_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12778_ '%#begin-annotation void)
           (table-set! _tbl12778_ '%#lambda void)
           (table-set! _tbl12778_ '%#case-lambda void)
           (table-set! _tbl12778_ '%#let-values void)
           (table-set! _tbl12778_ '%#letrec-values void)
           (table-set! _tbl12778_ '%#letrec*-values void)
           (table-set! _tbl12778_ '%#quote void)
           (table-set! _tbl12778_ '%#quote-syntax void)
           (table-set! _tbl12778_ '%#call void)
           (table-set! _tbl12778_ '%#if void)
           (table-set! _tbl12778_ '%#ref void)
           (table-set! _tbl12778_ '%#set! void)
           (table-set! _tbl12778_ '%#struct-instance? void)
           (table-set! _tbl12778_ '%#struct-direct-instance? void)
           (table-set! _tbl12778_ '%#struct-ref void)
           (table-set! _tbl12778_ '%#struct-set! void)
           (table-set! _tbl12778_ '%#struct-direct-ref void)
           (table-set! _tbl12778_ '%#struct-direct-set! void)
           (table-set! _tbl12778_ '%#struct-unchecked-ref void)
           (table-set! _tbl12778_ '%#struct-unchecked-set! void)
           _tbl12778_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12774_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12774_ '%#begin void)
           (table-set! _tbl12774_ '%#begin-syntax void)
           (table-set! _tbl12774_ '%#begin-foreign void)
           (table-set! _tbl12774_ '%#module void)
           (table-set! _tbl12774_ '%#import void)
           (table-set! _tbl12774_ '%#export void)
           (table-set! _tbl12774_ '%#provide void)
           (table-set! _tbl12774_ '%#extern void)
           (table-set! _tbl12774_ '%#define-values void)
           (table-set! _tbl12774_ '%#define-syntax void)
           (table-set! _tbl12774_ '%#define-alias void)
           (table-set! _tbl12774_ '%#declare void)
           _tbl12774_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12770_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12770_ (force gxc#&void-special-form))
           (hash-copy! _tbl12770_ (force gxc#&void-expression))
           _tbl12770_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12766_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12766_ '%#begin-annotation false)
           (table-set! _tbl12766_ '%#lambda false)
           (table-set! _tbl12766_ '%#case-lambda false)
           (table-set! _tbl12766_ '%#let-values false)
           (table-set! _tbl12766_ '%#letrec-values false)
           (table-set! _tbl12766_ '%#letrec*-values false)
           (table-set! _tbl12766_ '%#quote false)
           (table-set! _tbl12766_ '%#quote-syntax false)
           (table-set! _tbl12766_ '%#call false)
           (table-set! _tbl12766_ '%#if false)
           (table-set! _tbl12766_ '%#ref false)
           (table-set! _tbl12766_ '%#set! false)
           (table-set! _tbl12766_ '%#struct-instance? false)
           (table-set! _tbl12766_ '%#struct-direct-instance? false)
           (table-set! _tbl12766_ '%#struct-ref false)
           (table-set! _tbl12766_ '%#struct-set! false)
           (table-set! _tbl12766_ '%#struct-direct-ref false)
           (table-set! _tbl12766_ '%#struct-direct-set! false)
           (table-set! _tbl12766_ '%#struct-unchecked-ref false)
           (table-set! _tbl12766_ '%#struct-unchecked-set! false)
           _tbl12766_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12762_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12762_ '%#begin false)
           (table-set! _tbl12762_ '%#begin-syntax false)
           (table-set! _tbl12762_ '%#begin-foreign false)
           (table-set! _tbl12762_ '%#module false)
           (table-set! _tbl12762_ '%#import false)
           (table-set! _tbl12762_ '%#export false)
           (table-set! _tbl12762_ '%#provide false)
           (table-set! _tbl12762_ '%#extern false)
           (table-set! _tbl12762_ '%#define-values false)
           (table-set! _tbl12762_ '%#define-syntax false)
           (table-set! _tbl12762_ '%#define-alias false)
           (table-set! _tbl12762_ '%#declare false)
           _tbl12762_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12758_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12758_ (force gxc#&false-special-form))
           (hash-copy! _tbl12758_ (force gxc#&false-expression))
           _tbl12758_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12754_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12754_ (force gxc#&void-expression))
           (hash-copy! _tbl12754_ (force gxc#&void-special-form))
           (table-set! _tbl12754_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12754_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12754_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12754_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12754_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12754_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12747_ . _args12749_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12747_ _args12749_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12744_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12744_ (force gxc#&void))
           (table-set! _tbl12744_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12744_ '%#module gxc#lift-modules-module%)
           _tbl12744_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12737_ . _args12739_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12737_ _args12739_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12734_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12734_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12734_ '%#begin-syntax false)
           (table-set! _tbl12734_ '%#begin-foreign true)
           (table-set! _tbl12734_ '%#begin-annotation true)
           (table-set! _tbl12734_ '%#module false)
           (table-set! _tbl12734_ '%#import false)
           (table-set! _tbl12734_ '%#export false)
           (table-set! _tbl12734_ '%#provide false)
           (table-set! _tbl12734_ '%#extern false)
           (table-set! _tbl12734_ '%#define-values true)
           (table-set! _tbl12734_ '%#define-syntax false)
           (table-set! _tbl12734_ '%#define-alias false)
           (table-set! _tbl12734_ '%#declare false)
           (table-set! _tbl12734_ '%#lambda true)
           (table-set! _tbl12734_ '%#case-lambda true)
           (table-set! _tbl12734_ '%#let-values true)
           (table-set! _tbl12734_ '%#letrec-values true)
           (table-set! _tbl12734_ '%#letrec*-values true)
           (table-set! _tbl12734_ '%#quote true)
           (table-set! _tbl12734_ '%#call true)
           (table-set! _tbl12734_ '%#if true)
           (table-set! _tbl12734_ '%#ref true)
           (table-set! _tbl12734_ '%#set! true)
           (table-set! _tbl12734_ '%#struct-instance? true)
           (table-set! _tbl12734_ '%#struct-direct-instance? true)
           (table-set! _tbl12734_ '%#struct-ref true)
           (table-set! _tbl12734_ '%#struct-set! true)
           (table-set! _tbl12734_ '%#struct-direct-ref true)
           (table-set! _tbl12734_ '%#struct-direct-set! true)
           (table-set! _tbl12734_ '%#struct-unchecked-ref true)
           (table-set! _tbl12734_ '%#struct-unchecked-set! true)
           _tbl12734_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12727_ . _args12729_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12727_ _args12729_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12724_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12724_ (force gxc#&false))
           (table-set! _tbl12724_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12724_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12724_ '%#lambda values)
           (table-set! _tbl12724_ '%#case-lambda values)
           (table-set!
            _tbl12724_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12724_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12724_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12724_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12717_ . _args12719_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12717_ _args12719_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl12714_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12714_ (force gxc#&false-expression))
           (table-set! _tbl12714_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12714_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12714_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12714_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12714_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12714_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12714_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12714_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12714_ '%#call gxc#count-values-call%)
           (table-set! _tbl12714_ '%#if gxc#count-values-if%)
           _tbl12714_)))))
  (define gxc#apply-count-values
    (lambda (_stx12707_ . _args12709_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12707_ _args12709_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12704_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12704_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12704_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12704_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12704_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12700_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12700_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12700_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12700_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12700_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12693_ . _args12695_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12693_ _args12695_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12690_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12690_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12690_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12690_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12690_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12690_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12690_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12690_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12690_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12690_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12690_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12690_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12690_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12690_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12690_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12690_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12690_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12690_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12690_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12690_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12690_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12690_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12690_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12690_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12690_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12690_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12690_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12683_ . _args12685_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12683_ _args12685_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12680_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12680_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12680_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12680_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12673_ . _args12675_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12673_ _args12675_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12670_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12670_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12670_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12670_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12670_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12670_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12670_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12670_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12670_ '%#quote void)
           (table-set! _tbl12670_ '%#quote-syntax void)
           (table-set! _tbl12670_ '%#call gxc#collect-operands)
           (table-set! _tbl12670_ '%#if gxc#collect-operands)
           (table-set! _tbl12670_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12670_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12670_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12670_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12670_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12670_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12670_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12670_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12670_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12670_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12670_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12663_ . _args12665_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12663_ _args12665_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12660_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12660_ (force gxc#&void-expression))
           (table-set! _tbl12660_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12660_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12660_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12660_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12660_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12660_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12660_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12660_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12660_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12660_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12660_ '%#begin-foreign void)
           (table-set! _tbl12660_ '%#declare void)
           _tbl12660_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12653_ . _args12655_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12653_ _args12655_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12650_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12650_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12650_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12650_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12650_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12650_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12650_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12650_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12650_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12650_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12650_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12650_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12650_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12650_ '%#declare void)
           _tbl12650_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12643_ . _args12645_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12643_ _args12645_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12600_ . _args12601_)
      (let* ((_g1260312613_
              (lambda (_g1260412610_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1260412610_)))
             (_g1260212640_
              (lambda (_g1260412616_)
                (if (gx#stx-pair? _g1260412616_)
                    (let ((_e1260612618_ (gx#stx-e _g1260412616_)))
                      (let ((_hd1260712621_ (##car _e1260612618_))
                            (_tl1260812623_ (##cdr _e1260612618_)))
                        ((lambda (_L12626_)
                           (for-each
                            (lambda (_g1263512637_)
                              (apply gxc#compile-e _g1263512637_ _args12601_))
                            (gx#stx-e _L12626_)))
                         _tl1260812623_)))
                    (_g1260312613_ _g1260412616_)))))
        (_g1260212640_ _stx12600_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12556_ . _args12557_)
      (let* ((_g1255912569_
              (lambda (_g1256012566_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1256012566_)))
             (_g1255812597_
              (lambda (_g1256012572_)
                (if (gx#stx-pair? _g1256012572_)
                    (let ((_e1256212574_ (gx#stx-e _g1256012572_)))
                      (let ((_hd1256312577_ (##car _e1256212574_))
                            (_tl1256412579_ (##cdr _e1256212574_)))
                        ((lambda (_L12582_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1259212594_)
                                 (apply gxc#compile-e
                                        _g1259212594_
                                        _args12557_))
                               (gx#stx-e _L12582_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1256412579_)))
                    (_g1255912569_ _g1256012572_)))))
        (_g1255812597_ _stx12556_))))
  (define gxc#collect-module%
    (lambda (_stx12498_ . _args12499_)
      (let* ((_g1250112515_
              (lambda (_g1250212512_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1250212512_)))
             (_g1250012553_
              (lambda (_g1250212518_)
                (if (gx#stx-pair? _g1250212518_)
                    (let ((_e1250512520_ (gx#stx-e _g1250212518_)))
                      (let ((_hd1250612523_ (##car _e1250512520_))
                            (_tl1250712525_ (##cdr _e1250512520_)))
                        (if (gx#stx-pair? _tl1250712525_)
                            (let ((_e1250812528_ (gx#stx-e _tl1250712525_)))
                              (let ((_hd1250912531_ (##car _e1250812528_))
                                    (_tl1251012533_ (##cdr _e1250812528_)))
                                ((lambda (_L12536_ _L12537_)
                                   (let ((_ctx12550_
                                          (gx#syntax-local-e__0 _L12537_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12550_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12499_))
                                      gx#current-expander-context
                                      _ctx12550_)))
                                 _tl1251012533_
                                 _hd1250912531_)))
                            (_g1250112515_ _g1250212518_))))
                    (_g1250112515_ _g1250212518_)))))
        (_g1250012553_ _stx12498_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12430_ . _args12431_)
      (let* ((_g1243312450_
              (lambda (_g1243412447_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1243412447_)))
             (_g1243212495_
              (lambda (_g1243412453_)
                (if (gx#stx-pair? _g1243412453_)
                    (let ((_e1243712455_ (gx#stx-e _g1243412453_)))
                      (let ((_hd1243812458_ (##car _e1243712455_))
                            (_tl1243912460_ (##cdr _e1243712455_)))
                        (if (gx#stx-pair? _tl1243912460_)
                            (let ((_e1244012463_ (gx#stx-e _tl1243912460_)))
                              (let ((_hd1244112466_ (##car _e1244012463_))
                                    (_tl1244212468_ (##cdr _e1244012463_)))
                                (if (gx#stx-pair? _tl1244212468_)
                                    (let ((_e1244312471_
                                           (gx#stx-e _tl1244212468_)))
                                      (let ((_hd1244412474_
                                             (##car _e1244312471_))
                                            (_tl1244512476_
                                             (##cdr _e1244312471_)))
                                        (if (gx#stx-null? _tl1244512476_)
                                            ((lambda (_L12479_ _L12480_)
                                               (apply gxc#compile-e
                                                      _L12479_
                                                      _args12431_))
                                             _hd1244412474_
                                             _hd1244112466_)
                                            (_g1243312450_ _g1243412453_))))
                                    (_g1243312450_ _g1243412453_))))
                            (_g1243312450_ _g1243412453_))))
                    (_g1243312450_ _g1243412453_)))))
        (_g1243212495_ _stx12430_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12362_ . _args12363_)
      (let* ((_g1236512382_
              (lambda (_g1236612379_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1236612379_)))
             (_g1236412427_
              (lambda (_g1236612385_)
                (if (gx#stx-pair? _g1236612385_)
                    (let ((_e1236912387_ (gx#stx-e _g1236612385_)))
                      (let ((_hd1237012390_ (##car _e1236912387_))
                            (_tl1237112392_ (##cdr _e1236912387_)))
                        (if (gx#stx-pair? _tl1237112392_)
                            (let ((_e1237212395_ (gx#stx-e _tl1237112392_)))
                              (let ((_hd1237312398_ (##car _e1237212395_))
                                    (_tl1237412400_ (##cdr _e1237212395_)))
                                (if (gx#stx-pair? _tl1237412400_)
                                    (let ((_e1237512403_
                                           (gx#stx-e _tl1237412400_)))
                                      (let ((_hd1237612406_
                                             (##car _e1237512403_))
                                            (_tl1237712408_
                                             (##cdr _e1237512403_)))
                                        (if (gx#stx-null? _tl1237712408_)
                                            ((lambda (_L12411_ _L12412_)
                                               (apply gxc#compile-e
                                                      _L12411_
                                                      _args12363_))
                                             _hd1237612406_
                                             _hd1237312398_)
                                            (_g1236512382_ _g1236612385_))))
                                    (_g1236512382_ _g1236612385_))))
                            (_g1236512382_ _g1236612385_))))
                    (_g1236512382_ _g1236612385_)))))
        (_g1236412427_ _stx12362_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12244_ . _args12245_)
      (let* ((_g1224712275_
              (lambda (_g1224812272_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1224812272_)))
             (_g1224612359_
              (lambda (_g1224812278_)
                (if (gx#stx-pair? _g1224812278_)
                    (let ((_e1225112280_ (gx#stx-e _g1224812278_)))
                      (let ((_hd1225212283_ (##car _e1225112280_))
                            (_tl1225312285_ (##cdr _e1225112280_)))
                        (if (gx#stx-pair/null? _tl1225312285_)
                            (if (fx>= (gx#stx-length _tl1225312285_) '0)
                                (let ((_g12824_
                                       (gx#syntax-split-splice
                                        _tl1225312285_
                                        '0)))
                                  (begin
                                    (let ((_g12825_
                                           (if (##values? _g12824_)
                                               (##vector-length _g12824_)
                                               1)))
                                      (if (not (##fx= _g12825_ 2))
                                          (error "Context expects 2 values"
                                                 _g12825_)))
                                    (let ((_target1225412288_
                                           (##vector-ref _g12824_ 0))
                                          (_tl1225612290_
                                           (##vector-ref _g12824_ 1)))
                                      (if (gx#stx-null? _tl1225612290_)
                                          (letrec ((_loop1225712293_
                                                    (lambda (_hd1225512296_
                                                             _body1226112298_
                                                             _hd1226212300_)
                                                      (if (gx#stx-pair?
                                                           _hd1225512296_)
                                                          (let ((_e1225812303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1225512296_)))
                    (let ((_lp-hd1225912306_ (##car _e1225812303_))
                          (_lp-tl1226012308_ (##cdr _e1225812303_)))
                      (if (gx#stx-pair? _lp-hd1225912306_)
                          (let ((_e1226512311_ (gx#stx-e _lp-hd1225912306_)))
                            (let ((_hd1226612314_ (##car _e1226512311_))
                                  (_tl1226712316_ (##cdr _e1226512311_)))
                              (if (gx#stx-pair? _tl1226712316_)
                                  (let ((_e1226812319_
                                         (gx#stx-e _tl1226712316_)))
                                    (let ((_hd1226912322_
                                           (##car _e1226812319_))
                                          (_tl1227012324_
                                           (##cdr _e1226812319_)))
                                      (if (gx#stx-null? _tl1227012324_)
                                          (_loop1225712293_
                                           _lp-tl1226012308_
                                           (cons _hd1226912322_
                                                 _body1226112298_)
                                           (cons _hd1226612314_
                                                 _hd1226212300_))
                                          (_g1224712275_ _g1224812278_))))
                                  (_g1224712275_ _g1224812278_))))
                          (_g1224712275_ _g1224812278_))))
                  (let ((_body1226312327_ (reverse _body1226112298_))
                        (_hd1226412329_ (reverse _hd1226212300_)))
                    ((lambda (_L12332_ _L12333_)
                       (for-each
                        (lambda (_g1234712349_)
                          (apply gxc#compile-e _g1234712349_ _args12245_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1235112354_ _g1235212356_)
                                    (cons _g1235112354_ _g1235212356_))
                                  '()
                                  _L12332_))))
                     _body1226312327_
                     _hd1226412329_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1225712293_
                                             _target1225412288_
                                             '()
                                             '()))
                                          (_g1224712275_ _g1224812278_)))))
                                (_g1224712275_ _g1224812278_))
                            (_g1224712275_ _g1224812278_))))
                    (_g1224712275_ _g1224812278_)))))
        (_g1224612359_ _stx12244_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12097_ . _args12098_)
      (let* ((_g1210012135_
              (lambda (_g1210112132_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1210112132_)))
             (_g1209912241_
              (lambda (_g1210112138_)
                (if (gx#stx-pair? _g1210112138_)
                    (let ((_e1210512140_ (gx#stx-e _g1210112138_)))
                      (let ((_hd1210612143_ (##car _e1210512140_))
                            (_tl1210712145_ (##cdr _e1210512140_)))
                        (if (gx#stx-pair? _tl1210712145_)
                            (let ((_e1210812148_ (gx#stx-e _tl1210712145_)))
                              (let ((_hd1210912151_ (##car _e1210812148_))
                                    (_tl1211012153_ (##cdr _e1210812148_)))
                                (if (gx#stx-pair/null? _hd1210912151_)
                                    (if (fx>= (gx#stx-length _hd1210912151_)
                                              '0)
                                        (let ((_g12826_
                                               (gx#syntax-split-splice
                                                _hd1210912151_
                                                '0)))
                                          (begin
                                            (let ((_g12827_
                                                   (if (##values? _g12826_)
                                                       (##vector-length
                                                        _g12826_)
                                                       1)))
                                              (if (not (##fx= _g12827_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12827_)))
                                            (let ((_target1211112156_
                                                   (##vector-ref _g12826_ 0))
                                                  (_tl1211312158_
                                                   (##vector-ref _g12826_ 1)))
                                              (if (gx#stx-null? _tl1211312158_)
                                                  (letrec ((_loop1211412161_
                                                            (lambda (_hd1211212164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1211812166_
                             _hd1211912168_)
                      (if (gx#stx-pair? _hd1211212164_)
                          (let ((_e1211512171_ (gx#stx-e _hd1211212164_)))
                            (let ((_lp-hd1211612174_ (##car _e1211512171_))
                                  (_lp-tl1211712176_ (##cdr _e1211512171_)))
                              (if (gx#stx-pair? _lp-hd1211612174_)
                                  (let ((_e1212212179_
                                         (gx#stx-e _lp-hd1211612174_)))
                                    (let ((_hd1212312182_
                                           (##car _e1212212179_))
                                          (_tl1212412184_
                                           (##cdr _e1212212179_)))
                                      (if (gx#stx-pair? _tl1212412184_)
                                          (let ((_e1212512187_
                                                 (gx#stx-e _tl1212412184_)))
                                            (let ((_hd1212612190_
                                                   (##car _e1212512187_))
                                                  (_tl1212712192_
                                                   (##cdr _e1212512187_)))
                                              (if (gx#stx-null? _tl1212712192_)
                                                  (_loop1211412161_
                                                   _lp-tl1211712176_
                                                   (cons _hd1212612190_
                                                         _expr1211812166_)
                                                   (cons _hd1212312182_
                                                         _hd1211912168_))
                                                  (_g1210012135_
                                                   _g1210112138_))))
                                          (_g1210012135_ _g1210112138_))))
                                  (_g1210012135_ _g1210112138_))))
                          (let ((_expr1212012195_ (reverse _expr1211812166_))
                                (_hd1212112197_ (reverse _hd1211912168_)))
                            (if (gx#stx-pair? _tl1211012153_)
                                (let ((_e1212812200_
                                       (gx#stx-e _tl1211012153_)))
                                  (let ((_hd1212912203_ (##car _e1212812200_))
                                        (_tl1213012205_ (##cdr _e1212812200_)))
                                    (if (gx#stx-null? _tl1213012205_)
                                        ((lambda (_L12208_ _L12209_ _L12210_)
                                           (for-each
                                            (lambda (_g1222912231_)
                                              (apply gxc#compile-e
                                                     _g1222912231_
                                                     _args12098_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1223312236_
                                                               _g1223412238_)
                                                        (cons _g1223312236_
                                                              _g1223412238_))
                                                      (cons _L12208_ '())
                                                      _L12209_))))
                                         _hd1212912203_
                                         _expr1212012195_
                                         _hd1212112197_)
                                        (_g1210012135_ _g1210112138_))))
                                (_g1210012135_ _g1210112138_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1211412161_
                                                     _target1211112156_
                                                     '()
                                                     '()))
                                                  (_g1210012135_
                                                   _g1210112138_)))))
                                        (_g1210012135_ _g1210112138_))
                                    (_g1210012135_ _g1210112138_))))
                            (_g1210012135_ _g1210112138_))))
                    (_g1210012135_ _g1210112138_)))))
        (_g1209912241_ _stx12097_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12029_ . _args12030_)
      (let* ((_g1203212049_
              (lambda (_g1203312046_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1203312046_)))
             (_g1203112094_
              (lambda (_g1203312052_)
                (if (gx#stx-pair? _g1203312052_)
                    (let ((_e1203612054_ (gx#stx-e _g1203312052_)))
                      (let ((_hd1203712057_ (##car _e1203612054_))
                            (_tl1203812059_ (##cdr _e1203612054_)))
                        (if (gx#stx-pair? _tl1203812059_)
                            (let ((_e1203912062_ (gx#stx-e _tl1203812059_)))
                              (let ((_hd1204012065_ (##car _e1203912062_))
                                    (_tl1204112067_ (##cdr _e1203912062_)))
                                (if (gx#stx-pair? _tl1204112067_)
                                    (let ((_e1204212070_
                                           (gx#stx-e _tl1204112067_)))
                                      (let ((_hd1204312073_
                                             (##car _e1204212070_))
                                            (_tl1204412075_
                                             (##cdr _e1204212070_)))
                                        (if (gx#stx-null? _tl1204412075_)
                                            ((lambda (_L12078_ _L12079_)
                                               (apply gxc#compile-e
                                                      _L12078_
                                                      _args12030_))
                                             _hd1204312073_
                                             _hd1204012065_)
                                            (_g1203212049_ _g1203312052_))))
                                    (_g1203212049_ _g1203312052_))))
                            (_g1203212049_ _g1203312052_))))
                    (_g1203212049_ _g1203312052_)))))
        (_g1203112094_ _stx12029_))))
  (define gxc#collect-operands
    (lambda (_stx11942_ . _args11943_)
      (let* ((_g1194511964_
              (lambda (_g1194611961_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1194611961_)))
             (_g1194412026_
              (lambda (_g1194611967_)
                (if (gx#stx-pair? _g1194611967_)
                    (let ((_e1194811969_ (gx#stx-e _g1194611967_)))
                      (let ((_hd1194911972_ (##car _e1194811969_))
                            (_tl1195011974_ (##cdr _e1194811969_)))
                        (if (gx#stx-pair/null? _tl1195011974_)
                            (if (fx>= (gx#stx-length _tl1195011974_) '0)
                                (let ((_g12828_
                                       (gx#syntax-split-splice
                                        _tl1195011974_
                                        '0)))
                                  (begin
                                    (let ((_g12829_
                                           (if (##values? _g12828_)
                                               (##vector-length _g12828_)
                                               1)))
                                      (if (not (##fx= _g12829_ 2))
                                          (error "Context expects 2 values"
                                                 _g12829_)))
                                    (let ((_target1195111977_
                                           (##vector-ref _g12828_ 0))
                                          (_tl1195311979_
                                           (##vector-ref _g12828_ 1)))
                                      (if (gx#stx-null? _tl1195311979_)
                                          (letrec ((_loop1195411982_
                                                    (lambda (_hd1195211985_
                                                             _rands1195811987_)
                                                      (if (gx#stx-pair?
                                                           _hd1195211985_)
                                                          (let ((_e1195511990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1195211985_)))
                    (let ((_lp-hd1195611993_ (##car _e1195511990_))
                          (_lp-tl1195711995_ (##cdr _e1195511990_)))
                      (_loop1195411982_
                       _lp-tl1195711995_
                       (cons _lp-hd1195611993_ _rands1195811987_))))
                  (let ((_rands1195911998_ (reverse _rands1195811987_)))
                    ((lambda (_L12001_)
                       (for-each
                        (lambda (_g1201412016_)
                          (apply gxc#compile-e _g1201412016_ _args11943_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1201812021_ _g1201912023_)
                                    (cons _g1201812021_ _g1201912023_))
                                  '()
                                  _L12001_))))
                     _rands1195911998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1195411982_
                                             _target1195111977_
                                             '()))
                                          (_g1194511964_ _g1194611967_)))))
                                (_g1194511964_ _g1194611967_))
                            (_g1194511964_ _g1194611967_))))
                    (_g1194511964_ _g1194611967_)))))
        (_g1194412026_ _stx11942_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11873_)
      (let* ((_g1187511892_
              (lambda (_g1187611889_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1187611889_)))
             (_g1187411939_
              (lambda (_g1187611895_)
                (if (gx#stx-pair? _g1187611895_)
                    (let ((_e1187911897_ (gx#stx-e _g1187611895_)))
                      (let ((_hd1188011900_ (##car _e1187911897_))
                            (_tl1188111902_ (##cdr _e1187911897_)))
                        (if (gx#stx-pair? _tl1188111902_)
                            (let ((_e1188211905_ (gx#stx-e _tl1188111902_)))
                              (let ((_hd1188311908_ (##car _e1188211905_))
                                    (_tl1188411910_ (##cdr _e1188211905_)))
                                (if (gx#stx-pair? _tl1188411910_)
                                    (let ((_e1188511913_
                                           (gx#stx-e _tl1188411910_)))
                                      (let ((_hd1188611916_
                                             (##car _e1188511913_))
                                            (_tl1188711918_
                                             (##cdr _e1188511913_)))
                                        (if (gx#stx-null? _tl1188711918_)
                                            ((lambda (_L11921_ _L11922_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11937_)
                                                  (if (gx#identifier?
                                                       _bind11937_)
                                                      (gxc#add-module-binding!
                                                       _bind11937_
                                                       '#f)
                                                      '#!void))
                                                _L11922_))
                                             _hd1188611916_
                                             _hd1188311908_)
                                            (_g1187511892_ _g1187611895_))))
                                    (_g1187511892_ _g1187611895_))))
                            (_g1187511892_ _g1187611895_))))
                    (_g1187511892_ _g1187611895_)))))
        (_g1187411939_ _stx11873_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11806_)
      (let* ((_g1180811825_
              (lambda (_g1180911822_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1180911822_)))
             (_g1180711870_
              (lambda (_g1180911828_)
                (if (gx#stx-pair? _g1180911828_)
                    (let ((_e1181211830_ (gx#stx-e _g1180911828_)))
                      (let ((_hd1181311833_ (##car _e1181211830_))
                            (_tl1181411835_ (##cdr _e1181211830_)))
                        (if (gx#stx-pair? _tl1181411835_)
                            (let ((_e1181511838_ (gx#stx-e _tl1181411835_)))
                              (let ((_hd1181611841_ (##car _e1181511838_))
                                    (_tl1181711843_ (##cdr _e1181511838_)))
                                (if (gx#stx-pair? _tl1181711843_)
                                    (let ((_e1181811846_
                                           (gx#stx-e _tl1181711843_)))
                                      (let ((_hd1181911849_
                                             (##car _e1181811846_))
                                            (_tl1182011851_
                                             (##cdr _e1181811846_)))
                                        (if (gx#stx-null? _tl1182011851_)
                                            ((lambda (_L11854_ _L11855_)
                                               (gxc#add-module-binding!
                                                _L11855_
                                                '#t))
                                             _hd1181911849_
                                             _hd1181611841_)
                                            (_g1180811825_ _g1180911828_))))
                                    (_g1180811825_ _g1180911828_))))
                            (_g1180811825_ _g1180911828_))))
                    (_g1180811825_ _g1180911828_)))))
        (_g1180711870_ _stx11806_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11748_ _modules11749_)
      (let* ((_g1175111765_
              (lambda (_g1175211762_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1175211762_)))
             (_g1175011803_
              (lambda (_g1175211768_)
                (if (gx#stx-pair? _g1175211768_)
                    (let ((_e1175511770_ (gx#stx-e _g1175211768_)))
                      (let ((_hd1175611773_ (##car _e1175511770_))
                            (_tl1175711775_ (##cdr _e1175511770_)))
                        (if (gx#stx-pair? _tl1175711775_)
                            (let ((_e1175811778_ (gx#stx-e _tl1175711775_)))
                              (let ((_hd1175911781_ (##car _e1175811778_))
                                    (_tl1176011783_ (##cdr _e1175811778_)))
                                ((lambda (_L11786_ _L11787_)
                                   (let ((_ctx11800_
                                          (gx#syntax-local-e__0 _L11787_)))
                                     (begin
                                       (set-box!
                                        _modules11749_
                                        (cons _ctx11800_
                                              (unbox _modules11749_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11800_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11749_))
                                        gx#current-expander-context
                                        _ctx11800_))))
                                 _tl1176011783_
                                 _hd1175911781_)))
                            (_g1175111765_ _g1175211768_))))
                    (_g1175111765_ _g1175211768_)))))
        (_g1175011803_ _stx11748_))))
  (define gxc#add-module-binding!
    (lambda (_id11742_ _syntax?11743_)
      (let ((_eid11745_
             (##structure-ref
              (gx#resolve-identifier__0 _id11742_)
              '1
              gx#binding::t
              '#f))
            (_ht11746_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11745_)
            '#!void
            (table-set!
             _ht11746_
             _eid11745_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11745_)
              _syntax?11743_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11720_)
      (let ((_$e11722_
             (if (##structure-direct-instance-of?
                  _id11720_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11720_)
                 '#f)))
        (if _$e11722_
            ((lambda (_bind11725_)
               (let ((_eid11727_
                      (##structure-ref _bind11725_ '1 gx#binding::t '#f))
                     (_ht11728_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11727_)
                     _eid11727_
                     (let ((_$e11730_ (table-ref _ht11728_ _eid11727_ '#f)))
                       (if _$e11730_
                           (values _$e11730_)
                           (if (##structure-instance-of?
                                _bind11725_
                                'gx#local-binding::t)
                               (let ((_gid11733_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11727_)))
                                 (begin
                                   (table-set! _ht11728_ _eid11727_ _gid11733_)
                                   _gid11733_))
                               (if (##structure-instance-of?
                                    _bind11725_
                                    'gx#module-binding::t)
                                   (let ((_gid11740_
                                          (let ((_$e11735_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11725_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11735_
                                                ((lambda (_ns11738_)
                                                   (make-symbol
                                                    _ns11738_
                                                    '"#"
                                                    _eid11727_))
                                                 _$e11735_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11727_)))))
                                     (begin
                                       (table-set!
                                        _ht11728_
                                        _eid11727_
                                        _gid11740_)
                                       _gid11740_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11720_
                                    _eid11727_
                                    _bind11725_))))))))
             _$e11722_)
            (if (interned-symbol? (gx#stx-e _id11720_))
                (gx#stx-e _id11720_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11720_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11718_)
      (if (gx#identifier? _id11718_)
          (gxc#generate-runtime-binding-id _id11718_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11698_ _quote?11699_)
        (let* ((_ht11701_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11703_ (table-ref _ht11701_ _sym11698_ '#f)))
          (if _$e11703_
              (values _$e11703_)
              (let ((_g11706_
                     (if _quote?11699_
                         (make-symbol
                          '"__"
                          _sym11698_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11698_ '"_"))))
                (begin
                  (table-set! _ht11701_ _sym11698_ _g11706_)
                  _g11706_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11711_)
          (let ((_quote?11713_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11711_
             _quote?11713_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12831_
          (let ((_g12830_ (length _g12831_)))
            (cond ((##fx= _g12830_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12831_))
                  ((##fx= _g12830_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12831_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12831_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11695_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11695_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11655_)
      (if (interned-symbol? _key11655_)
          _key11655_
          (if (uninterned-symbol? _key11655_)
              (gxc#generate-runtime-gensym-reference__0 _key11655_)
              (let* ((_key1165611663_ _key11655_)
                     (_E1165811667_
                      (lambda ()
                        (error '"No clause matching" _key1165611663_)))
                     (_K1165911683_
                      (lambda (_mark11670_ _eid11671_)
                        (let ((_$e11673_
                               (##structure-ref
                                _mark11670_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11673_
                              ((lambda (_ht11676_)
                                 (let ((_$e11678_
                                        (table-ref _ht11676_ _eid11671_ '#f)))
                                   (if _$e11678_
                                       ((lambda (_id11681_)
                                          (if (interned-symbol? _id11681_)
                                              _id11681_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11681_)))
                                        _$e11678_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11671_))))
                               _$e11673_)
                              (gxc#generate-runtime-identifier-key
                               _eid11671_))))))
                (if (##pair? _key1165611663_)
                    (let ((_hd1166011686_ (##car _key1165611663_))
                          (_tl1166111688_ (##cdr _key1165611663_)))
                      (let* ((_eid11691_ _hd1166011686_)
                             (_mark11693_ _tl1166111688_))
                        (_K1165911683_ _mark11693_ _eid11691_)))
                    (_E1165811667_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11642_)
        (if _top11642_
            (let ((_ns11644_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11645_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11645_)
                  (make-symbol
                   _ns11644_
                   '"["
                   (number->string _phi11645_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11644_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11651_ '#f))
            (gxc#generate-runtime-temporary__% _top11651_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12833_
          (let ((_g12832_ (length _g12833_)))
            (cond ((##fx= _g12832_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12833_))
                  ((##fx= _g12832_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12833_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12833_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11639_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11559_)
      (let* ((_g1156111571_
              (lambda (_g1156211568_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1156211568_)))
             (_g1156011636_
              (lambda (_g1156211574_)
                (if (gx#stx-pair? _g1156211574_)
                    (let ((_e1156411576_ (gx#stx-e _g1156211574_)))
                      (let ((_hd1156511579_ (##car _e1156411576_))
                            (_tl1156611581_ (##cdr _e1156411576_)))
                        ((lambda (_L11584_)
                           (let* ((_body11594_
                                   (gx#stx-map1 gxc#compile-e _L11584_))
                                  (_body11633_
                                   (filter (lambda (_stx11596_)
                                             (let* ((_g1159911608_
                                                     (lambda (_g1160011605_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1160011605_)))
                                                    (_g1159811615_
                                                     (lambda (_g1160011611_)
                                                       ((lambda () '#t))))
                                                    (_g1159711630_
                                                     (lambda (_g1160011618_)
                                                       (if (gx#stx-pair?
                                                            _g1160011618_)
                                                           (let ((_e1160111620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1160011618_)))
                     (let ((_hd1160211623_ (##car _e1160111620_))
                           (_tl1160311625_ (##cdr _e1160111620_)))
                       (if (gx#identifier? _hd1160211623_)
                           (if (gx#stx-eq? 'begin _hd1160211623_)
                               (if (gx#stx-null? _tl1160311625_)
                                   ((lambda () '#f))
                                   (_g1159811615_ _g1160011618_))
                               (_g1159811615_ _g1160011618_))
                           (_g1159811615_ _g1160011618_))))
                   (_g1159811615_ _g1160011618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1159711630_ _stx11596_)))
                                           _body11594_)))
                             (if (fx= (length _body11633_) '1)
                                 (car _body11633_)
                                 (cons 'begin _body11633_))))
                         _tl1156611581_)))
                    (_g1156111571_ _g1156211574_)))))
        (_g1156011636_ _stx11559_))))
  (define gxc#generate-runtime-begin-foreign%
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
                           (cons 'begin (gx#syntax->datum _L11546_)))
                         _tl1152811543_)))
                    (_g1152311533_ _g1152411536_)))))
        (_g1152211556_ _stx11521_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11454_)
      (let* ((_g1145611473_
              (lambda (_g1145711470_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1145711470_)))
             (_g1145511518_
              (lambda (_g1145711476_)
                (if (gx#stx-pair? _g1145711476_)
                    (let ((_e1146011478_ (gx#stx-e _g1145711476_)))
                      (let ((_hd1146111481_ (##car _e1146011478_))
                            (_tl1146211483_ (##cdr _e1146011478_)))
                        (if (gx#stx-pair? _tl1146211483_)
                            (let ((_e1146311486_ (gx#stx-e _tl1146211483_)))
                              (let ((_hd1146411489_ (##car _e1146311486_))
                                    (_tl1146511491_ (##cdr _e1146311486_)))
                                (if (gx#stx-pair? _tl1146511491_)
                                    (let ((_e1146611494_
                                           (gx#stx-e _tl1146511491_)))
                                      (let ((_hd1146711497_
                                             (##car _e1146611494_))
                                            (_tl1146811499_
                                             (##cdr _e1146611494_)))
                                        (if (gx#stx-null? _tl1146811499_)
                                            ((lambda (_L11502_ _L11503_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L11503_))
                   (cons (gxc#compile-e _L11502_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1146711497_
                                             _hd1146411489_)
                                            (_g1145611473_ _g1145711476_))))
                                    (_g1145611473_ _g1145711476_))))
                            (_g1145611473_ _g1145711476_))))
                    (_g1145611473_ _g1145711476_)))))
        (_g1145511518_ _stx11454_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11416_)
      (let* ((_g1141811428_
              (lambda (_g1141911425_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1141911425_)))
             (_g1141711451_
              (lambda (_g1141911431_)
                (if (gx#stx-pair? _g1141911431_)
                    (let ((_e1142111433_ (gx#stx-e _g1141911431_)))
                      (let ((_hd1142211436_ (##car _e1142111433_))
                            (_tl1142311438_ (##cdr _e1142111433_)))
                        ((lambda (_L11441_)
                           (cons 'declare (map gx#syntax->datum _L11441_)))
                         _tl1142311438_)))
                    (_g1141811428_ _g1141911431_)))))
        (_g1141711451_ _stx11416_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11172_)
      (let* ((_g1117411191_
              (lambda (_g1117511188_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1117511188_)))
             (_g1117311413_
              (lambda (_g1117511194_)
                (if (gx#stx-pair? _g1117511194_)
                    (let ((_e1117811196_ (gx#stx-e _g1117511194_)))
                      (let ((_hd1117911199_ (##car _e1117811196_))
                            (_tl1118011201_ (##cdr _e1117811196_)))
                        (if (gx#stx-pair? _tl1118011201_)
                            (let ((_e1118111204_ (gx#stx-e _tl1118011201_)))
                              (let ((_hd1118211207_ (##car _e1118111204_))
                                    (_tl1118311209_ (##cdr _e1118111204_)))
                                (if (gx#stx-pair? _tl1118311209_)
                                    (let ((_e1118411212_
                                           (gx#stx-e _tl1118311209_)))
                                      (let ((_hd1118511215_
                                             (##car _e1118411212_))
                                            (_tl1118611217_
                                             (##cdr _e1118411212_)))
                                        (if (gx#stx-null? _tl1118611217_)
                                            ((lambda (_L11220_ _L11221_)
                                               (let* ((_g1123811251_
                                                       (lambda (_g1123911248_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1123911248_)))
                                                      (_g1123711365_
                                                       (lambda (_g1123911254_)
                                                         ((lambda ()
                                                            (let* ((_tmp11258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body11362_
                            (let _lp11260_ ((_rest11262_ _L11221_)
                                            (_k11263_ '0)
                                            (_r11264_ '()))
                              (let* ((_g1126911285_
                                      (lambda (_g1127011282_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1127011282_)))
                                     (_g1126811292_
                                      (lambda (_g1127011288_)
                                        ((lambda () (reverse _r11264_)))))
                                     (_g1126711313_
                                      (lambda (_g1127011295_)
                                        ((lambda (_L11297_)
                                           (if (gx#identifier? _L11297_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L11297_)
                                 (cons (gxc#generate-runtime-values->list
                                        _tmp11258_
                                        _k11263_)
                                       '())))
                     '())
               _r11264_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1126811292_ _g1127011295_)))
                                         _g1127011295_)))
                                     (_g1126611337_
                                      (lambda (_g1127011316_)
                                        (if (gx#stx-pair? _g1127011316_)
                                            (let ((_e1127711318_
                                                   (gx#stx-e _g1127011316_)))
                                              (let ((_hd1127811321_
                                                     (##car _e1127711318_))
                                                    (_tl1127911323_
                                                     (##cdr _e1127711318_)))
                                                ((lambda (_L11326_ _L11327_)
                                                   (_lp11260_
                                                    _L11326_
                                                    (fx+ _k11263_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L11327_)
                              (cons (gxc#generate-runtime-values-ref
                                     _tmp11258_
                                     _k11263_
                                     _L11326_)
                                    '())))
                  _r11264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1127911323_
                                                 _hd1127811321_)))
                                            (_g1126711313_ _g1127011316_))))
                                     (_g1126511359_
                                      (lambda (_g1127011340_)
                                        (if (gx#stx-pair? _g1127011340_)
                                            (let ((_e1127211342_
                                                   (gx#stx-e _g1127011340_)))
                                              (let ((_hd1127311345_
                                                     (##car _e1127211342_))
                                                    (_tl1127411347_
                                                     (##cdr _e1127211342_)))
                                                (if (gx#stx-datum?
                                                     _hd1127311345_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1127311345_)
                        '#f)
                ((lambda (_L11350_)
                   (_lp11260_ _L11350_ (fx+ _k11263_ '1) _r11264_))
                 _tl1127411347_)
                (_g1126611337_ _g1127011340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1126611337_
                                                     _g1127011340_))))
                                            (_g1126611337_ _g1127011340_)))))
                                (_g1126511359_ _rest11262_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp11258_
                                              (cons (gxc#compile-e _L11220_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp11258_
                                         _L11221_
                                         _L11220_)
                                        _body11362_))))))))
              (_g1123611395_
               (lambda (_g1123911368_)
                 (if (gx#stx-pair? _g1123911368_)
                     (let ((_e1124411370_ (gx#stx-e _g1123911368_)))
                       (let ((_hd1124511373_ (##car _e1124411370_))
                             (_tl1124611375_ (##cdr _e1124411370_)))
                         (if (gx#stx-null? _tl1124611375_)
                             ((lambda (_L11378_)
                                (let ((_eid11387_
                                       (gxc#generate-runtime-binding-id
                                        _L11378_)))
                                  (begin
                                    (let ((_lambda-expr1138811390_
                                           (gxc#apply-find-lambda-expression
                                            _L11220_)))
                                      (if _lambda-expr1138811390_
                                          (let ((_lambda-expr11393_
                                                 _lambda-expr1138811390_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr11393_
                                             _eid11387_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid11387_
                                                (cons (gxc#compile-e _L11220_)
                                                      '()))))))
                              _hd1124511373_)
                             (_g1123711365_ _g1123911368_))))
                     (_g1123711365_ _g1123911368_))))
              (_g1123511410_
               (lambda (_g1123911398_)
                 (if (gx#stx-pair? _g1123911398_)
                     (let ((_e1124011400_ (gx#stx-e _g1123911398_)))
                       (let ((_hd1124111403_ (##car _e1124011400_))
                             (_tl1124211405_ (##cdr _e1124011400_)))
                         (if (gx#stx-datum? _hd1124111403_)
                             (if (equal? (gx#stx-e _hd1124111403_) '#f)
                                 (if (gx#stx-null? _tl1124211405_)
                                     ((lambda () (gxc#compile-e _L11220_)))
                                     (_g1123611395_ _g1123911398_))
                                 (_g1123611395_ _g1123911398_))
                             (_g1123611395_ _g1123911398_))))
                     (_g1123611395_ _g1123911398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1123511410_ _L11221_)))
                                             _hd1118511215_
                                             _hd1118211207_)
                                            (_g1117411191_ _g1117511194_))))
                                    (_g1117411191_ _g1117511194_))))
                            (_g1117411191_ _g1117511194_))))
                    (_g1117411191_ _g1117511194_)))))
        (_g1117311413_ _stx11172_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11148_ _hd11149_ _expr11150_)
      (let ((_$e11152_ (gxc#apply-count-values _expr11150_)))
        (if _$e11152_
            ((lambda (_count11155_)
               (let ((_len11157_ (gx#stx-length _hd11149_))
                     (_cmp11158_ (if (gx#stx-list? _hd11149_) fx= fx>=)))
                 (if (let ((_$e11160_ (fx= _len11157_ '0)))
                       (if _$e11160_
                           _$e11160_
                           (_cmp11158_ _count11155_ _len11157_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11150_
                      _hd11149_))))
             _$e11152_)
            (let* ((_len11163_ (gx#stx-length _hd11149_))
                   (_cmp11165_ (if (gx#stx-list? _hd11149_) '##fx= '##fx>=))
                   (_errmsg11167_
                    (string-append
                     (if (gx#stx-list? _hd11149_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11163_)
                     '" values"))
                   (_count11169_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11149_)) (fx= _len11163_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11169_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11148_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11169_ (cons _len11163_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11169_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11146_)
      (cons 'if
            (cons (cons '##values? (cons _var11146_ '()))
                  (cons (cons '##vector-length (cons _var11146_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11142_ _i11143_ _rest11144_)
      (if (if (fx= _i11143_ '0) (not (gx#stx-pair? _rest11144_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11142_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11142_ (cons '0 '())))
                            (cons _var11142_ '()))))
          (cons '##vector-ref (cons _var11142_ (cons _i11143_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11139_ _i11140_)
      (if (fx= _i11140_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11139_ '()))
                      (cons (cons '##vector->list (cons _var11139_ '()))
                            (cons (cons 'list (cons _var11139_ '())) '()))))
          (if (fx= _i11140_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11139_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11139_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11139_ '()))
                          (cons _i11140_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11072_)
      (let* ((_g1107411091_
              (lambda (_g1107511088_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1107511088_)))
             (_g1107311136_
              (lambda (_g1107511094_)
                (if (gx#stx-pair? _g1107511094_)
                    (let ((_e1107811096_ (gx#stx-e _g1107511094_)))
                      (let ((_hd1107911099_ (##car _e1107811096_))
                            (_tl1108011101_ (##cdr _e1107811096_)))
                        (if (gx#stx-pair? _tl1108011101_)
                            (let ((_e1108111104_ (gx#stx-e _tl1108011101_)))
                              (let ((_hd1108211107_ (##car _e1108111104_))
                                    (_tl1108311109_ (##cdr _e1108111104_)))
                                (if (gx#stx-pair? _tl1108311109_)
                                    (let ((_e1108411112_
                                           (gx#stx-e _tl1108311109_)))
                                      (let ((_hd1108511115_
                                             (##car _e1108411112_))
                                            (_tl1108611117_
                                             (##cdr _e1108411112_)))
                                        (if (gx#stx-null? _tl1108611117_)
                                            ((lambda (_L11120_ _L11121_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11121_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11120_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1108511115_
                                             _hd1108211107_)
                                            (_g1107411091_ _g1107511094_))))
                                    (_g1107411091_ _g1107511094_))))
                            (_g1107411091_ _g1107511094_))))
                    (_g1107411091_ _g1107511094_)))))
        (_g1107311136_ _stx11072_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11070_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11070_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9603_)
      (letrec ((_runtime-identifier=?9605_
                (lambda (_id-stx11061_ _sym11062_)
                  (let ((_bind1106311065_
                         (gx#resolve-identifier__0 _id-stx11061_)))
                    (if _bind1106311065_
                        (let ((_bind11068_ _bind1106311065_))
                          (eq? (##structure-ref
                                _bind11068_
                                '1
                                gx#binding::t
                                '#f)
                               _sym11062_))
                        '#f))))
               (_dispatch-case?9606_
                (lambda (_hd10291_ _body10292_)
                  (let* ((_form10294_ (cons _hd10291_ (cons _body10292_ '())))
                         (_g1029910456_
                          (lambda (_g1030010453_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1030010453_)))
                         (_g1029810463_
                          (lambda (_g1030010459_) ((lambda () '#f))))
                         (_g1029710604_
                          (lambda (_g1030010466_)
                            (if (gx#stx-pair? _g1030010466_)
                                (let ((_e1041610468_ (gx#stx-e _g1030010466_)))
                                  (let ((_hd1041710471_ (##car _e1041610468_))
                                        (_tl1041810473_ (##cdr _e1041610468_)))
                                    (if (gx#stx-pair? _tl1041810473_)
                                        (let ((_e1041910476_
                                               (gx#stx-e _tl1041810473_)))
                                          (let ((_hd1042010479_
                                                 (##car _e1041910476_))
                                                (_tl1042110481_
                                                 (##cdr _e1041910476_)))
                                            (if (gx#stx-pair? _hd1042010479_)
                                                (let ((_e1042210484_
                                                       (gx#stx-e
                                                        _hd1042010479_)))
                                                  (let ((_hd1042310487_
                                                         (##car _e1042210484_))
                                                        (_tl1042410489_
                                                         (##cdr _e1042210484_)))
                                                    (if (gx#identifier?
                                                         _hd1042310487_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1042310487_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1042410489_)
                        (let ((_e1042510492_ (gx#stx-e _tl1042410489_)))
                          (let ((_hd1042610495_ (##car _e1042510492_))
                                (_tl1042710497_ (##cdr _e1042510492_)))
                            (if (gx#stx-pair? _hd1042610495_)
                                (let ((_e1042810500_
                                       (gx#stx-e _hd1042610495_)))
                                  (let ((_hd1042910503_ (##car _e1042810500_))
                                        (_tl1043010505_ (##cdr _e1042810500_)))
                                    (if (gx#identifier? _hd1042910503_)
                                        (if (gx#stx-eq? '%#ref _hd1042910503_)
                                            (if (gx#stx-pair? _tl1043010505_)
                                                (let ((_e1043110508_
                                                       (gx#stx-e
                                                        _tl1043010505_)))
                                                  (let ((_hd1043210511_
                                                         (##car _e1043110508_))
                                                        (_tl1043310513_
                                                         (##cdr _e1043110508_)))
                                                    (if (gx#stx-null?
                                                         _tl1043310513_)
                                                        (if (gx#stx-pair?
                                                             _tl1042710497_)
                                                            (let ((_e1043410516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1042710497_)))
                      (let ((_hd1043510519_ (##car _e1043410516_))
                            (_tl1043610521_ (##cdr _e1043410516_)))
                        (if (gx#stx-pair? _hd1043510519_)
                            (let ((_e1043710524_ (gx#stx-e _hd1043510519_)))
                              (let ((_hd1043810527_ (##car _e1043710524_))
                                    (_tl1043910529_ (##cdr _e1043710524_)))
                                (if (gx#identifier? _hd1043810527_)
                                    (if (gx#stx-eq? '%#ref _hd1043810527_)
                                        (if (gx#stx-pair? _tl1043910529_)
                                            (let ((_e1044010532_
                                                   (gx#stx-e _tl1043910529_)))
                                              (let ((_hd1044110535_
                                                     (##car _e1044010532_))
                                                    (_tl1044210537_
                                                     (##cdr _e1044010532_)))
                                                (if (gx#stx-null?
                                                     _tl1044210537_)
                                                    (if (gx#stx-pair?
                                                         _tl1043610521_)
                                                        (let ((_e1044310540_
                                                               (gx#stx-e
                                                                _tl1043610521_)))
                                                          (let ((_hd1044410543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044310540_))
                        (_tl1044510545_ (##cdr _e1044310540_)))
                    (if (gx#stx-pair? _hd1044410543_)
                        (let ((_e1044610548_ (gx#stx-e _hd1044410543_)))
                          (let ((_hd1044710551_ (##car _e1044610548_))
                                (_tl1044810553_ (##cdr _e1044610548_)))
                            (if (gx#identifier? _hd1044710551_)
                                (if (gx#stx-eq? '%#ref _hd1044710551_)
                                    (if (gx#stx-pair? _tl1044810553_)
                                        (let ((_e1044910556_
                                               (gx#stx-e _tl1044810553_)))
                                          (let ((_hd1045010559_
                                                 (##car _e1044910556_))
                                                (_tl1045110561_
                                                 (##cdr _e1044910556_)))
                                            (if (gx#stx-null? _tl1045110561_)
                                                (if (gx#stx-null?
                                                     _tl1044510545_)
                                                    (if (gx#stx-null?
                                                         _tl1042110481_)
                                                        ((lambda (_L10564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10565_
                          _L10566_
                          _L10567_)
                   (if (if (gx#identifier? _L10567_)
                           (if (_runtime-identifier=?9605_ _L10566_ 'apply)
                               (if (gx#free-identifier=? _L10567_ _L10564_)
                                   (not (gx#free-identifier=?
                                         _L10565_
                                         _L10567_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g1029810463_ _g1030010466_)))
                 _hd1045010559_
                 _hd1044110535_
                 _hd1043210511_
                 _hd1041710471_)
                (_g1029810463_ _g1030010466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029810463_
                                                     _g1030010466_))
                                                (_g1029810463_
                                                 _g1030010466_))))
                                        (_g1029810463_ _g1030010466_))
                                    (_g1029810463_ _g1030010466_))
                                (_g1029810463_ _g1030010466_))))
                        (_g1029810463_ _g1030010466_))))
                (_g1029810463_ _g1030010466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029810463_
                                                     _g1030010466_))))
                                            (_g1029810463_ _g1030010466_))
                                        (_g1029810463_ _g1030010466_))
                                    (_g1029810463_ _g1030010466_))))
                            (_g1029810463_ _g1030010466_))))
                    (_g1029810463_ _g1030010466_))
                (_g1029810463_ _g1030010466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029810463_ _g1030010466_))
                                            (_g1029810463_ _g1030010466_))
                                        (_g1029810463_ _g1030010466_))))
                                (_g1029810463_ _g1030010466_))))
                        (_g1029810463_ _g1030010466_))
                    (_g1029810463_ _g1030010466_))
                (_g1029810463_ _g1030010466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029810463_
                                                 _g1030010466_))))
                                        (_g1029810463_ _g1030010466_))))
                                (_g1029810463_ _g1030010466_))))
                         (_g1029610864_
                          (lambda (_g1030010607_)
                            (if (gx#stx-pair? _g1030010607_)
                                (let ((_e1035210609_ (gx#stx-e _g1030010607_)))
                                  (let ((_hd1035310612_ (##car _e1035210609_))
                                        (_tl1035410614_ (##cdr _e1035210609_)))
                                    (if (gx#stx-pair/null? _hd1035310612_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1035310612_)
                                                  '0)
                                            (let ((_g12834_
                                                   (gx#syntax-split-splice
                                                    _hd1035310612_
                                                    '0)))
                                              (begin
                                                (let ((_g12835_
                                                       (if (##values? _g12834_)
                                                           (##vector-length
                                                            _g12834_)
                                                           1)))
                                                  (if (not (##fx= _g12835_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12835_)))
                                                (let ((_target1035510617_
                                                       (##vector-ref
                                                        _g12834_
                                                        0))
                                                      (_tl1035710619_
                                                       (##vector-ref
                                                        _g12834_
                                                        1)))
                                                  (letrec ((_loop1035810622_
                                                            (lambda (_hd1035610625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1036210627_)
                      (if (gx#stx-pair? _hd1035610625_)
                          (let ((_e1035910630_ (gx#stx-e _hd1035610625_)))
                            (let ((_lp-hd1036010633_ (##car _e1035910630_))
                                  (_lp-tl1036110635_ (##cdr _e1035910630_)))
                              (_loop1035810622_
                               _lp-tl1036110635_
                               (cons _lp-hd1036010633_ _arg1036210627_))))
                          (let ((_arg1036310638_ (reverse _arg1036210627_)))
                            (if (gx#stx-pair? _tl1035410614_)
                                (let ((_e1036410641_
                                       (gx#stx-e _tl1035410614_)))
                                  (let ((_hd1036510644_ (##car _e1036410641_))
                                        (_tl1036610646_ (##cdr _e1036410641_)))
                                    (if (gx#stx-pair? _hd1036510644_)
                                        (let ((_e1036710649_
                                               (gx#stx-e _hd1036510644_)))
                                          (let ((_hd1036810652_
                                                 (##car _e1036710649_))
                                                (_tl1036910654_
                                                 (##cdr _e1036710649_)))
                                            (if (gx#identifier? _hd1036810652_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1036810652_)
                                                    (if (gx#stx-pair?
                                                         _tl1036910654_)
                                                        (let ((_e1037010657_
                                                               (gx#stx-e
                                                                _tl1036910654_)))
                                                          (let ((_hd1037110660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1037010657_))
                        (_tl1037210662_ (##cdr _e1037010657_)))
                    (if (gx#stx-pair? _hd1037110660_)
                        (let ((_e1037310665_ (gx#stx-e _hd1037110660_)))
                          (let ((_hd1037410668_ (##car _e1037310665_))
                                (_tl1037510670_ (##cdr _e1037310665_)))
                            (if (gx#identifier? _hd1037410668_)
                                (if (gx#stx-eq? '%#ref _hd1037410668_)
                                    (if (gx#stx-pair? _tl1037510670_)
                                        (let ((_e1037610673_
                                               (gx#stx-e _tl1037510670_)))
                                          (let ((_hd1037710676_
                                                 (##car _e1037610673_))
                                                (_tl1037810678_
                                                 (##cdr _e1037610673_)))
                                            (if (gx#stx-null? _tl1037810678_)
                                                (if (gx#stx-pair?
                                                     _tl1037210662_)
                                                    (let ((_e1037910681_
                                                           (gx#stx-e
                                                            _tl1037210662_)))
                                                      (let ((_hd1038010684_
                                                             (##car _e1037910681_))
                                                            (_tl1038110686_
                                                             (##cdr _e1037910681_)))
                                                        (if (gx#stx-pair?
                                                             _hd1038010684_)
                                                            (let ((_e1038210689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1038010684_)))
                      (let ((_hd1038310692_ (##car _e1038210689_))
                            (_tl1038410694_ (##cdr _e1038210689_)))
                        (if (gx#identifier? _hd1038310692_)
                            (if (gx#stx-eq? '%#ref _hd1038310692_)
                                (if (gx#stx-pair? _tl1038410694_)
                                    (let ((_e1038510697_
                                           (gx#stx-e _tl1038410694_)))
                                      (let ((_hd1038610700_
                                             (##car _e1038510697_))
                                            (_tl1038710702_
                                             (##cdr _e1038510697_)))
                                        (if (gx#stx-null? _tl1038710702_)
                                            (if (gx#stx-pair/null?
                                                 _tl1038110686_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1038110686_)
                                                          '1)
                                                    (let ((_g12836_
                                                           (gx#syntax-split-splice
                                                            _tl1038110686_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12837_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g12836_)
                           (##vector-length _g12836_)
                           1)))
                  (if (not (##fx= _g12837_ 2))
                      (error "Context expects 2 values" _g12837_)))
                (let ((_target1038810705_ (##vector-ref _g12836_ 0))
                      (_tl1039010707_ (##vector-ref _g12836_ 1)))
                  (if (gx#stx-pair? _tl1039010707_)
                      (let ((_e1039710710_ (gx#stx-e _tl1039010707_)))
                        (let ((_hd1039810713_ (##car _e1039710710_))
                              (_tl1039910715_ (##cdr _e1039710710_)))
                          (if (gx#stx-pair? _hd1039810713_)
                              (let ((_e1040010718_ (gx#stx-e _hd1039810713_)))
                                (let ((_hd1040110721_ (##car _e1040010718_))
                                      (_tl1040210723_ (##cdr _e1040010718_)))
                                  (if (gx#identifier? _hd1040110721_)
                                      (if (gx#stx-eq? '%#ref _hd1040110721_)
                                          (if (gx#stx-pair? _tl1040210723_)
                                              (let ((_e1040310726_
                                                     (gx#stx-e
                                                      _tl1040210723_)))
                                                (let ((_hd1040410729_
                                                       (##car _e1040310726_))
                                                      (_tl1040510731_
                                                       (##cdr _e1040310726_)))
                                                  (if (gx#stx-null?
                                                       _tl1040510731_)
                                                      (if (gx#stx-null?
                                                           _tl1039910715_)
                                                          (letrec ((_loop1039110734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1038910737_ _xarg1039510739_)
                              (if (gx#stx-pair? _hd1038910737_)
                                  (let ((_e1039210742_
                                         (gx#stx-e _hd1038910737_)))
                                    (let ((_lp-hd1039310745_
                                           (##car _e1039210742_))
                                          (_lp-tl1039410747_
                                           (##cdr _e1039210742_)))
                                      (if (gx#stx-pair? _lp-hd1039310745_)
                                          (let ((_e1040610750_
                                                 (gx#stx-e _lp-hd1039310745_)))
                                            (let ((_hd1040710753_
                                                   (##car _e1040610750_))
                                                  (_tl1040810755_
                                                   (##cdr _e1040610750_)))
                                              (if (gx#identifier?
                                                   _hd1040710753_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1040710753_)
                                                      (if (gx#stx-pair?
                                                           _tl1040810755_)
                                                          (let ((_e1040910758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1040810755_)))
                    (let ((_hd1041010761_ (##car _e1040910758_))
                          (_tl1041110763_ (##cdr _e1040910758_)))
                      (if (gx#stx-null? _tl1041110763_)
                          (_loop1039110734_
                           _lp-tl1039410747_
                           (cons _hd1041010761_ _xarg1039510739_))
                          (_g1029710604_ _g1030010607_))))
                  (_g1029710604_ _g1030010607_))
              (_g1029710604_ _g1030010607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1029710604_
                                                   _g1030010607_))))
                                          (_g1029710604_ _g1030010607_))))
                                  (let ((_xarg1039610766_
                                         (reverse _xarg1039510739_)))
                                    (if (gx#stx-null? _tl1036610646_)
                                        ((lambda (_L10769_
                                                  _L10770_
                                                  _L10771_
                                                  _L10772_
                                                  _L10773_
                                                  _L10774_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1081710820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1081810822_)
                        (cons _g1081710820_ _g1081810822_))
                      '()
                      _L10774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10773_)
                                                       (if (_runtime-identifier=?9605_
                                                            _L10772_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1082410827_
                                                       _g1082510829_)
                                                (cons _g1082410827_
                                                      _g1082510829_))
                                              '()
                                              _L10774_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1083110834_
                                                       _g1083210836_)
                                                (cons _g1083110834_
                                                      _g1083210836_))
                                              '()
                                              _L10770_))))
                       (if (andmap2 gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1083810841_
                                                       _g1083910843_)
                                                (cons _g1083810841_
                                                      _g1083910843_))
                                              '()
                                              _L10774_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1084510848_
                                                       _g1084610850_)
                                                (cons _g1084510848_
                                                      _g1084610850_))
                                              '()
                                              _L10770_)))
                           (if (gx#free-identifier=? _L10773_ _L10769_)
                               (not (find (lambda (_g1085210854_)
                                            (gx#free-identifier=?
                                             _g1085210854_
                                             _L10771_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1085610859_
                                                             _g1085710861_)
                                                      (cons _g1085610859_
                                                            _g1085710861_))
                                                    (cons _L10773_ '())
                                                    _L10774_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1029710604_ _g1030010607_)))
                                         _hd1040410729_
                                         _xarg1039610766_
                                         _hd1038610700_
                                         _hd1037710676_
                                         _tl1035710619_
                                         _arg1036310638_)
                                        (_g1029710604_ _g1030010607_)))))))
                    (_loop1039110734_ _target1038810705_ '()))
                  (_g1029710604_ _g1030010607_))
              (_g1029710604_ _g1030010607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1029710604_ _g1030010607_))
                                          (_g1029710604_ _g1030010607_))
                                      (_g1029710604_ _g1030010607_))))
                              (_g1029710604_ _g1030010607_))))
                      (_g1029710604_ _g1030010607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029710604_
                                                     _g1030010607_))
                                                (_g1029710604_ _g1030010607_))
                                            (_g1029710604_ _g1030010607_))))
                                    (_g1029710604_ _g1030010607_))
                                (_g1029710604_ _g1030010607_))
                            (_g1029710604_ _g1030010607_))))
                    (_g1029710604_ _g1030010607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029710604_
                                                     _g1030010607_))
                                                (_g1029710604_
                                                 _g1030010607_))))
                                        (_g1029710604_ _g1030010607_))
                                    (_g1029710604_ _g1030010607_))
                                (_g1029710604_ _g1030010607_))))
                        (_g1029710604_ _g1030010607_))))
                (_g1029710604_ _g1030010607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029710604_
                                                     _g1030010607_))
                                                (_g1029710604_
                                                 _g1030010607_))))
                                        (_g1029710604_ _g1030010607_))))
                                (_g1029710604_ _g1030010607_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1035810622_
                                                     _target1035510617_
                                                     '())))))
                                            (_g1029710604_ _g1030010607_))
                                        (_g1029710604_ _g1030010607_))))
                                (_g1029710604_ _g1030010607_))))
                         (_g1029511058_
                          (lambda (_g1030010867_)
                            (if (gx#stx-pair? _g1030010867_)
                                (let ((_e1030410869_ (gx#stx-e _g1030010867_)))
                                  (let ((_hd1030510872_ (##car _e1030410869_))
                                        (_tl1030610874_ (##cdr _e1030410869_)))
                                    (if (gx#stx-pair/null? _hd1030510872_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1030510872_)
                                                  '0)
                                            (let ((_g12838_
                                                   (gx#syntax-split-splice
                                                    _hd1030510872_
                                                    '0)))
                                              (begin
                                                (let ((_g12839_
                                                       (if (##values? _g12838_)
                                                           (##vector-length
                                                            _g12838_)
                                                           1)))
                                                  (if (not (##fx= _g12839_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12839_)))
                                                (let ((_target1030710877_
                                                       (##vector-ref
                                                        _g12838_
                                                        0))
                                                      (_tl1030910879_
                                                       (##vector-ref
                                                        _g12838_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1030910879_)
                                                      (letrec ((_loop1031010882_
                                                                (lambda (_hd1030810885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg1031410887_)
                          (if (gx#stx-pair? _hd1030810885_)
                              (let ((_e1031110890_ (gx#stx-e _hd1030810885_)))
                                (let ((_lp-hd1031210893_ (##car _e1031110890_))
                                      (_lp-tl1031310895_
                                       (##cdr _e1031110890_)))
                                  (_loop1031010882_
                                   _lp-tl1031310895_
                                   (cons _lp-hd1031210893_ _arg1031410887_))))
                              (let ((_arg1031510898_
                                     (reverse _arg1031410887_)))
                                (if (gx#stx-pair? _tl1030610874_)
                                    (let ((_e1031610901_
                                           (gx#stx-e _tl1030610874_)))
                                      (let ((_hd1031710904_
                                             (##car _e1031610901_))
                                            (_tl1031810906_
                                             (##cdr _e1031610901_)))
                                        (if (gx#stx-pair? _hd1031710904_)
                                            (let ((_e1031910909_
                                                   (gx#stx-e _hd1031710904_)))
                                              (let ((_hd1032010912_
                                                     (##car _e1031910909_))
                                                    (_tl1032110914_
                                                     (##cdr _e1031910909_)))
                                                (if (gx#identifier?
                                                     _hd1032010912_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1032010912_)
                                                        (if (gx#stx-pair?
                                                             _tl1032110914_)
                                                            (let ((_e1032210917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1032110914_)))
                      (let ((_hd1032310920_ (##car _e1032210917_))
                            (_tl1032410922_ (##cdr _e1032210917_)))
                        (if (gx#stx-pair? _hd1032310920_)
                            (let ((_e1032510925_ (gx#stx-e _hd1032310920_)))
                              (let ((_hd1032610928_ (##car _e1032510925_))
                                    (_tl1032710930_ (##cdr _e1032510925_)))
                                (if (gx#identifier? _hd1032610928_)
                                    (if (gx#stx-eq? '%#ref _hd1032610928_)
                                        (if (gx#stx-pair? _tl1032710930_)
                                            (let ((_e1032810933_
                                                   (gx#stx-e _tl1032710930_)))
                                              (let ((_hd1032910936_
                                                     (##car _e1032810933_))
                                                    (_tl1033010938_
                                                     (##cdr _e1032810933_)))
                                                (if (gx#stx-null?
                                                     _tl1033010938_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1032410922_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1032410922_)
                          '0)
                    (let ((_g12840_
                           (gx#syntax-split-splice _tl1032410922_ '0)))
                      (begin
                        (let ((_g12841_
                               (if (##values? _g12840_)
                                   (##vector-length _g12840_)
                                   1)))
                          (if (not (##fx= _g12841_ 2))
                              (error "Context expects 2 values" _g12841_)))
                        (let ((_target1033110941_ (##vector-ref _g12840_ 0))
                              (_tl1033310943_ (##vector-ref _g12840_ 1)))
                          (if (gx#stx-null? _tl1033310943_)
                              (letrec ((_loop1033410946_
                                        (lambda (_hd1033210949_
                                                 _xarg1033810951_)
                                          (if (gx#stx-pair? _hd1033210949_)
                                              (let ((_e1033510954_
                                                     (gx#stx-e
                                                      _hd1033210949_)))
                                                (let ((_lp-hd1033610957_
                                                       (##car _e1033510954_))
                                                      (_lp-tl1033710959_
                                                       (##cdr _e1033510954_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd1033610957_)
                                                      (let ((_e1034010962_
                                                             (gx#stx-e
                                                              _lp-hd1033610957_)))
                                                        (let ((_hd1034110965_
                                                               (##car _e1034010962_))
                                                              (_tl1034210967_
                                                               (##cdr _e1034010962_)))
                                                          (if (gx#identifier?
                                                               _hd1034110965_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd1034110965_)
                          (if (gx#stx-pair? _tl1034210967_)
                              (let ((_e1034310970_ (gx#stx-e _tl1034210967_)))
                                (let ((_hd1034410973_ (##car _e1034310970_))
                                      (_tl1034510975_ (##cdr _e1034310970_)))
                                  (if (gx#stx-null? _tl1034510975_)
                                      (_loop1033410946_
                                       _lp-tl1033710959_
                                       (cons _hd1034410973_ _xarg1033810951_))
                                      (_g1029610864_ _g1030010867_))))
                              (_g1029610864_ _g1030010867_))
                          (_g1029610864_ _g1030010867_))
                      (_g1029610864_ _g1030010867_))))
              (_g1029610864_ _g1030010867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg1033910978_
                                                     (reverse _xarg1033810951_)))
                                                (if (gx#stx-null?
                                                     _tl1031810906_)
                                                    ((lambda (_L10981_
                                                              _L10982_
                                                              _L10983_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1101111014_ _g1101211016_)
                                    (cons _g1101111014_ _g1101211016_))
                                  '()
                                  _L10983_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1101811021_
                                                           _g1101911023_)
                                                    (cons _g1101811021_
                                                          _g1101911023_))
                                                  '()
                                                  _L10983_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1102511028_
                                                           _g1102611030_)
                                                    (cons _g1102511028_
                                                          _g1102611030_))
                                                  '()
                                                  _L10981_))))
                           (if (andmap2 gx#free-identifier=?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103211035_
                                                           _g1103311037_)
                                                    (cons _g1103211035_
                                                          _g1103311037_))
                                                  '()
                                                  _L10983_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1103911042_
                                                           _g1104011044_)
                                                    (cons _g1103911042_
                                                          _g1104011044_))
                                                  '()
                                                  _L10981_)))
                               (not (find (lambda (_g1104611048_)
                                            (gx#free-identifier=?
                                             _g1104611048_
                                             _L10982_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1105011053_
                                                             _g1105111055_)
                                                      (cons _g1105011053_
                                                            _g1105111055_))
                                                    '()
                                                    _L10983_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g1029610864_ _g1030010867_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg1033910978_
                                                     _hd1032910936_
                                                     _arg1031510898_)
                                                    (_g1029610864_
                                                     _g1030010867_)))))))
                                (_loop1033410946_ _target1033110941_ '()))
                              (_g1029610864_ _g1030010867_)))))
                    (_g1029610864_ _g1030010867_))
                (_g1029610864_ _g1030010867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610864_
                                                     _g1030010867_))))
                                            (_g1029610864_ _g1030010867_))
                                        (_g1029610864_ _g1030010867_))
                                    (_g1029610864_ _g1030010867_))))
                            (_g1029610864_ _g1030010867_))))
                    (_g1029610864_ _g1030010867_))
                (_g1029610864_ _g1030010867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1029610864_
                                                     _g1030010867_))))
                                            (_g1029610864_ _g1030010867_))))
                                    (_g1029610864_ _g1030010867_)))))))
                (_loop1031010882_ _target1030710877_ '()))
              (_g1029610864_ _g1030010867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1029610864_ _g1030010867_))
                                        (_g1029610864_ _g1030010867_))))
                                (_g1029610864_ _g1030010867_)))))
                    (_g1029511058_ _form10294_))))
               (_dispatch-case-e9607_
                (lambda (_hd9755_ _body9756_)
                  (let* ((_form9758_ (cons _hd9755_ (cons _body9756_ '())))
                         (_g97629886_
                          (lambda (_g97639883_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g97639883_)))
                         (_g976110004_
                          (lambda (_g97639889_)
                            (if (gx#stx-pair? _g97639889_)
                                (let ((_e98529891_ (gx#stx-e _g97639889_)))
                                  (let ((_hd98539894_ (##car _e98529891_))
                                        (_tl98549896_ (##cdr _e98529891_)))
                                    (if (gx#stx-pair? _tl98549896_)
                                        (let ((_e98559899_
                                               (gx#stx-e _tl98549896_)))
                                          (let ((_hd98569902_
                                                 (##car _e98559899_))
                                                (_tl98579904_
                                                 (##cdr _e98559899_)))
                                            (if (gx#stx-pair? _hd98569902_)
                                                (let ((_e98589907_
                                                       (gx#stx-e
                                                        _hd98569902_)))
                                                  (let ((_hd98599910_
                                                         (##car _e98589907_))
                                                        (_tl98609912_
                                                         (##cdr _e98589907_)))
                                                    (if (gx#identifier?
                                                         _hd98599910_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd98599910_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98609912_)
                        (let ((_e98619915_ (gx#stx-e _tl98609912_)))
                          (let ((_hd98629918_ (##car _e98619915_))
                                (_tl98639920_ (##cdr _e98619915_)))
                            (if (gx#stx-pair? _hd98629918_)
                                (let ((_e98649923_ (gx#stx-e _hd98629918_)))
                                  (let ((_hd98659926_ (##car _e98649923_))
                                        (_tl98669928_ (##cdr _e98649923_)))
                                    (if (gx#identifier? _hd98659926_)
                                        (if (gx#stx-eq? '%#ref _hd98659926_)
                                            (if (gx#stx-pair? _tl98669928_)
                                                (let ((_e98679931_
                                                       (gx#stx-e
                                                        _tl98669928_)))
                                                  (let ((_hd98689934_
                                                         (##car _e98679931_))
                                                        (_tl98699936_
                                                         (##cdr _e98679931_)))
                                                    (if (gx#stx-null?
                                                         _tl98699936_)
                                                        (if (gx#stx-pair?
                                                             _tl98639920_)
                                                            (let ((_e98709939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl98639920_)))
                      (let ((_hd98719942_ (##car _e98709939_))
                            (_tl98729944_ (##cdr _e98709939_)))
                        (if (gx#stx-pair? _hd98719942_)
                            (let ((_e98739947_ (gx#stx-e _hd98719942_)))
                              (let ((_hd98749950_ (##car _e98739947_))
                                    (_tl98759952_ (##cdr _e98739947_)))
                                (if (gx#identifier? _hd98749950_)
                                    (if (gx#stx-eq? '%#ref _hd98749950_)
                                        (if (gx#stx-pair? _tl98759952_)
                                            (let ((_e98769955_
                                                   (gx#stx-e _tl98759952_)))
                                              (let ((_hd98779958_
                                                     (##car _e98769955_))
                                                    (_tl98789960_
                                                     (##cdr _e98769955_)))
                                                (if (gx#stx-null? _tl98789960_)
                                                    (if (gx#stx-pair?
                                                         _tl98729944_)
                                                        (let ((_e98799963_
                                                               (gx#stx-e
                                                                _tl98729944_)))
                                                          (let ((_hd98809966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e98799963_))
                        (_tl98819968_ (##cdr _e98799963_)))
                    (if (gx#stx-null? _tl98819968_)
                        (if (gx#stx-null? _tl98579904_)
                            ((lambda (_L9971_ _L9972_ _L9973_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9971_ '()))))
                             _hd98779958_
                             _hd98689934_
                             _hd98539894_)
                            (_g97629886_ _g97639889_))
                        (_g97629886_ _g97639889_))))
                (_g97629886_ _g97639889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g97629886_
                                                     _g97639889_))))
                                            (_g97629886_ _g97639889_))
                                        (_g97629886_ _g97639889_))
                                    (_g97629886_ _g97639889_))))
                            (_g97629886_ _g97639889_))))
                    (_g97629886_ _g97639889_))
                (_g97629886_ _g97639889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97629886_ _g97639889_))
                                            (_g97629886_ _g97639889_))
                                        (_g97629886_ _g97639889_))))
                                (_g97629886_ _g97639889_))))
                        (_g97629886_ _g97639889_))
                    (_g97629886_ _g97639889_))
                (_g97629886_ _g97639889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97629886_ _g97639889_))))
                                        (_g97629886_ _g97639889_))))
                                (_g97629886_ _g97639889_))))
                         (_g976010140_
                          (lambda (_g976310007_)
                            (if (gx#stx-pair? _g976310007_)
                                (let ((_e981310009_ (gx#stx-e _g976310007_)))
                                  (let ((_hd981410012_ (##car _e981310009_))
                                        (_tl981510014_ (##cdr _e981310009_)))
                                    (if (gx#stx-pair/null? _hd981410012_)
                                        (if (fx>= (gx#stx-length _hd981410012_)
                                                  '0)
                                            (let ((_g12842_
                                                   (gx#syntax-split-splice
                                                    _hd981410012_
                                                    '0)))
                                              (begin
                                                (let ((_g12843_
                                                       (if (##values? _g12842_)
                                                           (##vector-length
                                                            _g12842_)
                                                           1)))
                                                  (if (not (##fx= _g12843_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12843_)))
                                                (let ((_target981610017_
                                                       (##vector-ref
                                                        _g12842_
                                                        0))
                                                      (_tl981810019_
                                                       (##vector-ref
                                                        _g12842_
                                                        1)))
                                                  (letrec ((_loop981910022_
                                                            (lambda (_hd981710025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg982310027_)
                      (if (gx#stx-pair? _hd981710025_)
                          (let ((_e982010030_ (gx#stx-e _hd981710025_)))
                            (let ((_lp-hd982110033_ (##car _e982010030_))
                                  (_lp-tl982210035_ (##cdr _e982010030_)))
                              (_loop981910022_
                               _lp-tl982210035_
                               (cons _lp-hd982110033_ _arg982310027_))))
                          (let ((_arg982410038_ (reverse _arg982310027_)))
                            (if (gx#stx-pair? _tl981510014_)
                                (let ((_e982510041_ (gx#stx-e _tl981510014_)))
                                  (let ((_hd982610044_ (##car _e982510041_))
                                        (_tl982710046_ (##cdr _e982510041_)))
                                    (if (gx#stx-pair? _hd982610044_)
                                        (let ((_e982810049_
                                               (gx#stx-e _hd982610044_)))
                                          (let ((_hd982910052_
                                                 (##car _e982810049_))
                                                (_tl983010054_
                                                 (##cdr _e982810049_)))
                                            (if (gx#identifier? _hd982910052_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd982910052_)
                                                    (if (gx#stx-pair?
                                                         _tl983010054_)
                                                        (let ((_e983110057_
                                                               (gx#stx-e
                                                                _tl983010054_)))
                                                          (let ((_hd983210060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e983110057_))
                        (_tl983310062_ (##cdr _e983110057_)))
                    (if (gx#stx-pair? _hd983210060_)
                        (let ((_e983410065_ (gx#stx-e _hd983210060_)))
                          (let ((_hd983510068_ (##car _e983410065_))
                                (_tl983610070_ (##cdr _e983410065_)))
                            (if (gx#identifier? _hd983510068_)
                                (if (gx#stx-eq? '%#ref _hd983510068_)
                                    (if (gx#stx-pair? _tl983610070_)
                                        (let ((_e983710073_
                                               (gx#stx-e _tl983610070_)))
                                          (let ((_hd983810076_
                                                 (##car _e983710073_))
                                                (_tl983910078_
                                                 (##cdr _e983710073_)))
                                            (if (gx#stx-null? _tl983910078_)
                                                (if (gx#stx-pair?
                                                     _tl983310062_)
                                                    (let ((_e984010081_
                                                           (gx#stx-e
                                                            _tl983310062_)))
                                                      (let ((_hd984110084_
                                                             (##car _e984010081_))
                                                            (_tl984210086_
                                                             (##cdr _e984010081_)))
                                                        (if (gx#stx-pair?
                                                             _hd984110084_)
                                                            (let ((_e984310089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd984110084_)))
                      (let ((_hd984410092_ (##car _e984310089_))
                            (_tl984510094_ (##cdr _e984310089_)))
                        (if (gx#identifier? _hd984410092_)
                            (if (gx#stx-eq? '%#ref _hd984410092_)
                                (if (gx#stx-pair? _tl984510094_)
                                    (let ((_e984610097_
                                           (gx#stx-e _tl984510094_)))
                                      (let ((_hd984710100_
                                             (##car _e984610097_))
                                            (_tl984810102_
                                             (##cdr _e984610097_)))
                                        (if (gx#stx-null? _tl984810102_)
                                            (if (gx#stx-null? _tl982710046_)
                                                ((lambda (_L10105_
                                                          _L10106_
                                                          _L10107_
                                                          _L10108_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L10105_
                                                                '()))))
                                                 _hd984710100_
                                                 _hd983810076_
                                                 _tl981810019_
                                                 _arg982410038_)
                                                (_g976110004_ _g976310007_))
                                            (_g976110004_ _g976310007_))))
                                    (_g976110004_ _g976310007_))
                                (_g976110004_ _g976310007_))
                            (_g976110004_ _g976310007_))))
                    (_g976110004_ _g976310007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g976110004_
                                                     _g976310007_))
                                                (_g976110004_ _g976310007_))))
                                        (_g976110004_ _g976310007_))
                                    (_g976110004_ _g976310007_))
                                (_g976110004_ _g976310007_))))
                        (_g976110004_ _g976310007_))))
                (_g976110004_ _g976310007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g976110004_
                                                     _g976310007_))
                                                (_g976110004_ _g976310007_))))
                                        (_g976110004_ _g976310007_))))
                                (_g976110004_ _g976310007_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop981910022_
                                                     _target981610017_
                                                     '())))))
                                            (_g976110004_ _g976310007_))
                                        (_g976110004_ _g976310007_))))
                                (_g976110004_ _g976310007_))))
                         (_g975910288_
                          (lambda (_g976310143_)
                            (if (gx#stx-pair? _g976310143_)
                                (let ((_e976710145_ (gx#stx-e _g976310143_)))
                                  (let ((_hd976810148_ (##car _e976710145_))
                                        (_tl976910150_ (##cdr _e976710145_)))
                                    (if (gx#stx-pair/null? _hd976810148_)
                                        (if (fx>= (gx#stx-length _hd976810148_)
                                                  '0)
                                            (let ((_g12844_
                                                   (gx#syntax-split-splice
                                                    _hd976810148_
                                                    '0)))
                                              (begin
                                                (let ((_g12845_
                                                       (if (##values? _g12844_)
                                                           (##vector-length
                                                            _g12844_)
                                                           1)))
                                                  (if (not (##fx= _g12845_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12845_)))
                                                (let ((_target977010153_
                                                       (##vector-ref
                                                        _g12844_
                                                        0))
                                                      (_tl977210155_
                                                       (##vector-ref
                                                        _g12844_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl977210155_)
                                                      (letrec ((_loop977310158_
                                                                (lambda (_hd977110161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg977710163_)
                          (if (gx#stx-pair? _hd977110161_)
                              (let ((_e977410166_ (gx#stx-e _hd977110161_)))
                                (let ((_lp-hd977510169_ (##car _e977410166_))
                                      (_lp-tl977610171_ (##cdr _e977410166_)))
                                  (_loop977310158_
                                   _lp-tl977610171_
                                   (cons _lp-hd977510169_ _arg977710163_))))
                              (let ((_arg977810174_ (reverse _arg977710163_)))
                                (if (gx#stx-pair? _tl976910150_)
                                    (let ((_e977910177_
                                           (gx#stx-e _tl976910150_)))
                                      (let ((_hd978010180_
                                             (##car _e977910177_))
                                            (_tl978110182_
                                             (##cdr _e977910177_)))
                                        (if (gx#stx-pair? _hd978010180_)
                                            (let ((_e978210185_
                                                   (gx#stx-e _hd978010180_)))
                                              (let ((_hd978310188_
                                                     (##car _e978210185_))
                                                    (_tl978410190_
                                                     (##cdr _e978210185_)))
                                                (if (gx#identifier?
                                                     _hd978310188_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd978310188_)
                                                        (if (gx#stx-pair?
                                                             _tl978410190_)
                                                            (let ((_e978510193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl978410190_)))
                      (let ((_hd978610196_ (##car _e978510193_))
                            (_tl978710198_ (##cdr _e978510193_)))
                        (if (gx#stx-pair? _hd978610196_)
                            (let ((_e978810201_ (gx#stx-e _hd978610196_)))
                              (let ((_hd978910204_ (##car _e978810201_))
                                    (_tl979010206_ (##cdr _e978810201_)))
                                (if (gx#identifier? _hd978910204_)
                                    (if (gx#stx-eq? '%#ref _hd978910204_)
                                        (if (gx#stx-pair? _tl979010206_)
                                            (let ((_e979110209_
                                                   (gx#stx-e _tl979010206_)))
                                              (let ((_hd979210212_
                                                     (##car _e979110209_))
                                                    (_tl979310214_
                                                     (##cdr _e979110209_)))
                                                (if (gx#stx-null?
                                                     _tl979310214_)
                                                    (if (gx#stx-pair/null?
                                                         _tl978710198_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl978710198_)
                          '0)
                    (let ((_g12846_ (gx#syntax-split-splice _tl978710198_ '0)))
                      (begin
                        (let ((_g12847_
                               (if (##values? _g12846_)
                                   (##vector-length _g12846_)
                                   1)))
                          (if (not (##fx= _g12847_ 2))
                              (error "Context expects 2 values" _g12847_)))
                        (let ((_target979410217_ (##vector-ref _g12846_ 0))
                              (_tl979610219_ (##vector-ref _g12846_ 1)))
                          (if (gx#stx-null? _tl979610219_)
                              (letrec ((_loop979710222_
                                        (lambda (_hd979510225_ _xarg980110227_)
                                          (if (gx#stx-pair? _hd979510225_)
                                              (let ((_e979810230_
                                                     (gx#stx-e _hd979510225_)))
                                                (let ((_lp-hd979910233_
                                                       (##car _e979810230_))
                                                      (_lp-tl980010235_
                                                       (##cdr _e979810230_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd979910233_)
                                                      (let ((_e980310238_
                                                             (gx#stx-e
                                                              _lp-hd979910233_)))
                                                        (let ((_hd980410241_
                                                               (##car _e980310238_))
                                                              (_tl980510243_
                                                               (##cdr _e980310238_)))
                                                          (if (gx#identifier?
                                                               _hd980410241_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd980410241_)
                          (if (gx#stx-pair? _tl980510243_)
                              (let ((_e980610246_ (gx#stx-e _tl980510243_)))
                                (let ((_hd980710249_ (##car _e980610246_))
                                      (_tl980810251_ (##cdr _e980610246_)))
                                  (if (gx#stx-null? _tl980810251_)
                                      (_loop979710222_
                                       _lp-tl980010235_
                                       (cons _hd980710249_ _xarg980110227_))
                                      (_g976010140_ _g976310143_))))
                              (_g976010140_ _g976310143_))
                          (_g976010140_ _g976310143_))
                      (_g976010140_ _g976310143_))))
              (_g976010140_ _g976310143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg980210254_
                                                     (reverse _xarg980110227_)))
                                                (if (gx#stx-null?
                                                     _tl978110182_)
                                                    ((lambda (_L10257_
                                                              _L10258_
                                                              _L10259_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L10258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg980210254_
                                                     _hd979210212_
                                                     _arg977810174_)
                                                    (_g976010140_
                                                     _g976310143_)))))))
                                (_loop979710222_ _target979410217_ '()))
                              (_g976010140_ _g976310143_)))))
                    (_g976010140_ _g976310143_))
                (_g976010140_ _g976310143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g976010140_
                                                     _g976310143_))))
                                            (_g976010140_ _g976310143_))
                                        (_g976010140_ _g976310143_))
                                    (_g976010140_ _g976310143_))))
                            (_g976010140_ _g976310143_))))
                    (_g976010140_ _g976310143_))
                (_g976010140_ _g976310143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g976010140_
                                                     _g976310143_))))
                                            (_g976010140_ _g976310143_))))
                                    (_g976010140_ _g976310143_)))))))
                (_loop977310158_ _target977010153_ '()))
              (_g976010140_ _g976310143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g976010140_ _g976310143_))
                                        (_g976010140_ _g976310143_))))
                                (_g976010140_ _g976310143_)))))
                    (_g975910288_ _form9758_))))
               (_generate19608_
                (lambda (_args9743_ _arglen9744_ _hd9745_ _body9746_)
                  (let* ((_len9748_ (gx#stx-length _hd9745_))
                         (_condition9750_
                          (if (gx#stx-list? _hd9745_)
                              (cons '##fx=
                                    (cons _arglen9744_ (cons _len9748_ '())))
                              (if (> _len9748_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9744_
                                              (cons _len9748_ '())))
                                  '#t)))
                         (_dispatch9752_
                          (if (_dispatch-case?9606_ _hd9745_ _body9746_)
                              (_dispatch-case-e9607_ _hd9745_ _body9746_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9745_)
                                          (cons (gxc#compile-e _body9746_)
                                                '()))))))
                    (cons _condition9750_
                          (cons (cons 'apply
                                      (cons _dispatch9752_
                                            (cons _args9743_ '())))
                                '()))))))
        (let* ((_g96109638_
                (lambda (_g96119635_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g96119635_)))
               (_g96099740_
                (lambda (_g96119641_)
                  (if (gx#stx-pair? _g96119641_)
                      (let ((_e96149643_ (gx#stx-e _g96119641_)))
                        (let ((_hd96159646_ (##car _e96149643_))
                              (_tl96169648_ (##cdr _e96149643_)))
                          (if (gx#stx-pair/null? _tl96169648_)
                              (if (fx>= (gx#stx-length _tl96169648_) '0)
                                  (let ((_g12848_
                                         (gx#syntax-split-splice
                                          _tl96169648_
                                          '0)))
                                    (begin
                                      (let ((_g12849_
                                             (if (##values? _g12848_)
                                                 (##vector-length _g12848_)
                                                 1)))
                                        (if (not (##fx= _g12849_ 2))
                                            (error "Context expects 2 values"
                                                   _g12849_)))
                                      (let ((_target96179651_
                                             (##vector-ref _g12848_ 0))
                                            (_tl96199653_
                                             (##vector-ref _g12848_ 1)))
                                        (if (gx#stx-null? _tl96199653_)
                                            (letrec ((_loop96209656_
                                                      (lambda (_hd96189659_
                                                               _body96249661_
                                                               _hd96259663_)
                                                        (if (gx#stx-pair?
                                                             _hd96189659_)
                                                            (let ((_e96219666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96189659_)))
                      (let ((_lp-hd96229669_ (##car _e96219666_))
                            (_lp-tl96239671_ (##cdr _e96219666_)))
                        (if (gx#stx-pair? _lp-hd96229669_)
                            (let ((_e96289674_ (gx#stx-e _lp-hd96229669_)))
                              (let ((_hd96299677_ (##car _e96289674_))
                                    (_tl96309679_ (##cdr _e96289674_)))
                                (if (gx#stx-pair? _tl96309679_)
                                    (let ((_e96319682_
                                           (gx#stx-e _tl96309679_)))
                                      (let ((_hd96329685_ (##car _e96319682_))
                                            (_tl96339687_ (##cdr _e96319682_)))
                                        (if (gx#stx-null? _tl96339687_)
                                            (_loop96209656_
                                             _lp-tl96239671_
                                             (cons _hd96329685_ _body96249661_)
                                             (cons _hd96299677_ _hd96259663_))
                                            (_g96109638_ _g96119641_))))
                                    (_g96109638_ _g96119641_))))
                            (_g96109638_ _g96119641_))))
                    (let ((_body96269690_ (reverse _body96249661_))
                          (_hd96279692_ (reverse _hd96259663_)))
                      ((lambda (_L9695_ _L9696_)
                         (let ((_args9715_ (gxc#generate-runtime-temporary__0))
                               (_arglen9716_
                                (gxc#generate-runtime-temporary__0))
                               (_name9717_
                                (let ((_$e9712_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx9603_
                                        '#f)))
                                  (if _$e9712_
                                      _$e9712_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9715_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9715_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9715_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g97189721_ _g97199723_)
                                            (_generate19608_
                                             _args9715_
                                             _arglen9716_
                                             _g97189721_
                                             _g97199723_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97259728_
                                                             _g97269730_)
                                                      (cons _g97259728_
                                                            _g97269730_))
                                                    '()
                                                    _L9696_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g97329735_
                                                             _g97339737_)
                                                      (cons _g97329735_
                                                            _g97339737_))
                                                    '()
                                                    _L9695_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body96269690_
                       _hd96279692_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop96209656_
                                               _target96179651_
                                               '()
                                               '()))
                                            (_g96109638_ _g96119641_)))))
                                  (_g96109638_ _g96119641_))
                              (_g96109638_ _g96119641_))))
                      (_g96109638_ _g96119641_)))))
          (_g96099740_ _stx9603_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8668_ _compiled-body?8669_)
        (letrec ((_generate-simple8671_
                  (lambda (_hd9590_ _body9591_)
                    (_coalesce-let*8672_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9590_
                      _body9591_
                      _compiled-body?8669_))))
                 (_coalesce-let*8672_
                  (lambda (_code8974_)
                    (let* ((_g89799114_
                            (lambda (_g89809111_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g89809111_)))
                           (_g89789121_
                            (lambda (_g89809117_) ((lambda () _code8974_))))
                           (_g89779291_
                            (lambda (_g89809124_)
                              (if (gx#stx-pair? _g89809124_)
                                  (let ((_e90689126_ (gx#stx-e _g89809124_)))
                                    (let ((_hd90699129_ (##car _e90689126_))
                                          (_tl90709131_ (##cdr _e90689126_)))
                                      (if (gx#identifier? _hd90699129_)
                                          (if (gx#stx-eq? 'let _hd90699129_)
                                              (if (gx#stx-pair? _tl90709131_)
                                                  (let ((_e90719134_
                                                         (gx#stx-e
                                                          _tl90709131_)))
                                                    (let ((_hd90729137_
                                                           (##car _e90719134_))
                                                          (_tl90739139_
                                                           (##cdr _e90719134_)))
                                                      (if (gx#stx-pair?
                                                           _hd90729137_)
                                                          (let ((_e90749142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90729137_)))
                    (let ((_hd90759145_ (##car _e90749142_))
                          (_tl90769147_ (##cdr _e90749142_)))
                      (if (gx#stx-pair? _hd90759145_)
                          (let ((_e90779150_ (gx#stx-e _hd90759145_)))
                            (let ((_hd90789153_ (##car _e90779150_))
                                  (_tl90799155_ (##cdr _e90779150_)))
                              (if (gx#stx-pair? _tl90799155_)
                                  (let ((_e90809158_ (gx#stx-e _tl90799155_)))
                                    (let ((_hd90819161_ (##car _e90809158_))
                                          (_tl90829163_ (##cdr _e90809158_)))
                                      (if (gx#stx-null? _tl90829163_)
                                          (if (gx#stx-null? _tl90769147_)
                                              (if (gx#stx-pair? _tl90739139_)
                                                  (let ((_e90839166_
                                                         (gx#stx-e
                                                          _tl90739139_)))
                                                    (let ((_hd90849169_
                                                           (##car _e90839166_))
                                                          (_tl90859171_
                                                           (##cdr _e90839166_)))
                                                      (if (gx#stx-pair?
                                                           _hd90849169_)
                                                          (let ((_e90869174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90849169_)))
                    (let ((_hd90879177_ (##car _e90869174_))
                          (_tl90889179_ (##cdr _e90869174_)))
                      (if (gx#identifier? _hd90879177_)
                          (if (gx#stx-eq? 'let* _hd90879177_)
                              (if (gx#stx-pair? _tl90889179_)
                                  (let ((_e90899182_ (gx#stx-e _tl90889179_)))
                                    (let ((_hd90909185_ (##car _e90899182_))
                                          (_tl90919187_ (##cdr _e90899182_)))
                                      (if (gx#stx-pair/null? _hd90909185_)
                                          (if (fx>= (gx#stx-length
                                                     _hd90909185_)
                                                    '0)
                                              (let ((_g12850_
                                                     (gx#syntax-split-splice
                                                      _hd90909185_
                                                      '0)))
                                                (begin
                                                  (let ((_g12851_
                                                         (if (##values?
                                                              _g12850_)
                                                             (##vector-length
                                                              _g12850_)
                                                             1)))
                                                    (if (not (##fx= _g12851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g12851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target90929190_
                                                         (##vector-ref
                                                          _g12850_
                                                          0))
                                                        (_tl90949192_
                                                         (##vector-ref
                                                          _g12850_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl90949192_)
                                                        (letrec ((_loop90959195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd90939198_ _bind90999200_)
                            (if (gx#stx-pair? _hd90939198_)
                                (let ((_e90969203_ (gx#stx-e _hd90939198_)))
                                  (let ((_lp-hd90979206_ (##car _e90969203_))
                                        (_lp-tl90989208_ (##cdr _e90969203_)))
                                    (_loop90959195_
                                     _lp-tl90989208_
                                     (cons _lp-hd90979206_ _bind90999200_))))
                                (let ((_bind91009211_
                                       (reverse _bind90999200_)))
                                  (if (gx#stx-pair/null? _tl90919187_)
                                      (if (fx>= (gx#stx-length _tl90919187_)
                                                '0)
                                          (let ((_g12852_
                                                 (gx#syntax-split-splice
                                                  _tl90919187_
                                                  '0)))
                                            (begin
                                              (let ((_g12853_
                                                     (if (##values? _g12852_)
                                                         (##vector-length
                                                          _g12852_)
                                                         1)))
                                                (if (not (##fx= _g12853_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12853_)))
                                              (let ((_target91019214_
                                                     (##vector-ref _g12852_ 0))
                                                    (_tl91039216_
                                                     (##vector-ref
                                                      _g12852_
                                                      1)))
                                                (if (gx#stx-null? _tl91039216_)
                                                    (letrec ((_loop91049219_
                                                              (lambda (_hd91029222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body91089224_)
                        (if (gx#stx-pair? _hd91029222_)
                            (let ((_e91059227_ (gx#stx-e _hd91029222_)))
                              (let ((_lp-hd91069230_ (##car _e91059227_))
                                    (_lp-tl91079232_ (##cdr _e91059227_)))
                                (_loop91049219_
                                 _lp-tl91079232_
                                 (cons _lp-hd91069230_ _body91089224_))))
                            (let ((_body91099235_ (reverse _body91089224_)))
                              (if (gx#stx-null? _tl90859171_)
                                  ((lambda (_L9238_ _L9239_ _L9240_ _L9241_)
                                     (cons 'let*
                                           (cons (cons (cons _L9241_
                                                             (cons _L9240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g92769279_ _g92779281_)
                           (cons _g92769279_ _g92779281_))
                         '()
                         _L9239_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g92839286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g92849288_)
                     (cons _g92839286_ _g92849288_))
                   '()
                   _L9238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body91099235_
                                   _bind91009211_
                                   _hd90819161_
                                   _hd90789153_)
                                  (_g89789121_ _g89809124_)))))))
              (_loop91049219_ _target91019214_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g89789121_
                                                     _g89809124_)))))
                                          (_g89789121_ _g89809124_))
                                      (_g89789121_ _g89809124_)))))))
                  (_loop90959195_ _target90929190_ '()))
                (_g89789121_ _g89809124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g89789121_ _g89809124_))
                                          (_g89789121_ _g89809124_))))
                                  (_g89789121_ _g89809124_))
                              (_g89789121_ _g89809124_))
                          (_g89789121_ _g89809124_))))
                  (_g89789121_ _g89809124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89789121_ _g89809124_))
                                              (_g89789121_ _g89809124_))
                                          (_g89789121_ _g89809124_))))
                                  (_g89789121_ _g89809124_))))
                          (_g89789121_ _g89809124_))))
                  (_g89789121_ _g89809124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89789121_ _g89809124_))
                                              (_g89789121_ _g89809124_))
                                          (_g89789121_ _g89809124_))))
                                  (_g89789121_ _g89809124_))))
                           (_g89769456_
                            (lambda (_g89809294_)
                              (if (gx#stx-pair? _g89809294_)
                                  (let ((_e90229296_ (gx#stx-e _g89809294_)))
                                    (let ((_hd90239299_ (##car _e90229296_))
                                          (_tl90249301_ (##cdr _e90229296_)))
                                      (if (gx#identifier? _hd90239299_)
                                          (if (gx#stx-eq? 'let _hd90239299_)
                                              (if (gx#stx-pair? _tl90249301_)
                                                  (let ((_e90259304_
                                                         (gx#stx-e
                                                          _tl90249301_)))
                                                    (let ((_hd90269307_
                                                           (##car _e90259304_))
                                                          (_tl90279309_
                                                           (##cdr _e90259304_)))
                                                      (if (gx#stx-pair?
                                                           _hd90269307_)
                                                          (let ((_e90289312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90269307_)))
                    (let ((_hd90299315_ (##car _e90289312_))
                          (_tl90309317_ (##cdr _e90289312_)))
                      (if (gx#stx-pair? _hd90299315_)
                          (let ((_e90319320_ (gx#stx-e _hd90299315_)))
                            (let ((_hd90329323_ (##car _e90319320_))
                                  (_tl90339325_ (##cdr _e90319320_)))
                              (if (gx#stx-pair? _tl90339325_)
                                  (let ((_e90349328_ (gx#stx-e _tl90339325_)))
                                    (let ((_hd90359331_ (##car _e90349328_))
                                          (_tl90369333_ (##cdr _e90349328_)))
                                      (if (gx#stx-null? _tl90369333_)
                                          (if (gx#stx-null? _tl90309317_)
                                              (if (gx#stx-pair? _tl90279309_)
                                                  (let ((_e90379336_
                                                         (gx#stx-e
                                                          _tl90279309_)))
                                                    (let ((_hd90389339_
                                                           (##car _e90379336_))
                                                          (_tl90399341_
                                                           (##cdr _e90379336_)))
                                                      (if (gx#stx-pair?
                                                           _hd90389339_)
                                                          (let ((_e90409344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90389339_)))
                    (let ((_hd90419347_ (##car _e90409344_))
                          (_tl90429349_ (##cdr _e90409344_)))
                      (if (gx#identifier? _hd90419347_)
                          (if (gx#stx-eq? 'let _hd90419347_)
                              (if (gx#stx-pair? _tl90429349_)
                                  (let ((_e90439352_ (gx#stx-e _tl90429349_)))
                                    (let ((_hd90449355_ (##car _e90439352_))
                                          (_tl90459357_ (##cdr _e90439352_)))
                                      (if (gx#stx-pair? _hd90449355_)
                                          (let ((_e90469360_
                                                 (gx#stx-e _hd90449355_)))
                                            (let ((_hd90479363_
                                                   (##car _e90469360_))
                                                  (_tl90489365_
                                                   (##cdr _e90469360_)))
                                              (if (gx#stx-pair? _hd90479363_)
                                                  (let ((_e90499368_
                                                         (gx#stx-e
                                                          _hd90479363_)))
                                                    (let ((_hd90509371_
                                                           (##car _e90499368_))
                                                          (_tl90519373_
                                                           (##cdr _e90499368_)))
                                                      (if (gx#stx-pair?
                                                           _tl90519373_)
                                                          (let ((_e90529376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl90519373_)))
                    (let ((_hd90539379_ (##car _e90529376_))
                          (_tl90549381_ (##cdr _e90529376_)))
                      (if (gx#stx-null? _tl90549381_)
                          (if (gx#stx-null? _tl90489365_)
                              (if (gx#stx-pair/null? _tl90459357_)
                                  (if (fx>= (gx#stx-length _tl90459357_) '0)
                                      (let ((_g12854_
                                             (gx#syntax-split-splice
                                              _tl90459357_
                                              '0)))
                                        (begin
                                          (let ((_g12855_
                                                 (if (##values? _g12854_)
                                                     (##vector-length _g12854_)
                                                     1)))
                                            (if (not (##fx= _g12855_ 2))
                                                (error "Context expects 2 values"
                                                       _g12855_)))
                                          (let ((_target90559384_
                                                 (##vector-ref _g12854_ 0))
                                                (_tl90579386_
                                                 (##vector-ref _g12854_ 1)))
                                            (if (gx#stx-null? _tl90579386_)
                                                (letrec ((_loop90589389_
                                                          (lambda (_hd90569392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90629394_)
                    (if (gx#stx-pair? _hd90569392_)
                        (let ((_e90599397_ (gx#stx-e _hd90569392_)))
                          (let ((_lp-hd90609400_ (##car _e90599397_))
                                (_lp-tl90619402_ (##cdr _e90599397_)))
                            (_loop90589389_
                             _lp-tl90619402_
                             (cons _lp-hd90609400_ _body90629394_))))
                        (let ((_body90639405_ (reverse _body90629394_)))
                          (if (gx#stx-null? _tl90399341_)
                              ((lambda (_L9408_
                                        _L9409_
                                        _L9410_
                                        _L9411_
                                        _L9412_)
                                 (cons 'let*
                                       (cons (cons (cons _L9412_
                                                         (cons _L9411_ '()))
                                                   (cons (cons _L9410_
                                                               (cons _L9409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g94489451_
                                                                _g94499453_)
                                                         (cons _g94489451_
                                                               _g94499453_))
                                                       '()
                                                       _L9408_)))))
                               _body90639405_
                               _hd90539379_
                               _hd90509371_
                               _hd90359331_
                               _hd90329323_)
                              (_g89779291_ _g89809294_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop90589389_
                                                   _target90559384_
                                                   '()))
                                                (_g89779291_ _g89809294_)))))
                                      (_g89779291_ _g89809294_))
                                  (_g89779291_ _g89809294_))
                              (_g89779291_ _g89809294_))
                          (_g89779291_ _g89809294_))))
                  (_g89779291_ _g89809294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779291_ _g89809294_))))
                                          (_g89779291_ _g89809294_))))
                                  (_g89779291_ _g89809294_))
                              (_g89779291_ _g89809294_))
                          (_g89779291_ _g89809294_))))
                  (_g89779291_ _g89809294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779291_ _g89809294_))
                                              (_g89779291_ _g89809294_))
                                          (_g89779291_ _g89809294_))))
                                  (_g89779291_ _g89809294_))))
                          (_g89779291_ _g89809294_))))
                  (_g89779291_ _g89809294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89779291_ _g89809294_))
                                              (_g89779291_ _g89809294_))
                                          (_g89779291_ _g89809294_))))
                                  (_g89779291_ _g89809294_))))
                           (_g89759587_
                            (lambda (_g89809459_)
                              (if (gx#stx-pair? _g89809459_)
                                  (let ((_e89849461_ (gx#stx-e _g89809459_)))
                                    (let ((_hd89859464_ (##car _e89849461_))
                                          (_tl89869466_ (##cdr _e89849461_)))
                                      (if (gx#identifier? _hd89859464_)
                                          (if (gx#stx-eq? 'let _hd89859464_)
                                              (if (gx#stx-pair? _tl89869466_)
                                                  (let ((_e89879469_
                                                         (gx#stx-e
                                                          _tl89869466_)))
                                                    (let ((_hd89889472_
                                                           (##car _e89879469_))
                                                          (_tl89899474_
                                                           (##cdr _e89879469_)))
                                                      (if (gx#stx-pair?
                                                           _hd89889472_)
                                                          (let ((_e89909477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd89889472_)))
                    (let ((_hd89919480_ (##car _e89909477_))
                          (_tl89929482_ (##cdr _e89909477_)))
                      (if (gx#stx-pair? _hd89919480_)
                          (let ((_e89939485_ (gx#stx-e _hd89919480_)))
                            (let ((_hd89949488_ (##car _e89939485_))
                                  (_tl89959490_ (##cdr _e89939485_)))
                              (if (gx#stx-pair? _tl89959490_)
                                  (let ((_e89969493_ (gx#stx-e _tl89959490_)))
                                    (let ((_hd89979496_ (##car _e89969493_))
                                          (_tl89989498_ (##cdr _e89969493_)))
                                      (if (gx#stx-null? _tl89989498_)
                                          (if (gx#stx-null? _tl89929482_)
                                              (if (gx#stx-pair? _tl89899474_)
                                                  (let ((_e89999501_
                                                         (gx#stx-e
                                                          _tl89899474_)))
                                                    (let ((_hd90009504_
                                                           (##car _e89999501_))
                                                          (_tl90019506_
                                                           (##cdr _e89999501_)))
                                                      (if (gx#stx-pair?
                                                           _hd90009504_)
                                                          (let ((_e90029509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd90009504_)))
                    (let ((_hd90039512_ (##car _e90029509_))
                          (_tl90049514_ (##cdr _e90029509_)))
                      (if (gx#identifier? _hd90039512_)
                          (if (gx#stx-eq? 'let _hd90039512_)
                              (if (gx#stx-pair? _tl90049514_)
                                  (let ((_e90059517_ (gx#stx-e _tl90049514_)))
                                    (let ((_hd90069520_ (##car _e90059517_))
                                          (_tl90079522_ (##cdr _e90059517_)))
                                      (if (gx#stx-null? _hd90069520_)
                                          (if (gx#stx-pair/null? _tl90079522_)
                                              (if (fx>= (gx#stx-length
                                                         _tl90079522_)
                                                        '0)
                                                  (let ((_g12856_
                                                         (gx#syntax-split-splice
                                                          _tl90079522_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12857_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g12856_)
                         (##vector-length _g12856_)
                         1)))
                (if (not (##fx= _g12857_ 2))
                    (error "Context expects 2 values" _g12857_)))
              (let ((_target90089525_ (##vector-ref _g12856_ 0))
                    (_tl90109527_ (##vector-ref _g12856_ 1)))
                (if (gx#stx-null? _tl90109527_)
                    (letrec ((_loop90119530_
                              (lambda (_hd90099533_ _body90159535_)
                                (if (gx#stx-pair? _hd90099533_)
                                    (let ((_e90129538_
                                           (gx#stx-e _hd90099533_)))
                                      (let ((_lp-hd90139541_
                                             (##car _e90129538_))
                                            (_lp-tl90149543_
                                             (##cdr _e90129538_)))
                                        (_loop90119530_
                                         _lp-tl90149543_
                                         (cons _lp-hd90139541_
                                               _body90159535_))))
                                    (let ((_body90169546_
                                           (reverse _body90159535_)))
                                      (if (gx#stx-null? _tl90019506_)
                                          ((lambda (_L9549_ _L9550_ _L9551_)
                                             (cons 'let
                                                   (cons (cons (cons _L9551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9550_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g95799582_ _g95809584_)
                             (cons _g95799582_ _g95809584_))
                           '()
                           _L9549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body90169546_
                                           _hd89979496_
                                           _hd89949488_)
                                          (_g89769456_ _g89809459_)))))))
                      (_loop90119530_ _target90089525_ '()))
                    (_g89769456_ _g89809459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769456_ _g89809459_))
                                              (_g89769456_ _g89809459_))
                                          (_g89769456_ _g89809459_))))
                                  (_g89769456_ _g89809459_))
                              (_g89769456_ _g89809459_))
                          (_g89769456_ _g89809459_))))
                  (_g89769456_ _g89809459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769456_ _g89809459_))
                                              (_g89769456_ _g89809459_))
                                          (_g89769456_ _g89809459_))))
                                  (_g89769456_ _g89809459_))))
                          (_g89769456_ _g89809459_))))
                  (_g89769456_ _g89809459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g89769456_ _g89809459_))
                                              (_g89769456_ _g89809459_))
                                          (_g89769456_ _g89809459_))))
                                  (_g89769456_ _g89809459_)))))
                      (_g89759587_ _code8974_))))
                 (_generate-values8673_
                  (lambda (_hd8787_ _body8788_)
                    (let _lp8790_ ((_rest8792_ _hd8787_)
                                   (_bind8793_ '())
                                   (_check8794_ '())
                                   (_post8795_ '()))
                      (let* ((_g87988809_
                              (lambda (_g87998806_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g87998806_)))
                             (_g87978823_
                              (lambda (_g87998812_)
                                ((lambda ()
                                   (let* ((_body8816_
                                           (if _compiled-body?8669_
                                               _body8788_
                                               (gxc#compile-e _body8788_)))
                                          (_body8818_
                                           (_generate-values-post8674_
                                            _post8795_
                                            _body8816_))
                                          (_body8820_
                                           (_generate-values-check8675_
                                            _check8794_
                                            _body8818_)))
                                     (cons 'let
                                           (cons (reverse _bind8793_)
                                                 (cons _body8820_ '()))))))))
                             (_g87968971_
                              (lambda (_g87998826_)
                                (if (gx#stx-pair? _g87998826_)
                                    (let ((_e88028828_ (gx#stx-e _g87998826_)))
                                      (let ((_hd88038831_ (##car _e88028828_))
                                            (_tl88048833_ (##cdr _e88028828_)))
                                        ((lambda (_L8836_ _L8837_)
                                           (let* ((_g88528877_
                                                   (lambda (_g88538874_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g88538874_)))
                                                  (_g88518921_
                                                   (lambda (_g88538880_)
                                                     (if (gx#stx-pair?
                                                          _g88538880_)
                                                         (let ((_e88678882_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88538880_)))
                   (let ((_hd88688885_ (##car _e88678882_))
                         (_tl88698887_ (##cdr _e88678882_)))
                     (if (gx#stx-pair? _tl88698887_)
                         (let ((_e88708890_ (gx#stx-e _tl88698887_)))
                           (let ((_hd88718893_ (##car _e88708890_))
                                 (_tl88728895_ (##cdr _e88708890_)))
                             (if (gx#stx-null? _tl88728895_)
                                 ((lambda (_L8898_ _L8899_)
                                    (let* ((_vals8912_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8914_
                                            (gxc#generate-runtime-check-values
                                             _vals8912_
                                             _L8899_
                                             _L8898_))
                                           (_refs8916_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8912_
                                             _L8899_))
                                           (_expr8918_
                                            (gxc#compile-e _L8898_)))
                                      (_lp8790_
                                       _L8836_
                                       (cons (cons _vals8912_
                                                   (cons _expr8918_ '()))
                                             _bind8793_)
                                       (cons _check-values8914_ _check8794_)
                                       (cons _refs8916_ _post8795_))))
                                  _hd88718893_
                                  _hd88688885_)
                                 (_g88528877_ _g88538880_))))
                         (_g88528877_ _g88538880_))))
                 (_g88528877_ _g88538880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88508968_
                                                   (lambda (_g88538924_)
                                                     (if (gx#stx-pair?
                                                          _g88538924_)
                                                         (let ((_e88568926_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g88538924_)))
                   (let ((_hd88578929_ (##car _e88568926_))
                         (_tl88588931_ (##cdr _e88568926_)))
                     (if (gx#stx-pair? _hd88578929_)
                         (let ((_e88598934_ (gx#stx-e _hd88578929_)))
                           (let ((_hd88608937_ (##car _e88598934_))
                                 (_tl88618939_ (##cdr _e88598934_)))
                             (if (gx#stx-null? _tl88618939_)
                                 (if (gx#stx-pair? _tl88588931_)
                                     (let ((_e88628942_
                                            (gx#stx-e _tl88588931_)))
                                       (let ((_hd88638945_ (##car _e88628942_))
                                             (_tl88648947_
                                              (##cdr _e88628942_)))
                                         (if (gx#stx-null? _tl88648947_)
                                             ((lambda (_L8950_ _L8951_)
                                                (let ((_eid8965_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8951_))
                                                      (_expr8966_
                                                       (gxc#compile-e
                                                        _L8950_)))
                                                  (_lp8790_
                                                   _L8836_
                                                   (cons (cons _eid8965_
                                                               (cons _expr8966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8793_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8794_
                                                   _post8795_)))
                                              _hd88638945_
                                              _hd88608937_)
                                             (_g88518921_ _g88538924_))))
                                     (_g88518921_ _g88538924_))
                                 (_g88518921_ _g88538924_))))
                         (_g88518921_ _g88538924_))))
                 (_g88518921_ _g88538924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g88508968_ _L8837_)))
                                         _tl88048833_
                                         _hd88038831_)))
                                    (_g87978823_ _g87998826_)))))
                        (_g87968971_ _rest8792_)))))
                 (_generate-values-post8674_
                  (lambda (_post8746_ _body8747_)
                    (let _lp8749_ ((_rest8751_ _post8746_)
                                   (_body8752_ _body8747_))
                      (let* ((_rest87538761_ _rest8751_)
                             (_E87568765_
                              (lambda ()
                                (error '"No clause matching" _rest87538761_)))
                             (_else87558769_ (lambda () _body8752_))
                             (_K87578775_
                              (lambda (_rest8772_ _bind8773_)
                                (_lp8749_
                                 _rest8772_
                                 (cons 'let
                                       (cons _bind8773_
                                             (cons _body8752_ '())))))))
                        (if (##pair? _rest87538761_)
                            (let ((_hd87588778_ (##car _rest87538761_))
                                  (_tl87598780_ (##cdr _rest87538761_)))
                              (let* ((_bind8783_ _hd87588778_)
                                     (_rest8785_ _tl87598780_))
                                (_K87578775_ _rest8785_ _bind8783_)))
                            (_else87558769_))))))
                 (_generate-values-check8675_
                  (lambda (_check8743_ _body8744_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8744_ '())
                                  (reverse _check8743_))))))
          (let* ((_g86778694_
                  (lambda (_g86788691_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86788691_)))
                 (_g86768740_
                  (lambda (_g86788697_)
                    (if (gx#stx-pair? _g86788697_)
                        (let ((_e86818699_ (gx#stx-e _g86788697_)))
                          (let ((_hd86828702_ (##car _e86818699_))
                                (_tl86838704_ (##cdr _e86818699_)))
                            (if (gx#stx-pair? _tl86838704_)
                                (let ((_e86848707_ (gx#stx-e _tl86838704_)))
                                  (let ((_hd86858710_ (##car _e86848707_))
                                        (_tl86868712_ (##cdr _e86848707_)))
                                    (if (gx#stx-pair? _tl86868712_)
                                        (let ((_e86878715_
                                               (gx#stx-e _tl86868712_)))
                                          (let ((_hd86888718_
                                                 (##car _e86878715_))
                                                (_tl86898720_
                                                 (##cdr _e86878715_)))
                                            (if (gx#stx-null? _tl86898720_)
                                                ((lambda (_L8723_ _L8724_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8724_)
                                                       (_generate-simple8671_
                                                        _L8724_
                                                        _L8723_)
                                                       (_generate-values8673_
                                                        _L8724_
                                                        _L8723_)))
                                                 _hd86888718_
                                                 _hd86858710_)
                                                (_g86778694_ _g86788697_))))
                                        (_g86778694_ _g86788697_))))
                                (_g86778694_ _g86788697_))))
                        (_g86778694_ _g86788697_)))))
            (_g86768740_ _stx8668_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9596_)
          (let ((_compiled-body?9598_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9596_
             _compiled-body?9598_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12859_
          (let ((_g12858_ (length _g12859_)))
            (cond ((##fx= _g12858_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12859_))
                  ((##fx= _g12858_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12859_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12859_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8567_ _hd8568_)
      (let _lp8570_ ((_rest8572_ _hd8568_) (_k8573_ '0) (_r8574_ '()))
        (let* ((_g85798595_
                (lambda (_g85808592_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85808592_)))
               (_g85788602_
                (lambda (_g85808598_) ((lambda () (reverse _r8574_)))))
               (_g85778618_
                (lambda (_g85808605_)
                  ((lambda (_L8607_)
                     (if (gx#identifier? _L8607_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L8607_)
                                             (cons (gxc#generate-runtime-values->list
                                                    _vals8567_
                                                    _k8573_)
                                                   '()))
                                       '())
                                 _r8574_)
                         (_g85788602_ _g85808605_)))
                   _g85808605_)))
               (_g85768642_
                (lambda (_g85808621_)
                  (if (gx#stx-pair? _g85808621_)
                      (let ((_e85878623_ (gx#stx-e _g85808621_)))
                        (let ((_hd85888626_ (##car _e85878623_))
                              (_tl85898628_ (##cdr _e85878623_)))
                          ((lambda (_L8631_ _L8632_)
                             (_lp8570_
                              _L8631_
                              (fx+ _k8573_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L8632_)
                                          (cons (gxc#generate-runtime-values-ref
                                                 _vals8567_
                                                 _k8573_
                                                 _L8631_)
                                                '()))
                                    _r8574_)))
                           _tl85898628_
                           _hd85888626_)))
                      (_g85778618_ _g85808621_))))
               (_g85758664_
                (lambda (_g85808645_)
                  (if (gx#stx-pair? _g85808645_)
                      (let ((_e85828647_ (gx#stx-e _g85808645_)))
                        (let ((_hd85838650_ (##car _e85828647_))
                              (_tl85848652_ (##cdr _e85828647_)))
                          (if (gx#stx-datum? _hd85838650_)
                              (if (equal? (gx#stx-e _hd85838650_) '#f)
                                  ((lambda (_L8655_)
                                     (_lp8570_
                                      _L8655_
                                      (fx+ _k8573_ '1)
                                      _r8574_))
                                   _tl85848652_)
                                  (_g85768642_ _g85808645_))
                              (_g85768642_ _g85808645_))))
                      (_g85768642_ _g85808645_)))))
          (_g85758664_ _rest8572_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8247_ _compiled-body?8248_)
        (letrec ((_generate-simple8250_
                  (lambda (_hd8554_ _body8555_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8554_
                     _body8555_
                     _compiled-body?8248_)))
                 (_generate-values8251_
                  (lambda (_hd8331_ _body8332_)
                    (let _lp8334_ ((_rest8336_ _hd8331_)
                                   (_bind8337_ '())
                                   (_check8338_ '())
                                   (_post8339_ '()))
                      (let* ((_g83428353_
                              (lambda (_g83438350_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g83438350_)))
                             (_g83418367_
                              (lambda (_g83438356_)
                                ((lambda ()
                                   (let* ((_body8360_
                                           (if _compiled-body?8248_
                                               _body8332_
                                               (gxc#compile-e _body8332_)))
                                          (_body8362_
                                           (_generate-values-post8253_
                                            _post8339_
                                            _body8360_))
                                          (_body8364_
                                           (_generate-values-check8252_
                                            _check8338_
                                            _body8362_)))
                                     (cons 'letrec
                                           (cons (reverse _bind8337_)
                                                 (cons _body8364_ '()))))))))
                             (_g83408551_
                              (lambda (_g83438370_)
                                (if (gx#stx-pair? _g83438370_)
                                    (let ((_e83468372_ (gx#stx-e _g83438370_)))
                                      (let ((_hd83478375_ (##car _e83468372_))
                                            (_tl83488377_ (##cdr _e83468372_)))
                                        ((lambda (_L8380_ _L8381_)
                                           (let* ((_g83968421_
                                                   (lambda (_g83978418_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g83978418_)))
                                                  (_g83958501_
                                                   (lambda (_g83978424_)
                                                     (if (gx#stx-pair?
                                                          _g83978424_)
                                                         (let ((_e84118426_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83978424_)))
                   (let ((_hd84128429_ (##car _e84118426_))
                         (_tl84138431_ (##cdr _e84118426_)))
                     (if (gx#stx-pair? _tl84138431_)
                         (let ((_e84148434_ (gx#stx-e _tl84138431_)))
                           (let ((_hd84158437_ (##car _e84148434_))
                                 (_tl84168439_ (##cdr _e84148434_)))
                             (if (gx#stx-null? _tl84168439_)
                                 ((lambda (_L8442_ _L8443_)
                                    (let* ((_vals8456_
                                            (gxc#generate-runtime-temporary__0))
                                           (_check-values8458_
                                            (gxc#generate-runtime-check-values
                                             _vals8456_
                                             _L8443_
                                             _L8442_))
                                           (_refs8460_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8456_
                                             _L8443_))
                                           (_expr8462_
                                            (gxc#compile-e _L8442_)))
                                      (_lp8334_
                                       _L8380_
                                       (foldl1 cons
                                               (cons (cons _vals8456_
                                                           (cons _expr8462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8337_)
                                               (map (lambda (_e84648466_)
                                                      (let* ((_g84688477_
                                                              _e84648466_)
                                                             (_E84708481_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g84688477_)))
                     (_K84718486_
                      (lambda (_eid8484_)
                        (cons _eid8484_ (cons '#!void '())))))
                (if (##pair? _g84688477_)
                    (let ((_hd84728489_ (##car _g84688477_))
                          (_tl84738491_ (##cdr _g84688477_)))
                      (let ((_eid8494_ _hd84728489_))
                        (if (##pair? _tl84738491_)
                            (let ((_hd84748496_ (##car _tl84738491_))
                                  (_tl84758498_ (##cdr _tl84738491_)))
                              (if (##null? _tl84758498_)
                                  (_K84718486_ _eid8494_)
                                  (_E84708481_)))
                            (_E84708481_))))
                    (_E84708481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8460_))
                                       (cons _check-values8458_ _check8338_)
                                       (foldl1 cons _refs8460_ _post8339_))))
                                  _hd84158437_
                                  _hd84128429_)
                                 (_g83968421_ _g83978424_))))
                         (_g83968421_ _g83978424_))))
                 (_g83968421_ _g83978424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83948548_
                                                   (lambda (_g83978504_)
                                                     (if (gx#stx-pair?
                                                          _g83978504_)
                                                         (let ((_e84008506_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83978504_)))
                   (let ((_hd84018509_ (##car _e84008506_))
                         (_tl84028511_ (##cdr _e84008506_)))
                     (if (gx#stx-pair? _hd84018509_)
                         (let ((_e84038514_ (gx#stx-e _hd84018509_)))
                           (let ((_hd84048517_ (##car _e84038514_))
                                 (_tl84058519_ (##cdr _e84038514_)))
                             (if (gx#stx-null? _tl84058519_)
                                 (if (gx#stx-pair? _tl84028511_)
                                     (let ((_e84068522_
                                            (gx#stx-e _tl84028511_)))
                                       (let ((_hd84078525_ (##car _e84068522_))
                                             (_tl84088527_
                                              (##cdr _e84068522_)))
                                         (if (gx#stx-null? _tl84088527_)
                                             ((lambda (_L8530_ _L8531_)
                                                (let ((_eid8545_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8531_))
                                                      (_expr8546_
                                                       (gxc#compile-e
                                                        _L8530_)))
                                                  (_lp8334_
                                                   _L8380_
                                                   (cons (cons _eid8545_
                                                               (cons _expr8546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8337_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8338_
                                                   _post8339_)))
                                              _hd84078525_
                                              _hd84048517_)
                                             (_g83958501_ _g83978504_))))
                                     (_g83958501_ _g83978504_))
                                 (_g83958501_ _g83978504_))))
                         (_g83958501_ _g83978504_))))
                 (_g83958501_ _g83978504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83948548_ _L8381_)))
                                         _tl83488377_
                                         _hd83478375_)))
                                    (_g83418367_ _g83438370_)))))
                        (_g83408551_ _rest8336_)))))
                 (_generate-values-check8252_
                  (lambda (_check8328_ _body8329_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8329_ '())
                                  (reverse _check8328_)))))
                 (_generate-values-post8253_
                  (lambda (_post8321_ _body8322_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8322_ '())
                                  (map (lambda (_g83238325_)
                                         (cons 'set! _g83238325_))
                                       (reverse _post8321_)))))))
          (let* ((_g82558272_
                  (lambda (_g82568269_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g82568269_)))
                 (_g82548318_
                  (lambda (_g82568275_)
                    (if (gx#stx-pair? _g82568275_)
                        (let ((_e82598277_ (gx#stx-e _g82568275_)))
                          (let ((_hd82608280_ (##car _e82598277_))
                                (_tl82618282_ (##cdr _e82598277_)))
                            (if (gx#stx-pair? _tl82618282_)
                                (let ((_e82628285_ (gx#stx-e _tl82618282_)))
                                  (let ((_hd82638288_ (##car _e82628285_))
                                        (_tl82648290_ (##cdr _e82628285_)))
                                    (if (gx#stx-pair? _tl82648290_)
                                        (let ((_e82658293_
                                               (gx#stx-e _tl82648290_)))
                                          (let ((_hd82668296_
                                                 (##car _e82658293_))
                                                (_tl82678298_
                                                 (##cdr _e82658293_)))
                                            (if (gx#stx-null? _tl82678298_)
                                                ((lambda (_L8301_ _L8302_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8302_)
                                                       (_generate-simple8250_
                                                        _L8302_
                                                        _L8301_)
                                                       (_generate-values8251_
                                                        _L8302_
                                                        _L8301_)))
                                                 _hd82668296_
                                                 _hd82638288_)
                                                (_g82558272_ _g82568275_))))
                                        (_g82558272_ _g82568275_))))
                                (_g82558272_ _g82568275_))))
                        (_g82558272_ _g82568275_)))))
            (_g82548318_ _stx8247_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8560_)
          (let ((_compiled-body?8562_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8560_
             _compiled-body?8562_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12861_
          (let ((_g12860_ (length _g12861_)))
            (cond ((##fx= _g12860_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12861_))
                  ((##fx= _g12860_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12861_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12861_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7829_)
      (letrec ((_generate-values7831_
                (lambda (_hd8074_ _body8075_)
                  (let _lp8077_ ((_rest8079_ _hd8074_) (_bind8080_ '()))
                    (let* ((_rest80818089_ _rest8079_)
                           (_E80848093_
                            (lambda ()
                              (error '"No clause matching" _rest80818089_)))
                           (_else80838100_
                            (lambda ()
                              (let ((_bind8097_ (reverse _bind8080_))
                                    (_body8098_ (gxc#compile-e _body8075_)))
                                (cons 'letrec*
                                      (cons _bind8097_
                                            (cons _body8098_ '()))))))
                           (_K80858234_
                            (lambda (_rest8103_ _hd-bind8104_)
                              (let* ((_g81078132_
                                      (lambda (_g81088129_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g81088129_)))
                                     (_g81068184_
                                      (lambda (_g81088135_)
                                        (if (gx#stx-pair? _g81088135_)
                                            (let ((_e81228137_
                                                   (gx#stx-e _g81088135_)))
                                              (let ((_hd81238140_
                                                     (##car _e81228137_))
                                                    (_tl81248142_
                                                     (##cdr _e81228137_)))
                                                (if (gx#stx-pair? _tl81248142_)
                                                    (let ((_e81258145_
                                                           (gx#stx-e
                                                            _tl81248142_)))
                                                      (let ((_hd81268148_
                                                             (##car _e81258145_))
                                                            (_tl81278150_
                                                             (##cdr _e81258145_)))
                                                        (if (gx#stx-null?
                                                             _tl81278150_)
                                                            ((lambda (_L8153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8154_)
                       (let* ((_vals8173_ (gxc#generate-runtime-temporary__0))
                              (_tmp8175_ (gxc#generate-runtime-temporary__0))
                              (_check-values8177_
                               (gxc#generate-runtime-check-values
                                _tmp8175_
                                _L8154_
                                _L8153_))
                              (_refs8179_
                               (gxc#generate-runtime-let-values-bind
                                _vals8173_
                                _L8154_))
                              (_expr8181_ (gxc#compile-e _L8153_)))
                         (_lp8077_
                          _rest8103_
                          (foldl1 cons
                                  (cons (cons _vals8173_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp8175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr8181_ '()))
                              '())
                        (cons _check-values8177_ (cons _tmp8175_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind8080_)
                                  _refs8179_))))
                     _hd81268148_
                     _hd81238140_)
                    (_g81078132_ _g81088135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81078132_
                                                     _g81088135_))))
                                            (_g81078132_ _g81088135_))))
                                     (_g81058231_
                                      (lambda (_g81088187_)
                                        (if (gx#stx-pair? _g81088187_)
                                            (let ((_e81118189_
                                                   (gx#stx-e _g81088187_)))
                                              (let ((_hd81128192_
                                                     (##car _e81118189_))
                                                    (_tl81138194_
                                                     (##cdr _e81118189_)))
                                                (if (gx#stx-pair? _hd81128192_)
                                                    (let ((_e81148197_
                                                           (gx#stx-e
                                                            _hd81128192_)))
                                                      (let ((_hd81158200_
                                                             (##car _e81148197_))
                                                            (_tl81168202_
                                                             (##cdr _e81148197_)))
                                                        (if (gx#stx-null?
                                                             _tl81168202_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81138194_)
                        (let ((_e81178205_ (gx#stx-e _tl81138194_)))
                          (let ((_hd81188208_ (##car _e81178205_))
                                (_tl81198210_ (##cdr _e81178205_)))
                            (if (gx#stx-null? _tl81198210_)
                                ((lambda (_L8213_ _L8214_)
                                   (let ((_eid8228_
                                          (gxc#generate-runtime-binding-id*
                                           _L8214_))
                                         (_expr8229_ (gxc#compile-e _L8213_)))
                                     (_lp8077_
                                      _rest8103_
                                      (cons (cons _eid8228_
                                                  (cons _expr8229_ '()))
                                            _bind8080_))))
                                 _hd81188208_
                                 _hd81158200_)
                                (_g81068184_ _g81088187_))))
                        (_g81068184_ _g81088187_))
                    (_g81068184_ _g81088187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81068184_
                                                     _g81088187_))))
                                            (_g81068184_ _g81088187_)))))
                                (_g81058231_ _hd-bind8104_)))))
                      (if (##pair? _rest80818089_)
                          (let ((_hd80868237_ (##car _rest80818089_))
                                (_tl80878239_ (##cdr _rest80818089_)))
                            (let* ((_hd-bind8242_ _hd80868237_)
                                   (_rest8244_ _tl80878239_))
                              (_K80858234_ _rest8244_ _hd-bind8242_)))
                          (_else80838100_))))))
               (_generate-letrec?7832_
                (lambda (_hd7964_)
                  (let _lp7966_ ((_rest7968_ _hd7964_))
                    (let* ((_rest79697977_ _rest7968_)
                           (_E79727981_
                            (lambda ()
                              (error '"No clause matching" _rest79697977_)))
                           (_else79717985_ (lambda () '#t))
                           (_K79738062_
                            (lambda (_rest7988_ _hd-bind7989_)
                              (let* ((_g79918008_
                                      (lambda (_g79928005_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g79928005_)))
                                     (_g79908059_
                                      (lambda (_g79928011_)
                                        (if (gx#stx-pair? _g79928011_)
                                            (let ((_e79958013_
                                                   (gx#stx-e _g79928011_)))
                                              (let ((_hd79968016_
                                                     (##car _e79958013_))
                                                    (_tl79978018_
                                                     (##cdr _e79958013_)))
                                                (if (gx#stx-pair? _hd79968016_)
                                                    (let ((_e79988021_
                                                           (gx#stx-e
                                                            _hd79968016_)))
                                                      (let ((_hd79998024_
                                                             (##car _e79988021_))
                                                            (_tl80008026_
                                                             (##cdr _e79988021_)))
                                                        (if (gx#stx-null?
                                                             _tl80008026_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79978018_)
                        (let ((_e80018029_ (gx#stx-e _tl79978018_)))
                          (let ((_hd80028032_ (##car _e80018029_))
                                (_tl80038034_ (##cdr _e80018029_)))
                            (if (gx#stx-null? _tl80038034_)
                                ((lambda (_L8037_ _L8038_)
                                   (if (_is-lambda-expr?7833_ _L8037_)
                                       (_lp7966_ _rest7988_)
                                       '#f))
                                 _hd80028032_
                                 _hd79998024_)
                                (_g79918008_ _g79928011_))))
                        (_g79918008_ _g79928011_))
                    (_g79918008_ _g79928011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79918008_
                                                     _g79928011_))))
                                            (_g79918008_ _g79928011_)))))
                                (_g79908059_ _hd-bind7989_)))))
                      (if (##pair? _rest79697977_)
                          (let ((_hd79748065_ (##car _rest79697977_))
                                (_tl79758067_ (##cdr _rest79697977_)))
                            (let* ((_hd-bind8070_ _hd79748065_)
                                   (_rest8072_ _tl79758067_))
                              (_K79738062_ _rest8072_ _hd-bind8070_)))
                          (_else79717985_))))))
               (_is-lambda-expr?7833_
                (lambda (_expr7901_)
                  (let* ((_g79047918_
                          (lambda (_g79057915_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g79057915_)))
                         (_g79037925_ (lambda (_g79057921_) ((lambda () '#f))))
                         (_g79027961_
                          (lambda (_g79057928_)
                            (if (gx#stx-pair? _g79057928_)
                                (let ((_e79087930_ (gx#stx-e _g79057928_)))
                                  (let ((_hd79097933_ (##car _e79087930_))
                                        (_tl79107935_ (##cdr _e79087930_)))
                                    (if (gx#identifier? _hd79097933_)
                                        (if (gx#stx-eq? '%#lambda _hd79097933_)
                                            (if (gx#stx-pair? _tl79107935_)
                                                (let ((_e79117938_
                                                       (gx#stx-e
                                                        _tl79107935_)))
                                                  (let ((_hd79127941_
                                                         (##car _e79117938_))
                                                        (_tl79137943_
                                                         (##cdr _e79117938_)))
                                                    ((lambda (_L7946_ _L7947_)
                                                       '#t)
                                                     _tl79137943_
                                                     _hd79127941_)))
                                                (_g79037925_ _g79057928_))
                                            (_g79037925_ _g79057928_))
                                        (_g79037925_ _g79057928_))))
                                (_g79037925_ _g79057928_)))))
                    (_g79027961_ _expr7901_)))))
        (let* ((_g78357852_
                (lambda (_g78367849_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78367849_)))
               (_g78347898_
                (lambda (_g78367855_)
                  (if (gx#stx-pair? _g78367855_)
                      (let ((_e78397857_ (gx#stx-e _g78367855_)))
                        (let ((_hd78407860_ (##car _e78397857_))
                              (_tl78417862_ (##cdr _e78397857_)))
                          (if (gx#stx-pair? _tl78417862_)
                              (let ((_e78427865_ (gx#stx-e _tl78417862_)))
                                (let ((_hd78437868_ (##car _e78427865_))
                                      (_tl78447870_ (##cdr _e78427865_)))
                                  (if (gx#stx-pair? _tl78447870_)
                                      (let ((_e78457873_
                                             (gx#stx-e _tl78447870_)))
                                        (let ((_hd78467876_
                                               (##car _e78457873_))
                                              (_tl78477878_
                                               (##cdr _e78457873_)))
                                          (if (gx#stx-null? _tl78477878_)
                                              ((lambda (_L7881_ _L7882_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7882_)
                                                     (if (_generate-letrec?7832_
                                                          _L7882_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7882_
                                                          _L7881_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7882_
                                                          _L7881_
                                                          '#f))
                                                     (_generate-values7831_
                                                      _L7882_
                                                      _L7881_)))
                                               _hd78467876_
                                               _hd78437868_)
                                              (_g78357852_ _g78367855_))))
                                      (_g78357852_ _g78367855_))))
                              (_g78357852_ _g78367855_))))
                      (_g78357852_ _g78367855_)))))
          (_g78347898_ _stx7829_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7722_)
      (let _lp7724_ ((_rest7726_ _hd7722_))
        (let* ((_g77307751_
                (lambda (_g77317748_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g77317748_)))
               (_g77297758_ (lambda (_g77317754_) ((lambda () '#f))))
               (_g77287765_
                (lambda (_g77317761_)
                  (if (gx#stx-null? _g77317761_)
                      ((lambda () '#t))
                      (_g77297758_ _g77317761_))))
               (_g77277826_
                (lambda (_g77317768_)
                  (if (gx#stx-pair? _g77317768_)
                      (let ((_e77357770_ (gx#stx-e _g77317768_)))
                        (let ((_hd77367773_ (##car _e77357770_))
                              (_tl77377775_ (##cdr _e77357770_)))
                          (if (gx#stx-pair? _hd77367773_)
                              (let ((_e77387778_ (gx#stx-e _hd77367773_)))
                                (let ((_hd77397781_ (##car _e77387778_))
                                      (_tl77407783_ (##cdr _e77387778_)))
                                  (if (gx#stx-pair? _hd77397781_)
                                      (let ((_e77417786_
                                             (gx#stx-e _hd77397781_)))
                                        (let ((_hd77427789_
                                               (##car _e77417786_))
                                              (_tl77437791_
                                               (##cdr _e77417786_)))
                                          (if (gx#stx-null? _tl77437791_)
                                              (if (gx#stx-pair? _tl77407783_)
                                                  (let ((_e77447794_
                                                         (gx#stx-e
                                                          _tl77407783_)))
                                                    (let ((_hd77457797_
                                                           (##car _e77447794_))
                                                          (_tl77467799_
                                                           (##cdr _e77447794_)))
                                                      (if (gx#stx-null?
                                                           _tl77467799_)
                                                          ((lambda (_L7802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7803_
                            _L7804_)
                     (_lp7724_ _L7802_))
                   _tl77377775_
                   _hd77457797_
                   _hd77427789_)
                  (_g77287765_ _g77317768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77287765_ _g77317768_))
                                              (_g77287765_ _g77317768_))))
                                      (_g77287765_ _g77317768_))))
                              (_g77287765_ _g77317768_))))
                      (_g77287765_ _g77317768_)))))
          (_g77277826_ _rest7726_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7646_ _hd7647_ _body7648_ _compiled-body?7649_)
      (letrec ((_generate17651_
                (lambda (_bind7653_)
                  (let* ((_g76557672_
                          (lambda (_g76567669_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g76567669_)))
                         (_g76547719_
                          (lambda (_g76567675_)
                            (if (gx#stx-pair? _g76567675_)
                                (let ((_e76597677_ (gx#stx-e _g76567675_)))
                                  (let ((_hd76607680_ (##car _e76597677_))
                                        (_tl76617682_ (##cdr _e76597677_)))
                                    (if (gx#stx-pair? _hd76607680_)
                                        (let ((_e76627685_
                                               (gx#stx-e _hd76607680_)))
                                          (let ((_hd76637688_
                                                 (##car _e76627685_))
                                                (_tl76647690_
                                                 (##cdr _e76627685_)))
                                            (if (gx#stx-null? _tl76647690_)
                                                (if (gx#stx-pair? _tl76617682_)
                                                    (let ((_e76657693_
                                                           (gx#stx-e
                                                            _tl76617682_)))
                                                      (let ((_hd76667696_
                                                             (##car _e76657693_))
                                                            (_tl76677698_
                                                             (##cdr _e76657693_)))
                                                        (if (gx#stx-null?
                                                             _tl76677698_)
                                                            ((lambda (_L7701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7702_)
                       (cons (gxc#generate-runtime-binding-id* _L7702_)
                             (cons (gxc#compile-e _L7701_) '())))
                     _hd76667696_
                     _hd76637688_)
                    (_g76557672_ _g76567675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g76557672_ _g76567675_))
                                                (_g76557672_ _g76567675_))))
                                        (_g76557672_ _g76567675_))))
                                (_g76557672_ _g76567675_)))))
                    (_g76547719_ _bind7653_)))))
        (cons _form7646_
              (cons (map _generate17651_ _hd7647_)
                    (cons (if _compiled-body?7649_
                              _body7648_
                              (gxc#compile-e _body7648_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7554_)
      (letrec ((_generate17556_
                (lambda (_datum7608_)
                  (if (let ((_$e7610_ (null? _datum7608_)))
                        (if _$e7610_
                            _$e7610_
                            (let ((_$e7613_ (interned-symbol? _datum7608_)))
                              (if _$e7613_
                                  _$e7613_
                                  (let ((_$e7616_
                                         (gx#self-quoting? _datum7608_)))
                                    (if _$e7616_
                                        _$e7616_
                                        (eof-object? _datum7608_)))))))
                      _datum7608_
                      (if (uninterned-symbol? _datum7608_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7608_
                           '#t)
                          (if (pair? _datum7608_)
                              (cons (_generate17556_ (car _datum7608_))
                                    (_generate17556_ (cdr _datum7608_)))
                              (if (box? _datum7608_)
                                  (box (_generate17556_ (unbox _datum7608_)))
                                  (if (vector? _datum7608_)
                                      (vector-map _generate17556_ _datum7608_)
                                      (if (let ((_$e7619_
                                                 (s8vector? _datum7608_)))
                                            (if _$e7619_
                                                _$e7619_
                                                (let ((_$e7622_
                                                       (u8vector?
                                                        _datum7608_)))
                                                  (if _$e7622_
                                                      _$e7622_
                                                      (let ((_$e7625_
                                                             (s16vector?
                                                              _datum7608_)))
                                                        (if _$e7625_
                                                            _$e7625_
                                                            (let ((_$e7628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7608_)))
                      (if _$e7628_
                          _$e7628_
                          (let ((_$e7631_ (s32vector? _datum7608_)))
                            (if _$e7631_
                                _$e7631_
                                (let ((_$e7634_ (u32vector? _datum7608_)))
                                  (if _$e7634_
                                      _$e7634_
                                      (let ((_$e7637_
                                             (s64vector? _datum7608_)))
                                        (if _$e7637_
                                            _$e7637_
                                            (let ((_$e7640_
                                                   (u64vector? _datum7608_)))
                                              (if _$e7640_
                                                  _$e7640_
                                                  (let ((_$e7643_
                                                         (f32vector?
                                                          _datum7608_)))
                                                    (if _$e7643_
                                                        _$e7643_
                                                        (f64vector?
                                                         _datum7608_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7608_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7554_))))))))))
        (let* ((_g75587571_
                (lambda (_g75597568_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75597568_)))
               (_g75577605_
                (lambda (_g75597574_)
                  (if (gx#stx-pair? _g75597574_)
                      (let ((_e75617576_ (gx#stx-e _g75597574_)))
                        (let ((_hd75627579_ (##car _e75617576_))
                              (_tl75637581_ (##cdr _e75617576_)))
                          (if (gx#stx-pair? _tl75637581_)
                              (let ((_e75647584_ (gx#stx-e _tl75637581_)))
                                (let ((_hd75657587_ (##car _e75647584_))
                                      (_tl75667589_ (##cdr _e75647584_)))
                                  (if (gx#stx-null? _tl75667589_)
                                      ((lambda (_L7592_)
                                         (cons 'quote
                                               (cons (_generate17556_
                                                      (gx#stx-e _L7592_))
                                                     '())))
                                       _hd75657587_)
                                      (_g75587571_ _g75597574_))))
                              (_g75587571_ _g75597574_))))
                      (_g75587571_ _g75597574_)))))
          (_g75577605_ _stx7554_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7247_)
      (let* ((_g72497263_
              (lambda (_g72507260_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72507260_)))
             (_g72487551_
              (lambda (_g72507266_)
                (if (gx#stx-pair? _g72507266_)
                    (let ((_e72537268_ (gx#stx-e _g72507266_)))
                      (let ((_hd72547271_ (##car _e72537268_))
                            (_tl72557273_ (##cdr _e72537268_)))
                        (if (gx#stx-pair? _tl72557273_)
                            (let ((_e72567276_ (gx#stx-e _tl72557273_)))
                              (let ((_hd72577279_ (##car _e72567276_))
                                    (_tl72587281_ (##cdr _e72567276_)))
                                ((lambda (_L7284_ _L7285_)
                                   (let ((_rator7298_ (gxc#compile-e _L7285_))
                                         (_rands7299_
                                          (map gxc#compile-e _L7284_)))
                                     (let* ((_g73027354_
                                             (lambda (_g73037351_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g73037351_)))
                                            (_g73017361_
                                             (lambda (_g73037357_)
                                               ((lambda ()
                                                  (cons _rator7298_
                                                        _rands7299_)))))
                                            (_g73007548_
                                             (lambda (_g73037364_)
                                               (if (gx#stx-pair? _g73037364_)
                                                   (let ((_e73087366_
                                                          (gx#stx-e
                                                           _g73037364_)))
                                                     (let ((_hd73097369_
                                                            (##car _e73087366_))
                                                           (_tl73107371_
                                                            (##cdr _e73087366_)))
                                                       (if (gx#identifier?
                                                            _hd73097369_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd73097369_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl73107371_)
                           (let ((_e73117374_ (gx#stx-e _tl73107371_)))
                             (let ((_hd73127377_ (##car _e73117374_))
                                   (_tl73137379_ (##cdr _e73117374_)))
                               (if (gx#stx-pair? _hd73127377_)
                                   (let ((_e73147382_ (gx#stx-e _hd73127377_)))
                                     (let ((_hd73157385_ (##car _e73147382_))
                                           (_tl73167387_ (##cdr _e73147382_)))
                                       (if (gx#stx-pair? _hd73157385_)
                                           (let ((_e73177390_
                                                  (gx#stx-e _hd73157385_)))
                                             (let ((_hd73187393_
                                                    (##car _e73177390_))
                                                   (_tl73197395_
                                                    (##cdr _e73177390_)))
                                               (if (gx#stx-pair? _tl73197395_)
                                                   (let ((_e73207398_
                                                          (gx#stx-e
                                                           _tl73197395_)))
                                                     (let ((_hd73217401_
                                                            (##car _e73207398_))
                                                           (_tl73227403_
                                                            (##cdr _e73207398_)))
                                                       (if (gx#stx-pair?
                                                            _hd73217401_)
                                                           (let ((_e73237406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd73217401_)))
                     (let ((_hd73247409_ (##car _e73237406_))
                           (_tl73257411_ (##cdr _e73237406_)))
                       (if (gx#identifier? _hd73247409_)
                           (if (gx#stx-eq? 'lambda _hd73247409_)
                               (if (gx#stx-pair? _tl73257411_)
                                   (let ((_e73267414_ (gx#stx-e _tl73257411_)))
                                     (let ((_hd73277417_ (##car _e73267414_))
                                           (_tl73287419_ (##cdr _e73267414_)))
                                       (if (gx#stx-pair/null? _hd73277417_)
                                           (if (fx>= (gx#stx-length
                                                      _hd73277417_)
                                                     '0)
                                               (let ((_g12862_
                                                      (gx#syntax-split-splice
                                                       _hd73277417_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12863_
                                                          (if (##values?
                                                               _g12862_)
                                                              (##vector-length
                                                               _g12862_)
                                                              1)))
                                                     (if (not (##fx= _g12863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g12863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target73297422_
                                                          (##vector-ref
                                                           _g12862_
                                                           0))
                                                         (_tl73317424_
                                                          (##vector-ref
                                                           _g12862_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl73317424_)
                                                         (letrec ((_loop73327427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd73307430_ _arg73367432_)
                             (if (gx#stx-pair? _hd73307430_)
                                 (let ((_e73337435_ (gx#stx-e _hd73307430_)))
                                   (let ((_lp-hd73347438_ (##car _e73337435_))
                                         (_lp-tl73357440_ (##cdr _e73337435_)))
                                     (_loop73327427_
                                      _lp-tl73357440_
                                      (cons _lp-hd73347438_ _arg73367432_))))
                                 (let ((_arg73377443_ (reverse _arg73367432_)))
                                   (if (gx#stx-pair/null? _tl73287419_)
                                       (if (fx>= (gx#stx-length _tl73287419_)
                                                 '0)
                                           (let ((_g12864_
                                                  (gx#syntax-split-splice
                                                   _tl73287419_
                                                   '0)))
                                             (begin
                                               (let ((_g12865_
                                                      (if (##values? _g12864_)
                                                          (##vector-length
                                                           _g12864_)
                                                          1)))
                                                 (if (not (##fx= _g12865_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12865_)))
                                               (let ((_target73387446_
                                                      (##vector-ref
                                                       _g12864_
                                                       0))
                                                     (_tl73407448_
                                                      (##vector-ref
                                                       _g12864_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl73407448_)
                                                     (letrec ((_loop73417451_
                                                               (lambda (_hd73397454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body73457456_)
                         (if (gx#stx-pair? _hd73397454_)
                             (let ((_e73427459_ (gx#stx-e _hd73397454_)))
                               (let ((_lp-hd73437462_ (##car _e73427459_))
                                     (_lp-tl73447464_ (##cdr _e73427459_)))
                                 (_loop73417451_
                                  _lp-tl73447464_
                                  (cons _lp-hd73437462_ _body73457456_))))
                             (let ((_body73467467_ (reverse _body73457456_)))
                               (if (gx#stx-null? _tl73227403_)
                                   (if (gx#stx-null? _tl73167387_)
                                       (if (gx#stx-pair? _tl73137379_)
                                           (let ((_e73477470_
                                                  (gx#stx-e _tl73137379_)))
                                             (let ((_hd73487473_
                                                    (##car _e73477470_))
                                                   (_tl73497475_
                                                    (##cdr _e73477470_)))
                                               (if (gx#stx-null? _tl73497475_)
                                                   ((lambda (_L7478_
                                                             _L7479_
                                                             _L7480_
                                                             _L7481_)
                                                      (if (eq? _L7481_ _L7478_)
                                                          (if (fx= (length _rands7299_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g75177520_ _g75187522_)
                                               (cons _g75177520_ _g75187522_))
                                             '()
                                             _L7480_))))
                      (let* ((_id7525_ _L7481_)
                             (_args7534_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75267529_ _g75277531_)
                                          (cons _g75267529_ _g75277531_))
                                        '()
                                        _L7480_)))
                             (_body7543_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g75357538_ _g75367540_)
                                          (cons _g75357538_ _g75367540_))
                                        '()
                                        _L7479_)))
                             (_init7545_ (map list _args7534_ _rands7299_)))
                        (cons 'let
                              (cons _id7525_ (cons _init7545_ _body7543_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx7247_))
                  (_g73017361_ _g73037364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73487473_
                                                    _body73467467_
                                                    _arg73377443_
                                                    _hd73187393_)
                                                   (_g73017361_ _g73037364_))))
                                           (_g73017361_ _g73037364_))
                                       (_g73017361_ _g73037364_))
                                   (_g73017361_ _g73037364_)))))))
               (_loop73417451_ _target73387446_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73017361_
                                                      _g73037364_)))))
                                           (_g73017361_ _g73037364_))
                                       (_g73017361_ _g73037364_)))))))
                   (_loop73327427_ _target73297422_ '()))
                 (_g73017361_ _g73037364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g73017361_ _g73037364_))
                                           (_g73017361_ _g73037364_))))
                                   (_g73017361_ _g73037364_))
                               (_g73017361_ _g73037364_))
                           (_g73017361_ _g73037364_))))
                   (_g73017361_ _g73037364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73017361_ _g73037364_))))
                                           (_g73017361_ _g73037364_))))
                                   (_g73017361_ _g73037364_))))
                           (_g73017361_ _g73037364_))
                       (_g73017361_ _g73037364_))
                   (_g73017361_ _g73037364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73017361_
                                                    _g73037364_)))))
                                       (_g73007548_ _rator7298_))))
                                 _tl72587281_
                                 _hd72577279_)))
                            (_g72497263_ _g72507266_))))
                    (_g72497263_ _g72507266_)))))
        (_g72487551_ _stx7247_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7209_)
      (let* ((_g72117221_
              (lambda (_g72127218_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72127218_)))
             (_g72107244_
              (lambda (_g72127224_)
                (if (gx#stx-pair? _g72127224_)
                    (let ((_e72147226_ (gx#stx-e _g72127224_)))
                      (let ((_hd72157229_ (##car _e72147226_))
                            (_tl72167231_ (##cdr _e72147226_)))
                        ((lambda (_L7234_)
                           (cons 'if (map gxc#compile-e _L7234_)))
                         _tl72167231_)))
                    (_g72117221_ _g72127224_)))))
        (_g72107244_ _stx7209_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7158_)
      (let* ((_g71607173_
              (lambda (_g71617170_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71617170_)))
             (_g71597206_
              (lambda (_g71617176_)
                (if (gx#stx-pair? _g71617176_)
                    (let ((_e71637178_ (gx#stx-e _g71617176_)))
                      (let ((_hd71647181_ (##car _e71637178_))
                            (_tl71657183_ (##cdr _e71637178_)))
                        (if (gx#stx-pair? _tl71657183_)
                            (let ((_e71667186_ (gx#stx-e _tl71657183_)))
                              (let ((_hd71677189_ (##car _e71667186_))
                                    (_tl71687191_ (##cdr _e71667186_)))
                                (if (gx#stx-null? _tl71687191_)
                                    ((lambda (_L7194_)
                                       (gxc#generate-runtime-binding-id
                                        _L7194_))
                                     _hd71677189_)
                                    (_g71607173_ _g71617176_))))
                            (_g71607173_ _g71617176_))))
                    (_g71607173_ _g71617176_)))))
        (_g71597206_ _stx7158_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7091_)
      (let* ((_g70937110_
              (lambda (_g70947107_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70947107_)))
             (_g70927155_
              (lambda (_g70947113_)
                (if (gx#stx-pair? _g70947113_)
                    (let ((_e70977115_ (gx#stx-e _g70947113_)))
                      (let ((_hd70987118_ (##car _e70977115_))
                            (_tl70997120_ (##cdr _e70977115_)))
                        (if (gx#stx-pair? _tl70997120_)
                            (let ((_e71007123_ (gx#stx-e _tl70997120_)))
                              (let ((_hd71017126_ (##car _e71007123_))
                                    (_tl71027128_ (##cdr _e71007123_)))
                                (if (gx#stx-pair? _tl71027128_)
                                    (let ((_e71037131_
                                           (gx#stx-e _tl71027128_)))
                                      (let ((_hd71047134_ (##car _e71037131_))
                                            (_tl71057136_ (##cdr _e71037131_)))
                                        (if (gx#stx-null? _tl71057136_)
                                            ((lambda (_L7139_ _L7140_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7140_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7139_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71047134_
                                             _hd71017126_)
                                            (_g70937110_ _g70947113_))))
                                    (_g70937110_ _g70947113_))))
                            (_g70937110_ _g70947113_))))
                    (_g70937110_ _g70947113_)))))
        (_g70927155_ _stx7091_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7024_)
      (let* ((_g70267043_
              (lambda (_g70277040_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70277040_)))
             (_g70257088_
              (lambda (_g70277046_)
                (if (gx#stx-pair? _g70277046_)
                    (let ((_e70307048_ (gx#stx-e _g70277046_)))
                      (let ((_hd70317051_ (##car _e70307048_))
                            (_tl70327053_ (##cdr _e70307048_)))
                        (if (gx#stx-pair? _tl70327053_)
                            (let ((_e70337056_ (gx#stx-e _tl70327053_)))
                              (let ((_hd70347059_ (##car _e70337056_))
                                    (_tl70357061_ (##cdr _e70337056_)))
                                (if (gx#stx-pair? _tl70357061_)
                                    (let ((_e70367064_
                                           (gx#stx-e _tl70357061_)))
                                      (let ((_hd70377067_ (##car _e70367064_))
                                            (_tl70387069_ (##cdr _e70367064_)))
                                        (if (gx#stx-null? _tl70387069_)
                                            ((lambda (_L7072_ _L7073_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7072_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7073_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70377067_
                                             _hd70347059_)
                                            (_g70267043_ _g70277046_))))
                                    (_g70267043_ _g70277046_))))
                            (_g70267043_ _g70277046_))))
                    (_g70267043_ _g70277046_)))))
        (_g70257088_ _stx7024_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6957_)
      (let* ((_g69596976_
              (lambda (_g69606973_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69606973_)))
             (_g69587021_
              (lambda (_g69606979_)
                (if (gx#stx-pair? _g69606979_)
                    (let ((_e69636981_ (gx#stx-e _g69606979_)))
                      (let ((_hd69646984_ (##car _e69636981_))
                            (_tl69656986_ (##cdr _e69636981_)))
                        (if (gx#stx-pair? _tl69656986_)
                            (let ((_e69666989_ (gx#stx-e _tl69656986_)))
                              (let ((_hd69676992_ (##car _e69666989_))
                                    (_tl69686994_ (##cdr _e69666989_)))
                                (if (gx#stx-pair? _tl69686994_)
                                    (let ((_e69696997_
                                           (gx#stx-e _tl69686994_)))
                                      (let ((_hd69707000_ (##car _e69696997_))
                                            (_tl69717002_ (##cdr _e69696997_)))
                                        (if (gx#stx-null? _tl69717002_)
                                            ((lambda (_L7005_ _L7006_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7005_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7006_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd69707000_
                                             _hd69676992_)
                                            (_g69596976_ _g69606979_))))
                                    (_g69596976_ _g69606979_))))
                            (_g69596976_ _g69606979_))))
                    (_g69596976_ _g69606979_)))))
        (_g69587021_ _stx6957_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6874_)
      (let* ((_g68766897_
              (lambda (_g68776894_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68776894_)))
             (_g68756954_
              (lambda (_g68776900_)
                (if (gx#stx-pair? _g68776900_)
                    (let ((_e68816902_ (gx#stx-e _g68776900_)))
                      (let ((_hd68826905_ (##car _e68816902_))
                            (_tl68836907_ (##cdr _e68816902_)))
                        (if (gx#stx-pair? _tl68836907_)
                            (let ((_e68846910_ (gx#stx-e _tl68836907_)))
                              (let ((_hd68856913_ (##car _e68846910_))
                                    (_tl68866915_ (##cdr _e68846910_)))
                                (if (gx#stx-pair? _tl68866915_)
                                    (let ((_e68876918_
                                           (gx#stx-e _tl68866915_)))
                                      (let ((_hd68886921_ (##car _e68876918_))
                                            (_tl68896923_ (##cdr _e68876918_)))
                                        (if (gx#stx-pair? _tl68896923_)
                                            (let ((_e68906926_
                                                   (gx#stx-e _tl68896923_)))
                                              (let ((_hd68916929_
                                                     (##car _e68906926_))
                                                    (_tl68926931_
                                                     (##cdr _e68906926_)))
                                                (if (gx#stx-null? _tl68926931_)
                                                    ((lambda (_L6934_
                                                              _L6935_
                                                              _L6936_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6934_)
                           (cons (gxc#compile-e _L6935_)
                                 (cons (gxc#compile-e _L6936_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd68916929_
                                                     _hd68886921_
                                                     _hd68856913_)
                                                    (_g68766897_
                                                     _g68776900_))))
                                            (_g68766897_ _g68776900_))))
                                    (_g68766897_ _g68776900_))))
                            (_g68766897_ _g68776900_))))
                    (_g68766897_ _g68776900_)))))
        (_g68756954_ _stx6874_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6775_)
      (let* ((_g67776802_
              (lambda (_g67786799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67786799_)))
             (_g67766871_
              (lambda (_g67786805_)
                (if (gx#stx-pair? _g67786805_)
                    (let ((_e67836807_ (gx#stx-e _g67786805_)))
                      (let ((_hd67846810_ (##car _e67836807_))
                            (_tl67856812_ (##cdr _e67836807_)))
                        (if (gx#stx-pair? _tl67856812_)
                            (let ((_e67866815_ (gx#stx-e _tl67856812_)))
                              (let ((_hd67876818_ (##car _e67866815_))
                                    (_tl67886820_ (##cdr _e67866815_)))
                                (if (gx#stx-pair? _tl67886820_)
                                    (let ((_e67896823_
                                           (gx#stx-e _tl67886820_)))
                                      (let ((_hd67906826_ (##car _e67896823_))
                                            (_tl67916828_ (##cdr _e67896823_)))
                                        (if (gx#stx-pair? _tl67916828_)
                                            (let ((_e67926831_
                                                   (gx#stx-e _tl67916828_)))
                                              (let ((_hd67936834_
                                                     (##car _e67926831_))
                                                    (_tl67946836_
                                                     (##cdr _e67926831_)))
                                                (if (gx#stx-pair? _tl67946836_)
                                                    (let ((_e67956839_
                                                           (gx#stx-e
                                                            _tl67946836_)))
                                                      (let ((_hd67966842_
                                                             (##car _e67956839_))
                                                            (_tl67976844_
                                                             (##cdr _e67956839_)))
                                                        (if (gx#stx-null?
                                                             _tl67976844_)
                                                            ((lambda (_L6847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6848_
                              _L6849_
                              _L6850_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6848_)
                                   (cons (gxc#compile-e _L6847_)
                                         (cons (gxc#compile-e _L6849_)
                                               (cons (gxc#compile-e _L6850_)
                                                     (cons ''#f '())))))))
                     _hd67966842_
                     _hd67936834_
                     _hd67906826_
                     _hd67876818_)
                    (_g67776802_ _g67786805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g67776802_
                                                     _g67786805_))))
                                            (_g67776802_ _g67786805_))))
                                    (_g67776802_ _g67786805_))))
                            (_g67776802_ _g67786805_))))
                    (_g67776802_ _g67786805_)))))
        (_g67766871_ _stx6775_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6692_)
      (let* ((_g66946715_
              (lambda (_g66956712_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66956712_)))
             (_g66936772_
              (lambda (_g66956718_)
                (if (gx#stx-pair? _g66956718_)
                    (let ((_e66996720_ (gx#stx-e _g66956718_)))
                      (let ((_hd67006723_ (##car _e66996720_))
                            (_tl67016725_ (##cdr _e66996720_)))
                        (if (gx#stx-pair? _tl67016725_)
                            (let ((_e67026728_ (gx#stx-e _tl67016725_)))
                              (let ((_hd67036731_ (##car _e67026728_))
                                    (_tl67046733_ (##cdr _e67026728_)))
                                (if (gx#stx-pair? _tl67046733_)
                                    (let ((_e67056736_
                                           (gx#stx-e _tl67046733_)))
                                      (let ((_hd67066739_ (##car _e67056736_))
                                            (_tl67076741_ (##cdr _e67056736_)))
                                        (if (gx#stx-pair? _tl67076741_)
                                            (let ((_e67086744_
                                                   (gx#stx-e _tl67076741_)))
                                              (let ((_hd67096747_
                                                     (##car _e67086744_))
                                                    (_tl67106749_
                                                     (##cdr _e67086744_)))
                                                (if (gx#stx-null? _tl67106749_)
                                                    ((lambda (_L6752_
                                                              _L6753_
                                                              _L6754_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6752_)
                           (cons (gxc#compile-e _L6753_)
                                 (cons (gxc#compile-e _L6754_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67096747_
                                                     _hd67066739_
                                                     _hd67036731_)
                                                    (_g66946715_
                                                     _g66956718_))))
                                            (_g66946715_ _g66956718_))))
                                    (_g66946715_ _g66956718_))))
                            (_g66946715_ _g66956718_))))
                    (_g66946715_ _g66956718_)))))
        (_g66936772_ _stx6692_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6593_)
      (let* ((_g65956620_
              (lambda (_g65966617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65966617_)))
             (_g65946689_
              (lambda (_g65966623_)
                (if (gx#stx-pair? _g65966623_)
                    (let ((_e66016625_ (gx#stx-e _g65966623_)))
                      (let ((_hd66026628_ (##car _e66016625_))
                            (_tl66036630_ (##cdr _e66016625_)))
                        (if (gx#stx-pair? _tl66036630_)
                            (let ((_e66046633_ (gx#stx-e _tl66036630_)))
                              (let ((_hd66056636_ (##car _e66046633_))
                                    (_tl66066638_ (##cdr _e66046633_)))
                                (if (gx#stx-pair? _tl66066638_)
                                    (let ((_e66076641_
                                           (gx#stx-e _tl66066638_)))
                                      (let ((_hd66086644_ (##car _e66076641_))
                                            (_tl66096646_ (##cdr _e66076641_)))
                                        (if (gx#stx-pair? _tl66096646_)
                                            (let ((_e66106649_
                                                   (gx#stx-e _tl66096646_)))
                                              (let ((_hd66116652_
                                                     (##car _e66106649_))
                                                    (_tl66126654_
                                                     (##cdr _e66106649_)))
                                                (if (gx#stx-pair? _tl66126654_)
                                                    (let ((_e66136657_
                                                           (gx#stx-e
                                                            _tl66126654_)))
                                                      (let ((_hd66146660_
                                                             (##car _e66136657_))
                                                            (_tl66156662_
                                                             (##cdr _e66136657_)))
                                                        (if (gx#stx-null?
                                                             _tl66156662_)
                                                            ((lambda (_L6665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6666_
                              _L6667_
                              _L6668_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6666_)
                                   (cons (gxc#compile-e _L6665_)
                                         (cons (gxc#compile-e _L6667_)
                                               (cons (gxc#compile-e _L6668_)
                                                     (cons ''#f '())))))))
                     _hd66146660_
                     _hd66116652_
                     _hd66086644_
                     _hd66056636_)
                    (_g65956620_ _g65966623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65956620_
                                                     _g65966623_))))
                                            (_g65956620_ _g65966623_))))
                                    (_g65956620_ _g65966623_))))
                            (_g65956620_ _g65966623_))))
                    (_g65956620_ _g65966623_)))))
        (_g65946689_ _stx6593_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6510_)
      (let* ((_g65126533_
              (lambda (_g65136530_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65136530_)))
             (_g65116590_
              (lambda (_g65136536_)
                (if (gx#stx-pair? _g65136536_)
                    (let ((_e65176538_ (gx#stx-e _g65136536_)))
                      (let ((_hd65186541_ (##car _e65176538_))
                            (_tl65196543_ (##cdr _e65176538_)))
                        (if (gx#stx-pair? _tl65196543_)
                            (let ((_e65206546_ (gx#stx-e _tl65196543_)))
                              (let ((_hd65216549_ (##car _e65206546_))
                                    (_tl65226551_ (##cdr _e65206546_)))
                                (if (gx#stx-pair? _tl65226551_)
                                    (let ((_e65236554_
                                           (gx#stx-e _tl65226551_)))
                                      (let ((_hd65246557_ (##car _e65236554_))
                                            (_tl65256559_ (##cdr _e65236554_)))
                                        (if (gx#stx-pair? _tl65256559_)
                                            (let ((_e65266562_
                                                   (gx#stx-e _tl65256559_)))
                                              (let ((_hd65276565_
                                                     (##car _e65266562_))
                                                    (_tl65286567_
                                                     (##cdr _e65266562_)))
                                                (if (gx#stx-null? _tl65286567_)
                                                    ((lambda (_L6570_
                                                              _L6571_
                                                              _L6572_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6570_)
                           (cons (gxc#compile-e _L6571_)
                                 (cons (gxc#compile-e _L6572_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65276565_
                                                     _hd65246557_
                                                     _hd65216549_)
                                                    (_g65126533_
                                                     _g65136536_))))
                                            (_g65126533_ _g65136536_))))
                                    (_g65126533_ _g65136536_))))
                            (_g65126533_ _g65136536_))))
                    (_g65126533_ _g65136536_)))))
        (_g65116590_ _stx6510_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6411_)
      (let* ((_g64136438_
              (lambda (_g64146435_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64146435_)))
             (_g64126507_
              (lambda (_g64146441_)
                (if (gx#stx-pair? _g64146441_)
                    (let ((_e64196443_ (gx#stx-e _g64146441_)))
                      (let ((_hd64206446_ (##car _e64196443_))
                            (_tl64216448_ (##cdr _e64196443_)))
                        (if (gx#stx-pair? _tl64216448_)
                            (let ((_e64226451_ (gx#stx-e _tl64216448_)))
                              (let ((_hd64236454_ (##car _e64226451_))
                                    (_tl64246456_ (##cdr _e64226451_)))
                                (if (gx#stx-pair? _tl64246456_)
                                    (let ((_e64256459_
                                           (gx#stx-e _tl64246456_)))
                                      (let ((_hd64266462_ (##car _e64256459_))
                                            (_tl64276464_ (##cdr _e64256459_)))
                                        (if (gx#stx-pair? _tl64276464_)
                                            (let ((_e64286467_
                                                   (gx#stx-e _tl64276464_)))
                                              (let ((_hd64296470_
                                                     (##car _e64286467_))
                                                    (_tl64306472_
                                                     (##cdr _e64286467_)))
                                                (if (gx#stx-pair? _tl64306472_)
                                                    (let ((_e64316475_
                                                           (gx#stx-e
                                                            _tl64306472_)))
                                                      (let ((_hd64326478_
                                                             (##car _e64316475_))
                                                            (_tl64336480_
                                                             (##cdr _e64316475_)))
                                                        (if (gx#stx-null?
                                                             _tl64336480_)
                                                            ((lambda (_L6483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6484_
                              _L6485_
                              _L6486_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6484_)
                                   (cons (gxc#compile-e _L6483_)
                                         (cons (gxc#compile-e _L6485_)
                                               (cons (gxc#compile-e _L6486_)
                                                     (cons ''#f '())))))))
                     _hd64326478_
                     _hd64296470_
                     _hd64266462_
                     _hd64236454_)
                    (_g64136438_ _g64146441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64136438_
                                                     _g64146441_))))
                                            (_g64136438_ _g64146441_))))
                                    (_g64136438_ _g64146441_))))
                            (_g64136438_ _g64146441_))))
                    (_g64136438_ _g64146441_)))))
        (_g64126507_ _stx6411_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6265_)
      (letrec ((_import-set-template6267_
                (lambda (_in6363_ _phi6364_)
                  (let ((_iphi6366_
                         (fx+ _phi6364_
                              (##direct-structure-ref
                               _in6363_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6367_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6363_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6369_ ((_rest6371_ _imports6367_) (_r6372_ '()))
                      (let* ((_rest63736381_ _rest6371_)
                             (_E63766385_
                              (lambda ()
                                (error '"No clause matching" _rest63736381_)))
                             (_else63756389_ (lambda () _r6372_))
                             (_K63776399_
                              (lambda (_rest6392_ _in6393_)
                                (if (##structure-instance-of?
                                     _in6393_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6366_)
                                        (_lp6369_
                                         _rest6392_
                                         (cons _in6393_ _r6372_))
                                        (_lp6369_ _rest6392_ _r6372_))
                                    (if (##structure-direct-instance-of?
                                         _in6393_
                                         'gx#module-import::t)
                                        (let ((_iphi6395_
                                               (fx+ _phi6364_
                                                    (##direct-structure-ref
                                                     _in6393_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6395_)
                                              (_lp6369_
                                               _rest6392_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6393_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6372_))
                                              (_lp6369_ _rest6392_ _r6372_)))
                                        (if (##structure-direct-instance-of?
                                             _in6393_
                                             'gx#import-set::t)
                                            (let ((_xphi6397_
                                                   (fx+ _iphi6366_
                                                        (##direct-structure-ref
                                                         _in6393_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6397_)
                                                  (_lp6369_
                                                   _rest6392_
                                                   (cons (##direct-structure-ref
                                                          _in6393_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6372_))
                                                  (if (fxpositive? _xphi6397_)
                                                      (_lp6369_
                                                       _rest6392_
                                                       (foldl1 cons
                                                               _r6372_
                                                               (_import-set-template6267_
                                                                _in6393_
                                                                _iphi6366_)))
                                                      (_lp6369_
                                                       _rest6392_
                                                       _r6372_))))
                                            (_lp6369_ _rest6392_ _r6372_)))))))
                        (if (##pair? _rest63736381_)
                            (let ((_hd63786402_ (##car _rest63736381_))
                                  (_tl63796404_ (##cdr _rest63736381_)))
                              (let* ((_in6407_ _hd63786402_)
                                     (_rest6409_ _tl63796404_))
                                (_K63776399_ _rest6409_ _in6407_)))
                            (_else63756389_))))))))
        (let* ((_g62696279_
                (lambda (_g62706276_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g62706276_)))
               (_g62686360_
                (lambda (_g62706282_)
                  (if (gx#stx-pair? _g62706282_)
                      (let ((_e62726284_ (gx#stx-e _g62706282_)))
                        (let ((_hd62736287_ (##car _e62726284_))
                              (_tl62746289_ (##cdr _e62726284_)))
                          ((lambda (_L6292_)
                             (let ((_ht6303_ (make-hash-table-eq)))
                               (let _lp6305_ ((_rest6307_ _L6292_)
                                              (_loads6308_ '()))
                                 (letrec ((_K6310_ (lambda (_ctx6353_
                                                            _rest6354_)
                                                     (let ((_id6356_
                                                            (##structure-ref
                                                             _ctx6353_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6303_
                                                            _id6356_
                                                            '#f)
                                                           (_lp6305_
                                                            _rest6354_
                                                            _loads6308_)
                                                           (let ((_rt6358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6356_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6303_ _id6356_ _rt6358_)
                       (_lp6305_ _rest6354_ (cons _rt6358_ _loads6308_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63116319_ _rest6307_)
                                          (_E63146323_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest63116319_)))
                                          (_else63136331_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63266328_)
                                                          (list 'load-module
                                                                _g63266328_))
                                                        (reverse _loads6308_)))))
                                          (_K63156341_
                                           (lambda (_rest6334_ _in6335_)
                                             (if (##structure-instance-of?
                                                  _in6335_
                                                  'gx#module-context::t)
                                                 (_K6310_ _in6335_ _rest6334_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6335_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6335_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6310_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6335_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6334_)
                 (_lp6305_ _rest6334_ _loads6308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6335_
                                                          'gx#import-set::t)
                                                         (let ((_phi6337_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6335_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6337_)
                       (_K6310_ (##direct-structure-ref
                                 _in6335_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6334_)
                       (if (fxpositive? _phi6337_)
                           (let ((_deps6339_
                                  (_import-set-template6267_ _in6335_ '0)))
                             (_lp6305_
                              (foldl1 cons _rest6334_ _deps6339_)
                              _loads6308_))
                           (_lp6305_ _rest6334_ _loads6308_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6265_
                  _in6335_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63116319_)
                                         (let ((_hd63166344_
                                                (##car _rest63116319_))
                                               (_tl63176346_
                                                (##cdr _rest63116319_)))
                                           (let* ((_in6349_ _hd63166344_)
                                                  (_rest6351_ _tl63176346_))
                                             (_K63156341_
                                              _rest6351_
                                              _in6349_)))
                                         (_else63136331_)))))))
                           _tl62746289_)))
                      (_g62696279_ _g62706282_)))))
          (_g62686360_ _stx6265_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6088_)
      (letrec ((_add-lift!6090_
                (lambda (_expr6263_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6263_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6091_
                (lambda (_stxq6258_)
                  (let ((_gid6260_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6261_
                         (gxc#generate-runtime-identifier _stxq6258_)))
                    (begin
                      (_add-lift!6090_
                       (cons 'define
                             (cons _gid6260_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6261_
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
                      _gid6260_))))
               (_generate-serialized6092_
                (lambda (_stxq6248_ _marks6249_)
                  (let* ((_mark-refs6251_
                          (map _generate-mark6093_ _marks6249_))
                         (_gid6253_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6255_
                          (gxc#generate-runtime-identifier _stxq6248_)))
                    (begin
                      (_add-lift!6090_
                       (cons 'define
                             (cons _gid6253_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6251_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6253_))))
               (_generate-mark6093_
                (lambda (_mark6234_)
                  (let ((_$e6236_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6234_
                          '#f)))
                    (if _$e6236_
                        (values _$e6236_)
                        (let* ((_gid6239_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6241_ (_serialize-mark6094_ _mark6234_))
                               (_ctx6243_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6234_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6245_
                                (if (eq? _ctx6243_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6095_
                                                             _ctx6243_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6234_
                             _gid6239_)
                            (_add-lift!6090_
                             (cons 'define
                                   (cons _gid6239_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6241_ '()))
                   (cons _ctx-ref6245_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6239_))))))
               (_serialize-mark6094_
                (lambda (_mark6181_)
                  (letrec ((_quote-e6183_
                            (lambda (_sym6232_)
                              (if (interned-symbol? _sym6232_)
                                  _sym6232_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6232_)))))
                    (let* ((_mark61846193_ _mark6181_)
                           (_E61866197_
                            (lambda ()
                              (error '"No clause matching" _mark61846193_)))
                           (_K61876209_
                            (lambda (_trace6200_
                                     _phi6201_
                                     _ctx6202_
                                     _subst6203_)
                              (let ((_subs6205_
                                     (if _subst6203_
                                         (table->list _subst6203_)
                                         '())))
                                (cons _phi6201_
                                      (map (lambda (_pair6207_)
                                             (cons (_quote-e6183_
                                                    (car _pair6207_))
                                                   (_quote-e6183_
                                                    (cdr _pair6207_))))
                                           _subs6205_))))))
                      (if (##structure-instance-of?
                           _mark61846193_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e61886212_ (##vector-ref _mark61846193_ '1))
                                 (_subst6215_ _e61886212_)
                                 (_e61896217_ (##vector-ref _mark61846193_ '2))
                                 (_ctx6220_ _e61896217_)
                                 (_e61906222_ (##vector-ref _mark61846193_ '3))
                                 (_phi6225_ _e61906222_)
                                 (_e61916227_ (##vector-ref _mark61846193_ '4))
                                 (_trace6230_ _e61916227_))
                            (_K61876209_
                             _trace6230_
                             _phi6225_
                             _ctx6220_
                             _subst6215_))
                          (_E61866197_))))))
               (_context-ref6095_
                (lambda (_ctx6168_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6168_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6170_
                             (_context-ref-nested6097_ _ctx6168_))
                            (_ctx-origin6171_
                             (_context-ref-origin6096_ _ctx6168_))
                            (_origin6172_
                             (_context-ref-origin6096_
                              (gx#current-expander-context))))
                        (if (eq? _origin6172_ _ctx-origin6171_)
                            (let ((_ref6174_
                                   (_context-ref-nested6097_
                                    (gx#current-expander-context))))
                              (let _lp6176_ ((_ref6178_ (cdr _ref6174_))
                                             (_ctx-ref6179_
                                              (cdr _ctx-ref6170_)))
                                (if (if (pair? _ref6178_)
                                        (eq? (car _ref6178_)
                                             (car _ctx-ref6179_))
                                        '#f)
                                    (_lp6176_
                                     (cdr _ref6178_)
                                     (cdr _ctx-ref6179_))
                                    (cons '#f _ctx-ref6179_))))
                            _ctx-ref6170_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6168_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6096_
                (lambda (_ctx6160_)
                  (let _lp6162_ ((_ctx6164_ _ctx6160_))
                    (let ((_super6166_
                           (##structure-ref
                            _ctx6164_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6166_
                           'gx#module-context::t)
                          (_lp6162_ _super6166_)
                          _ctx6164_)))))
               (_context-ref-nested6097_
                (lambda (_ctx6151_)
                  (let _lp6153_ ((_ctx6155_ _ctx6151_) (_r6156_ '()))
                    (let ((_super6158_
                           (##structure-ref
                            _ctx6155_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6158_
                           'gx#module-context::t)
                          (_lp6153_
                           _super6158_
                           (cons (car (##structure-ref
                                       _ctx6155_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6156_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6155_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6156_)))))))
        (let* ((_g60996112_
                (lambda (_g61006109_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61006109_)))
               (_g60986148_
                (lambda (_g61006115_)
                  (if (gx#stx-pair? _g61006115_)
                      (let ((_e61026117_ (gx#stx-e _g61006115_)))
                        (let ((_hd61036120_ (##car _e61026117_))
                              (_tl61046122_ (##cdr _e61026117_)))
                          (if (gx#stx-pair? _tl61046122_)
                              (let ((_e61056125_ (gx#stx-e _tl61046122_)))
                                (let ((_hd61066128_ (##car _e61056125_))
                                      (_tl61076130_ (##cdr _e61056125_)))
                                  (if (gx#stx-null? _tl61076130_)
                                      ((lambda (_L6133_)
                                         (if (gx#identifier? _L6133_)
                                             (let ((_marks6146_
                                                    (##direct-structure-ref
                                                     _L6133_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks6146_)
                                                   (_generate-simple6091_
                                                    _L6133_)
                                                   (_generate-serialized6092_
                                                    _L6133_
                                                    _marks6146_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6133_)))
                                       _hd61066128_)
                                      (_g60996112_ _g61006115_))))
                              (_g60996112_ _g61006115_))))
                      (_g60996112_ _g61006115_)))))
          (_g60986148_ _stx6088_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6021_)
      (let* ((_g60236040_
              (lambda (_g60246037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60246037_)))
             (_g60226085_
              (lambda (_g60246043_)
                (if (gx#stx-pair? _g60246043_)
                    (let ((_e60276045_ (gx#stx-e _g60246043_)))
                      (let ((_hd60286048_ (##car _e60276045_))
                            (_tl60296050_ (##cdr _e60276045_)))
                        (if (gx#stx-pair? _tl60296050_)
                            (let ((_e60306053_ (gx#stx-e _tl60296050_)))
                              (let ((_hd60316056_ (##car _e60306053_))
                                    (_tl60326058_ (##cdr _e60306053_)))
                                (if (gx#stx-pair? _tl60326058_)
                                    (let ((_e60336061_
                                           (gx#stx-e _tl60326058_)))
                                      (let ((_hd60346064_ (##car _e60336061_))
                                            (_tl60356066_ (##cdr _e60336061_)))
                                        (if (gx#stx-null? _tl60356066_)
                                            ((lambda (_L6069_ _L6070_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6070_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6069_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60346064_
                                             _hd60316056_)
                                            (_g60236040_ _g60246043_))))
                                    (_g60236040_ _g60246043_))))
                            (_g60236040_ _g60246043_))))
                    (_g60236040_ _g60246043_)))))
        (_g60226085_ _stx6021_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5970_ _state5971_)
      (let* ((_g59735983_
              (lambda (_g59745980_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59745980_)))
             (_g59726018_
              (lambda (_g59745986_)
                (if (gx#stx-pair? _g59745986_)
                    (let ((_e59765988_ (gx#stx-e _g59745986_)))
                      (let ((_hd59775991_ (##car _e59765988_))
                            (_tl59785993_ (##cdr _e59765988_)))
                        ((lambda (_L5996_)
                           (let* ((_c-body6010_
                                   (map (lambda (_g60056007_)
                                          (gxc#compile-e
                                           _g60056007_
                                           _state5971_))
                                        _L5996_))
                                  (_c-body6015_
                                   (filter (lambda (_$obj6012_)
                                             (not (eq? _$obj6012_ '#!void)))
                                           _c-body6010_)))
                             (cons '%#begin _c-body6015_)))
                         _tl59785993_)))
                    (_g59735983_ _g59745986_)))))
        (_g59726018_ _stx5970_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5878_ _state5879_)
      (let* ((_g58815891_
              (lambda (_g58825888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58825888_)))
             (_g58805967_
              (lambda (_g58825894_)
                (if (gx#stx-pair? _g58825894_)
                    (let ((_e58845896_ (gx#stx-e _g58825894_)))
                      (let ((_hd58855899_ (##car _e58845896_))
                            (_tl58865901_ (##cdr _e58845896_)))
                        ((lambda (_L5904_)
                           (let* ((_phi5914_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5916_
                                   (gxc#meta-state-begin-phi!
                                    _state5879_
                                    _phi5914_))
                                  (_compiled5919_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5904_)
                                       _state5879_))
                                    gx#current-expander-phi
                                    _phi5914_)))
                             (let* ((_g59225932_
                                     (lambda (_g59235929_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59235929_)))
                                    (_g59215964_
                                     (lambda (_g59235935_)
                                       (if (gx#stx-pair? _g59235935_)
                                           (let ((_e59255937_
                                                  (gx#stx-e _g59235935_)))
                                             (let ((_hd59265940_
                                                    (##car _e59255937_))
                                                   (_tl59275942_
                                                    (##cdr _e59255937_)))
                                               (if (gx#identifier?
                                                    _hd59265940_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59265940_)
                                                       ((lambda (_L5945_)
                                                          (let ((_c-body5962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5959_)
                                   (not (eq? _$obj5959_ '#!void)))
                                 _L5945_)))
                    (if _block5916_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5962_))
                        (if (null? _c-body5962_)
                            '#!void
                            (cons '%#begin-syntax _c-body5962_)))))
                _tl59275942_)
               (_g59225932_ _g59235935_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59225932_ _g59235935_))))
                                           (_g59225932_ _g59235935_)))))
                               (_g59215964_ _compiled5919_))))
                         _tl58865901_)))
                    (_g58815891_ _g58825894_)))))
        (_g58805967_ _stx5878_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5809_ _state5810_)
      (begin
        (gxc#meta-state-end-phi! _state5810_)
        (let* ((_g58125826_
                (lambda (_g58135823_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58135823_)))
               (_g58115875_
                (lambda (_g58135829_)
                  (if (gx#stx-pair? _g58135829_)
                      (let ((_e58165831_ (gx#stx-e _g58135829_)))
                        (let ((_hd58175834_ (##car _e58165831_))
                              (_tl58185836_ (##cdr _e58165831_)))
                          (if (gx#stx-pair? _tl58185836_)
                              (let ((_e58195839_ (gx#stx-e _tl58185836_)))
                                (let ((_hd58205842_ (##car _e58195839_))
                                      (_tl58215844_ (##cdr _e58195839_)))
                                  ((lambda (_L5847_ _L5848_)
                                     (let ((_key5861_
                                            (gx#core-identifier-key _L5848_)))
                                       (begin
                                         (if (interned-symbol? _key5861_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5809_
                                              _L5848_
                                              _key5861_))
                                         (let* ((_ctx5863_
                                                 (gx#syntax-local-e__0
                                                  _L5848_))
                                                (_code5866_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5863_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5810_))
                                                  gx#current-expander-context
                                                  _ctx5863_))
                                                (_rt5868_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5863_
                                                  '#f))
                                                (_loader5870_
                                                 (if _rt5868_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5868_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5872_
                                                 (gx#stx-e _L5848_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5810_)
                                             (cons '%#module
                                                   (cons _modid5872_
                                                         (cons _code5866_
                                                               _loader5870_))))))))
                                   _tl58215844_
                                   _hd58205842_)))
                              (_g58125826_ _g58135829_))))
                      (_g58125826_ _g58135829_)))))
          (_g58115875_ _stx5809_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5799_ _context-chain5800_)
      (let _lp5802_ ((_ctx5804_ _ctx5799_) (_path5805_ '()))
        (let ((_super5807_
               (##structure-ref _ctx5804_ '3 gx#phi-context::t '#f)))
          (if (memq _super5807_ _context-chain5800_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5804_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5805_))
              (if (##structure-instance-of? _super5807_ 'gx#module-context::t)
                  (_lp5802_
                   _super5807_
                   (cons (car (##structure-ref
                               _ctx5804_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5805_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5804_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5805_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5794_ ((_ctx5796_ (gx#current-expander-context)) (_r5797_ '()))
        (if (##structure-instance-of? _ctx5796_ 'gx#module-context::t)
            (_lp5794_
             (##structure-ref _ctx5796_ '3 gx#phi-context::t '#f)
             (cons _ctx5796_ _r5797_))
            _r5797_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5563_ _state5564_)
      (letrec* ((_context-chain5566_ (gxc#current-context-chain))
                (_make-import-spec5567_
                 (lambda (_in5730_)
                   (let* ((_in57315743_ _in5730_)
                          (_E57335747_
                           (lambda ()
                             (error '"No clause matching" _in57315743_)))
                          (_K57345757_
                           (lambda (_phi5750_
                                    _name5751_
                                    _src-name5752_
                                    _src-phi5753_
                                    _src-key5754_
                                    _src-ctx5755_)
                             (cons _phi5750_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5751_)
                                         (cons _src-phi5753_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5752_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57315743_
                          (##type-id gx#module-import::t))
                         (let ((_e57355760_ (##vector-ref _in57315743_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57355760_
                                (##type-id gx#module-export::t))
                               (let* ((_e57385763_
                                       (##vector-ref _e57355760_ '1))
                                      (_src-ctx5766_ _e57385763_)
                                      (_e57395768_
                                       (##vector-ref _e57355760_ '2))
                                      (_src-key5771_ _e57395768_)
                                      (_e57405773_
                                       (##vector-ref _e57355760_ '3))
                                      (_src-phi5776_ _e57405773_)
                                      (_e57415778_
                                       (##vector-ref _e57355760_ '4))
                                      (_src-name5781_ _e57415778_)
                                      (_e57365783_
                                       (##vector-ref _in57315743_ '2))
                                      (_name5786_ _e57365783_)
                                      (_e57375788_
                                       (##vector-ref _in57315743_ '3))
                                      (_phi5791_ _e57375788_))
                                 (_K57345757_
                                  _phi5791_
                                  _name5786_
                                  _src-name5781_
                                  _src-phi5776_
                                  _src-key5771_
                                  _src-ctx5766_))
                               (_E57335747_)))
                         (_E57335747_)))))
                (_make-import-path5568_
                 (lambda (_ctx5728_)
                   (gxc#generate-meta-import-path
                    _ctx5728_
                    _context-chain5566_)))
                (_make-import-spec-in5569_
                 (lambda (_ctx5725_ _in5726_)
                   (cons 'spec:
                         (cons (_make-import-path5568_ _ctx5725_)
                               (reverse _in5726_))))))
        (begin
          (gxc#meta-state-end-phi! _state5564_)
          (let* ((_g55715581_
                  (lambda (_g55725578_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g55725578_)))
                 (_g55705722_
                  (lambda (_g55725584_)
                    (if (gx#stx-pair? _g55725584_)
                        (let ((_e55745586_ (gx#stx-e _g55725584_)))
                          (let ((_hd55755589_ (##car _e55745586_))
                                (_tl55765591_ (##cdr _e55745586_)))
                            ((lambda (_L5594_)
                               (let _lp5605_ ((_rest5607_ _L5594_)
                                              (_current-src5608_ '#f)
                                              (_current-in5609_ '())
                                              (_r5610_ '()))
                                 (let* ((_rest56115619_ _rest5607_)
                                        (_E56145623_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest56115619_)))
                                        (_else56135629_
                                         (lambda ()
                                           (let ((_r5627_ (if _current-src5608_
                                                              (cons (_make-import-spec-in5569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5608_
                             _current-in5609_)
                            _r5610_)
                      _r5610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5627_)))))
                                        (_K56155710_
                                         (lambda (_rest5632_ _in5633_)
                                           (if (##structure-direct-instance-of?
                                                _in5633_
                                                'gx#module-import::t)
                                               (let* ((_in56345641_ _in5633_)
                                                      (_E56365645_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56345641_)))
                                                      (_K56375650_
                                                       (lambda (_src-ctx5648_)
                                                         (if (eq? _current-src5608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5648_)
                     (_lp5605_
                      _rest5632_
                      _current-src5608_
                      (cons (_make-import-spec5567_ _in5633_) _current-in5609_)
                      _r5610_)
                     (if _current-src5608_
                         (_lp5605_
                          _rest5632_
                          _src-ctx5648_
                          (cons (_make-import-spec5567_ _in5633_) '())
                          (cons (_make-import-spec-in5569_
                                 _current-src5608_
                                 _current-in5609_)
                                _r5610_))
                         (_lp5605_
                          _rest5632_
                          _src-ctx5648_
                          (cons (_make-import-spec5567_ _in5633_) '())
                          _r5610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56345641_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e56385653_
                                                            (##vector-ref
                                                             _in56345641_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56385653_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e56395656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56385653_ '1))
                          (_src-ctx5659_ _e56395656_))
                     (_K56375650_ _src-ctx5659_))
                   (_E56365645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56365645_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5633_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5661_
                                                           (##direct-structure-ref
                                                            _in5633_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5663_
                                                           (##direct-structure-ref
                                                            _in5633_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5703_
                                                           (let* ((_g56645673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5568_ _src5663_))
                          (_E56675677_
                           (lambda ()
                             (error '"No clause matching" _g56645673_)))
                          (_try-match56665688_
                           (lambda ()
                             (let* ((_K56685683_
                                     (lambda (_path5681_)
                                       (cons 'in: _path5681_)))
                                    (_path5686_ _g56645673_))
                               (_K56685683_ _path5686_))))
                          (_K56695693_ (lambda (_path5691_) _path5691_)))
                     (if (##pair? _g56645673_)
                         (let ((_hd56705696_ (##car _g56645673_))
                               (_tl56715698_ (##cdr _g56645673_)))
                           (let ((_path5701_ _hd56705696_))
                             (if (##null? _tl56715698_)
                                 (_K56695693_ _path5701_)
                                 (_try-match56665688_))))
                         (_try-match56665688_))))
                  (_r5705_ (if _current-src5608_
                               (cons (_make-import-spec-in5569_
                                      _current-src5608_
                                      _current-in5609_)
                                     _r5610_)
                               _r5610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5605_
                                                      _rest5632_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5661_)
                                                                _src-in5703_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5661_ (cons _src-in5703_ '()))))
                    _r5705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5633_
                                                        'gx#module-context::t)
                                                       (let ((_r5708_ (if _current-src5608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5569_
                                         _current-src5608_
                                         _current-in5609_)
                                        _r5610_)
                                  _r5610_)))
                 (_lp5605_
                  _rest5632_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5568_ _in5633_))
                        _r5708_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56115619_)
                                       (let ((_hd56165713_
                                              (##car _rest56115619_))
                                             (_tl56175715_
                                              (##cdr _rest56115619_)))
                                         (let* ((_in5718_ _hd56165713_)
                                                (_rest5720_ _tl56175715_))
                                           (_K56155710_ _rest5720_ _in5718_)))
                                       (_else56135629_)))))
                             _tl55765591_)))
                        (_g55715581_ _g55725584_)))))
            (_g55705722_ _stx5563_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5373_ _state5374_)
      (letrec* ((_context-chain5376_ (gxc#current-context-chain))
                (_make-import-path5377_
                 (lambda (_ctx5561_)
                   (gxc#generate-meta-import-path
                    _ctx5561_
                    _context-chain5376_))))
        (let* ((_g53795389_
                (lambda (_g53805386_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53805386_)))
               (_g53785558_
                (lambda (_g53805392_)
                  (if (gx#stx-pair? _g53805392_)
                      (let ((_e53825394_ (gx#stx-e _g53805392_)))
                        (let ((_hd53835397_ (##car _e53825394_))
                              (_tl53845399_ (##cdr _e53825394_)))
                          ((lambda (_L5402_)
                             (let _lp5413_ ((_rest5415_ _L5402_) (_r5416_ '()))
                               (let* ((_rest54175425_ _rest5415_)
                                      (_E54205429_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest54175425_)))
                                      (_else54195433_
                                       (lambda ()
                                         (cons '%#export (reverse _r5416_))))
                                      (_K54215546_
                                       (lambda (_rest5436_ _out5437_)
                                         (let* ((_out54385451_ _out5437_)
                                                (_E54415455_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54385451_)))
                                                (_try-match54405518_
                                                 (lambda ()
                                                   (let ((_K54425505_
                                                          (lambda (_phi5459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src5460_)
                    (let* ((_out5500_
                            (if _src5460_
                                (cons 'import:
                                      (cons (let* ((_g54615470_
                                                    (_make-import-path5377_
                                                     _src5460_))
                                                   (_E54645474_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g54615470_)))
                                                   (_try-match54635485_
                                                    (lambda ()
                                                      (let* ((_K54655480_
                                                              (lambda (_path5478_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path5478_)))
                     (_path5483_ _g54615470_))
                (_K54655480_ _path5483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K54665490_
                                                    (lambda (_path5488_)
                                                      _path5488_)))
                                              (if (##pair? _g54615470_)
                                                  (let ((_hd54675493_
                                                         (##car _g54615470_))
                                                        (_tl54685495_
                                                         (##cdr _g54615470_)))
                                                    (let ((_path5498_
                                                           _hd54675493_))
                                                      (if (##null? _tl54685495_)
                                                          (_K54665490_
                                                           _path5498_)
                                                          (_try-match54635485_))))
                                                  (_try-match54635485_)))
                                            '()))
                                '#t))
                           (_out5502_
                            (if (fxzero? _phi5459_)
                                _out5500_
                                (cons 'phi:
                                      (cons _phi5459_ (cons _out5500_ '()))))))
                      (_lp5413_ _rest5436_ (cons _out5502_ _r5416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out54385451_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e54435508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out54385451_ '1))
                        (_src5511_ _e54435508_)
                        (_e54445513_ (##vector-ref _out54385451_ '2))
                        (_phi5516_ _e54445513_))
                   (_K54425505_ _phi5516_ _src5511_))
                 (_E54415455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K54455525_
                                                 (lambda (_name5521_
                                                          _phi5522_
                                                          _key5523_)
                                                   (_lp5413_
                                                    _rest5436_
                                                    (cons (cons 'spec:
                                                                (cons _phi5522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key5523_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name5521_)
                                          '()))))
                  _r5416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out54385451_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e54465528_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '1))
                                                      (_e54475531_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '2))
                                                      (_key5534_ _e54475531_)
                                                      (_e54485536_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '3))
                                                      (_phi5539_ _e54485536_)
                                                      (_e54495541_
                                                       (##vector-ref
                                                        _out54385451_
                                                        '4))
                                                      (_name5544_ _e54495541_))
                                                 (_K54455525_
                                                  _name5544_
                                                  _phi5539_
                                                  _key5534_))
                                               (_try-match54405518_))))))
                                 (if (##pair? _rest54175425_)
                                     (let ((_hd54225549_
                                            (##car _rest54175425_))
                                           (_tl54235551_
                                            (##cdr _rest54175425_)))
                                       (let* ((_out5554_ _hd54225549_)
                                              (_rest5556_ _tl54235551_))
                                         (_K54215546_ _rest5556_ _out5554_)))
                                     (_else54195433_)))))
                           _tl53845399_)))
                      (_g53795389_ _g53805392_)))))
          (_g53785558_ _stx5373_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5334_ _state5335_)
      (begin
        (gxc#meta-state-end-phi! _state5335_)
        (let* ((_g53375347_
                (lambda (_g53385344_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53385344_)))
               (_g53365370_
                (lambda (_g53385350_)
                  (if (gx#stx-pair? _g53385350_)
                      (let ((_e53405352_ (gx#stx-e _g53385350_)))
                        (let ((_hd53415355_ (##car _e53405352_))
                              (_tl53425357_ (##cdr _e53405352_)))
                          ((lambda (_L5360_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5360_)))
                           _tl53425357_)))
                      (_g53375347_ _g53385350_)))))
          (_g53365370_ _stx5334_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5205_ _state5206_)
      (letrec ((_generate15208_
                (lambda (_id5329_ _eid5330_)
                  (let ((_eid5332_ (gx#stx-e _eid5330_)))
                    (begin
                      (if (interned-symbol? _eid5332_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5205_
                           _eid5332_))
                      (cons (gxc#generate-runtime-identifier _id5329_)
                            (cons _eid5332_ '())))))))
        (let* ((_g52105238_
                (lambda (_g52115235_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52115235_)))
               (_g52095326_
                (lambda (_g52115241_)
                  (if (gx#stx-pair? _g52115241_)
                      (let ((_e52145243_ (gx#stx-e _g52115241_)))
                        (let ((_hd52155246_ (##car _e52145243_))
                              (_tl52165248_ (##cdr _e52145243_)))
                          (if (gx#stx-pair/null? _tl52165248_)
                              (if (fx>= (gx#stx-length _tl52165248_) '0)
                                  (let ((_g12866_
                                         (gx#syntax-split-splice
                                          _tl52165248_
                                          '0)))
                                    (begin
                                      (let ((_g12867_
                                             (if (##values? _g12866_)
                                                 (##vector-length _g12866_)
                                                 1)))
                                        (if (not (##fx= _g12867_ 2))
                                            (error "Context expects 2 values"
                                                   _g12867_)))
                                      (let ((_target52175251_
                                             (##vector-ref _g12866_ 0))
                                            (_tl52195253_
                                             (##vector-ref _g12866_ 1)))
                                        (if (gx#stx-null? _tl52195253_)
                                            (letrec ((_loop52205256_
                                                      (lambda (_hd52185259_
                                                               _eid52245261_
                                                               _id52255263_)
                                                        (if (gx#stx-pair?
                                                             _hd52185259_)
                                                            (let ((_e52215266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd52185259_)))
                      (let ((_lp-hd52225269_ (##car _e52215266_))
                            (_lp-tl52235271_ (##cdr _e52215266_)))
                        (if (gx#stx-pair? _lp-hd52225269_)
                            (let ((_e52285274_ (gx#stx-e _lp-hd52225269_)))
                              (let ((_hd52295277_ (##car _e52285274_))
                                    (_tl52305279_ (##cdr _e52285274_)))
                                (if (gx#stx-pair? _tl52305279_)
                                    (let ((_e52315282_
                                           (gx#stx-e _tl52305279_)))
                                      (let ((_hd52325285_ (##car _e52315282_))
                                            (_tl52335287_ (##cdr _e52315282_)))
                                        (if (gx#stx-null? _tl52335287_)
                                            (_loop52205256_
                                             _lp-tl52235271_
                                             (cons _hd52325285_ _eid52245261_)
                                             (cons _hd52295277_ _id52255263_))
                                            (_g52105238_ _g52115241_))))
                                    (_g52105238_ _g52115241_))))
                            (_g52105238_ _g52115241_))))
                    (let ((_eid52265290_ (reverse _eid52245261_))
                          (_id52275292_ (reverse _id52255263_)))
                      ((lambda (_L5295_ _L5296_)
                         (cons '%#extern
                               (map _generate15208_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53115314_ _g53125316_)
                                                (cons _g53115314_ _g53125316_))
                                              '()
                                              _L5296_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g53185321_ _g53195323_)
                                                (cons _g53185321_ _g53195323_))
                                              '()
                                              _L5295_)))))
                       _eid52265290_
                       _id52275292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop52205256_
                                               _target52175251_
                                               '()
                                               '()))
                                            (_g52105238_ _g52115241_)))))
                                  (_g52105238_ _g52115241_))
                              (_g52105238_ _g52115241_))))
                      (_g52105238_ _g52115241_)))))
          (_g52095326_ _stx5205_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5000_ _state5001_)
      (letrec ((_generate15003_
                (lambda (_id5200_)
                  (let ((_eid5202_ (gxc#generate-runtime-binding-id _id5200_))
                        (_ident5203_
                         (gxc#generate-runtime-identifier _id5200_)))
                    (cons '%#define-runtime
                          (cons _ident5203_ (cons _eid5202_ '()))))))
               (_generate*5004_
                (lambda (_all5168_)
                  (let* ((_all51695177_ _all5168_)
                         (_E51725181_
                          (lambda ()
                            (error '"No clause matching" _all51695177_)))
                         (_else51715185_ (lambda () (cons '%#begin _all5168_)))
                         (_K51735190_ (lambda (_one5188_) _one5188_)))
                    (if (##pair? _all51695177_)
                        (let ((_hd51745193_ (##car _all51695177_))
                              (_tl51755195_ (##cdr _all51695177_)))
                          (let ((_one5198_ _hd51745193_))
                            (if (##null? _tl51755195_)
                                (_K51735190_ _one5198_)
                                (_else51715185_))))
                        (_else51715185_))))))
        (let* ((_g50065023_
                (lambda (_g50075020_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50075020_)))
               (_g50055165_
                (lambda (_g50075026_)
                  (if (gx#stx-pair? _g50075026_)
                      (let ((_e50105028_ (gx#stx-e _g50075026_)))
                        (let ((_hd50115031_ (##car _e50105028_))
                              (_tl50125033_ (##cdr _e50105028_)))
                          (if (gx#stx-pair? _tl50125033_)
                              (let ((_e50135036_ (gx#stx-e _tl50125033_)))
                                (let ((_hd50145039_ (##car _e50135036_))
                                      (_tl50155041_ (##cdr _e50135036_)))
                                  (if (gx#stx-pair? _tl50155041_)
                                      (let ((_e50165044_
                                             (gx#stx-e _tl50155041_)))
                                        (let ((_hd50175047_
                                               (##car _e50165044_))
                                              (_tl50185049_
                                               (##cdr _e50165044_)))
                                          (if (gx#stx-null? _tl50185049_)
                                              ((lambda (_L5052_ _L5053_)
                                                 (let _lp5069_ ((_rest5071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5053_)
                        (_r5072_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g50775093_
                                                           (lambda (_g50785090_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50785090_)))
                                                          (_g50765100_
                                                           (lambda (_g50785096_)
                                                             ((lambda ()
                                                                (_generate*5004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r5072_))))))
                  (_g50755116_
                   (lambda (_g50785103_)
                     ((lambda (_L5105_)
                        (if (gx#identifier? _L5105_)
                            (_generate*5004_
                             (foldl1 cons
                                     (cons (_generate15003_ _L5105_) '())
                                     _r5072_))
                            (_g50765100_ _g50785103_)))
                      _g50785103_)))
                  (_g50745140_
                   (lambda (_g50785119_)
                     (if (gx#stx-pair? _g50785119_)
                         (let ((_e50855121_ (gx#stx-e _g50785119_)))
                           (let ((_hd50865124_ (##car _e50855121_))
                                 (_tl50875126_ (##cdr _e50855121_)))
                             ((lambda (_L5129_ _L5130_)
                                (_lp5069_
                                 _L5129_
                                 (cons (_generate15003_ _L5130_) _r5072_)))
                              _tl50875126_
                              _hd50865124_)))
                         (_g50755116_ _g50785119_))))
                  (_g50735162_
                   (lambda (_g50785143_)
                     (if (gx#stx-pair? _g50785143_)
                         (let ((_e50805145_ (gx#stx-e _g50785143_)))
                           (let ((_hd50815148_ (##car _e50805145_))
                                 (_tl50825150_ (##cdr _e50805145_)))
                             (if (gx#stx-datum? _hd50815148_)
                                 (if (equal? (gx#stx-e _hd50815148_) '#f)
                                     ((lambda (_L5153_)
                                        (_lp5069_ _L5153_ _r5072_))
                                      _tl50825150_)
                                     (_g50745140_ _g50785143_))
                                 (_g50745140_ _g50785143_))))
                         (_g50745140_ _g50785143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50735162_
                                                      _rest5071_))))
                                               _hd50175047_
                                               _hd50145039_)
                                              (_g50065023_ _g50075026_))))
                                      (_g50065023_ _g50075026_))))
                              (_g50065023_ _g50075026_))))
                      (_g50065023_ _g50075026_)))))
          (_g50055165_ _stx5000_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4897_ _state4898_)
      (let* ((_g49004917_
              (lambda (_g49014914_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49014914_)))
             (_g48994997_
              (lambda (_g49014920_)
                (if (gx#stx-pair? _g49014920_)
                    (let ((_e49044922_ (gx#stx-e _g49014920_)))
                      (let ((_hd49054925_ (##car _e49044922_))
                            (_tl49064927_ (##cdr _e49044922_)))
                        (if (gx#stx-pair? _tl49064927_)
                            (let ((_e49074930_ (gx#stx-e _tl49064927_)))
                              (let ((_hd49084933_ (##car _e49074930_))
                                    (_tl49094935_ (##cdr _e49074930_)))
                                (if (gx#stx-pair? _tl49094935_)
                                    (let ((_e49104938_
                                           (gx#stx-e _tl49094935_)))
                                      (let ((_hd49114941_ (##car _e49104938_))
                                            (_tl49124943_ (##cdr _e49104938_)))
                                        (if (gx#stx-null? _tl49124943_)
                                            ((lambda (_L4946_ _L4947_)
                                               (let* ((_eid4962_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4947_))
                                                      (_phi4964_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4966_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4898_
                                                        _phi4964_)))
                                                 (begin
                                                   (let* ((_g49694976_
                                                           (lambda (_g49704973_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49704973_)))
                                                          (_g49684994_
                                                           (lambda (_g49704979_)
                                                             ((lambda (_L4981_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4898_
                           _phi4964_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4981_ (cons _L4946_ '()))))))
                      _g49704979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49684994_ _eid4962_))
                                                   (if _block4966_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4947_)
                                             (cons _eid4962_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4947_)
                           (cons _eid4962_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49114941_
                                             _hd49084933_)
                                            (_g49004917_ _g49014920_))))
                                    (_g49004917_ _g49014920_))))
                            (_g49004917_ _g49014920_))))
                    (_g49004917_ _g49014920_)))))
        (_g48994997_ _stx4897_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4829_ _state4830_)
      (let* ((_g48324849_
              (lambda (_g48334846_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48334846_)))
             (_g48314894_
              (lambda (_g48334852_)
                (if (gx#stx-pair? _g48334852_)
                    (let ((_e48364854_ (gx#stx-e _g48334852_)))
                      (let ((_hd48374857_ (##car _e48364854_))
                            (_tl48384859_ (##cdr _e48364854_)))
                        (if (gx#stx-pair? _tl48384859_)
                            (let ((_e48394862_ (gx#stx-e _tl48384859_)))
                              (let ((_hd48404865_ (##car _e48394862_))
                                    (_tl48414867_ (##cdr _e48394862_)))
                                (if (gx#stx-pair? _tl48414867_)
                                    (let ((_e48424870_
                                           (gx#stx-e _tl48414867_)))
                                      (let ((_hd48434873_ (##car _e48424870_))
                                            (_tl48444875_ (##cdr _e48424870_)))
                                        (if (gx#stx-null? _tl48444875_)
                                            ((lambda (_L4878_ _L4879_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4879_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4878_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48434873_
                                             _hd48404865_)
                                            (_g48324849_ _g48334852_))))
                                    (_g48324849_ _g48334852_))))
                            (_g48324849_ _g48334852_))))
                    (_g48324849_ _g48334852_)))))
        (_g48314894_ _stx4829_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4826_ _state4827_)
      (begin
        (gxc#meta-state-add-phi!
         _state4827_
         (gx#current-expander-phi)
         _stx4826_)
        (gxc#generate-meta-define-values% _stx4826_ _state4827_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4823_ _state4824_)
      (begin
        (gxc#meta-state-add-phi!
         _state4824_
         (gx#current-expander-phi)
         _stx4823_)
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
    (lambda _$args4820_
      (apply make-struct-instance gxc#meta-state::t _$args4820_)))
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
    (lambda (_self4817_ _ctx4818_)
      (if (##fx< '4 (##vector-length _self4817_))
          (begin
            (##vector-set!
             _self4817_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4818_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4817_ '2 '1)
            (##vector-set! _self4817_ '3 (make-hash-table-eq))
            (##vector-set! _self4817_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4817_))))
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
    (lambda _$args4692_
      (apply make-struct-instance gxc#meta-state-block::t _$args4692_)))
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
    (lambda (_state4651_ _phi4652_)
      (let* ((_state46534661_ _state4651_)
             (_E46554665_
              (lambda () (error '"No clause matching" _state46534661_)))
             (_K46564674_
              (lambda (_open4668_ _n4669_ _src4670_)
                (if (table-ref _open4668_ _phi4652_ '#f)
                    '#f
                    (let ((_block-ref4672_
                           (string-append
                            _src4670_
                            '"__"
                            (number->string _n4669_))))
                      (begin
                        (##structure-set!
                         _state4651_
                         (fx+ _n4669_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4668_
                         _phi4652_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4652_
                          _n4669_
                          '()))
                        _block-ref4672_))))))
        (if (##structure-instance-of?
             _state46534661_
             (##type-id gxc#meta-state::t))
            (let* ((_e46574677_ (##vector-ref _state46534661_ '1))
                   (_src4680_ _e46574677_)
                   (_e46584682_ (##vector-ref _state46534661_ '2))
                   (_n4685_ _e46584682_)
                   (_e46594687_ (##vector-ref _state46534661_ '3))
                   (_open4690_ _e46594687_))
              (_K46564674_ _open4690_ _n4685_ _src4680_))
            (_E46554665_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4645_ _phi4646_ _stx4647_)
      (let ((_block4649_
             (table-ref
              (##structure-ref _state4645_ '3 gxc#meta-state::t '#f)
              _phi4646_
              '#f)))
        (##structure-set!
         _block4649_
         (cons _stx4647_
               (##structure-ref _block4649_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4640_)
      (begin
        (##structure-set!
         _state4640_
         (hash-fold
          (lambda (_g12868_ _block4642_ _r4643_) (cons _block4642_ _r4643_))
          (##structure-ref _state4640_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4640_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4640_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4592_)
      (begin
        (gxc#meta-state-end-phi! _state4592_)
        (foldl1 (lambda (_block4594_ _r4595_)
                  (let* ((_block45964605_ _block4594_)
                         (_E45984609_
                          (lambda ()
                            (error '"No clause matching" _block45964605_)))
                         (_K45994617_
                          (lambda (_code4612_ _n4613_ _phi4614_ _ctx4615_)
                            (if (null? _code4612_)
                                _r4595_
                                (cons (cons _ctx4615_
                                            (cons _phi4614_
                                                  (cons _n4613_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4612_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4595_)))))
                    (if (##structure-instance-of?
                         _block45964605_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e46004620_ (##vector-ref _block45964605_ '1))
                               (_ctx4623_ _e46004620_)
                               (_e46014625_ (##vector-ref _block45964605_ '2))
                               (_phi4628_ _e46014625_)
                               (_e46024630_ (##vector-ref _block45964605_ '3))
                               (_n4633_ _e46024630_)
                               (_e46034635_ (##vector-ref _block45964605_ '4))
                               (_code4638_ _e46034635_))
                          (_K45994617_ _code4638_ _n4633_ _phi4628_ _ctx4623_))
                        (_E45984609_))))
                '()
                (##structure-ref _state4592_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4588_)
      (let ((_ht4590_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4588_ _ht4590_)
          _ht4590_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4531_ _ht4532_)
      (let* ((_g45344547_
              (lambda (_g45354544_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45354544_)))
             (_g45334585_
              (lambda (_g45354550_)
                (if (gx#stx-pair? _g45354550_)
                    (let ((_e45374552_ (gx#stx-e _g45354550_)))
                      (let ((_hd45384555_ (##car _e45374552_))
                            (_tl45394557_ (##cdr _e45374552_)))
                        (if (gx#stx-pair? _tl45394557_)
                            (let ((_e45404560_ (gx#stx-e _tl45394557_)))
                              (let ((_hd45414563_ (##car _e45404560_))
                                    (_tl45424565_ (##cdr _e45404560_)))
                                (if (gx#stx-null? _tl45424565_)
                                    ((lambda (_L4568_)
                                       (let* ((_bind4580_
                                               (gx#resolve-identifier__0
                                                _L4568_))
                                              (_eid4582_
                                               (if _bind4580_
                                                   (##structure-ref
                                                    _bind4580_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4568_))))
                                         (table-set!
                                          _ht4532_
                                          _eid4582_
                                          _eid4582_)))
                                     _hd45414563_)
                                    (_g45344547_ _g45354550_))))
                            (_g45344547_ _g45354550_))))
                    (_g45344547_ _g45354550_)))))
        (_g45334585_ _stx4531_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4458_ _ht4459_)
      (let* ((_g44614478_
              (lambda (_g44624475_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44624475_)))
             (_g44604528_
              (lambda (_g44624481_)
                (if (gx#stx-pair? _g44624481_)
                    (let ((_e44654483_ (gx#stx-e _g44624481_)))
                      (let ((_hd44664486_ (##car _e44654483_))
                            (_tl44674488_ (##cdr _e44654483_)))
                        (if (gx#stx-pair? _tl44674488_)
                            (let ((_e44684491_ (gx#stx-e _tl44674488_)))
                              (let ((_hd44694494_ (##car _e44684491_))
                                    (_tl44704496_ (##cdr _e44684491_)))
                                (if (gx#stx-pair? _tl44704496_)
                                    (let ((_e44714499_
                                           (gx#stx-e _tl44704496_)))
                                      (let ((_hd44724502_ (##car _e44714499_))
                                            (_tl44734504_ (##cdr _e44714499_)))
                                        (if (gx#stx-null? _tl44734504_)
                                            ((lambda (_L4507_ _L4508_)
                                               (let* ((_bind4523_
                                                       (gx#resolve-identifier__0
                                                        _L4508_))
                                                      (_eid4525_
                                                       (if _bind4523_
                                                           (##structure-ref
                                                            _bind4523_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4508_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4459_
                                                    _eid4525_
                                                    _eid4525_)
                                                   (gxc#compile-e
                                                    _L4507_
                                                    _ht4459_))))
                                             _hd44724502_
                                             _hd44694494_)
                                            (_g44614478_ _g44624481_))))
                                    (_g44614478_ _g44624481_))))
                            (_g44614478_ _g44624481_))))
                    (_g44614478_ _g44624481_)))))
        (_g44604528_ _stx4458_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4420_)
      (let* ((_g44224432_
              (lambda (_g44234429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44234429_)))
             (_g44214455_
              (lambda (_g44234435_)
                (if (gx#stx-pair? _g44234435_)
                    (let ((_e44254437_ (gx#stx-e _g44234435_)))
                      (let ((_hd44264440_ (##car _e44254437_))
                            (_tl44274442_ (##cdr _e44254437_)))
                        ((lambda (_L4445_) (ormap1 gxc#compile-e _L4445_))
                         _tl44274442_)))
                    (_g44224432_ _g44234435_)))))
        (_g44214455_ _stx4420_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4382_)
      (let* ((_g43844394_
              (lambda (_g43854391_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43854391_)))
             (_g43834417_
              (lambda (_g43854397_)
                (if (gx#stx-pair? _g43854397_)
                    (let ((_e43874399_ (gx#stx-e _g43854397_)))
                      (let ((_hd43884402_ (##car _e43874399_))
                            (_tl43894404_ (##cdr _e43874399_)))
                        ((lambda (_L4407_) (gxc#compile-e (last _L4407_)))
                         _tl43894404_)))
                    (_g43844394_ _g43854397_)))))
        (_g43834417_ _stx4382_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4315_)
      (let* ((_g43174334_
              (lambda (_g43184331_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43184331_)))
             (_g43164379_
              (lambda (_g43184337_)
                (if (gx#stx-pair? _g43184337_)
                    (let ((_e43214339_ (gx#stx-e _g43184337_)))
                      (let ((_hd43224342_ (##car _e43214339_))
                            (_tl43234344_ (##cdr _e43214339_)))
                        (if (gx#stx-pair? _tl43234344_)
                            (let ((_e43244347_ (gx#stx-e _tl43234344_)))
                              (let ((_hd43254350_ (##car _e43244347_))
                                    (_tl43264352_ (##cdr _e43244347_)))
                                (if (gx#stx-pair? _tl43264352_)
                                    (let ((_e43274355_
                                           (gx#stx-e _tl43264352_)))
                                      (let ((_hd43284358_ (##car _e43274355_))
                                            (_tl43294360_ (##cdr _e43274355_)))
                                        (if (gx#stx-null? _tl43294360_)
                                            ((lambda (_L4363_ _L4364_)
                                               (gxc#compile-e _L4363_))
                                             _hd43284358_
                                             _hd43254350_)
                                            (_g43174334_ _g43184337_))))
                                    (_g43174334_ _g43184337_))))
                            (_g43174334_ _g43184337_))))
                    (_g43174334_ _g43184337_)))))
        (_g43164379_ _stx4315_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4248_)
      (let* ((_g42504267_
              (lambda (_g42514264_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42514264_)))
             (_g42494312_
              (lambda (_g42514270_)
                (if (gx#stx-pair? _g42514270_)
                    (let ((_e42544272_ (gx#stx-e _g42514270_)))
                      (let ((_hd42554275_ (##car _e42544272_))
                            (_tl42564277_ (##cdr _e42544272_)))
                        (if (gx#stx-pair? _tl42564277_)
                            (let ((_e42574280_ (gx#stx-e _tl42564277_)))
                              (let ((_hd42584283_ (##car _e42574280_))
                                    (_tl42594285_ (##cdr _e42574280_)))
                                (if (gx#stx-pair? _tl42594285_)
                                    (let ((_e42604288_
                                           (gx#stx-e _tl42594285_)))
                                      (let ((_hd42614291_ (##car _e42604288_))
                                            (_tl42624293_ (##cdr _e42604288_)))
                                        (if (gx#stx-null? _tl42624293_)
                                            ((lambda (_L4296_ _L4297_)
                                               (gxc#compile-e _L4296_))
                                             _hd42614291_
                                             _hd42584283_)
                                            (_g42504267_ _g42514270_))))
                                    (_g42504267_ _g42514270_))))
                            (_g42504267_ _g42514270_))))
                    (_g42504267_ _g42514270_)))))
        (_g42494312_ _stx4248_))))
  (define gxc#count-values-single% (lambda (_stx4246_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4164_)
      (let* ((_g41664185_
              (lambda (_g41674182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41674182_)))
             (_g41654243_
              (lambda (_g41674188_)
                (if (gx#stx-pair? _g41674188_)
                    (let ((_e41694190_ (gx#stx-e _g41674188_)))
                      (let ((_hd41704193_ (##car _e41694190_))
                            (_tl41714195_ (##cdr _e41694190_)))
                        (if (gx#stx-pair/null? _tl41714195_)
                            (if (fx>= (gx#stx-length _tl41714195_) '0)
                                (let ((_g12869_
                                       (gx#syntax-split-splice
                                        _tl41714195_
                                        '0)))
                                  (begin
                                    (let ((_g12870_
                                           (if (##values? _g12869_)
                                               (##vector-length _g12869_)
                                               1)))
                                      (if (not (##fx= _g12870_ 2))
                                          (error "Context expects 2 values"
                                                 _g12870_)))
                                    (let ((_target41724198_
                                           (##vector-ref _g12869_ 0))
                                          (_tl41744200_
                                           (##vector-ref _g12869_ 1)))
                                      (if (gx#stx-null? _tl41744200_)
                                          (letrec ((_loop41754203_
                                                    (lambda (_hd41734206_
                                                             _expr41794208_)
                                                      (if (gx#stx-pair?
                                                           _hd41734206_)
                                                          (let ((_e41764211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd41734206_)))
                    (let ((_lp-hd41774214_ (##car _e41764211_))
                          (_lp-tl41784216_ (##cdr _e41764211_)))
                      (_loop41754203_
                       _lp-tl41784216_
                       (cons _lp-hd41774214_ _expr41794208_))))
                  (let ((_expr41804219_ (reverse _expr41794208_)))
                    ((lambda (_L4222_)
                       (gxc#compile-e
                        (last (begin
                                '#!void
                                (foldr1 (lambda (_g42354238_ _g42364240_)
                                          (cons _g42354238_ _g42364240_))
                                        '()
                                        _L4222_)))))
                     _expr41804219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop41754203_
                                             _target41724198_
                                             '()))
                                          (_g41664185_ _g41674188_)))))
                                (_g41664185_ _g41674188_))
                            (_g41664185_ _g41674188_))))
                    (_g41664185_ _g41674188_)))))
        (_g41654243_ _stx4164_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4097_)
      (let* ((_g40994116_
              (lambda (_g41004113_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41004113_)))
             (_g40984161_
              (lambda (_g41004119_)
                (if (gx#stx-pair? _g41004119_)
                    (let ((_e41034121_ (gx#stx-e _g41004119_)))
                      (let ((_hd41044124_ (##car _e41034121_))
                            (_tl41054126_ (##cdr _e41034121_)))
                        (if (gx#stx-pair? _tl41054126_)
                            (let ((_e41064129_ (gx#stx-e _tl41054126_)))
                              (let ((_hd41074132_ (##car _e41064129_))
                                    (_tl41084134_ (##cdr _e41064129_)))
                                (if (gx#stx-pair? _tl41084134_)
                                    (let ((_e41094137_
                                           (gx#stx-e _tl41084134_)))
                                      (let ((_hd41104140_ (##car _e41094137_))
                                            (_tl41114142_ (##cdr _e41094137_)))
                                        (if (gx#stx-null? _tl41114142_)
                                            ((lambda (_L4145_ _L4146_)
                                               (gxc#compile-e _L4145_))
                                             _hd41104140_
                                             _hd41074132_)
                                            (_g40994116_ _g41004119_))))
                                    (_g40994116_ _g41004119_))))
                            (_g40994116_ _g41004119_))))
                    (_g40994116_ _g41004119_)))))
        (_g40984161_ _stx4097_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4030_)
      (let* ((_g40324049_
              (lambda (_g40334046_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40334046_)))
             (_g40314094_
              (lambda (_g40334052_)
                (if (gx#stx-pair? _g40334052_)
                    (let ((_e40364054_ (gx#stx-e _g40334052_)))
                      (let ((_hd40374057_ (##car _e40364054_))
                            (_tl40384059_ (##cdr _e40364054_)))
                        (if (gx#stx-pair? _tl40384059_)
                            (let ((_e40394062_ (gx#stx-e _tl40384059_)))
                              (let ((_hd40404065_ (##car _e40394062_))
                                    (_tl40414067_ (##cdr _e40394062_)))
                                (if (gx#stx-pair? _tl40414067_)
                                    (let ((_e40424070_
                                           (gx#stx-e _tl40414067_)))
                                      (let ((_hd40434073_ (##car _e40424070_))
                                            (_tl40444075_ (##cdr _e40424070_)))
                                        (if (gx#stx-null? _tl40444075_)
                                            ((lambda (_L4078_ _L4079_)
                                               (gxc#compile-e _L4078_))
                                             _hd40434073_
                                             _hd40404065_)
                                            (_g40324049_ _g40334052_))))
                                    (_g40324049_ _g40334052_))))
                            (_g40324049_ _g40334052_))))
                    (_g40324049_ _g40334052_)))))
        (_g40314094_ _stx4030_))))
  (define gxc#count-values-call%
    (lambda (_stx3897_)
      (let* ((_g39003929_
              (lambda (_g39013926_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g39013926_)))
             (_g38993936_ (lambda (_g39013932_) ((lambda () '#f))))
             (_g38984027_
              (lambda (_g39013939_)
                (if (gx#stx-pair? _g39013939_)
                    (let ((_e39043941_ (gx#stx-e _g39013939_)))
                      (let ((_hd39053944_ (##car _e39043941_))
                            (_tl39063946_ (##cdr _e39043941_)))
                        (if (gx#stx-pair? _tl39063946_)
                            (let ((_e39073949_ (gx#stx-e _tl39063946_)))
                              (let ((_hd39083952_ (##car _e39073949_))
                                    (_tl39093954_ (##cdr _e39073949_)))
                                (if (gx#stx-pair? _hd39083952_)
                                    (let ((_e39103957_
                                           (gx#stx-e _hd39083952_)))
                                      (let ((_hd39113960_ (##car _e39103957_))
                                            (_tl39123962_ (##cdr _e39103957_)))
                                        (if (gx#identifier? _hd39113960_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd39113960_)
                                                (if (gx#stx-pair? _tl39123962_)
                                                    (let ((_e39133965_
                                                           (gx#stx-e
                                                            _tl39123962_)))
                                                      (let ((_hd39143968_
                                                             (##car _e39133965_))
                                                            (_tl39153970_
                                                             (##cdr _e39133965_)))
                                                        (if (gx#stx-null?
                                                             _tl39153970_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl39093954_)
                        (if (fx>= (gx#stx-length _tl39093954_) '0)
                            (let ((_g12871_
                                   (gx#syntax-split-splice _tl39093954_ '0)))
                              (begin
                                (let ((_g12872_
                                       (if (##values? _g12871_)
                                           (##vector-length _g12871_)
                                           1)))
                                  (if (not (##fx= _g12872_ 2))
                                      (error "Context expects 2 values"
                                             _g12872_)))
                                (let ((_target39163973_
                                       (##vector-ref _g12871_ 0))
                                      (_tl39183975_ (##vector-ref _g12871_ 1)))
                                  (if (gx#stx-null? _tl39183975_)
                                      (letrec ((_loop39193978_
                                                (lambda (_hd39173981_
                                                         _rand39233983_)
                                                  (if (gx#stx-pair?
                                                       _hd39173981_)
                                                      (let ((_e39203986_
                                                             (gx#stx-e
                                                              _hd39173981_)))
                                                        (let ((_lp-hd39213989_
                                                               (##car _e39203986_))
                                                              (_lp-tl39223991_
                                                               (##cdr _e39203986_)))
                                                          (_loop39193978_
                                                           _lp-tl39223991_
                                                           (cons _lp-hd39213989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rand39233983_))))
              (let ((_rand39243994_ (reverse _rand39233983_)))
                ((lambda (_L3997_ _L3998_)
                   (if (gx#free-identifier=? _L3998_ 'values)
                       (length (begin
                                 '#!void
                                 (foldr1 (lambda (_g40194022_ _g40204024_)
                                           (cons _g40194022_ _g40204024_))
                                         '()
                                         _L3997_)))
                       (_g38993936_ _g39013939_)))
                 _rand39243994_
                 _hd39143968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop39193978_ _target39163973_ '()))
                                      (_g38993936_ _g39013939_)))))
                            (_g38993936_ _g39013939_))
                        (_g38993936_ _g39013939_))
                    (_g38993936_ _g39013939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g38993936_ _g39013939_))
                                                (_g38993936_ _g39013939_))
                                            (_g38993936_ _g39013939_))))
                                    (_g38993936_ _g39013939_))))
                            (_g38993936_ _g39013939_))))
                    (_g38993936_ _g39013939_)))))
        (_g38984027_ _stx3897_))))
  (define gxc#count-values-if%
    (lambda (_stx3801_)
      (let* ((_g38033824_
              (lambda (_g38043821_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38043821_)))
             (_g38023894_
              (lambda (_g38043827_)
                (if (gx#stx-pair? _g38043827_)
                    (let ((_e38083829_ (gx#stx-e _g38043827_)))
                      (let ((_hd38093832_ (##car _e38083829_))
                            (_tl38103834_ (##cdr _e38083829_)))
                        (if (gx#stx-pair? _tl38103834_)
                            (let ((_e38113837_ (gx#stx-e _tl38103834_)))
                              (let ((_hd38123840_ (##car _e38113837_))
                                    (_tl38133842_ (##cdr _e38113837_)))
                                (if (gx#stx-pair? _tl38133842_)
                                    (let ((_e38143845_
                                           (gx#stx-e _tl38133842_)))
                                      (let ((_hd38153848_ (##car _e38143845_))
                                            (_tl38163850_ (##cdr _e38143845_)))
                                        (if (gx#stx-pair? _tl38163850_)
                                            (let ((_e38173853_
                                                   (gx#stx-e _tl38163850_)))
                                              (let ((_hd38183856_
                                                     (##car _e38173853_))
                                                    (_tl38193858_
                                                     (##cdr _e38173853_)))
                                                (if (gx#stx-null? _tl38193858_)
                                                    ((lambda (_L3861_
                                                              _L3862_
                                                              _L3863_)
                                                       (let ((_c138803882_
                                                              (gxc#compile-e
                                                               _L3862_)))
                                                         (if _c138803882_
                                                             (let* ((_c13885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c138803882_)
                            (_c238863888_ (gxc#compile-e _L3861_)))
                       (if _c238863888_
                           (let ((_c23891_ _c238863888_))
                             (if (fx= _c13885_ _c23891_) _c13885_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38183856_
                                                     _hd38153848_
                                                     _hd38123840_)
                                                    (_g38033824_
                                                     _g38043827_))))
                                            (_g38033824_ _g38043827_))))
                                    (_g38033824_ _g38043827_))))
                            (_g38033824_ _g38043827_))))
                    (_g38033824_ _g38043827_)))))
        (_g38023894_ _stx3801_)))))
