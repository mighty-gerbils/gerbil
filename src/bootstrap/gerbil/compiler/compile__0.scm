(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12065_ . _args12066_)
      (let* ((_g1206812078_
              (lambda (_g1206912075_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1206912075_)))
             (_g1206712106_
              (lambda (_g1206912081_)
                (if (gx#stx-pair? _g1206912081_)
                    (let ((_e1207112083_ (gx#stx-e _g1206912081_)))
                      (let ((_hd1207212086_ (##car _e1207112083_))
                            (_tl1207312088_ (##cdr _e1207112083_)))
                        ((lambda (_L12091_)
                           (let ((_$e12101_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12091_)
                                   '#f)))
                             (if _$e12101_
                                 ((lambda (_method12104_)
                                    (apply _method12104_
                                           _stx12065_
                                           _args12066_))
                                  _$e12101_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12065_
                                  _L12091_))))
                         _hd1207212086_)))
                    (_g1206812078_ _g1206912081_)))))
        (_g1206712106_ _stx12065_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12062_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12062_ '%#begin-annotation void)
           (table-set! _tbl12062_ '%#lambda void)
           (table-set! _tbl12062_ '%#case-lambda void)
           (table-set! _tbl12062_ '%#let-values void)
           (table-set! _tbl12062_ '%#letrec-values void)
           (table-set! _tbl12062_ '%#letrec*-values void)
           (table-set! _tbl12062_ '%#quote void)
           (table-set! _tbl12062_ '%#quote-syntax void)
           (table-set! _tbl12062_ '%#call void)
           (table-set! _tbl12062_ '%#if void)
           (table-set! _tbl12062_ '%#ref void)
           (table-set! _tbl12062_ '%#set! void)
           (table-set! _tbl12062_ '%#struct-instance? void)
           (table-set! _tbl12062_ '%#struct-direct-instance? void)
           (table-set! _tbl12062_ '%#struct-ref void)
           (table-set! _tbl12062_ '%#struct-set! void)
           (table-set! _tbl12062_ '%#struct-direct-ref void)
           (table-set! _tbl12062_ '%#struct-direct-set! void)
           (table-set! _tbl12062_ '%#struct-unchecked-ref void)
           (table-set! _tbl12062_ '%#struct-unchecked-set! void)
           _tbl12062_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12058_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12058_ '%#begin void)
           (table-set! _tbl12058_ '%#begin-syntax void)
           (table-set! _tbl12058_ '%#begin-foreign void)
           (table-set! _tbl12058_ '%#module void)
           (table-set! _tbl12058_ '%#import void)
           (table-set! _tbl12058_ '%#export void)
           (table-set! _tbl12058_ '%#provide void)
           (table-set! _tbl12058_ '%#extern void)
           (table-set! _tbl12058_ '%#define-values void)
           (table-set! _tbl12058_ '%#define-syntax void)
           (table-set! _tbl12058_ '%#define-alias void)
           (table-set! _tbl12058_ '%#declare void)
           _tbl12058_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12054_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12054_ (force gxc#&void-special-form))
           (hash-copy! _tbl12054_ (force gxc#&void-expression))
           _tbl12054_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12050_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12050_ '%#begin-annotation false)
           (table-set! _tbl12050_ '%#lambda false)
           (table-set! _tbl12050_ '%#case-lambda false)
           (table-set! _tbl12050_ '%#let-values false)
           (table-set! _tbl12050_ '%#letrec-values false)
           (table-set! _tbl12050_ '%#letrec*-values false)
           (table-set! _tbl12050_ '%#quote false)
           (table-set! _tbl12050_ '%#quote-syntax false)
           (table-set! _tbl12050_ '%#call false)
           (table-set! _tbl12050_ '%#if false)
           (table-set! _tbl12050_ '%#ref false)
           (table-set! _tbl12050_ '%#set! false)
           (table-set! _tbl12050_ '%#struct-instance? false)
           (table-set! _tbl12050_ '%#struct-direct-instance? false)
           (table-set! _tbl12050_ '%#struct-ref false)
           (table-set! _tbl12050_ '%#struct-set! false)
           (table-set! _tbl12050_ '%#struct-direct-ref false)
           (table-set! _tbl12050_ '%#struct-direct-set! false)
           (table-set! _tbl12050_ '%#struct-unchecked-ref false)
           (table-set! _tbl12050_ '%#struct-unchecked-set! false)
           _tbl12050_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12046_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12046_ '%#begin false)
           (table-set! _tbl12046_ '%#begin-syntax false)
           (table-set! _tbl12046_ '%#begin-foreign false)
           (table-set! _tbl12046_ '%#module false)
           (table-set! _tbl12046_ '%#import false)
           (table-set! _tbl12046_ '%#export false)
           (table-set! _tbl12046_ '%#provide false)
           (table-set! _tbl12046_ '%#extern false)
           (table-set! _tbl12046_ '%#define-values false)
           (table-set! _tbl12046_ '%#define-syntax false)
           (table-set! _tbl12046_ '%#define-alias false)
           (table-set! _tbl12046_ '%#declare false)
           _tbl12046_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12042_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12042_ (force gxc#&false-special-form))
           (hash-copy! _tbl12042_ (force gxc#&false-expression))
           _tbl12042_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12038_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12038_ (force gxc#&void-expression))
           (hash-copy! _tbl12038_ (force gxc#&void-special-form))
           (table-set! _tbl12038_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12038_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12038_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12038_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12038_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12038_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12031_ . _args12033_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12031_ _args12033_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12028_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12028_ (force gxc#&void))
           (table-set! _tbl12028_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12028_ '%#module gxc#lift-modules-module%)
           _tbl12028_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12021_ . _args12023_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12021_ _args12023_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12018_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12018_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12018_ '%#begin-syntax false)
           (table-set! _tbl12018_ '%#begin-foreign true)
           (table-set! _tbl12018_ '%#begin-annotation true)
           (table-set! _tbl12018_ '%#module false)
           (table-set! _tbl12018_ '%#import false)
           (table-set! _tbl12018_ '%#export false)
           (table-set! _tbl12018_ '%#provide false)
           (table-set! _tbl12018_ '%#extern false)
           (table-set! _tbl12018_ '%#define-values true)
           (table-set! _tbl12018_ '%#define-syntax false)
           (table-set! _tbl12018_ '%#define-alias false)
           (table-set! _tbl12018_ '%#declare false)
           (table-set! _tbl12018_ '%#lambda true)
           (table-set! _tbl12018_ '%#case-lambda true)
           (table-set! _tbl12018_ '%#let-values true)
           (table-set! _tbl12018_ '%#letrec-values true)
           (table-set! _tbl12018_ '%#letrec*-values true)
           (table-set! _tbl12018_ '%#quote true)
           (table-set! _tbl12018_ '%#call true)
           (table-set! _tbl12018_ '%#if true)
           (table-set! _tbl12018_ '%#ref true)
           (table-set! _tbl12018_ '%#set! true)
           (table-set! _tbl12018_ '%#struct-instance? true)
           (table-set! _tbl12018_ '%#struct-direct-instance? true)
           (table-set! _tbl12018_ '%#struct-ref true)
           (table-set! _tbl12018_ '%#struct-set! true)
           (table-set! _tbl12018_ '%#struct-direct-ref true)
           (table-set! _tbl12018_ '%#struct-direct-set! true)
           (table-set! _tbl12018_ '%#struct-unchecked-ref true)
           (table-set! _tbl12018_ '%#struct-unchecked-set! true)
           _tbl12018_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12011_ . _args12013_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12011_ _args12013_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12008_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12008_ (force gxc#&false))
           (table-set! _tbl12008_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12008_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12008_ '%#lambda values)
           (table-set! _tbl12008_ '%#case-lambda values)
           (table-set!
            _tbl12008_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12008_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12008_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12008_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12001_ . _args12003_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12001_ _args12003_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11998_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11998_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11998_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11998_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11998_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11994_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11994_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11994_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11994_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11994_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11987_ . _args11989_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11987_ _args11989_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11984_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11984_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11984_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11984_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11984_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11984_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11984_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11984_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11984_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11984_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11984_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11984_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11984_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl11984_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl11984_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11984_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11984_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11984_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11984_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11984_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11984_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11984_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11984_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11984_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11984_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11984_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11984_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11977_ . _args11979_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11977_ _args11979_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11974_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11974_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11974_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11974_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11967_ . _args11969_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11967_ _args11969_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11964_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11964_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11964_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11964_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11964_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11964_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11964_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11964_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11964_ '%#quote void)
           (table-set! _tbl11964_ '%#quote-syntax void)
           (table-set! _tbl11964_ '%#call gxc#collect-operands)
           (table-set! _tbl11964_ '%#if gxc#collect-operands)
           (table-set! _tbl11964_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11964_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11964_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11964_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11964_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11964_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11964_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11964_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11964_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11964_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11964_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11957_ . _args11959_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11957_ _args11959_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11954_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11954_ (force gxc#&void-expression))
           (table-set! _tbl11954_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11954_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11954_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11954_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11954_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11954_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11954_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11954_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11954_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11954_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11954_ '%#begin-foreign void)
           (table-set! _tbl11954_ '%#declare void)
           _tbl11954_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11947_ . _args11949_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11947_ _args11949_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11944_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11944_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11944_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11944_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11944_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11944_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11944_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11944_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11944_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11944_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11944_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11944_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11944_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11944_ '%#declare void)
           _tbl11944_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11937_ . _args11939_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11937_ _args11939_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11894_ . _args11895_)
      (let* ((_g1189711907_
              (lambda (_g1189811904_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1189811904_)))
             (_g1189611934_
              (lambda (_g1189811910_)
                (if (gx#stx-pair? _g1189811910_)
                    (let ((_e1190011912_ (gx#stx-e _g1189811910_)))
                      (let ((_hd1190111915_ (##car _e1190011912_))
                            (_tl1190211917_ (##cdr _e1190011912_)))
                        ((lambda (_L11920_)
                           (for-each
                            (lambda (_g1192911931_)
                              (apply gxc#compile-e _g1192911931_ _args11895_))
                            (gx#stx-e _L11920_)))
                         _tl1190211917_)))
                    (_g1189711907_ _g1189811910_)))))
        (_g1189611934_ _stx11894_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11850_ . _args11851_)
      (let* ((_g1185311863_
              (lambda (_g1185411860_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1185411860_)))
             (_g1185211891_
              (lambda (_g1185411866_)
                (if (gx#stx-pair? _g1185411866_)
                    (let ((_e1185611868_ (gx#stx-e _g1185411866_)))
                      (let ((_hd1185711871_ (##car _e1185611868_))
                            (_tl1185811873_ (##cdr _e1185611868_)))
                        ((lambda (_L11876_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1188611888_)
                                 (apply gxc#compile-e
                                        _g1188611888_
                                        _args11851_))
                               (gx#stx-e _L11876_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1185811873_)))
                    (_g1185311863_ _g1185411866_)))))
        (_g1185211891_ _stx11850_))))
  (define gxc#collect-module%
    (lambda (_stx11792_ . _args11793_)
      (let* ((_g1179511809_
              (lambda (_g1179611806_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1179611806_)))
             (_g1179411847_
              (lambda (_g1179611812_)
                (if (gx#stx-pair? _g1179611812_)
                    (let ((_e1179911814_ (gx#stx-e _g1179611812_)))
                      (let ((_hd1180011817_ (##car _e1179911814_))
                            (_tl1180111819_ (##cdr _e1179911814_)))
                        (if (gx#stx-pair? _tl1180111819_)
                            (let ((_e1180211822_ (gx#stx-e _tl1180111819_)))
                              (let ((_hd1180311825_ (##car _e1180211822_))
                                    (_tl1180411827_ (##cdr _e1180211822_)))
                                ((lambda (_L11830_ _L11831_)
                                   (let ((_ctx11844_
                                          (gx#syntax-local-e__0 _L11831_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11844_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11793_))
                                      gx#current-expander-context
                                      _ctx11844_)))
                                 _tl1180411827_
                                 _hd1180311825_)))
                            (_g1179511809_ _g1179611812_))))
                    (_g1179511809_ _g1179611812_)))))
        (_g1179411847_ _stx11792_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11724_ . _args11725_)
      (let* ((_g1172711744_
              (lambda (_g1172811741_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1172811741_)))
             (_g1172611789_
              (lambda (_g1172811747_)
                (if (gx#stx-pair? _g1172811747_)
                    (let ((_e1173111749_ (gx#stx-e _g1172811747_)))
                      (let ((_hd1173211752_ (##car _e1173111749_))
                            (_tl1173311754_ (##cdr _e1173111749_)))
                        (if (gx#stx-pair? _tl1173311754_)
                            (let ((_e1173411757_ (gx#stx-e _tl1173311754_)))
                              (let ((_hd1173511760_ (##car _e1173411757_))
                                    (_tl1173611762_ (##cdr _e1173411757_)))
                                (if (gx#stx-pair? _tl1173611762_)
                                    (let ((_e1173711765_
                                           (gx#stx-e _tl1173611762_)))
                                      (let ((_hd1173811768_
                                             (##car _e1173711765_))
                                            (_tl1173911770_
                                             (##cdr _e1173711765_)))
                                        (if (gx#stx-null? _tl1173911770_)
                                            ((lambda (_L11773_ _L11774_)
                                               (apply gxc#compile-e
                                                      _L11773_
                                                      _args11725_))
                                             _hd1173811768_
                                             _hd1173511760_)
                                            (_g1172711744_ _g1172811747_))))
                                    (_g1172711744_ _g1172811747_))))
                            (_g1172711744_ _g1172811747_))))
                    (_g1172711744_ _g1172811747_)))))
        (_g1172611789_ _stx11724_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11656_ . _args11657_)
      (let* ((_g1165911676_
              (lambda (_g1166011673_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1166011673_)))
             (_g1165811721_
              (lambda (_g1166011679_)
                (if (gx#stx-pair? _g1166011679_)
                    (let ((_e1166311681_ (gx#stx-e _g1166011679_)))
                      (let ((_hd1166411684_ (##car _e1166311681_))
                            (_tl1166511686_ (##cdr _e1166311681_)))
                        (if (gx#stx-pair? _tl1166511686_)
                            (let ((_e1166611689_ (gx#stx-e _tl1166511686_)))
                              (let ((_hd1166711692_ (##car _e1166611689_))
                                    (_tl1166811694_ (##cdr _e1166611689_)))
                                (if (gx#stx-pair? _tl1166811694_)
                                    (let ((_e1166911697_
                                           (gx#stx-e _tl1166811694_)))
                                      (let ((_hd1167011700_
                                             (##car _e1166911697_))
                                            (_tl1167111702_
                                             (##cdr _e1166911697_)))
                                        (if (gx#stx-null? _tl1167111702_)
                                            ((lambda (_L11705_ _L11706_)
                                               (apply gxc#compile-e
                                                      _L11705_
                                                      _args11657_))
                                             _hd1167011700_
                                             _hd1166711692_)
                                            (_g1165911676_ _g1166011679_))))
                                    (_g1165911676_ _g1166011679_))))
                            (_g1165911676_ _g1166011679_))))
                    (_g1165911676_ _g1166011679_)))))
        (_g1165811721_ _stx11656_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11538_ . _args11539_)
      (let* ((_g1154111569_
              (lambda (_g1154211566_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1154211566_)))
             (_g1154011653_
              (lambda (_g1154211572_)
                (if (gx#stx-pair? _g1154211572_)
                    (let ((_e1154511574_ (gx#stx-e _g1154211572_)))
                      (let ((_hd1154611577_ (##car _e1154511574_))
                            (_tl1154711579_ (##cdr _e1154511574_)))
                        (if (gx#stx-pair/null? _tl1154711579_)
                            (if (fx>= (gx#stx-length _tl1154711579_) '0)
                                (let ((_g12108_
                                       (gx#syntax-split-splice
                                        _tl1154711579_
                                        '0)))
                                  (begin
                                    (let ((_g12109_ (values-count _g12108_)))
                                      (if (not (fx= _g12109_ 2))
                                          (error "Context expects 2 values"
                                                 _g12109_)))
                                    (let ((_target1154811582_
                                           (values-ref _g12108_ 0))
                                          (_tl1155011584_
                                           (values-ref _g12108_ 1)))
                                      (if (gx#stx-null? _tl1155011584_)
                                          (letrec ((_loop1155111587_
                                                    (lambda (_hd1154911590_
                                                             _body1155511592_
                                                             _hd1155611594_)
                                                      (if (gx#stx-pair?
                                                           _hd1154911590_)
                                                          (let ((_e1155211597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1154911590_)))
                    (let ((_lp-hd1155311600_ (##car _e1155211597_))
                          (_lp-tl1155411602_ (##cdr _e1155211597_)))
                      (if (gx#stx-pair? _lp-hd1155311600_)
                          (let ((_e1155911605_ (gx#stx-e _lp-hd1155311600_)))
                            (let ((_hd1156011608_ (##car _e1155911605_))
                                  (_tl1156111610_ (##cdr _e1155911605_)))
                              (if (gx#stx-pair? _tl1156111610_)
                                  (let ((_e1156211613_
                                         (gx#stx-e _tl1156111610_)))
                                    (let ((_hd1156311616_
                                           (##car _e1156211613_))
                                          (_tl1156411618_
                                           (##cdr _e1156211613_)))
                                      (if (gx#stx-null? _tl1156411618_)
                                          (_loop1155111587_
                                           _lp-tl1155411602_
                                           (cons _hd1156311616_
                                                 _body1155511592_)
                                           (cons _hd1156011608_
                                                 _hd1155611594_))
                                          (_g1154111569_ _g1154211572_))))
                                  (_g1154111569_ _g1154211572_))))
                          (_g1154111569_ _g1154211572_))))
                  (let ((_body1155711621_ (reverse _body1155511592_))
                        (_hd1155811623_ (reverse _hd1155611594_)))
                    ((lambda (_L11626_ _L11627_)
                       (for-each
                        (lambda (_g1164111643_)
                          (apply gxc#compile-e _g1164111643_ _args11539_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1164511648_ _g1164611650_)
                                    (cons _g1164511648_ _g1164611650_))
                                  '()
                                  _L11626_))))
                     _body1155711621_
                     _hd1155811623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1155111587_
                                             _target1154811582_
                                             '()
                                             '()))
                                          (_g1154111569_ _g1154211572_)))))
                                (_g1154111569_ _g1154211572_))
                            (_g1154111569_ _g1154211572_))))
                    (_g1154111569_ _g1154211572_)))))
        (_g1154011653_ _stx11538_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11391_ . _args11392_)
      (let* ((_g1139411429_
              (lambda (_g1139511426_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1139511426_)))
             (_g1139311535_
              (lambda (_g1139511432_)
                (if (gx#stx-pair? _g1139511432_)
                    (let ((_e1139911434_ (gx#stx-e _g1139511432_)))
                      (let ((_hd1140011437_ (##car _e1139911434_))
                            (_tl1140111439_ (##cdr _e1139911434_)))
                        (if (gx#stx-pair? _tl1140111439_)
                            (let ((_e1140211442_ (gx#stx-e _tl1140111439_)))
                              (let ((_hd1140311445_ (##car _e1140211442_))
                                    (_tl1140411447_ (##cdr _e1140211442_)))
                                (if (gx#stx-pair/null? _hd1140311445_)
                                    (if (fx>= (gx#stx-length _hd1140311445_)
                                              '0)
                                        (let ((_g12110_
                                               (gx#syntax-split-splice
                                                _hd1140311445_
                                                '0)))
                                          (begin
                                            (let ((_g12111_
                                                   (values-count _g12110_)))
                                              (if (not (fx= _g12111_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12111_)))
                                            (let ((_target1140511450_
                                                   (values-ref _g12110_ 0))
                                                  (_tl1140711452_
                                                   (values-ref _g12110_ 1)))
                                              (if (gx#stx-null? _tl1140711452_)
                                                  (letrec ((_loop1140811455_
                                                            (lambda (_hd1140611458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1141211460_
                             _hd1141311462_)
                      (if (gx#stx-pair? _hd1140611458_)
                          (let ((_e1140911465_ (gx#stx-e _hd1140611458_)))
                            (let ((_lp-hd1141011468_ (##car _e1140911465_))
                                  (_lp-tl1141111470_ (##cdr _e1140911465_)))
                              (if (gx#stx-pair? _lp-hd1141011468_)
                                  (let ((_e1141611473_
                                         (gx#stx-e _lp-hd1141011468_)))
                                    (let ((_hd1141711476_
                                           (##car _e1141611473_))
                                          (_tl1141811478_
                                           (##cdr _e1141611473_)))
                                      (if (gx#stx-pair? _tl1141811478_)
                                          (let ((_e1141911481_
                                                 (gx#stx-e _tl1141811478_)))
                                            (let ((_hd1142011484_
                                                   (##car _e1141911481_))
                                                  (_tl1142111486_
                                                   (##cdr _e1141911481_)))
                                              (if (gx#stx-null? _tl1142111486_)
                                                  (_loop1140811455_
                                                   _lp-tl1141111470_
                                                   (cons _hd1142011484_
                                                         _expr1141211460_)
                                                   (cons _hd1141711476_
                                                         _hd1141311462_))
                                                  (_g1139411429_
                                                   _g1139511432_))))
                                          (_g1139411429_ _g1139511432_))))
                                  (_g1139411429_ _g1139511432_))))
                          (let ((_expr1141411489_ (reverse _expr1141211460_))
                                (_hd1141511491_ (reverse _hd1141311462_)))
                            (if (gx#stx-pair? _tl1140411447_)
                                (let ((_e1142211494_
                                       (gx#stx-e _tl1140411447_)))
                                  (let ((_hd1142311497_ (##car _e1142211494_))
                                        (_tl1142411499_ (##cdr _e1142211494_)))
                                    (if (gx#stx-null? _tl1142411499_)
                                        ((lambda (_L11502_ _L11503_ _L11504_)
                                           (for-each
                                            (lambda (_g1152311525_)
                                              (apply gxc#compile-e
                                                     _g1152311525_
                                                     _args11392_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1152711530_
                                                               _g1152811532_)
                                                        (cons _g1152711530_
                                                              _g1152811532_))
                                                      (cons _L11502_ '())
                                                      _L11503_))))
                                         _hd1142311497_
                                         _expr1141411489_
                                         _hd1141511491_)
                                        (_g1139411429_ _g1139511432_))))
                                (_g1139411429_ _g1139511432_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1140811455_
                                                     _target1140511450_
                                                     '()
                                                     '()))
                                                  (_g1139411429_
                                                   _g1139511432_)))))
                                        (_g1139411429_ _g1139511432_))
                                    (_g1139411429_ _g1139511432_))))
                            (_g1139411429_ _g1139511432_))))
                    (_g1139411429_ _g1139511432_)))))
        (_g1139311535_ _stx11391_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11323_ . _args11324_)
      (let* ((_g1132611343_
              (lambda (_g1132711340_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1132711340_)))
             (_g1132511388_
              (lambda (_g1132711346_)
                (if (gx#stx-pair? _g1132711346_)
                    (let ((_e1133011348_ (gx#stx-e _g1132711346_)))
                      (let ((_hd1133111351_ (##car _e1133011348_))
                            (_tl1133211353_ (##cdr _e1133011348_)))
                        (if (gx#stx-pair? _tl1133211353_)
                            (let ((_e1133311356_ (gx#stx-e _tl1133211353_)))
                              (let ((_hd1133411359_ (##car _e1133311356_))
                                    (_tl1133511361_ (##cdr _e1133311356_)))
                                (if (gx#stx-pair? _tl1133511361_)
                                    (let ((_e1133611364_
                                           (gx#stx-e _tl1133511361_)))
                                      (let ((_hd1133711367_
                                             (##car _e1133611364_))
                                            (_tl1133811369_
                                             (##cdr _e1133611364_)))
                                        (if (gx#stx-null? _tl1133811369_)
                                            ((lambda (_L11372_ _L11373_)
                                               (apply gxc#compile-e
                                                      _L11372_
                                                      _args11324_))
                                             _hd1133711367_
                                             _hd1133411359_)
                                            (_g1132611343_ _g1132711346_))))
                                    (_g1132611343_ _g1132711346_))))
                            (_g1132611343_ _g1132711346_))))
                    (_g1132611343_ _g1132711346_)))))
        (_g1132511388_ _stx11323_))))
  (define gxc#collect-operands
    (lambda (_stx11236_ . _args11237_)
      (let* ((_g1123911258_
              (lambda (_g1124011255_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1124011255_)))
             (_g1123811320_
              (lambda (_g1124011261_)
                (if (gx#stx-pair? _g1124011261_)
                    (let ((_e1124211263_ (gx#stx-e _g1124011261_)))
                      (let ((_hd1124311266_ (##car _e1124211263_))
                            (_tl1124411268_ (##cdr _e1124211263_)))
                        (if (gx#stx-pair/null? _tl1124411268_)
                            (if (fx>= (gx#stx-length _tl1124411268_) '0)
                                (let ((_g12112_
                                       (gx#syntax-split-splice
                                        _tl1124411268_
                                        '0)))
                                  (begin
                                    (let ((_g12113_ (values-count _g12112_)))
                                      (if (not (fx= _g12113_ 2))
                                          (error "Context expects 2 values"
                                                 _g12113_)))
                                    (let ((_target1124511271_
                                           (values-ref _g12112_ 0))
                                          (_tl1124711273_
                                           (values-ref _g12112_ 1)))
                                      (if (gx#stx-null? _tl1124711273_)
                                          (letrec ((_loop1124811276_
                                                    (lambda (_hd1124611279_
                                                             _rands1125211281_)
                                                      (if (gx#stx-pair?
                                                           _hd1124611279_)
                                                          (let ((_e1124911284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1124611279_)))
                    (let ((_lp-hd1125011287_ (##car _e1124911284_))
                          (_lp-tl1125111289_ (##cdr _e1124911284_)))
                      (_loop1124811276_
                       _lp-tl1125111289_
                       (cons _lp-hd1125011287_ _rands1125211281_))))
                  (let ((_rands1125311292_ (reverse _rands1125211281_)))
                    ((lambda (_L11295_)
                       (for-each
                        (lambda (_g1130811310_)
                          (apply gxc#compile-e _g1130811310_ _args11237_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1131211315_ _g1131311317_)
                                    (cons _g1131211315_ _g1131311317_))
                                  '()
                                  _L11295_))))
                     _rands1125311292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1124811276_
                                             _target1124511271_
                                             '()))
                                          (_g1123911258_ _g1124011261_)))))
                                (_g1123911258_ _g1124011261_))
                            (_g1123911258_ _g1124011261_))))
                    (_g1123911258_ _g1124011261_)))))
        (_g1123811320_ _stx11236_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11167_)
      (let* ((_g1116911186_
              (lambda (_g1117011183_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1117011183_)))
             (_g1116811233_
              (lambda (_g1117011189_)
                (if (gx#stx-pair? _g1117011189_)
                    (let ((_e1117311191_ (gx#stx-e _g1117011189_)))
                      (let ((_hd1117411194_ (##car _e1117311191_))
                            (_tl1117511196_ (##cdr _e1117311191_)))
                        (if (gx#stx-pair? _tl1117511196_)
                            (let ((_e1117611199_ (gx#stx-e _tl1117511196_)))
                              (let ((_hd1117711202_ (##car _e1117611199_))
                                    (_tl1117811204_ (##cdr _e1117611199_)))
                                (if (gx#stx-pair? _tl1117811204_)
                                    (let ((_e1117911207_
                                           (gx#stx-e _tl1117811204_)))
                                      (let ((_hd1118011210_
                                             (##car _e1117911207_))
                                            (_tl1118111212_
                                             (##cdr _e1117911207_)))
                                        (if (gx#stx-null? _tl1118111212_)
                                            ((lambda (_L11215_ _L11216_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11231_)
                                                  (if (gx#identifier?
                                                       _bind11231_)
                                                      (gxc#add-module-binding!
                                                       _bind11231_
                                                       '#f)
                                                      '#!void))
                                                _L11216_))
                                             _hd1118011210_
                                             _hd1117711202_)
                                            (_g1116911186_ _g1117011189_))))
                                    (_g1116911186_ _g1117011189_))))
                            (_g1116911186_ _g1117011189_))))
                    (_g1116911186_ _g1117011189_)))))
        (_g1116811233_ _stx11167_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11100_)
      (let* ((_g1110211119_
              (lambda (_g1110311116_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1110311116_)))
             (_g1110111164_
              (lambda (_g1110311122_)
                (if (gx#stx-pair? _g1110311122_)
                    (let ((_e1110611124_ (gx#stx-e _g1110311122_)))
                      (let ((_hd1110711127_ (##car _e1110611124_))
                            (_tl1110811129_ (##cdr _e1110611124_)))
                        (if (gx#stx-pair? _tl1110811129_)
                            (let ((_e1110911132_ (gx#stx-e _tl1110811129_)))
                              (let ((_hd1111011135_ (##car _e1110911132_))
                                    (_tl1111111137_ (##cdr _e1110911132_)))
                                (if (gx#stx-pair? _tl1111111137_)
                                    (let ((_e1111211140_
                                           (gx#stx-e _tl1111111137_)))
                                      (let ((_hd1111311143_
                                             (##car _e1111211140_))
                                            (_tl1111411145_
                                             (##cdr _e1111211140_)))
                                        (if (gx#stx-null? _tl1111411145_)
                                            ((lambda (_L11148_ _L11149_)
                                               (gxc#add-module-binding!
                                                _L11149_
                                                '#t))
                                             _hd1111311143_
                                             _hd1111011135_)
                                            (_g1110211119_ _g1110311122_))))
                                    (_g1110211119_ _g1110311122_))))
                            (_g1110211119_ _g1110311122_))))
                    (_g1110211119_ _g1110311122_)))))
        (_g1110111164_ _stx11100_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11042_ _modules11043_)
      (let* ((_g1104511059_
              (lambda (_g1104611056_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1104611056_)))
             (_g1104411097_
              (lambda (_g1104611062_)
                (if (gx#stx-pair? _g1104611062_)
                    (let ((_e1104911064_ (gx#stx-e _g1104611062_)))
                      (let ((_hd1105011067_ (##car _e1104911064_))
                            (_tl1105111069_ (##cdr _e1104911064_)))
                        (if (gx#stx-pair? _tl1105111069_)
                            (let ((_e1105211072_ (gx#stx-e _tl1105111069_)))
                              (let ((_hd1105311075_ (##car _e1105211072_))
                                    (_tl1105411077_ (##cdr _e1105211072_)))
                                ((lambda (_L11080_ _L11081_)
                                   (let ((_ctx11094_
                                          (gx#syntax-local-e__0 _L11081_)))
                                     (begin
                                       (set-box!
                                        _modules11043_
                                        (cons _ctx11094_
                                              (unbox _modules11043_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11094_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11043_))
                                        gx#current-expander-context
                                        _ctx11094_))))
                                 _tl1105411077_
                                 _hd1105311075_)))
                            (_g1104511059_ _g1104611062_))))
                    (_g1104511059_ _g1104611062_)))))
        (_g1104411097_ _stx11042_))))
  (define gxc#add-module-binding!
    (lambda (_id11036_ _syntax?11037_)
      (let ((_eid11039_
             (##structure-ref
              (gx#resolve-identifier__0 _id11036_)
              '1
              gx#binding::t
              '#f))
            (_ht11040_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11039_)
            '#!void
            (table-set!
             _ht11040_
             _eid11039_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11039_)
              _syntax?11037_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11017_)
      (let ((_bind11019_ (gx#resolve-identifier__0 _id11017_)))
        (if _bind11019_
            (let ((_eid11021_
                   (##structure-ref _bind11019_ '1 gx#binding::t '#f))
                  (_ht11022_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid11021_)
                  _eid11021_
                  (let ((_$e11024_ (table-ref _ht11022_ _eid11021_ '#f)))
                    (if _$e11024_
                        (values _$e11024_)
                        (if (##structure-instance-of?
                             _bind11019_
                             'gx#local-binding::t)
                            (let ((_gid11027_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid11021_)))
                              (begin
                                (table-set! _ht11022_ _eid11021_ _gid11027_)
                                _gid11027_))
                            (if (##structure-instance-of?
                                 _bind11019_
                                 'gx#module-binding::t)
                                (let ((_gid11034_
                                       (let ((_$e11029_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind11019_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e11029_
                                             ((lambda (_ns11032_)
                                                (make-symbol
                                                 _ns11032_
                                                 '"#"
                                                 _eid11021_))
                                              _$e11029_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid11021_)))))
                                  (begin
                                    (table-set!
                                     _ht11022_
                                     _eid11021_
                                     _gid11034_)
                                    _gid11034_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id11017_
                                 _eid11021_
                                 _bind11019_)))))))
            (if (interned-symbol? (gx#stx-e _id11017_))
                (gx#stx-e _id11017_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11017_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11015_)
      (if (gx#identifier? _id11015_)
          (gxc#generate-runtime-binding-id _id11015_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10993
      (lambda (_sym10995_ _quote?10996_)
        (let* ((_ht10998_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11000_ (table-ref _ht10998_ _sym10995_ '#f)))
          (if _$e11000_
              (values _$e11000_)
              (let ((_g11003_
                     (if _quote?10996_
                         (make-symbol
                          '"__"
                          _sym10995_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10995_ '"_"))))
                (begin
                  (table-set! _ht10998_ _sym10995_ _g11003_)
                  _g11003_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11008_)
          (let ((_quote?11010_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10993
             _sym11008_
             _quote?11010_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12115_
          (let ((_g12114_ (length _g12115_)))
            (cond ((fx= _g12114_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12115_))
                  ((fx= _g12114_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10993
                          _g12115_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12115_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10992_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10992_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10952_)
      (if (interned-symbol? _key10952_)
          _key10952_
          (if (uninterned-symbol? _key10952_)
              (gxc#generate-runtime-gensym-reference__0 _key10952_)
              (let* ((_key1095310960_ _key10952_)
                     (_E1095510964_
                      (lambda ()
                        (error '"No clause matching" _key1095310960_)))
                     (_K1095610980_
                      (lambda (_mark10967_ _eid10968_)
                        (let ((_$e10970_
                               (##structure-ref
                                _mark10967_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10970_
                              ((lambda (_ht10973_)
                                 (let ((_$e10975_
                                        (table-ref _ht10973_ _eid10968_ '#f)))
                                   (if _$e10975_
                                       ((lambda (_id10978_)
                                          (if (interned-symbol? _id10978_)
                                              _id10978_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10978_)))
                                        _$e10975_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10968_))))
                               _$e10970_)
                              (gxc#generate-runtime-identifier-key
                               _eid10968_))))))
                (if (##pair? _key1095310960_)
                    (let ((_hd1095710983_ (##car _key1095310960_))
                          (_tl1095810985_ (##cdr _key1095310960_)))
                      (let* ((_eid10988_ _hd1095710983_)
                             (_mark10990_ _tl1095810985_))
                        (_K1095610980_ _mark10990_ _eid10988_)))
                    (_E1095510964_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10937
      (lambda (_top10939_)
        (if _top10939_
            (let ((_ns10941_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10942_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10942_)
                  (make-symbol
                   _ns10941_
                   '"["
                   (number->string _phi10942_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10941_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10948_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10937 _top10948_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12117_
          (let ((_g12116_ (length _g12117_)))
            (cond ((fx= _g12116_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12117_))
                  ((fx= _g12116_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10937
                          _g12117_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12117_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10936_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10856_)
      (let* ((_g1085810868_
              (lambda (_g1085910865_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1085910865_)))
             (_g1085710933_
              (lambda (_g1085910871_)
                (if (gx#stx-pair? _g1085910871_)
                    (let ((_e1086110873_ (gx#stx-e _g1085910871_)))
                      (let ((_hd1086210876_ (##car _e1086110873_))
                            (_tl1086310878_ (##cdr _e1086110873_)))
                        ((lambda (_L10881_)
                           (let* ((_body10891_
                                   (gx#stx-map1 gxc#compile-e _L10881_))
                                  (_body10930_
                                   (filter (lambda (_stx10893_)
                                             (let* ((_g1089610905_
                                                     (lambda (_g1089710902_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1089710902_)))
                                                    (_g1089510912_
                                                     (lambda (_g1089710908_)
                                                       ((lambda () '#t))))
                                                    (_g1089410927_
                                                     (lambda (_g1089710915_)
                                                       (if (gx#stx-pair?
                                                            _g1089710915_)
                                                           (let ((_e1089810917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1089710915_)))
                     (let ((_hd1089910920_ (##car _e1089810917_))
                           (_tl1090010922_ (##cdr _e1089810917_)))
                       (if (gx#identifier? _hd1089910920_)
                           (if (gx#stx-eq? 'begin _hd1089910920_)
                               (if (gx#stx-null? _tl1090010922_)
                                   ((lambda () '#f))
                                   (_g1089510912_ _g1089710915_))
                               (_g1089510912_ _g1089710915_))
                           (_g1089510912_ _g1089710915_))))
                   (_g1089510912_ _g1089710915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1089410927_ _stx10893_)))
                                           _body10891_)))
                             (if (fx= (length _body10930_) '1)
                                 (car _body10930_)
                                 (cons 'begin _body10930_))))
                         _tl1086310878_)))
                    (_g1085810868_ _g1085910871_)))))
        (_g1085710933_ _stx10856_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10818_)
      (let* ((_g1082010830_
              (lambda (_g1082110827_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1082110827_)))
             (_g1081910853_
              (lambda (_g1082110833_)
                (if (gx#stx-pair? _g1082110833_)
                    (let ((_e1082310835_ (gx#stx-e _g1082110833_)))
                      (let ((_hd1082410838_ (##car _e1082310835_))
                            (_tl1082510840_ (##cdr _e1082310835_)))
                        ((lambda (_L10843_)
                           (cons 'begin (gx#syntax->datum _L10843_)))
                         _tl1082510840_)))
                    (_g1082010830_ _g1082110833_)))))
        (_g1081910853_ _stx10818_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10751_)
      (let* ((_g1075310770_
              (lambda (_g1075410767_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1075410767_)))
             (_g1075210815_
              (lambda (_g1075410773_)
                (if (gx#stx-pair? _g1075410773_)
                    (let ((_e1075710775_ (gx#stx-e _g1075410773_)))
                      (let ((_hd1075810778_ (##car _e1075710775_))
                            (_tl1075910780_ (##cdr _e1075710775_)))
                        (if (gx#stx-pair? _tl1075910780_)
                            (let ((_e1076010783_ (gx#stx-e _tl1075910780_)))
                              (let ((_hd1076110786_ (##car _e1076010783_))
                                    (_tl1076210788_ (##cdr _e1076010783_)))
                                (if (gx#stx-pair? _tl1076210788_)
                                    (let ((_e1076310791_
                                           (gx#stx-e _tl1076210788_)))
                                      (let ((_hd1076410794_
                                             (##car _e1076310791_))
                                            (_tl1076510796_
                                             (##cdr _e1076310791_)))
                                        (if (gx#stx-null? _tl1076510796_)
                                            ((lambda (_L10799_ _L10800_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10800_))
                   (cons (gxc#compile-e _L10799_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1076410794_
                                             _hd1076110786_)
                                            (_g1075310770_ _g1075410773_))))
                                    (_g1075310770_ _g1075410773_))))
                            (_g1075310770_ _g1075410773_))))
                    (_g1075310770_ _g1075410773_)))))
        (_g1075210815_ _stx10751_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10713_)
      (let* ((_g1071510725_
              (lambda (_g1071610722_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1071610722_)))
             (_g1071410748_
              (lambda (_g1071610728_)
                (if (gx#stx-pair? _g1071610728_)
                    (let ((_e1071810730_ (gx#stx-e _g1071610728_)))
                      (let ((_hd1071910733_ (##car _e1071810730_))
                            (_tl1072010735_ (##cdr _e1071810730_)))
                        ((lambda (_L10738_)
                           (cons 'declare (map gx#syntax->datum _L10738_)))
                         _tl1072010735_)))
                    (_g1071510725_ _g1071610728_)))))
        (_g1071410748_ _stx10713_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10469_)
      (let* ((_g1047110488_
              (lambda (_g1047210485_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1047210485_)))
             (_g1047010710_
              (lambda (_g1047210491_)
                (if (gx#stx-pair? _g1047210491_)
                    (let ((_e1047510493_ (gx#stx-e _g1047210491_)))
                      (let ((_hd1047610496_ (##car _e1047510493_))
                            (_tl1047710498_ (##cdr _e1047510493_)))
                        (if (gx#stx-pair? _tl1047710498_)
                            (let ((_e1047810501_ (gx#stx-e _tl1047710498_)))
                              (let ((_hd1047910504_ (##car _e1047810501_))
                                    (_tl1048010506_ (##cdr _e1047810501_)))
                                (if (gx#stx-pair? _tl1048010506_)
                                    (let ((_e1048110509_
                                           (gx#stx-e _tl1048010506_)))
                                      (let ((_hd1048210512_
                                             (##car _e1048110509_))
                                            (_tl1048310514_
                                             (##cdr _e1048110509_)))
                                        (if (gx#stx-null? _tl1048310514_)
                                            ((lambda (_L10517_ _L10518_)
                                               (let* ((_g1053510548_
                                                       (lambda (_g1053610545_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1053610545_)))
                                                      (_g1053410662_
                                                       (lambda (_g1053610551_)
                                                         ((lambda ()
                                                            (let* ((_tmp10555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10937
                             '#t))
                           (_body10659_
                            (let _lp10557_ ((_rest10559_ _L10518_)
                                            (_k10560_ '0)
                                            (_r10561_ '()))
                              (let* ((_g1056610582_
                                      (lambda (_g1056710579_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1056710579_)))
                                     (_g1056510589_
                                      (lambda (_g1056710585_)
                                        ((lambda () (reverse _r10561_)))))
                                     (_g1056410610_
                                      (lambda (_g1056710592_)
                                        ((lambda (_L10594_)
                                           (if (gx#identifier? _L10594_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10594_)
                                 (cons (cons 'values->list
                                             (cons _tmp10555_
                                                   (cons _k10560_ '())))
                                       '())))
                     '())
               _r10561_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1056510589_ _g1056710592_)))
                                         _g1056710592_)))
                                     (_g1056310634_
                                      (lambda (_g1056710613_)
                                        (if (gx#stx-pair? _g1056710613_)
                                            (let ((_e1057410615_
                                                   (gx#stx-e _g1056710613_)))
                                              (let ((_hd1057510618_
                                                     (##car _e1057410615_))
                                                    (_tl1057610620_
                                                     (##cdr _e1057410615_)))
                                                ((lambda (_L10623_ _L10624_)
                                                   (_lp10557_
                                                    _L10623_
                                                    (fx+ _k10560_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10624_)
                              (cons (cons 'values-ref
                                          (cons _tmp10555_
                                                (cons _k10560_ '())))
                                    '())))
                  _r10561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1057610620_
                                                 _hd1057510618_)))
                                            (_g1056410610_ _g1056710613_))))
                                     (_g1056210656_
                                      (lambda (_g1056710637_)
                                        (if (gx#stx-pair? _g1056710637_)
                                            (let ((_e1056910639_
                                                   (gx#stx-e _g1056710637_)))
                                              (let ((_hd1057010642_
                                                     (##car _e1056910639_))
                                                    (_tl1057110644_
                                                     (##cdr _e1056910639_)))
                                                (if (gx#stx-datum?
                                                     _hd1057010642_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1057010642_)
                        '#f)
                ((lambda (_L10647_)
                   (_lp10557_ _L10647_ (fx+ _k10560_ '1) _r10561_))
                 _tl1057110644_)
                (_g1056310634_ _g1056710637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1056310634_
                                                     _g1056710637_))))
                                            (_g1056310634_ _g1056710637_)))))
                                (_g1056210656_ _rest10559_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10555_
                                              (cons (gxc#compile-e _L10517_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10555_
                                         _L10518_)
                                        _body10659_))))))))
              (_g1053310692_
               (lambda (_g1053610665_)
                 (if (gx#stx-pair? _g1053610665_)
                     (let ((_e1054110667_ (gx#stx-e _g1053610665_)))
                       (let ((_hd1054210670_ (##car _e1054110667_))
                             (_tl1054310672_ (##cdr _e1054110667_)))
                         (if (gx#stx-null? _tl1054310672_)
                             ((lambda (_L10675_)
                                (let ((_eid10684_
                                       (gxc#generate-runtime-binding-id
                                        _L10675_)))
                                  (begin
                                    (let ((_lambda-expr1068510687_
                                           (gxc#apply-find-lambda-expression
                                            _L10517_)))
                                      (if _lambda-expr1068510687_
                                          (let ((_lambda-expr10690_
                                                 _lambda-expr1068510687_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10690_
                                             _eid10684_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10684_
                                                (cons (gxc#compile-e _L10517_)
                                                      '()))))))
                              _hd1054210670_)
                             (_g1053410662_ _g1053610665_))))
                     (_g1053410662_ _g1053610665_))))
              (_g1053210707_
               (lambda (_g1053610695_)
                 (if (gx#stx-pair? _g1053610695_)
                     (let ((_e1053710697_ (gx#stx-e _g1053610695_)))
                       (let ((_hd1053810700_ (##car _e1053710697_))
                             (_tl1053910702_ (##cdr _e1053710697_)))
                         (if (gx#stx-datum? _hd1053810700_)
                             (if (equal? (gx#stx-e _hd1053810700_) '#f)
                                 (if (gx#stx-null? _tl1053910702_)
                                     ((lambda () (gxc#compile-e _L10517_)))
                                     (_g1053310692_ _g1053610695_))
                                 (_g1053310692_ _g1053610695_))
                             (_g1053310692_ _g1053610695_))))
                     (_g1053310692_ _g1053610695_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1053210707_ _L10518_)))
                                             _hd1048210512_
                                             _hd1047910504_)
                                            (_g1047110488_ _g1047210491_))))
                                    (_g1047110488_ _g1047210491_))))
                            (_g1047110488_ _g1047210491_))))
                    (_g1047110488_ _g1047210491_)))))
        (_g1047010710_ _stx10469_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10457_ _hd10458_)
      (let* ((_len10460_ (gx#stx-length _hd10458_))
             (_cmp10462_ (if (gx#stx-list? _hd10458_) 'fx= 'fx>=))
             (_errmsg10464_
              (string-append
               (if (gx#stx-list? _hd10458_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10460_)
               '" values"))
             (_count10466_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10458_)) (fx= _len10460_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10466_
                                    (cons (cons 'values-count
                                                (cons _vals10457_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10462_
                                                            (cons _count10466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10460_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10464_
                                                            (cons _count10466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10390_)
      (let* ((_g1039210409_
              (lambda (_g1039310406_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1039310406_)))
             (_g1039110454_
              (lambda (_g1039310412_)
                (if (gx#stx-pair? _g1039310412_)
                    (let ((_e1039610414_ (gx#stx-e _g1039310412_)))
                      (let ((_hd1039710417_ (##car _e1039610414_))
                            (_tl1039810419_ (##cdr _e1039610414_)))
                        (if (gx#stx-pair? _tl1039810419_)
                            (let ((_e1039910422_ (gx#stx-e _tl1039810419_)))
                              (let ((_hd1040010425_ (##car _e1039910422_))
                                    (_tl1040110427_ (##cdr _e1039910422_)))
                                (if (gx#stx-pair? _tl1040110427_)
                                    (let ((_e1040210430_
                                           (gx#stx-e _tl1040110427_)))
                                      (let ((_hd1040310433_
                                             (##car _e1040210430_))
                                            (_tl1040410435_
                                             (##cdr _e1040210430_)))
                                        (if (gx#stx-null? _tl1040410435_)
                                            ((lambda (_L10438_ _L10439_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10439_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10438_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1040310433_
                                             _hd1040010425_)
                                            (_g1039210409_ _g1039310412_))))
                                    (_g1039210409_ _g1039310412_))))
                            (_g1039210409_ _g1039310412_))))
                    (_g1039210409_ _g1039310412_)))))
        (_g1039110454_ _stx10390_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10388_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10388_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8921_)
      (letrec ((_runtime-identifier=?8923_
                (lambda (_id-stx10379_ _sym10380_)
                  (let ((_bind1038110383_
                         (gx#resolve-identifier__0 _id-stx10379_)))
                    (if _bind1038110383_
                        (let ((_bind10386_ _bind1038110383_))
                          (eq? (##structure-ref
                                _bind10386_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10380_))
                        '#f))))
               (_dispatch-case?8924_
                (lambda (_hd9609_ _body9610_)
                  (let* ((_form9612_ (cons _hd9609_ (cons _body9610_ '())))
                         (_g96179774_
                          (lambda (_g96189771_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g96189771_)))
                         (_g96169781_ (lambda (_g96189777_) ((lambda () '#f))))
                         (_g96159922_
                          (lambda (_g96189784_)
                            (if (gx#stx-pair? _g96189784_)
                                (let ((_e97349786_ (gx#stx-e _g96189784_)))
                                  (let ((_hd97359789_ (##car _e97349786_))
                                        (_tl97369791_ (##cdr _e97349786_)))
                                    (if (gx#stx-pair? _tl97369791_)
                                        (let ((_e97379794_
                                               (gx#stx-e _tl97369791_)))
                                          (let ((_hd97389797_
                                                 (##car _e97379794_))
                                                (_tl97399799_
                                                 (##cdr _e97379794_)))
                                            (if (gx#stx-pair? _hd97389797_)
                                                (let ((_e97409802_
                                                       (gx#stx-e
                                                        _hd97389797_)))
                                                  (let ((_hd97419805_
                                                         (##car _e97409802_))
                                                        (_tl97429807_
                                                         (##cdr _e97409802_)))
                                                    (if (gx#identifier?
                                                         _hd97419805_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd97419805_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97429807_)
                        (let ((_e97439810_ (gx#stx-e _tl97429807_)))
                          (let ((_hd97449813_ (##car _e97439810_))
                                (_tl97459815_ (##cdr _e97439810_)))
                            (if (gx#stx-pair? _hd97449813_)
                                (let ((_e97469818_ (gx#stx-e _hd97449813_)))
                                  (let ((_hd97479821_ (##car _e97469818_))
                                        (_tl97489823_ (##cdr _e97469818_)))
                                    (if (gx#identifier? _hd97479821_)
                                        (if (gx#stx-eq? '%#ref _hd97479821_)
                                            (if (gx#stx-pair? _tl97489823_)
                                                (let ((_e97499826_
                                                       (gx#stx-e
                                                        _tl97489823_)))
                                                  (let ((_hd97509829_
                                                         (##car _e97499826_))
                                                        (_tl97519831_
                                                         (##cdr _e97499826_)))
                                                    (if (gx#stx-null?
                                                         _tl97519831_)
                                                        (if (gx#stx-pair?
                                                             _tl97459815_)
                                                            (let ((_e97529834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl97459815_)))
                      (let ((_hd97539837_ (##car _e97529834_))
                            (_tl97549839_ (##cdr _e97529834_)))
                        (if (gx#stx-pair? _hd97539837_)
                            (let ((_e97559842_ (gx#stx-e _hd97539837_)))
                              (let ((_hd97569845_ (##car _e97559842_))
                                    (_tl97579847_ (##cdr _e97559842_)))
                                (if (gx#identifier? _hd97569845_)
                                    (if (gx#stx-eq? '%#ref _hd97569845_)
                                        (if (gx#stx-pair? _tl97579847_)
                                            (let ((_e97589850_
                                                   (gx#stx-e _tl97579847_)))
                                              (let ((_hd97599853_
                                                     (##car _e97589850_))
                                                    (_tl97609855_
                                                     (##cdr _e97589850_)))
                                                (if (gx#stx-null? _tl97609855_)
                                                    (if (gx#stx-pair?
                                                         _tl97549839_)
                                                        (let ((_e97619858_
                                                               (gx#stx-e
                                                                _tl97549839_)))
                                                          (let ((_hd97629861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97619858_))
                        (_tl97639863_ (##cdr _e97619858_)))
                    (if (gx#stx-pair? _hd97629861_)
                        (let ((_e97649866_ (gx#stx-e _hd97629861_)))
                          (let ((_hd97659869_ (##car _e97649866_))
                                (_tl97669871_ (##cdr _e97649866_)))
                            (if (gx#identifier? _hd97659869_)
                                (if (gx#stx-eq? '%#ref _hd97659869_)
                                    (if (gx#stx-pair? _tl97669871_)
                                        (let ((_e97679874_
                                               (gx#stx-e _tl97669871_)))
                                          (let ((_hd97689877_
                                                 (##car _e97679874_))
                                                (_tl97699879_
                                                 (##cdr _e97679874_)))
                                            (if (gx#stx-null? _tl97699879_)
                                                (if (gx#stx-null? _tl97639863_)
                                                    (if (gx#stx-null?
                                                         _tl97399799_)
                                                        ((lambda (_L9882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9883_
                          _L9884_
                          _L9885_)
                   (if (if (gx#identifier? _L9885_)
                           (if (_runtime-identifier=?8923_ _L9884_ 'apply)
                               (if (gx#free-identifier=? _L9885_ _L9882_)
                                   (not (gx#free-identifier=? _L9883_ _L9885_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g96169781_ _g96189784_)))
                 _hd97689877_
                 _hd97599853_
                 _hd97509829_
                 _hd97359789_)
                (_g96169781_ _g96189784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96169781_ _g96189784_))
                                                (_g96169781_ _g96189784_))))
                                        (_g96169781_ _g96189784_))
                                    (_g96169781_ _g96189784_))
                                (_g96169781_ _g96189784_))))
                        (_g96169781_ _g96189784_))))
                (_g96169781_ _g96189784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96169781_
                                                     _g96189784_))))
                                            (_g96169781_ _g96189784_))
                                        (_g96169781_ _g96189784_))
                                    (_g96169781_ _g96189784_))))
                            (_g96169781_ _g96189784_))))
                    (_g96169781_ _g96189784_))
                (_g96169781_ _g96189784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g96169781_ _g96189784_))
                                            (_g96169781_ _g96189784_))
                                        (_g96169781_ _g96189784_))))
                                (_g96169781_ _g96189784_))))
                        (_g96169781_ _g96189784_))
                    (_g96169781_ _g96189784_))
                (_g96169781_ _g96189784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g96169781_ _g96189784_))))
                                        (_g96169781_ _g96189784_))))
                                (_g96169781_ _g96189784_))))
                         (_g961410182_
                          (lambda (_g96189925_)
                            (if (gx#stx-pair? _g96189925_)
                                (let ((_e96709927_ (gx#stx-e _g96189925_)))
                                  (let ((_hd96719930_ (##car _e96709927_))
                                        (_tl96729932_ (##cdr _e96709927_)))
                                    (if (gx#stx-pair/null? _hd96719930_)
                                        (if (fx>= (gx#stx-length _hd96719930_)
                                                  '0)
                                            (let ((_g12118_
                                                   (gx#syntax-split-splice
                                                    _hd96719930_
                                                    '0)))
                                              (begin
                                                (let ((_g12119_
                                                       (values-count
                                                        _g12118_)))
                                                  (if (not (fx= _g12119_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12119_)))
                                                (let ((_target96739935_
                                                       (values-ref _g12118_ 0))
                                                      (_tl96759937_
                                                       (values-ref
                                                        _g12118_
                                                        1)))
                                                  (letrec ((_loop96769940_
                                                            (lambda (_hd96749943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg96809945_)
                      (if (gx#stx-pair? _hd96749943_)
                          (let ((_e96779948_ (gx#stx-e _hd96749943_)))
                            (let ((_lp-hd96789951_ (##car _e96779948_))
                                  (_lp-tl96799953_ (##cdr _e96779948_)))
                              (_loop96769940_
                               _lp-tl96799953_
                               (cons _lp-hd96789951_ _arg96809945_))))
                          (let ((_arg96819956_ (reverse _arg96809945_)))
                            (if (gx#stx-pair? _tl96729932_)
                                (let ((_e96829959_ (gx#stx-e _tl96729932_)))
                                  (let ((_hd96839962_ (##car _e96829959_))
                                        (_tl96849964_ (##cdr _e96829959_)))
                                    (if (gx#stx-pair? _hd96839962_)
                                        (let ((_e96859967_
                                               (gx#stx-e _hd96839962_)))
                                          (let ((_hd96869970_
                                                 (##car _e96859967_))
                                                (_tl96879972_
                                                 (##cdr _e96859967_)))
                                            (if (gx#identifier? _hd96869970_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd96869970_)
                                                    (if (gx#stx-pair?
                                                         _tl96879972_)
                                                        (let ((_e96889975_
                                                               (gx#stx-e
                                                                _tl96879972_)))
                                                          (let ((_hd96899978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e96889975_))
                        (_tl96909980_ (##cdr _e96889975_)))
                    (if (gx#stx-pair? _hd96899978_)
                        (let ((_e96919983_ (gx#stx-e _hd96899978_)))
                          (let ((_hd96929986_ (##car _e96919983_))
                                (_tl96939988_ (##cdr _e96919983_)))
                            (if (gx#identifier? _hd96929986_)
                                (if (gx#stx-eq? '%#ref _hd96929986_)
                                    (if (gx#stx-pair? _tl96939988_)
                                        (let ((_e96949991_
                                               (gx#stx-e _tl96939988_)))
                                          (let ((_hd96959994_
                                                 (##car _e96949991_))
                                                (_tl96969996_
                                                 (##cdr _e96949991_)))
                                            (if (gx#stx-null? _tl96969996_)
                                                (if (gx#stx-pair? _tl96909980_)
                                                    (let ((_e96979999_
                                                           (gx#stx-e
                                                            _tl96909980_)))
                                                      (let ((_hd969810002_
                                                             (##car _e96979999_))
                                                            (_tl969910004_
                                                             (##cdr _e96979999_)))
                                                        (if (gx#stx-pair?
                                                             _hd969810002_)
                                                            (let ((_e970010007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd969810002_)))
                      (let ((_hd970110010_ (##car _e970010007_))
                            (_tl970210012_ (##cdr _e970010007_)))
                        (if (gx#identifier? _hd970110010_)
                            (if (gx#stx-eq? '%#ref _hd970110010_)
                                (if (gx#stx-pair? _tl970210012_)
                                    (let ((_e970310015_
                                           (gx#stx-e _tl970210012_)))
                                      (let ((_hd970410018_
                                             (##car _e970310015_))
                                            (_tl970510020_
                                             (##cdr _e970310015_)))
                                        (if (gx#stx-null? _tl970510020_)
                                            (if (gx#stx-pair/null?
                                                 _tl969910004_)
                                                (if (fx>= (gx#stx-length
                                                           _tl969910004_)
                                                          '1)
                                                    (let ((_g12120_
                                                           (gx#syntax-split-splice
                                                            _tl969910004_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12121_
                                                               (values-count
                                                                _g12120_)))
                                                          (if (not (fx= _g12121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12121_)))
                (let ((_target970610023_ (values-ref _g12120_ 0))
                      (_tl970810025_ (values-ref _g12120_ 1)))
                  (if (gx#stx-pair? _tl970810025_)
                      (let ((_e971510028_ (gx#stx-e _tl970810025_)))
                        (let ((_hd971610031_ (##car _e971510028_))
                              (_tl971710033_ (##cdr _e971510028_)))
                          (if (gx#stx-pair? _hd971610031_)
                              (let ((_e971810036_ (gx#stx-e _hd971610031_)))
                                (let ((_hd971910039_ (##car _e971810036_))
                                      (_tl972010041_ (##cdr _e971810036_)))
                                  (if (gx#identifier? _hd971910039_)
                                      (if (gx#stx-eq? '%#ref _hd971910039_)
                                          (if (gx#stx-pair? _tl972010041_)
                                              (let ((_e972110044_
                                                     (gx#stx-e _tl972010041_)))
                                                (let ((_hd972210047_
                                                       (##car _e972110044_))
                                                      (_tl972310049_
                                                       (##cdr _e972110044_)))
                                                  (if (gx#stx-null?
                                                       _tl972310049_)
                                                      (if (gx#stx-null?
                                                           _tl971710033_)
                                                          (letrec ((_loop970910052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd970710055_ _xarg971310057_)
                              (if (gx#stx-pair? _hd970710055_)
                                  (let ((_e971010060_
                                         (gx#stx-e _hd970710055_)))
                                    (let ((_lp-hd971110063_
                                           (##car _e971010060_))
                                          (_lp-tl971210065_
                                           (##cdr _e971010060_)))
                                      (if (gx#stx-pair? _lp-hd971110063_)
                                          (let ((_e972410068_
                                                 (gx#stx-e _lp-hd971110063_)))
                                            (let ((_hd972510071_
                                                   (##car _e972410068_))
                                                  (_tl972610073_
                                                   (##cdr _e972410068_)))
                                              (if (gx#identifier?
                                                   _hd972510071_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd972510071_)
                                                      (if (gx#stx-pair?
                                                           _tl972610073_)
                                                          (let ((_e972710076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl972610073_)))
                    (let ((_hd972810079_ (##car _e972710076_))
                          (_tl972910081_ (##cdr _e972710076_)))
                      (if (gx#stx-null? _tl972910081_)
                          (_loop970910052_
                           _lp-tl971210065_
                           (cons _hd972810079_ _xarg971310057_))
                          (_g96159922_ _g96189925_))))
                  (_g96159922_ _g96189925_))
              (_g96159922_ _g96189925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g96159922_ _g96189925_))))
                                          (_g96159922_ _g96189925_))))
                                  (let ((_xarg971410084_
                                         (reverse _xarg971310057_)))
                                    (if (gx#stx-null? _tl96849964_)
                                        ((lambda (_L10087_
                                                  _L10088_
                                                  _L10089_
                                                  _L10090_
                                                  _L10091_
                                                  _L10092_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1013510138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1013610140_)
                        (cons _g1013510138_ _g1013610140_))
                      '()
                      _L10092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10091_)
                                                       (if (_runtime-identifier=?8923_
                                                            _L10090_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1014210145_
                                                       _g1014310147_)
                                                (cons _g1014210145_
                                                      _g1014310147_))
                                              '()
                                              _L10092_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1014910152_
                                                       _g1015010154_)
                                                (cons _g1014910152_
                                                      _g1015010154_))
                                              '()
                                              _L10088_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1015610159_
                                                      _g1015710161_)
                                               (cons _g1015610159_
                                                     _g1015710161_))
                                             '()
                                             _L10092_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1016310166_
                                                      _g1016410168_)
                                               (cons _g1016310166_
                                                     _g1016410168_))
                                             '()
                                             _L10088_)))
                           (if (gx#free-identifier=? _L10091_ _L10087_)
                               (not (find (lambda (_g1017010172_)
                                            (gx#free-identifier=?
                                             _g1017010172_
                                             _L10089_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1017410177_
                                                             _g1017510179_)
                                                      (cons _g1017410177_
                                                            _g1017510179_))
                                                    (cons _L10091_ '())
                                                    _L10092_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g96159922_ _g96189925_)))
                                         _hd972210047_
                                         _xarg971410084_
                                         _hd970410018_
                                         _hd96959994_
                                         _tl96759937_
                                         _arg96819956_)
                                        (_g96159922_ _g96189925_)))))))
                    (_loop970910052_ _target970610023_ '()))
                  (_g96159922_ _g96189925_))
              (_g96159922_ _g96189925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g96159922_ _g96189925_))
                                          (_g96159922_ _g96189925_))
                                      (_g96159922_ _g96189925_))))
                              (_g96159922_ _g96189925_))))
                      (_g96159922_ _g96189925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96159922_ _g96189925_))
                                                (_g96159922_ _g96189925_))
                                            (_g96159922_ _g96189925_))))
                                    (_g96159922_ _g96189925_))
                                (_g96159922_ _g96189925_))
                            (_g96159922_ _g96189925_))))
                    (_g96159922_ _g96189925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96159922_ _g96189925_))
                                                (_g96159922_ _g96189925_))))
                                        (_g96159922_ _g96189925_))
                                    (_g96159922_ _g96189925_))
                                (_g96159922_ _g96189925_))))
                        (_g96159922_ _g96189925_))))
                (_g96159922_ _g96189925_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96159922_ _g96189925_))
                                                (_g96159922_ _g96189925_))))
                                        (_g96159922_ _g96189925_))))
                                (_g96159922_ _g96189925_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop96769940_
                                                     _target96739935_
                                                     '())))))
                                            (_g96159922_ _g96189925_))
                                        (_g96159922_ _g96189925_))))
                                (_g96159922_ _g96189925_))))
                         (_g961310376_
                          (lambda (_g961810185_)
                            (if (gx#stx-pair? _g961810185_)
                                (let ((_e962210187_ (gx#stx-e _g961810185_)))
                                  (let ((_hd962310190_ (##car _e962210187_))
                                        (_tl962410192_ (##cdr _e962210187_)))
                                    (if (gx#stx-pair/null? _hd962310190_)
                                        (if (fx>= (gx#stx-length _hd962310190_)
                                                  '0)
                                            (let ((_g12122_
                                                   (gx#syntax-split-splice
                                                    _hd962310190_
                                                    '0)))
                                              (begin
                                                (let ((_g12123_
                                                       (values-count
                                                        _g12122_)))
                                                  (if (not (fx= _g12123_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12123_)))
                                                (let ((_target962510195_
                                                       (values-ref _g12122_ 0))
                                                      (_tl962710197_
                                                       (values-ref
                                                        _g12122_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl962710197_)
                                                      (letrec ((_loop962810200_
                                                                (lambda (_hd962610203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg963210205_)
                          (if (gx#stx-pair? _hd962610203_)
                              (let ((_e962910208_ (gx#stx-e _hd962610203_)))
                                (let ((_lp-hd963010211_ (##car _e962910208_))
                                      (_lp-tl963110213_ (##cdr _e962910208_)))
                                  (_loop962810200_
                                   _lp-tl963110213_
                                   (cons _lp-hd963010211_ _arg963210205_))))
                              (let ((_arg963310216_ (reverse _arg963210205_)))
                                (if (gx#stx-pair? _tl962410192_)
                                    (let ((_e963410219_
                                           (gx#stx-e _tl962410192_)))
                                      (let ((_hd963510222_
                                             (##car _e963410219_))
                                            (_tl963610224_
                                             (##cdr _e963410219_)))
                                        (if (gx#stx-pair? _hd963510222_)
                                            (let ((_e963710227_
                                                   (gx#stx-e _hd963510222_)))
                                              (let ((_hd963810230_
                                                     (##car _e963710227_))
                                                    (_tl963910232_
                                                     (##cdr _e963710227_)))
                                                (if (gx#identifier?
                                                     _hd963810230_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd963810230_)
                                                        (if (gx#stx-pair?
                                                             _tl963910232_)
                                                            (let ((_e964010235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl963910232_)))
                      (let ((_hd964110238_ (##car _e964010235_))
                            (_tl964210240_ (##cdr _e964010235_)))
                        (if (gx#stx-pair? _hd964110238_)
                            (let ((_e964310243_ (gx#stx-e _hd964110238_)))
                              (let ((_hd964410246_ (##car _e964310243_))
                                    (_tl964510248_ (##cdr _e964310243_)))
                                (if (gx#identifier? _hd964410246_)
                                    (if (gx#stx-eq? '%#ref _hd964410246_)
                                        (if (gx#stx-pair? _tl964510248_)
                                            (let ((_e964610251_
                                                   (gx#stx-e _tl964510248_)))
                                              (let ((_hd964710254_
                                                     (##car _e964610251_))
                                                    (_tl964810256_
                                                     (##cdr _e964610251_)))
                                                (if (gx#stx-null?
                                                     _tl964810256_)
                                                    (if (gx#stx-pair/null?
                                                         _tl964210240_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl964210240_)
                          '0)
                    (let ((_g12124_ (gx#syntax-split-splice _tl964210240_ '0)))
                      (begin
                        (let ((_g12125_ (values-count _g12124_)))
                          (if (not (fx= _g12125_ 2))
                              (error "Context expects 2 values" _g12125_)))
                        (let ((_target964910259_ (values-ref _g12124_ 0))
                              (_tl965110261_ (values-ref _g12124_ 1)))
                          (if (gx#stx-null? _tl965110261_)
                              (letrec ((_loop965210264_
                                        (lambda (_hd965010267_ _xarg965610269_)
                                          (if (gx#stx-pair? _hd965010267_)
                                              (let ((_e965310272_
                                                     (gx#stx-e _hd965010267_)))
                                                (let ((_lp-hd965410275_
                                                       (##car _e965310272_))
                                                      (_lp-tl965510277_
                                                       (##cdr _e965310272_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd965410275_)
                                                      (let ((_e965810280_
                                                             (gx#stx-e
                                                              _lp-hd965410275_)))
                                                        (let ((_hd965910283_
                                                               (##car _e965810280_))
                                                              (_tl966010285_
                                                               (##cdr _e965810280_)))
                                                          (if (gx#identifier?
                                                               _hd965910283_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd965910283_)
                          (if (gx#stx-pair? _tl966010285_)
                              (let ((_e966110288_ (gx#stx-e _tl966010285_)))
                                (let ((_hd966210291_ (##car _e966110288_))
                                      (_tl966310293_ (##cdr _e966110288_)))
                                  (if (gx#stx-null? _tl966310293_)
                                      (_loop965210264_
                                       _lp-tl965510277_
                                       (cons _hd966210291_ _xarg965610269_))
                                      (_g961410182_ _g961810185_))))
                              (_g961410182_ _g961810185_))
                          (_g961410182_ _g961810185_))
                      (_g961410182_ _g961810185_))))
              (_g961410182_ _g961810185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg965710296_
                                                     (reverse _xarg965610269_)))
                                                (if (gx#stx-null?
                                                     _tl963610224_)
                                                    ((lambda (_L10299_
                                                              _L10300_
                                                              _L10301_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1032910332_ _g1033010334_)
                                    (cons _g1032910332_ _g1033010334_))
                                  '()
                                  _L10301_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1033610339_
                                                           _g1033710341_)
                                                    (cons _g1033610339_
                                                          _g1033710341_))
                                                  '()
                                                  _L10301_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1034310346_
                                                           _g1034410348_)
                                                    (cons _g1034310346_
                                                          _g1034410348_))
                                                  '()
                                                  _L10299_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1035010353_
                                                          _g1035110355_)
                                                   (cons _g1035010353_
                                                         _g1035110355_))
                                                 '()
                                                 _L10301_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1035710360_
                                                          _g1035810362_)
                                                   (cons _g1035710360_
                                                         _g1035810362_))
                                                 '()
                                                 _L10299_)))
                               (not (find (lambda (_g1036410366_)
                                            (gx#free-identifier=?
                                             _g1036410366_
                                             _L10300_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1036810371_
                                                             _g1036910373_)
                                                      (cons _g1036810371_
                                                            _g1036910373_))
                                                    '()
                                                    _L10301_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g961410182_ _g961810185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg965710296_
                                                     _hd964710254_
                                                     _arg963310216_)
                                                    (_g961410182_
                                                     _g961810185_)))))))
                                (_loop965210264_ _target964910259_ '()))
                              (_g961410182_ _g961810185_)))))
                    (_g961410182_ _g961810185_))
                (_g961410182_ _g961810185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g961410182_
                                                     _g961810185_))))
                                            (_g961410182_ _g961810185_))
                                        (_g961410182_ _g961810185_))
                                    (_g961410182_ _g961810185_))))
                            (_g961410182_ _g961810185_))))
                    (_g961410182_ _g961810185_))
                (_g961410182_ _g961810185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g961410182_
                                                     _g961810185_))))
                                            (_g961410182_ _g961810185_))))
                                    (_g961410182_ _g961810185_)))))))
                (_loop962810200_ _target962510195_ '()))
              (_g961410182_ _g961810185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g961410182_ _g961810185_))
                                        (_g961410182_ _g961810185_))))
                                (_g961410182_ _g961810185_)))))
                    (_g961310376_ _form9612_))))
               (_dispatch-case-e8925_
                (lambda (_hd9073_ _body9074_)
                  (let* ((_form9076_ (cons _hd9073_ (cons _body9074_ '())))
                         (_g90809204_
                          (lambda (_g90819201_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g90819201_)))
                         (_g90799322_
                          (lambda (_g90819207_)
                            (if (gx#stx-pair? _g90819207_)
                                (let ((_e91709209_ (gx#stx-e _g90819207_)))
                                  (let ((_hd91719212_ (##car _e91709209_))
                                        (_tl91729214_ (##cdr _e91709209_)))
                                    (if (gx#stx-pair? _tl91729214_)
                                        (let ((_e91739217_
                                               (gx#stx-e _tl91729214_)))
                                          (let ((_hd91749220_
                                                 (##car _e91739217_))
                                                (_tl91759222_
                                                 (##cdr _e91739217_)))
                                            (if (gx#stx-pair? _hd91749220_)
                                                (let ((_e91769225_
                                                       (gx#stx-e
                                                        _hd91749220_)))
                                                  (let ((_hd91779228_
                                                         (##car _e91769225_))
                                                        (_tl91789230_
                                                         (##cdr _e91769225_)))
                                                    (if (gx#identifier?
                                                         _hd91779228_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd91779228_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91789230_)
                        (let ((_e91799233_ (gx#stx-e _tl91789230_)))
                          (let ((_hd91809236_ (##car _e91799233_))
                                (_tl91819238_ (##cdr _e91799233_)))
                            (if (gx#stx-pair? _hd91809236_)
                                (let ((_e91829241_ (gx#stx-e _hd91809236_)))
                                  (let ((_hd91839244_ (##car _e91829241_))
                                        (_tl91849246_ (##cdr _e91829241_)))
                                    (if (gx#identifier? _hd91839244_)
                                        (if (gx#stx-eq? '%#ref _hd91839244_)
                                            (if (gx#stx-pair? _tl91849246_)
                                                (let ((_e91859249_
                                                       (gx#stx-e
                                                        _tl91849246_)))
                                                  (let ((_hd91869252_
                                                         (##car _e91859249_))
                                                        (_tl91879254_
                                                         (##cdr _e91859249_)))
                                                    (if (gx#stx-null?
                                                         _tl91879254_)
                                                        (if (gx#stx-pair?
                                                             _tl91819238_)
                                                            (let ((_e91889257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl91819238_)))
                      (let ((_hd91899260_ (##car _e91889257_))
                            (_tl91909262_ (##cdr _e91889257_)))
                        (if (gx#stx-pair? _hd91899260_)
                            (let ((_e91919265_ (gx#stx-e _hd91899260_)))
                              (let ((_hd91929268_ (##car _e91919265_))
                                    (_tl91939270_ (##cdr _e91919265_)))
                                (if (gx#identifier? _hd91929268_)
                                    (if (gx#stx-eq? '%#ref _hd91929268_)
                                        (if (gx#stx-pair? _tl91939270_)
                                            (let ((_e91949273_
                                                   (gx#stx-e _tl91939270_)))
                                              (let ((_hd91959276_
                                                     (##car _e91949273_))
                                                    (_tl91969278_
                                                     (##cdr _e91949273_)))
                                                (if (gx#stx-null? _tl91969278_)
                                                    (if (gx#stx-pair?
                                                         _tl91909262_)
                                                        (let ((_e91979281_
                                                               (gx#stx-e
                                                                _tl91909262_)))
                                                          (let ((_hd91989284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91979281_))
                        (_tl91999286_ (##cdr _e91979281_)))
                    (if (gx#stx-null? _tl91999286_)
                        (if (gx#stx-null? _tl91759222_)
                            ((lambda (_L9289_ _L9290_ _L9291_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9289_ '()))))
                             _hd91959276_
                             _hd91869252_
                             _hd91719212_)
                            (_g90809204_ _g90819207_))
                        (_g90809204_ _g90819207_))))
                (_g90809204_ _g90819207_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90809204_
                                                     _g90819207_))))
                                            (_g90809204_ _g90819207_))
                                        (_g90809204_ _g90819207_))
                                    (_g90809204_ _g90819207_))))
                            (_g90809204_ _g90819207_))))
                    (_g90809204_ _g90819207_))
                (_g90809204_ _g90819207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90809204_ _g90819207_))
                                            (_g90809204_ _g90819207_))
                                        (_g90809204_ _g90819207_))))
                                (_g90809204_ _g90819207_))))
                        (_g90809204_ _g90819207_))
                    (_g90809204_ _g90819207_))
                (_g90809204_ _g90819207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90809204_ _g90819207_))))
                                        (_g90809204_ _g90819207_))))
                                (_g90809204_ _g90819207_))))
                         (_g90789458_
                          (lambda (_g90819325_)
                            (if (gx#stx-pair? _g90819325_)
                                (let ((_e91319327_ (gx#stx-e _g90819325_)))
                                  (let ((_hd91329330_ (##car _e91319327_))
                                        (_tl91339332_ (##cdr _e91319327_)))
                                    (if (gx#stx-pair/null? _hd91329330_)
                                        (if (fx>= (gx#stx-length _hd91329330_)
                                                  '0)
                                            (let ((_g12126_
                                                   (gx#syntax-split-splice
                                                    _hd91329330_
                                                    '0)))
                                              (begin
                                                (let ((_g12127_
                                                       (values-count
                                                        _g12126_)))
                                                  (if (not (fx= _g12127_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12127_)))
                                                (let ((_target91349335_
                                                       (values-ref _g12126_ 0))
                                                      (_tl91369337_
                                                       (values-ref
                                                        _g12126_
                                                        1)))
                                                  (letrec ((_loop91379340_
                                                            (lambda (_hd91359343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg91419345_)
                      (if (gx#stx-pair? _hd91359343_)
                          (let ((_e91389348_ (gx#stx-e _hd91359343_)))
                            (let ((_lp-hd91399351_ (##car _e91389348_))
                                  (_lp-tl91409353_ (##cdr _e91389348_)))
                              (_loop91379340_
                               _lp-tl91409353_
                               (cons _lp-hd91399351_ _arg91419345_))))
                          (let ((_arg91429356_ (reverse _arg91419345_)))
                            (if (gx#stx-pair? _tl91339332_)
                                (let ((_e91439359_ (gx#stx-e _tl91339332_)))
                                  (let ((_hd91449362_ (##car _e91439359_))
                                        (_tl91459364_ (##cdr _e91439359_)))
                                    (if (gx#stx-pair? _hd91449362_)
                                        (let ((_e91469367_
                                               (gx#stx-e _hd91449362_)))
                                          (let ((_hd91479370_
                                                 (##car _e91469367_))
                                                (_tl91489372_
                                                 (##cdr _e91469367_)))
                                            (if (gx#identifier? _hd91479370_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd91479370_)
                                                    (if (gx#stx-pair?
                                                         _tl91489372_)
                                                        (let ((_e91499375_
                                                               (gx#stx-e
                                                                _tl91489372_)))
                                                          (let ((_hd91509378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91499375_))
                        (_tl91519380_ (##cdr _e91499375_)))
                    (if (gx#stx-pair? _hd91509378_)
                        (let ((_e91529383_ (gx#stx-e _hd91509378_)))
                          (let ((_hd91539386_ (##car _e91529383_))
                                (_tl91549388_ (##cdr _e91529383_)))
                            (if (gx#identifier? _hd91539386_)
                                (if (gx#stx-eq? '%#ref _hd91539386_)
                                    (if (gx#stx-pair? _tl91549388_)
                                        (let ((_e91559391_
                                               (gx#stx-e _tl91549388_)))
                                          (let ((_hd91569394_
                                                 (##car _e91559391_))
                                                (_tl91579396_
                                                 (##cdr _e91559391_)))
                                            (if (gx#stx-null? _tl91579396_)
                                                (if (gx#stx-pair? _tl91519380_)
                                                    (let ((_e91589399_
                                                           (gx#stx-e
                                                            _tl91519380_)))
                                                      (let ((_hd91599402_
                                                             (##car _e91589399_))
                                                            (_tl91609404_
                                                             (##cdr _e91589399_)))
                                                        (if (gx#stx-pair?
                                                             _hd91599402_)
                                                            (let ((_e91619407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91599402_)))
                      (let ((_hd91629410_ (##car _e91619407_))
                            (_tl91639412_ (##cdr _e91619407_)))
                        (if (gx#identifier? _hd91629410_)
                            (if (gx#stx-eq? '%#ref _hd91629410_)
                                (if (gx#stx-pair? _tl91639412_)
                                    (let ((_e91649415_
                                           (gx#stx-e _tl91639412_)))
                                      (let ((_hd91659418_ (##car _e91649415_))
                                            (_tl91669420_ (##cdr _e91649415_)))
                                        (if (gx#stx-null? _tl91669420_)
                                            (if (gx#stx-null? _tl91459364_)
                                                ((lambda (_L9423_
                                                          _L9424_
                                                          _L9425_
                                                          _L9426_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9423_ '()))))
                                                 _hd91659418_
                                                 _hd91569394_
                                                 _tl91369337_
                                                 _arg91429356_)
                                                (_g90799322_ _g90819325_))
                                            (_g90799322_ _g90819325_))))
                                    (_g90799322_ _g90819325_))
                                (_g90799322_ _g90819325_))
                            (_g90799322_ _g90819325_))))
                    (_g90799322_ _g90819325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90799322_ _g90819325_))
                                                (_g90799322_ _g90819325_))))
                                        (_g90799322_ _g90819325_))
                                    (_g90799322_ _g90819325_))
                                (_g90799322_ _g90819325_))))
                        (_g90799322_ _g90819325_))))
                (_g90799322_ _g90819325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90799322_ _g90819325_))
                                                (_g90799322_ _g90819325_))))
                                        (_g90799322_ _g90819325_))))
                                (_g90799322_ _g90819325_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop91379340_
                                                     _target91349335_
                                                     '())))))
                                            (_g90799322_ _g90819325_))
                                        (_g90799322_ _g90819325_))))
                                (_g90799322_ _g90819325_))))
                         (_g90779606_
                          (lambda (_g90819461_)
                            (if (gx#stx-pair? _g90819461_)
                                (let ((_e90859463_ (gx#stx-e _g90819461_)))
                                  (let ((_hd90869466_ (##car _e90859463_))
                                        (_tl90879468_ (##cdr _e90859463_)))
                                    (if (gx#stx-pair/null? _hd90869466_)
                                        (if (fx>= (gx#stx-length _hd90869466_)
                                                  '0)
                                            (let ((_g12128_
                                                   (gx#syntax-split-splice
                                                    _hd90869466_
                                                    '0)))
                                              (begin
                                                (let ((_g12129_
                                                       (values-count
                                                        _g12128_)))
                                                  (if (not (fx= _g12129_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12129_)))
                                                (let ((_target90889471_
                                                       (values-ref _g12128_ 0))
                                                      (_tl90909473_
                                                       (values-ref
                                                        _g12128_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl90909473_)
                                                      (letrec ((_loop90919476_
                                                                (lambda (_hd90899479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg90959481_)
                          (if (gx#stx-pair? _hd90899479_)
                              (let ((_e90929484_ (gx#stx-e _hd90899479_)))
                                (let ((_lp-hd90939487_ (##car _e90929484_))
                                      (_lp-tl90949489_ (##cdr _e90929484_)))
                                  (_loop90919476_
                                   _lp-tl90949489_
                                   (cons _lp-hd90939487_ _arg90959481_))))
                              (let ((_arg90969492_ (reverse _arg90959481_)))
                                (if (gx#stx-pair? _tl90879468_)
                                    (let ((_e90979495_
                                           (gx#stx-e _tl90879468_)))
                                      (let ((_hd90989498_ (##car _e90979495_))
                                            (_tl90999500_ (##cdr _e90979495_)))
                                        (if (gx#stx-pair? _hd90989498_)
                                            (let ((_e91009503_
                                                   (gx#stx-e _hd90989498_)))
                                              (let ((_hd91019506_
                                                     (##car _e91009503_))
                                                    (_tl91029508_
                                                     (##cdr _e91009503_)))
                                                (if (gx#identifier?
                                                     _hd91019506_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd91019506_)
                                                        (if (gx#stx-pair?
                                                             _tl91029508_)
                                                            (let ((_e91039511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl91029508_)))
                      (let ((_hd91049514_ (##car _e91039511_))
                            (_tl91059516_ (##cdr _e91039511_)))
                        (if (gx#stx-pair? _hd91049514_)
                            (let ((_e91069519_ (gx#stx-e _hd91049514_)))
                              (let ((_hd91079522_ (##car _e91069519_))
                                    (_tl91089524_ (##cdr _e91069519_)))
                                (if (gx#identifier? _hd91079522_)
                                    (if (gx#stx-eq? '%#ref _hd91079522_)
                                        (if (gx#stx-pair? _tl91089524_)
                                            (let ((_e91099527_
                                                   (gx#stx-e _tl91089524_)))
                                              (let ((_hd91109530_
                                                     (##car _e91099527_))
                                                    (_tl91119532_
                                                     (##cdr _e91099527_)))
                                                (if (gx#stx-null? _tl91119532_)
                                                    (if (gx#stx-pair/null?
                                                         _tl91059516_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl91059516_)
                          '0)
                    (let ((_g12130_ (gx#syntax-split-splice _tl91059516_ '0)))
                      (begin
                        (let ((_g12131_ (values-count _g12130_)))
                          (if (not (fx= _g12131_ 2))
                              (error "Context expects 2 values" _g12131_)))
                        (let ((_target91129535_ (values-ref _g12130_ 0))
                              (_tl91149537_ (values-ref _g12130_ 1)))
                          (if (gx#stx-null? _tl91149537_)
                              (letrec ((_loop91159540_
                                        (lambda (_hd91139543_ _xarg91199545_)
                                          (if (gx#stx-pair? _hd91139543_)
                                              (let ((_e91169548_
                                                     (gx#stx-e _hd91139543_)))
                                                (let ((_lp-hd91179551_
                                                       (##car _e91169548_))
                                                      (_lp-tl91189553_
                                                       (##cdr _e91169548_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd91179551_)
                                                      (let ((_e91219556_
                                                             (gx#stx-e
                                                              _lp-hd91179551_)))
                                                        (let ((_hd91229559_
                                                               (##car _e91219556_))
                                                              (_tl91239561_
                                                               (##cdr _e91219556_)))
                                                          (if (gx#identifier?
                                                               _hd91229559_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd91229559_)
                          (if (gx#stx-pair? _tl91239561_)
                              (let ((_e91249564_ (gx#stx-e _tl91239561_)))
                                (let ((_hd91259567_ (##car _e91249564_))
                                      (_tl91269569_ (##cdr _e91249564_)))
                                  (if (gx#stx-null? _tl91269569_)
                                      (_loop91159540_
                                       _lp-tl91189553_
                                       (cons _hd91259567_ _xarg91199545_))
                                      (_g90789458_ _g90819461_))))
                              (_g90789458_ _g90819461_))
                          (_g90789458_ _g90819461_))
                      (_g90789458_ _g90819461_))))
              (_g90789458_ _g90819461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg91209572_
                                                     (reverse _xarg91199545_)))
                                                (if (gx#stx-null? _tl90999500_)
                                                    ((lambda (_L9575_
                                                              _L9576_
                                                              _L9577_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg91209572_
                                                     _hd91109530_
                                                     _arg90969492_)
                                                    (_g90789458_
                                                     _g90819461_)))))))
                                (_loop91159540_ _target91129535_ '()))
                              (_g90789458_ _g90819461_)))))
                    (_g90789458_ _g90819461_))
                (_g90789458_ _g90819461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90789458_
                                                     _g90819461_))))
                                            (_g90789458_ _g90819461_))
                                        (_g90789458_ _g90819461_))
                                    (_g90789458_ _g90819461_))))
                            (_g90789458_ _g90819461_))))
                    (_g90789458_ _g90819461_))
                (_g90789458_ _g90819461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90789458_
                                                     _g90819461_))))
                                            (_g90789458_ _g90819461_))))
                                    (_g90789458_ _g90819461_)))))))
                (_loop90919476_ _target90889471_ '()))
              (_g90789458_ _g90819461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g90789458_ _g90819461_))
                                        (_g90789458_ _g90819461_))))
                                (_g90789458_ _g90819461_)))))
                    (_g90779606_ _form9076_))))
               (_generate18926_
                (lambda (_args9061_ _arglen9062_ _hd9063_ _body9064_)
                  (let* ((_len9066_ (gx#stx-length _hd9063_))
                         (_condition9068_
                          (if (gx#stx-list? _hd9063_)
                              (cons 'fx=
                                    (cons _arglen9062_ (cons _len9066_ '())))
                              (if (> _len9066_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9062_
                                              (cons _len9066_ '())))
                                  '#t)))
                         (_dispatch9070_
                          (if (_dispatch-case?8924_ _hd9063_ _body9064_)
                              (_dispatch-case-e8925_ _hd9063_ _body9064_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9063_)
                                          (cons (gxc#compile-e _body9064_)
                                                '()))))))
                    (cons _condition9068_
                          (cons (cons 'apply
                                      (cons _dispatch9070_
                                            (cons _args9061_ '())))
                                '()))))))
        (let* ((_g89288956_
                (lambda (_g89298953_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g89298953_)))
               (_g89279058_
                (lambda (_g89298959_)
                  (if (gx#stx-pair? _g89298959_)
                      (let ((_e89328961_ (gx#stx-e _g89298959_)))
                        (let ((_hd89338964_ (##car _e89328961_))
                              (_tl89348966_ (##cdr _e89328961_)))
                          (if (gx#stx-pair/null? _tl89348966_)
                              (if (fx>= (gx#stx-length _tl89348966_) '0)
                                  (let ((_g12132_
                                         (gx#syntax-split-splice
                                          _tl89348966_
                                          '0)))
                                    (begin
                                      (let ((_g12133_ (values-count _g12132_)))
                                        (if (not (fx= _g12133_ 2))
                                            (error "Context expects 2 values"
                                                   _g12133_)))
                                      (let ((_target89358969_
                                             (values-ref _g12132_ 0))
                                            (_tl89378971_
                                             (values-ref _g12132_ 1)))
                                        (if (gx#stx-null? _tl89378971_)
                                            (letrec ((_loop89388974_
                                                      (lambda (_hd89368977_
                                                               _body89428979_
                                                               _hd89438981_)
                                                        (if (gx#stx-pair?
                                                             _hd89368977_)
                                                            (let ((_e89398984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd89368977_)))
                      (let ((_lp-hd89408987_ (##car _e89398984_))
                            (_lp-tl89418989_ (##cdr _e89398984_)))
                        (if (gx#stx-pair? _lp-hd89408987_)
                            (let ((_e89468992_ (gx#stx-e _lp-hd89408987_)))
                              (let ((_hd89478995_ (##car _e89468992_))
                                    (_tl89488997_ (##cdr _e89468992_)))
                                (if (gx#stx-pair? _tl89488997_)
                                    (let ((_e89499000_
                                           (gx#stx-e _tl89488997_)))
                                      (let ((_hd89509003_ (##car _e89499000_))
                                            (_tl89519005_ (##cdr _e89499000_)))
                                        (if (gx#stx-null? _tl89519005_)
                                            (_loop89388974_
                                             _lp-tl89418989_
                                             (cons _hd89509003_ _body89428979_)
                                             (cons _hd89478995_ _hd89438981_))
                                            (_g89288956_ _g89298959_))))
                                    (_g89288956_ _g89298959_))))
                            (_g89288956_ _g89298959_))))
                    (let ((_body89449008_ (reverse _body89428979_))
                          (_hd89459010_ (reverse _hd89438981_)))
                      ((lambda (_L9013_ _L9014_)
                         (let ((_args9033_ (gxc#generate-runtime-temporary__0))
                               (_arglen9034_
                                (gxc#generate-runtime-temporary__0))
                               (_name9035_
                                (let ((_$e9030_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8921_
                                        '#f)))
                                  (if _$e9030_
                                      _$e9030_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9033_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9033_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9033_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g90369039_ _g90379041_)
                                            (_generate18926_
                                             _args9033_
                                             _arglen9034_
                                             _g90369039_
                                             _g90379041_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g90439046_
                                                             _g90449048_)
                                                      (cons _g90439046_
                                                            _g90449048_))
                                                    '()
                                                    _L9014_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g90509053_
                                                             _g90519055_)
                                                      (cons _g90509053_
                                                            _g90519055_))
                                                    '()
                                                    _L9013_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body89449008_
                       _hd89459010_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop89388974_
                                               _target89358969_
                                               '()
                                               '()))
                                            (_g89288956_ _g89298959_)))))
                                  (_g89288956_ _g89298959_))
                              (_g89288956_ _g89298959_))))
                      (_g89288956_ _g89298959_)))))
          (_g89279058_ _stx8921_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7984
      (lambda (_stx7986_ _compiled-body?7987_)
        (letrec ((_generate-simple7989_
                  (lambda (_hd8908_ _body8909_)
                    (_coalesce-let*7990_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8908_
                      _body8909_
                      _compiled-body?7987_))))
                 (_coalesce-let*7990_
                  (lambda (_code8292_)
                    (let* ((_g82978432_
                            (lambda (_g82988429_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g82988429_)))
                           (_g82968439_
                            (lambda (_g82988435_) ((lambda () _code8292_))))
                           (_g82958609_
                            (lambda (_g82988442_)
                              (if (gx#stx-pair? _g82988442_)
                                  (let ((_e83868444_ (gx#stx-e _g82988442_)))
                                    (let ((_hd83878447_ (##car _e83868444_))
                                          (_tl83888449_ (##cdr _e83868444_)))
                                      (if (gx#identifier? _hd83878447_)
                                          (if (gx#stx-eq? 'let _hd83878447_)
                                              (if (gx#stx-pair? _tl83888449_)
                                                  (let ((_e83898452_
                                                         (gx#stx-e
                                                          _tl83888449_)))
                                                    (let ((_hd83908455_
                                                           (##car _e83898452_))
                                                          (_tl83918457_
                                                           (##cdr _e83898452_)))
                                                      (if (gx#stx-pair?
                                                           _hd83908455_)
                                                          (let ((_e83928460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83908455_)))
                    (let ((_hd83938463_ (##car _e83928460_))
                          (_tl83948465_ (##cdr _e83928460_)))
                      (if (gx#stx-pair? _hd83938463_)
                          (let ((_e83958468_ (gx#stx-e _hd83938463_)))
                            (let ((_hd83968471_ (##car _e83958468_))
                                  (_tl83978473_ (##cdr _e83958468_)))
                              (if (gx#stx-pair? _tl83978473_)
                                  (let ((_e83988476_ (gx#stx-e _tl83978473_)))
                                    (let ((_hd83998479_ (##car _e83988476_))
                                          (_tl84008481_ (##cdr _e83988476_)))
                                      (if (gx#stx-null? _tl84008481_)
                                          (if (gx#stx-null? _tl83948465_)
                                              (if (gx#stx-pair? _tl83918457_)
                                                  (let ((_e84018484_
                                                         (gx#stx-e
                                                          _tl83918457_)))
                                                    (let ((_hd84028487_
                                                           (##car _e84018484_))
                                                          (_tl84038489_
                                                           (##cdr _e84018484_)))
                                                      (if (gx#stx-pair?
                                                           _hd84028487_)
                                                          (let ((_e84048492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd84028487_)))
                    (let ((_hd84058495_ (##car _e84048492_))
                          (_tl84068497_ (##cdr _e84048492_)))
                      (if (gx#identifier? _hd84058495_)
                          (if (gx#stx-eq? 'let* _hd84058495_)
                              (if (gx#stx-pair? _tl84068497_)
                                  (let ((_e84078500_ (gx#stx-e _tl84068497_)))
                                    (let ((_hd84088503_ (##car _e84078500_))
                                          (_tl84098505_ (##cdr _e84078500_)))
                                      (if (gx#stx-pair/null? _hd84088503_)
                                          (if (fx>= (gx#stx-length
                                                     _hd84088503_)
                                                    '0)
                                              (let ((_g12134_
                                                     (gx#syntax-split-splice
                                                      _hd84088503_
                                                      '0)))
                                                (begin
                                                  (let ((_g12135_
                                                         (values-count
                                                          _g12134_)))
                                                    (if (not (fx= _g12135_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12135_)))
                                                  (let ((_target84108508_
                                                         (values-ref
                                                          _g12134_
                                                          0))
                                                        (_tl84128510_
                                                         (values-ref
                                                          _g12134_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl84128510_)
                                                        (letrec ((_loop84138513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd84118516_ _bind84178518_)
                            (if (gx#stx-pair? _hd84118516_)
                                (let ((_e84148521_ (gx#stx-e _hd84118516_)))
                                  (let ((_lp-hd84158524_ (##car _e84148521_))
                                        (_lp-tl84168526_ (##cdr _e84148521_)))
                                    (_loop84138513_
                                     _lp-tl84168526_
                                     (cons _lp-hd84158524_ _bind84178518_))))
                                (let ((_bind84188529_
                                       (reverse _bind84178518_)))
                                  (if (gx#stx-pair/null? _tl84098505_)
                                      (if (fx>= (gx#stx-length _tl84098505_)
                                                '0)
                                          (let ((_g12136_
                                                 (gx#syntax-split-splice
                                                  _tl84098505_
                                                  '0)))
                                            (begin
                                              (let ((_g12137_
                                                     (values-count _g12136_)))
                                                (if (not (fx= _g12137_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12137_)))
                                              (let ((_target84198532_
                                                     (values-ref _g12136_ 0))
                                                    (_tl84218534_
                                                     (values-ref _g12136_ 1)))
                                                (if (gx#stx-null? _tl84218534_)
                                                    (letrec ((_loop84228537_
                                                              (lambda (_hd84208540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body84268542_)
                        (if (gx#stx-pair? _hd84208540_)
                            (let ((_e84238545_ (gx#stx-e _hd84208540_)))
                              (let ((_lp-hd84248548_ (##car _e84238545_))
                                    (_lp-tl84258550_ (##cdr _e84238545_)))
                                (_loop84228537_
                                 _lp-tl84258550_
                                 (cons _lp-hd84248548_ _body84268542_))))
                            (let ((_body84278553_ (reverse _body84268542_)))
                              (if (gx#stx-null? _tl84038489_)
                                  ((lambda (_L8556_ _L8557_ _L8558_ _L8559_)
                                     (cons 'let*
                                           (cons (cons (cons _L8559_
                                                             (cons _L8558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g85948597_ _g85958599_)
                           (cons _g85948597_ _g85958599_))
                         '()
                         _L8557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g86018604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g86028606_)
                     (cons _g86018604_ _g86028606_))
                   '()
                   _L8556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body84278553_
                                   _bind84188529_
                                   _hd83998479_
                                   _hd83968471_)
                                  (_g82968439_ _g82988442_)))))))
              (_loop84228537_ _target84198532_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82968439_
                                                     _g82988442_)))))
                                          (_g82968439_ _g82988442_))
                                      (_g82968439_ _g82988442_)))))))
                  (_loop84138513_ _target84108508_ '()))
                (_g82968439_ _g82988442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82968439_ _g82988442_))
                                          (_g82968439_ _g82988442_))))
                                  (_g82968439_ _g82988442_))
                              (_g82968439_ _g82988442_))
                          (_g82968439_ _g82988442_))))
                  (_g82968439_ _g82988442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82968439_ _g82988442_))
                                              (_g82968439_ _g82988442_))
                                          (_g82968439_ _g82988442_))))
                                  (_g82968439_ _g82988442_))))
                          (_g82968439_ _g82988442_))))
                  (_g82968439_ _g82988442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82968439_ _g82988442_))
                                              (_g82968439_ _g82988442_))
                                          (_g82968439_ _g82988442_))))
                                  (_g82968439_ _g82988442_))))
                           (_g82948774_
                            (lambda (_g82988612_)
                              (if (gx#stx-pair? _g82988612_)
                                  (let ((_e83408614_ (gx#stx-e _g82988612_)))
                                    (let ((_hd83418617_ (##car _e83408614_))
                                          (_tl83428619_ (##cdr _e83408614_)))
                                      (if (gx#identifier? _hd83418617_)
                                          (if (gx#stx-eq? 'let _hd83418617_)
                                              (if (gx#stx-pair? _tl83428619_)
                                                  (let ((_e83438622_
                                                         (gx#stx-e
                                                          _tl83428619_)))
                                                    (let ((_hd83448625_
                                                           (##car _e83438622_))
                                                          (_tl83458627_
                                                           (##cdr _e83438622_)))
                                                      (if (gx#stx-pair?
                                                           _hd83448625_)
                                                          (let ((_e83468630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83448625_)))
                    (let ((_hd83478633_ (##car _e83468630_))
                          (_tl83488635_ (##cdr _e83468630_)))
                      (if (gx#stx-pair? _hd83478633_)
                          (let ((_e83498638_ (gx#stx-e _hd83478633_)))
                            (let ((_hd83508641_ (##car _e83498638_))
                                  (_tl83518643_ (##cdr _e83498638_)))
                              (if (gx#stx-pair? _tl83518643_)
                                  (let ((_e83528646_ (gx#stx-e _tl83518643_)))
                                    (let ((_hd83538649_ (##car _e83528646_))
                                          (_tl83548651_ (##cdr _e83528646_)))
                                      (if (gx#stx-null? _tl83548651_)
                                          (if (gx#stx-null? _tl83488635_)
                                              (if (gx#stx-pair? _tl83458627_)
                                                  (let ((_e83558654_
                                                         (gx#stx-e
                                                          _tl83458627_)))
                                                    (let ((_hd83568657_
                                                           (##car _e83558654_))
                                                          (_tl83578659_
                                                           (##cdr _e83558654_)))
                                                      (if (gx#stx-pair?
                                                           _hd83568657_)
                                                          (let ((_e83588662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83568657_)))
                    (let ((_hd83598665_ (##car _e83588662_))
                          (_tl83608667_ (##cdr _e83588662_)))
                      (if (gx#identifier? _hd83598665_)
                          (if (gx#stx-eq? 'let _hd83598665_)
                              (if (gx#stx-pair? _tl83608667_)
                                  (let ((_e83618670_ (gx#stx-e _tl83608667_)))
                                    (let ((_hd83628673_ (##car _e83618670_))
                                          (_tl83638675_ (##cdr _e83618670_)))
                                      (if (gx#stx-pair? _hd83628673_)
                                          (let ((_e83648678_
                                                 (gx#stx-e _hd83628673_)))
                                            (let ((_hd83658681_
                                                   (##car _e83648678_))
                                                  (_tl83668683_
                                                   (##cdr _e83648678_)))
                                              (if (gx#stx-pair? _hd83658681_)
                                                  (let ((_e83678686_
                                                         (gx#stx-e
                                                          _hd83658681_)))
                                                    (let ((_hd83688689_
                                                           (##car _e83678686_))
                                                          (_tl83698691_
                                                           (##cdr _e83678686_)))
                                                      (if (gx#stx-pair?
                                                           _tl83698691_)
                                                          (let ((_e83708694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83698691_)))
                    (let ((_hd83718697_ (##car _e83708694_))
                          (_tl83728699_ (##cdr _e83708694_)))
                      (if (gx#stx-null? _tl83728699_)
                          (if (gx#stx-null? _tl83668683_)
                              (if (gx#stx-pair/null? _tl83638675_)
                                  (if (fx>= (gx#stx-length _tl83638675_) '0)
                                      (let ((_g12138_
                                             (gx#syntax-split-splice
                                              _tl83638675_
                                              '0)))
                                        (begin
                                          (let ((_g12139_
                                                 (values-count _g12138_)))
                                            (if (not (fx= _g12139_ 2))
                                                (error "Context expects 2 values"
                                                       _g12139_)))
                                          (let ((_target83738702_
                                                 (values-ref _g12138_ 0))
                                                (_tl83758704_
                                                 (values-ref _g12138_ 1)))
                                            (if (gx#stx-null? _tl83758704_)
                                                (letrec ((_loop83768707_
                                                          (lambda (_hd83748710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body83808712_)
                    (if (gx#stx-pair? _hd83748710_)
                        (let ((_e83778715_ (gx#stx-e _hd83748710_)))
                          (let ((_lp-hd83788718_ (##car _e83778715_))
                                (_lp-tl83798720_ (##cdr _e83778715_)))
                            (_loop83768707_
                             _lp-tl83798720_
                             (cons _lp-hd83788718_ _body83808712_))))
                        (let ((_body83818723_ (reverse _body83808712_)))
                          (if (gx#stx-null? _tl83578659_)
                              ((lambda (_L8726_
                                        _L8727_
                                        _L8728_
                                        _L8729_
                                        _L8730_)
                                 (cons 'let*
                                       (cons (cons (cons _L8730_
                                                         (cons _L8729_ '()))
                                                   (cons (cons _L8728_
                                                               (cons _L8727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g87668769_
                                                                _g87678771_)
                                                         (cons _g87668769_
                                                               _g87678771_))
                                                       '()
                                                       _L8726_)))))
                               _body83818723_
                               _hd83718697_
                               _hd83688689_
                               _hd83538649_
                               _hd83508641_)
                              (_g82958609_ _g82988612_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop83768707_
                                                   _target83738702_
                                                   '()))
                                                (_g82958609_ _g82988612_)))))
                                      (_g82958609_ _g82988612_))
                                  (_g82958609_ _g82988612_))
                              (_g82958609_ _g82988612_))
                          (_g82958609_ _g82988612_))))
                  (_g82958609_ _g82988612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82958609_ _g82988612_))))
                                          (_g82958609_ _g82988612_))))
                                  (_g82958609_ _g82988612_))
                              (_g82958609_ _g82988612_))
                          (_g82958609_ _g82988612_))))
                  (_g82958609_ _g82988612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82958609_ _g82988612_))
                                              (_g82958609_ _g82988612_))
                                          (_g82958609_ _g82988612_))))
                                  (_g82958609_ _g82988612_))))
                          (_g82958609_ _g82988612_))))
                  (_g82958609_ _g82988612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82958609_ _g82988612_))
                                              (_g82958609_ _g82988612_))
                                          (_g82958609_ _g82988612_))))
                                  (_g82958609_ _g82988612_))))
                           (_g82938905_
                            (lambda (_g82988777_)
                              (if (gx#stx-pair? _g82988777_)
                                  (let ((_e83028779_ (gx#stx-e _g82988777_)))
                                    (let ((_hd83038782_ (##car _e83028779_))
                                          (_tl83048784_ (##cdr _e83028779_)))
                                      (if (gx#identifier? _hd83038782_)
                                          (if (gx#stx-eq? 'let _hd83038782_)
                                              (if (gx#stx-pair? _tl83048784_)
                                                  (let ((_e83058787_
                                                         (gx#stx-e
                                                          _tl83048784_)))
                                                    (let ((_hd83068790_
                                                           (##car _e83058787_))
                                                          (_tl83078792_
                                                           (##cdr _e83058787_)))
                                                      (if (gx#stx-pair?
                                                           _hd83068790_)
                                                          (let ((_e83088795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83068790_)))
                    (let ((_hd83098798_ (##car _e83088795_))
                          (_tl83108800_ (##cdr _e83088795_)))
                      (if (gx#stx-pair? _hd83098798_)
                          (let ((_e83118803_ (gx#stx-e _hd83098798_)))
                            (let ((_hd83128806_ (##car _e83118803_))
                                  (_tl83138808_ (##cdr _e83118803_)))
                              (if (gx#stx-pair? _tl83138808_)
                                  (let ((_e83148811_ (gx#stx-e _tl83138808_)))
                                    (let ((_hd83158814_ (##car _e83148811_))
                                          (_tl83168816_ (##cdr _e83148811_)))
                                      (if (gx#stx-null? _tl83168816_)
                                          (if (gx#stx-null? _tl83108800_)
                                              (if (gx#stx-pair? _tl83078792_)
                                                  (let ((_e83178819_
                                                         (gx#stx-e
                                                          _tl83078792_)))
                                                    (let ((_hd83188822_
                                                           (##car _e83178819_))
                                                          (_tl83198824_
                                                           (##cdr _e83178819_)))
                                                      (if (gx#stx-pair?
                                                           _hd83188822_)
                                                          (let ((_e83208827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83188822_)))
                    (let ((_hd83218830_ (##car _e83208827_))
                          (_tl83228832_ (##cdr _e83208827_)))
                      (if (gx#identifier? _hd83218830_)
                          (if (gx#stx-eq? 'let _hd83218830_)
                              (if (gx#stx-pair? _tl83228832_)
                                  (let ((_e83238835_ (gx#stx-e _tl83228832_)))
                                    (let ((_hd83248838_ (##car _e83238835_))
                                          (_tl83258840_ (##cdr _e83238835_)))
                                      (if (gx#stx-null? _hd83248838_)
                                          (if (gx#stx-pair/null? _tl83258840_)
                                              (if (fx>= (gx#stx-length
                                                         _tl83258840_)
                                                        '0)
                                                  (let ((_g12140_
                                                         (gx#syntax-split-splice
                                                          _tl83258840_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12141_
                                                             (values-count
                                                              _g12140_)))
                                                        (if (not (fx= _g12141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12141_)))
              (let ((_target83268843_ (values-ref _g12140_ 0))
                    (_tl83288845_ (values-ref _g12140_ 1)))
                (if (gx#stx-null? _tl83288845_)
                    (letrec ((_loop83298848_
                              (lambda (_hd83278851_ _body83338853_)
                                (if (gx#stx-pair? _hd83278851_)
                                    (let ((_e83308856_
                                           (gx#stx-e _hd83278851_)))
                                      (let ((_lp-hd83318859_
                                             (##car _e83308856_))
                                            (_lp-tl83328861_
                                             (##cdr _e83308856_)))
                                        (_loop83298848_
                                         _lp-tl83328861_
                                         (cons _lp-hd83318859_
                                               _body83338853_))))
                                    (let ((_body83348864_
                                           (reverse _body83338853_)))
                                      (if (gx#stx-null? _tl83198824_)
                                          ((lambda (_L8867_ _L8868_ _L8869_)
                                             (cons 'let
                                                   (cons (cons (cons _L8869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8868_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g88978900_ _g88988902_)
                             (cons _g88978900_ _g88988902_))
                           '()
                           _L8867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body83348864_
                                           _hd83158814_
                                           _hd83128806_)
                                          (_g82948774_ _g82988777_)))))))
                      (_loop83298848_ _target83268843_ '()))
                    (_g82948774_ _g82988777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82948774_ _g82988777_))
                                              (_g82948774_ _g82988777_))
                                          (_g82948774_ _g82988777_))))
                                  (_g82948774_ _g82988777_))
                              (_g82948774_ _g82988777_))
                          (_g82948774_ _g82988777_))))
                  (_g82948774_ _g82988777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82948774_ _g82988777_))
                                              (_g82948774_ _g82988777_))
                                          (_g82948774_ _g82988777_))))
                                  (_g82948774_ _g82988777_))))
                          (_g82948774_ _g82988777_))))
                  (_g82948774_ _g82988777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82948774_ _g82988777_))
                                              (_g82948774_ _g82988777_))
                                          (_g82948774_ _g82988777_))))
                                  (_g82948774_ _g82988777_)))))
                      (_g82938905_ _code8292_))))
                 (_generate-values7991_
                  (lambda (_hd8105_ _body8106_)
                    (let _lp8108_ ((_rest8110_ _hd8105_)
                                   (_bind8111_ '())
                                   (_check8112_ '())
                                   (_post8113_ '()))
                      (let* ((_g81168127_
                              (lambda (_g81178124_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g81178124_)))
                             (_g81158141_
                              (lambda (_g81178130_)
                                ((lambda ()
                                   (let* ((_body8134_
                                           (if _compiled-body?7987_
                                               _body8106_
                                               (gxc#compile-e _body8106_)))
                                          (_body8136_
                                           (_generate-values-post7992_
                                            _post8113_
                                            _body8134_))
                                          (_body8138_
                                           (_generate-values-check7993_
                                            _check8112_
                                            _body8136_)))
                                     (cons 'let
                                           (cons (reverse _bind8111_)
                                                 (cons _body8138_ '()))))))))
                             (_g81148289_
                              (lambda (_g81178144_)
                                (if (gx#stx-pair? _g81178144_)
                                    (let ((_e81208146_ (gx#stx-e _g81178144_)))
                                      (let ((_hd81218149_ (##car _e81208146_))
                                            (_tl81228151_ (##cdr _e81208146_)))
                                        ((lambda (_L8154_ _L8155_)
                                           (let* ((_g81708195_
                                                   (lambda (_g81718192_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g81718192_)))
                                                  (_g81698239_
                                                   (lambda (_g81718198_)
                                                     (if (gx#stx-pair?
                                                          _g81718198_)
                                                         (let ((_e81858200_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81718198_)))
                   (let ((_hd81868203_ (##car _e81858200_))
                         (_tl81878205_ (##cdr _e81858200_)))
                     (if (gx#stx-pair? _tl81878205_)
                         (let ((_e81888208_ (gx#stx-e _tl81878205_)))
                           (let ((_hd81898211_ (##car _e81888208_))
                                 (_tl81908213_ (##cdr _e81888208_)))
                             (if (gx#stx-null? _tl81908213_)
                                 ((lambda (_L8216_ _L8217_)
                                    (let* ((_vals8230_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8232_ (gxc#compile-e _L8216_))
                                           (_check-values8234_
                                            (gxc#generate-runtime-check-values
                                             _vals8230_
                                             _L8217_))
                                           (_refs8236_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8230_
                                             _L8217_)))
                                      (_lp8108_
                                       _L8154_
                                       (cons (cons _vals8230_
                                                   (cons _expr8232_ '()))
                                             _bind8111_)
                                       (cons _check-values8234_ _check8112_)
                                       (cons _refs8236_ _post8113_))))
                                  _hd81898211_
                                  _hd81868203_)
                                 (_g81708195_ _g81718198_))))
                         (_g81708195_ _g81718198_))))
                 (_g81708195_ _g81718198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g81688286_
                                                   (lambda (_g81718242_)
                                                     (if (gx#stx-pair?
                                                          _g81718242_)
                                                         (let ((_e81748244_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81718242_)))
                   (let ((_hd81758247_ (##car _e81748244_))
                         (_tl81768249_ (##cdr _e81748244_)))
                     (if (gx#stx-pair? _hd81758247_)
                         (let ((_e81778252_ (gx#stx-e _hd81758247_)))
                           (let ((_hd81788255_ (##car _e81778252_))
                                 (_tl81798257_ (##cdr _e81778252_)))
                             (if (gx#stx-null? _tl81798257_)
                                 (if (gx#stx-pair? _tl81768249_)
                                     (let ((_e81808260_
                                            (gx#stx-e _tl81768249_)))
                                       (let ((_hd81818263_ (##car _e81808260_))
                                             (_tl81828265_
                                              (##cdr _e81808260_)))
                                         (if (gx#stx-null? _tl81828265_)
                                             ((lambda (_L8268_ _L8269_)
                                                (let ((_eid8283_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8269_))
                                                      (_expr8284_
                                                       (gxc#compile-e
                                                        _L8268_)))
                                                  (_lp8108_
                                                   _L8154_
                                                   (cons (cons _eid8283_
                                                               (cons _expr8284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8111_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8112_
                                                   _post8113_)))
                                              _hd81818263_
                                              _hd81788255_)
                                             (_g81698239_ _g81718242_))))
                                     (_g81698239_ _g81718242_))
                                 (_g81698239_ _g81718242_))))
                         (_g81698239_ _g81718242_))))
                 (_g81698239_ _g81718242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g81688286_ _L8155_)))
                                         _tl81228151_
                                         _hd81218149_)))
                                    (_g81158141_ _g81178144_)))))
                        (_g81148289_ _rest8110_)))))
                 (_generate-values-post7992_
                  (lambda (_post8064_ _body8065_)
                    (let _lp8067_ ((_rest8069_ _post8064_)
                                   (_body8070_ _body8065_))
                      (let* ((_rest80718079_ _rest8069_)
                             (_E80748083_
                              (lambda ()
                                (error '"No clause matching" _rest80718079_)))
                             (_else80738087_ (lambda () _body8070_))
                             (_K80758093_
                              (lambda (_rest8090_ _bind8091_)
                                (_lp8067_
                                 _rest8090_
                                 (cons 'let
                                       (cons _bind8091_
                                             (cons _body8070_ '())))))))
                        (if (##pair? _rest80718079_)
                            (let ((_hd80768096_ (##car _rest80718079_))
                                  (_tl80778098_ (##cdr _rest80718079_)))
                              (let* ((_bind8101_ _hd80768096_)
                                     (_rest8103_ _tl80778098_))
                                (_K80758093_ _rest8103_ _bind8101_)))
                            (_else80738087_))))))
                 (_generate-values-check7993_
                  (lambda (_check8061_ _body8062_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8062_ '())
                                  (reverse _check8061_))))))
          (let* ((_g79958012_
                  (lambda (_g79968009_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g79968009_)))
                 (_g79948058_
                  (lambda (_g79968015_)
                    (if (gx#stx-pair? _g79968015_)
                        (let ((_e79998017_ (gx#stx-e _g79968015_)))
                          (let ((_hd80008020_ (##car _e79998017_))
                                (_tl80018022_ (##cdr _e79998017_)))
                            (if (gx#stx-pair? _tl80018022_)
                                (let ((_e80028025_ (gx#stx-e _tl80018022_)))
                                  (let ((_hd80038028_ (##car _e80028025_))
                                        (_tl80048030_ (##cdr _e80028025_)))
                                    (if (gx#stx-pair? _tl80048030_)
                                        (let ((_e80058033_
                                               (gx#stx-e _tl80048030_)))
                                          (let ((_hd80068036_
                                                 (##car _e80058033_))
                                                (_tl80078038_
                                                 (##cdr _e80058033_)))
                                            (if (gx#stx-null? _tl80078038_)
                                                ((lambda (_L8041_ _L8042_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8042_)
                                                       (_generate-simple7989_
                                                        _L8042_
                                                        _L8041_)
                                                       (_generate-values7991_
                                                        _L8042_
                                                        _L8041_)))
                                                 _hd80068036_
                                                 _hd80038028_)
                                                (_g79958012_ _g79968015_))))
                                        (_g79958012_ _g79968015_))))
                                (_g79958012_ _g79968015_))))
                        (_g79958012_ _g79968015_)))))
            (_g79948058_ _stx7986_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8914_)
          (let ((_compiled-body?8916_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7984
             _stx8914_
             _compiled-body?8916_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12143_
          (let ((_g12142_ (length _g12143_)))
            (cond ((fx= _g12142_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12143_))
                  ((fx= _g12142_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7984
                          _g12143_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12143_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7885_ _hd7886_)
      (let _lp7888_ ((_rest7890_ _hd7886_) (_k7891_ '0) (_r7892_ '()))
        (let* ((_g78977913_
                (lambda (_g78987910_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78987910_)))
               (_g78967920_
                (lambda (_g78987916_) ((lambda () (reverse _r7892_)))))
               (_g78957936_
                (lambda (_g78987923_)
                  ((lambda (_L7925_)
                     (if (gx#identifier? _L7925_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7925_)
                                             (cons (cons 'values->list
                                                         (cons _vals7885_
                                                               (cons _k7891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7892_)
                         (_g78967920_ _g78987923_)))
                   _g78987923_)))
               (_g78947960_
                (lambda (_g78987939_)
                  (if (gx#stx-pair? _g78987939_)
                      (let ((_e79057941_ (gx#stx-e _g78987939_)))
                        (let ((_hd79067944_ (##car _e79057941_))
                              (_tl79077946_ (##cdr _e79057941_)))
                          ((lambda (_L7949_ _L7950_)
                             (_lp7888_
                              _L7949_
                              (fx+ _k7891_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7950_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7885_
                                                            (cons _k7891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7892_)))
                           _tl79077946_
                           _hd79067944_)))
                      (_g78957936_ _g78987939_))))
               (_g78937982_
                (lambda (_g78987963_)
                  (if (gx#stx-pair? _g78987963_)
                      (let ((_e79007965_ (gx#stx-e _g78987963_)))
                        (let ((_hd79017968_ (##car _e79007965_))
                              (_tl79027970_ (##cdr _e79007965_)))
                          (if (gx#stx-datum? _hd79017968_)
                              (if (equal? (gx#stx-e _hd79017968_) '#f)
                                  ((lambda (_L7973_)
                                     (_lp7888_
                                      _L7973_
                                      (fx+ _k7891_ '1)
                                      _r7892_))
                                   _tl79027970_)
                                  (_g78947960_ _g78987963_))
                              (_g78947960_ _g78987963_))))
                      (_g78947960_ _g78987963_)))))
          (_g78937982_ _rest7890_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda7563
      (lambda (_stx7565_ _compiled-body?7566_)
        (letrec ((_generate-simple7568_
                  (lambda (_hd7872_ _body7873_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7872_
                     _body7873_
                     _compiled-body?7566_)))
                 (_generate-values7569_
                  (lambda (_hd7649_ _body7650_)
                    (let _lp7652_ ((_rest7654_ _hd7649_)
                                   (_bind7655_ '())
                                   (_check7656_ '())
                                   (_post7657_ '()))
                      (let* ((_g76607671_
                              (lambda (_g76617668_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g76617668_)))
                             (_g76597685_
                              (lambda (_g76617674_)
                                ((lambda ()
                                   (let* ((_body7678_
                                           (if _compiled-body?7566_
                                               _body7650_
                                               (gxc#compile-e _body7650_)))
                                          (_body7680_
                                           (_generate-values-post7571_
                                            _post7657_
                                            _body7678_))
                                          (_body7682_
                                           (_generate-values-check7570_
                                            _check7656_
                                            _body7680_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7655_)
                                                 (cons _body7682_ '()))))))))
                             (_g76587869_
                              (lambda (_g76617688_)
                                (if (gx#stx-pair? _g76617688_)
                                    (let ((_e76647690_ (gx#stx-e _g76617688_)))
                                      (let ((_hd76657693_ (##car _e76647690_))
                                            (_tl76667695_ (##cdr _e76647690_)))
                                        ((lambda (_L7698_ _L7699_)
                                           (let* ((_g77147739_
                                                   (lambda (_g77157736_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g77157736_)))
                                                  (_g77137819_
                                                   (lambda (_g77157742_)
                                                     (if (gx#stx-pair?
                                                          _g77157742_)
                                                         (let ((_e77297744_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g77157742_)))
                   (let ((_hd77307747_ (##car _e77297744_))
                         (_tl77317749_ (##cdr _e77297744_)))
                     (if (gx#stx-pair? _tl77317749_)
                         (let ((_e77327752_ (gx#stx-e _tl77317749_)))
                           (let ((_hd77337755_ (##car _e77327752_))
                                 (_tl77347757_ (##cdr _e77327752_)))
                             (if (gx#stx-null? _tl77347757_)
                                 ((lambda (_L7760_ _L7761_)
                                    (let* ((_vals7774_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7776_ (gxc#compile-e _L7760_))
                                           (_check-values7778_
                                            (gxc#generate-runtime-check-values
                                             _vals7774_
                                             _L7761_))
                                           (_refs7780_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7774_
                                             _L7761_)))
                                      (_lp7652_
                                       _L7698_
                                       (foldl1 cons
                                               (cons (cons _vals7774_
                                                           (cons _expr7776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7655_)
                                               (map (lambda (_e77827784_)
                                                      (let* ((_g77867795_
                                                              _e77827784_)
                                                             (_E77887799_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g77867795_)))
                     (_K77897804_
                      (lambda (_eid7802_)
                        (cons _eid7802_ (cons '#!void '())))))
                (if (##pair? _g77867795_)
                    (let ((_hd77907807_ (##car _g77867795_))
                          (_tl77917809_ (##cdr _g77867795_)))
                      (let ((_eid7812_ _hd77907807_))
                        (if (##pair? _tl77917809_)
                            (let ((_hd77927814_ (##car _tl77917809_))
                                  (_tl77937816_ (##cdr _tl77917809_)))
                              (if (##null? _tl77937816_)
                                  (_K77897804_ _eid7812_)
                                  (_E77887799_)))
                            (_E77887799_))))
                    (_E77887799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7780_))
                                       (cons _check-values7778_ _check7656_)
                                       (foldl1 cons _refs7780_ _post7657_))))
                                  _hd77337755_
                                  _hd77307747_)
                                 (_g77147739_ _g77157742_))))
                         (_g77147739_ _g77157742_))))
                 (_g77147739_ _g77157742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77127866_
                                                   (lambda (_g77157822_)
                                                     (if (gx#stx-pair?
                                                          _g77157822_)
                                                         (let ((_e77187824_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g77157822_)))
                   (let ((_hd77197827_ (##car _e77187824_))
                         (_tl77207829_ (##cdr _e77187824_)))
                     (if (gx#stx-pair? _hd77197827_)
                         (let ((_e77217832_ (gx#stx-e _hd77197827_)))
                           (let ((_hd77227835_ (##car _e77217832_))
                                 (_tl77237837_ (##cdr _e77217832_)))
                             (if (gx#stx-null? _tl77237837_)
                                 (if (gx#stx-pair? _tl77207829_)
                                     (let ((_e77247840_
                                            (gx#stx-e _tl77207829_)))
                                       (let ((_hd77257843_ (##car _e77247840_))
                                             (_tl77267845_
                                              (##cdr _e77247840_)))
                                         (if (gx#stx-null? _tl77267845_)
                                             ((lambda (_L7848_ _L7849_)
                                                (let ((_eid7863_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7849_))
                                                      (_expr7864_
                                                       (gxc#compile-e
                                                        _L7848_)))
                                                  (_lp7652_
                                                   _L7698_
                                                   (cons (cons _eid7863_
                                                               (cons _expr7864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7655_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7656_
                                                   _post7657_)))
                                              _hd77257843_
                                              _hd77227835_)
                                             (_g77137819_ _g77157822_))))
                                     (_g77137819_ _g77157822_))
                                 (_g77137819_ _g77157822_))))
                         (_g77137819_ _g77157822_))))
                 (_g77137819_ _g77157822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g77127866_ _L7699_)))
                                         _tl76667695_
                                         _hd76657693_)))
                                    (_g76597685_ _g76617688_)))))
                        (_g76587869_ _rest7654_)))))
                 (_generate-values-check7570_
                  (lambda (_check7646_ _body7647_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7647_ '())
                                  (reverse _check7646_)))))
                 (_generate-values-post7571_
                  (lambda (_post7639_ _body7640_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7640_ '())
                                  (map (lambda (_g76417643_)
                                         (cons 'set! _g76417643_))
                                       (reverse _post7639_)))))))
          (let* ((_g75737590_
                  (lambda (_g75747587_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75747587_)))
                 (_g75727636_
                  (lambda (_g75747593_)
                    (if (gx#stx-pair? _g75747593_)
                        (let ((_e75777595_ (gx#stx-e _g75747593_)))
                          (let ((_hd75787598_ (##car _e75777595_))
                                (_tl75797600_ (##cdr _e75777595_)))
                            (if (gx#stx-pair? _tl75797600_)
                                (let ((_e75807603_ (gx#stx-e _tl75797600_)))
                                  (let ((_hd75817606_ (##car _e75807603_))
                                        (_tl75827608_ (##cdr _e75807603_)))
                                    (if (gx#stx-pair? _tl75827608_)
                                        (let ((_e75837611_
                                               (gx#stx-e _tl75827608_)))
                                          (let ((_hd75847614_
                                                 (##car _e75837611_))
                                                (_tl75857616_
                                                 (##cdr _e75837611_)))
                                            (if (gx#stx-null? _tl75857616_)
                                                ((lambda (_L7619_ _L7620_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7620_)
                                                       (_generate-simple7568_
                                                        _L7620_
                                                        _L7619_)
                                                       (_generate-values7569_
                                                        _L7620_
                                                        _L7619_)))
                                                 _hd75847614_
                                                 _hd75817606_)
                                                (_g75737590_ _g75747593_))))
                                        (_g75737590_ _g75747593_))))
                                (_g75737590_ _g75747593_))))
                        (_g75737590_ _g75747593_)))))
            (_g75727636_ _stx7565_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7878_)
          (let ((_compiled-body?7880_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda7563
             _stx7878_
             _compiled-body?7880_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12145_
          (let ((_g12144_ (length _g12145_)))
            (cond ((fx= _g12144_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12145_))
                  ((fx= _g12144_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda7563
                          _g12145_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12145_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7147_)
      (letrec ((_generate-values7149_
                (lambda (_hd7392_ _body7393_)
                  (let _lp7395_ ((_rest7397_ _hd7392_) (_bind7398_ '()))
                    (let* ((_rest73997407_ _rest7397_)
                           (_E74027411_
                            (lambda ()
                              (error '"No clause matching" _rest73997407_)))
                           (_else74017418_
                            (lambda ()
                              (let ((_bind7415_ (reverse _bind7398_))
                                    (_body7416_ (gxc#compile-e _body7393_)))
                                (cons 'letrec*
                                      (cons _bind7415_
                                            (cons _body7416_ '()))))))
                           (_K74037552_
                            (lambda (_rest7421_ _hd-bind7422_)
                              (let* ((_g74257450_
                                      (lambda (_g74267447_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g74267447_)))
                                     (_g74247502_
                                      (lambda (_g74267453_)
                                        (if (gx#stx-pair? _g74267453_)
                                            (let ((_e74407455_
                                                   (gx#stx-e _g74267453_)))
                                              (let ((_hd74417458_
                                                     (##car _e74407455_))
                                                    (_tl74427460_
                                                     (##cdr _e74407455_)))
                                                (if (gx#stx-pair? _tl74427460_)
                                                    (let ((_e74437463_
                                                           (gx#stx-e
                                                            _tl74427460_)))
                                                      (let ((_hd74447466_
                                                             (##car _e74437463_))
                                                            (_tl74457468_
                                                             (##cdr _e74437463_)))
                                                        (if (gx#stx-null?
                                                             _tl74457468_)
                                                            ((lambda (_L7471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7472_)
                       (let* ((_vals7491_ (gxc#generate-runtime-temporary__0))
                              (_tmp7493_ (gxc#generate-runtime-temporary__0))
                              (_expr7495_ (gxc#compile-e _L7471_))
                              (_check-values7497_
                               (gxc#generate-runtime-check-values
                                _tmp7493_
                                _L7472_))
                              (_refs7499_
                               (gxc#generate-runtime-let-values-bind
                                _vals7491_
                                _L7472_)))
                         (_lp7395_
                          _rest7421_
                          (foldl1 cons
                                  (cons (cons _vals7491_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7495_ '()))
                              '())
                        (cons _check-values7497_ (cons _tmp7493_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7398_)
                                  _refs7499_))))
                     _hd74447466_
                     _hd74417458_)
                    (_g74257450_ _g74267453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74257450_
                                                     _g74267453_))))
                                            (_g74257450_ _g74267453_))))
                                     (_g74237549_
                                      (lambda (_g74267505_)
                                        (if (gx#stx-pair? _g74267505_)
                                            (let ((_e74297507_
                                                   (gx#stx-e _g74267505_)))
                                              (let ((_hd74307510_
                                                     (##car _e74297507_))
                                                    (_tl74317512_
                                                     (##cdr _e74297507_)))
                                                (if (gx#stx-pair? _hd74307510_)
                                                    (let ((_e74327515_
                                                           (gx#stx-e
                                                            _hd74307510_)))
                                                      (let ((_hd74337518_
                                                             (##car _e74327515_))
                                                            (_tl74347520_
                                                             (##cdr _e74327515_)))
                                                        (if (gx#stx-null?
                                                             _tl74347520_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74317512_)
                        (let ((_e74357523_ (gx#stx-e _tl74317512_)))
                          (let ((_hd74367526_ (##car _e74357523_))
                                (_tl74377528_ (##cdr _e74357523_)))
                            (if (gx#stx-null? _tl74377528_)
                                ((lambda (_L7531_ _L7532_)
                                   (let ((_eid7546_
                                          (gxc#generate-runtime-binding-id*
                                           _L7532_))
                                         (_expr7547_ (gxc#compile-e _L7531_)))
                                     (_lp7395_
                                      _rest7421_
                                      (cons (cons _eid7546_
                                                  (cons _expr7547_ '()))
                                            _bind7398_))))
                                 _hd74367526_
                                 _hd74337518_)
                                (_g74247502_ _g74267505_))))
                        (_g74247502_ _g74267505_))
                    (_g74247502_ _g74267505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74247502_
                                                     _g74267505_))))
                                            (_g74247502_ _g74267505_)))))
                                (_g74237549_ _hd-bind7422_)))))
                      (if (##pair? _rest73997407_)
                          (let ((_hd74047555_ (##car _rest73997407_))
                                (_tl74057557_ (##cdr _rest73997407_)))
                            (let* ((_hd-bind7560_ _hd74047555_)
                                   (_rest7562_ _tl74057557_))
                              (_K74037552_ _rest7562_ _hd-bind7560_)))
                          (_else74017418_))))))
               (_generate-letrec?7150_
                (lambda (_hd7282_)
                  (let _lp7284_ ((_rest7286_ _hd7282_))
                    (let* ((_rest72877295_ _rest7286_)
                           (_E72907299_
                            (lambda ()
                              (error '"No clause matching" _rest72877295_)))
                           (_else72897303_ (lambda () '#t))
                           (_K72917380_
                            (lambda (_rest7306_ _hd-bind7307_)
                              (let* ((_g73097326_
                                      (lambda (_g73107323_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g73107323_)))
                                     (_g73087377_
                                      (lambda (_g73107329_)
                                        (if (gx#stx-pair? _g73107329_)
                                            (let ((_e73137331_
                                                   (gx#stx-e _g73107329_)))
                                              (let ((_hd73147334_
                                                     (##car _e73137331_))
                                                    (_tl73157336_
                                                     (##cdr _e73137331_)))
                                                (if (gx#stx-pair? _hd73147334_)
                                                    (let ((_e73167339_
                                                           (gx#stx-e
                                                            _hd73147334_)))
                                                      (let ((_hd73177342_
                                                             (##car _e73167339_))
                                                            (_tl73187344_
                                                             (##cdr _e73167339_)))
                                                        (if (gx#stx-null?
                                                             _tl73187344_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73157336_)
                        (let ((_e73197347_ (gx#stx-e _tl73157336_)))
                          (let ((_hd73207350_ (##car _e73197347_))
                                (_tl73217352_ (##cdr _e73197347_)))
                            (if (gx#stx-null? _tl73217352_)
                                ((lambda (_L7355_ _L7356_)
                                   (if (_is-lambda-expr?7151_ _L7355_)
                                       (_lp7284_ _rest7306_)
                                       '#f))
                                 _hd73207350_
                                 _hd73177342_)
                                (_g73097326_ _g73107329_))))
                        (_g73097326_ _g73107329_))
                    (_g73097326_ _g73107329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73097326_
                                                     _g73107329_))))
                                            (_g73097326_ _g73107329_)))))
                                (_g73087377_ _hd-bind7307_)))))
                      (if (##pair? _rest72877295_)
                          (let ((_hd72927383_ (##car _rest72877295_))
                                (_tl72937385_ (##cdr _rest72877295_)))
                            (let* ((_hd-bind7388_ _hd72927383_)
                                   (_rest7390_ _tl72937385_))
                              (_K72917380_ _rest7390_ _hd-bind7388_)))
                          (_else72897303_))))))
               (_is-lambda-expr?7151_
                (lambda (_expr7219_)
                  (let* ((_g72227236_
                          (lambda (_g72237233_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g72237233_)))
                         (_g72217243_ (lambda (_g72237239_) ((lambda () '#f))))
                         (_g72207279_
                          (lambda (_g72237246_)
                            (if (gx#stx-pair? _g72237246_)
                                (let ((_e72267248_ (gx#stx-e _g72237246_)))
                                  (let ((_hd72277251_ (##car _e72267248_))
                                        (_tl72287253_ (##cdr _e72267248_)))
                                    (if (gx#identifier? _hd72277251_)
                                        (if (gx#stx-eq? '%#lambda _hd72277251_)
                                            (if (gx#stx-pair? _tl72287253_)
                                                (let ((_e72297256_
                                                       (gx#stx-e
                                                        _tl72287253_)))
                                                  (let ((_hd72307259_
                                                         (##car _e72297256_))
                                                        (_tl72317261_
                                                         (##cdr _e72297256_)))
                                                    ((lambda (_L7264_ _L7265_)
                                                       '#t)
                                                     _tl72317261_
                                                     _hd72307259_)))
                                                (_g72217243_ _g72237246_))
                                            (_g72217243_ _g72237246_))
                                        (_g72217243_ _g72237246_))))
                                (_g72217243_ _g72237246_)))))
                    (_g72207279_ _expr7219_)))))
        (let* ((_g71537170_
                (lambda (_g71547167_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g71547167_)))
               (_g71527216_
                (lambda (_g71547173_)
                  (if (gx#stx-pair? _g71547173_)
                      (let ((_e71577175_ (gx#stx-e _g71547173_)))
                        (let ((_hd71587178_ (##car _e71577175_))
                              (_tl71597180_ (##cdr _e71577175_)))
                          (if (gx#stx-pair? _tl71597180_)
                              (let ((_e71607183_ (gx#stx-e _tl71597180_)))
                                (let ((_hd71617186_ (##car _e71607183_))
                                      (_tl71627188_ (##cdr _e71607183_)))
                                  (if (gx#stx-pair? _tl71627188_)
                                      (let ((_e71637191_
                                             (gx#stx-e _tl71627188_)))
                                        (let ((_hd71647194_
                                               (##car _e71637191_))
                                              (_tl71657196_
                                               (##cdr _e71637191_)))
                                          (if (gx#stx-null? _tl71657196_)
                                              ((lambda (_L7199_ _L7200_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7200_)
                                                     (if (_generate-letrec?7150_
                                                          _L7200_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7200_
                                                          _L7199_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7200_
                                                          _L7199_
                                                          '#f))
                                                     (_generate-values7149_
                                                      _L7200_
                                                      _L7199_)))
                                               _hd71647194_
                                               _hd71617186_)
                                              (_g71537170_ _g71547173_))))
                                      (_g71537170_ _g71547173_))))
                              (_g71537170_ _g71547173_))))
                      (_g71537170_ _g71547173_)))))
          (_g71527216_ _stx7147_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7040_)
      (let _lp7042_ ((_rest7044_ _hd7040_))
        (let* ((_g70487069_
                (lambda (_g70497066_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70497066_)))
               (_g70477076_ (lambda (_g70497072_) ((lambda () '#f))))
               (_g70467083_
                (lambda (_g70497079_)
                  (if (gx#stx-null? _g70497079_)
                      ((lambda () '#t))
                      (_g70477076_ _g70497079_))))
               (_g70457144_
                (lambda (_g70497086_)
                  (if (gx#stx-pair? _g70497086_)
                      (let ((_e70537088_ (gx#stx-e _g70497086_)))
                        (let ((_hd70547091_ (##car _e70537088_))
                              (_tl70557093_ (##cdr _e70537088_)))
                          (if (gx#stx-pair? _hd70547091_)
                              (let ((_e70567096_ (gx#stx-e _hd70547091_)))
                                (let ((_hd70577099_ (##car _e70567096_))
                                      (_tl70587101_ (##cdr _e70567096_)))
                                  (if (gx#stx-pair? _hd70577099_)
                                      (let ((_e70597104_
                                             (gx#stx-e _hd70577099_)))
                                        (let ((_hd70607107_
                                               (##car _e70597104_))
                                              (_tl70617109_
                                               (##cdr _e70597104_)))
                                          (if (gx#stx-null? _tl70617109_)
                                              (if (gx#stx-pair? _tl70587101_)
                                                  (let ((_e70627112_
                                                         (gx#stx-e
                                                          _tl70587101_)))
                                                    (let ((_hd70637115_
                                                           (##car _e70627112_))
                                                          (_tl70647117_
                                                           (##cdr _e70627112_)))
                                                      (if (gx#stx-null?
                                                           _tl70647117_)
                                                          ((lambda (_L7120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7121_
                            _L7122_)
                     (_lp7042_ _L7120_))
                   _tl70557093_
                   _hd70637115_
                   _hd70607107_)
                  (_g70467083_ _g70497086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g70467083_ _g70497086_))
                                              (_g70467083_ _g70497086_))))
                                      (_g70467083_ _g70497086_))))
                              (_g70467083_ _g70497086_))))
                      (_g70467083_ _g70497086_)))))
          (_g70457144_ _rest7044_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6964_ _hd6965_ _body6966_ _compiled-body?6967_)
      (letrec ((_generate16969_
                (lambda (_bind6971_)
                  (let* ((_g69736990_
                          (lambda (_g69746987_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69746987_)))
                         (_g69727037_
                          (lambda (_g69746993_)
                            (if (gx#stx-pair? _g69746993_)
                                (let ((_e69776995_ (gx#stx-e _g69746993_)))
                                  (let ((_hd69786998_ (##car _e69776995_))
                                        (_tl69797000_ (##cdr _e69776995_)))
                                    (if (gx#stx-pair? _hd69786998_)
                                        (let ((_e69807003_
                                               (gx#stx-e _hd69786998_)))
                                          (let ((_hd69817006_
                                                 (##car _e69807003_))
                                                (_tl69827008_
                                                 (##cdr _e69807003_)))
                                            (if (gx#stx-null? _tl69827008_)
                                                (if (gx#stx-pair? _tl69797000_)
                                                    (let ((_e69837011_
                                                           (gx#stx-e
                                                            _tl69797000_)))
                                                      (let ((_hd69847014_
                                                             (##car _e69837011_))
                                                            (_tl69857016_
                                                             (##cdr _e69837011_)))
                                                        (if (gx#stx-null?
                                                             _tl69857016_)
                                                            ((lambda (_L7019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7020_)
                       (cons (gxc#generate-runtime-binding-id* _L7020_)
                             (cons (gxc#compile-e _L7019_) '())))
                     _hd69847014_
                     _hd69817006_)
                    (_g69736990_ _g69746993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69736990_ _g69746993_))
                                                (_g69736990_ _g69746993_))))
                                        (_g69736990_ _g69746993_))))
                                (_g69736990_ _g69746993_)))))
                    (_g69727037_ _bind6971_)))))
        (cons _form6964_
              (cons (map _generate16969_ _hd6965_)
                    (cons (if _compiled-body?6967_
                              _body6966_
                              (gxc#compile-e _body6966_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6872_)
      (letrec ((_generate16874_
                (lambda (_datum6926_)
                  (if (let ((_$e6928_ (null? _datum6926_)))
                        (if _$e6928_
                            _$e6928_
                            (let ((_$e6931_ (interned-symbol? _datum6926_)))
                              (if _$e6931_
                                  _$e6931_
                                  (let ((_$e6934_
                                         (gx#self-quoting? _datum6926_)))
                                    (if _$e6934_
                                        _$e6934_
                                        (eof-object? _datum6926_)))))))
                      _datum6926_
                      (if (uninterned-symbol? _datum6926_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10993
                           _datum6926_
                           '#t)
                          (if (pair? _datum6926_)
                              (cons (_generate16874_ (car _datum6926_))
                                    (_generate16874_ (cdr _datum6926_)))
                              (if (box? _datum6926_)
                                  (box (_generate16874_ (unbox _datum6926_)))
                                  (if (vector? _datum6926_)
                                      (vector-map _generate16874_ _datum6926_)
                                      (if (let ((_$e6937_
                                                 (s8vector? _datum6926_)))
                                            (if _$e6937_
                                                _$e6937_
                                                (let ((_$e6940_
                                                       (u8vector?
                                                        _datum6926_)))
                                                  (if _$e6940_
                                                      _$e6940_
                                                      (let ((_$e6943_
                                                             (s16vector?
                                                              _datum6926_)))
                                                        (if _$e6943_
                                                            _$e6943_
                                                            (let ((_$e6946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6926_)))
                      (if _$e6946_
                          _$e6946_
                          (let ((_$e6949_ (s32vector? _datum6926_)))
                            (if _$e6949_
                                _$e6949_
                                (let ((_$e6952_ (u32vector? _datum6926_)))
                                  (if _$e6952_
                                      _$e6952_
                                      (let ((_$e6955_
                                             (s64vector? _datum6926_)))
                                        (if _$e6955_
                                            _$e6955_
                                            (let ((_$e6958_
                                                   (u64vector? _datum6926_)))
                                              (if _$e6958_
                                                  _$e6958_
                                                  (let ((_$e6961_
                                                         (f32vector?
                                                          _datum6926_)))
                                                    (if _$e6961_
                                                        _$e6961_
                                                        (f64vector?
                                                         _datum6926_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6926_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6872_))))))))))
        (let* ((_g68766889_
                (lambda (_g68776886_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g68776886_)))
               (_g68756923_
                (lambda (_g68776892_)
                  (if (gx#stx-pair? _g68776892_)
                      (let ((_e68796894_ (gx#stx-e _g68776892_)))
                        (let ((_hd68806897_ (##car _e68796894_))
                              (_tl68816899_ (##cdr _e68796894_)))
                          (if (gx#stx-pair? _tl68816899_)
                              (let ((_e68826902_ (gx#stx-e _tl68816899_)))
                                (let ((_hd68836905_ (##car _e68826902_))
                                      (_tl68846907_ (##cdr _e68826902_)))
                                  (if (gx#stx-null? _tl68846907_)
                                      ((lambda (_L6910_)
                                         (cons 'quote
                                               (cons (_generate16874_
                                                      (gx#stx-e _L6910_))
                                                     '())))
                                       _hd68836905_)
                                      (_g68766889_ _g68776892_))))
                              (_g68766889_ _g68776892_))))
                      (_g68766889_ _g68776892_)))))
          (_g68756923_ _stx6872_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6565_)
      (let* ((_g65676581_
              (lambda (_g65686578_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65686578_)))
             (_g65666869_
              (lambda (_g65686584_)
                (if (gx#stx-pair? _g65686584_)
                    (let ((_e65716586_ (gx#stx-e _g65686584_)))
                      (let ((_hd65726589_ (##car _e65716586_))
                            (_tl65736591_ (##cdr _e65716586_)))
                        (if (gx#stx-pair? _tl65736591_)
                            (let ((_e65746594_ (gx#stx-e _tl65736591_)))
                              (let ((_hd65756597_ (##car _e65746594_))
                                    (_tl65766599_ (##cdr _e65746594_)))
                                ((lambda (_L6602_ _L6603_)
                                   (let ((_rator6616_ (gxc#compile-e _L6603_))
                                         (_rands6617_
                                          (map gxc#compile-e _L6602_)))
                                     (let* ((_g66206672_
                                             (lambda (_g66216669_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g66216669_)))
                                            (_g66196679_
                                             (lambda (_g66216675_)
                                               ((lambda ()
                                                  (cons _rator6616_
                                                        _rands6617_)))))
                                            (_g66186866_
                                             (lambda (_g66216682_)
                                               (if (gx#stx-pair? _g66216682_)
                                                   (let ((_e66266684_
                                                          (gx#stx-e
                                                           _g66216682_)))
                                                     (let ((_hd66276687_
                                                            (##car _e66266684_))
                                                           (_tl66286689_
                                                            (##cdr _e66266684_)))
                                                       (if (gx#identifier?
                                                            _hd66276687_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd66276687_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl66286689_)
                           (let ((_e66296692_ (gx#stx-e _tl66286689_)))
                             (let ((_hd66306695_ (##car _e66296692_))
                                   (_tl66316697_ (##cdr _e66296692_)))
                               (if (gx#stx-pair? _hd66306695_)
                                   (let ((_e66326700_ (gx#stx-e _hd66306695_)))
                                     (let ((_hd66336703_ (##car _e66326700_))
                                           (_tl66346705_ (##cdr _e66326700_)))
                                       (if (gx#stx-pair? _hd66336703_)
                                           (let ((_e66356708_
                                                  (gx#stx-e _hd66336703_)))
                                             (let ((_hd66366711_
                                                    (##car _e66356708_))
                                                   (_tl66376713_
                                                    (##cdr _e66356708_)))
                                               (if (gx#stx-pair? _tl66376713_)
                                                   (let ((_e66386716_
                                                          (gx#stx-e
                                                           _tl66376713_)))
                                                     (let ((_hd66396719_
                                                            (##car _e66386716_))
                                                           (_tl66406721_
                                                            (##cdr _e66386716_)))
                                                       (if (gx#stx-pair?
                                                            _hd66396719_)
                                                           (let ((_e66416724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd66396719_)))
                     (let ((_hd66426727_ (##car _e66416724_))
                           (_tl66436729_ (##cdr _e66416724_)))
                       (if (gx#identifier? _hd66426727_)
                           (if (gx#stx-eq? 'lambda _hd66426727_)
                               (if (gx#stx-pair? _tl66436729_)
                                   (let ((_e66446732_ (gx#stx-e _tl66436729_)))
                                     (let ((_hd66456735_ (##car _e66446732_))
                                           (_tl66466737_ (##cdr _e66446732_)))
                                       (if (gx#stx-pair/null? _hd66456735_)
                                           (if (fx>= (gx#stx-length
                                                      _hd66456735_)
                                                     '0)
                                               (let ((_g12146_
                                                      (gx#syntax-split-splice
                                                       _hd66456735_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12147_
                                                          (values-count
                                                           _g12146_)))
                                                     (if (not (fx= _g12147_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12147_)))
                                                   (let ((_target66476740_
                                                          (values-ref
                                                           _g12146_
                                                           0))
                                                         (_tl66496742_
                                                          (values-ref
                                                           _g12146_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl66496742_)
                                                         (letrec ((_loop66506745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd66486748_ _arg66546750_)
                             (if (gx#stx-pair? _hd66486748_)
                                 (let ((_e66516753_ (gx#stx-e _hd66486748_)))
                                   (let ((_lp-hd66526756_ (##car _e66516753_))
                                         (_lp-tl66536758_ (##cdr _e66516753_)))
                                     (_loop66506745_
                                      _lp-tl66536758_
                                      (cons _lp-hd66526756_ _arg66546750_))))
                                 (let ((_arg66556761_ (reverse _arg66546750_)))
                                   (if (gx#stx-pair/null? _tl66466737_)
                                       (if (fx>= (gx#stx-length _tl66466737_)
                                                 '0)
                                           (let ((_g12148_
                                                  (gx#syntax-split-splice
                                                   _tl66466737_
                                                   '0)))
                                             (begin
                                               (let ((_g12149_
                                                      (values-count _g12148_)))
                                                 (if (not (fx= _g12149_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12149_)))
                                               (let ((_target66566764_
                                                      (values-ref _g12148_ 0))
                                                     (_tl66586766_
                                                      (values-ref _g12148_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl66586766_)
                                                     (letrec ((_loop66596769_
                                                               (lambda (_hd66576772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body66636774_)
                         (if (gx#stx-pair? _hd66576772_)
                             (let ((_e66606777_ (gx#stx-e _hd66576772_)))
                               (let ((_lp-hd66616780_ (##car _e66606777_))
                                     (_lp-tl66626782_ (##cdr _e66606777_)))
                                 (_loop66596769_
                                  _lp-tl66626782_
                                  (cons _lp-hd66616780_ _body66636774_))))
                             (let ((_body66646785_ (reverse _body66636774_)))
                               (if (gx#stx-null? _tl66406721_)
                                   (if (gx#stx-null? _tl66346705_)
                                       (if (gx#stx-pair? _tl66316697_)
                                           (let ((_e66656788_
                                                  (gx#stx-e _tl66316697_)))
                                             (let ((_hd66666791_
                                                    (##car _e66656788_))
                                                   (_tl66676793_
                                                    (##cdr _e66656788_)))
                                               (if (gx#stx-null? _tl66676793_)
                                                   ((lambda (_L6796_
                                                             _L6797_
                                                             _L6798_
                                                             _L6799_)
                                                      (if (eq? _L6799_ _L6796_)
                                                          (if (fx= (length _rands6617_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g68356838_ _g68366840_)
                                               (cons _g68356838_ _g68366840_))
                                             '()
                                             _L6798_))))
                      (let* ((_id6843_ _L6799_)
                             (_args6852_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g68446847_ _g68456849_)
                                          (cons _g68446847_ _g68456849_))
                                        '()
                                        _L6798_)))
                             (_body6861_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g68536856_ _g68546858_)
                                          (cons _g68536856_ _g68546858_))
                                        '()
                                        _L6797_)))
                             (_init6863_ (map list _args6852_ _rands6617_)))
                        (cons 'let
                              (cons _id6843_ (cons _init6863_ _body6861_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6565_))
                  (_g66196679_ _g66216682_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd66666791_
                                                    _body66646785_
                                                    _arg66556761_
                                                    _hd66366711_)
                                                   (_g66196679_ _g66216682_))))
                                           (_g66196679_ _g66216682_))
                                       (_g66196679_ _g66216682_))
                                   (_g66196679_ _g66216682_)))))))
               (_loop66596769_ _target66566764_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66196679_
                                                      _g66216682_)))))
                                           (_g66196679_ _g66216682_))
                                       (_g66196679_ _g66216682_)))))))
                   (_loop66506745_ _target66476740_ '()))
                 (_g66196679_ _g66216682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66196679_ _g66216682_))
                                           (_g66196679_ _g66216682_))))
                                   (_g66196679_ _g66216682_))
                               (_g66196679_ _g66216682_))
                           (_g66196679_ _g66216682_))))
                   (_g66196679_ _g66216682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g66196679_ _g66216682_))))
                                           (_g66196679_ _g66216682_))))
                                   (_g66196679_ _g66216682_))))
                           (_g66196679_ _g66216682_))
                       (_g66196679_ _g66216682_))
                   (_g66196679_ _g66216682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g66196679_
                                                    _g66216682_)))))
                                       (_g66186866_ _rator6616_))))
                                 _tl65766599_
                                 _hd65756597_)))
                            (_g65676581_ _g65686584_))))
                    (_g65676581_ _g65686584_)))))
        (_g65666869_ _stx6565_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6527_)
      (let* ((_g65296539_
              (lambda (_g65306536_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65306536_)))
             (_g65286562_
              (lambda (_g65306542_)
                (if (gx#stx-pair? _g65306542_)
                    (let ((_e65326544_ (gx#stx-e _g65306542_)))
                      (let ((_hd65336547_ (##car _e65326544_))
                            (_tl65346549_ (##cdr _e65326544_)))
                        ((lambda (_L6552_)
                           (cons 'if (map gxc#compile-e _L6552_)))
                         _tl65346549_)))
                    (_g65296539_ _g65306542_)))))
        (_g65286562_ _stx6527_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6476_)
      (let* ((_g64786491_
              (lambda (_g64796488_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64796488_)))
             (_g64776524_
              (lambda (_g64796494_)
                (if (gx#stx-pair? _g64796494_)
                    (let ((_e64816496_ (gx#stx-e _g64796494_)))
                      (let ((_hd64826499_ (##car _e64816496_))
                            (_tl64836501_ (##cdr _e64816496_)))
                        (if (gx#stx-pair? _tl64836501_)
                            (let ((_e64846504_ (gx#stx-e _tl64836501_)))
                              (let ((_hd64856507_ (##car _e64846504_))
                                    (_tl64866509_ (##cdr _e64846504_)))
                                (if (gx#stx-null? _tl64866509_)
                                    ((lambda (_L6512_)
                                       (gxc#generate-runtime-binding-id
                                        _L6512_))
                                     _hd64856507_)
                                    (_g64786491_ _g64796494_))))
                            (_g64786491_ _g64796494_))))
                    (_g64786491_ _g64796494_)))))
        (_g64776524_ _stx6476_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6409_)
      (let* ((_g64116428_
              (lambda (_g64126425_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64126425_)))
             (_g64106473_
              (lambda (_g64126431_)
                (if (gx#stx-pair? _g64126431_)
                    (let ((_e64156433_ (gx#stx-e _g64126431_)))
                      (let ((_hd64166436_ (##car _e64156433_))
                            (_tl64176438_ (##cdr _e64156433_)))
                        (if (gx#stx-pair? _tl64176438_)
                            (let ((_e64186441_ (gx#stx-e _tl64176438_)))
                              (let ((_hd64196444_ (##car _e64186441_))
                                    (_tl64206446_ (##cdr _e64186441_)))
                                (if (gx#stx-pair? _tl64206446_)
                                    (let ((_e64216449_
                                           (gx#stx-e _tl64206446_)))
                                      (let ((_hd64226452_ (##car _e64216449_))
                                            (_tl64236454_ (##cdr _e64216449_)))
                                        (if (gx#stx-null? _tl64236454_)
                                            ((lambda (_L6457_ _L6458_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6458_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6457_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd64226452_
                                             _hd64196444_)
                                            (_g64116428_ _g64126431_))))
                                    (_g64116428_ _g64126431_))))
                            (_g64116428_ _g64126431_))))
                    (_g64116428_ _g64126431_)))))
        (_g64106473_ _stx6409_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6342_)
      (let* ((_g63446361_
              (lambda (_g63456358_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63456358_)))
             (_g63436406_
              (lambda (_g63456364_)
                (if (gx#stx-pair? _g63456364_)
                    (let ((_e63486366_ (gx#stx-e _g63456364_)))
                      (let ((_hd63496369_ (##car _e63486366_))
                            (_tl63506371_ (##cdr _e63486366_)))
                        (if (gx#stx-pair? _tl63506371_)
                            (let ((_e63516374_ (gx#stx-e _tl63506371_)))
                              (let ((_hd63526377_ (##car _e63516374_))
                                    (_tl63536379_ (##cdr _e63516374_)))
                                (if (gx#stx-pair? _tl63536379_)
                                    (let ((_e63546382_
                                           (gx#stx-e _tl63536379_)))
                                      (let ((_hd63556385_ (##car _e63546382_))
                                            (_tl63566387_ (##cdr _e63546382_)))
                                        (if (gx#stx-null? _tl63566387_)
                                            ((lambda (_L6390_ _L6391_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6390_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6391_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63556385_
                                             _hd63526377_)
                                            (_g63446361_ _g63456364_))))
                                    (_g63446361_ _g63456364_))))
                            (_g63446361_ _g63456364_))))
                    (_g63446361_ _g63456364_)))))
        (_g63436406_ _stx6342_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6275_)
      (let* ((_g62776294_
              (lambda (_g62786291_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62786291_)))
             (_g62766339_
              (lambda (_g62786297_)
                (if (gx#stx-pair? _g62786297_)
                    (let ((_e62816299_ (gx#stx-e _g62786297_)))
                      (let ((_hd62826302_ (##car _e62816299_))
                            (_tl62836304_ (##cdr _e62816299_)))
                        (if (gx#stx-pair? _tl62836304_)
                            (let ((_e62846307_ (gx#stx-e _tl62836304_)))
                              (let ((_hd62856310_ (##car _e62846307_))
                                    (_tl62866312_ (##cdr _e62846307_)))
                                (if (gx#stx-pair? _tl62866312_)
                                    (let ((_e62876315_
                                           (gx#stx-e _tl62866312_)))
                                      (let ((_hd62886318_ (##car _e62876315_))
                                            (_tl62896320_ (##cdr _e62876315_)))
                                        (if (gx#stx-null? _tl62896320_)
                                            ((lambda (_L6323_ _L6324_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6323_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6324_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62886318_
                                             _hd62856310_)
                                            (_g62776294_ _g62786297_))))
                                    (_g62776294_ _g62786297_))))
                            (_g62776294_ _g62786297_))))
                    (_g62776294_ _g62786297_)))))
        (_g62766339_ _stx6275_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6192_)
      (let* ((_g61946215_
              (lambda (_g61956212_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61956212_)))
             (_g61936272_
              (lambda (_g61956218_)
                (if (gx#stx-pair? _g61956218_)
                    (let ((_e61996220_ (gx#stx-e _g61956218_)))
                      (let ((_hd62006223_ (##car _e61996220_))
                            (_tl62016225_ (##cdr _e61996220_)))
                        (if (gx#stx-pair? _tl62016225_)
                            (let ((_e62026228_ (gx#stx-e _tl62016225_)))
                              (let ((_hd62036231_ (##car _e62026228_))
                                    (_tl62046233_ (##cdr _e62026228_)))
                                (if (gx#stx-pair? _tl62046233_)
                                    (let ((_e62056236_
                                           (gx#stx-e _tl62046233_)))
                                      (let ((_hd62066239_ (##car _e62056236_))
                                            (_tl62076241_ (##cdr _e62056236_)))
                                        (if (gx#stx-pair? _tl62076241_)
                                            (let ((_e62086244_
                                                   (gx#stx-e _tl62076241_)))
                                              (let ((_hd62096247_
                                                     (##car _e62086244_))
                                                    (_tl62106249_
                                                     (##cdr _e62086244_)))
                                                (if (gx#stx-null? _tl62106249_)
                                                    ((lambda (_L6252_
                                                              _L6253_
                                                              _L6254_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6252_)
                           (cons (gxc#compile-e _L6253_)
                                 (cons (gxc#compile-e _L6254_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd62096247_
                                                     _hd62066239_
                                                     _hd62036231_)
                                                    (_g61946215_
                                                     _g61956218_))))
                                            (_g61946215_ _g61956218_))))
                                    (_g61946215_ _g61956218_))))
                            (_g61946215_ _g61956218_))))
                    (_g61946215_ _g61956218_)))))
        (_g61936272_ _stx6192_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6093_)
      (let* ((_g60956120_
              (lambda (_g60966117_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60966117_)))
             (_g60946189_
              (lambda (_g60966123_)
                (if (gx#stx-pair? _g60966123_)
                    (let ((_e61016125_ (gx#stx-e _g60966123_)))
                      (let ((_hd61026128_ (##car _e61016125_))
                            (_tl61036130_ (##cdr _e61016125_)))
                        (if (gx#stx-pair? _tl61036130_)
                            (let ((_e61046133_ (gx#stx-e _tl61036130_)))
                              (let ((_hd61056136_ (##car _e61046133_))
                                    (_tl61066138_ (##cdr _e61046133_)))
                                (if (gx#stx-pair? _tl61066138_)
                                    (let ((_e61076141_
                                           (gx#stx-e _tl61066138_)))
                                      (let ((_hd61086144_ (##car _e61076141_))
                                            (_tl61096146_ (##cdr _e61076141_)))
                                        (if (gx#stx-pair? _tl61096146_)
                                            (let ((_e61106149_
                                                   (gx#stx-e _tl61096146_)))
                                              (let ((_hd61116152_
                                                     (##car _e61106149_))
                                                    (_tl61126154_
                                                     (##cdr _e61106149_)))
                                                (if (gx#stx-pair? _tl61126154_)
                                                    (let ((_e61136157_
                                                           (gx#stx-e
                                                            _tl61126154_)))
                                                      (let ((_hd61146160_
                                                             (##car _e61136157_))
                                                            (_tl61156162_
                                                             (##cdr _e61136157_)))
                                                        (if (gx#stx-null?
                                                             _tl61156162_)
                                                            ((lambda (_L6165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6166_
                              _L6167_
                              _L6168_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6166_)
                                   (cons (gxc#compile-e _L6165_)
                                         (cons (gxc#compile-e _L6167_)
                                               (cons (gxc#compile-e _L6168_)
                                                     (cons ''#f '())))))))
                     _hd61146160_
                     _hd61116152_
                     _hd61086144_
                     _hd61056136_)
                    (_g60956120_ _g60966123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60956120_
                                                     _g60966123_))))
                                            (_g60956120_ _g60966123_))))
                                    (_g60956120_ _g60966123_))))
                            (_g60956120_ _g60966123_))))
                    (_g60956120_ _g60966123_)))))
        (_g60946189_ _stx6093_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6010_)
      (let* ((_g60126033_
              (lambda (_g60136030_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60136030_)))
             (_g60116090_
              (lambda (_g60136036_)
                (if (gx#stx-pair? _g60136036_)
                    (let ((_e60176038_ (gx#stx-e _g60136036_)))
                      (let ((_hd60186041_ (##car _e60176038_))
                            (_tl60196043_ (##cdr _e60176038_)))
                        (if (gx#stx-pair? _tl60196043_)
                            (let ((_e60206046_ (gx#stx-e _tl60196043_)))
                              (let ((_hd60216049_ (##car _e60206046_))
                                    (_tl60226051_ (##cdr _e60206046_)))
                                (if (gx#stx-pair? _tl60226051_)
                                    (let ((_e60236054_
                                           (gx#stx-e _tl60226051_)))
                                      (let ((_hd60246057_ (##car _e60236054_))
                                            (_tl60256059_ (##cdr _e60236054_)))
                                        (if (gx#stx-pair? _tl60256059_)
                                            (let ((_e60266062_
                                                   (gx#stx-e _tl60256059_)))
                                              (let ((_hd60276065_
                                                     (##car _e60266062_))
                                                    (_tl60286067_
                                                     (##cdr _e60266062_)))
                                                (if (gx#stx-null? _tl60286067_)
                                                    ((lambda (_L6070_
                                                              _L6071_
                                                              _L6072_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6070_)
                           (cons (gxc#compile-e _L6071_)
                                 (cons (gxc#compile-e _L6072_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd60276065_
                                                     _hd60246057_
                                                     _hd60216049_)
                                                    (_g60126033_
                                                     _g60136036_))))
                                            (_g60126033_ _g60136036_))))
                                    (_g60126033_ _g60136036_))))
                            (_g60126033_ _g60136036_))))
                    (_g60126033_ _g60136036_)))))
        (_g60116090_ _stx6010_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5911_)
      (let* ((_g59135938_
              (lambda (_g59145935_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59145935_)))
             (_g59126007_
              (lambda (_g59145941_)
                (if (gx#stx-pair? _g59145941_)
                    (let ((_e59195943_ (gx#stx-e _g59145941_)))
                      (let ((_hd59205946_ (##car _e59195943_))
                            (_tl59215948_ (##cdr _e59195943_)))
                        (if (gx#stx-pair? _tl59215948_)
                            (let ((_e59225951_ (gx#stx-e _tl59215948_)))
                              (let ((_hd59235954_ (##car _e59225951_))
                                    (_tl59245956_ (##cdr _e59225951_)))
                                (if (gx#stx-pair? _tl59245956_)
                                    (let ((_e59255959_
                                           (gx#stx-e _tl59245956_)))
                                      (let ((_hd59265962_ (##car _e59255959_))
                                            (_tl59275964_ (##cdr _e59255959_)))
                                        (if (gx#stx-pair? _tl59275964_)
                                            (let ((_e59285967_
                                                   (gx#stx-e _tl59275964_)))
                                              (let ((_hd59295970_
                                                     (##car _e59285967_))
                                                    (_tl59305972_
                                                     (##cdr _e59285967_)))
                                                (if (gx#stx-pair? _tl59305972_)
                                                    (let ((_e59315975_
                                                           (gx#stx-e
                                                            _tl59305972_)))
                                                      (let ((_hd59325978_
                                                             (##car _e59315975_))
                                                            (_tl59335980_
                                                             (##cdr _e59315975_)))
                                                        (if (gx#stx-null?
                                                             _tl59335980_)
                                                            ((lambda (_L5983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5984_
                              _L5985_
                              _L5986_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5984_)
                                   (cons (gxc#compile-e _L5983_)
                                         (cons (gxc#compile-e _L5985_)
                                               (cons (gxc#compile-e _L5986_)
                                                     (cons ''#f '())))))))
                     _hd59325978_
                     _hd59295970_
                     _hd59265962_
                     _hd59235954_)
                    (_g59135938_ _g59145941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g59135938_
                                                     _g59145941_))))
                                            (_g59135938_ _g59145941_))))
                                    (_g59135938_ _g59145941_))))
                            (_g59135938_ _g59145941_))))
                    (_g59135938_ _g59145941_)))))
        (_g59126007_ _stx5911_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5828_)
      (let* ((_g58305851_
              (lambda (_g58315848_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58315848_)))
             (_g58295908_
              (lambda (_g58315854_)
                (if (gx#stx-pair? _g58315854_)
                    (let ((_e58355856_ (gx#stx-e _g58315854_)))
                      (let ((_hd58365859_ (##car _e58355856_))
                            (_tl58375861_ (##cdr _e58355856_)))
                        (if (gx#stx-pair? _tl58375861_)
                            (let ((_e58385864_ (gx#stx-e _tl58375861_)))
                              (let ((_hd58395867_ (##car _e58385864_))
                                    (_tl58405869_ (##cdr _e58385864_)))
                                (if (gx#stx-pair? _tl58405869_)
                                    (let ((_e58415872_
                                           (gx#stx-e _tl58405869_)))
                                      (let ((_hd58425875_ (##car _e58415872_))
                                            (_tl58435877_ (##cdr _e58415872_)))
                                        (if (gx#stx-pair? _tl58435877_)
                                            (let ((_e58445880_
                                                   (gx#stx-e _tl58435877_)))
                                              (let ((_hd58455883_
                                                     (##car _e58445880_))
                                                    (_tl58465885_
                                                     (##cdr _e58445880_)))
                                                (if (gx#stx-null? _tl58465885_)
                                                    ((lambda (_L5888_
                                                              _L5889_
                                                              _L5890_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5888_)
                           (cons (gxc#compile-e _L5889_)
                                 (cons (gxc#compile-e _L5890_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd58455883_
                                                     _hd58425875_
                                                     _hd58395867_)
                                                    (_g58305851_
                                                     _g58315854_))))
                                            (_g58305851_ _g58315854_))))
                                    (_g58305851_ _g58315854_))))
                            (_g58305851_ _g58315854_))))
                    (_g58305851_ _g58315854_)))))
        (_g58295908_ _stx5828_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5729_)
      (let* ((_g57315756_
              (lambda (_g57325753_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57325753_)))
             (_g57305825_
              (lambda (_g57325759_)
                (if (gx#stx-pair? _g57325759_)
                    (let ((_e57375761_ (gx#stx-e _g57325759_)))
                      (let ((_hd57385764_ (##car _e57375761_))
                            (_tl57395766_ (##cdr _e57375761_)))
                        (if (gx#stx-pair? _tl57395766_)
                            (let ((_e57405769_ (gx#stx-e _tl57395766_)))
                              (let ((_hd57415772_ (##car _e57405769_))
                                    (_tl57425774_ (##cdr _e57405769_)))
                                (if (gx#stx-pair? _tl57425774_)
                                    (let ((_e57435777_
                                           (gx#stx-e _tl57425774_)))
                                      (let ((_hd57445780_ (##car _e57435777_))
                                            (_tl57455782_ (##cdr _e57435777_)))
                                        (if (gx#stx-pair? _tl57455782_)
                                            (let ((_e57465785_
                                                   (gx#stx-e _tl57455782_)))
                                              (let ((_hd57475788_
                                                     (##car _e57465785_))
                                                    (_tl57485790_
                                                     (##cdr _e57465785_)))
                                                (if (gx#stx-pair? _tl57485790_)
                                                    (let ((_e57495793_
                                                           (gx#stx-e
                                                            _tl57485790_)))
                                                      (let ((_hd57505796_
                                                             (##car _e57495793_))
                                                            (_tl57515798_
                                                             (##cdr _e57495793_)))
                                                        (if (gx#stx-null?
                                                             _tl57515798_)
                                                            ((lambda (_L5801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5802_
                              _L5803_
                              _L5804_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5802_)
                                   (cons (gxc#compile-e _L5801_)
                                         (cons (gxc#compile-e _L5803_)
                                               (cons (gxc#compile-e _L5804_)
                                                     (cons ''#f '())))))))
                     _hd57505796_
                     _hd57475788_
                     _hd57445780_
                     _hd57415772_)
                    (_g57315756_ _g57325759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57315756_
                                                     _g57325759_))))
                                            (_g57315756_ _g57325759_))))
                                    (_g57315756_ _g57325759_))))
                            (_g57315756_ _g57325759_))))
                    (_g57315756_ _g57325759_)))))
        (_g57305825_ _stx5729_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5583_)
      (letrec ((_import-set-template5585_
                (lambda (_in5681_ _phi5682_)
                  (let ((_iphi5684_
                         (fx+ _phi5682_
                              (##direct-structure-ref
                               _in5681_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports5685_
                         (##structure-ref
                          (##direct-structure-ref
                           _in5681_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp5687_ ((_rest5689_ _imports5685_) (_r5690_ '()))
                      (let* ((_rest56915699_ _rest5689_)
                             (_E56945703_
                              (lambda ()
                                (error '"No clause matching" _rest56915699_)))
                             (_else56935707_ (lambda () _r5690_))
                             (_K56955717_
                              (lambda (_rest5710_ _in5711_)
                                (if (##structure-instance-of?
                                     _in5711_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi5684_)
                                        (_lp5687_
                                         _rest5710_
                                         (cons _in5711_ _r5690_))
                                        (_lp5687_ _rest5710_ _r5690_))
                                    (if (##structure-direct-instance-of?
                                         _in5711_
                                         'gx#module-import::t)
                                        (let ((_iphi5713_
                                               (fx+ _phi5682_
                                                    (##direct-structure-ref
                                                     _in5711_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi5713_)
                                              (_lp5687_
                                               _rest5710_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in5711_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r5690_))
                                              (_lp5687_ _rest5710_ _r5690_)))
                                        (if (##structure-direct-instance-of?
                                             _in5711_
                                             'gx#import-set::t)
                                            (let ((_xphi5715_
                                                   (fx+ _iphi5684_
                                                        (##direct-structure-ref
                                                         _in5711_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi5715_)
                                                  (_lp5687_
                                                   _rest5710_
                                                   (cons (##direct-structure-ref
                                                          _in5711_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r5690_))
                                                  (if (fxpositive? _xphi5715_)
                                                      (_lp5687_
                                                       _rest5710_
                                                       (foldl1 cons
                                                               _r5690_
                                                               (_import-set-template5585_
                                                                _in5711_
                                                                _iphi5684_)))
                                                      (_lp5687_
                                                       _rest5710_
                                                       _r5690_))))
                                            (_lp5687_ _rest5710_ _r5690_)))))))
                        (if (##pair? _rest56915699_)
                            (let ((_hd56965720_ (##car _rest56915699_))
                                  (_tl56975722_ (##cdr _rest56915699_)))
                              (let* ((_in5725_ _hd56965720_)
                                     (_rest5727_ _tl56975722_))
                                (_K56955717_ _rest5727_ _in5725_)))
                            (_else56935707_))))))))
        (let* ((_g55875597_
                (lambda (_g55885594_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g55885594_)))
               (_g55865678_
                (lambda (_g55885600_)
                  (if (gx#stx-pair? _g55885600_)
                      (let ((_e55905602_ (gx#stx-e _g55885600_)))
                        (let ((_hd55915605_ (##car _e55905602_))
                              (_tl55925607_ (##cdr _e55905602_)))
                          ((lambda (_L5610_)
                             (let ((_ht5621_ (make-hash-table-eq)))
                               (let _lp5623_ ((_rest5625_ _L5610_)
                                              (_loads5626_ '()))
                                 (letrec ((_K5628_ (lambda (_ctx5671_
                                                            _rest5672_)
                                                     (let ((_id5674_
                                                            (##structure-ref
                                                             _ctx5671_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht5621_
                                                            _id5674_
                                                            '#f)
                                                           (_lp5623_
                                                            _rest5672_
                                                            _loads5626_)
                                                           (let ((_rt5676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append (symbol->string _id5674_) '"__rt")))
                     (begin
                       (table-set! _ht5621_ _id5674_ _rt5676_)
                       (_lp5623_ _rest5672_ (cons _rt5676_ _loads5626_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest56295637_ _rest5625_)
                                          (_E56325641_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest56295637_)))
                                          (_else56315649_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g56445646_)
                                                          (list 'load-module
                                                                _g56445646_))
                                                        (reverse _loads5626_)))))
                                          (_K56335659_
                                           (lambda (_rest5652_ _in5653_)
                                             (if (##structure-instance-of?
                                                  _in5653_
                                                  'gx#module-context::t)
                                                 (_K5628_ _in5653_ _rest5652_)
                                                 (if (##structure-direct-instance-of?
                                                      _in5653_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in5653_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K5628_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in5653_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest5652_)
                 (_lp5623_ _rest5652_ _loads5626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in5653_
                                                          'gx#import-set::t)
                                                         (let ((_phi5655_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in5653_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi5655_)
                       (_K5628_ (##direct-structure-ref
                                 _in5653_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest5652_)
                       (if (fxpositive? _phi5655_)
                           (let ((_deps5657_
                                  (_import-set-template5585_ _in5653_ '0)))
                             (_lp5623_
                              (foldl1 cons _rest5652_ _deps5657_)
                              _loads5626_))
                           (_lp5623_ _rest5652_ _loads5626_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx5583_
                  _in5653_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest56295637_)
                                         (let ((_hd56345662_
                                                (##car _rest56295637_))
                                               (_tl56355664_
                                                (##cdr _rest56295637_)))
                                           (let* ((_in5667_ _hd56345662_)
                                                  (_rest5669_ _tl56355664_))
                                             (_K56335659_
                                              _rest5669_
                                              _in5667_)))
                                         (_else56315649_)))))))
                           _tl55925607_)))
                      (_g55875597_ _g55885600_)))))
          (_g55865678_ _stx5583_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx5406_)
      (letrec ((_add-lift!5408_
                (lambda (_expr5581_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5581_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5409_
                (lambda (_stxq5576_)
                  (let ((_gid5578_
                         (gxc#generate-runtime-temporary__opt-lambda10937 '#t))
                        (_qid5579_
                         (gxc#generate-runtime-identifier _stxq5576_)))
                    (begin
                      (_add-lift!5408_
                       (cons 'define
                             (cons _gid5578_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5579_
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
                      _gid5578_))))
               (_generate-serialized5410_
                (lambda (_stxq5566_ _marks5567_)
                  (let* ((_mark-refs5569_
                          (map _generate-mark5411_ _marks5567_))
                         (_gid5571_
                          (gxc#generate-runtime-temporary__opt-lambda10937
                           '#t))
                         (_qid5573_
                          (gxc#generate-runtime-identifier _stxq5566_)))
                    (begin
                      (_add-lift!5408_
                       (cons 'define
                             (cons _gid5571_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5569_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5571_))))
               (_generate-mark5411_
                (lambda (_mark5552_)
                  (let ((_$e5554_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5552_
                          '#f)))
                    (if _$e5554_
                        (values _$e5554_)
                        (let* ((_gid5557_
                                (gxc#generate-runtime-temporary__opt-lambda10937
                                 '#t))
                               (_repr5559_ (_serialize-mark5412_ _mark5552_))
                               (_ctx5561_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5552_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5563_
                                (if (eq? _ctx5561_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5413_
                                                             _ctx5561_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5552_
                             _gid5557_)
                            (_add-lift!5408_
                             (cons 'define
                                   (cons _gid5557_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5559_ '()))
                   (cons _ctx-ref5563_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5557_))))))
               (_serialize-mark5412_
                (lambda (_mark5499_)
                  (letrec ((_quote-e5501_
                            (lambda (_sym5550_)
                              (if (interned-symbol? _sym5550_)
                                  _sym5550_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5550_)))))
                    (let* ((_mark55025511_ _mark5499_)
                           (_E55045515_
                            (lambda ()
                              (error '"No clause matching" _mark55025511_)))
                           (_K55055527_
                            (lambda (_trace5518_
                                     _phi5519_
                                     _ctx5520_
                                     _subst5521_)
                              (let ((_subs5523_
                                     (if _subst5521_
                                         (table->list _subst5521_)
                                         '())))
                                (cons _phi5519_
                                      (map (lambda (_pair5525_)
                                             (cons (_quote-e5501_
                                                    (car _pair5525_))
                                                   (_quote-e5501_
                                                    (cdr _pair5525_))))
                                           _subs5523_))))))
                      (if (##structure-instance-of?
                           _mark55025511_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e55065530_ (##vector-ref _mark55025511_ '1))
                                 (_subst5533_ _e55065530_)
                                 (_e55075535_ (##vector-ref _mark55025511_ '2))
                                 (_ctx5538_ _e55075535_)
                                 (_e55085540_ (##vector-ref _mark55025511_ '3))
                                 (_phi5543_ _e55085540_)
                                 (_e55095545_ (##vector-ref _mark55025511_ '4))
                                 (_trace5548_ _e55095545_))
                            (_K55055527_
                             _trace5548_
                             _phi5543_
                             _ctx5538_
                             _subst5533_))
                          (_E55045515_))))))
               (_context-ref5413_
                (lambda (_ctx5486_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5486_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5488_
                             (_context-ref-nested5415_ _ctx5486_))
                            (_ctx-origin5489_
                             (_context-ref-origin5414_ _ctx5486_))
                            (_origin5490_
                             (_context-ref-origin5414_
                              (gx#current-expander-context))))
                        (if (eq? _origin5490_ _ctx-origin5489_)
                            (let ((_ref5492_
                                   (_context-ref-nested5415_
                                    (gx#current-expander-context))))
                              (let _lp5494_ ((_ref5496_ (cdr _ref5492_))
                                             (_ctx-ref5497_
                                              (cdr _ctx-ref5488_)))
                                (if (if (pair? _ref5496_)
                                        (eq? (car _ref5496_)
                                             (car _ctx-ref5497_))
                                        '#f)
                                    (_lp5494_
                                     (cdr _ref5496_)
                                     (cdr _ctx-ref5497_))
                                    (cons '#f _ctx-ref5497_))))
                            _ctx-ref5488_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5486_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5414_
                (lambda (_ctx5478_)
                  (let _lp5480_ ((_ctx5482_ _ctx5478_))
                    (let ((_super5484_
                           (##structure-ref
                            _ctx5482_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5484_
                           'gx#module-context::t)
                          (_lp5480_ _super5484_)
                          _ctx5482_)))))
               (_context-ref-nested5415_
                (lambda (_ctx5469_)
                  (let _lp5471_ ((_ctx5473_ _ctx5469_) (_r5474_ '()))
                    (let ((_super5476_
                           (##structure-ref
                            _ctx5473_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5476_
                           'gx#module-context::t)
                          (_lp5471_
                           _super5476_
                           (cons (car (##structure-ref
                                       _ctx5473_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5474_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5473_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5474_)))))))
        (let* ((_g54175430_
                (lambda (_g54185427_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54185427_)))
               (_g54165466_
                (lambda (_g54185433_)
                  (if (gx#stx-pair? _g54185433_)
                      (let ((_e54205435_ (gx#stx-e _g54185433_)))
                        (let ((_hd54215438_ (##car _e54205435_))
                              (_tl54225440_ (##cdr _e54205435_)))
                          (if (gx#stx-pair? _tl54225440_)
                              (let ((_e54235443_ (gx#stx-e _tl54225440_)))
                                (let ((_hd54245446_ (##car _e54235443_))
                                      (_tl54255448_ (##cdr _e54235443_)))
                                  (if (gx#stx-null? _tl54255448_)
                                      ((lambda (_L5451_)
                                         (if (gx#identifier? _L5451_)
                                             (let ((_marks5464_
                                                    (##direct-structure-ref
                                                     _L5451_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5464_)
                                                   (_generate-simple5409_
                                                    _L5451_)
                                                   (_generate-serialized5410_
                                                    _L5451_
                                                    _marks5464_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5451_)))
                                       _hd54245446_)
                                      (_g54175430_ _g54185433_))))
                              (_g54175430_ _g54185433_))))
                      (_g54175430_ _g54185433_)))))
          (_g54165466_ _stx5406_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5339_)
      (let* ((_g53415358_
              (lambda (_g53425355_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53425355_)))
             (_g53405403_
              (lambda (_g53425361_)
                (if (gx#stx-pair? _g53425361_)
                    (let ((_e53455363_ (gx#stx-e _g53425361_)))
                      (let ((_hd53465366_ (##car _e53455363_))
                            (_tl53475368_ (##cdr _e53455363_)))
                        (if (gx#stx-pair? _tl53475368_)
                            (let ((_e53485371_ (gx#stx-e _tl53475368_)))
                              (let ((_hd53495374_ (##car _e53485371_))
                                    (_tl53505376_ (##cdr _e53485371_)))
                                (if (gx#stx-pair? _tl53505376_)
                                    (let ((_e53515379_
                                           (gx#stx-e _tl53505376_)))
                                      (let ((_hd53525382_ (##car _e53515379_))
                                            (_tl53535384_ (##cdr _e53515379_)))
                                        (if (gx#stx-null? _tl53535384_)
                                            ((lambda (_L5387_ _L5388_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5388_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5387_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd53525382_
                                             _hd53495374_)
                                            (_g53415358_ _g53425361_))))
                                    (_g53415358_ _g53425361_))))
                            (_g53415358_ _g53425361_))))
                    (_g53415358_ _g53425361_)))))
        (_g53405403_ _stx5339_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5288_ _state5289_)
      (let* ((_g52915301_
              (lambda (_g52925298_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52925298_)))
             (_g52905336_
              (lambda (_g52925304_)
                (if (gx#stx-pair? _g52925304_)
                    (let ((_e52945306_ (gx#stx-e _g52925304_)))
                      (let ((_hd52955309_ (##car _e52945306_))
                            (_tl52965311_ (##cdr _e52945306_)))
                        ((lambda (_L5314_)
                           (let* ((_c-body5328_
                                   (map (lambda (_g53235325_)
                                          (gxc#compile-e
                                           _g53235325_
                                           _state5289_))
                                        _L5314_))
                                  (_c-body5333_
                                   (filter (lambda (_$obj5330_)
                                             (not (eq? _$obj5330_ '#!void)))
                                           _c-body5328_)))
                             (cons '%#begin _c-body5333_)))
                         _tl52965311_)))
                    (_g52915301_ _g52925304_)))))
        (_g52905336_ _stx5288_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5196_ _state5197_)
      (let* ((_g51995209_
              (lambda (_g52005206_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52005206_)))
             (_g51985285_
              (lambda (_g52005212_)
                (if (gx#stx-pair? _g52005212_)
                    (let ((_e52025214_ (gx#stx-e _g52005212_)))
                      (let ((_hd52035217_ (##car _e52025214_))
                            (_tl52045219_ (##cdr _e52025214_)))
                        ((lambda (_L5222_)
                           (let* ((_phi5232_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5234_
                                   (gxc#meta-state-begin-phi!
                                    _state5197_
                                    _phi5232_))
                                  (_compiled5237_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5222_)
                                       _state5197_))
                                    gx#current-expander-phi
                                    _phi5232_)))
                             (let* ((_g52405250_
                                     (lambda (_g52415247_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52415247_)))
                                    (_g52395282_
                                     (lambda (_g52415253_)
                                       (if (gx#stx-pair? _g52415253_)
                                           (let ((_e52435255_
                                                  (gx#stx-e _g52415253_)))
                                             (let ((_hd52445258_
                                                    (##car _e52435255_))
                                                   (_tl52455260_
                                                    (##cdr _e52435255_)))
                                               (if (gx#identifier?
                                                    _hd52445258_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd52445258_)
                                                       ((lambda (_L5263_)
                                                          (let ((_c-body5280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5277_)
                                   (not (eq? _$obj5277_ '#!void)))
                                 _L5263_)))
                    (if _block5234_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5280_))
                        (if (null? _c-body5280_)
                            '#!void
                            (cons '%#begin-syntax _c-body5280_)))))
                _tl52455260_)
               (_g52405250_ _g52415253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52405250_ _g52415253_))))
                                           (_g52405250_ _g52415253_)))))
                               (_g52395282_ _compiled5237_))))
                         _tl52045219_)))
                    (_g51995209_ _g52005212_)))))
        (_g51985285_ _stx5196_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5127_ _state5128_)
      (begin
        (gxc#meta-state-end-phi! _state5128_)
        (let* ((_g51305144_
                (lambda (_g51315141_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g51315141_)))
               (_g51295193_
                (lambda (_g51315147_)
                  (if (gx#stx-pair? _g51315147_)
                      (let ((_e51345149_ (gx#stx-e _g51315147_)))
                        (let ((_hd51355152_ (##car _e51345149_))
                              (_tl51365154_ (##cdr _e51345149_)))
                          (if (gx#stx-pair? _tl51365154_)
                              (let ((_e51375157_ (gx#stx-e _tl51365154_)))
                                (let ((_hd51385160_ (##car _e51375157_))
                                      (_tl51395162_ (##cdr _e51375157_)))
                                  ((lambda (_L5165_ _L5166_)
                                     (let ((_key5179_
                                            (gx#core-identifier-key _L5166_)))
                                       (begin
                                         (if (interned-symbol? _key5179_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5127_
                                              _L5166_
                                              _key5179_))
                                         (let* ((_ctx5181_
                                                 (gx#syntax-local-e__0
                                                  _L5166_))
                                                (_code5184_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5181_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5128_))
                                                  gx#current-expander-context
                                                  _ctx5181_))
                                                (_rt5186_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5181_
                                                  '#f))
                                                (_loader5188_
                                                 (if _rt5186_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5186_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5190_
                                                 (gx#stx-e _L5166_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5128_)
                                             (cons '%#module
                                                   (cons _modid5190_
                                                         (cons _code5184_
                                                               _loader5188_))))))))
                                   _tl51395162_
                                   _hd51385160_)))
                              (_g51305144_ _g51315147_))))
                      (_g51305144_ _g51315147_)))))
          (_g51295193_ _stx5127_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5117_ _context-chain5118_)
      (let _lp5120_ ((_ctx5122_ _ctx5117_) (_path5123_ '()))
        (let ((_super5125_
               (##structure-ref _ctx5122_ '3 gx#phi-context::t '#f)))
          (if (memq _super5125_ _context-chain5118_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx5122_
                           '7
                           gx#module-context::t
                           '#f))
                     _path5123_)
              (if (##structure-instance-of? _super5125_ 'gx#module-context::t)
                  (_lp5120_
                   _super5125_
                   (cons (car (##structure-ref
                               _ctx5122_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5123_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5122_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5123_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5112_ ((_ctx5114_ (gx#current-expander-context)) (_r5115_ '()))
        (if (##structure-instance-of? _ctx5114_ 'gx#module-context::t)
            (_lp5112_
             (##structure-ref _ctx5114_ '3 gx#phi-context::t '#f)
             (cons _ctx5114_ _r5115_))
            _r5115_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4881_ _state4882_)
      (letrec* ((_context-chain4884_ (gxc#current-context-chain))
                (_make-import-spec4885_
                 (lambda (_in5048_)
                   (let* ((_in50495061_ _in5048_)
                          (_E50515065_
                           (lambda ()
                             (error '"No clause matching" _in50495061_)))
                          (_K50525075_
                           (lambda (_phi5068_
                                    _name5069_
                                    _src-name5070_
                                    _src-phi5071_
                                    _src-key5072_
                                    _src-ctx5073_)
                             (cons _phi5068_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5069_)
                                         (cons _src-phi5071_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5070_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in50495061_
                          (##type-id gx#module-import::t))
                         (let ((_e50535078_ (##vector-ref _in50495061_ '1)))
                           (if (##structure-direct-instance-of?
                                _e50535078_
                                (##type-id gx#module-export::t))
                               (let* ((_e50565081_
                                       (##vector-ref _e50535078_ '1))
                                      (_src-ctx5084_ _e50565081_)
                                      (_e50575086_
                                       (##vector-ref _e50535078_ '2))
                                      (_src-key5089_ _e50575086_)
                                      (_e50585091_
                                       (##vector-ref _e50535078_ '3))
                                      (_src-phi5094_ _e50585091_)
                                      (_e50595096_
                                       (##vector-ref _e50535078_ '4))
                                      (_src-name5099_ _e50595096_)
                                      (_e50545101_
                                       (##vector-ref _in50495061_ '2))
                                      (_name5104_ _e50545101_)
                                      (_e50555106_
                                       (##vector-ref _in50495061_ '3))
                                      (_phi5109_ _e50555106_))
                                 (_K50525075_
                                  _phi5109_
                                  _name5104_
                                  _src-name5099_
                                  _src-phi5094_
                                  _src-key5089_
                                  _src-ctx5084_))
                               (_E50515065_)))
                         (_E50515065_)))))
                (_make-import-path4886_
                 (lambda (_ctx5046_)
                   (gxc#generate-meta-import-path
                    _ctx5046_
                    _context-chain4884_)))
                (_make-import-spec-in4887_
                 (lambda (_ctx5043_ _in5044_)
                   (cons 'spec:
                         (cons (_make-import-path4886_ _ctx5043_)
                               (reverse _in5044_))))))
        (begin
          (gxc#meta-state-end-phi! _state4882_)
          (let* ((_g48894899_
                  (lambda (_g48904896_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g48904896_)))
                 (_g48885040_
                  (lambda (_g48904902_)
                    (if (gx#stx-pair? _g48904902_)
                        (let ((_e48924904_ (gx#stx-e _g48904902_)))
                          (let ((_hd48934907_ (##car _e48924904_))
                                (_tl48944909_ (##cdr _e48924904_)))
                            ((lambda (_L4912_)
                               (let _lp4923_ ((_rest4925_ _L4912_)
                                              (_current-src4926_ '#f)
                                              (_current-in4927_ '())
                                              (_r4928_ '()))
                                 (let* ((_rest49294937_ _rest4925_)
                                        (_E49324941_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest49294937_)))
                                        (_else49314947_
                                         (lambda ()
                                           (let ((_r4945_ (if _current-src4926_
                                                              (cons (_make-import-spec-in4887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4926_
                             _current-in4927_)
                            _r4928_)
                      _r4928_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4945_)))))
                                        (_K49335028_
                                         (lambda (_rest4950_ _in4951_)
                                           (if (##structure-direct-instance-of?
                                                _in4951_
                                                'gx#module-import::t)
                                               (let* ((_in49524959_ _in4951_)
                                                      (_E49544963_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in49524959_)))
                                                      (_K49554968_
                                                       (lambda (_src-ctx4966_)
                                                         (if (eq? _current-src4926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4966_)
                     (_lp4923_
                      _rest4950_
                      _current-src4926_
                      (cons (_make-import-spec4885_ _in4951_) _current-in4927_)
                      _r4928_)
                     (if _current-src4926_
                         (_lp4923_
                          _rest4950_
                          _src-ctx4966_
                          (cons (_make-import-spec4885_ _in4951_) '())
                          (cons (_make-import-spec-in4887_
                                 _current-src4926_
                                 _current-in4927_)
                                _r4928_))
                         (_lp4923_
                          _rest4950_
                          _src-ctx4966_
                          (cons (_make-import-spec4885_ _in4951_) '())
                          _r4928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in49524959_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e49564971_
                                                            (##vector-ref
                                                             _in49524959_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e49564971_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e49574974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e49564971_ '1))
                          (_src-ctx4977_ _e49574974_))
                     (_K49554968_ _src-ctx4977_))
                   (_E49544963_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E49544963_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4951_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4979_
                                                           (##direct-structure-ref
                                                            _in4951_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4981_
                                                           (##direct-structure-ref
                                                            _in4951_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5021_
                                                           (let* ((_g49824991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4886_ _src4981_))
                          (_E49854995_
                           (lambda ()
                             (error '"No clause matching" _g49824991_)))
                          (_try-match49845006_
                           (lambda ()
                             (let* ((_K49865001_
                                     (lambda (_path4999_)
                                       (cons 'in: _path4999_)))
                                    (_path5004_ _g49824991_))
                               (_K49865001_ _path5004_))))
                          (_K49875011_ (lambda (_path5009_) _path5009_)))
                     (if (##pair? _g49824991_)
                         (let ((_hd49885014_ (##car _g49824991_))
                               (_tl49895016_ (##cdr _g49824991_)))
                           (let ((_path5019_ _hd49885014_))
                             (if (##null? _tl49895016_)
                                 (_K49875011_ _path5019_)
                                 (_try-match49845006_))))
                         (_try-match49845006_))))
                  (_r5023_ (if _current-src4926_
                               (cons (_make-import-spec-in4887_
                                      _current-src4926_
                                      _current-in4927_)
                                     _r4928_)
                               _r4928_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4923_
                                                      _rest4950_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4979_)
                                                                _src-in5021_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4979_ (cons _src-in5021_ '()))))
                    _r5023_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4951_
                                                        'gx#module-context::t)
                                                       (let ((_r5026_ (if _current-src4926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4887_
                                         _current-src4926_
                                         _current-in4927_)
                                        _r4928_)
                                  _r4928_)))
                 (_lp4923_
                  _rest4950_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4886_ _in4951_))
                        _r5026_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest49294937_)
                                       (let ((_hd49345031_
                                              (##car _rest49294937_))
                                             (_tl49355033_
                                              (##cdr _rest49294937_)))
                                         (let* ((_in5036_ _hd49345031_)
                                                (_rest5038_ _tl49355033_))
                                           (_K49335028_ _rest5038_ _in5036_)))
                                       (_else49314947_)))))
                             _tl48944909_)))
                        (_g48894899_ _g48904902_)))))
            (_g48885040_ _stx4881_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4691_ _state4692_)
      (letrec* ((_context-chain4694_ (gxc#current-context-chain))
                (_make-import-path4695_
                 (lambda (_ctx4879_)
                   (gxc#generate-meta-import-path
                    _ctx4879_
                    _context-chain4694_))))
        (let* ((_g46974707_
                (lambda (_g46984704_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46984704_)))
               (_g46964876_
                (lambda (_g46984710_)
                  (if (gx#stx-pair? _g46984710_)
                      (let ((_e47004712_ (gx#stx-e _g46984710_)))
                        (let ((_hd47014715_ (##car _e47004712_))
                              (_tl47024717_ (##cdr _e47004712_)))
                          ((lambda (_L4720_)
                             (let _lp4731_ ((_rest4733_ _L4720_) (_r4734_ '()))
                               (let* ((_rest47354743_ _rest4733_)
                                      (_E47384747_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest47354743_)))
                                      (_else47374751_
                                       (lambda ()
                                         (cons '%#export (reverse _r4734_))))
                                      (_K47394864_
                                       (lambda (_rest4754_ _out4755_)
                                         (let* ((_out47564769_ _out4755_)
                                                (_E47594773_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out47564769_)))
                                                (_try-match47584836_
                                                 (lambda ()
                                                   (let ((_K47604823_
                                                          (lambda (_phi4777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4778_)
                    (let* ((_out4818_
                            (if _src4778_
                                (cons 'import:
                                      (cons (let* ((_g47794788_
                                                    (_make-import-path4695_
                                                     _src4778_))
                                                   (_E47824792_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g47794788_)))
                                                   (_try-match47814803_
                                                    (lambda ()
                                                      (let* ((_K47834798_
                                                              (lambda (_path4796_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4796_)))
                     (_path4801_ _g47794788_))
                (_K47834798_ _path4801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K47844808_
                                                    (lambda (_path4806_)
                                                      _path4806_)))
                                              (if (##pair? _g47794788_)
                                                  (let ((_hd47854811_
                                                         (##car _g47794788_))
                                                        (_tl47864813_
                                                         (##cdr _g47794788_)))
                                                    (let ((_path4816_
                                                           _hd47854811_))
                                                      (if (##null? _tl47864813_)
                                                          (_K47844808_
                                                           _path4816_)
                                                          (_try-match47814803_))))
                                                  (_try-match47814803_)))
                                            '()))
                                '#t))
                           (_out4820_
                            (if (fxzero? _phi4777_)
                                _out4818_
                                (cons 'phi:
                                      (cons _phi4777_ (cons _out4818_ '()))))))
                      (_lp4731_ _rest4754_ (cons _out4820_ _r4734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out47564769_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e47614826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out47564769_ '1))
                        (_src4829_ _e47614826_)
                        (_e47624831_ (##vector-ref _out47564769_ '2))
                        (_phi4834_ _e47624831_))
                   (_K47604823_ _phi4834_ _src4829_))
                 (_E47594773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K47634843_
                                                 (lambda (_name4839_
                                                          _phi4840_
                                                          _key4841_)
                                                   (_lp4731_
                                                    _rest4754_
                                                    (cons (cons 'spec:
                                                                (cons _phi4840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4841_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4839_)
                                          '()))))
                  _r4734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out47564769_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e47644846_
                                                       (##vector-ref
                                                        _out47564769_
                                                        '1))
                                                      (_e47654849_
                                                       (##vector-ref
                                                        _out47564769_
                                                        '2))
                                                      (_key4852_ _e47654849_)
                                                      (_e47664854_
                                                       (##vector-ref
                                                        _out47564769_
                                                        '3))
                                                      (_phi4857_ _e47664854_)
                                                      (_e47674859_
                                                       (##vector-ref
                                                        _out47564769_
                                                        '4))
                                                      (_name4862_ _e47674859_))
                                                 (_K47634843_
                                                  _name4862_
                                                  _phi4857_
                                                  _key4852_))
                                               (_try-match47584836_))))))
                                 (if (##pair? _rest47354743_)
                                     (let ((_hd47404867_
                                            (##car _rest47354743_))
                                           (_tl47414869_
                                            (##cdr _rest47354743_)))
                                       (let* ((_out4872_ _hd47404867_)
                                              (_rest4874_ _tl47414869_))
                                         (_K47394864_ _rest4874_ _out4872_)))
                                     (_else47374751_)))))
                           _tl47024717_)))
                      (_g46974707_ _g46984710_)))))
          (_g46964876_ _stx4691_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4652_ _state4653_)
      (begin
        (gxc#meta-state-end-phi! _state4653_)
        (let* ((_g46554665_
                (lambda (_g46564662_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46564662_)))
               (_g46544688_
                (lambda (_g46564668_)
                  (if (gx#stx-pair? _g46564668_)
                      (let ((_e46584670_ (gx#stx-e _g46564668_)))
                        (let ((_hd46594673_ (##car _e46584670_))
                              (_tl46604675_ (##cdr _e46584670_)))
                          ((lambda (_L4678_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4678_)))
                           _tl46604675_)))
                      (_g46554665_ _g46564668_)))))
          (_g46544688_ _stx4652_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4523_ _state4524_)
      (letrec ((_generate14526_
                (lambda (_id4647_ _eid4648_)
                  (let ((_eid4650_ (gx#stx-e _eid4648_)))
                    (begin
                      (if (interned-symbol? _eid4650_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4523_
                           _eid4650_))
                      (cons (gxc#generate-runtime-identifier _id4647_)
                            (cons _eid4650_ '())))))))
        (let* ((_g45284556_
                (lambda (_g45294553_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45294553_)))
               (_g45274644_
                (lambda (_g45294559_)
                  (if (gx#stx-pair? _g45294559_)
                      (let ((_e45324561_ (gx#stx-e _g45294559_)))
                        (let ((_hd45334564_ (##car _e45324561_))
                              (_tl45344566_ (##cdr _e45324561_)))
                          (if (gx#stx-pair/null? _tl45344566_)
                              (if (fx>= (gx#stx-length _tl45344566_) '0)
                                  (let ((_g12150_
                                         (gx#syntax-split-splice
                                          _tl45344566_
                                          '0)))
                                    (begin
                                      (let ((_g12151_ (values-count _g12150_)))
                                        (if (not (fx= _g12151_ 2))
                                            (error "Context expects 2 values"
                                                   _g12151_)))
                                      (let ((_target45354569_
                                             (values-ref _g12150_ 0))
                                            (_tl45374571_
                                             (values-ref _g12150_ 1)))
                                        (if (gx#stx-null? _tl45374571_)
                                            (letrec ((_loop45384574_
                                                      (lambda (_hd45364577_
                                                               _eid45424579_
                                                               _id45434581_)
                                                        (if (gx#stx-pair?
                                                             _hd45364577_)
                                                            (let ((_e45394584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd45364577_)))
                      (let ((_lp-hd45404587_ (##car _e45394584_))
                            (_lp-tl45414589_ (##cdr _e45394584_)))
                        (if (gx#stx-pair? _lp-hd45404587_)
                            (let ((_e45464592_ (gx#stx-e _lp-hd45404587_)))
                              (let ((_hd45474595_ (##car _e45464592_))
                                    (_tl45484597_ (##cdr _e45464592_)))
                                (if (gx#stx-pair? _tl45484597_)
                                    (let ((_e45494600_
                                           (gx#stx-e _tl45484597_)))
                                      (let ((_hd45504603_ (##car _e45494600_))
                                            (_tl45514605_ (##cdr _e45494600_)))
                                        (if (gx#stx-null? _tl45514605_)
                                            (_loop45384574_
                                             _lp-tl45414589_
                                             (cons _hd45504603_ _eid45424579_)
                                             (cons _hd45474595_ _id45434581_))
                                            (_g45284556_ _g45294559_))))
                                    (_g45284556_ _g45294559_))))
                            (_g45284556_ _g45294559_))))
                    (let ((_eid45444608_ (reverse _eid45424579_))
                          (_id45454610_ (reverse _id45434581_)))
                      ((lambda (_L4613_ _L4614_)
                         (cons '%#extern
                               (map _generate14526_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g46294632_ _g46304634_)
                                                (cons _g46294632_ _g46304634_))
                                              '()
                                              _L4614_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g46364639_ _g46374641_)
                                                (cons _g46364639_ _g46374641_))
                                              '()
                                              _L4613_)))))
                       _eid45444608_
                       _id45454610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop45384574_
                                               _target45354569_
                                               '()
                                               '()))
                                            (_g45284556_ _g45294559_)))))
                                  (_g45284556_ _g45294559_))
                              (_g45284556_ _g45294559_))))
                      (_g45284556_ _g45294559_)))))
          (_g45274644_ _stx4523_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4318_ _state4319_)
      (letrec ((_generate14321_
                (lambda (_id4518_)
                  (let ((_eid4520_ (gxc#generate-runtime-binding-id _id4518_))
                        (_ident4521_
                         (gxc#generate-runtime-identifier _id4518_)))
                    (cons '%#define-runtime
                          (cons _ident4521_ (cons _eid4520_ '()))))))
               (_generate*4322_
                (lambda (_all4486_)
                  (let* ((_all44874495_ _all4486_)
                         (_E44904499_
                          (lambda ()
                            (error '"No clause matching" _all44874495_)))
                         (_else44894503_ (lambda () (cons '%#begin _all4486_)))
                         (_K44914508_ (lambda (_one4506_) _one4506_)))
                    (if (##pair? _all44874495_)
                        (let ((_hd44924511_ (##car _all44874495_))
                              (_tl44934513_ (##cdr _all44874495_)))
                          (let ((_one4516_ _hd44924511_))
                            (if (##null? _tl44934513_)
                                (_K44914508_ _one4516_)
                                (_else44894503_))))
                        (_else44894503_))))))
        (let* ((_g43244341_
                (lambda (_g43254338_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43254338_)))
               (_g43234483_
                (lambda (_g43254344_)
                  (if (gx#stx-pair? _g43254344_)
                      (let ((_e43284346_ (gx#stx-e _g43254344_)))
                        (let ((_hd43294349_ (##car _e43284346_))
                              (_tl43304351_ (##cdr _e43284346_)))
                          (if (gx#stx-pair? _tl43304351_)
                              (let ((_e43314354_ (gx#stx-e _tl43304351_)))
                                (let ((_hd43324357_ (##car _e43314354_))
                                      (_tl43334359_ (##cdr _e43314354_)))
                                  (if (gx#stx-pair? _tl43334359_)
                                      (let ((_e43344362_
                                             (gx#stx-e _tl43334359_)))
                                        (let ((_hd43354365_
                                               (##car _e43344362_))
                                              (_tl43364367_
                                               (##cdr _e43344362_)))
                                          (if (gx#stx-null? _tl43364367_)
                                              ((lambda (_L4370_ _L4371_)
                                                 (let _lp4387_ ((_rest4389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4371_)
                        (_r4390_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g43954411_
                                                           (lambda (_g43964408_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g43964408_)))
                                                          (_g43944418_
                                                           (lambda (_g43964414_)
                                                             ((lambda ()
                                                                (_generate*4322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4390_))))))
                  (_g43934434_
                   (lambda (_g43964421_)
                     ((lambda (_L4423_)
                        (if (gx#identifier? _L4423_)
                            (_generate*4322_
                             (foldl1 cons
                                     (cons (_generate14321_ _L4423_) '())
                                     _r4390_))
                            (_g43944418_ _g43964421_)))
                      _g43964421_)))
                  (_g43924458_
                   (lambda (_g43964437_)
                     (if (gx#stx-pair? _g43964437_)
                         (let ((_e44034439_ (gx#stx-e _g43964437_)))
                           (let ((_hd44044442_ (##car _e44034439_))
                                 (_tl44054444_ (##cdr _e44034439_)))
                             ((lambda (_L4447_ _L4448_)
                                (_lp4387_
                                 _L4447_
                                 (cons (_generate14321_ _L4448_) _r4390_)))
                              _tl44054444_
                              _hd44044442_)))
                         (_g43934434_ _g43964437_))))
                  (_g43914480_
                   (lambda (_g43964461_)
                     (if (gx#stx-pair? _g43964461_)
                         (let ((_e43984463_ (gx#stx-e _g43964461_)))
                           (let ((_hd43994466_ (##car _e43984463_))
                                 (_tl44004468_ (##cdr _e43984463_)))
                             (if (gx#stx-datum? _hd43994466_)
                                 (if (equal? (gx#stx-e _hd43994466_) '#f)
                                     ((lambda (_L4471_)
                                        (_lp4387_ _L4471_ _r4390_))
                                      _tl44004468_)
                                     (_g43924458_ _g43964461_))
                                 (_g43924458_ _g43964461_))))
                         (_g43924458_ _g43964461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43914480_
                                                      _rest4389_))))
                                               _hd43354365_
                                               _hd43324357_)
                                              (_g43244341_ _g43254344_))))
                                      (_g43244341_ _g43254344_))))
                              (_g43244341_ _g43254344_))))
                      (_g43244341_ _g43254344_)))))
          (_g43234483_ _stx4318_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4215_ _state4216_)
      (let* ((_g42184235_
              (lambda (_g42194232_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42194232_)))
             (_g42174315_
              (lambda (_g42194238_)
                (if (gx#stx-pair? _g42194238_)
                    (let ((_e42224240_ (gx#stx-e _g42194238_)))
                      (let ((_hd42234243_ (##car _e42224240_))
                            (_tl42244245_ (##cdr _e42224240_)))
                        (if (gx#stx-pair? _tl42244245_)
                            (let ((_e42254248_ (gx#stx-e _tl42244245_)))
                              (let ((_hd42264251_ (##car _e42254248_))
                                    (_tl42274253_ (##cdr _e42254248_)))
                                (if (gx#stx-pair? _tl42274253_)
                                    (let ((_e42284256_
                                           (gx#stx-e _tl42274253_)))
                                      (let ((_hd42294259_ (##car _e42284256_))
                                            (_tl42304261_ (##cdr _e42284256_)))
                                        (if (gx#stx-null? _tl42304261_)
                                            ((lambda (_L4264_ _L4265_)
                                               (let* ((_eid4280_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4265_))
                                                      (_phi4282_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4284_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4216_
                                                        _phi4282_)))
                                                 (begin
                                                   (let* ((_g42874294_
                                                           (lambda (_g42884291_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g42884291_)))
                                                          (_g42864312_
                                                           (lambda (_g42884297_)
                                                             ((lambda (_L4299_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4216_
                           _phi4282_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4299_ (cons _L4264_ '()))))))
                      _g42884297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42864312_ _eid4280_))
                                                   (if _block4284_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4265_)
                                             (cons _eid4280_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4265_)
                           (cons _eid4280_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd42294259_
                                             _hd42264251_)
                                            (_g42184235_ _g42194238_))))
                                    (_g42184235_ _g42194238_))))
                            (_g42184235_ _g42194238_))))
                    (_g42184235_ _g42194238_)))))
        (_g42174315_ _stx4215_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4147_ _state4148_)
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
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4197_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4196_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd41614191_
                                             _hd41584183_)
                                            (_g41504167_ _g41514170_))))
                                    (_g41504167_ _g41514170_))))
                            (_g41504167_ _g41514170_))))
                    (_g41504167_ _g41514170_)))))
        (_g41494212_ _stx4147_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4144_ _state4145_)
      (begin
        (gxc#meta-state-add-phi!
         _state4145_
         (gx#current-expander-phi)
         _stx4144_)
        (gxc#generate-meta-define-values% _stx4144_ _state4145_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4141_ _state4142_)
      (begin
        (gxc#meta-state-add-phi!
         _state4142_
         (gx#current-expander-phi)
         _stx4141_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args4138_
      (apply make-struct-instance gxc#meta-state::t _$args4138_)))
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
    (lambda (_self4135_ _ctx4136_)
      (if (##fx< '4 (##vector-length _self4135_))
          (begin
            (##vector-set!
             _self4135_
             '1
             (symbol->string
              (##structure-ref _ctx4136_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4135_ '2 '1)
            (##vector-set! _self4135_ '3 (make-hash-table-eq))
            (##vector-set! _self4135_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4135_))))
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
    (lambda _$args4010_
      (apply make-struct-instance gxc#meta-state-block::t _$args4010_)))
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
    (lambda (_state3969_ _phi3970_)
      (let* ((_state39713979_ _state3969_)
             (_E39733983_
              (lambda () (error '"No clause matching" _state39713979_)))
             (_K39743992_
              (lambda (_open3986_ _n3987_ _src3988_)
                (if (table-ref _open3986_ _phi3970_ '#f)
                    '#f
                    (let ((_block-ref3990_
                           (string-append
                            _src3988_
                            '"__"
                            (number->string _n3987_))))
                      (begin
                        (##structure-set!
                         _state3969_
                         (fx+ _n3987_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3986_
                         _phi3970_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3970_
                          _n3987_
                          '()))
                        _block-ref3990_))))))
        (if (##structure-instance-of?
             _state39713979_
             (##type-id gxc#meta-state::t))
            (let* ((_e39753995_ (##vector-ref _state39713979_ '1))
                   (_src3998_ _e39753995_)
                   (_e39764000_ (##vector-ref _state39713979_ '2))
                   (_n4003_ _e39764000_)
                   (_e39774005_ (##vector-ref _state39713979_ '3))
                   (_open4008_ _e39774005_))
              (_K39743992_ _open4008_ _n4003_ _src3998_))
            (_E39733983_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3963_ _phi3964_ _stx3965_)
      (let ((_block3967_
             (table-ref
              (##structure-ref _state3963_ '3 gxc#meta-state::t '#f)
              _phi3964_
              '#f)))
        (##structure-set!
         _block3967_
         (cons _stx3965_
               (##structure-ref _block3967_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3958_)
      (begin
        (##structure-set!
         _state3958_
         (hash-fold
          (lambda (_g12152_ _block3960_ _r3961_) (cons _block3960_ _r3961_))
          (##structure-ref _state3958_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3958_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3958_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3910_)
      (begin
        (gxc#meta-state-end-phi! _state3910_)
        (foldl1 (lambda (_block3912_ _r3913_)
                  (let* ((_block39143923_ _block3912_)
                         (_E39163927_
                          (lambda ()
                            (error '"No clause matching" _block39143923_)))
                         (_K39173935_
                          (lambda (_code3930_ _n3931_ _phi3932_ _ctx3933_)
                            (if (null? _code3930_)
                                _r3913_
                                (cons (cons _ctx3933_
                                            (cons _phi3932_
                                                  (cons _n3931_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3930_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3913_)))))
                    (if (##structure-instance-of?
                         _block39143923_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e39183938_ (##vector-ref _block39143923_ '1))
                               (_ctx3941_ _e39183938_)
                               (_e39193943_ (##vector-ref _block39143923_ '2))
                               (_phi3946_ _e39193943_)
                               (_e39203948_ (##vector-ref _block39143923_ '3))
                               (_n3951_ _e39203948_)
                               (_e39213953_ (##vector-ref _block39143923_ '4))
                               (_code3956_ _e39213953_))
                          (_K39173935_ _code3956_ _n3951_ _phi3946_ _ctx3941_))
                        (_E39163927_))))
                '()
                (##structure-ref _state3910_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3906_)
      (let ((_ht3908_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3906_ _ht3908_)
          _ht3908_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3849_ _ht3850_)
      (let* ((_g38523865_
              (lambda (_g38533862_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38533862_)))
             (_g38513903_
              (lambda (_g38533868_)
                (if (gx#stx-pair? _g38533868_)
                    (let ((_e38553870_ (gx#stx-e _g38533868_)))
                      (let ((_hd38563873_ (##car _e38553870_))
                            (_tl38573875_ (##cdr _e38553870_)))
                        (if (gx#stx-pair? _tl38573875_)
                            (let ((_e38583878_ (gx#stx-e _tl38573875_)))
                              (let ((_hd38593881_ (##car _e38583878_))
                                    (_tl38603883_ (##cdr _e38583878_)))
                                (if (gx#stx-null? _tl38603883_)
                                    ((lambda (_L3886_)
                                       (let* ((_bind3898_
                                               (gx#resolve-identifier__0
                                                _L3886_))
                                              (_eid3900_
                                               (if _bind3898_
                                                   (##structure-ref
                                                    _bind3898_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3886_))))
                                         (table-set!
                                          _ht3850_
                                          _eid3900_
                                          _eid3900_)))
                                     _hd38593881_)
                                    (_g38523865_ _g38533868_))))
                            (_g38523865_ _g38533868_))))
                    (_g38523865_ _g38533868_)))))
        (_g38513903_ _stx3849_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3776_ _ht3777_)
      (let* ((_g37793796_
              (lambda (_g37803793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37803793_)))
             (_g37783846_
              (lambda (_g37803799_)
                (if (gx#stx-pair? _g37803799_)
                    (let ((_e37833801_ (gx#stx-e _g37803799_)))
                      (let ((_hd37843804_ (##car _e37833801_))
                            (_tl37853806_ (##cdr _e37833801_)))
                        (if (gx#stx-pair? _tl37853806_)
                            (let ((_e37863809_ (gx#stx-e _tl37853806_)))
                              (let ((_hd37873812_ (##car _e37863809_))
                                    (_tl37883814_ (##cdr _e37863809_)))
                                (if (gx#stx-pair? _tl37883814_)
                                    (let ((_e37893817_
                                           (gx#stx-e _tl37883814_)))
                                      (let ((_hd37903820_ (##car _e37893817_))
                                            (_tl37913822_ (##cdr _e37893817_)))
                                        (if (gx#stx-null? _tl37913822_)
                                            ((lambda (_L3825_ _L3826_)
                                               (let* ((_bind3841_
                                                       (gx#resolve-identifier__0
                                                        _L3826_))
                                                      (_eid3843_
                                                       (if _bind3841_
                                                           (##structure-ref
                                                            _bind3841_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3826_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3777_
                                                    _eid3843_
                                                    _eid3843_)
                                                   (gxc#compile-e
                                                    _L3825_
                                                    _ht3777_))))
                                             _hd37903820_
                                             _hd37873812_)
                                            (_g37793796_ _g37803799_))))
                                    (_g37793796_ _g37803799_))))
                            (_g37793796_ _g37803799_))))
                    (_g37793796_ _g37803799_)))))
        (_g37783846_ _stx3776_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3738_)
      (let* ((_g37403750_
              (lambda (_g37413747_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37413747_)))
             (_g37393773_
              (lambda (_g37413753_)
                (if (gx#stx-pair? _g37413753_)
                    (let ((_e37433755_ (gx#stx-e _g37413753_)))
                      (let ((_hd37443758_ (##car _e37433755_))
                            (_tl37453760_ (##cdr _e37433755_)))
                        ((lambda (_L3763_) (ormap1 gxc#compile-e _L3763_))
                         _tl37453760_)))
                    (_g37403750_ _g37413753_)))))
        (_g37393773_ _stx3738_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3700_)
      (let* ((_g37023712_
              (lambda (_g37033709_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37033709_)))
             (_g37013735_
              (lambda (_g37033715_)
                (if (gx#stx-pair? _g37033715_)
                    (let ((_e37053717_ (gx#stx-e _g37033715_)))
                      (let ((_hd37063720_ (##car _e37053717_))
                            (_tl37073722_ (##cdr _e37053717_)))
                        ((lambda (_L3725_) (gxc#compile-e (last _L3725_)))
                         _tl37073722_)))
                    (_g37023712_ _g37033715_)))))
        (_g37013735_ _stx3700_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3633_)
      (let* ((_g36353652_
              (lambda (_g36363649_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36363649_)))
             (_g36343697_
              (lambda (_g36363655_)
                (if (gx#stx-pair? _g36363655_)
                    (let ((_e36393657_ (gx#stx-e _g36363655_)))
                      (let ((_hd36403660_ (##car _e36393657_))
                            (_tl36413662_ (##cdr _e36393657_)))
                        (if (gx#stx-pair? _tl36413662_)
                            (let ((_e36423665_ (gx#stx-e _tl36413662_)))
                              (let ((_hd36433668_ (##car _e36423665_))
                                    (_tl36443670_ (##cdr _e36423665_)))
                                (if (gx#stx-pair? _tl36443670_)
                                    (let ((_e36453673_
                                           (gx#stx-e _tl36443670_)))
                                      (let ((_hd36463676_ (##car _e36453673_))
                                            (_tl36473678_ (##cdr _e36453673_)))
                                        (if (gx#stx-null? _tl36473678_)
                                            ((lambda (_L3681_ _L3682_)
                                               (gxc#compile-e _L3681_))
                                             _hd36463676_
                                             _hd36433668_)
                                            (_g36353652_ _g36363655_))))
                                    (_g36353652_ _g36363655_))))
                            (_g36353652_ _g36363655_))))
                    (_g36353652_ _g36363655_)))))
        (_g36343697_ _stx3633_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3566_)
      (let* ((_g35683585_
              (lambda (_g35693582_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35693582_)))
             (_g35673630_
              (lambda (_g35693588_)
                (if (gx#stx-pair? _g35693588_)
                    (let ((_e35723590_ (gx#stx-e _g35693588_)))
                      (let ((_hd35733593_ (##car _e35723590_))
                            (_tl35743595_ (##cdr _e35723590_)))
                        (if (gx#stx-pair? _tl35743595_)
                            (let ((_e35753598_ (gx#stx-e _tl35743595_)))
                              (let ((_hd35763601_ (##car _e35753598_))
                                    (_tl35773603_ (##cdr _e35753598_)))
                                (if (gx#stx-pair? _tl35773603_)
                                    (let ((_e35783606_
                                           (gx#stx-e _tl35773603_)))
                                      (let ((_hd35793609_ (##car _e35783606_))
                                            (_tl35803611_ (##cdr _e35783606_)))
                                        (if (gx#stx-null? _tl35803611_)
                                            ((lambda (_L3614_ _L3615_)
                                               (gxc#compile-e _L3614_))
                                             _hd35793609_
                                             _hd35763601_)
                                            (_g35683585_ _g35693588_))))
                                    (_g35683585_ _g35693588_))))
                            (_g35683585_ _g35693588_))))
                    (_g35683585_ _g35693588_)))))
        (_g35673630_ _stx3566_)))))
