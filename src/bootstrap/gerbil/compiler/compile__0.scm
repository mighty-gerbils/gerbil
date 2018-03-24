(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx13044_ . _args13045_)
      (let* ((_g1304713057_
              (lambda (_g1304813054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1304813054_)))
             (_g1304613085_
              (lambda (_g1304813060_)
                (if (gx#stx-pair? _g1304813060_)
                    (let ((_e1305013062_ (gx#stx-e _g1304813060_)))
                      (let ((_hd1305113065_ (##car _e1305013062_))
                            (_tl1305213067_ (##cdr _e1305013062_)))
                        ((lambda (_L13070_)
                           (let ((_$e13080_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L13070_)
                                   '#f)))
                             (if _$e13080_
                                 ((lambda (_method13083_)
                                    (apply _method13083_
                                           _stx13044_
                                           _args13045_))
                                  _$e13080_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx13044_
                                  _L13070_))))
                         _hd1305113065_)))
                    (_g1304713057_ _g1304813060_)))))
        (_g1304613085_ _stx13044_))))
  (define gxc#&void-expression
    (##make-promise
     (lambda ()
       (let ((_tbl13041_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13041_ '%#begin-annotation void)
           (table-set! _tbl13041_ '%#lambda void)
           (table-set! _tbl13041_ '%#case-lambda void)
           (table-set! _tbl13041_ '%#let-values void)
           (table-set! _tbl13041_ '%#letrec-values void)
           (table-set! _tbl13041_ '%#letrec*-values void)
           (table-set! _tbl13041_ '%#quote void)
           (table-set! _tbl13041_ '%#quote-syntax void)
           (table-set! _tbl13041_ '%#call void)
           (table-set! _tbl13041_ '%#if void)
           (table-set! _tbl13041_ '%#ref void)
           (table-set! _tbl13041_ '%#set! void)
           (table-set! _tbl13041_ '%#struct-instance? void)
           (table-set! _tbl13041_ '%#struct-direct-instance? void)
           (table-set! _tbl13041_ '%#struct-ref void)
           (table-set! _tbl13041_ '%#struct-set! void)
           (table-set! _tbl13041_ '%#struct-direct-ref void)
           (table-set! _tbl13041_ '%#struct-direct-set! void)
           (table-set! _tbl13041_ '%#struct-unchecked-ref void)
           (table-set! _tbl13041_ '%#struct-unchecked-set! void)
           _tbl13041_)))))
  (define gxc#&void-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl13037_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13037_ '%#begin void)
           (table-set! _tbl13037_ '%#begin-syntax void)
           (table-set! _tbl13037_ '%#begin-foreign void)
           (table-set! _tbl13037_ '%#module void)
           (table-set! _tbl13037_ '%#import void)
           (table-set! _tbl13037_ '%#export void)
           (table-set! _tbl13037_ '%#provide void)
           (table-set! _tbl13037_ '%#extern void)
           (table-set! _tbl13037_ '%#define-values void)
           (table-set! _tbl13037_ '%#define-syntax void)
           (table-set! _tbl13037_ '%#define-alias void)
           (table-set! _tbl13037_ '%#declare void)
           _tbl13037_)))))
  (define gxc#&void
    (##make-promise
     (lambda ()
       (let ((_tbl13033_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13033_ (force gxc#&void-special-form))
           (hash-copy! _tbl13033_ (force gxc#&void-expression))
           _tbl13033_)))))
  (define gxc#&false-expression
    (##make-promise
     (lambda ()
       (let ((_tbl13029_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13029_ '%#begin-annotation false)
           (table-set! _tbl13029_ '%#lambda false)
           (table-set! _tbl13029_ '%#case-lambda false)
           (table-set! _tbl13029_ '%#let-values false)
           (table-set! _tbl13029_ '%#letrec-values false)
           (table-set! _tbl13029_ '%#letrec*-values false)
           (table-set! _tbl13029_ '%#quote false)
           (table-set! _tbl13029_ '%#quote-syntax false)
           (table-set! _tbl13029_ '%#call false)
           (table-set! _tbl13029_ '%#if false)
           (table-set! _tbl13029_ '%#ref false)
           (table-set! _tbl13029_ '%#set! false)
           (table-set! _tbl13029_ '%#struct-instance? false)
           (table-set! _tbl13029_ '%#struct-direct-instance? false)
           (table-set! _tbl13029_ '%#struct-ref false)
           (table-set! _tbl13029_ '%#struct-set! false)
           (table-set! _tbl13029_ '%#struct-direct-ref false)
           (table-set! _tbl13029_ '%#struct-direct-set! false)
           (table-set! _tbl13029_ '%#struct-unchecked-ref false)
           (table-set! _tbl13029_ '%#struct-unchecked-set! false)
           _tbl13029_)))))
  (define gxc#&false-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl13025_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl13025_ '%#begin false)
           (table-set! _tbl13025_ '%#begin-syntax false)
           (table-set! _tbl13025_ '%#begin-foreign false)
           (table-set! _tbl13025_ '%#module false)
           (table-set! _tbl13025_ '%#import false)
           (table-set! _tbl13025_ '%#export false)
           (table-set! _tbl13025_ '%#provide false)
           (table-set! _tbl13025_ '%#extern false)
           (table-set! _tbl13025_ '%#define-values false)
           (table-set! _tbl13025_ '%#define-syntax false)
           (table-set! _tbl13025_ '%#define-alias false)
           (table-set! _tbl13025_ '%#declare false)
           _tbl13025_)))))
  (define gxc#&false
    (##make-promise
     (lambda ()
       (let ((_tbl13021_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13021_ (force gxc#&false-special-form))
           (hash-copy! _tbl13021_ (force gxc#&false-expression))
           _tbl13021_)))))
  (define gxc#&collect-bindings
    (##make-promise
     (lambda ()
       (let ((_tbl13017_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13017_ (force gxc#&void-expression))
           (hash-copy! _tbl13017_ (force gxc#&void-special-form))
           (table-set! _tbl13017_ '%#begin gxc#collect-begin%)
           (table-set! _tbl13017_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl13017_ '%#module gxc#collect-module%)
           (table-set!
            _tbl13017_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl13017_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl13017_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx13010_ . _args13012_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13010_ _args13012_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (##make-promise
     (lambda ()
       (let ((_tbl13007_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl13007_ (force gxc#&void))
           (table-set! _tbl13007_ '%#begin gxc#collect-begin%)
           (table-set! _tbl13007_ '%#module gxc#lift-modules-module%)
           _tbl13007_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx13000_ . _args13002_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx13000_ _args13002_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (##make-promise
     (lambda ()
       (let ((_tbl12997_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12997_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12997_ '%#begin-syntax false)
           (table-set! _tbl12997_ '%#begin-foreign true)
           (table-set! _tbl12997_ '%#begin-annotation true)
           (table-set! _tbl12997_ '%#module false)
           (table-set! _tbl12997_ '%#import false)
           (table-set! _tbl12997_ '%#export false)
           (table-set! _tbl12997_ '%#provide false)
           (table-set! _tbl12997_ '%#extern false)
           (table-set! _tbl12997_ '%#define-values true)
           (table-set! _tbl12997_ '%#define-syntax false)
           (table-set! _tbl12997_ '%#define-alias false)
           (table-set! _tbl12997_ '%#declare false)
           (table-set! _tbl12997_ '%#lambda true)
           (table-set! _tbl12997_ '%#case-lambda true)
           (table-set! _tbl12997_ '%#let-values true)
           (table-set! _tbl12997_ '%#letrec-values true)
           (table-set! _tbl12997_ '%#letrec*-values true)
           (table-set! _tbl12997_ '%#quote true)
           (table-set! _tbl12997_ '%#call true)
           (table-set! _tbl12997_ '%#if true)
           (table-set! _tbl12997_ '%#ref true)
           (table-set! _tbl12997_ '%#set! true)
           (table-set! _tbl12997_ '%#struct-instance? true)
           (table-set! _tbl12997_ '%#struct-direct-instance? true)
           (table-set! _tbl12997_ '%#struct-ref true)
           (table-set! _tbl12997_ '%#struct-set! true)
           (table-set! _tbl12997_ '%#struct-direct-ref true)
           (table-set! _tbl12997_ '%#struct-direct-set! true)
           (table-set! _tbl12997_ '%#struct-unchecked-ref true)
           (table-set! _tbl12997_ '%#struct-unchecked-set! true)
           _tbl12997_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12990_ . _args12992_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12990_ _args12992_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (##make-promise
     (lambda ()
       (let ((_tbl12987_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12987_ (force gxc#&false))
           (table-set! _tbl12987_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12987_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12987_ '%#lambda values)
           (table-set! _tbl12987_ '%#case-lambda values)
           (table-set!
            _tbl12987_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12987_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12987_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12987_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12980_ . _args12982_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12980_ _args12982_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (##make-promise
     (lambda ()
       (let ((_tbl12977_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12977_ (force gxc#&false-expression))
           (table-set! _tbl12977_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12977_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12977_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12977_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12977_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12977_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12977_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12977_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12977_ '%#call gxc#count-values-call%)
           (table-set! _tbl12977_ '%#if gxc#count-values-if%)
           _tbl12977_)))))
  (define gxc#apply-count-values
    (lambda (_stx12970_ . _args12972_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12970_ _args12972_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (##make-promise
     (lambda ()
       (let ((_tbl12967_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12967_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12967_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12967_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12967_)))))
  (define gxc#&generate-loader
    (##make-promise
     (lambda ()
       (let ((_tbl12963_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12963_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12963_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12963_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12963_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12956_ . _args12958_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12956_ _args12958_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (##make-promise
     (lambda ()
       (let ((_tbl12953_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12953_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12953_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12953_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12953_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12953_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12953_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12953_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12953_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12953_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12953_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12953_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12953_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12953_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12953_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12953_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12953_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12953_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12953_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12953_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12953_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12953_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12953_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12953_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12953_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12953_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12953_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12946_ . _args12948_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12946_ _args12948_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (##make-promise
     (lambda ()
       (let ((_tbl12943_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12943_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12943_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12943_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12936_ . _args12938_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12936_ _args12938_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (##make-promise
     (lambda ()
       (let ((_tbl12933_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12933_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12933_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12933_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12933_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12933_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12933_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12933_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12933_ '%#quote void)
           (table-set! _tbl12933_ '%#quote-syntax void)
           (table-set! _tbl12933_ '%#call gxc#collect-operands)
           (table-set! _tbl12933_ '%#if gxc#collect-operands)
           (table-set! _tbl12933_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12933_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12933_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12933_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12933_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12933_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12933_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12933_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12933_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12933_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12933_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12926_ . _args12928_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12926_ _args12928_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (##make-promise
     (lambda ()
       (let ((_tbl12923_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12923_ (force gxc#&void-expression))
           (table-set! _tbl12923_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12923_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12923_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12923_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12923_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12923_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12923_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12923_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12923_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12923_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12923_ '%#begin-foreign void)
           (table-set! _tbl12923_ '%#declare void)
           _tbl12923_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12916_ . _args12918_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12916_ _args12918_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (##make-promise
     (lambda ()
       (let ((_tbl12913_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12913_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12913_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12913_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12913_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12913_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12913_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12913_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12913_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12913_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12913_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12913_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12913_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12913_ '%#declare void)
           _tbl12913_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12906_ . _args12908_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12906_ _args12908_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12863_ . _args12864_)
      (let* ((_g1286612876_
              (lambda (_g1286712873_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1286712873_)))
             (_g1286512903_
              (lambda (_g1286712879_)
                (if (gx#stx-pair? _g1286712879_)
                    (let ((_e1286912881_ (gx#stx-e _g1286712879_)))
                      (let ((_hd1287012884_ (##car _e1286912881_))
                            (_tl1287112886_ (##cdr _e1286912881_)))
                        ((lambda (_L12889_)
                           (for-each
                            (lambda (_g1289812900_)
                              (apply gxc#compile-e _g1289812900_ _args12864_))
                            (gx#stx-e _L12889_)))
                         _tl1287112886_)))
                    (_g1286612876_ _g1286712879_)))))
        (_g1286512903_ _stx12863_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12859_ . _args12860_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx12859_ _args12860_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx12801_ . _args12802_)
      (let* ((_g1280412818_
              (lambda (_g1280512815_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1280512815_)))
             (_g1280312856_
              (lambda (_g1280512821_)
                (if (gx#stx-pair? _g1280512821_)
                    (let ((_e1280812823_ (gx#stx-e _g1280512821_)))
                      (let ((_hd1280912826_ (##car _e1280812823_))
                            (_tl1281012828_ (##cdr _e1280812823_)))
                        (if (gx#stx-pair? _tl1281012828_)
                            (let ((_e1281112831_ (gx#stx-e _tl1281012828_)))
                              (let ((_hd1281212834_ (##car _e1281112831_))
                                    (_tl1281312836_ (##cdr _e1281112831_)))
                                ((lambda (_L12839_ _L12840_)
                                   (let ((_ctx12853_
                                          (gx#syntax-local-e__0 _L12840_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12853_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12802_))
                                      gx#current-expander-context
                                      _ctx12853_)))
                                 _tl1281312836_
                                 _hd1281212834_)))
                            (_g1280412818_ _g1280512821_))))
                    (_g1280412818_ _g1280512821_)))))
        (_g1280312856_ _stx12801_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12733_ . _args12734_)
      (let* ((_g1273612753_
              (lambda (_g1273712750_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1273712750_)))
             (_g1273512798_
              (lambda (_g1273712756_)
                (if (gx#stx-pair? _g1273712756_)
                    (let ((_e1274012758_ (gx#stx-e _g1273712756_)))
                      (let ((_hd1274112761_ (##car _e1274012758_))
                            (_tl1274212763_ (##cdr _e1274012758_)))
                        (if (gx#stx-pair? _tl1274212763_)
                            (let ((_e1274312766_ (gx#stx-e _tl1274212763_)))
                              (let ((_hd1274412769_ (##car _e1274312766_))
                                    (_tl1274512771_ (##cdr _e1274312766_)))
                                (if (gx#stx-pair? _tl1274512771_)
                                    (let ((_e1274612774_
                                           (gx#stx-e _tl1274512771_)))
                                      (let ((_hd1274712777_
                                             (##car _e1274612774_))
                                            (_tl1274812779_
                                             (##cdr _e1274612774_)))
                                        (if (gx#stx-null? _tl1274812779_)
                                            ((lambda (_L12782_ _L12783_)
                                               (apply gxc#compile-e
                                                      _L12782_
                                                      _args12734_))
                                             _hd1274712777_
                                             _hd1274412769_)
                                            (_g1273612753_ _g1273712756_))))
                                    (_g1273612753_ _g1273712756_))))
                            (_g1273612753_ _g1273712756_))))
                    (_g1273612753_ _g1273712756_)))))
        (_g1273512798_ _stx12733_))))
  (define gxc#collect-define-values%
    (lambda (_stx12665_ . _args12666_)
      (let* ((_g1266812685_
              (lambda (_g1266912682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1266912682_)))
             (_g1266712730_
              (lambda (_g1266912688_)
                (if (gx#stx-pair? _g1266912688_)
                    (let ((_e1267212690_ (gx#stx-e _g1266912688_)))
                      (let ((_hd1267312693_ (##car _e1267212690_))
                            (_tl1267412695_ (##cdr _e1267212690_)))
                        (if (gx#stx-pair? _tl1267412695_)
                            (let ((_e1267512698_ (gx#stx-e _tl1267412695_)))
                              (let ((_hd1267612701_ (##car _e1267512698_))
                                    (_tl1267712703_ (##cdr _e1267512698_)))
                                (if (gx#stx-pair? _tl1267712703_)
                                    (let ((_e1267812706_
                                           (gx#stx-e _tl1267712703_)))
                                      (let ((_hd1267912709_
                                             (##car _e1267812706_))
                                            (_tl1268012711_
                                             (##cdr _e1267812706_)))
                                        (if (gx#stx-null? _tl1268012711_)
                                            ((lambda (_L12714_ _L12715_)
                                               (apply gxc#compile-e
                                                      _L12714_
                                                      _args12666_))
                                             _hd1267912709_
                                             _hd1267612701_)
                                            (_g1266812685_ _g1266912688_))))
                                    (_g1266812685_ _g1266912688_))))
                            (_g1266812685_ _g1266912688_))))
                    (_g1266812685_ _g1266912688_)))))
        (_g1266712730_ _stx12665_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx12596_ . _args12597_)
      (let* ((_g1259912616_
              (lambda (_g1260012613_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1260012613_)))
             (_g1259812662_
              (lambda (_g1260012619_)
                (if (gx#stx-pair? _g1260012619_)
                    (let ((_e1260312621_ (gx#stx-e _g1260012619_)))
                      (let ((_hd1260412624_ (##car _e1260312621_))
                            (_tl1260512626_ (##cdr _e1260312621_)))
                        (if (gx#stx-pair? _tl1260512626_)
                            (let ((_e1260612629_ (gx#stx-e _tl1260512626_)))
                              (let ((_hd1260712632_ (##car _e1260612629_))
                                    (_tl1260812634_ (##cdr _e1260612629_)))
                                (if (gx#stx-pair? _tl1260812634_)
                                    (let ((_e1260912637_
                                           (gx#stx-e _tl1260812634_)))
                                      (let ((_hd1261012640_
                                             (##car _e1260912637_))
                                            (_tl1261112642_
                                             (##cdr _e1260912637_)))
                                        (if (gx#stx-null? _tl1261112642_)
                                            ((lambda (_L12645_ _L12646_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L12645_
                                                         _args12597_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1261012640_
                                             _hd1260712632_)
                                            (_g1259912616_ _g1260012619_))))
                                    (_g1259912616_ _g1260012619_))))
                            (_g1259912616_ _g1260012619_))))
                    (_g1259912616_ _g1260012619_)))))
        (_g1259812662_ _stx12596_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12528_ . _args12529_)
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
                                               (apply gxc#compile-e
                                                      _L12577_
                                                      _args12529_))
                                             _hd1254212572_
                                             _hd1253912564_)
                                            (_g1253112548_ _g1253212551_))))
                                    (_g1253112548_ _g1253212551_))))
                            (_g1253112548_ _g1253212551_))))
                    (_g1253112548_ _g1253212551_)))))
        (_g1253012593_ _stx12528_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12410_ . _args12411_)
      (let* ((_g1241312441_
              (lambda (_g1241412438_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1241412438_)))
             (_g1241212525_
              (lambda (_g1241412444_)
                (if (gx#stx-pair? _g1241412444_)
                    (let ((_e1241712446_ (gx#stx-e _g1241412444_)))
                      (let ((_hd1241812449_ (##car _e1241712446_))
                            (_tl1241912451_ (##cdr _e1241712446_)))
                        (if (gx#stx-pair/null? _tl1241912451_)
                            (let ((_g14260_
                                   (gx#syntax-split-splice _tl1241912451_ '0)))
                              (begin
                                (let ((_g14261_
                                       (if (##values? _g14260_)
                                           (##vector-length _g14260_)
                                           1)))
                                  (if (not (##fx= _g14261_ 2))
                                      (error "Context expects 2 values"
                                             _g14261_)))
                                (let ((_target1242012454_
                                       (##vector-ref _g14260_ 0))
                                      (_tl1242212456_
                                       (##vector-ref _g14260_ 1)))
                                  (if (gx#stx-null? _tl1242212456_)
                                      (letrec ((_loop1242312459_
                                                (lambda (_hd1242112462_
                                                         _body1242712464_
                                                         _hd1242812466_)
                                                  (if (gx#stx-pair?
                                                       _hd1242112462_)
                                                      (let ((_e1242412469_
                                                             (gx#stx-e
                                                              _hd1242112462_)))
                                                        (let ((_lp-hd1242512472_
                                                               (##car _e1242412469_))
                                                              (_lp-tl1242612474_
                                                               (##cdr _e1242412469_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1242512472_)
                                                              (let ((_e1243112477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1242512472_)))
                        (let ((_hd1243212480_ (##car _e1243112477_))
                              (_tl1243312482_ (##cdr _e1243112477_)))
                          (if (gx#stx-pair? _tl1243312482_)
                              (let ((_e1243412485_ (gx#stx-e _tl1243312482_)))
                                (let ((_hd1243512488_ (##car _e1243412485_))
                                      (_tl1243612490_ (##cdr _e1243412485_)))
                                  (if (gx#stx-null? _tl1243612490_)
                                      (_loop1242312459_
                                       _lp-tl1242612474_
                                       (cons _hd1243512488_ _body1242712464_)
                                       (cons _hd1243212480_ _hd1242812466_))
                                      (_g1241312441_ _g1241412444_))))
                              (_g1241312441_ _g1241412444_))))
                      (_g1241312441_ _g1241412444_))))
              (let ((_body1242912493_ (reverse _body1242712464_))
                    (_hd1243012495_ (reverse _hd1242812466_)))
                ((lambda (_L12498_ _L12499_)
                   (for-each
                    (lambda (_g1251312515_)
                      (apply gxc#compile-e _g1251312515_ _args12411_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1251712520_ _g1251812522_)
                                (cons _g1251712520_ _g1251812522_))
                              '()
                              _L12498_))))
                 _body1242912493_
                 _hd1243012495_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1242312459_
                                         _target1242012454_
                                         '()
                                         '()))
                                      (_g1241312441_ _g1241412444_)))))
                            (_g1241312441_ _g1241412444_))))
                    (_g1241312441_ _g1241412444_)))))
        (_g1241212525_ _stx12410_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12263_ . _args12264_)
      (let* ((_g1226612301_
              (lambda (_g1226712298_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1226712298_)))
             (_g1226512407_
              (lambda (_g1226712304_)
                (if (gx#stx-pair? _g1226712304_)
                    (let ((_e1227112306_ (gx#stx-e _g1226712304_)))
                      (let ((_hd1227212309_ (##car _e1227112306_))
                            (_tl1227312311_ (##cdr _e1227112306_)))
                        (if (gx#stx-pair? _tl1227312311_)
                            (let ((_e1227412314_ (gx#stx-e _tl1227312311_)))
                              (let ((_hd1227512317_ (##car _e1227412314_))
                                    (_tl1227612319_ (##cdr _e1227412314_)))
                                (if (gx#stx-pair/null? _hd1227512317_)
                                    (let ((_g14262_
                                           (gx#syntax-split-splice
                                            _hd1227512317_
                                            '0)))
                                      (begin
                                        (let ((_g14263_
                                               (if (##values? _g14262_)
                                                   (##vector-length _g14262_)
                                                   1)))
                                          (if (not (##fx= _g14263_ 2))
                                              (error "Context expects 2 values"
                                                     _g14263_)))
                                        (let ((_target1227712322_
                                               (##vector-ref _g14262_ 0))
                                              (_tl1227912324_
                                               (##vector-ref _g14262_ 1)))
                                          (if (gx#stx-null? _tl1227912324_)
                                              (letrec ((_loop1228012327_
                                                        (lambda (_hd1227812330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1228412332_
                         _hd1228512334_)
                  (if (gx#stx-pair? _hd1227812330_)
                      (let ((_e1228112337_ (gx#stx-e _hd1227812330_)))
                        (let ((_lp-hd1228212340_ (##car _e1228112337_))
                              (_lp-tl1228312342_ (##cdr _e1228112337_)))
                          (if (gx#stx-pair? _lp-hd1228212340_)
                              (let ((_e1228812345_
                                     (gx#stx-e _lp-hd1228212340_)))
                                (let ((_hd1228912348_ (##car _e1228812345_))
                                      (_tl1229012350_ (##cdr _e1228812345_)))
                                  (if (gx#stx-pair? _tl1229012350_)
                                      (let ((_e1229112353_
                                             (gx#stx-e _tl1229012350_)))
                                        (let ((_hd1229212356_
                                               (##car _e1229112353_))
                                              (_tl1229312358_
                                               (##cdr _e1229112353_)))
                                          (if (gx#stx-null? _tl1229312358_)
                                              (_loop1228012327_
                                               _lp-tl1228312342_
                                               (cons _hd1229212356_
                                                     _expr1228412332_)
                                               (cons _hd1228912348_
                                                     _hd1228512334_))
                                              (_g1226612301_ _g1226712304_))))
                                      (_g1226612301_ _g1226712304_))))
                              (_g1226612301_ _g1226712304_))))
                      (let ((_expr1228612361_ (reverse _expr1228412332_))
                            (_hd1228712363_ (reverse _hd1228512334_)))
                        (if (gx#stx-pair? _tl1227612319_)
                            (let ((_e1229412366_ (gx#stx-e _tl1227612319_)))
                              (let ((_hd1229512369_ (##car _e1229412366_))
                                    (_tl1229612371_ (##cdr _e1229412366_)))
                                (if (gx#stx-null? _tl1229612371_)
                                    ((lambda (_L12374_ _L12375_ _L12376_)
                                       (for-each
                                        (lambda (_g1239512397_)
                                          (apply gxc#compile-e
                                                 _g1239512397_
                                                 _args12264_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1239912402_
                                                           _g1240012404_)
                                                    (cons _g1239912402_
                                                          _g1240012404_))
                                                  (cons _L12374_ '())
                                                  _L12375_))))
                                     _hd1229512369_
                                     _expr1228612361_
                                     _hd1228712363_)
                                    (_g1226612301_ _g1226712304_))))
                            (_g1226612301_ _g1226712304_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1228012327_
                                                 _target1227712322_
                                                 '()
                                                 '()))
                                              (_g1226612301_ _g1226712304_)))))
                                    (_g1226612301_ _g1226712304_))))
                            (_g1226612301_ _g1226712304_))))
                    (_g1226612301_ _g1226712304_)))))
        (_g1226512407_ _stx12263_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12195_ . _args12196_)
      (let* ((_g1219812215_
              (lambda (_g1219912212_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1219912212_)))
             (_g1219712260_
              (lambda (_g1219912218_)
                (if (gx#stx-pair? _g1219912218_)
                    (let ((_e1220212220_ (gx#stx-e _g1219912218_)))
                      (let ((_hd1220312223_ (##car _e1220212220_))
                            (_tl1220412225_ (##cdr _e1220212220_)))
                        (if (gx#stx-pair? _tl1220412225_)
                            (let ((_e1220512228_ (gx#stx-e _tl1220412225_)))
                              (let ((_hd1220612231_ (##car _e1220512228_))
                                    (_tl1220712233_ (##cdr _e1220512228_)))
                                (if (gx#stx-pair? _tl1220712233_)
                                    (let ((_e1220812236_
                                           (gx#stx-e _tl1220712233_)))
                                      (let ((_hd1220912239_
                                             (##car _e1220812236_))
                                            (_tl1221012241_
                                             (##cdr _e1220812236_)))
                                        (if (gx#stx-null? _tl1221012241_)
                                            ((lambda (_L12244_ _L12245_)
                                               (apply gxc#compile-e
                                                      _L12244_
                                                      _args12196_))
                                             _hd1220912239_
                                             _hd1220612231_)
                                            (_g1219812215_ _g1219912218_))))
                                    (_g1219812215_ _g1219912218_))))
                            (_g1219812215_ _g1219912218_))))
                    (_g1219812215_ _g1219912218_)))))
        (_g1219712260_ _stx12195_))))
  (define gxc#collect-operands
    (lambda (_stx12108_ . _args12109_)
      (let* ((_g1211112130_
              (lambda (_g1211212127_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1211212127_)))
             (_g1211012192_
              (lambda (_g1211212133_)
                (if (gx#stx-pair? _g1211212133_)
                    (let ((_e1211412135_ (gx#stx-e _g1211212133_)))
                      (let ((_hd1211512138_ (##car _e1211412135_))
                            (_tl1211612140_ (##cdr _e1211412135_)))
                        (if (gx#stx-pair/null? _tl1211612140_)
                            (let ((_g14264_
                                   (gx#syntax-split-splice _tl1211612140_ '0)))
                              (begin
                                (let ((_g14265_
                                       (if (##values? _g14264_)
                                           (##vector-length _g14264_)
                                           1)))
                                  (if (not (##fx= _g14265_ 2))
                                      (error "Context expects 2 values"
                                             _g14265_)))
                                (let ((_target1211712143_
                                       (##vector-ref _g14264_ 0))
                                      (_tl1211912145_
                                       (##vector-ref _g14264_ 1)))
                                  (if (gx#stx-null? _tl1211912145_)
                                      (letrec ((_loop1212012148_
                                                (lambda (_hd1211812151_
                                                         _rands1212412153_)
                                                  (if (gx#stx-pair?
                                                       _hd1211812151_)
                                                      (let ((_e1212112156_
                                                             (gx#stx-e
                                                              _hd1211812151_)))
                                                        (let ((_lp-hd1212212159_
                                                               (##car _e1212112156_))
                                                              (_lp-tl1212312161_
                                                               (##cdr _e1212112156_)))
                                                          (_loop1212012148_
                                                           _lp-tl1212312161_
                                                           (cons _lp-hd1212212159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1212412153_))))
              (let ((_rands1212512164_ (reverse _rands1212412153_)))
                ((lambda (_L12167_)
                   (for-each
                    (lambda (_g1218012182_)
                      (apply gxc#compile-e _g1218012182_ _args12109_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1218412187_ _g1218512189_)
                                (cons _g1218412187_ _g1218512189_))
                              '()
                              _L12167_))))
                 _rands1212512164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1212012148_
                                         _target1211712143_
                                         '()))
                                      (_g1211112130_ _g1211212133_)))))
                            (_g1211112130_ _g1211212133_))))
                    (_g1211112130_ _g1211212133_)))))
        (_g1211012192_ _stx12108_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx12039_)
      (let* ((_g1204112058_
              (lambda (_g1204212055_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1204212055_)))
             (_g1204012105_
              (lambda (_g1204212061_)
                (if (gx#stx-pair? _g1204212061_)
                    (let ((_e1204512063_ (gx#stx-e _g1204212061_)))
                      (let ((_hd1204612066_ (##car _e1204512063_))
                            (_tl1204712068_ (##cdr _e1204512063_)))
                        (if (gx#stx-pair? _tl1204712068_)
                            (let ((_e1204812071_ (gx#stx-e _tl1204712068_)))
                              (let ((_hd1204912074_ (##car _e1204812071_))
                                    (_tl1205012076_ (##cdr _e1204812071_)))
                                (if (gx#stx-pair? _tl1205012076_)
                                    (let ((_e1205112079_
                                           (gx#stx-e _tl1205012076_)))
                                      (let ((_hd1205212082_
                                             (##car _e1205112079_))
                                            (_tl1205312084_
                                             (##cdr _e1205112079_)))
                                        (if (gx#stx-null? _tl1205312084_)
                                            ((lambda (_L12087_ _L12088_)
                                               (gx#stx-for-each1
                                                (lambda (_bind12103_)
                                                  (if (gx#identifier?
                                                       _bind12103_)
                                                      (gxc#add-module-binding!
                                                       _bind12103_
                                                       '#f)
                                                      '#!void))
                                                _L12088_))
                                             _hd1205212082_
                                             _hd1204912074_)
                                            (_g1204112058_ _g1204212061_))))
                                    (_g1204112058_ _g1204212061_))))
                            (_g1204112058_ _g1204212061_))))
                    (_g1204112058_ _g1204212061_)))))
        (_g1204012105_ _stx12039_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11972_)
      (let* ((_g1197411991_
              (lambda (_g1197511988_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1197511988_)))
             (_g1197312036_
              (lambda (_g1197511994_)
                (if (gx#stx-pair? _g1197511994_)
                    (let ((_e1197811996_ (gx#stx-e _g1197511994_)))
                      (let ((_hd1197911999_ (##car _e1197811996_))
                            (_tl1198012001_ (##cdr _e1197811996_)))
                        (if (gx#stx-pair? _tl1198012001_)
                            (let ((_e1198112004_ (gx#stx-e _tl1198012001_)))
                              (let ((_hd1198212007_ (##car _e1198112004_))
                                    (_tl1198312009_ (##cdr _e1198112004_)))
                                (if (gx#stx-pair? _tl1198312009_)
                                    (let ((_e1198412012_
                                           (gx#stx-e _tl1198312009_)))
                                      (let ((_hd1198512015_
                                             (##car _e1198412012_))
                                            (_tl1198612017_
                                             (##cdr _e1198412012_)))
                                        (if (gx#stx-null? _tl1198612017_)
                                            ((lambda (_L12020_ _L12021_)
                                               (gxc#add-module-binding!
                                                _L12021_
                                                '#t))
                                             _hd1198512015_
                                             _hd1198212007_)
                                            (_g1197411991_ _g1197511994_))))
                                    (_g1197411991_ _g1197511994_))))
                            (_g1197411991_ _g1197511994_))))
                    (_g1197411991_ _g1197511994_)))))
        (_g1197312036_ _stx11972_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11914_ _modules11915_)
      (let* ((_g1191711931_
              (lambda (_g1191811928_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1191811928_)))
             (_g1191611969_
              (lambda (_g1191811934_)
                (if (gx#stx-pair? _g1191811934_)
                    (let ((_e1192111936_ (gx#stx-e _g1191811934_)))
                      (let ((_hd1192211939_ (##car _e1192111936_))
                            (_tl1192311941_ (##cdr _e1192111936_)))
                        (if (gx#stx-pair? _tl1192311941_)
                            (let ((_e1192411944_ (gx#stx-e _tl1192311941_)))
                              (let ((_hd1192511947_ (##car _e1192411944_))
                                    (_tl1192611949_ (##cdr _e1192411944_)))
                                ((lambda (_L11952_ _L11953_)
                                   (let ((_ctx11966_
                                          (gx#syntax-local-e__0 _L11953_)))
                                     (begin
                                       (set-box!
                                        _modules11915_
                                        (cons _ctx11966_
                                              (unbox _modules11915_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11966_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11915_))
                                        gx#current-expander-context
                                        _ctx11966_))))
                                 _tl1192611949_
                                 _hd1192511947_)))
                            (_g1191711931_ _g1191811934_))))
                    (_g1191711931_ _g1191811934_)))))
        (_g1191611969_ _stx11914_))))
  (define gxc#add-module-binding!
    (lambda (_id11908_ _syntax?11909_)
      (let ((_eid11911_
             (##structure-ref
              (gx#resolve-identifier__0 _id11908_)
              '1
              gx#binding::t
              '#f))
            (_ht11912_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11911_)
            '#!void
            (table-set!
             _ht11912_
             _eid11911_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11911_)
              _syntax?11909_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id111901_ _id211902_)
      (letrec ((_symbol-e11904_
                (lambda (_id11906_)
                  (if (symbol? _id11906_)
                      _id11906_
                      (gxc#generate-runtime-binding-id _id11906_)))))
        (eq? (_symbol-e11904_ _id111901_) (_symbol-e11904_ _id211902_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11879_)
      (let ((_$e11881_
             (if (##structure-direct-instance-of?
                  _id11879_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11879_)
                 '#f)))
        (if _$e11881_
            ((lambda (_bind11884_)
               (let ((_eid11886_
                      (##structure-ref _bind11884_ '1 gx#binding::t '#f))
                     (_ht11887_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11886_)
                     _eid11886_
                     (let ((_$e11889_ (table-ref _ht11887_ _eid11886_ '#f)))
                       (if _$e11889_
                           (values _$e11889_)
                           (if (##structure-instance-of?
                                _bind11884_
                                'gx#local-binding::t)
                               (let ((_gid11892_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11886_)))
                                 (begin
                                   (table-set! _ht11887_ _eid11886_ _gid11892_)
                                   _gid11892_))
                               (if (##structure-instance-of?
                                    _bind11884_
                                    'gx#module-binding::t)
                                   (let ((_gid11899_
                                          (let ((_$e11894_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11884_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11894_
                                                ((lambda (_ns11897_)
                                                   (make-symbol
                                                    _ns11897_
                                                    '"#"
                                                    _eid11886_))
                                                 _$e11894_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11886_)))))
                                     (begin
                                       (table-set!
                                        _ht11887_
                                        _eid11886_
                                        _gid11899_)
                                       _gid11899_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11879_
                                    _eid11886_
                                    _bind11884_))))))))
             _$e11881_)
            (if (interned-symbol? (gx#stx-e _id11879_))
                (gx#stx-e _id11879_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11879_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11877_)
      (if (gx#identifier? _id11877_)
          (gxc#generate-runtime-binding-id _id11877_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11857_ _quote?11858_)
        (let* ((_ht11860_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11862_ (table-ref _ht11860_ _sym11857_ '#f)))
          (if _$e11862_
              (values _$e11862_)
              (let ((_g11865_
                     (if _quote?11858_
                         (make-symbol
                          '"__"
                          _sym11857_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11857_ '"_"))))
                (begin
                  (table-set! _ht11860_ _sym11857_ _g11865_)
                  _g11865_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11870_)
          (let ((_quote?11872_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11870_
             _quote?11872_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g14267_
          (let ((_g14266_ (length _g14267_)))
            (cond ((##fx= _g14266_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g14267_))
                  ((##fx= _g14266_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g14267_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g14267_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11854_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11854_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11814_)
      (if (interned-symbol? _key11814_)
          _key11814_
          (if (uninterned-symbol? _key11814_)
              (gxc#generate-runtime-gensym-reference__0 _key11814_)
              (let* ((_key1181511822_ _key11814_)
                     (_E1181711826_
                      (lambda ()
                        (error '"No clause matching" _key1181511822_)))
                     (_K1181811842_
                      (lambda (_mark11829_ _eid11830_)
                        (let ((_$e11832_
                               (##structure-ref
                                _mark11829_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11832_
                              ((lambda (_ht11835_)
                                 (let ((_$e11837_
                                        (table-ref _ht11835_ _eid11830_ '#f)))
                                   (if _$e11837_
                                       ((lambda (_id11840_)
                                          (if (interned-symbol? _id11840_)
                                              _id11840_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11840_)))
                                        _$e11837_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11830_))))
                               _$e11832_)
                              (gxc#generate-runtime-identifier-key
                               _eid11830_))))))
                (if (##pair? _key1181511822_)
                    (let ((_hd1181911845_ (##car _key1181511822_))
                          (_tl1182011847_ (##cdr _key1181511822_)))
                      (let* ((_eid11850_ _hd1181911845_)
                             (_mark11852_ _tl1182011847_))
                        (_K1181811842_ _mark11852_ _eid11850_)))
                    (_E1181711826_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11801_)
        (if _top11801_
            (let ((_ns11803_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11804_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11804_)
                  (make-symbol
                   _ns11803_
                   '"["
                   (number->string _phi11804_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11803_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11810_ '#f))
            (gxc#generate-runtime-temporary__% _top11810_))))
      (define gxc#generate-runtime-temporary
        (lambda _g14269_
          (let ((_g14268_ (length _g14269_)))
            (cond ((##fx= _g14268_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g14269_))
                  ((##fx= _g14268_ 1)
                   (apply gxc#generate-runtime-temporary__% _g14269_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g14269_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11798_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11718_)
      (let* ((_g1172011730_
              (lambda (_g1172111727_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1172111727_)))
             (_g1171911795_
              (lambda (_g1172111733_)
                (if (gx#stx-pair? _g1172111733_)
                    (let ((_e1172311735_ (gx#stx-e _g1172111733_)))
                      (let ((_hd1172411738_ (##car _e1172311735_))
                            (_tl1172511740_ (##cdr _e1172311735_)))
                        ((lambda (_L11743_)
                           (let* ((_body11753_
                                   (gx#stx-map1 gxc#compile-e _L11743_))
                                  (_body11792_
                                   (filter (lambda (_stx11755_)
                                             (let* ((___stx1318413185_
                                                     _stx11755_)
                                                    (_g1175811767_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1318413185_))))
                                               (let ((___kont1318613187_
                                                      (lambda () '#f))
                                                     (___kont1318813189_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1318413185_)
                                                     (let ((_e1176011779_
                                                            (gx#stx-e
                                                             ___stx1318413185_)))
                                                       (let ((_tl1176211784_
                                                              (##cdr _e1176011779_))
                                                             (_hd1176111782_
                                                              (##car _e1176011779_)))
                                                         (if (gx#identifier?
                                                              _hd1176111782_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1176111782_)
                         (if (gx#stx-null? _tl1176211784_)
                             (___kont1318613187_)
                             (___kont1318813189_))
                         (___kont1318813189_))
                     (___kont1318813189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1318813189_)))))
                                           _body11753_)))
                             (if (fx= (length _body11792_) '1)
                                 (car _body11792_)
                                 (cons 'begin _body11792_))))
                         _tl1172511740_)))
                    (_g1172011730_ _g1172111733_)))))
        (_g1171911795_ _stx11718_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11680_)
      (let* ((_g1168211692_
              (lambda (_g1168311689_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1168311689_)))
             (_g1168111715_
              (lambda (_g1168311695_)
                (if (gx#stx-pair? _g1168311695_)
                    (let ((_e1168511697_ (gx#stx-e _g1168311695_)))
                      (let ((_hd1168611700_ (##car _e1168511697_))
                            (_tl1168711702_ (##cdr _e1168511697_)))
                        ((lambda (_L11705_)
                           (cons 'begin (gx#syntax->datum _L11705_)))
                         _tl1168711702_)))
                    (_g1168211692_ _g1168311695_)))))
        (_g1168111715_ _stx11680_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11557_)
      (let* ((___stx1320413205_ _stx11557_)
             (_g1156011588_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1320413205_))))
        (let ((___kont1320613207_
               (lambda (_L11662_ _L11663_) (gxc#compile-e _L11662_)))
              (___kont1320813209_
               (lambda (_L11617_ _L11618_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L11618_))
                             (cons (gxc#compile-e _L11617_) '()))))))
          (let ((___match1322913230_
                 (lambda (_e1156411638_
                          _hd1156511641_
                          _tl1156611643_
                          _e1156711646_
                          _hd1156811649_
                          _tl1156911651_
                          _e1157011654_
                          _hd1157111657_
                          _tl1157211659_)
                   (let ((_L11662_ _hd1157111657_) (_L11663_ _hd1156811649_))
                     (if (gx#identifier? _L11663_)
                         (___kont1320613207_ _L11662_ _L11663_)
                         (___kont1320813209_
                          _hd1157111657_
                          _hd1156811649_))))))
            (if (gx#stx-pair? ___stx1320413205_)
                (let ((_e1156411638_ (gx#stx-e ___stx1320413205_)))
                  (let ((_tl1156611643_ (##cdr _e1156411638_))
                        (_hd1156511641_ (##car _e1156411638_)))
                    (if (gx#stx-pair? _tl1156611643_)
                        (let ((_e1156711646_ (gx#stx-e _tl1156611643_)))
                          (let ((_tl1156911651_ (##cdr _e1156711646_))
                                (_hd1156811649_ (##car _e1156711646_)))
                            (if (gx#stx-pair? _tl1156911651_)
                                (let ((_e1157011654_
                                       (gx#stx-e _tl1156911651_)))
                                  (let ((_tl1157211659_ (##cdr _e1157011654_))
                                        (_hd1157111657_ (##car _e1157011654_)))
                                    (if (gx#stx-null? _tl1157211659_)
                                        (___match1322913230_
                                         _e1156411638_
                                         _hd1156511641_
                                         _tl1156611643_
                                         _e1156711646_
                                         _hd1156811649_
                                         _tl1156911651_
                                         _e1157011654_
                                         _hd1157111657_
                                         _tl1157211659_)
                                        (_g1156011588_))))
                                (_g1156011588_))))
                        (_g1156011588_))))
                (_g1156011588_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11519_)
      (let* ((_g1152111531_
              (lambda (_g1152211528_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1152211528_)))
             (_g1152011554_
              (lambda (_g1152211534_)
                (if (gx#stx-pair? _g1152211534_)
                    (let ((_e1152411536_ (gx#stx-e _g1152211534_)))
                      (let ((_hd1152511539_ (##car _e1152411536_))
                            (_tl1152611541_ (##cdr _e1152411536_)))
                        ((lambda (_L11544_)
                           (cons 'declare (map gx#syntax->datum _L11544_)))
                         _tl1152611541_)))
                    (_g1152111531_ _g1152211534_)))))
        (_g1152011554_ _stx11519_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11266_)
      (let* ((_g1126811285_
              (lambda (_g1126911282_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1126911282_)))
             (_g1126711516_
              (lambda (_g1126911288_)
                (if (gx#stx-pair? _g1126911288_)
                    (let ((_e1127211290_ (gx#stx-e _g1126911288_)))
                      (let ((_hd1127311293_ (##car _e1127211290_))
                            (_tl1127411295_ (##cdr _e1127211290_)))
                        (if (gx#stx-pair? _tl1127411295_)
                            (let ((_e1127511298_ (gx#stx-e _tl1127411295_)))
                              (let ((_hd1127611301_ (##car _e1127511298_))
                                    (_tl1127711303_ (##cdr _e1127511298_)))
                                (if (gx#stx-pair? _tl1127711303_)
                                    (let ((_e1127811306_
                                           (gx#stx-e _tl1127711303_)))
                                      (let ((_hd1127911309_
                                             (##car _e1127811306_))
                                            (_tl1128011311_
                                             (##cdr _e1127811306_)))
                                        (if (gx#stx-null? _tl1128011311_)
                                            ((lambda (_L11314_ _L11315_)
                                               (let* ((___stx1328213283_
                                                       _L11315_)
                                                      (_g1133211346_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1328213283_))))
                                                 (let ((___kont1328413285_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L11314_)))
                                                       (___kont1328613287_
                                                        (lambda (_L11478_)
                                                          (let ((_eid11487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L11478_)))
                    (begin
                      (let ((_lambda-expr1148811490_
                             (gxc#apply-find-lambda-expression _L11314_)))
                        (if _lambda-expr1148811490_
                            (let ((_lambda-expr11493_ _lambda-expr1148811490_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr11493_
                               _eid11487_))
                            '#f))
                      (cons 'define
                            (cons _eid11487_
                                  (cons (gxc#compile-e _L11314_) '())))))))
               (___kont1328813289_
                (lambda ()
                  (let* ((_tmp11353_ (gxc#generate-runtime-temporary__% '#t))
                         (_body11462_
                          (let _lp11355_ ((_rest11357_ _L11315_)
                                          (_k11358_ '0)
                                          (_r11359_ '()))
                            (let* ((___stx1325213253_ _rest11357_)
                                   (_g1136411381_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1325213253_))))
                              (let ((___kont1325413255_
                                     (lambda (_L11449_)
                                       (_lp11355_
                                        _L11449_
                                        (fx+ _k11358_ '1)
                                        _r11359_)))
                                    (___kont1325613257_
                                     (lambda (_L11422_ _L11423_)
                                       (_lp11355_
                                        _L11422_
                                        (fx+ _k11358_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L11423_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp11353_
                         _k11358_
                         _L11422_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r11359_))))
                                    (___kont1325813259_
                                     (lambda (_L11393_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11393_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp11353_
                                _k11358_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r11359_)))
                                    (___kont1326013261_
                                     (lambda () (reverse _r11359_))))
                                (let ((_g1136211409_
                                       (lambda ()
                                         (let ((_L11393_ ___stx1325213253_))
                                           (if (gx#identifier? _L11393_)
                                               (___kont1325813259_ _L11393_)
                                               (___kont1326013261_))))))
                                  (if (gx#stx-pair? ___stx1325213253_)
                                      (let ((_e1136711438_
                                             (gx#stx-e ___stx1325213253_)))
                                        (let ((_tl1136911443_
                                               (##cdr _e1136711438_))
                                              (_hd1136811441_
                                               (##car _e1136711438_)))
                                          (if (gx#stx-datum? _hd1136811441_)
                                              (let ((_e1137011446_
                                                     (gx#stx-e
                                                      _hd1136811441_)))
                                                (if (equal? _e1137011446_ '#f)
                                                    (___kont1325413255_
                                                     _tl1136911443_)
                                                    (___kont1325613257_
                                                     _tl1136911443_
                                                     _hd1136811441_)))
                                              (___kont1325613257_
                                               _tl1136911443_
                                               _hd1136811441_))))
                                      (_g1136211409_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp11353_
                                            (cons (gxc#compile-e _L11314_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp11353_
                                       _L11315_
                                       _L11314_)
                                      _body11462_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1328213283_)
                                                       (let ((_e1133411500_
                                                              (gx#stx-e
                                                               ___stx1328213283_)))
                                                         (let ((_tl1133611505_
                                                                (##cdr _e1133411500_))
                                                               (_hd1133511503_
                                                                (##car _e1133411500_)))
                                                           (if (gx#stx-datum?
                                                                _hd1133511503_)
                                                               (let ((_e1133711508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1133511503_)))
                         (if (equal? _e1133711508_ '#f)
                             (if (gx#stx-null? _tl1133611505_)
                                 (___kont1328413285_)
                                 (___kont1328813289_))
                             (if (gx#stx-null? _tl1133611505_)
                                 (___kont1328613287_ _hd1133511503_)
                                 (___kont1328813289_))))
                       (if (gx#stx-null? _tl1133611505_)
                           (___kont1328613287_ _hd1133511503_)
                           (___kont1328813289_)))))
               (___kont1328813289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1127911309_
                                             _hd1127611301_)
                                            (_g1126811285_ _g1126911288_))))
                                    (_g1126811285_ _g1126911288_))))
                            (_g1126811285_ _g1126911288_))))
                    (_g1126811285_ _g1126911288_)))))
        (_g1126711516_ _stx11266_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11242_ _hd11243_ _expr11244_)
      (let ((_$e11246_ (gxc#apply-count-values _expr11244_)))
        (if _$e11246_
            ((lambda (_count11249_)
               (let ((_len11251_ (gx#stx-length _hd11243_))
                     (_cmp11252_ (if (gx#stx-list? _hd11243_) fx= fx>=)))
                 (if (let ((_$e11254_ (fx= _len11251_ '0)))
                       (if _$e11254_
                           _$e11254_
                           (_cmp11252_ _count11249_ _len11251_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11244_
                      _hd11243_))))
             _$e11246_)
            (let* ((_len11257_ (gx#stx-length _hd11243_))
                   (_cmp11259_ (if (gx#stx-list? _hd11243_) '##fx= '##fx>=))
                   (_errmsg11261_
                    (string-append
                     (if (gx#stx-list? _hd11243_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11257_)
                     '" values"))
                   (_count11263_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11243_)) (fx= _len11257_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11263_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11242_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11263_ (cons _len11257_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11263_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11240_)
      (cons 'if
            (cons (cons '##values? (cons _var11240_ '()))
                  (cons (cons '##vector-length (cons _var11240_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11236_ _i11237_ _rest11238_)
      (if (if (fx= _i11237_ '0) (not (gx#stx-pair? _rest11238_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11236_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11236_ (cons '0 '())))
                            (cons _var11236_ '()))))
          (cons '##vector-ref (cons _var11236_ (cons _i11237_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11233_ _i11234_)
      (if (fx= _i11234_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11233_ '()))
                      (cons (cons '##vector->list (cons _var11233_ '()))
                            (cons (cons 'list (cons _var11233_ '())) '()))))
          (if (fx= _i11234_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11233_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11233_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11233_ '()))
                          (cons _i11234_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11166_)
      (let* ((_g1116811185_
              (lambda (_g1116911182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1116911182_)))
             (_g1116711230_
              (lambda (_g1116911188_)
                (if (gx#stx-pair? _g1116911188_)
                    (let ((_e1117211190_ (gx#stx-e _g1116911188_)))
                      (let ((_hd1117311193_ (##car _e1117211190_))
                            (_tl1117411195_ (##cdr _e1117211190_)))
                        (if (gx#stx-pair? _tl1117411195_)
                            (let ((_e1117511198_ (gx#stx-e _tl1117411195_)))
                              (let ((_hd1117611201_ (##car _e1117511198_))
                                    (_tl1117711203_ (##cdr _e1117511198_)))
                                (if (gx#stx-pair? _tl1117711203_)
                                    (let ((_e1117811206_
                                           (gx#stx-e _tl1117711203_)))
                                      (let ((_hd1117911209_
                                             (##car _e1117811206_))
                                            (_tl1118011211_
                                             (##cdr _e1117811206_)))
                                        (if (gx#stx-null? _tl1118011211_)
                                            ((lambda (_L11214_ _L11215_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11215_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11214_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1117911209_
                                             _hd1117611201_)
                                            (_g1116811185_ _g1116911188_))))
                                    (_g1116811185_ _g1116911188_))))
                            (_g1116811185_ _g1116911188_))))
                    (_g1116811185_ _g1116911188_)))))
        (_g1116711230_ _stx11166_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11164_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11164_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9707_)
      (letrec ((_dispatch-case?9709_
                (lambda (_hd10394_ _body10395_)
                  (let* ((_form10397_ (cons _hd10394_ (cons _body10395_ '())))
                         (___stx1331413315_ _form10397_)
                         (_g1040210559_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1331413315_))))
                    (let ((___kont1331613317_
                           (lambda (_L11084_ _L11085_ _L11086_) '#t))
                          (___kont1332213323_
                           (lambda (_L10872_
                                    _L10873_
                                    _L10874_
                                    _L10875_
                                    _L10876_
                                    _L10877_)
                             '#t))
                          (___kont1332813329_
                           (lambda (_L10667_ _L10668_ _L10669_ _L10670_) '#t))
                          (___kont1333013331_ (lambda () '#f)))
                      (let* ((___match1345513456_
                              (lambda (_e1051910571_
                                       _hd1052010574_
                                       _tl1052110576_
                                       _e1052210579_
                                       _hd1052310582_
                                       _tl1052410584_
                                       _e1052510587_
                                       _hd1052610590_
                                       _tl1052710592_
                                       _e1052810595_
                                       _hd1052910598_
                                       _tl1053010600_
                                       _e1053110603_
                                       _hd1053210606_
                                       _tl1053310608_
                                       _e1053410611_
                                       _hd1053510614_
                                       _tl1053610616_
                                       _e1053710619_
                                       _hd1053810622_
                                       _tl1053910624_
                                       _e1054010627_
                                       _hd1054110630_
                                       _tl1054210632_
                                       _e1054310635_
                                       _hd1054410638_
                                       _tl1054510640_
                                       _e1054610643_
                                       _hd1054710646_
                                       _tl1054810648_
                                       _e1054910651_
                                       _hd1055010654_
                                       _tl1055110656_
                                       _e1055210659_
                                       _hd1055310662_
                                       _tl1055410664_)
                                (let ((_L10667_ _hd1055310662_)
                                      (_L10668_ _hd1054410638_)
                                      (_L10669_ _hd1053510614_)
                                      (_L10670_ _hd1052010574_))
                                  (if (if (gx#identifier? _L10670_)
                                          (if (gxc#runtime-identifier=?
                                               _L10669_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L10670_
                                                   _L10667_)
                                                  (not (gx#free-identifier=?
                                                        _L10668_
                                                        _L10670_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1332813329_
                                       _L10667_
                                       _L10668_
                                       _L10669_
                                       _L10670_)
                                      (___kont1333013331_)))))
                             (___match1342713428_
                              (lambda (_e1051910571_
                                       _hd1052010574_
                                       _tl1052110576_
                                       _e1052210579_
                                       _hd1052310582_
                                       _tl1052410584_
                                       _e1052510587_
                                       _hd1052610590_
                                       _tl1052710592_
                                       _e1052810595_
                                       _hd1052910598_
                                       _tl1053010600_
                                       _e1053110603_
                                       _hd1053210606_
                                       _tl1053310608_
                                       _e1053410611_
                                       _hd1053510614_
                                       _tl1053610616_
                                       _e1053710619_
                                       _hd1053810622_
                                       _tl1053910624_
                                       _e1054010627_
                                       _hd1054110630_
                                       _tl1054210632_
                                       _e1054310635_
                                       _hd1054410638_
                                       _tl1054510640_)
                                (if (gx#stx-pair? _tl1053910624_)
                                    (let ((_e1054610643_
                                           (gx#stx-e _tl1053910624_)))
                                      (let ((_tl1054810648_
                                             (##cdr _e1054610643_))
                                            (_hd1054710646_
                                             (##car _e1054610643_)))
                                        (if (gx#stx-pair? _hd1054710646_)
                                            (let ((_e1054910651_
                                                   (gx#stx-e _hd1054710646_)))
                                              (let ((_tl1055110656_
                                                     (##cdr _e1054910651_))
                                                    (_hd1055010654_
                                                     (##car _e1054910651_)))
                                                (if (gx#identifier?
                                                     _hd1055010654_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1055010654_)
                                                        (if (gx#stx-pair?
                                                             _tl1055110656_)
                                                            (let ((_e1055210659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1055110656_)))
                      (let ((_tl1055410664_ (##cdr _e1055210659_))
                            (_hd1055310662_ (##car _e1055210659_)))
                        (if (gx#stx-null? _tl1055410664_)
                            (if (gx#stx-null? _tl1054810648_)
                                (if (gx#stx-null? _tl1052410584_)
                                    (___match1345513456_
                                     _e1051910571_
                                     _hd1052010574_
                                     _tl1052110576_
                                     _e1052210579_
                                     _hd1052310582_
                                     _tl1052410584_
                                     _e1052510587_
                                     _hd1052610590_
                                     _tl1052710592_
                                     _e1052810595_
                                     _hd1052910598_
                                     _tl1053010600_
                                     _e1053110603_
                                     _hd1053210606_
                                     _tl1053310608_
                                     _e1053410611_
                                     _hd1053510614_
                                     _tl1053610616_
                                     _e1053710619_
                                     _hd1053810622_
                                     _tl1053910624_
                                     _e1054010627_
                                     _hd1054110630_
                                     _tl1054210632_
                                     _e1054310635_
                                     _hd1054410638_
                                     _tl1054510640_
                                     _e1054610643_
                                     _hd1054710646_
                                     _tl1054810648_
                                     _e1054910651_
                                     _hd1055010654_
                                     _tl1055110656_
                                     _e1055210659_
                                     _hd1055310662_
                                     _tl1055410664_)
                                    (___kont1333013331_))
                                (___kont1333013331_))
                            (___kont1333013331_))))
                    (___kont1333013331_))
                (___kont1333013331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1333013331_))))
                                            (___kont1333013331_))))
                                    (___kont1333013331_))))
                             (___match1335713358_
                              (lambda (_e1045510712_
                                       _hd1045610715_
                                       _tl1045710717_
                                       ___splice1332413325_
                                       _target1045810720_
                                       _tl1046010722_)
                                (letrec ((_loop1046110725_
                                          (lambda (_hd1045910728_
                                                   _arg1046510730_)
                                            (if (gx#stx-pair? _hd1045910728_)
                                                (let ((_e1046210733_
                                                       (gx#stx-e
                                                        _hd1045910728_)))
                                                  (let ((_lp-tl1046410738_
                                                         (##cdr _e1046210733_))
                                                        (_lp-hd1046310736_
                                                         (##car _e1046210733_)))
                                                    (_loop1046110725_
                                                     _lp-tl1046410738_
                                                     (cons _lp-hd1046310736_
                                                           _arg1046510730_))))
                                                (let ((_arg1046610741_
                                                       (reverse _arg1046510730_)))
                                                  (if (gx#stx-pair?
                                                       _tl1045710717_)
                                                      (let ((_e1046710744_
                                                             (gx#stx-e
                                                              _tl1045710717_)))
                                                        (let ((_tl1046910749_
                                                               (##cdr _e1046710744_))
                                                              (_hd1046810747_
                                                               (##car _e1046710744_)))
                                                          (if (gx#stx-pair?
                                                               _hd1046810747_)
                                                              (let ((_e1047010752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1046810747_)))
                        (let ((_tl1047210757_ (##cdr _e1047010752_))
                              (_hd1047110755_ (##car _e1047010752_)))
                          (if (gx#identifier? _hd1047110755_)
                              (if (gx#stx-eq? '%#call _hd1047110755_)
                                  (if (gx#stx-pair? _tl1047210757_)
                                      (let ((_e1047310760_
                                             (gx#stx-e _tl1047210757_)))
                                        (let ((_tl1047510765_
                                               (##cdr _e1047310760_))
                                              (_hd1047410763_
                                               (##car _e1047310760_)))
                                          (if (gx#stx-pair? _hd1047410763_)
                                              (let ((_e1047610768_
                                                     (gx#stx-e
                                                      _hd1047410763_)))
                                                (let ((_tl1047810773_
                                                       (##cdr _e1047610768_))
                                                      (_hd1047710771_
                                                       (##car _e1047610768_)))
                                                  (if (gx#identifier?
                                                       _hd1047710771_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1047710771_)
                                                          (if (gx#stx-pair?
                                                               _tl1047810773_)
                                                              (let ((_e1047910776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1047810773_)))
                        (let ((_tl1048110781_ (##cdr _e1047910776_))
                              (_hd1048010779_ (##car _e1047910776_)))
                          (if (gx#stx-null? _tl1048110781_)
                              (if (gx#stx-pair? _tl1047510765_)
                                  (let ((_e1048210784_
                                         (gx#stx-e _tl1047510765_)))
                                    (let ((_tl1048410789_
                                           (##cdr _e1048210784_))
                                          (_hd1048310787_
                                           (##car _e1048210784_)))
                                      (if (gx#stx-pair? _hd1048310787_)
                                          (let ((_e1048510792_
                                                 (gx#stx-e _hd1048310787_)))
                                            (let ((_tl1048710797_
                                                   (##cdr _e1048510792_))
                                                  (_hd1048610795_
                                                   (##car _e1048510792_)))
                                              (if (gx#identifier?
                                                   _hd1048610795_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1048610795_)
                                                      (if (gx#stx-pair?
                                                           _tl1048710797_)
                                                          (let ((_e1048810800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1048710797_)))
                    (let ((_tl1049010805_ (##cdr _e1048810800_))
                          (_hd1048910803_ (##car _e1048810800_)))
                      (if (gx#stx-null? _tl1049010805_)
                          (if (gx#stx-pair/null? _tl1048410789_)
                              (if (fx>= (gx#stx-length _tl1048410789_) '1)
                                  (let ((___splice1332613327_
                                         (gx#syntax-split-splice
                                          _tl1048410789_
                                          '1)))
                                    (let ((_tl1049310810_
                                           (##vector-ref
                                            ___splice1332613327_
                                            '1))
                                          (_target1049110808_
                                           (##vector-ref
                                            ___splice1332613327_
                                            '0)))
                                      (if (gx#stx-pair? _tl1049310810_)
                                          (let ((_e1050010813_
                                                 (gx#stx-e _tl1049310810_)))
                                            (let ((_tl1050210818_
                                                   (##cdr _e1050010813_))
                                                  (_hd1050110816_
                                                   (##car _e1050010813_)))
                                              (if (gx#stx-pair? _hd1050110816_)
                                                  (let ((_e1050310821_
                                                         (gx#stx-e
                                                          _hd1050110816_)))
                                                    (let ((_tl1050510826_
                                                           (##cdr _e1050310821_))
                                                          (_hd1050410824_
                                                           (##car _e1050310821_)))
                                                      (if (gx#identifier?
                                                           _hd1050410824_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1050410824_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1050510826_)
                          (let ((_e1050610829_ (gx#stx-e _tl1050510826_)))
                            (let ((_tl1050810834_ (##cdr _e1050610829_))
                                  (_hd1050710832_ (##car _e1050610829_)))
                              (if (gx#stx-null? _tl1050810834_)
                                  (if (gx#stx-null? _tl1050210818_)
                                      (letrec ((_loop1049410837_
                                                (lambda (_hd1049210840_
                                                         _xarg1049810842_)
                                                  (if (gx#stx-pair?
                                                       _hd1049210840_)
                                                      (let ((_e1049510845_
                                                             (gx#stx-e
                                                              _hd1049210840_)))
                                                        (let ((_lp-tl1049710850_
                                                               (##cdr _e1049510845_))
                                                              (_lp-hd1049610848_
                                                               (##car _e1049510845_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1049610848_)
                                                              (let ((_e1050910853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1049610848_)))
                        (let ((_tl1051110858_ (##cdr _e1050910853_))
                              (_hd1051010856_ (##car _e1050910853_)))
                          (if (gx#identifier? _hd1051010856_)
                              (if (gx#stx-eq? '%#ref _hd1051010856_)
                                  (if (gx#stx-pair? _tl1051110858_)
                                      (let ((_e1051210861_
                                             (gx#stx-e _tl1051110858_)))
                                        (let ((_tl1051410866_
                                               (##cdr _e1051210861_))
                                              (_hd1051310864_
                                               (##car _e1051210861_)))
                                          (if (gx#stx-null? _tl1051410866_)
                                              (_loop1049410837_
                                               _lp-tl1049710850_
                                               (cons _hd1051310864_
                                                     _xarg1049810842_))
                                              (___match1342713428_
                                               _e1045510712_
                                               _hd1045610715_
                                               _tl1045710717_
                                               _e1046710744_
                                               _hd1046810747_
                                               _tl1046910749_
                                               _e1047010752_
                                               _hd1047110755_
                                               _tl1047210757_
                                               _e1047310760_
                                               _hd1047410763_
                                               _tl1047510765_
                                               _e1047610768_
                                               _hd1047710771_
                                               _tl1047810773_
                                               _e1047910776_
                                               _hd1048010779_
                                               _tl1048110781_
                                               _e1048210784_
                                               _hd1048310787_
                                               _tl1048410789_
                                               _e1048510792_
                                               _hd1048610795_
                                               _tl1048710797_
                                               _e1048810800_
                                               _hd1048910803_
                                               _tl1049010805_))))
                                      (___match1342713428_
                                       _e1045510712_
                                       _hd1045610715_
                                       _tl1045710717_
                                       _e1046710744_
                                       _hd1046810747_
                                       _tl1046910749_
                                       _e1047010752_
                                       _hd1047110755_
                                       _tl1047210757_
                                       _e1047310760_
                                       _hd1047410763_
                                       _tl1047510765_
                                       _e1047610768_
                                       _hd1047710771_
                                       _tl1047810773_
                                       _e1047910776_
                                       _hd1048010779_
                                       _tl1048110781_
                                       _e1048210784_
                                       _hd1048310787_
                                       _tl1048410789_
                                       _e1048510792_
                                       _hd1048610795_
                                       _tl1048710797_
                                       _e1048810800_
                                       _hd1048910803_
                                       _tl1049010805_))
                                  (___match1342713428_
                                   _e1045510712_
                                   _hd1045610715_
                                   _tl1045710717_
                                   _e1046710744_
                                   _hd1046810747_
                                   _tl1046910749_
                                   _e1047010752_
                                   _hd1047110755_
                                   _tl1047210757_
                                   _e1047310760_
                                   _hd1047410763_
                                   _tl1047510765_
                                   _e1047610768_
                                   _hd1047710771_
                                   _tl1047810773_
                                   _e1047910776_
                                   _hd1048010779_
                                   _tl1048110781_
                                   _e1048210784_
                                   _hd1048310787_
                                   _tl1048410789_
                                   _e1048510792_
                                   _hd1048610795_
                                   _tl1048710797_
                                   _e1048810800_
                                   _hd1048910803_
                                   _tl1049010805_))
                              (___match1342713428_
                               _e1045510712_
                               _hd1045610715_
                               _tl1045710717_
                               _e1046710744_
                               _hd1046810747_
                               _tl1046910749_
                               _e1047010752_
                               _hd1047110755_
                               _tl1047210757_
                               _e1047310760_
                               _hd1047410763_
                               _tl1047510765_
                               _e1047610768_
                               _hd1047710771_
                               _tl1047810773_
                               _e1047910776_
                               _hd1048010779_
                               _tl1048110781_
                               _e1048210784_
                               _hd1048310787_
                               _tl1048410789_
                               _e1048510792_
                               _hd1048610795_
                               _tl1048710797_
                               _e1048810800_
                               _hd1048910803_
                               _tl1049010805_))))
                      (___match1342713428_
                       _e1045510712_
                       _hd1045610715_
                       _tl1045710717_
                       _e1046710744_
                       _hd1046810747_
                       _tl1046910749_
                       _e1047010752_
                       _hd1047110755_
                       _tl1047210757_
                       _e1047310760_
                       _hd1047410763_
                       _tl1047510765_
                       _e1047610768_
                       _hd1047710771_
                       _tl1047810773_
                       _e1047910776_
                       _hd1048010779_
                       _tl1048110781_
                       _e1048210784_
                       _hd1048310787_
                       _tl1048410789_
                       _e1048510792_
                       _hd1048610795_
                       _tl1048710797_
                       _e1048810800_
                       _hd1048910803_
                       _tl1049010805_))))
              (let ((_xarg1049910869_ (reverse _xarg1049810842_)))
                (if (gx#stx-null? _tl1046910749_)
                    (let ((_L10872_ _hd1050710832_)
                          (_L10873_ _xarg1049910869_)
                          (_L10874_ _hd1048910803_)
                          (_L10875_ _hd1048010779_)
                          (_L10876_ _tl1046010722_)
                          (_L10877_ _arg1046610741_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1092010923_ _g1092110925_)
                                           (cons _g1092010923_ _g1092110925_))
                                         '()
                                         _L10877_)))
                              (if (gx#identifier? _L10876_)
                                  (if (gxc#runtime-identifier=?
                                       _L10875_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1092710930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1092810932_)
                           (cons _g1092710930_ _g1092810932_))
                         '()
                         _L10877_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1093410937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1093510939_)
                           (cons _g1093410937_ _g1093510939_))
                         '()
                         _L10873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1094110944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1094210946_)
                           (cons _g1094110944_ _g1094210946_))
                         '()
                         _L10877_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1094810951_ _g1094910953_)
                           (cons _g1094810951_ _g1094910953_))
                         '()
                         _L10873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L10876_
                                                   _L10872_)
                                                  (not (find (lambda (_g1095510957_)
                                                               (gx#free-identifier=?
                                                                _g1095510957_
                                                                _L10874_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1095910962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1096010964_)
                                 (cons _g1095910962_ _g1096010964_))
                               (cons _L10876_ '())
                               _L10877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1332213323_
                           _L10872_
                           _L10873_
                           _L10874_
                           _L10875_
                           _L10876_
                           _L10877_)
                          (___match1342713428_
                           _e1045510712_
                           _hd1045610715_
                           _tl1045710717_
                           _e1046710744_
                           _hd1046810747_
                           _tl1046910749_
                           _e1047010752_
                           _hd1047110755_
                           _tl1047210757_
                           _e1047310760_
                           _hd1047410763_
                           _tl1047510765_
                           _e1047610768_
                           _hd1047710771_
                           _tl1047810773_
                           _e1047910776_
                           _hd1048010779_
                           _tl1048110781_
                           _e1048210784_
                           _hd1048310787_
                           _tl1048410789_
                           _e1048510792_
                           _hd1048610795_
                           _tl1048710797_
                           _e1048810800_
                           _hd1048910803_
                           _tl1049010805_)))
                    (___match1342713428_
                     _e1045510712_
                     _hd1045610715_
                     _tl1045710717_
                     _e1046710744_
                     _hd1046810747_
                     _tl1046910749_
                     _e1047010752_
                     _hd1047110755_
                     _tl1047210757_
                     _e1047310760_
                     _hd1047410763_
                     _tl1047510765_
                     _e1047610768_
                     _hd1047710771_
                     _tl1047810773_
                     _e1047910776_
                     _hd1048010779_
                     _tl1048110781_
                     _e1048210784_
                     _hd1048310787_
                     _tl1048410789_
                     _e1048510792_
                     _hd1048610795_
                     _tl1048710797_
                     _e1048810800_
                     _hd1048910803_
                     _tl1049010805_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1049410837_
                                         _target1049110808_
                                         '()))
                                      (___match1342713428_
                                       _e1045510712_
                                       _hd1045610715_
                                       _tl1045710717_
                                       _e1046710744_
                                       _hd1046810747_
                                       _tl1046910749_
                                       _e1047010752_
                                       _hd1047110755_
                                       _tl1047210757_
                                       _e1047310760_
                                       _hd1047410763_
                                       _tl1047510765_
                                       _e1047610768_
                                       _hd1047710771_
                                       _tl1047810773_
                                       _e1047910776_
                                       _hd1048010779_
                                       _tl1048110781_
                                       _e1048210784_
                                       _hd1048310787_
                                       _tl1048410789_
                                       _e1048510792_
                                       _hd1048610795_
                                       _tl1048710797_
                                       _e1048810800_
                                       _hd1048910803_
                                       _tl1049010805_))
                                  (___match1342713428_
                                   _e1045510712_
                                   _hd1045610715_
                                   _tl1045710717_
                                   _e1046710744_
                                   _hd1046810747_
                                   _tl1046910749_
                                   _e1047010752_
                                   _hd1047110755_
                                   _tl1047210757_
                                   _e1047310760_
                                   _hd1047410763_
                                   _tl1047510765_
                                   _e1047610768_
                                   _hd1047710771_
                                   _tl1047810773_
                                   _e1047910776_
                                   _hd1048010779_
                                   _tl1048110781_
                                   _e1048210784_
                                   _hd1048310787_
                                   _tl1048410789_
                                   _e1048510792_
                                   _hd1048610795_
                                   _tl1048710797_
                                   _e1048810800_
                                   _hd1048910803_
                                   _tl1049010805_))))
                          (___match1342713428_
                           _e1045510712_
                           _hd1045610715_
                           _tl1045710717_
                           _e1046710744_
                           _hd1046810747_
                           _tl1046910749_
                           _e1047010752_
                           _hd1047110755_
                           _tl1047210757_
                           _e1047310760_
                           _hd1047410763_
                           _tl1047510765_
                           _e1047610768_
                           _hd1047710771_
                           _tl1047810773_
                           _e1047910776_
                           _hd1048010779_
                           _tl1048110781_
                           _e1048210784_
                           _hd1048310787_
                           _tl1048410789_
                           _e1048510792_
                           _hd1048610795_
                           _tl1048710797_
                           _e1048810800_
                           _hd1048910803_
                           _tl1049010805_))
                      (___match1342713428_
                       _e1045510712_
                       _hd1045610715_
                       _tl1045710717_
                       _e1046710744_
                       _hd1046810747_
                       _tl1046910749_
                       _e1047010752_
                       _hd1047110755_
                       _tl1047210757_
                       _e1047310760_
                       _hd1047410763_
                       _tl1047510765_
                       _e1047610768_
                       _hd1047710771_
                       _tl1047810773_
                       _e1047910776_
                       _hd1048010779_
                       _tl1048110781_
                       _e1048210784_
                       _hd1048310787_
                       _tl1048410789_
                       _e1048510792_
                       _hd1048610795_
                       _tl1048710797_
                       _e1048810800_
                       _hd1048910803_
                       _tl1049010805_))
                  (___match1342713428_
                   _e1045510712_
                   _hd1045610715_
                   _tl1045710717_
                   _e1046710744_
                   _hd1046810747_
                   _tl1046910749_
                   _e1047010752_
                   _hd1047110755_
                   _tl1047210757_
                   _e1047310760_
                   _hd1047410763_
                   _tl1047510765_
                   _e1047610768_
                   _hd1047710771_
                   _tl1047810773_
                   _e1047910776_
                   _hd1048010779_
                   _tl1048110781_
                   _e1048210784_
                   _hd1048310787_
                   _tl1048410789_
                   _e1048510792_
                   _hd1048610795_
                   _tl1048710797_
                   _e1048810800_
                   _hd1048910803_
                   _tl1049010805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1342713428_
                                                   _e1045510712_
                                                   _hd1045610715_
                                                   _tl1045710717_
                                                   _e1046710744_
                                                   _hd1046810747_
                                                   _tl1046910749_
                                                   _e1047010752_
                                                   _hd1047110755_
                                                   _tl1047210757_
                                                   _e1047310760_
                                                   _hd1047410763_
                                                   _tl1047510765_
                                                   _e1047610768_
                                                   _hd1047710771_
                                                   _tl1047810773_
                                                   _e1047910776_
                                                   _hd1048010779_
                                                   _tl1048110781_
                                                   _e1048210784_
                                                   _hd1048310787_
                                                   _tl1048410789_
                                                   _e1048510792_
                                                   _hd1048610795_
                                                   _tl1048710797_
                                                   _e1048810800_
                                                   _hd1048910803_
                                                   _tl1049010805_))))
                                          (___match1342713428_
                                           _e1045510712_
                                           _hd1045610715_
                                           _tl1045710717_
                                           _e1046710744_
                                           _hd1046810747_
                                           _tl1046910749_
                                           _e1047010752_
                                           _hd1047110755_
                                           _tl1047210757_
                                           _e1047310760_
                                           _hd1047410763_
                                           _tl1047510765_
                                           _e1047610768_
                                           _hd1047710771_
                                           _tl1047810773_
                                           _e1047910776_
                                           _hd1048010779_
                                           _tl1048110781_
                                           _e1048210784_
                                           _hd1048310787_
                                           _tl1048410789_
                                           _e1048510792_
                                           _hd1048610795_
                                           _tl1048710797_
                                           _e1048810800_
                                           _hd1048910803_
                                           _tl1049010805_))))
                                  (___match1342713428_
                                   _e1045510712_
                                   _hd1045610715_
                                   _tl1045710717_
                                   _e1046710744_
                                   _hd1046810747_
                                   _tl1046910749_
                                   _e1047010752_
                                   _hd1047110755_
                                   _tl1047210757_
                                   _e1047310760_
                                   _hd1047410763_
                                   _tl1047510765_
                                   _e1047610768_
                                   _hd1047710771_
                                   _tl1047810773_
                                   _e1047910776_
                                   _hd1048010779_
                                   _tl1048110781_
                                   _e1048210784_
                                   _hd1048310787_
                                   _tl1048410789_
                                   _e1048510792_
                                   _hd1048610795_
                                   _tl1048710797_
                                   _e1048810800_
                                   _hd1048910803_
                                   _tl1049010805_))
                              (___match1342713428_
                               _e1045510712_
                               _hd1045610715_
                               _tl1045710717_
                               _e1046710744_
                               _hd1046810747_
                               _tl1046910749_
                               _e1047010752_
                               _hd1047110755_
                               _tl1047210757_
                               _e1047310760_
                               _hd1047410763_
                               _tl1047510765_
                               _e1047610768_
                               _hd1047710771_
                               _tl1047810773_
                               _e1047910776_
                               _hd1048010779_
                               _tl1048110781_
                               _e1048210784_
                               _hd1048310787_
                               _tl1048410789_
                               _e1048510792_
                               _hd1048610795_
                               _tl1048710797_
                               _e1048810800_
                               _hd1048910803_
                               _tl1049010805_))
                          (___kont1333013331_))))
                  (___kont1333013331_))
              (___kont1333013331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1333013331_))))
                                          (___kont1333013331_))))
                                  (___kont1333013331_))
                              (___kont1333013331_))))
                      (___kont1333013331_))
                  (___kont1333013331_))
              (___kont1333013331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1333013331_))))
                                      (___kont1333013331_))
                                  (___kont1333013331_))
                              (___kont1333013331_))))
                      (___kont1333013331_))))
              (___kont1333013331_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1046110725_ _target1045810720_ '()))))
                             (___match1334513346_
                              (lambda (_e1040710972_
                                       _hd1040810975_
                                       _tl1040910977_
                                       ___splice1331813319_
                                       _target1041010980_
                                       _tl1041210982_)
                                (letrec ((_loop1041310985_
                                          (lambda (_hd1041110988_
                                                   _arg1041710990_)
                                            (if (gx#stx-pair? _hd1041110988_)
                                                (let ((_e1041410993_
                                                       (gx#stx-e
                                                        _hd1041110988_)))
                                                  (let ((_lp-tl1041610998_
                                                         (##cdr _e1041410993_))
                                                        (_lp-hd1041510996_
                                                         (##car _e1041410993_)))
                                                    (_loop1041310985_
                                                     _lp-tl1041610998_
                                                     (cons _lp-hd1041510996_
                                                           _arg1041710990_))))
                                                (let ((_arg1041811001_
                                                       (reverse _arg1041710990_)))
                                                  (if (gx#stx-pair?
                                                       _tl1040910977_)
                                                      (let ((_e1041911004_
                                                             (gx#stx-e
                                                              _tl1040910977_)))
                                                        (let ((_tl1042111009_
                                                               (##cdr _e1041911004_))
                                                              (_hd1042011007_
                                                               (##car _e1041911004_)))
                                                          (if (gx#stx-pair?
                                                               _hd1042011007_)
                                                              (let ((_e1042211012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1042011007_)))
                        (let ((_tl1042411017_ (##cdr _e1042211012_))
                              (_hd1042311015_ (##car _e1042211012_)))
                          (if (gx#identifier? _hd1042311015_)
                              (if (gx#stx-eq? '%#call _hd1042311015_)
                                  (if (gx#stx-pair? _tl1042411017_)
                                      (let ((_e1042511020_
                                             (gx#stx-e _tl1042411017_)))
                                        (let ((_tl1042711025_
                                               (##cdr _e1042511020_))
                                              (_hd1042611023_
                                               (##car _e1042511020_)))
                                          (if (gx#stx-pair? _hd1042611023_)
                                              (let ((_e1042811028_
                                                     (gx#stx-e
                                                      _hd1042611023_)))
                                                (let ((_tl1043011033_
                                                       (##cdr _e1042811028_))
                                                      (_hd1042911031_
                                                       (##car _e1042811028_)))
                                                  (if (gx#identifier?
                                                       _hd1042911031_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1042911031_)
                                                          (if (gx#stx-pair?
                                                               _tl1043011033_)
                                                              (let ((_e1043111036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1043011033_)))
                        (let ((_tl1043311041_ (##cdr _e1043111036_))
                              (_hd1043211039_ (##car _e1043111036_)))
                          (if (gx#stx-null? _tl1043311041_)
                              (if (gx#stx-pair/null? _tl1042711025_)
                                  (let ((___splice1332013321_
                                         (gx#syntax-split-splice
                                          _tl1042711025_
                                          '0)))
                                    (let ((_tl1043611046_
                                           (##vector-ref
                                            ___splice1332013321_
                                            '1))
                                          (_target1043411044_
                                           (##vector-ref
                                            ___splice1332013321_
                                            '0)))
                                      (if (gx#stx-null? _tl1043611046_)
                                          (letrec ((_loop1043711049_
                                                    (lambda (_hd1043511052_
                                                             _xarg1044111054_)
                                                      (if (gx#stx-pair?
                                                           _hd1043511052_)
                                                          (let ((_e1043811057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1043511052_)))
                    (let ((_lp-tl1044011062_ (##cdr _e1043811057_))
                          (_lp-hd1043911060_ (##car _e1043811057_)))
                      (if (gx#stx-pair? _lp-hd1043911060_)
                          (let ((_e1044311065_ (gx#stx-e _lp-hd1043911060_)))
                            (let ((_tl1044511070_ (##cdr _e1044311065_))
                                  (_hd1044411068_ (##car _e1044311065_)))
                              (if (gx#identifier? _hd1044411068_)
                                  (if (gx#stx-eq? '%#ref _hd1044411068_)
                                      (if (gx#stx-pair? _tl1044511070_)
                                          (let ((_e1044611073_
                                                 (gx#stx-e _tl1044511070_)))
                                            (let ((_tl1044811078_
                                                   (##cdr _e1044611073_))
                                                  (_hd1044711076_
                                                   (##car _e1044611073_)))
                                              (if (gx#stx-null? _tl1044811078_)
                                                  (_loop1043711049_
                                                   _lp-tl1044011062_
                                                   (cons _hd1044711076_
                                                         _xarg1044111054_))
                                                  (___match1335713358_
                                                   _e1040710972_
                                                   _hd1040810975_
                                                   _tl1040910977_
                                                   ___splice1331813319_
                                                   _target1041010980_
                                                   _tl1041210982_))))
                                          (___match1335713358_
                                           _e1040710972_
                                           _hd1040810975_
                                           _tl1040910977_
                                           ___splice1331813319_
                                           _target1041010980_
                                           _tl1041210982_))
                                      (___match1335713358_
                                       _e1040710972_
                                       _hd1040810975_
                                       _tl1040910977_
                                       ___splice1331813319_
                                       _target1041010980_
                                       _tl1041210982_))
                                  (___match1335713358_
                                   _e1040710972_
                                   _hd1040810975_
                                   _tl1040910977_
                                   ___splice1331813319_
                                   _target1041010980_
                                   _tl1041210982_))))
                          (___match1335713358_
                           _e1040710972_
                           _hd1040810975_
                           _tl1040910977_
                           ___splice1331813319_
                           _target1041010980_
                           _tl1041210982_))))
                  (let ((_xarg1044211081_ (reverse _xarg1044111054_)))
                    (if (gx#stx-null? _tl1042111009_)
                        (let ((_L11084_ _xarg1044211081_)
                              (_L11085_ _hd1043211039_)
                              (_L11086_ _arg1041811001_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1111411117_
                                                      _g1111511119_)
                                               (cons _g1111411117_
                                                     _g1111511119_))
                                             '()
                                             _L11086_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1112111124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1112211126_)
                       (cons _g1112111124_ _g1112211126_))
                     '()
                     _L11086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1112811131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1112911133_)
                       (cons _g1112811131_ _g1112911133_))
                     '()
                     _L11084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1113511138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1113611140_)
                       (cons _g1113511138_ _g1113611140_))
                     '()
                     _L11086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1114211145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1114311147_)
                       (cons _g1114211145_ _g1114311147_))
                     '()
                     _L11084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1114911151_)
                                                       (gx#free-identifier=?
                                                        _g1114911151_
                                                        _L11085_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1115311156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1115411158_)
                         (cons _g1115311156_ _g1115411158_))
                       '()
                       _L11086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1331613317_ _L11084_ _L11085_ _L11086_)
                              (___match1335713358_
                               _e1040710972_
                               _hd1040810975_
                               _tl1040910977_
                               ___splice1331813319_
                               _target1041010980_
                               _tl1041210982_)))
                        (___match1335713358_
                         _e1040710972_
                         _hd1040810975_
                         _tl1040910977_
                         ___splice1331813319_
                         _target1041010980_
                         _tl1041210982_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1043711049_
                                             _target1043411044_
                                             '()))
                                          (___match1335713358_
                                           _e1040710972_
                                           _hd1040810975_
                                           _tl1040910977_
                                           ___splice1331813319_
                                           _target1041010980_
                                           _tl1041210982_))))
                                  (___match1335713358_
                                   _e1040710972_
                                   _hd1040810975_
                                   _tl1040910977_
                                   ___splice1331813319_
                                   _target1041010980_
                                   _tl1041210982_))
                              (___match1335713358_
                               _e1040710972_
                               _hd1040810975_
                               _tl1040910977_
                               ___splice1331813319_
                               _target1041010980_
                               _tl1041210982_))))
                      (___match1335713358_
                       _e1040710972_
                       _hd1040810975_
                       _tl1040910977_
                       ___splice1331813319_
                       _target1041010980_
                       _tl1041210982_))
                  (___match1335713358_
                   _e1040710972_
                   _hd1040810975_
                   _tl1040910977_
                   ___splice1331813319_
                   _target1041010980_
                   _tl1041210982_))
              (___match1335713358_
               _e1040710972_
               _hd1040810975_
               _tl1040910977_
               ___splice1331813319_
               _target1041010980_
               _tl1041210982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1335713358_
                                               _e1040710972_
                                               _hd1040810975_
                                               _tl1040910977_
                                               ___splice1331813319_
                                               _target1041010980_
                                               _tl1041210982_))))
                                      (___match1335713358_
                                       _e1040710972_
                                       _hd1040810975_
                                       _tl1040910977_
                                       ___splice1331813319_
                                       _target1041010980_
                                       _tl1041210982_))
                                  (___match1335713358_
                                   _e1040710972_
                                   _hd1040810975_
                                   _tl1040910977_
                                   ___splice1331813319_
                                   _target1041010980_
                                   _tl1041210982_))
                              (___match1335713358_
                               _e1040710972_
                               _hd1040810975_
                               _tl1040910977_
                               ___splice1331813319_
                               _target1041010980_
                               _tl1041210982_))))
                      (___match1335713358_
                       _e1040710972_
                       _hd1040810975_
                       _tl1040910977_
                       ___splice1331813319_
                       _target1041010980_
                       _tl1041210982_))))
              (___match1335713358_
               _e1040710972_
               _hd1040810975_
               _tl1040910977_
               ___splice1331813319_
               _target1041010980_
               _tl1041210982_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1041310985_ _target1041010980_ '())))))
                        (if (gx#stx-pair? ___stx1331413315_)
                            (let ((_e1040710972_ (gx#stx-e ___stx1331413315_)))
                              (let ((_tl1040910977_ (##cdr _e1040710972_))
                                    (_hd1040810975_ (##car _e1040710972_)))
                                (if (gx#stx-pair/null? _hd1040810975_)
                                    (let ((___splice1331813319_
                                           (gx#syntax-split-splice
                                            _hd1040810975_
                                            '0)))
                                      (let ((_tl1041210982_
                                             (##vector-ref
                                              ___splice1331813319_
                                              '1))
                                            (_target1041010980_
                                             (##vector-ref
                                              ___splice1331813319_
                                              '0)))
                                        (if (gx#stx-null? _tl1041210982_)
                                            (___match1334513346_
                                             _e1040710972_
                                             _hd1040810975_
                                             _tl1040910977_
                                             ___splice1331813319_
                                             _target1041010980_
                                             _tl1041210982_)
                                            (___match1335713358_
                                             _e1040710972_
                                             _hd1040810975_
                                             _tl1040910977_
                                             ___splice1331813319_
                                             _target1041010980_
                                             _tl1041210982_))))
                                    (if (gx#stx-pair? _tl1040910977_)
                                        (let ((_e1052210579_
                                               (gx#stx-e _tl1040910977_)))
                                          (let ((_tl1052410584_
                                                 (##cdr _e1052210579_))
                                                (_hd1052310582_
                                                 (##car _e1052210579_)))
                                            (if (gx#stx-pair? _hd1052310582_)
                                                (let ((_e1052510587_
                                                       (gx#stx-e
                                                        _hd1052310582_)))
                                                  (let ((_tl1052710592_
                                                         (##cdr _e1052510587_))
                                                        (_hd1052610590_
                                                         (##car _e1052510587_)))
                                                    (if (gx#identifier?
                                                         _hd1052610590_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1052610590_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1052710592_)
                        (let ((_e1052810595_ (gx#stx-e _tl1052710592_)))
                          (let ((_tl1053010600_ (##cdr _e1052810595_))
                                (_hd1052910598_ (##car _e1052810595_)))
                            (if (gx#stx-pair? _hd1052910598_)
                                (let ((_e1053110603_
                                       (gx#stx-e _hd1052910598_)))
                                  (let ((_tl1053310608_ (##cdr _e1053110603_))
                                        (_hd1053210606_ (##car _e1053110603_)))
                                    (if (gx#identifier? _hd1053210606_)
                                        (if (gx#stx-eq? '%#ref _hd1053210606_)
                                            (if (gx#stx-pair? _tl1053310608_)
                                                (let ((_e1053410611_
                                                       (gx#stx-e
                                                        _tl1053310608_)))
                                                  (let ((_tl1053610616_
                                                         (##cdr _e1053410611_))
                                                        (_hd1053510614_
                                                         (##car _e1053410611_)))
                                                    (if (gx#stx-null?
                                                         _tl1053610616_)
                                                        (if (gx#stx-pair?
                                                             _tl1053010600_)
                                                            (let ((_e1053710619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1053010600_)))
                      (let ((_tl1053910624_ (##cdr _e1053710619_))
                            (_hd1053810622_ (##car _e1053710619_)))
                        (if (gx#stx-pair? _hd1053810622_)
                            (let ((_e1054010627_ (gx#stx-e _hd1053810622_)))
                              (let ((_tl1054210632_ (##cdr _e1054010627_))
                                    (_hd1054110630_ (##car _e1054010627_)))
                                (if (gx#identifier? _hd1054110630_)
                                    (if (gx#stx-eq? '%#ref _hd1054110630_)
                                        (if (gx#stx-pair? _tl1054210632_)
                                            (let ((_e1054310635_
                                                   (gx#stx-e _tl1054210632_)))
                                              (let ((_tl1054510640_
                                                     (##cdr _e1054310635_))
                                                    (_hd1054410638_
                                                     (##car _e1054310635_)))
                                                (if (gx#stx-null?
                                                     _tl1054510640_)
                                                    (if (gx#stx-pair?
                                                         _tl1053910624_)
                                                        (let ((_e1054610643_
                                                               (gx#stx-e
                                                                _tl1053910624_)))
                                                          (let ((_tl1054810648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1054610643_))
                        (_hd1054710646_ (##car _e1054610643_)))
                    (if (gx#stx-pair? _hd1054710646_)
                        (let ((_e1054910651_ (gx#stx-e _hd1054710646_)))
                          (let ((_tl1055110656_ (##cdr _e1054910651_))
                                (_hd1055010654_ (##car _e1054910651_)))
                            (if (gx#identifier? _hd1055010654_)
                                (if (gx#stx-eq? '%#ref _hd1055010654_)
                                    (if (gx#stx-pair? _tl1055110656_)
                                        (let ((_e1055210659_
                                               (gx#stx-e _tl1055110656_)))
                                          (let ((_tl1055410664_
                                                 (##cdr _e1055210659_))
                                                (_hd1055310662_
                                                 (##car _e1055210659_)))
                                            (if (gx#stx-null? _tl1055410664_)
                                                (if (gx#stx-null?
                                                     _tl1054810648_)
                                                    (if (gx#stx-null?
                                                         _tl1052410584_)
                                                        (___match1345513456_
                                                         _e1040710972_
                                                         _hd1040810975_
                                                         _tl1040910977_
                                                         _e1052210579_
                                                         _hd1052310582_
                                                         _tl1052410584_
                                                         _e1052510587_
                                                         _hd1052610590_
                                                         _tl1052710592_
                                                         _e1052810595_
                                                         _hd1052910598_
                                                         _tl1053010600_
                                                         _e1053110603_
                                                         _hd1053210606_
                                                         _tl1053310608_
                                                         _e1053410611_
                                                         _hd1053510614_
                                                         _tl1053610616_
                                                         _e1053710619_
                                                         _hd1053810622_
                                                         _tl1053910624_
                                                         _e1054010627_
                                                         _hd1054110630_
                                                         _tl1054210632_
                                                         _e1054310635_
                                                         _hd1054410638_
                                                         _tl1054510640_
                                                         _e1054610643_
                                                         _hd1054710646_
                                                         _tl1054810648_
                                                         _e1054910651_
                                                         _hd1055010654_
                                                         _tl1055110656_
                                                         _e1055210659_
                                                         _hd1055310662_
                                                         _tl1055410664_)
                                                        (___kont1333013331_))
                                                    (___kont1333013331_))
                                                (___kont1333013331_))))
                                        (___kont1333013331_))
                                    (___kont1333013331_))
                                (___kont1333013331_))))
                        (___kont1333013331_))))
                (___kont1333013331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1333013331_))))
                                            (___kont1333013331_))
                                        (___kont1333013331_))
                                    (___kont1333013331_))))
                            (___kont1333013331_))))
                    (___kont1333013331_))
                (___kont1333013331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1333013331_))
                                            (___kont1333013331_))
                                        (___kont1333013331_))))
                                (___kont1333013331_))))
                        (___kont1333013331_))
                    (___kont1333013331_))
                (___kont1333013331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1333013331_))))
                                        (___kont1333013331_)))))
                            (___kont1333013331_)))))))
               (_dispatch-case-e9710_
                (lambda (_hd9858_ _body9859_)
                  (let* ((_form9861_ (cons _hd9858_ (cons _body9859_ '())))
                         (___stx1345813459_ _form9861_)
                         (_g98659989_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1345813459_))))
                    (let ((___kont1346013461_
                           (lambda (_L10360_ _L10361_ _L10362_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10361_ '())))))
                          (___kont1346613467_
                           (lambda (_L10208_ _L10209_ _L10210_ _L10211_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10208_ '())))))
                          (___kont1347013471_
                           (lambda (_L10074_ _L10075_ _L10076_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10074_ '()))))))
                      (let* ((___match1356713568_
                              (lambda (_e99559994_
                                       _hd99569997_
                                       _tl99579999_
                                       _e995810002_
                                       _hd995910005_
                                       _tl996010007_
                                       _e996110010_
                                       _hd996210013_
                                       _tl996310015_
                                       _e996410018_
                                       _hd996510021_
                                       _tl996610023_
                                       _e996710026_
                                       _hd996810029_
                                       _tl996910031_
                                       _e997010034_
                                       _hd997110037_
                                       _tl997210039_
                                       _e997310042_
                                       _hd997410045_
                                       _tl997510047_
                                       _e997610050_
                                       _hd997710053_
                                       _tl997810055_
                                       _e997910058_
                                       _hd998010061_
                                       _tl998110063_)
                                (if (gx#stx-pair? _tl997510047_)
                                    (let ((_e998210066_
                                           (gx#stx-e _tl997510047_)))
                                      (let ((_tl998410071_
                                             (##cdr _e998210066_))
                                            (_hd998310069_
                                             (##car _e998210066_)))
                                        (if (gx#stx-null? _tl998410071_)
                                            (if (gx#stx-null? _tl996010007_)
                                                (___kont1347013471_
                                                 _hd998010061_
                                                 _hd997110037_
                                                 _hd99569997_)
                                                (_g98659989_))
                                            (_g98659989_))))
                                    (_g98659989_))))
                             (___match1349713498_
                              (lambda (_e991610112_
                                       _hd991710115_
                                       _tl991810117_
                                       ___splice1346813469_
                                       _target991910120_
                                       _tl992110122_)
                                (letrec ((_loop992210125_
                                          (lambda (_hd992010128_
                                                   _arg992610130_)
                                            (if (gx#stx-pair? _hd992010128_)
                                                (let ((_e992310133_
                                                       (gx#stx-e
                                                        _hd992010128_)))
                                                  (let ((_lp-tl992510138_
                                                         (##cdr _e992310133_))
                                                        (_lp-hd992410136_
                                                         (##car _e992310133_)))
                                                    (_loop992210125_
                                                     _lp-tl992510138_
                                                     (cons _lp-hd992410136_
                                                           _arg992610130_))))
                                                (let ((_arg992710141_
                                                       (reverse _arg992610130_)))
                                                  (if (gx#stx-pair?
                                                       _tl991810117_)
                                                      (let ((_e992810144_
                                                             (gx#stx-e
                                                              _tl991810117_)))
                                                        (let ((_tl993010149_
                                                               (##cdr _e992810144_))
                                                              (_hd992910147_
                                                               (##car _e992810144_)))
                                                          (if (gx#stx-pair?
                                                               _hd992910147_)
                                                              (let ((_e993110152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd992910147_)))
                        (let ((_tl993310157_ (##cdr _e993110152_))
                              (_hd993210155_ (##car _e993110152_)))
                          (if (gx#identifier? _hd993210155_)
                              (if (gx#stx-eq? '%#call _hd993210155_)
                                  (if (gx#stx-pair? _tl993310157_)
                                      (let ((_e993410160_
                                             (gx#stx-e _tl993310157_)))
                                        (let ((_tl993610165_
                                               (##cdr _e993410160_))
                                              (_hd993510163_
                                               (##car _e993410160_)))
                                          (if (gx#stx-pair? _hd993510163_)
                                              (let ((_e993710168_
                                                     (gx#stx-e _hd993510163_)))
                                                (let ((_tl993910173_
                                                       (##cdr _e993710168_))
                                                      (_hd993810171_
                                                       (##car _e993710168_)))
                                                  (if (gx#identifier?
                                                       _hd993810171_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd993810171_)
                                                          (if (gx#stx-pair?
                                                               _tl993910173_)
                                                              (let ((_e994010176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl993910173_)))
                        (let ((_tl994210181_ (##cdr _e994010176_))
                              (_hd994110179_ (##car _e994010176_)))
                          (if (gx#stx-null? _tl994210181_)
                              (if (gx#stx-pair? _tl993610165_)
                                  (let ((_e994310184_
                                         (gx#stx-e _tl993610165_)))
                                    (let ((_tl994510189_ (##cdr _e994310184_))
                                          (_hd994410187_ (##car _e994310184_)))
                                      (if (gx#stx-pair? _hd994410187_)
                                          (let ((_e994610192_
                                                 (gx#stx-e _hd994410187_)))
                                            (let ((_tl994810197_
                                                   (##cdr _e994610192_))
                                                  (_hd994710195_
                                                   (##car _e994610192_)))
                                              (if (gx#identifier?
                                                   _hd994710195_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd994710195_)
                                                      (if (gx#stx-pair?
                                                           _tl994810197_)
                                                          (let ((_e994910200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl994810197_)))
                    (let ((_tl995110205_ (##cdr _e994910200_))
                          (_hd995010203_ (##car _e994910200_)))
                      (if (gx#stx-null? _tl995110205_)
                          (if (gx#stx-null? _tl993010149_)
                              (___kont1346613467_
                               _hd995010203_
                               _hd994110179_
                               _tl992110122_
                               _arg992710141_)
                              (___match1356713568_
                               _e991610112_
                               _hd991710115_
                               _tl991810117_
                               _e992810144_
                               _hd992910147_
                               _tl993010149_
                               _e993110152_
                               _hd993210155_
                               _tl993310157_
                               _e993410160_
                               _hd993510163_
                               _tl993610165_
                               _e993710168_
                               _hd993810171_
                               _tl993910173_
                               _e994010176_
                               _hd994110179_
                               _tl994210181_
                               _e994310184_
                               _hd994410187_
                               _tl994510189_
                               _e994610192_
                               _hd994710195_
                               _tl994810197_
                               _e994910200_
                               _hd995010203_
                               _tl995110205_))
                          (_g98659989_))))
                  (_g98659989_))
              (_g98659989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g98659989_))))
                                          (_g98659989_))))
                                  (_g98659989_))
                              (_g98659989_))))
                      (_g98659989_))
                  (_g98659989_))
              (_g98659989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98659989_))))
                                      (_g98659989_))
                                  (_g98659989_))
                              (_g98659989_))))
                      (_g98659989_))))
              (_g98659989_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop992210125_ _target991910120_ '()))))
                             (___match1348513486_
                              (lambda (_e987010248_
                                       _hd987110251_
                                       _tl987210253_
                                       ___splice1346213463_
                                       _target987310256_
                                       _tl987510258_)
                                (letrec ((_loop987610261_
                                          (lambda (_hd987410264_
                                                   _arg988010266_)
                                            (if (gx#stx-pair? _hd987410264_)
                                                (let ((_e987710269_
                                                       (gx#stx-e
                                                        _hd987410264_)))
                                                  (let ((_lp-tl987910274_
                                                         (##cdr _e987710269_))
                                                        (_lp-hd987810272_
                                                         (##car _e987710269_)))
                                                    (_loop987610261_
                                                     _lp-tl987910274_
                                                     (cons _lp-hd987810272_
                                                           _arg988010266_))))
                                                (let ((_arg988110277_
                                                       (reverse _arg988010266_)))
                                                  (if (gx#stx-pair?
                                                       _tl987210253_)
                                                      (let ((_e988210280_
                                                             (gx#stx-e
                                                              _tl987210253_)))
                                                        (let ((_tl988410285_
                                                               (##cdr _e988210280_))
                                                              (_hd988310283_
                                                               (##car _e988210280_)))
                                                          (if (gx#stx-pair?
                                                               _hd988310283_)
                                                              (let ((_e988510288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd988310283_)))
                        (let ((_tl988710293_ (##cdr _e988510288_))
                              (_hd988610291_ (##car _e988510288_)))
                          (if (gx#identifier? _hd988610291_)
                              (if (gx#stx-eq? '%#call _hd988610291_)
                                  (if (gx#stx-pair? _tl988710293_)
                                      (let ((_e988810296_
                                             (gx#stx-e _tl988710293_)))
                                        (let ((_tl989010301_
                                               (##cdr _e988810296_))
                                              (_hd988910299_
                                               (##car _e988810296_)))
                                          (if (gx#stx-pair? _hd988910299_)
                                              (let ((_e989110304_
                                                     (gx#stx-e _hd988910299_)))
                                                (let ((_tl989310309_
                                                       (##cdr _e989110304_))
                                                      (_hd989210307_
                                                       (##car _e989110304_)))
                                                  (if (gx#identifier?
                                                       _hd989210307_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd989210307_)
                                                          (if (gx#stx-pair?
                                                               _tl989310309_)
                                                              (let ((_e989410312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl989310309_)))
                        (let ((_tl989610317_ (##cdr _e989410312_))
                              (_hd989510315_ (##car _e989410312_)))
                          (if (gx#stx-null? _tl989610317_)
                              (if (gx#stx-pair/null? _tl989010301_)
                                  (let ((___splice1346413465_
                                         (gx#syntax-split-splice
                                          _tl989010301_
                                          '0)))
                                    (let ((_tl989910322_
                                           (##vector-ref
                                            ___splice1346413465_
                                            '1))
                                          (_target989710320_
                                           (##vector-ref
                                            ___splice1346413465_
                                            '0)))
                                      (if (gx#stx-null? _tl989910322_)
                                          (letrec ((_loop990010325_
                                                    (lambda (_hd989810328_
                                                             _xarg990410330_)
                                                      (if (gx#stx-pair?
                                                           _hd989810328_)
                                                          (let ((_e990110333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd989810328_)))
                    (let ((_lp-tl990310338_ (##cdr _e990110333_))
                          (_lp-hd990210336_ (##car _e990110333_)))
                      (if (gx#stx-pair? _lp-hd990210336_)
                          (let ((_e990610341_ (gx#stx-e _lp-hd990210336_)))
                            (let ((_tl990810346_ (##cdr _e990610341_))
                                  (_hd990710344_ (##car _e990610341_)))
                              (if (gx#identifier? _hd990710344_)
                                  (if (gx#stx-eq? '%#ref _hd990710344_)
                                      (if (gx#stx-pair? _tl990810346_)
                                          (let ((_e990910349_
                                                 (gx#stx-e _tl990810346_)))
                                            (let ((_tl991110354_
                                                   (##cdr _e990910349_))
                                                  (_hd991010352_
                                                   (##car _e990910349_)))
                                              (if (gx#stx-null? _tl991110354_)
                                                  (_loop990010325_
                                                   _lp-tl990310338_
                                                   (cons _hd991010352_
                                                         _xarg990410330_))
                                                  (___match1349713498_
                                                   _e987010248_
                                                   _hd987110251_
                                                   _tl987210253_
                                                   ___splice1346213463_
                                                   _target987310256_
                                                   _tl987510258_))))
                                          (___match1349713498_
                                           _e987010248_
                                           _hd987110251_
                                           _tl987210253_
                                           ___splice1346213463_
                                           _target987310256_
                                           _tl987510258_))
                                      (___match1349713498_
                                       _e987010248_
                                       _hd987110251_
                                       _tl987210253_
                                       ___splice1346213463_
                                       _target987310256_
                                       _tl987510258_))
                                  (___match1349713498_
                                   _e987010248_
                                   _hd987110251_
                                   _tl987210253_
                                   ___splice1346213463_
                                   _target987310256_
                                   _tl987510258_))))
                          (___match1349713498_
                           _e987010248_
                           _hd987110251_
                           _tl987210253_
                           ___splice1346213463_
                           _target987310256_
                           _tl987510258_))))
                  (let ((_xarg990510357_ (reverse _xarg990410330_)))
                    (if (gx#stx-null? _tl988410285_)
                        (___kont1346013461_
                         _xarg990510357_
                         _hd989510315_
                         _arg988110277_)
                        (___match1349713498_
                         _e987010248_
                         _hd987110251_
                         _tl987210253_
                         ___splice1346213463_
                         _target987310256_
                         _tl987510258_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop990010325_
                                             _target989710320_
                                             '()))
                                          (___match1349713498_
                                           _e987010248_
                                           _hd987110251_
                                           _tl987210253_
                                           ___splice1346213463_
                                           _target987310256_
                                           _tl987510258_))))
                                  (___match1349713498_
                                   _e987010248_
                                   _hd987110251_
                                   _tl987210253_
                                   ___splice1346213463_
                                   _target987310256_
                                   _tl987510258_))
                              (___match1349713498_
                               _e987010248_
                               _hd987110251_
                               _tl987210253_
                               ___splice1346213463_
                               _target987310256_
                               _tl987510258_))))
                      (___match1349713498_
                       _e987010248_
                       _hd987110251_
                       _tl987210253_
                       ___splice1346213463_
                       _target987310256_
                       _tl987510258_))
                  (___match1349713498_
                   _e987010248_
                   _hd987110251_
                   _tl987210253_
                   ___splice1346213463_
                   _target987310256_
                   _tl987510258_))
              (___match1349713498_
               _e987010248_
               _hd987110251_
               _tl987210253_
               ___splice1346213463_
               _target987310256_
               _tl987510258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1349713498_
                                               _e987010248_
                                               _hd987110251_
                                               _tl987210253_
                                               ___splice1346213463_
                                               _target987310256_
                                               _tl987510258_))))
                                      (___match1349713498_
                                       _e987010248_
                                       _hd987110251_
                                       _tl987210253_
                                       ___splice1346213463_
                                       _target987310256_
                                       _tl987510258_))
                                  (___match1349713498_
                                   _e987010248_
                                   _hd987110251_
                                   _tl987210253_
                                   ___splice1346213463_
                                   _target987310256_
                                   _tl987510258_))
                              (___match1349713498_
                               _e987010248_
                               _hd987110251_
                               _tl987210253_
                               ___splice1346213463_
                               _target987310256_
                               _tl987510258_))))
                      (___match1349713498_
                       _e987010248_
                       _hd987110251_
                       _tl987210253_
                       ___splice1346213463_
                       _target987310256_
                       _tl987510258_))))
              (___match1349713498_
               _e987010248_
               _hd987110251_
               _tl987210253_
               ___splice1346213463_
               _target987310256_
               _tl987510258_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop987610261_ _target987310256_ '())))))
                        (if (gx#stx-pair? ___stx1345813459_)
                            (let ((_e987010248_ (gx#stx-e ___stx1345813459_)))
                              (let ((_tl987210253_ (##cdr _e987010248_))
                                    (_hd987110251_ (##car _e987010248_)))
                                (if (gx#stx-pair/null? _hd987110251_)
                                    (let ((___splice1346213463_
                                           (gx#syntax-split-splice
                                            _hd987110251_
                                            '0)))
                                      (let ((_tl987510258_
                                             (##vector-ref
                                              ___splice1346213463_
                                              '1))
                                            (_target987310256_
                                             (##vector-ref
                                              ___splice1346213463_
                                              '0)))
                                        (if (gx#stx-null? _tl987510258_)
                                            (___match1348513486_
                                             _e987010248_
                                             _hd987110251_
                                             _tl987210253_
                                             ___splice1346213463_
                                             _target987310256_
                                             _tl987510258_)
                                            (___match1349713498_
                                             _e987010248_
                                             _hd987110251_
                                             _tl987210253_
                                             ___splice1346213463_
                                             _target987310256_
                                             _tl987510258_))))
                                    (if (gx#stx-pair? _tl987210253_)
                                        (let ((_e995810002_
                                               (gx#stx-e _tl987210253_)))
                                          (let ((_tl996010007_
                                                 (##cdr _e995810002_))
                                                (_hd995910005_
                                                 (##car _e995810002_)))
                                            (if (gx#stx-pair? _hd995910005_)
                                                (let ((_e996110010_
                                                       (gx#stx-e
                                                        _hd995910005_)))
                                                  (let ((_tl996310015_
                                                         (##cdr _e996110010_))
                                                        (_hd996210013_
                                                         (##car _e996110010_)))
                                                    (if (gx#identifier?
                                                         _hd996210013_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd996210013_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl996310015_)
                        (let ((_e996410018_ (gx#stx-e _tl996310015_)))
                          (let ((_tl996610023_ (##cdr _e996410018_))
                                (_hd996510021_ (##car _e996410018_)))
                            (if (gx#stx-pair? _hd996510021_)
                                (let ((_e996710026_ (gx#stx-e _hd996510021_)))
                                  (let ((_tl996910031_ (##cdr _e996710026_))
                                        (_hd996810029_ (##car _e996710026_)))
                                    (if (gx#identifier? _hd996810029_)
                                        (if (gx#stx-eq? '%#ref _hd996810029_)
                                            (if (gx#stx-pair? _tl996910031_)
                                                (let ((_e997010034_
                                                       (gx#stx-e
                                                        _tl996910031_)))
                                                  (let ((_tl997210039_
                                                         (##cdr _e997010034_))
                                                        (_hd997110037_
                                                         (##car _e997010034_)))
                                                    (if (gx#stx-null?
                                                         _tl997210039_)
                                                        (if (gx#stx-pair?
                                                             _tl996610023_)
                                                            (let ((_e997310042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl996610023_)))
                      (let ((_tl997510047_ (##cdr _e997310042_))
                            (_hd997410045_ (##car _e997310042_)))
                        (if (gx#stx-pair? _hd997410045_)
                            (let ((_e997610050_ (gx#stx-e _hd997410045_)))
                              (let ((_tl997810055_ (##cdr _e997610050_))
                                    (_hd997710053_ (##car _e997610050_)))
                                (if (gx#identifier? _hd997710053_)
                                    (if (gx#stx-eq? '%#ref _hd997710053_)
                                        (if (gx#stx-pair? _tl997810055_)
                                            (let ((_e997910058_
                                                   (gx#stx-e _tl997810055_)))
                                              (let ((_tl998110063_
                                                     (##cdr _e997910058_))
                                                    (_hd998010061_
                                                     (##car _e997910058_)))
                                                (if (gx#stx-null?
                                                     _tl998110063_)
                                                    (if (gx#stx-pair?
                                                         _tl997510047_)
                                                        (let ((_e998210066_
                                                               (gx#stx-e
                                                                _tl997510047_)))
                                                          (let ((_tl998410071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e998210066_))
                        (_hd998310069_ (##car _e998210066_)))
                    (if (gx#stx-null? _tl998410071_)
                        (if (gx#stx-null? _tl996010007_)
                            (___kont1347013471_
                             _hd998010061_
                             _hd997110037_
                             _hd987110251_)
                            (_g98659989_))
                        (_g98659989_))))
                (_g98659989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98659989_))))
                                            (_g98659989_))
                                        (_g98659989_))
                                    (_g98659989_))))
                            (_g98659989_))))
                    (_g98659989_))
                (_g98659989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98659989_))
                                            (_g98659989_))
                                        (_g98659989_))))
                                (_g98659989_))))
                        (_g98659989_))
                    (_g98659989_))
                (_g98659989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98659989_))))
                                        (_g98659989_)))))
                            (_g98659989_)))))))
               (_generate19711_
                (lambda (_args9846_ _arglen9847_ _hd9848_ _body9849_)
                  (let* ((_len9851_ (gx#stx-length _hd9848_))
                         (_condition9853_
                          (if (gx#stx-list? _hd9848_)
                              (cons '##fx=
                                    (cons _arglen9847_ (cons _len9851_ '())))
                              (if (> _len9851_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9847_
                                              (cons _len9851_ '())))
                                  '#t)))
                         (_dispatch9855_
                          (if (_dispatch-case?9709_ _hd9848_ _body9849_)
                              (_dispatch-case-e9710_ _hd9848_ _body9849_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9848_)
                                          (cons (gxc#compile-e _body9849_)
                                                '()))))))
                    (cons _condition9853_
                          (cons (cons 'apply
                                      (cons _dispatch9855_
                                            (cons _args9846_ '())))
                                '()))))))
        (let* ((_g97139741_
                (lambda (_g97149738_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g97149738_)))
               (_g97129843_
                (lambda (_g97149744_)
                  (if (gx#stx-pair? _g97149744_)
                      (let ((_e97179746_ (gx#stx-e _g97149744_)))
                        (let ((_hd97189749_ (##car _e97179746_))
                              (_tl97199751_ (##cdr _e97179746_)))
                          (if (gx#stx-pair/null? _tl97199751_)
                              (let ((_g14270_
                                     (gx#syntax-split-splice _tl97199751_ '0)))
                                (begin
                                  (let ((_g14271_
                                         (if (##values? _g14270_)
                                             (##vector-length _g14270_)
                                             1)))
                                    (if (not (##fx= _g14271_ 2))
                                        (error "Context expects 2 values"
                                               _g14271_)))
                                  (let ((_target97209754_
                                         (##vector-ref _g14270_ 0))
                                        (_tl97229756_
                                         (##vector-ref _g14270_ 1)))
                                    (if (gx#stx-null? _tl97229756_)
                                        (letrec ((_loop97239759_
                                                  (lambda (_hd97219762_
                                                           _body97279764_
                                                           _hd97289766_)
                                                    (if (gx#stx-pair?
                                                         _hd97219762_)
                                                        (let ((_e97249769_
                                                               (gx#stx-e
                                                                _hd97219762_)))
                                                          (let ((_lp-hd97259772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97249769_))
                        (_lp-tl97269774_ (##cdr _e97249769_)))
                    (if (gx#stx-pair? _lp-hd97259772_)
                        (let ((_e97319777_ (gx#stx-e _lp-hd97259772_)))
                          (let ((_hd97329780_ (##car _e97319777_))
                                (_tl97339782_ (##cdr _e97319777_)))
                            (if (gx#stx-pair? _tl97339782_)
                                (let ((_e97349785_ (gx#stx-e _tl97339782_)))
                                  (let ((_hd97359788_ (##car _e97349785_))
                                        (_tl97369790_ (##cdr _e97349785_)))
                                    (if (gx#stx-null? _tl97369790_)
                                        (_loop97239759_
                                         _lp-tl97269774_
                                         (cons _hd97359788_ _body97279764_)
                                         (cons _hd97329780_ _hd97289766_))
                                        (_g97139741_ _g97149744_))))
                                (_g97139741_ _g97149744_))))
                        (_g97139741_ _g97149744_))))
                (let ((_body97299793_ (reverse _body97279764_))
                      (_hd97309795_ (reverse _hd97289766_)))
                  ((lambda (_L9798_ _L9799_)
                     (let ((_args9818_ (gxc#generate-runtime-temporary__0))
                           (_arglen9819_ (gxc#generate-runtime-temporary__0))
                           (_name9820_
                            (let ((_$e9815_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx9707_
                                    '#f)))
                              (if _$e9815_ _$e9815_ ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args9818_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen9819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args9818_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name9820_
                                                               (cons _args9818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g98219824_ _g98229826_)
                                        (_generate19711_
                                         _args9818_
                                         _arglen9819_
                                         _g98219824_
                                         _g98229826_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g98289831_
                                                         _g98299833_)
                                                  (cons _g98289831_
                                                        _g98299833_))
                                                '()
                                                _L9799_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g98359838_
                                                         _g98369840_)
                                                  (cons _g98359838_
                                                        _g98369840_))
                                                '()
                                                _L9798_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body97299793_
                   _hd97309795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop97239759_
                                           _target97209754_
                                           '()
                                           '()))
                                        (_g97139741_ _g97149744_)))))
                              (_g97139741_ _g97149744_))))
                      (_g97139741_ _g97149744_)))))
          (_g97129843_ _stx9707_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8772_ _compiled-body?8773_)
        (letrec ((_generate-simple8775_
                  (lambda (_hd9694_ _body9695_)
                    (_coalesce-let*8776_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9694_
                      _body9695_
                      _compiled-body?8773_))))
                 (_coalesce-let*8776_
                  (lambda (_code9078_)
                    (let* ((___stx1358013581_ _code9078_)
                           (_g90839218_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1358013581_))))
                      (let ((___kont1358213583_
                             (lambda (_L9653_ _L9654_ _L9655_)
                               (cons 'let
                                     (cons (cons (cons _L9655_
                                                       (cons _L9654_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g96839686_
                                                              _g96849688_)
                                                       (cons _g96839686_
                                                             _g96849688_))
                                                     '()
                                                     _L9653_))))))
                            (___kont1358613587_
                             (lambda (_L9512_ _L9513_ _L9514_ _L9515_ _L9516_)
                               (cons 'let*
                                     (cons (cons (cons _L9516_
                                                       (cons _L9515_ '()))
                                                 (cons (cons _L9514_
                                                             (cons _L9513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g95529555_
                                                              _g95539557_)
                                                       (cons _g95529555_
                                                             _g95539557_))
                                                     '()
                                                     _L9512_))))))
                            (___kont1359013591_
                             (lambda (_L9342_ _L9343_ _L9344_ _L9345_)
                               (cons 'let*
                                     (cons (cons (cons _L9345_
                                                       (cons _L9344_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g93809383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g93819385_)
                     (cons _g93809383_ _g93819385_))
                   '()
                   _L9343_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g93879390_
                                                              _g93889392_)
                                                       (cons _g93879390_
                                                             _g93889392_))
                                                     '()
                                                     _L9342_))))))
                            (___kont1359613597_ (lambda () _code9078_)))
                        (let* ((___match1382513826_
                                (lambda (_e91729230_
                                         _hd91739233_
                                         _tl91749235_
                                         _e91759238_
                                         _hd91769241_
                                         _tl91779243_
                                         _e91789246_
                                         _hd91799249_
                                         _tl91809251_
                                         _e91819254_
                                         _hd91829257_
                                         _tl91839259_
                                         _e91849262_
                                         _hd91859265_
                                         _tl91869267_
                                         _e91879270_
                                         _hd91889273_
                                         _tl91899275_
                                         _e91909278_
                                         _hd91919281_
                                         _tl91929283_
                                         _e91939286_
                                         _hd91949289_
                                         _tl91959291_
                                         ___splice1359213593_
                                         _target91969294_
                                         _tl91989296_)
                                  (letrec ((_loop91999299_
                                            (lambda (_hd91979302_
                                                     _bind92039304_)
                                              (if (gx#stx-pair? _hd91979302_)
                                                  (let ((_e92009307_
                                                         (gx#stx-e
                                                          _hd91979302_)))
                                                    (let ((_lp-tl92029312_
                                                           (##cdr _e92009307_))
                                                          (_lp-hd92019310_
                                                           (##car _e92009307_)))
                                                      (_loop91999299_
                                                       _lp-tl92029312_
                                                       (cons _lp-hd92019310_
                                                             _bind92039304_))))
                                                  (let ((_bind92049315_
                                                         (reverse _bind92039304_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl91959291_)
                                                        (let ((___splice1359413595_
                                                               (gx#syntax-split-splice
                                                                _tl91959291_
                                                                '0)))
                                                          (let ((_tl92079320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1359413595_ '1))
                        (_target92059318_
                         (##vector-ref ___splice1359413595_ '0)))
                    (if (gx#stx-null? _tl92079320_)
                        (letrec ((_loop92089323_
                                  (lambda (_hd92069326_ _body92129328_)
                                    (if (gx#stx-pair? _hd92069326_)
                                        (let ((_e92099331_
                                               (gx#stx-e _hd92069326_)))
                                          (let ((_lp-tl92119336_
                                                 (##cdr _e92099331_))
                                                (_lp-hd92109334_
                                                 (##car _e92099331_)))
                                            (_loop92089323_
                                             _lp-tl92119336_
                                             (cons _lp-hd92109334_
                                                   _body92129328_))))
                                        (let ((_body92139339_
                                               (reverse _body92129328_)))
                                          (if (gx#stx-null? _tl91899275_)
                                              (___kont1359013591_
                                               _body92139339_
                                               _bind92049315_
                                               _hd91859265_
                                               _hd91829257_)
                                              (___kont1359613597_)))))))
                          (_loop92089323_ _target92059318_ '()))
                        (___kont1359613597_))))
                (___kont1359613597_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop91999299_ _target91969294_ '()))))
                               (___match1375713758_
                                (lambda (_e91269400_
                                         _hd91279403_
                                         _tl91289405_
                                         _e91299408_
                                         _hd91309411_
                                         _tl91319413_
                                         _e91329416_
                                         _hd91339419_
                                         _tl91349421_
                                         _e91359424_
                                         _hd91369427_
                                         _tl91379429_
                                         _e91389432_
                                         _hd91399435_
                                         _tl91409437_
                                         _e91419440_
                                         _hd91429443_
                                         _tl91439445_
                                         _e91449448_
                                         _hd91459451_
                                         _tl91469453_
                                         _e91479456_
                                         _hd91489459_
                                         _tl91499461_
                                         _e91509464_
                                         _hd91519467_
                                         _tl91529469_
                                         _e91539472_
                                         _hd91549475_
                                         _tl91559477_
                                         _e91569480_
                                         _hd91579483_
                                         _tl91589485_
                                         ___splice1358813589_
                                         _target91599488_
                                         _tl91619490_)
                                  (letrec ((_loop91629493_
                                            (lambda (_hd91609496_
                                                     _body91669498_)
                                              (if (gx#stx-pair? _hd91609496_)
                                                  (let ((_e91639501_
                                                         (gx#stx-e
                                                          _hd91609496_)))
                                                    (let ((_lp-tl91659506_
                                                           (##cdr _e91639501_))
                                                          (_lp-hd91649504_
                                                           (##car _e91639501_)))
                                                      (_loop91629493_
                                                       _lp-tl91659506_
                                                       (cons _lp-hd91649504_
                                                             _body91669498_))))
                                                  (let ((_body91679509_
                                                         (reverse _body91669498_)))
                                                    (if (gx#stx-null?
                                                         _tl91439445_)
                                                        (___kont1358613587_
                                                         _body91679509_
                                                         _hd91579483_
                                                         _hd91549475_
                                                         _hd91399435_
                                                         _hd91369427_)
                                                        (___kont1359613597_)))))))
                                    (_loop91629493_ _target91599488_ '()))))
                               (___match1366713668_
                                (lambda (_e90889565_
                                         _hd90899568_
                                         _tl90909570_
                                         _e90919573_
                                         _hd90929576_
                                         _tl90939578_
                                         _e90949581_
                                         _hd90959584_
                                         _tl90969586_
                                         _e90979589_
                                         _hd90989592_
                                         _tl90999594_
                                         _e91009597_
                                         _hd91019600_
                                         _tl91029602_
                                         _e91039605_
                                         _hd91049608_
                                         _tl91059610_
                                         _e91069613_
                                         _hd91079616_
                                         _tl91089618_
                                         _e91099621_
                                         _hd91109624_
                                         _tl91119626_
                                         ___splice1358413585_
                                         _target91129629_
                                         _tl91149631_)
                                  (letrec ((_loop91159634_
                                            (lambda (_hd91139637_
                                                     _body91199639_)
                                              (if (gx#stx-pair? _hd91139637_)
                                                  (let ((_e91169642_
                                                         (gx#stx-e
                                                          _hd91139637_)))
                                                    (let ((_lp-tl91189647_
                                                           (##cdr _e91169642_))
                                                          (_lp-hd91179645_
                                                           (##car _e91169642_)))
                                                      (_loop91159634_
                                                       _lp-tl91189647_
                                                       (cons _lp-hd91179645_
                                                             _body91199639_))))
                                                  (let ((_body91209650_
                                                         (reverse _body91199639_)))
                                                    (if (gx#stx-null?
                                                         _tl91059610_)
                                                        (___kont1358213583_
                                                         _body91209650_
                                                         _hd91019600_
                                                         _hd90989592_)
                                                        (___kont1359613597_)))))))
                                    (_loop91159634_ _target91129629_ '())))))
                          (if (gx#stx-pair? ___stx1358013581_)
                              (let ((_e90889565_ (gx#stx-e ___stx1358013581_)))
                                (let ((_tl90909570_ (##cdr _e90889565_))
                                      (_hd90899568_ (##car _e90889565_)))
                                  (if (gx#identifier? _hd90899568_)
                                      (if (gx#stx-eq? 'let _hd90899568_)
                                          (if (gx#stx-pair? _tl90909570_)
                                              (let ((_e90919573_
                                                     (gx#stx-e _tl90909570_)))
                                                (let ((_tl90939578_
                                                       (##cdr _e90919573_))
                                                      (_hd90929576_
                                                       (##car _e90919573_)))
                                                  (if (gx#stx-pair?
                                                       _hd90929576_)
                                                      (let ((_e90949581_
                                                             (gx#stx-e
                                                              _hd90929576_)))
                                                        (let ((_tl90969586_
                                                               (##cdr _e90949581_))
                                                              (_hd90959584_
                                                               (##car _e90949581_)))
                                                          (if (gx#stx-pair?
                                                               _hd90959584_)
                                                              (let ((_e90979589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd90959584_)))
                        (let ((_tl90999594_ (##cdr _e90979589_))
                              (_hd90989592_ (##car _e90979589_)))
                          (if (gx#stx-pair? _tl90999594_)
                              (let ((_e91009597_ (gx#stx-e _tl90999594_)))
                                (let ((_tl91029602_ (##cdr _e91009597_))
                                      (_hd91019600_ (##car _e91009597_)))
                                  (if (gx#stx-null? _tl91029602_)
                                      (if (gx#stx-null? _tl90969586_)
                                          (if (gx#stx-pair? _tl90939578_)
                                              (let ((_e91039605_
                                                     (gx#stx-e _tl90939578_)))
                                                (let ((_tl91059610_
                                                       (##cdr _e91039605_))
                                                      (_hd91049608_
                                                       (##car _e91039605_)))
                                                  (if (gx#stx-pair?
                                                       _hd91049608_)
                                                      (let ((_e91069613_
                                                             (gx#stx-e
                                                              _hd91049608_)))
                                                        (let ((_tl91089618_
                                                               (##cdr _e91069613_))
                                                              (_hd91079616_
                                                               (##car _e91069613_)))
                                                          (if (gx#identifier?
                                                               _hd91079616_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd91079616_)
                          (if (gx#stx-pair? _tl91089618_)
                              (let ((_e91099621_ (gx#stx-e _tl91089618_)))
                                (let ((_tl91119626_ (##cdr _e91099621_))
                                      (_hd91109624_ (##car _e91099621_)))
                                  (if (gx#stx-null? _hd91109624_)
                                      (if (gx#stx-pair/null? _tl91119626_)
                                          (let ((___splice1358413585_
                                                 (gx#syntax-split-splice
                                                  _tl91119626_
                                                  '0)))
                                            (let ((_tl91149631_
                                                   (##vector-ref
                                                    ___splice1358413585_
                                                    '1))
                                                  (_target91129629_
                                                   (##vector-ref
                                                    ___splice1358413585_
                                                    '0)))
                                              (if (gx#stx-null? _tl91149631_)
                                                  (___match1366713668_
                                                   _e90889565_
                                                   _hd90899568_
                                                   _tl90909570_
                                                   _e90919573_
                                                   _hd90929576_
                                                   _tl90939578_
                                                   _e90949581_
                                                   _hd90959584_
                                                   _tl90969586_
                                                   _e90979589_
                                                   _hd90989592_
                                                   _tl90999594_
                                                   _e91009597_
                                                   _hd91019600_
                                                   _tl91029602_
                                                   _e91039605_
                                                   _hd91049608_
                                                   _tl91059610_
                                                   _e91069613_
                                                   _hd91079616_
                                                   _tl91089618_
                                                   _e91099621_
                                                   _hd91109624_
                                                   _tl91119626_
                                                   ___splice1358413585_
                                                   _target91129629_
                                                   _tl91149631_)
                                                  (___kont1359613597_))))
                                          (___kont1359613597_))
                                      (if (gx#stx-pair? _hd91109624_)
                                          (let ((_e91509464_
                                                 (gx#stx-e _hd91109624_)))
                                            (let ((_tl91529469_
                                                   (##cdr _e91509464_))
                                                  (_hd91519467_
                                                   (##car _e91509464_)))
                                              (if (gx#stx-pair? _hd91519467_)
                                                  (let ((_e91539472_
                                                         (gx#stx-e
                                                          _hd91519467_)))
                                                    (let ((_tl91559477_
                                                           (##cdr _e91539472_))
                                                          (_hd91549475_
                                                           (##car _e91539472_)))
                                                      (if (gx#stx-pair?
                                                           _tl91559477_)
                                                          (let ((_e91569480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl91559477_)))
                    (let ((_tl91589485_ (##cdr _e91569480_))
                          (_hd91579483_ (##car _e91569480_)))
                      (if (gx#stx-null? _tl91589485_)
                          (if (gx#stx-null? _tl91529469_)
                              (if (gx#stx-pair/null? _tl91119626_)
                                  (let ((___splice1358813589_
                                         (gx#syntax-split-splice
                                          _tl91119626_
                                          '0)))
                                    (let ((_tl91619490_
                                           (##vector-ref
                                            ___splice1358813589_
                                            '1))
                                          (_target91599488_
                                           (##vector-ref
                                            ___splice1358813589_
                                            '0)))
                                      (if (gx#stx-null? _tl91619490_)
                                          (___match1375713758_
                                           _e90889565_
                                           _hd90899568_
                                           _tl90909570_
                                           _e90919573_
                                           _hd90929576_
                                           _tl90939578_
                                           _e90949581_
                                           _hd90959584_
                                           _tl90969586_
                                           _e90979589_
                                           _hd90989592_
                                           _tl90999594_
                                           _e91009597_
                                           _hd91019600_
                                           _tl91029602_
                                           _e91039605_
                                           _hd91049608_
                                           _tl91059610_
                                           _e91069613_
                                           _hd91079616_
                                           _tl91089618_
                                           _e91099621_
                                           _hd91109624_
                                           _tl91119626_
                                           _e91509464_
                                           _hd91519467_
                                           _tl91529469_
                                           _e91539472_
                                           _hd91549475_
                                           _tl91559477_
                                           _e91569480_
                                           _hd91579483_
                                           _tl91589485_
                                           ___splice1358813589_
                                           _target91599488_
                                           _tl91619490_)
                                          (___kont1359613597_))))
                                  (___kont1359613597_))
                              (___kont1359613597_))
                          (___kont1359613597_))))
                  (___kont1359613597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1359613597_))))
                                          (___kont1359613597_)))))
                              (___kont1359613597_))
                          (if (gx#stx-eq? 'let* _hd91079616_)
                              (if (gx#stx-pair? _tl91089618_)
                                  (let ((_e91939286_ (gx#stx-e _tl91089618_)))
                                    (let ((_tl91959291_ (##cdr _e91939286_))
                                          (_hd91949289_ (##car _e91939286_)))
                                      (if (gx#stx-pair/null? _hd91949289_)
                                          (let ((___splice1359213593_
                                                 (gx#syntax-split-splice
                                                  _hd91949289_
                                                  '0)))
                                            (let ((_tl91989296_
                                                   (##vector-ref
                                                    ___splice1359213593_
                                                    '1))
                                                  (_target91969294_
                                                   (##vector-ref
                                                    ___splice1359213593_
                                                    '0)))
                                              (if (gx#stx-null? _tl91989296_)
                                                  (___match1382513826_
                                                   _e90889565_
                                                   _hd90899568_
                                                   _tl90909570_
                                                   _e90919573_
                                                   _hd90929576_
                                                   _tl90939578_
                                                   _e90949581_
                                                   _hd90959584_
                                                   _tl90969586_
                                                   _e90979589_
                                                   _hd90989592_
                                                   _tl90999594_
                                                   _e91009597_
                                                   _hd91019600_
                                                   _tl91029602_
                                                   _e91039605_
                                                   _hd91049608_
                                                   _tl91059610_
                                                   _e91069613_
                                                   _hd91079616_
                                                   _tl91089618_
                                                   _e91939286_
                                                   _hd91949289_
                                                   _tl91959291_
                                                   ___splice1359213593_
                                                   _target91969294_
                                                   _tl91989296_)
                                                  (___kont1359613597_))))
                                          (___kont1359613597_))))
                                  (___kont1359613597_))
                              (___kont1359613597_)))
                      (___kont1359613597_))))
              (___kont1359613597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1359613597_))
                                          (___kont1359613597_))
                                      (___kont1359613597_))))
                              (___kont1359613597_))))
                      (___kont1359613597_))))
              (___kont1359613597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1359613597_))
                                          (___kont1359613597_))
                                      (___kont1359613597_))))
                              (___kont1359613597_)))))))
                 (_generate-values8777_
                  (lambda (_hd8891_ _body8892_)
                    (let _lp8894_ ((_rest8896_ _hd8891_)
                                   (_bind8897_ '())
                                   (_check8898_ '())
                                   (_post8899_ '()))
                      (let* ((___stx1387213873_ _rest8896_)
                             (_g89028913_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1387213873_))))
                        (let ((___kont1387413875_
                               (lambda (_L8940_ _L8941_)
                                 (let* ((___stx1382813829_ _L8941_)
                                        (_g89568981_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1382813829_))))
                                   (let ((___kont1383013831_
                                          (lambda (_L9054_ _L9055_)
                                            (let ((_eid9069_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9055_))
                                                  (_expr9070_
                                                   (gxc#compile-e _L9054_)))
                                              (_lp8894_
                                               _L8940_
                                               (cons (cons _eid9069_
                                                           (cons _expr9070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8897_)
                                               _check8898_
                                               _post8899_))))
                                         (___kont1383213833_
                                          (lambda (_L9002_ _L9003_)
                                            (let* ((_vals9016_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values9018_
                                                    (gxc#generate-runtime-check-values
                                                     _vals9016_
                                                     _L9003_
                                                     _L9002_))
                                                   (_refs9020_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals9016_
                                                     _L9003_))
                                                   (_expr9022_
                                                    (gxc#compile-e _L9002_)))
                                              (_lp8894_
                                               _L8940_
                                               (cons (cons _vals9016_
                                                           (cons _expr9022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8897_)
                                               (cons _check-values9018_
                                                     _check8898_)
                                               (cons _refs9020_
                                                     _post8899_))))))
                                     (if (gx#stx-pair? ___stx1382813829_)
                                         (let ((_e89609030_
                                                (gx#stx-e ___stx1382813829_)))
                                           (let ((_tl89629035_
                                                  (##cdr _e89609030_))
                                                 (_hd89619033_
                                                  (##car _e89609030_)))
                                             (if (gx#stx-pair? _hd89619033_)
                                                 (let ((_e89639038_
                                                        (gx#stx-e
                                                         _hd89619033_)))
                                                   (let ((_tl89659043_
                                                          (##cdr _e89639038_))
                                                         (_hd89649041_
                                                          (##car _e89639038_)))
                                                     (if (gx#stx-null?
                                                          _tl89659043_)
                                                         (if (gx#stx-pair?
                                                              _tl89629035_)
                                                             (let ((_e89669046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl89629035_)))
                       (let ((_tl89689051_ (##cdr _e89669046_))
                             (_hd89679049_ (##car _e89669046_)))
                         (if (gx#stx-null? _tl89689051_)
                             (___kont1383013831_ _hd89679049_ _hd89649041_)
                             (_g89568981_))))
                     (_g89568981_))
                 (if (gx#stx-pair? _tl89629035_)
                     (let ((_e89748994_ (gx#stx-e _tl89629035_)))
                       (let ((_tl89768999_ (##cdr _e89748994_))
                             (_hd89758997_ (##car _e89748994_)))
                         (if (gx#stx-null? _tl89768999_)
                             (___kont1383213833_ _hd89758997_ _hd89619033_)
                             (_g89568981_))))
                     (_g89568981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl89629035_)
                                                     (let ((_e89748994_
                                                            (gx#stx-e
                                                             _tl89629035_)))
                                                       (let ((_tl89768999_
                                                              (##cdr _e89748994_))
                                                             (_hd89758997_
                                                              (##car _e89748994_)))
                                                         (if (gx#stx-null?
                                                              _tl89768999_)
                                                             (___kont1383213833_
                                                              _hd89758997_
                                                              _hd89619033_)
                                                             (_g89568981_))))
                                                     (_g89568981_)))))
                                         (_g89568981_))))))
                              (___kont1387613877_
                               (lambda ()
                                 (let* ((_body8920_
                                         (if _compiled-body?8773_
                                             _body8892_
                                             (gxc#compile-e _body8892_)))
                                        (_body8922_
                                         (_generate-values-post8778_
                                          _post8899_
                                          _body8920_))
                                        (_body8924_
                                         (_generate-values-check8779_
                                          _check8898_
                                          _body8922_)))
                                   (cons 'let
                                         (cons (reverse _bind8897_)
                                               (cons _body8924_ '())))))))
                          (if (gx#stx-pair? ___stx1387213873_)
                              (let ((_e89068932_ (gx#stx-e ___stx1387213873_)))
                                (let ((_tl89088937_ (##cdr _e89068932_))
                                      (_hd89078935_ (##car _e89068932_)))
                                  (___kont1387413875_
                                   _tl89088937_
                                   _hd89078935_)))
                              (___kont1387613877_)))))))
                 (_generate-values-post8778_
                  (lambda (_post8850_ _body8851_)
                    (let _lp8853_ ((_rest8855_ _post8850_)
                                   (_body8856_ _body8851_))
                      (let* ((_rest88578865_ _rest8855_)
                             (_else88598873_ (lambda () _body8856_))
                             (_K88618879_
                              (lambda (_rest8876_ _bind8877_)
                                (_lp8853_
                                 _rest8876_
                                 (cons 'let
                                       (cons _bind8877_
                                             (cons _body8856_ '())))))))
                        (if (##pair? _rest88578865_)
                            (let ((_hd88628882_ (##car _rest88578865_))
                                  (_tl88638884_ (##cdr _rest88578865_)))
                              (let* ((_bind8887_ _hd88628882_)
                                     (_rest8889_ _tl88638884_))
                                (_K88618879_ _rest8889_ _bind8887_)))
                            (_else88598873_))))))
                 (_generate-values-check8779_
                  (lambda (_check8847_ _body8848_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8848_ '())
                                  (reverse _check8847_))))))
          (let* ((_g87818798_
                  (lambda (_g87828795_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g87828795_)))
                 (_g87808844_
                  (lambda (_g87828801_)
                    (if (gx#stx-pair? _g87828801_)
                        (let ((_e87858803_ (gx#stx-e _g87828801_)))
                          (let ((_hd87868806_ (##car _e87858803_))
                                (_tl87878808_ (##cdr _e87858803_)))
                            (if (gx#stx-pair? _tl87878808_)
                                (let ((_e87888811_ (gx#stx-e _tl87878808_)))
                                  (let ((_hd87898814_ (##car _e87888811_))
                                        (_tl87908816_ (##cdr _e87888811_)))
                                    (if (gx#stx-pair? _tl87908816_)
                                        (let ((_e87918819_
                                               (gx#stx-e _tl87908816_)))
                                          (let ((_hd87928822_
                                                 (##car _e87918819_))
                                                (_tl87938824_
                                                 (##cdr _e87918819_)))
                                            (if (gx#stx-null? _tl87938824_)
                                                ((lambda (_L8827_ _L8828_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8828_)
                                                       (_generate-simple8775_
                                                        _L8828_
                                                        _L8827_)
                                                       (_generate-values8777_
                                                        _L8828_
                                                        _L8827_)))
                                                 _hd87928822_
                                                 _hd87898814_)
                                                (_g87818798_ _g87828801_))))
                                        (_g87818798_ _g87828801_))))
                                (_g87818798_ _g87828801_))))
                        (_g87818798_ _g87828801_)))))
            (_g87808844_ _stx8772_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9700_)
          (let ((_compiled-body?9702_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9700_
             _compiled-body?9702_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g14273_
          (let ((_g14272_ (length _g14273_)))
            (cond ((##fx= _g14272_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g14273_))
                  ((##fx= _g14272_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g14273_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g14273_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8666_ _hd8667_)
      (let _lp8669_ ((_rest8671_ _hd8667_) (_k8672_ '0) (_r8673_ '()))
        (let* ((___stx1388613887_ _rest8671_)
               (_g86788695_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1388613887_))))
          (let ((___kont1388813889_
                 (lambda (_L8758_)
                   (_lp8669_ _L8758_ (fx+ _k8672_ '1) _r8673_)))
                (___kont1389013891_
                 (lambda (_L8731_ _L8732_)
                   (_lp8669_
                    _L8731_
                    (fx+ _k8672_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L8732_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals8666_
                                       _k8672_
                                       _L8731_)
                                      '()))
                          _r8673_))))
                (___kont1389213893_
                 (lambda (_L8707_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L8707_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals8666_
                                              _k8672_)
                                             '()))
                                 '())
                           _r8673_)))
                (___kont1389413895_ (lambda () (reverse _r8673_))))
            (let ((_g86768718_
                   (lambda ()
                     (let ((_L8707_ ___stx1388613887_))
                       (if (gx#identifier? _L8707_)
                           (___kont1389213893_ _L8707_)
                           (___kont1389413895_))))))
              (if (gx#stx-pair? ___stx1388613887_)
                  (let ((_e86818747_ (gx#stx-e ___stx1388613887_)))
                    (let ((_tl86838752_ (##cdr _e86818747_))
                          (_hd86828750_ (##car _e86818747_)))
                      (if (gx#stx-datum? _hd86828750_)
                          (let ((_e86848755_ (gx#stx-e _hd86828750_)))
                            (if (equal? _e86848755_ '#f)
                                (___kont1388813889_ _tl86838752_)
                                (___kont1389013891_
                                 _tl86838752_
                                 _hd86828750_)))
                          (___kont1389013891_ _tl86838752_ _hd86828750_))))
                  (_g86768718_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8348_ _compiled-body?8349_)
        (letrec ((_generate-simple8351_
                  (lambda (_hd8653_ _body8654_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8653_
                     _body8654_
                     _compiled-body?8349_)))
                 (_generate-values8352_
                  (lambda (_hd8432_ _body8433_)
                    (let _lp8435_ ((_rest8437_ _hd8432_)
                                   (_bind8438_ '())
                                   (_check8439_ '())
                                   (_post8440_ '()))
                      (let* ((___stx1396013961_ _rest8437_)
                             (_g84438454_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1396013961_))))
                        (let ((___kont1396213963_
                               (lambda (_L8481_ _L8482_)
                                 (let* ((___stx1391613917_ _L8482_)
                                        (_g84978522_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1391613917_))))
                                   (let ((___kont1391813919_
                                          (lambda (_L8629_ _L8630_)
                                            (let ((_eid8644_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L8630_))
                                                  (_expr8645_
                                                   (gxc#compile-e _L8629_)))
                                              (_lp8435_
                                               _L8481_
                                               (cons (cons _eid8644_
                                                           (cons _expr8645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8438_)
                                               _check8439_
                                               _post8440_))))
                                         (___kont1392013921_
                                          (lambda (_L8543_ _L8544_)
                                            (let* ((_vals8557_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values8559_
                                                    (gxc#generate-runtime-check-values
                                                     _vals8557_
                                                     _L8544_
                                                     _L8543_))
                                                   (_refs8561_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals8557_
                                                     _L8544_))
                                                   (_expr8563_
                                                    (gxc#compile-e _L8543_)))
                                              (_lp8435_
                                               _L8481_
                                               (foldl1 cons
                                                       (cons (cons _vals8557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr8563_ '()))
                     _bind8438_)
               (map (lambda (_e85658567_)
                      (let* ((_g85698578_ _e85658567_)
                             (_E85718582_
                              (lambda ()
                                (error '"No clause matching" _g85698578_)))
                             (_K85728587_
                              (lambda (_eid8585_)
                                (cons _eid8585_ (cons '#!void '())))))
                        (if (##pair? _g85698578_)
                            (let ((_hd85738590_ (##car _g85698578_))
                                  (_tl85748592_ (##cdr _g85698578_)))
                              (let ((_eid8595_ _hd85738590_))
                                (if (##pair? _tl85748592_)
                                    (let ((_tl85768597_ (##cdr _tl85748592_)))
                                      (if (##null? _tl85768597_)
                                          (_K85728587_ _eid8595_)
                                          (_E85718582_)))
                                    (_E85718582_))))
                            (_E85718582_))))
                    _refs8561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values8559_
                                                     _check8439_)
                                               (foldl1 cons
                                                       _refs8561_
                                                       _post8440_))))))
                                     (if (gx#stx-pair? ___stx1391613917_)
                                         (let ((_e85018605_
                                                (gx#stx-e ___stx1391613917_)))
                                           (let ((_tl85038610_
                                                  (##cdr _e85018605_))
                                                 (_hd85028608_
                                                  (##car _e85018605_)))
                                             (if (gx#stx-pair? _hd85028608_)
                                                 (let ((_e85048613_
                                                        (gx#stx-e
                                                         _hd85028608_)))
                                                   (let ((_tl85068618_
                                                          (##cdr _e85048613_))
                                                         (_hd85058616_
                                                          (##car _e85048613_)))
                                                     (if (gx#stx-null?
                                                          _tl85068618_)
                                                         (if (gx#stx-pair?
                                                              _tl85038610_)
                                                             (let ((_e85078621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl85038610_)))
                       (let ((_tl85098626_ (##cdr _e85078621_))
                             (_hd85088624_ (##car _e85078621_)))
                         (if (gx#stx-null? _tl85098626_)
                             (___kont1391813919_ _hd85088624_ _hd85058616_)
                             (_g84978522_))))
                     (_g84978522_))
                 (if (gx#stx-pair? _tl85038610_)
                     (let ((_e85158535_ (gx#stx-e _tl85038610_)))
                       (let ((_tl85178540_ (##cdr _e85158535_))
                             (_hd85168538_ (##car _e85158535_)))
                         (if (gx#stx-null? _tl85178540_)
                             (___kont1392013921_ _hd85168538_ _hd85028608_)
                             (_g84978522_))))
                     (_g84978522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl85038610_)
                                                     (let ((_e85158535_
                                                            (gx#stx-e
                                                             _tl85038610_)))
                                                       (let ((_tl85178540_
                                                              (##cdr _e85158535_))
                                                             (_hd85168538_
                                                              (##car _e85158535_)))
                                                         (if (gx#stx-null?
                                                              _tl85178540_)
                                                             (___kont1392013921_
                                                              _hd85168538_
                                                              _hd85028608_)
                                                             (_g84978522_))))
                                                     (_g84978522_)))))
                                         (_g84978522_))))))
                              (___kont1396413965_
                               (lambda ()
                                 (let* ((_body8461_
                                         (if _compiled-body?8349_
                                             _body8433_
                                             (gxc#compile-e _body8433_)))
                                        (_body8463_
                                         (_generate-values-post8354_
                                          _post8440_
                                          _body8461_))
                                        (_body8465_
                                         (_generate-values-check8353_
                                          _check8439_
                                          _body8463_)))
                                   (cons 'letrec
                                         (cons (reverse _bind8438_)
                                               (cons _body8465_ '())))))))
                          (if (gx#stx-pair? ___stx1396013961_)
                              (let ((_e84478473_ (gx#stx-e ___stx1396013961_)))
                                (let ((_tl84498478_ (##cdr _e84478473_))
                                      (_hd84488476_ (##car _e84478473_)))
                                  (___kont1396213963_
                                   _tl84498478_
                                   _hd84488476_)))
                              (___kont1396413965_)))))))
                 (_generate-values-check8353_
                  (lambda (_check8429_ _body8430_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8430_ '())
                                  (reverse _check8429_)))))
                 (_generate-values-post8354_
                  (lambda (_post8422_ _body8423_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8423_ '())
                                  (map (lambda (_g84248426_)
                                         (cons 'set! _g84248426_))
                                       (reverse _post8422_)))))))
          (let* ((_g83568373_
                  (lambda (_g83578370_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g83578370_)))
                 (_g83558419_
                  (lambda (_g83578376_)
                    (if (gx#stx-pair? _g83578376_)
                        (let ((_e83608378_ (gx#stx-e _g83578376_)))
                          (let ((_hd83618381_ (##car _e83608378_))
                                (_tl83628383_ (##cdr _e83608378_)))
                            (if (gx#stx-pair? _tl83628383_)
                                (let ((_e83638386_ (gx#stx-e _tl83628383_)))
                                  (let ((_hd83648389_ (##car _e83638386_))
                                        (_tl83658391_ (##cdr _e83638386_)))
                                    (if (gx#stx-pair? _tl83658391_)
                                        (let ((_e83668394_
                                               (gx#stx-e _tl83658391_)))
                                          (let ((_hd83678397_
                                                 (##car _e83668394_))
                                                (_tl83688399_
                                                 (##cdr _e83668394_)))
                                            (if (gx#stx-null? _tl83688399_)
                                                ((lambda (_L8402_ _L8403_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8403_)
                                                       (_generate-simple8351_
                                                        _L8403_
                                                        _L8402_)
                                                       (_generate-values8352_
                                                        _L8403_
                                                        _L8402_)))
                                                 _hd83678397_
                                                 _hd83648389_)
                                                (_g83568373_ _g83578376_))))
                                        (_g83568373_ _g83578376_))))
                                (_g83568373_ _g83578376_))))
                        (_g83568373_ _g83578376_)))))
            (_g83558419_ _stx8348_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8659_)
          (let ((_compiled-body?8661_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8659_
             _compiled-body?8661_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g14275_
          (let ((_g14274_ (length _g14275_)))
            (cond ((##fx= _g14274_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g14275_))
                  ((##fx= _g14274_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g14275_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g14275_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7930_)
      (letrec ((_generate-values7932_
                (lambda (_hd8175_ _body8176_)
                  (let _lp8178_ ((_rest8180_ _hd8175_) (_bind8181_ '()))
                    (let* ((_rest81828190_ _rest8180_)
                           (_else81848201_
                            (lambda ()
                              (let ((_bind8198_ (reverse _bind8181_))
                                    (_body8199_ (gxc#compile-e _body8176_)))
                                (cons 'letrec*
                                      (cons _bind8198_
                                            (cons _body8199_ '()))))))
                           (_K81868335_
                            (lambda (_rest8204_ _hd-bind8205_)
                              (let* ((___stx1397413975_ _hd-bind8205_)
                                     (_g82088233_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1397413975_))))
                                (let ((___kont1397613977_
                                       (lambda (_L8314_ _L8315_)
                                         (let ((_eid8329_
                                                (gxc#generate-runtime-binding-id*
                                                 _L8315_))
                                               (_expr8330_
                                                (gxc#compile-e _L8314_)))
                                           (_lp8178_
                                            _rest8204_
                                            (cons (cons _eid8329_
                                                        (cons _expr8330_ '()))
                                                  _bind8181_)))))
                                      (___kont1397813979_
                                       (lambda (_L8254_ _L8255_)
                                         (let* ((_vals8274_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp8276_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values8278_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp8276_
                                                  _L8255_
                                                  _L8254_))
                                                (_refs8280_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals8274_
                                                  _L8255_))
                                                (_expr8282_
                                                 (gxc#compile-e _L8254_)))
                                           (_lp8178_
                                            _rest8204_
                                            (foldl1 cons
                                                    (cons (cons _vals8274_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp8276_
                                                      (cons _expr8282_ '()))
                                                '())
                                          (cons _check-values8278_
                                                (cons _tmp8276_ '()))))
                              '()))
                  _bind8181_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8280_))))))
                                  (if (gx#stx-pair? ___stx1397413975_)
                                      (let ((_e82128290_
                                             (gx#stx-e ___stx1397413975_)))
                                        (let ((_tl82148295_
                                               (##cdr _e82128290_))
                                              (_hd82138293_
                                               (##car _e82128290_)))
                                          (if (gx#stx-pair? _hd82138293_)
                                              (let ((_e82158298_
                                                     (gx#stx-e _hd82138293_)))
                                                (let ((_tl82178303_
                                                       (##cdr _e82158298_))
                                                      (_hd82168301_
                                                       (##car _e82158298_)))
                                                  (if (gx#stx-null?
                                                       _tl82178303_)
                                                      (if (gx#stx-pair?
                                                           _tl82148295_)
                                                          (let ((_e82188306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl82148295_)))
                    (let ((_tl82208311_ (##cdr _e82188306_))
                          (_hd82198309_ (##car _e82188306_)))
                      (if (gx#stx-null? _tl82208311_)
                          (___kont1397613977_ _hd82198309_ _hd82168301_)
                          (_g82088233_))))
                  (_g82088233_))
              (if (gx#stx-pair? _tl82148295_)
                  (let ((_e82268246_ (gx#stx-e _tl82148295_)))
                    (let ((_tl82288251_ (##cdr _e82268246_))
                          (_hd82278249_ (##car _e82268246_)))
                      (if (gx#stx-null? _tl82288251_)
                          (___kont1397813979_ _hd82278249_ _hd82138293_)
                          (_g82088233_))))
                  (_g82088233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl82148295_)
                                                  (let ((_e82268246_
                                                         (gx#stx-e
                                                          _tl82148295_)))
                                                    (let ((_tl82288251_
                                                           (##cdr _e82268246_))
                                                          (_hd82278249_
                                                           (##car _e82268246_)))
                                                      (if (gx#stx-null?
                                                           _tl82288251_)
                                                          (___kont1397813979_
                                                           _hd82278249_
                                                           _hd82138293_)
                                                          (_g82088233_))))
                                                  (_g82088233_)))))
                                      (_g82088233_)))))))
                      (if (##pair? _rest81828190_)
                          (let ((_hd81878338_ (##car _rest81828190_))
                                (_tl81888340_ (##cdr _rest81828190_)))
                            (let* ((_hd-bind8343_ _hd81878338_)
                                   (_rest8345_ _tl81888340_))
                              (_K81868335_ _rest8345_ _hd-bind8343_)))
                          (_else81848201_))))))
               (_generate-letrec?7933_
                (lambda (_hd8065_)
                  (let _lp8067_ ((_rest8069_ _hd8065_))
                    (let* ((_rest80708078_ _rest8069_)
                           (_else80728086_ (lambda () '#t))
                           (_K80748163_
                            (lambda (_rest8089_ _hd-bind8090_)
                              (let* ((_g80928109_
                                      (lambda (_g80938106_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g80938106_)))
                                     (_g80918160_
                                      (lambda (_g80938112_)
                                        (if (gx#stx-pair? _g80938112_)
                                            (let ((_e80968114_
                                                   (gx#stx-e _g80938112_)))
                                              (let ((_hd80978117_
                                                     (##car _e80968114_))
                                                    (_tl80988119_
                                                     (##cdr _e80968114_)))
                                                (if (gx#stx-pair? _hd80978117_)
                                                    (let ((_e80998122_
                                                           (gx#stx-e
                                                            _hd80978117_)))
                                                      (let ((_hd81008125_
                                                             (##car _e80998122_))
                                                            (_tl81018127_
                                                             (##cdr _e80998122_)))
                                                        (if (gx#stx-null?
                                                             _tl81018127_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80988119_)
                        (let ((_e81028130_ (gx#stx-e _tl80988119_)))
                          (let ((_hd81038133_ (##car _e81028130_))
                                (_tl81048135_ (##cdr _e81028130_)))
                            (if (gx#stx-null? _tl81048135_)
                                ((lambda (_L8138_ _L8139_)
                                   (if (_is-lambda-expr?7934_ _L8138_)
                                       (_lp8067_ _rest8089_)
                                       '#f))
                                 _hd81038133_
                                 _hd81008125_)
                                (_g80928109_ _g80938112_))))
                        (_g80928109_ _g80938112_))
                    (_g80928109_ _g80938112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80928109_
                                                     _g80938112_))))
                                            (_g80928109_ _g80938112_)))))
                                (_g80918160_ _hd-bind8090_)))))
                      (if (##pair? _rest80708078_)
                          (let ((_hd80758166_ (##car _rest80708078_))
                                (_tl80768168_ (##cdr _rest80708078_)))
                            (let* ((_hd-bind8171_ _hd80758166_)
                                   (_rest8173_ _tl80768168_))
                              (_K80748163_ _rest8173_ _hd-bind8171_)))
                          (_else80728086_))))))
               (_is-lambda-expr?7934_
                (lambda (_expr8002_)
                  (let* ((___stx1401814019_ _expr8002_)
                         (_g80058019_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1401814019_))))
                    (let ((___kont1402014021_ (lambda (_L8047_ _L8048_) '#t))
                          (___kont1402214023_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1401814019_)
                          (let ((_e80098031_ (gx#stx-e ___stx1401814019_)))
                            (let ((_tl80118036_ (##cdr _e80098031_))
                                  (_hd80108034_ (##car _e80098031_)))
                              (if (gx#identifier? _hd80108034_)
                                  (if (gx#stx-eq? '%#lambda _hd80108034_)
                                      (if (gx#stx-pair? _tl80118036_)
                                          (let ((_e80128039_
                                                 (gx#stx-e _tl80118036_)))
                                            (let ((_tl80148044_
                                                   (##cdr _e80128039_))
                                                  (_hd80138042_
                                                   (##car _e80128039_)))
                                              (___kont1402014021_
                                               _tl80148044_
                                               _hd80138042_)))
                                          (___kont1402214023_))
                                      (___kont1402214023_))
                                  (___kont1402214023_))))
                          (___kont1402214023_)))))))
        (let* ((_g79367953_
                (lambda (_g79377950_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g79377950_)))
               (_g79357999_
                (lambda (_g79377956_)
                  (if (gx#stx-pair? _g79377956_)
                      (let ((_e79407958_ (gx#stx-e _g79377956_)))
                        (let ((_hd79417961_ (##car _e79407958_))
                              (_tl79427963_ (##cdr _e79407958_)))
                          (if (gx#stx-pair? _tl79427963_)
                              (let ((_e79437966_ (gx#stx-e _tl79427963_)))
                                (let ((_hd79447969_ (##car _e79437966_))
                                      (_tl79457971_ (##cdr _e79437966_)))
                                  (if (gx#stx-pair? _tl79457971_)
                                      (let ((_e79467974_
                                             (gx#stx-e _tl79457971_)))
                                        (let ((_hd79477977_
                                               (##car _e79467974_))
                                              (_tl79487979_
                                               (##cdr _e79467974_)))
                                          (if (gx#stx-null? _tl79487979_)
                                              ((lambda (_L7982_ _L7983_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7983_)
                                                     (if (_generate-letrec?7933_
                                                          _L7983_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7983_
                                                          _L7982_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7983_
                                                          _L7982_
                                                          '#f))
                                                     (_generate-values7932_
                                                      _L7983_
                                                      _L7982_)))
                                               _hd79477977_
                                               _hd79447969_)
                                              (_g79367953_ _g79377956_))))
                                      (_g79367953_ _g79377956_))))
                              (_g79367953_ _g79377956_))))
                      (_g79367953_ _g79377956_)))))
          (_g79357999_ _stx7930_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7823_)
      (let _lp7825_ ((_rest7827_ _hd7823_))
        (let* ((___stx1404214043_ _rest7827_)
               (_g78317852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1404214043_))))
          (let ((___kont1404414045_
                 (lambda (_L7903_ _L7904_ _L7905_) (_lp7825_ _L7903_)))
                (___kont1404614047_ (lambda () '#t))
                (___kont1404814049_ (lambda () '#f)))
            (let ((_g78297866_
                   (lambda ()
                     (if (gx#stx-null? ___stx1404214043_)
                         (___kont1404614047_)
                         (___kont1404814049_)))))
              (if (gx#stx-pair? ___stx1404214043_)
                  (let ((_e78367871_ (gx#stx-e ___stx1404214043_)))
                    (let ((_tl78387876_ (##cdr _e78367871_))
                          (_hd78377874_ (##car _e78367871_)))
                      (if (gx#stx-pair? _hd78377874_)
                          (let ((_e78397879_ (gx#stx-e _hd78377874_)))
                            (let ((_tl78417884_ (##cdr _e78397879_))
                                  (_hd78407882_ (##car _e78397879_)))
                              (if (gx#stx-pair? _hd78407882_)
                                  (let ((_e78427887_ (gx#stx-e _hd78407882_)))
                                    (let ((_tl78447892_ (##cdr _e78427887_))
                                          (_hd78437890_ (##car _e78427887_)))
                                      (if (gx#stx-null? _tl78447892_)
                                          (if (gx#stx-pair? _tl78417884_)
                                              (let ((_e78457895_
                                                     (gx#stx-e _tl78417884_)))
                                                (let ((_tl78477900_
                                                       (##cdr _e78457895_))
                                                      (_hd78467898_
                                                       (##car _e78457895_)))
                                                  (if (gx#stx-null?
                                                       _tl78477900_)
                                                      (___kont1404414045_
                                                       _tl78387876_
                                                       _hd78467898_
                                                       _hd78437890_)
                                                      (___kont1404814049_))))
                                              (___kont1404814049_))
                                          (___kont1404814049_))))
                                  (___kont1404814049_))))
                          (___kont1404814049_))))
                  (_g78297866_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7747_ _hd7748_ _body7749_ _compiled-body?7750_)
      (letrec ((_generate17752_
                (lambda (_bind7754_)
                  (let* ((_g77567773_
                          (lambda (_g77577770_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g77577770_)))
                         (_g77557820_
                          (lambda (_g77577776_)
                            (if (gx#stx-pair? _g77577776_)
                                (let ((_e77607778_ (gx#stx-e _g77577776_)))
                                  (let ((_hd77617781_ (##car _e77607778_))
                                        (_tl77627783_ (##cdr _e77607778_)))
                                    (if (gx#stx-pair? _hd77617781_)
                                        (let ((_e77637786_
                                               (gx#stx-e _hd77617781_)))
                                          (let ((_hd77647789_
                                                 (##car _e77637786_))
                                                (_tl77657791_
                                                 (##cdr _e77637786_)))
                                            (if (gx#stx-null? _tl77657791_)
                                                (if (gx#stx-pair? _tl77627783_)
                                                    (let ((_e77667794_
                                                           (gx#stx-e
                                                            _tl77627783_)))
                                                      (let ((_hd77677797_
                                                             (##car _e77667794_))
                                                            (_tl77687799_
                                                             (##cdr _e77667794_)))
                                                        (if (gx#stx-null?
                                                             _tl77687799_)
                                                            ((lambda (_L7802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7803_)
                       (cons (gxc#generate-runtime-binding-id* _L7803_)
                             (cons (gxc#compile-e _L7802_) '())))
                     _hd77677797_
                     _hd77647789_)
                    (_g77567773_ _g77577776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77567773_ _g77577776_))
                                                (_g77567773_ _g77577776_))))
                                        (_g77567773_ _g77577776_))))
                                (_g77567773_ _g77577776_)))))
                    (_g77557820_ _bind7754_)))))
        (cons _form7747_
              (cons (map _generate17752_ _hd7748_)
                    (cons (if _compiled-body?7750_
                              _body7749_
                              (gxc#compile-e _body7749_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7655_)
      (letrec ((_generate17657_
                (lambda (_datum7709_)
                  (if (let ((_$e7711_ (null? _datum7709_)))
                        (if _$e7711_
                            _$e7711_
                            (let ((_$e7714_ (interned-symbol? _datum7709_)))
                              (if _$e7714_
                                  _$e7714_
                                  (let ((_$e7717_
                                         (gx#self-quoting? _datum7709_)))
                                    (if _$e7717_
                                        _$e7717_
                                        (eof-object? _datum7709_)))))))
                      _datum7709_
                      (if (uninterned-symbol? _datum7709_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7709_
                           '#t)
                          (if (pair? _datum7709_)
                              (cons (_generate17657_ (car _datum7709_))
                                    (_generate17657_ (cdr _datum7709_)))
                              (if (box? _datum7709_)
                                  (box (_generate17657_ (unbox _datum7709_)))
                                  (if (vector? _datum7709_)
                                      (vector-map _generate17657_ _datum7709_)
                                      (if (let ((_$e7720_
                                                 (s8vector? _datum7709_)))
                                            (if _$e7720_
                                                _$e7720_
                                                (let ((_$e7723_
                                                       (u8vector?
                                                        _datum7709_)))
                                                  (if _$e7723_
                                                      _$e7723_
                                                      (let ((_$e7726_
                                                             (s16vector?
                                                              _datum7709_)))
                                                        (if _$e7726_
                                                            _$e7726_
                                                            (let ((_$e7729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7709_)))
                      (if _$e7729_
                          _$e7729_
                          (let ((_$e7732_ (s32vector? _datum7709_)))
                            (if _$e7732_
                                _$e7732_
                                (let ((_$e7735_ (u32vector? _datum7709_)))
                                  (if _$e7735_
                                      _$e7735_
                                      (let ((_$e7738_
                                             (s64vector? _datum7709_)))
                                        (if _$e7738_
                                            _$e7738_
                                            (let ((_$e7741_
                                                   (u64vector? _datum7709_)))
                                              (if _$e7741_
                                                  _$e7741_
                                                  (let ((_$e7744_
                                                         (f32vector?
                                                          _datum7709_)))
                                                    (if _$e7744_
                                                        _$e7744_
                                                        (f64vector?
                                                         _datum7709_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7709_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7655_))))))))))
        (let* ((_g76597672_
                (lambda (_g76607669_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76607669_)))
               (_g76587706_
                (lambda (_g76607675_)
                  (if (gx#stx-pair? _g76607675_)
                      (let ((_e76627677_ (gx#stx-e _g76607675_)))
                        (let ((_hd76637680_ (##car _e76627677_))
                              (_tl76647682_ (##cdr _e76627677_)))
                          (if (gx#stx-pair? _tl76647682_)
                              (let ((_e76657685_ (gx#stx-e _tl76647682_)))
                                (let ((_hd76667688_ (##car _e76657685_))
                                      (_tl76677690_ (##cdr _e76657685_)))
                                  (if (gx#stx-null? _tl76677690_)
                                      ((lambda (_L7693_)
                                         (cons 'quote
                                               (cons (_generate17657_
                                                      (gx#stx-e _L7693_))
                                                     '())))
                                       _hd76667688_)
                                      (_g76597672_ _g76607675_))))
                              (_g76597672_ _g76607675_))))
                      (_g76597672_ _g76607675_)))))
          (_g76587706_ _stx7655_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7348_)
      (let* ((_g73507364_
              (lambda (_g73517361_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g73517361_)))
             (_g73497652_
              (lambda (_g73517367_)
                (if (gx#stx-pair? _g73517367_)
                    (let ((_e73547369_ (gx#stx-e _g73517367_)))
                      (let ((_hd73557372_ (##car _e73547369_))
                            (_tl73567374_ (##cdr _e73547369_)))
                        (if (gx#stx-pair? _tl73567374_)
                            (let ((_e73577377_ (gx#stx-e _tl73567374_)))
                              (let ((_hd73587380_ (##car _e73577377_))
                                    (_tl73597382_ (##cdr _e73577377_)))
                                ((lambda (_L7385_ _L7386_)
                                   (let ((_rator7399_ (gxc#compile-e _L7386_))
                                         (_rands7400_
                                          (map gxc#compile-e _L7385_)))
                                     (let* ((___stx1408214083_ _rator7399_)
                                            (_g74037455_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1408214083_))))
                                       (let ((___kont1408414085_
                                              (lambda (_L7579_
                                                       _L7580_
                                                       _L7581_
                                                       _L7582_)
                                                (if (fx= (length _rands7400_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g76187621_ _g76197623_)
                                     (cons _g76187621_ _g76197623_))
                                   '()
                                   _L7581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id7626_ _L7582_)
                                                           (_args7635_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g76277630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g76287632_)
                                (cons _g76277630_ _g76287632_))
                              '()
                              _L7581_)))
                   (_body7644_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g76367639_ _g76377641_)
                                (cons _g76367639_ _g76377641_))
                              '()
                              _L7580_)))
                   (_init7646_ (map list _args7635_ _rands7400_)))
              (cons 'let (cons _id7626_ (cons _init7646_ _body7644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx7348_))))
                                             (___kont1409014091_
                                              (lambda ()
                                                (cons _rator7399_
                                                      _rands7400_))))
                                         (let ((___match1414914150_
                                                (lambda (_e74097467_
                                                         _hd74107470_
                                                         _tl74117472_
                                                         _e74127475_
                                                         _hd74137478_
                                                         _tl74147480_
                                                         _e74157483_
                                                         _hd74167486_
                                                         _tl74177488_
                                                         _e74187491_
                                                         _hd74197494_
                                                         _tl74207496_
                                                         _e74217499_
                                                         _hd74227502_
                                                         _tl74237504_
                                                         _e74247507_
                                                         _hd74257510_
                                                         _tl74267512_
                                                         _e74277515_
                                                         _hd74287518_
                                                         _tl74297520_
                                                         ___splice1408614087_
                                                         _target74307523_
                                                         _tl74327525_)
                                                  (letrec ((_loop74337528_
                                                            (lambda (_hd74317531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg74377533_)
                      (if (gx#stx-pair? _hd74317531_)
                          (let ((_e74347536_ (gx#stx-e _hd74317531_)))
                            (let ((_lp-tl74367541_ (##cdr _e74347536_))
                                  (_lp-hd74357539_ (##car _e74347536_)))
                              (_loop74337528_
                               _lp-tl74367541_
                               (cons _lp-hd74357539_ _arg74377533_))))
                          (let ((_arg74387544_ (reverse _arg74377533_)))
                            (if (gx#stx-pair/null? _tl74297520_)
                                (let ((___splice1408814089_
                                       (gx#syntax-split-splice
                                        _tl74297520_
                                        '0)))
                                  (let ((_tl74417549_
                                         (##vector-ref
                                          ___splice1408814089_
                                          '1))
                                        (_target74397547_
                                         (##vector-ref
                                          ___splice1408814089_
                                          '0)))
                                    (if (gx#stx-null? _tl74417549_)
                                        (letrec ((_loop74427552_
                                                  (lambda (_hd74407555_
                                                           _body74467557_)
                                                    (if (gx#stx-pair?
                                                         _hd74407555_)
                                                        (let ((_e74437560_
                                                               (gx#stx-e
                                                                _hd74407555_)))
                                                          (let ((_lp-tl74457565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e74437560_))
                        (_lp-hd74447563_ (##car _e74437560_)))
                    (_loop74427552_
                     _lp-tl74457565_
                     (cons _lp-hd74447563_ _body74467557_))))
                (let ((_body74477568_ (reverse _body74467557_)))
                  (if (gx#stx-null? _tl74237504_)
                      (if (gx#stx-null? _tl74177488_)
                          (if (gx#stx-pair? _tl74147480_)
                              (let ((_e74487571_ (gx#stx-e _tl74147480_)))
                                (let ((_tl74507576_ (##cdr _e74487571_))
                                      (_hd74497574_ (##car _e74487571_)))
                                  (if (gx#stx-null? _tl74507576_)
                                      (let ((_L7579_ _hd74497574_)
                                            (_L7580_ _body74477568_)
                                            (_L7581_ _arg74387544_)
                                            (_L7582_ _hd74197494_))
                                        (if (eq? _L7582_ _L7579_)
                                            (___kont1408414085_
                                             _L7579_
                                             _L7580_
                                             _L7581_
                                             _L7582_)
                                            (___kont1409014091_)))
                                      (___kont1409014091_))))
                              (___kont1409014091_))
                          (___kont1409014091_))
                      (___kont1409014091_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop74427552_
                                           _target74397547_
                                           '()))
                                        (___kont1409014091_))))
                                (___kont1409014091_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop74337528_
                                                     _target74307523_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1408214083_)
                                               (let ((_e74097467_
                                                      (gx#stx-e
                                                       ___stx1408214083_)))
                                                 (let ((_tl74117472_
                                                        (##cdr _e74097467_))
                                                       (_hd74107470_
                                                        (##car _e74097467_)))
                                                   (if (gx#identifier?
                                                        _hd74107470_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd74107470_)
                                                           (if (gx#stx-pair?
                                                                _tl74117472_)
                                                               (let ((_e74127475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl74117472_)))
                         (let ((_tl74147480_ (##cdr _e74127475_))
                               (_hd74137478_ (##car _e74127475_)))
                           (if (gx#stx-pair? _hd74137478_)
                               (let ((_e74157483_ (gx#stx-e _hd74137478_)))
                                 (let ((_tl74177488_ (##cdr _e74157483_))
                                       (_hd74167486_ (##car _e74157483_)))
                                   (if (gx#stx-pair? _hd74167486_)
                                       (let ((_e74187491_
                                              (gx#stx-e _hd74167486_)))
                                         (let ((_tl74207496_
                                                (##cdr _e74187491_))
                                               (_hd74197494_
                                                (##car _e74187491_)))
                                           (if (gx#stx-pair? _tl74207496_)
                                               (let ((_e74217499_
                                                      (gx#stx-e _tl74207496_)))
                                                 (let ((_tl74237504_
                                                        (##cdr _e74217499_))
                                                       (_hd74227502_
                                                        (##car _e74217499_)))
                                                   (if (gx#stx-pair?
                                                        _hd74227502_)
                                                       (let ((_e74247507_
                                                              (gx#stx-e
                                                               _hd74227502_)))
                                                         (let ((_tl74267512_
                                                                (##cdr _e74247507_))
                                                               (_hd74257510_
                                                                (##car _e74247507_)))
                                                           (if (gx#identifier?
                                                                _hd74257510_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd74257510_)
                           (if (gx#stx-pair? _tl74267512_)
                               (let ((_e74277515_ (gx#stx-e _tl74267512_)))
                                 (let ((_tl74297520_ (##cdr _e74277515_))
                                       (_hd74287518_ (##car _e74277515_)))
                                   (if (gx#stx-pair/null? _hd74287518_)
                                       (let ((___splice1408614087_
                                              (gx#syntax-split-splice
                                               _hd74287518_
                                               '0)))
                                         (let ((_tl74327525_
                                                (##vector-ref
                                                 ___splice1408614087_
                                                 '1))
                                               (_target74307523_
                                                (##vector-ref
                                                 ___splice1408614087_
                                                 '0)))
                                           (if (gx#stx-null? _tl74327525_)
                                               (___match1414914150_
                                                _e74097467_
                                                _hd74107470_
                                                _tl74117472_
                                                _e74127475_
                                                _hd74137478_
                                                _tl74147480_
                                                _e74157483_
                                                _hd74167486_
                                                _tl74177488_
                                                _e74187491_
                                                _hd74197494_
                                                _tl74207496_
                                                _e74217499_
                                                _hd74227502_
                                                _tl74237504_
                                                _e74247507_
                                                _hd74257510_
                                                _tl74267512_
                                                _e74277515_
                                                _hd74287518_
                                                _tl74297520_
                                                ___splice1408614087_
                                                _target74307523_
                                                _tl74327525_)
                                               (___kont1409014091_))))
                                       (___kont1409014091_))))
                               (___kont1409014091_))
                           (___kont1409014091_))
                       (___kont1409014091_))))
               (___kont1409014091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1409014091_))))
                                       (___kont1409014091_))))
                               (___kont1409014091_))))
                       (___kont1409014091_))
                   (___kont1409014091_))
               (___kont1409014091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1409014091_)))))))
                                 _tl73597382_
                                 _hd73587380_)))
                            (_g73507364_ _g73517367_))))
                    (_g73507364_ _g73517367_)))))
        (_g73497652_ _stx7348_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7265_)
      (let* ((_g72677288_
              (lambda (_g72687285_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72687285_)))
             (_g72667345_
              (lambda (_g72687291_)
                (if (gx#stx-pair? _g72687291_)
                    (let ((_e72727293_ (gx#stx-e _g72687291_)))
                      (let ((_hd72737296_ (##car _e72727293_))
                            (_tl72747298_ (##cdr _e72727293_)))
                        (if (gx#stx-pair? _tl72747298_)
                            (let ((_e72757301_ (gx#stx-e _tl72747298_)))
                              (let ((_hd72767304_ (##car _e72757301_))
                                    (_tl72777306_ (##cdr _e72757301_)))
                                (if (gx#stx-pair? _tl72777306_)
                                    (let ((_e72787309_
                                           (gx#stx-e _tl72777306_)))
                                      (let ((_hd72797312_ (##car _e72787309_))
                                            (_tl72807314_ (##cdr _e72787309_)))
                                        (if (gx#stx-pair? _tl72807314_)
                                            (let ((_e72817317_
                                                   (gx#stx-e _tl72807314_)))
                                              (let ((_hd72827320_
                                                     (##car _e72817317_))
                                                    (_tl72837322_
                                                     (##cdr _e72817317_)))
                                                (if (gx#stx-null? _tl72837322_)
                                                    ((lambda (_L7325_
                                                              _L7326_
                                                              _L7327_)
                                                       (cons 'if
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7327_)
                           (cons (gxc#compile-e _L7326_)
                                 (cons (gxc#compile-e _L7325_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd72827320_
                                                     _hd72797312_
                                                     _hd72767304_)
                                                    (_g72677288_
                                                     _g72687291_))))
                                            (_g72677288_ _g72687291_))))
                                    (_g72677288_ _g72687291_))))
                            (_g72677288_ _g72687291_))))
                    (_g72677288_ _g72687291_)))))
        (_g72667345_ _stx7265_))))
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
                              (let ((_g14276_
                                     (gx#syntax-split-splice _tl52725304_ '0)))
                                (begin
                                  (let ((_g14277_
                                         (if (##values? _g14276_)
                                             (##vector-length _g14276_)
                                             1)))
                                    (if (not (##fx= _g14277_ 2))
                                        (error "Context expects 2 values"
                                               _g14277_)))
                                  (let ((_target52735307_
                                         (##vector-ref _g14276_ 0))
                                        (_tl52755309_
                                         (##vector-ref _g14276_ 1)))
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
                                                   (let* ((___stx1418314184_
                                                           _rest5122_)
                                                          (_g51285145_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1418314184_))))
                                                     (let ((___kont1418514186_
                                                            (lambda (_L5208_)
                                                              (_lp5120_
                                                               _L5208_
                                                               _r5123_)))
                                                           (___kont1418714188_
                                                            (lambda (_L5181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5182_)
                      (_lp5120_
                       _L5181_
                       (cons (_generate15054_ _L5182_) _r5123_))))
                   (___kont1418914190_
                    (lambda (_L5157_)
                      (_generate*5055_
                       (foldl1 cons
                               (cons (_generate15054_ _L5157_) '())
                               _r5123_))))
                   (___kont1419114192_
                    (lambda () (_generate*5055_ (reverse _r5123_)))))
               (let ((_g51265168_
                      (lambda ()
                        (let ((_L5157_ ___stx1418314184_))
                          (if (gx#identifier? _L5157_)
                              (___kont1418914190_ _L5157_)
                              (___kont1419114192_))))))
                 (if (gx#stx-pair? ___stx1418314184_)
                     (let ((_e51315197_ (gx#stx-e ___stx1418314184_)))
                       (let ((_tl51335202_ (##cdr _e51315197_))
                             (_hd51325200_ (##car _e51315197_)))
                         (if (gx#stx-datum? _hd51325200_)
                             (let ((_e51345205_ (gx#stx-e _hd51325200_)))
                               (if (equal? _e51345205_ '#f)
                                   (___kont1418514186_ _tl51335202_)
                                   (___kont1418714188_
                                    _tl51335202_
                                    _hd51325200_)))
                             (___kont1418714188_ _tl51335202_ _hd51325200_))))
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
          (lambda (_g14278_ _block4693_ _r4694_) (cons _block4693_ _r4694_))
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
                            (let ((_g14279_
                                   (gx#syntax-split-splice _tl42224246_ '0)))
                              (begin
                                (let ((_g14280_
                                       (if (##values? _g14279_)
                                           (##vector-length _g14279_)
                                           1)))
                                  (if (not (##fx= _g14280_ 2))
                                      (error "Context expects 2 values"
                                             _g14280_)))
                                (let ((_target42234249_
                                       (##vector-ref _g14279_ 0))
                                      (_tl42254251_ (##vector-ref _g14279_ 1)))
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
      (let* ((___stx1421314214_ _stx3948_)
             (_g39513980_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1421314214_))))
        (let ((___kont1421514216_
               (lambda (_L4048_ _L4049_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g40704073_ _g40714075_)
                                     (cons _g40704073_ _g40714075_))
                                   '()
                                   _L4048_)))))
              (___kont1421914220_ (lambda () '#f)))
          (let ((___match1425814259_
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
                          ___splice1421714218_
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
                                           (___kont1421514216_ _L4048_ _L4049_)
                                           (___kont1421914220_))))))))
                     (_loop39704029_ _target39674024_ '())))))
            (if (gx#stx-pair? ___stx1421314214_)
                (let ((_e39553992_ (gx#stx-e ___stx1421314214_)))
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
                                                            (let ((___splice1421714218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl39604005_ '0)))
                      (let ((_tl39694026_
                             (##vector-ref ___splice1421714218_ '1))
                            (_target39674024_
                             (##vector-ref ___splice1421714218_ '0)))
                        (if (gx#stx-null? _tl39694026_)
                            (___match1425814259_
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
                             ___splice1421714218_
                             _target39674024_
                             _tl39694026_)
                            (___kont1421914220_))))
                    (___kont1421914220_))
                (___kont1421914220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1421914220_))
                                            (___kont1421914220_))
                                        (___kont1421914220_))))
                                (___kont1421914220_))))
                        (___kont1421914220_))))
                (___kont1421914220_)))))))
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
